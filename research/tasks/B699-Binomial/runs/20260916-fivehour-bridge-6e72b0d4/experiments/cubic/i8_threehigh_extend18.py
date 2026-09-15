"""Extend finite triangles to intercept 18 without changing or rerunning frozen towers."""
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
here=Path(__file__).resolve().parent
out=[]
for q in (2,3,5,7):
    source=here/f'i8_threehigh_tower_q{q}.json';data=json.loads(source.read_text())
    assert data['status']=='PASS'
    cap=18+4*(data['global_stop_v']-1)-1
    stop=next(row for row in data['levels'] if min(F(*n) for n in row['GS_norms_squared'])>cap*cap)
    vectors=[]
    for row in data['levels']:
        v=row['v']
        if v>=stop['v']:break
        bound=18+4*v-1;M,L,K=(row[n] for n in ('order','L','K'))
        for b in range(1,bound-1):
            for c in range(1,bound-b):
                aa=(-L*b-K*c)%M
                if aa==0:aa=M
                for a in range(aa,bound-b-c+1,M):vectors.append([v,a,b,c])
    out.append({'q':q,'bases':data['bases'],'global_stop_v':data['global_stop_v'],'local_stop_v':stop['v'],
                'finite_sum_cap':cap,'intercept':18,'vectors':vectors,'vector_count':len(vectors),
                'tower_sha256':hashlib.sha256(source.read_bytes()).hexdigest()})
data={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),'cases':out,
      'scope':'All positive normalized triples sum<1e32 and sum<18+4v; same complete tower and two GS stops.',
      'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
dest=here/'i8_threehigh_extended18.json';assert not dest.exists()
dest.write_text(json.dumps(data,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','cases':[{k:v for k,v in c.items() if k not in ('vectors','tower_sha256')} for c in out]}),flush=True)
