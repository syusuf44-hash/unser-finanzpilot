#!/bin/zsh
cd "$(dirname "$0")"

PORT=8766
if ! curl -fsS "http://127.0.0.1:${PORT}/index.html" >/dev/null 2>&1; then
  nohup python3 -m http.server "$PORT" --bind 127.0.0.1 >"/tmp/unser-finanzpilot.log" 2>&1 </dev/null &
  sleep 1
fi

open -na "Google Chrome" --args --new-window "http://127.0.0.1:${PORT}/index.html"
