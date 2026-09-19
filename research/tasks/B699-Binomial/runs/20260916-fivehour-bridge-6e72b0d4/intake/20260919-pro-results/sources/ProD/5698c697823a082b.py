from math import isqrt,gcd
from pathlib import Path
import json
# A finite, explicitly bounded diagnostic of an attempted first-row-only proof.
# Not an exhaustive NC6 search; no general conclusion is drawn from emptiness.
out=[]; tests=0
root=1; mod=3
for a in range(1,25):
    if a>1:
        old=mod; mod*=3
        root=next(root+t*old for t in range(3) if ((root+t*old)**2-10)%mod==0)
    if a<2:continue
    L=mod
    # For g>=10, z^2 <= L^2/[40(10L-1)] under the first-row equality.
    B=isqrt(L*L//(40*(10*L-1)))
    for z in range(1,B+1):
        if z%3==0:continue
        tests+=1
        beta=(root*z)%L; beta=min(beta,L-beta)
        num=beta*(L-beta)+10*z*z; den=10*z*z*L
        if num%den:continue
        g=num//den
        if g<10:continue
        n=g*L;j=g*beta
        rec={'a':a,'z':z,'beta':beta,'g':g,'n':n,'j':j,'n_mod1800':n%1800}
        if len(out)<30 or n%1800==1530:out.append(rec)
print(json.dumps({'tests':tests,'records':out},indent=2))
Path(__file__).with_name('finite_first_row_probe_replayed.json').write_text(json.dumps({'scope':'2<=a<=24; full z bound at g>=10; diagnostic only','tests':tests,'records':out},indent=2))
