"""Transport one original artifact without duplicating extraction work."""
import argparse
import json
from pathlib import Path
import shutil
from artifact_intake import download, sha

p=argparse.ArgumentParser()
p.add_argument('--artifact',type=int,required=True)
p.add_argument('--target',type=Path,required=True)
p.add_argument('--bytes',type=int,required=True)
p.add_argument('--sha256',required=True)
a=p.parse_args()
if shutil.disk_usage(a.target.parent if a.target.parent.exists() else 'D:/').free < 10*1024**3+a.bytes:
    raise RuntimeError('Local ten-GiB reserve rejected before transport')
if not a.target.exists():
    download(a.artifact,a.target)
if a.target.stat().st_size != a.bytes or sha(a.target) != a.sha256:
    raise RuntimeError('Original artifact bytes or digest differs')
print(json.dumps({'artifact':a.artifact,'archive':str(a.target),'bytes':a.bytes,'sha256':a.sha256,'downloaded':True}))
