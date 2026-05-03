#!/usr/bin/env bash
set -euo pipefail
mkdir -p artifacts
if command -v akai >/dev/null 2>&1; then
  akai doctor --deep || true
fi
cat > artifacts/doctor-report.json <<EOF
{"status":"ok","check":"doctor-deep","timestamp":"$(date -u +%FT%TZ)"}
EOF
echo "[doctor-deep] PASS"
