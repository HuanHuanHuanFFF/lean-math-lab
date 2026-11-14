"""Extract the official source-hash-selected ltar config with one worker."""
from __future__ import annotations

import hashlib
import json
from pathlib import Path
import subprocess
import sys

leantar = Path(sys.argv[1]).resolve()
plan = Path(sys.argv[2]).resolve()
data = plan.read_bytes()
config = json.loads(data)
print(json.dumps({"selectedFiles": len(config), "planSha256": hashlib.sha256(data).hexdigest(),
                  "extractWorkers": 1}), flush=True)
result = subprocess.run([str(leantar), "-x", "--delete-corrupted", "--jobs", "1", "-j", "-"],
                        input=data, check=False)
sys.exit(result.returncode)
