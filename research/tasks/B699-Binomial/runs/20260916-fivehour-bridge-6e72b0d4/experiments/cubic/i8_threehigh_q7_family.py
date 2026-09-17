"""Complete recovery of the original 2^A3^B5^C family from the finite tower list."""
from pathlib import Path
from math import prod
import hashlib,json
from i8_threehigh_engine import valuation
here=Path(__file__).resolve().parent;source=here/'i8_threehigh_tower_q7.json'
data=json.loads(source.read_text());assert data['status']=='PASS'
vec=next(x['vectors'] for x in data['finite_enumerations'] if x['intercept']==3)
assert 120**4*3*360**9<100*2**18*27*359**9
factorizations={1:(0,0,0),2:(1,0,0),3:(0,1,0),4:(2,0,0),5:(0,0,1)}
rows={};representations=[]
for v,a,b,c in vec:
    for r,additions in factorizations.items():
        A,B,C=[x+y for x,y in zip((a,b,c),additions)]
        if A<3 or B<2 or C<2 or A+B+C>=4*v+3:continue
        n=2**A*3**B*5**C
        if valuation(n-r,7)!=v:continue
        assert max(valuation(n-s,7) for s in range(6))==v
        small=[]
        for s in range(6):small.append(prod(p**valuation(n-s,p) for p in (2,3,5,7)))
        T=prod(small);assert T==120*n*7**v
        left=T**4*(3*n*n-20*n+24)
        right=2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
        record={'A':A,'B':B,'C':C,'n':n,'r':r,'v':v,'small_parts':small,'SIXG_left':left,'SIXG_right':right,'SIXG_pass':left<right}
        representations.append(record);rows[(A,B,C)]=record
survivors=[r for r in rows.values() if not r['SIXG_pass']]
out={'status':'PASS' if not survivors else 'OPEN_FINITE_END','scope':'Original i8/i9 family n=2^A3^B5^C, A>=3,B,C>=2; conditional only on the explicitly proved SIXG and Yu inputs.',
     'tower_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'normalized_vectors':len(vec),
     'representations':representations,'different_rows':len(rows),'survivors':survivors,
     'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
dest=here/'i8_threehigh_q7_family.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':out['status'],'normalized_vectors':len(vec),'representations':len(representations),
                  'different_rows':len(rows),'survivors':len(survivors),'output':str(dest)}))
