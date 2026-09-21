"""Certificate producer. SymPy is only used here, not in replay/checkers."""
from pathlib import Path
import json,math
import sympy
from poly import expected,NAMES
from primary import table,shell
ROOT=Path(__file__).resolve().parents[1]
pc={}
def make_prime(n):
    n=int(n)
    if str(n) in pc:return
    if n==2:pc['2']={'factors':[],'witnesses':{}};return
    factors=[[int(p),int(e)] for p,e in sorted(sympy.factorint(n-1).items())]
    witnesses={}
    for p,e in factors:
        make_prime(p)
        for a in range(2,n):
            if pow(a,n-1,n)==1 and math.gcd(pow(a,(n-1)//p,n)-1,n)==1:
                witnesses[str(p)]=a;break
        else:raise ValueError('no Lucas witness')
    pc[str(n)]={'factors':factors,'witnesses':witnesses}
for n in [3,83,13367,164511353,8831418697]:make_prime(n)
X=2**41;P=8831418697;m=249
row={'X':X,'n':2*X*X,'exponent_n':83,'P':P,'p':P,'h':1,'m':m,'d3':1,
     'factor_Xminus':[[13367,1],[164511353,1]],'factor_Xplus':[[3,1],[83,1],[P,1]],
     'new_threshold':64*m**3,'previous_negative_threshold':542*m**5,
     'omega_K':4,'omega_M':5}
c={'format':'B699-E-TWO-SLOT-CUBIC-v1','names':list(NAMES),'polynomials':expected(),
   'slot_table':table(),'prime_certificates':pc,'row':row,'shell':shell(),
   'iso3_tests':[[1,1],[3,3],[9,1],[27,1],[15,3],[45,1],[63,1]]}
(ROOT/'certificates/certificate.json').write_text(json.dumps(c,indent=2,sort_keys=True)+'\n')
print('GENERATED',len(pc),'prime certificates')
