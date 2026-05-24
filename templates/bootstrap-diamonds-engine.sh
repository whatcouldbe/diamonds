#!/bin/bash
# Bootstrap the Diamonds engine for web/cloud sessions.
#
# Desktop sessions already have ~/.diamonds/ from the local install, so this
# script is a no-op there. It only runs in web sessions, where the container
# is freshly created without the engine on disk.
#
# Triggered by .claude/settings.json (SessionStart hook).

set -u

# --- Cloud-only guard ---------------------------------------------------------
# CLAUDE_CODE_REMOTE_SESSION_ID is set ONLY in web/cloud sessions. If it's
# empty, we are on a desktop session and must do nothing.
if [ -z "${CLAUDE_CODE_REMOTE_SESSION_ID:-}" ]; then
  exit 0
fi

# --- Idempotency --------------------------------------------------------------
# If the engine is already on disk (cached snapshot, resumed session, manual
# install), don't re-clone or overwrite.
if [ -f "$HOME/.diamonds/config.json" ]; then
  exit 0
fi

# --- Engine source ------------------------------------------------------------
# Default points at the canonical Diamonds engine. Override with
# DIAMONDS_ENGINE_REPO_URL in this project's cloud environment configuration if
# this project should bootstrap from a fork instead.
#
# Private engine repos work without a token: the web container's git client is
# automatically authenticated for any repo the connecting GitHub account can
# see (via the GitHub proxy). See:
# https://code.claude.com/docs/en/claude-code-on-the-web#github-proxy
ENGINE_REPO_URL="${DIAMONDS_ENGINE_REPO_URL:-https://github.com/whatcouldbe/diamonds.git}"

# --- Clone --------------------------------------------------------------------
ENGINE_DIR="$HOME/.diamonds-engine"

echo "[diamonds-bootstrap] Cloning Diamonds engine from $ENGINE_REPO_URL ..."
if ! git clone --depth=1 "$ENGINE_REPO_URL" "$ENGINE_DIR" 2>&1 | sed 's/^/[diamonds-bootstrap] /'; then
  echo "[diamonds-bootstrap] Clone failed. Engine will be unreachable; CLAUDE.md will surface this to the user." >&2
  exit 0
fi

# --- Write the config the project CLAUDE.md expects --------------------------
mkdir -p "$HOME/.diamonds"
cat > "$HOME/.diamonds/config.json" <<EOF
{
  "diamonds_path": "$ENGINE_DIR"
}
EOF

echo "[diamonds-bootstrap] Diamonds engine ready at $ENGINE_DIR"
echo "[diamonds-bootstrap] Wrote $HOME/.diamonds/config.json"
