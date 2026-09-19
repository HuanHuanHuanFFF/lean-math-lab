from pathlib import Path
from fractions import Fraction
from math import isqrt,gcd,lcm
import json,time
from recover_probe import matrix
ROOT=Path(__file__).parents[1]

def ratrec(a,m):
 if a==0:return Fraction(0)
 b=isqrt(m//2);r0,r1=m,a;t0,t1=0,1
 while abs(r1)>b:
  q=r0//r1;r0,r1=r1,r0-q*r1;t0,t1=t1,t0-q*t1
 if not(0<abs(t1)<=b)or gcd(r1,t1)!=1 or gcd(t1,m)!=1:return None
 f=Fraction(r1,t1)
 return f if (f.numerator-a*f.denominator)%m==0 else None

def primitive(vec):
 den=lcm(*(x.denominator for x in vec));out=[int(x*den)for x in vec];g=gcd(*out)
 out=[v//g for v in out]
 if next(x for x in out if x)!=abs(next(x for x in out if x)):out=[-x for x in out]
 return out
if __name__=='__main__':
 start=time.monotonic();tasks={int(a[0]):list(map(int,a[1:])) for l in(ROOT/'evidence/new_kernel_tasks.txt').read_text().splitlines()if(a:=l.split())}
 state={};certs={};bad=[];counts=[]
 for path in sorted((ROOT/'evidence').glob('modular_kernels_*.txt'),key=lambda p:int(p.stem.split('_')[-1])):
  p=int(path.stem.split('_')[-1]);assert p>=2 and all(p%d for d in range(2,isqrt(p)+1))
  for line in path.read_text().splitlines():
   v=line.split();mask,d,r=int(v[0]),int(v[1]),int(v[2]);pivs=v[3];co=list(map(int,v[4:]));
   if mask in certs:continue
   if len(co)!=len(pivs):continue
   if mask not in state: state[mask]=(p,co,pivs)
   else:
    M,old,oldp=state[mask]
    if pivs!=oldp:bad.append([mask,p]);continue
    inv=pow(M,-1,p);co=[a+M*((b-a)*inv%p)for a,b in zip(old,co)];state[mask]=(M*p,co,pivs)
   M,co,_=state[mask];rr=[ratrec(a,M)for a in co]
   if any(x is None for x in rr):continue
   cc=primitive(rr);dd,*ms=tasks[mask];assert dd==d
   mon,rows=matrix(mask,d,ms)
   if not all(sum(a*b for a,b in zip(row,cc))==0 for row in rows):continue
   certs[mask]={'mask':mask,'d':d,'weights':ms,'coefficients':cc,'l1_bits':sum(map(abs,cc)).bit_length(),'conditions':len(rows),'CRT_modulus_bits':M.bit_length()}
  counts.append([p,len(certs)]);print('prime',p,'certified',len(certs),flush=True)
 (ROOT/'evidence/integer_kernels.json').write_text(json.dumps({'certificates':list(certs.values())},indent=2))
 left=sorted(set(tasks)-set(certs));(ROOT/'evidence/kernel_reconstruction_pending.json').write_text(json.dumps(left))
 report={'certified':len(certs),'pending':len(left),'pending_masks':left,'steps':counts,'pivot_mismatches':bad,'max_norm_bits':max((c['l1_bits']for c in certs.values()),default=0),'seconds':time.monotonic()-start}
 (ROOT/'logs/kernel_reconstruction.json').write_text(json.dumps(report,indent=2));print(report)
