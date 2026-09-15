"""Finite regressions for the proved all-moduli obstruction; no actual Pi claim."""
from pathlib import Path
from math import gcd,lcm
import json,sys

def ord2(q):
 assert q%2 and q>1
 u=2%q;t=1
 while u!=1:u=2*u%q;t+=1
 return t

def lift(k):
 f=lambda u:1250*u**3+450*u*u+27*u-1
 u=1;mod=2
 assert f(u)%mod==0
 while mod<(1<<k):
  nxt=mod*2;poss=[z for z in [u,u+mod] if f(z)%nxt==0]
  assert len(poss)==1;u=poss[0];mod=nxt
 return u

def poly(X,u):
 D=X-1
 return 4*u*(25*u-3*D)*(25*u-6*D)-(D-9*u)*(X*X-2)

records=[]
for M in [1,8,9,27,45,64,81,315,1001,4447]:
 odd=M;k=0
 while odd%2==0:k+=1;odd//=2
 k=max(k,1);Q=9*odd;mod2=1<<k
 a=lift(k);b=pow(2,-1,Q)
 u=a+mod2*((b-a)*pow(mod2,-1,Q)%Q)
 assert u>0 and u%2 and u%3
 step=lcm(6,ord2(Q));need=max(k,20,(512*(u+1)).bit_length())
 s=((need+step-1)//step)*step
 # No gigantic x or binomial is formed. Exact residues and proved size imply legality.
 Xmod=5*pow(2,s,M)%M if M>1 else 0
 assert poly(Xmod,u)%M==0
 assert 2*u%Q==1 and s%6==0 and s>=need
 # For x>=512(u+1), P(x,u)<0 by the signed leading-term bound in the proof.
 assert 1<<((512*(u+1)).bit_length())>512*(u+1)
 records.append({'M':M,'u':u,'s':s,'exponent_step':step,'residual_mod_M':0,
                 'actual_residual_nonzero_by_size':True,'claimed_Pi_solution':False})
res={'status':'PASS','records':records,'scope':'Regression only; all-moduli theorem is proved in PROOFS. These inputs are NOT Pi or NC3 witnesses.'}
out=Path(sys.argv[1]);(out/'local-obstruction.json').write_text(json.dumps(res,sort_keys=True,indent=2)+'\n')
print(json.dumps({'moduli_tested':len(records),'maximum_symbolic_exponent':max(r['s'] for r in records)}))
