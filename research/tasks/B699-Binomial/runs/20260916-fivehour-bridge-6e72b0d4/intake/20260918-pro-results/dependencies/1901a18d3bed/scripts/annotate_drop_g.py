"""Add exact trial-division annotations to the separately saved raw diagnostic."""
from pathlib import Path
import argparse,json

def factor(n):
    result={};p=2
    while p*p<=n:
        while n%p==0:
            result[str(p)]=result.get(str(p),0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:result[str(n)]=result.get(str(n),0)+1
    return result

ap=argparse.ArgumentParser();ap.add_argument('--input',required=True);ap.add_argument('--output',required=True);a=ap.parse_args()
d=json.loads(Path(a.input).read_text())
for r in d['models']:
    r['t_factors']=factor(r['C']);r['omega']=len(r['t_factors'])
Path(a.output).write_text(json.dumps(d,indent=2))
