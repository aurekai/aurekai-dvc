#!/usr/bin/env bash
set -euo pipefail
ART="${1:?Usage: model-memory-pack.sh <artifact.json>}"
python3 - <<PY
import json,hashlib
p="$ART"
raw=open(p,"rb").read()
d=json.loads(raw.decode())
out={
  "status":"ok",
  "artifact":d.get("name","unknown"),
  "ext":d.get("ext",".akmodel"),
  "sha256":hashlib.sha256(raw).hexdigest()
}
open("artifacts/model-memory-pack.json","w",encoding="utf-8").write(json.dumps(out,indent=2))
print("[model-memory-pack] PASS")
PY
