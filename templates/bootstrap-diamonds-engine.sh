#!/bin/bash
# Bootstrap the Diamonds engine for web/cloud sessions.
#
# Desktop sessions already have ~/.diamonds/ from the local install, so this
# script is a no-op there. It only runs in web sessions, where the container
# is freshly created without the engine on disk.
#
# Triggered by .claude/settings.json (SessionStart hook).

set -uo pipefail

# --- Cloud-only guard ---------------------------------------------------------
# CLAUDE_CODE_REMOTE_SESSION_ID is set ONLY in web/cloud sessions. If it's
# empty, we are on a desktop session and must do nothing.
if [ -z "${CLAUDE_CODE_REMOTE_SESSION_ID:-}" ]; then
  exit 0
fi

# --- Engine source ------------------------------------------------------------
# Default points at the canonical Diamonds engine. Override with
# DIAMONDS_ENGINE_REPO_URL in this project's cloud environment configuration if
# this project should bootstrap from a fork instead.
#
# Authentication for private engines: set GH_TOKEN (or GITHUB_TOKEN) in the
# project's cloud environment configuration. A fine-grained PAT with read-only
# access to the engine repo is sufficient. The token is spliced into the clone
# via `git -c http.extraheader=...` — never written to .git/config, never
# embedded in the URL, never echoed to the session log. The web container's
# git client is NOT transparently authenticated for arbitrary github.com URLs
# (only for the session's own scoped repo), so without a token only public
# engine repos can be cloned — a plain clone of a private repo fails with
# "could not read Username".
ENGINE_REPO_URL="${DIAMONDS_ENGINE_REPO_URL:-https://github.com/whatcouldbe/diamonds.git}"
ENGINE_DIR="$HOME/.diamonds-engine"
CONFIG_FILE="$HOME/.diamonds/config.json"

# --- Idempotency --------------------------------------------------------------
# Skip only if a previous successful bootstrap is intact: both the config and
# the engine's CLAUDE.md must be present. Protects against a stale config
# left over from a failed prior run (config without engine, or engine without
# its CLAUDE.md).
if [ -f "$CONFIG_FILE" ] && [ -f "$ENGINE_DIR/CLAUDE.md" ]; then
  exit 0
fi

# --- Clean any stale state from a previous failed run ------------------------
rm -f "$CONFIG_FILE"
rm -rf "$ENGINE_DIR"

# --- Clone --------------------------------------------------------------------
# `set -o pipefail` (above) is critical here: without it, the pipeline's exit
# status would be sed's (always 0), masking any git clone failure and letting
# the script silently proceed to write a config pointing at nothing.
#
# When GH_TOKEN (or GITHUB_TOKEN) is set, the clone runs under a one-shot
# `http.extraheader` config flag. That flag is scoped to this single git
# invocation: it is not written to the cloned repo's .git/config, not embedded
# in the URL, and not part of the echo'd progress lines. The token is briefly
# visible in the process arglist (`ps`) while git runs — acceptable on a
# single-tenant web container.
GH_AUTH_TOKEN="${GH_TOKEN:-${GITHUB_TOKEN:-}}"

clone_engine() {
  if [ -n "$GH_AUTH_TOKEN" ]; then
    local b64
    b64=$(printf 'x-access-token:%s' "$GH_AUTH_TOKEN" | base64 | tr -d '\n')
    git -c "http.extraheader=Authorization: Basic $b64" \
        clone --depth=1 "$ENGINE_REPO_URL" "$ENGINE_DIR" 2>&1 | sed 's/^/[diamonds-bootstrap] /'
  else
    git clone --depth=1 "$ENGINE_REPO_URL" "$ENGINE_DIR" 2>&1 | sed 's/^/[diamonds-bootstrap] /'
  fi
}

echo "[diamonds-bootstrap] Cloning Diamonds engine from $ENGINE_REPO_URL ..."
if ! clone_engine; then
  echo "[diamonds-bootstrap] Clone failed. If the engine repo is private, set GH_TOKEN (read-only PAT) in the project's cloud environment configuration. Engine will be unreachable; CLAUDE.md will surface this to the user." >&2
  exit 0
fi

# --- Sanity check: clone produced what we expected ---------------------------
# Defends against a clone that exits 0 but produces an incomplete tree.
if [ ! -f "$ENGINE_DIR/CLAUDE.md" ]; then
  echo "[diamonds-bootstrap] Clone reported success but engine CLAUDE.md is missing at $ENGINE_DIR. Aborting." >&2
  exit 0
fi

# --- Write the config the project CLAUDE.md expects --------------------------
mkdir -p "$(dirname "$CONFIG_FILE")"
cat > "$CONFIG_FILE" <<EOF
{
  "diamonds_path": "$ENGINE_DIR",
  "diamonds_repo_url": "$ENGINE_REPO_URL"
}
EOF

echo "[diamonds-bootstrap] Diamonds engine ready at $ENGINE_DIR"
echo "[diamonds-bootstrap] Wrote $CONFIG_FILE"
