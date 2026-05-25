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
# The engine repo must be publicly accessible (or the env must supply auth via
# GH_TOKEN, etc.). The web container's git client is NOT transparently
# authenticated for arbitrary github.com URLs — only for the session's own
# scoped repo. Plain `git clone https://github.com/...` will fail with
# "could not read Username" if the target is private and no auth is supplied.
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
echo "[diamonds-bootstrap] Cloning Diamonds engine from $ENGINE_REPO_URL ..."
if ! git clone --depth=1 "$ENGINE_REPO_URL" "$ENGINE_DIR" 2>&1 | sed 's/^/[diamonds-bootstrap] /'; then
  echo "[diamonds-bootstrap] Clone failed. Engine will be unreachable; CLAUDE.md will surface this to the user." >&2
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
  "diamonds_path": "$ENGINE_DIR"
}
EOF

echo "[diamonds-bootstrap] Diamonds engine ready at $ENGINE_DIR"
echo "[diamonds-bootstrap] Wrote $CONFIG_FILE"
