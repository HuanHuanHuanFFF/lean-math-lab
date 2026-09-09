"""Targeted falsification: is the new anchored certificate automatic?
This checks first-window structure only, NOT equality pairs.
"""
from certificate_probe import factor_window,primes_upto
from math import isqrt,gcd
from functools import reduce
from pathlib import Path
import json
BASE=10**6; LIMIT=5000
f=factor_window(BASE,LIMIT+8,primes_upto(isqrt(BASE+LIMIT+8)))
Q=[max(p**e for p,e in row.items()) for row in f]
results=[]
for k in (3,8):
    fail=None
    for delta in range(LIMIT):
        n=BASE+delta;qs=Q[delta:delta+k];F=5*(k-1)*(n+k)
        anchor=max(range(k),key=lambda i:qs[i])
        S=[i+1 for i,q in enumerate(qs) if i==anchor or qs[anchor]*q>=F]
        c=reduce(gcd,(n+i for i in S),0);s=S[-1]-S[0]
        passed=len(S)>=2 and s*(c+1)>c*(k-1)
        if not passed:
            fail={'n':n,'k':k,'F':F,'Q':qs,'anchor':anchor+1,'S':S,'gcd':c,'span':s,
                  'factorizations':[{str(p):e for p,e in row.items()} for row in f[delta:delta+k]],
                  'attempted_starts':delta+1,
                  'meaning':'Fails the structural sufficient certificate. Not an LCM collision; no claim of equality.'}
            break
    results.append({'k':k,'start_range':[BASE,BASE+LIMIT-1],'first_failure':fail,
                    'attempted_starts':LIMIT if fail is None else fail['attempted_starts']})
Path(__file__).with_name('automatic_shape_failures.json').write_text(json.dumps(results,ensure_ascii=False,indent=2)+'\n')
print(json.dumps(results,ensure_ascii=False,indent=2))
