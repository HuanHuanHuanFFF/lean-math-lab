from fractions import Fraction
from math import comb, factorial
from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
import json

def beta(a,b):
    return Fraction(factorial(a)*factorial(b),factorial(a+b+1))

counts={'P':0,'Q':0,'E':0}
for a in range(7):
    for b in range(7):
        for c in range(7):
            n=a+b+c+1
            k=Fraction(factorial(n),factorial(a)*factorial(b)*factorial(c))
            for r in range(c+1):
                assert k*comb(c,r)*beta(a+c-r,b)==comb(n,r)*comb(a+c-r,a)
                counts['P']+=1
            for r in range(a+1):
                assert k*comb(a,r)*beta(b+r,a+c-r)==comb(a+c-r,c)*comb(b+r,r)
                counts['Q']+=1
            for r in range(b+1):
                assert k*comb(b,r)*beta(a+r,c)==comb(a+r,r)*comb(n,a+c+r+1)
                counts['E']+=1
record={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),'range':'A,B,C=0..6 and every valid coefficient index','counts':counts,'total':sum(counts.values()),'scope':'finite Fraction checks of coefficient-factorial identities; no analytic beta integral claim and no Lean acceptance','script_sha256':sha256(Path(__file__).read_bytes()).hexdigest()}
Path(__file__).with_name('coefficient-factor-check.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record))
