#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
chmod +x scripts/*.sh
bash scripts/doctor-deep.sh
bash scripts/manifest-verify.sh examples/sample-aurekai.manifest.json
bash scripts/model-memory-pack.sh examples/sample-akmodel.json
bash scripts/sae-audit.sh
bash scripts/semantic-cache-bench.sh
bash scripts/proof-bundle-export.sh
bash scripts/release-gate.sh
for f in artifacts/doctor-report.json artifacts/manifest-verify.json artifacts/model-memory-pack.json artifacts/sae-audit.json artifacts/semantic-cache-bench.json artifacts/proof-bundle.json artifacts/release-gate.json; do
  test -f "$f"
done
echo "[validate-scripts] PASS"
