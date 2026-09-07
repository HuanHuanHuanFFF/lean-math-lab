"""Independent exact checks of the difference-capacity and Pell diagnostics."""
from pathlib import Path
from math import comb, gcd, isqrt, lcm, prod
import json, hashlib, datetime
B=Path(__file__).resolve().parent
rows=[]
for k in range(2,21):
    Q=2*k-1
    primes=[p for p in range(2,Q+1) if all(p%q for q in range(2,isqrt(p)+1))]
    M=1
    for p in primes:
        power=p
        while power<=Q: power*=p
        M*=power
    for t in (1,2,3):
        d=k+M*t
        delta=comb(d+k-1,Q)
        cap=lcm(*(d+j for j in range(-k+1,k)))
        for p in primes:
            assert delta%p != 0
            while cap%p==0: cap//=p
        assert cap==delta
        rows.append({'k':k,'t':t,'d':d,'rough_lcm_equals_binomial':True})
U,V=41,29
pell=[]
for t in range(8):
    m,n=(U-3)//2,(V-3)//2
    assert U*U-2*V*V==-1 and m>=n+2
    assert (m+1)*(m+2)==2*(n+1)*(n+2)
    pell.append({'t':t,'k':2,'n':n,'m':m,'d':m-n,'ratio':2})
    U,V=3*U+4*V,2*U+3*V
out={'success':True,'checked_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
     'status':'finite checks of general paper constructions; not B686 counterexamples',
     'capacity_cases':rows,'pell_examples':pell,
     'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
(B/'capacity-checks.json').write_bytes((json.dumps(out,indent=2)+'\n').encode())
print(json.dumps({'capacity_cases':len(rows),'pell_cases':len(pell),'success':True}))
