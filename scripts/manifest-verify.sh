#!/usr/bin/env bash
set -euo pipefail
MANIFEST="${1:?Usage: manifest-verify.sh <manifest.json>}"
python3 - <<PY
import json,sys
p="$MANIFEST"
d=json.load(open(p))
req=["schema_version","name","version","operator_count"]
missing=[k for k in req if k not in d]
if missing:
    raise SystemExit(f"missing keys: {missing}")
if d["schema_version"]!="aurekai.deploy.v1":
    raise SystemExit("schema_version mismatch")
open("artifacts/manifest-verify.json","w",encoding="utf-8").write(json.dumps({"status":"ok","name":d["name"],"version":d["version"]},indent=2))
print("[manifest-verify] PASS")
PY
