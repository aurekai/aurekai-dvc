#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
if command -v dvc >/dev/null 2>&1; then
  dvc repro
else
  echo "dvc binary not installed; skipping dvc repro and running script validation"
  bash tests/validate-scripts.sh
fi
