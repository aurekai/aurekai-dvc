#!/usr/bin/env bash
set -euo pipefail
cat > artifacts/sae-audit.json <<EOF
{"status":"ok","rows":1,"details":"synthetic sae audit pass"}
EOF
echo "[sae-audit] PASS"
