#!/usr/bin/env bash
set -euo pipefail

MYTHIC_DIR="$HOME/Mythic"
CLI="$MYTHIC_DIR/mythic-cli"

echo "[*] Starting Mythic C2"

if [[ ! -x "$CLI" ]]; then
  echo "[!] Error: mythic-cli not found or not executable in $MYTHIC_DIR" >&2
  exit 1
fi

cd "$MYTHIC_DIR"

if ! "$CLI" start; then
  echo "[!] Error: Failed to start Mythic C2" >&2
  exit 1
fi

sleep 5
echo "[*] Listing payloads…"
"$CLI" payload list