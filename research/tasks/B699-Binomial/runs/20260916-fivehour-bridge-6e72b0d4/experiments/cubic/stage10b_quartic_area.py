"""Exact algebra in the intrinsic period-area proof; topology remains paper proof."""
import hashlib,json
from pathlib import Path
from datetime import datetime,timezone
import sympy as s
w,a,r,Z,T=s.symbols('w a r Z T')
B=a+2*r;C=2*r-a
Z2=w+a+r*r/w;Tv=w-r*r/w
assert s.factor(Tv*Tv-(Z2-B)*(Z2+C))==0
back=(Z*Z-a+T)/2
quartic=T*T-(Z*Z-B)*(Z*Z+C)
assert s.expand(4*(back*back-(Z*Z-a)*back+r*r)-quartic)==0
assert s.factor(w*s.diff(Z2,w)-Tv)==0
assert s.expand(B+C-4*r)==0
out={'status':'PASS','scope':'Birational quartic identities and differential relation only; cycle intersection/index 2 is a paper argument.',
     'identities':['T^2=(Z^2-B0)(Z^2+C0)','w=(Z^2-a+T)/2','w*d(Z^2)/dw=T','B0+C0=4r'],
     'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
dest=Path(__file__).with_name(f'stage10b-quartic-area-{stamp}.json')
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','output':dest.name}))
