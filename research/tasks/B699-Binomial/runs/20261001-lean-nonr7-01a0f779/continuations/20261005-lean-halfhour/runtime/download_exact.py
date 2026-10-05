"""Small original artifact transport with explicit Range/size/SHA gates."""
import argparse
from pathlib import Path
from recover_parallel import recover

p=argparse.ArgumentParser()
for n in ['artifact','bytes']:p.add_argument('--'+n,type=int,required=True)
for n in ['sha256','label']:p.add_argument('--'+n,required=True)
a=p.parse_args()
root=Path('D:/ResearchArtifacts/b699-lean-halfhour');root.mkdir(exist_ok=True)
recover(a.artifact,a.bytes,a.sha256,None,root/(a.label+'.zip'),a.label)
