#!/usr/bin/env python3
"""Construct the finite two-exponent covering certificate. Standard library only."""
import argparse,json,time
from pathlib import Path
from math import gcd,isqrt

PERIOD=720
CAP=128
EXCEPTIONS={(1,1,3,1,0,1,16), (1,1,3,1,1,1,1),
            (1,3,1,1,0,1,24), (3,1,1,1,0,3,8)}

def key(r): return tuple(r[k] for k in ('m','c','la','mu','kind','u','z'))
def coefficients():
 for m,c,la,mu in [(1,1,3,1),(1,1,1,3),(1,3,1,1),(3,1,1,1)]:
  for kind in (0,1,2):
   for u in range(1,isqrt(CAP)+1,2):
    for z in range(1,CAP//(u*u)+1):
     if la%gcd(u,z): continue
     if c==3 and z%3: continue
     if m==3 and z%3!=2: continue
     if la==3 and ((u%3==0)!=(z%3==0)): continue
     if kind==0 and z%8: continue
     if kind==1 and (z-3*la**3*mu**2*u*u)%16: continue
     if kind==2 and (z+la**3*mu**2*u*u)%16: continue
     yield dict(m=m,c=c,la=la,mu=mu,kind=kind,u=u,z=z)

def odd_primes(n):
 sieve=bytearray(b'\1')*(n+1);sieve[:2]=b'\0\0'
 for p in range(2,isqrt(n)+1):
  if sieve[p]:sieve[p*p:n+1:p]=b'\0'*((n-p*p)//p+1)
 return [p for p in range(5,n+1,2) if sieve[p]]

def cover(r):
 m,c,la,mu,kind,u,z=key(r);M=PERIOD
 es=range(M) if kind==2 else [kind]
 vs=[v for v in range(M) if (3 if c*m*pow(2,v,9)%9 in (4,7) else 1)==la
     and (3 if c*m*pow(2,v,9)%9 in (5,8) else 1)==mu]
 cells=[(e,v) for e in es for v in vs];initial=len(cells);steps=[]
 for p in odd_primes(3000):
  if pow(2,M,p)!=1: continue
  rootmap={};squares={h*h%p for h in range(p)}
  for h in range(p):rootmap.setdefault(2*mu*(z*h**3+la*h)%p,[]).append(h)
  xp=[pow(2,k,p) for k in range(M)];invla=pow(la,-1,p);cache={}
  left=[]
  for e,v in cells:
   n=c*m*xp[v]%p;g2=(m*xp[e])**2%p
   pair=n,g2
   if pair not in cache:
    roots=rootmap.get(u*g2*(n-2)%p,())
    cache[pair]=any((n*n-4*(n-1)*invla*(la+z*h*h))%p in squares for h in roots)
   if cache[pair]:left.append((e,v))
  removed=len(cells)-len(left)
  if removed:steps.append({'p':p,'removed':removed})
  cells=left
  if not cells:break
 if cells:raise ValueError(('unclosed coefficient',r,cells[:10]))
 return {**r,'method':'joint_congruence','initial_cells':initial,'steps':steps}

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);a=ap.parse_args()
 t=time.monotonic();rows=[]
 for r in coefficients():
  if key(r) in EXCEPTIONS:rows.append({**r,'method':'elementary_exception'})
  else:rows.append(cover(r))
 cert={'claim':'RQ128; see PROOFS.md for hypotheses','cap':CAP,'period':PERIOD,'rows':rows}
 p=Path(a.output);p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(cert,indent=2)+'\n')
 print(json.dumps({'cases':len(rows),'modular_cases':sum(r['method']=='joint_congruence' for r in rows),
 'elementary_cases':sum(r['method']=='elementary_exception' for r in rows),
 'initial_cells':sum(r.get('initial_cells',0) for r in rows),
 'maximum_modulus':max(s['p'] for r in rows for s in r.get('steps',[])),
 'elapsed_seconds':round(time.monotonic()-t,3)},indent=2))
if __name__=='__main__':main()
