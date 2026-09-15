from pathlib import Path
from fractions import Fraction
from math import comb, factorial, prod
from collections import defaultdict
from datetime import datetime, timezone
import json,hashlib,time
ROOT=Path(__file__).resolve().parent; RUN=ROOT.parents[1]
path=RUN/'experiments/h023/certificate_selected.json'
raw=path.read_bytes(); cert=json.loads(raw)
assert hashlib.sha256(raw).hexdigest()=='f5f52a935cab94bd03e491f81f2e716475c4dcc348a1c7b6af3ccbb9e592ee20'
start=time.perf_counter(); points=[(b,r-b) for r in (1,4,5,6) for b in range(r+1)]
coverage=[0]*len(points); zeros=0; positives=0; D=T=0;bound=Fraction(1);summaries=[]

def coefficient(poly,x,y,a,b):
    return sum(c*comb(i,a)*comb(j,b)*x**(i-a)*y**(j-b) for i,j,c in poly if i>=a and j>=b)
for atom in cert['polynomials']:
    poly=atom['poly']; w=atom['weight']
    assert len({(i,j) for i,j,c in poly})==len(poly)
    degree=max(i+j for i,j,c in poly if c); origin=min(i+j for i,j,c in poly if c)
    assert degree==atom['degree'] and origin==atom['origin_order']
    assert len(atom['orders'])==len(points)
    for z,((x,y),o) in enumerate(zip(points,atom['orders'])):
        for a in range(o):
            for b in range(o-a):
                assert coefficient(poly,x,y,a,b)==0;zeros+=1
        assert any(coefficient(poly,x,y,a,o-a) for a in range(o+1))
        coverage[z]+=w*o
    # Direct binomial-times-trinomial substitution, rather than rectangular translate/compose.
    half=defaultdict(int)
    for i,j,c in poly:
        for a in range(i+1):
            left=c*comb(i,a)*8**(i-a)
            for b in range(j+1):
                for q in range(j-b+1):
                    half[a+b,q]+=left*comb(j,b)*comb(j-b,q)*8**(j-b-q)
    half={e:c for e,c in half.items() if c}
    assert half[(0,0)]>0 and all(c>0 for c in half.values())
    bmax=max(Fraction(c*factorial(degree-a-b)*factorial(a)*factorial(b),2**a*16**(degree-a-b)*factorial(degree)) for (a,b),c in half.items())
    D+=degree*w;T+=origin*w;bound*=bmax**w;positives+=len(half)
    summaries.append({'degree':degree,'weight':w,'origin_order':origin,'positive_coefficients':len(half),'bernstein_max':str(bmax)})
rows={int(r):w for r,w in cert['row_weights'].items()}
assert all(coverage[i]>=rows[x+y] for i,(x,y) in enumerate(points))
assert (D,T,sum(rows.values()))==(130,14,126)
def vp(n,p):
    c=0
    while n%p==0:n//=p;c+=1
    return c
cost_table={p:[sum(w*vp(abs(r-h),p) for r,w in rows.items()) for h in (0,2,3)] for p in (2,3,5)}
exponents={p:max(v) for p,v in cost_table.items()};exponents[7]=max(rows.values())
assert exponents=={2:86,3:21,5:21,7:65}
C=prod(p**e for p,e in exponents.items());shift_sum=sum(r*w for r,w in rows.items())
assert shift_sum==360 and 2*C*bound<2**550 and 720**10<2**100
result={'time_utc':datetime.now(timezone.utc).isoformat(),'reviewer':'/root/reviewer','status':'passed','source_certificate_sha256':hashlib.sha256(raw).hexdigest(),'source_certificate_bytes':len(raw),'degrees':{'D':D,'W':126,'T':T,'difference':4},'row_weights':rows,'exact_point_coverage':coverage,'Taylor_zero_conditions':zeros,'positive_coefficients':positives,'atom_summaries':summaries,'cost_by_prime_and_h_0_2_3':cost_table,'cost_exponents':exponents,'window_shift_sum':shift_sum,'large_n_cutoff':720,'strict_constant_check':'2*C*B < 2^550','low_range_check':'720^10 < 2^100 < 2^550','accepted_bound':'g^14 < 2^550*n^4, hence n^5 < 2^275*alpha^7','elapsed_seconds':time.perf_counter()-start,'scope':'Only exact selected finite certificate and the accompanying H023 cost/Bernstein/Bernoulli transfer; no acceptance of the large dimension-count kernel or unrelated historical claims.'}
(ROOT/'H023_CORE_CHECK.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'passed','seconds':result['elapsed_seconds'],'Taylor_zeros':zeros,'positive_coefficients':positives,'cost_exponents':exponents,'shift_sum':shift_sum,'atom_bounds':[x['bernstein_max'] for x in summaries]}))
