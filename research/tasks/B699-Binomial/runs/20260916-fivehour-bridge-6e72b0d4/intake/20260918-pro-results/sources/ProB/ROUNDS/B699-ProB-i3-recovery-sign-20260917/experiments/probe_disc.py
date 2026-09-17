from pathlib import Path
import json, math, time
import sympy as sp
root=Path(__file__).parent
rows=json.loads((root/'disc_coeffs.json').read_text())
def vp2(n):
 n=abs(n);return (n&-n).bit_length()-1
rows=[r for r in rows if vp2(r[3]-3*r[2])==2*vp2(r[6])+1]
M=720
primes=[p for p in list(sp.primerange(5,2500)) if pow(2,M,p)==1]
print('rows high',len(rows),'primes',primes,flush=True)
answer=[];start=time.monotonic()
for idx,row in enumerate(rows):
 lam,mu,A,rho,ep,T,g=row
 ss={s for s in range(M) if ((g*pow(2,s,9)%9 in (4,7)) if lam==3 else ((g*pow(2,s,9)%9 in (5,8)) if mu==3 else g*pow(2,s,9)%9 not in (4,5,7,8)))}
 trail=[]
 for p in primes:
  if g*ep*A%p==0:continue
  squares={d*d%p for d in range(p)}
  nvals=set();invden=pow(A*ep*ep,-1,p);invq=pow(ep**3*lam*A*g*g,-1,p)
  for x in range(p):
   w=(2*x+ep)%p
   nv=2*(T*w**3-A*(2*w*w+2*w*ep-ep*ep))*invden%p
   f=(8*T*T*x**3+4*T*(3*rho-4*A)*x*x+(6*rho*rho-21*A*rho+8*A*A)*x+ep*(rho-3*A)**2)%p
   if f*invq%p in squares:nvals.add(nv)
  old=len(ss);ss={s for s in ss if g*pow(2,s,p)%p in nvals}
  if len(ss)<old:trail.append([p,old,len(ss)])
  if not ss:break
 answer.append({'row':row,'remaining_s':sorted(ss),'trail':trail})
 if idx%20==0: print(idx,'remaining',len(ss),'time',round(time.monotonic()-start,2),flush=True)
(root/'disc_mod720_probe.json').write_text(json.dumps(answer))
print('EMPTY',sum(not a['remaining_s'] for a in answer),'NONEMPTY',sum(bool(a['remaining_s']) for a in answer),'residues',sum(len(a['remaining_s']) for a in answer),flush=True)
print('survivors',[(a['row'],a['remaining_s'][:15],len(a['remaining_s'])) for a in answer if a['remaining_s']][:20])
