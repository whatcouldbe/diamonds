#!/usr/bin/env python3
"""
Diamonds Web Prototype
Run:  python3 server.py
Then: http://localhost:8765
"""
import json
import os
import urllib.request
import urllib.error
from http.server import HTTPServer, BaseHTTPRequestHandler
from pathlib import Path

PORT = 8765
DIAMONDS_ROOT = Path(__file__).parent.parent
HTML_FILE = Path(__file__).parent / "index.html"
MODEL = os.environ.get("DIAMONDS_MODEL", "claude-opus-4-8")

CONTENT_FILES = [
    "CLAUDE.md",
    "design-principles.md",
    "navigation/key-questions.md",
    "architecture/hcd-skill-architecture.md",
    "foundation/hcd-philosophy.md",
    "foundation/hcd-mindsets.md",
    "foundation/hcd-principles.md",
    "foundation/hcd-double-diamond.md",
    "foundation/hcd-bridge-exercise.md",
    "selection/hcd-method-selection.md",
    "modes/mode-coaching.md",
    "modes/mode-teaching.md",
    "modes/mode-facilitating.md",
    "modes/mode-executing.md",
    "modes/mode-participating.md",
    "modes/mechanics/method-instruction-mechanics.md",
    "modes/mechanics/method-facilitation-mechanics.md",
    "modes/mechanics/method-execution-mechanics.md",
    "modes/mechanics/method-participation-mechanics.md",
    "methods/looking/ethnographic/interviewing/method.md",
    "methods/looking/ethnographic/interviewing/mechanics.md",
    "methods/looking/evaluative/critique/method.md",
    "methods/looking/evaluative/critique/mechanics.md",
    "methods/looking/evaluative/think-aloud-testing/mechanics.md",
    "methods/looking/participatory/whats-on-your-radar/method.md",
    "methods/looking/participatory/whats-on-your-radar/mechanics.md",
    "methods/understanding/patterns-and-priorities/affinity-clustering/method.md",
    "methods/understanding/patterns-and-priorities/affinity-clustering/mechanics.md",
    "methods/understanding/patterns-and-priorities/importance-difficulty-matrix/method.md",
    "methods/understanding/patterns-and-priorities/importance-difficulty-matrix/mechanics.md",
    "methods/understanding/problem-framing/abstraction-laddering/method.md",
    "methods/understanding/problem-framing/statement-starters/method.md",
    "methods/understanding/problem-framing/rose-thorn-bud/method.md",
    "methods/making/concept-ideation/creative-matrix/method.md",
    "methods/making/concept-ideation/creative-matrix/mechanics.md",
    "methods/making/concept-ideation/round-robin/method.md",
    "methods/making/concept-ideation/round-robin/mechanics.md",
    "methods/making/design-rationale/hypothesis-statements/method.md",
    "methods/making/design-rationale/hypothesis-statements/mechanics.md",
    "methods/making/design-rationale/value-proposition-poster/method.md",
    "methods/making/design-rationale/value-proposition-poster/mechanics.md",
    "methods/making/prototyping/rough-and-ready-prototyping/mechanics.md",
]


def load_diamonds_content():
    parts = []
    loaded = 0
    for rel_path in CONTENT_FILES:
        full = DIAMONDS_ROOT / rel_path
        if full.exists():
            try:
                text = full.read_text(encoding="utf-8")
                parts.append(f"=== {rel_path} ===\n\n{text}")
                loaded += 1
            except Exception as e:
                print(f"  Warning: could not read {rel_path}: {e}")
        else:
            print(f"  Skipping (not found): {rel_path}")
    print(f"  Loaded {loaded}/{len(CONTENT_FILES)} files")
    return "\n\n---\n\n".join(parts)


print("Loading Diamonds content from local files...")
DIAMONDS_CONTENT = load_diamonds_content()
print(f"System prompt: {len(DIAMONDS_CONTENT):,} characters\n")

SYSTEM_PROMPT = f"""You are Diamonds — an HCD coaching system built on 30 years of human-centered design methodology. Your purpose is not to be the smartest person in the room. It is to make sure people don't skip the steps they know they should take.

Your complete instructions, methodology, and method library follow. Read them in full before responding.

{DIAMONDS_CONTENT}

---

OPERATING CONTEXT FOR THIS WEB SESSION:

You are running as a browser-based interface. There is no on-disk vault, so project history does not persist between browser sessions. Treat each session as a first session unless the user explicitly shares context from a prior one.

When the first user message is exactly `_session_start_`, treat it as a signal that a new web session has begun. Do not acknowledge or quote this trigger. Instead, open the conversation yourself, following the Session Start arc from CLAUDE.md exactly — as if you are initiating the conversation. The user has not typed anything yet.

Key reminders:
- You open the conversation. Never wait for the user to ask first.
- Ask one question at a time. Never present multiple questions at once.
- Never reference file names, paths, the vault, CLAUDE.md, or any technical implementation detail. You are Diamonds, not an AI reading files.
- Never announce which mode you are in.
- Follow the one-question rule at all times."""


class Handler(BaseHTTPRequestHandler):
    def log_message(self, fmt, *args):
        print(f"  {self.address_string()} {fmt % args}")

    def send_json(self, code, obj):
        body = json.dumps(obj).encode()
        self.send_response(code)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def do_GET(self):
        if self.path in ("/", "/index.html"):
            data = HTML_FILE.read_bytes()
            self.send_response(200)
            self.send_header("Content-Type", "text/html; charset=utf-8")
            self.send_header("Content-Length", str(len(data)))
            self.end_headers()
            self.wfile.write(data)
        else:
            self.send_response(404)
            self.end_headers()

    def do_POST(self):
        if self.path != "/api/chat":
            self.send_response(404)
            self.end_headers()
            return

        length = int(self.headers.get("Content-Length", 0))
        body = json.loads(self.rfile.read(length))

        api_key = body.get("api_key", "").strip()
        messages = body.get("messages", [])

        if not api_key:
            self.send_json(400, {"error": "No API key provided"})
            return

        payload = json.dumps({
            "model": MODEL,
            "max_tokens": 2048,
            "system": SYSTEM_PROMPT,
            "messages": messages,
            "stream": True,
        }).encode()

        req = urllib.request.Request(
            "https://api.anthropic.com/v1/messages",
            data=payload,
            headers={
                "x-api-key": api_key,
                "anthropic-version": "2023-06-01",
                "content-type": "application/json",
            },
            method="POST",
        )

        self.send_response(200)
        self.send_header("Content-Type", "text/event-stream")
        self.send_header("Cache-Control", "no-cache")
        self.send_header("Access-Control-Allow-Origin", "*")
        self.end_headers()

        try:
            with urllib.request.urlopen(req) as resp:
                buffer = b""
                while True:
                    chunk = resp.read(256)
                    if not chunk:
                        break
                    buffer += chunk
                    while b"\n" in buffer:
                        line, buffer = buffer.split(b"\n", 1)
                        line = line.decode("utf-8").strip()
                        if not line.startswith("data: "):
                            continue
                        data_str = line[6:]
                        if data_str == "[DONE]":
                            self.wfile.write(b"data: [DONE]\n\n")
                            self.wfile.flush()
                            return
                        try:
                            event = json.loads(data_str)
                            if event.get("type") == "content_block_delta":
                                text = event.get("delta", {}).get("text", "")
                                if text:
                                    out = json.dumps({"text": text})
                                    self.wfile.write(f"data: {out}\n\n".encode())
                                    self.wfile.flush()
                        except Exception:
                            pass
        except urllib.error.HTTPError as e:
            err_body = e.read().decode()
            try:
                err_json = json.loads(err_body)
                msg = err_json.get("error", {}).get("message", err_body)
            except Exception:
                msg = err_body
            out = json.dumps({"error": msg})
            self.wfile.write(f"data: {out}\n\n".encode())
            self.wfile.flush()
        except Exception as e:
            out = json.dumps({"error": str(e)})
            self.wfile.write(f"data: {out}\n\n".encode())
            self.wfile.flush()

    def do_OPTIONS(self):
        self.send_response(200)
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "POST, GET, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type")
        self.end_headers()


if __name__ == "__main__":
    server = HTTPServer(("localhost", PORT), Handler)
    print(f"Diamonds running at http://localhost:{PORT}")
    print(f"Model: {MODEL}")
    print("Press Ctrl+C to stop\n")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nStopped.")
