#!/usr/bin/env bash
set -euo pipefail
for f in artifacts/doctor-report.json artifacts/manifest-verify.json artifacts/model-memory-pack.json artifacts/sae-audit.json artifacts/semantic-cache-bench.json artifacts/proof-bundle.json; do
  [ -f "$f" ] || { echo "missing artifact: $f" >&2; exit 1; }
done
cat > artifacts/release-gate.json <<EOF
{"status":"ok","gate":"release","timestamp":"$(date -u +%FT%TZ)"}
EOF
echo "[release-gate] PASS"
