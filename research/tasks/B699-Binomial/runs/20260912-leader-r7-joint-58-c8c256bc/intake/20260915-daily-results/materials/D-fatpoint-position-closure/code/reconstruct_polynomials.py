#!/usr/bin/env python3
"""Optional deterministic rediscovery of the fixed coefficient certificates.
Requires NumPy. The main acceptance path needs only Python's standard library.
All modularly reconstructed vectors are checked against the integer equations.
"""
import json,math,time,argparse
from pathlib import Path
import numpy as np
ROOT=Path(__file__).resolve().parents[1]
def kernel(rows,nr,nc,p):
 A=np.array([[v%p for v in row]for row in rows],dtype=np.int64);pivs=[];r=0
 for c in range(nc):
  ix=np.flatnonzero(A[r:,c]);
  if len(ix)==0:continue
  q=r+int(ix[0]);A[[r,q]]=A[[q,r]];A[r,c:]=(A[r,c:]*pow(int(A[r,c]),-1,p))%p
  ix=np.flatnonzero(A[:,c]);ix=ix[ix!=r]
  A[ix,c:]=(A[ix,c:]-A[ix,c,None]*A[r,None,c:])%p
  pivs.append(c);r+=1
  if r==nr:break
 free=[a for a in range(nc)if a not in pivs]
 if len(free)!=1:return None
 f=free[0];v=[0]*nc;v[f]=1
 for r,c in enumerate(pivs):v[c]=-int(A[r,f])%p
 return f,v

def rat(a,M):
 if a==0:return (0,1)
 B=math.isqrt(M//2);r0,r1=M,a;t0,t1=0,1
 while abs(r1)>B:
  q=r0//r1;r0,r1=r1,r0-q*r1;t0,t1=t1,t0-q*t1
 if t1<0:r1,t1=-r1,-t1
 if not(0<t1<=B and math.gcd(r1,t1)==1 and (r1-a*t1)%M==0):return None
 return r1,t1

def isprime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def reconstruct(cert):
    D=cert['degree'];ws={int(r):w for r,w in cert['weights'].items()}
    exps=[(a,b) for a in range(D+1) for b in range(min(a,D-a)+1)]
    rows=[]
    for r,w in ws.items():
        for x in range(r//2+1):
            y=r-x
            for u in range(w):
                for v in range(w-u):
                    if x==y and u>v:continue
                    row=[]
                    for a,b in exps:
                        c=math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v) if a>=u and b>=v else 0
                        if a!=b and b>=u and a>=v:c+=math.comb(b,u)*math.comb(a,v)*x**(b-u)*y**(a-v)
                        row.append(c)
                    rows.append(row)
    nr,nc=len(rows),len(exps);M=1;p=1000003;vcrt=[0]*nc;free0=None;mods=[];final=None
    for trial in range(100):
        while not isprime(p):p+=2
        ans=kernel(rows,nr,nc,p)
        if ans is None:p+=2;continue
        f,v=ans
        if free0 is None:free0=f
        if f!=free0:p+=2;continue
        inv=pow(M,-1,p);vcrt=[a+M*((b-a)*inv%p) for a,b in zip(vcrt,v)]
        M*=p;mods.append(p);p+=2
        if len(mods)%5:continue
        fs=[rat(a,M) for a in vcrt]
        if any(v is None for v in fs):continue
        L=math.lcm(*(b for a,b in fs));z=[a*(L//b) for a,b in fs];g=math.gcd(*z);z=[a//g for a in z]
        if all(sum(a*b for a,b in zip(row,z))==0 for row in rows):final=z;break
    if final is None:raise RuntimeError('Discovery attempt did not produce a verified rational kernel')
    poly={}
    for (a,b),c in zip(exps,final):
        if not c:continue
        poly[a,b]=c
        if a!=b:poly[b,a]=c
    expected={(a,b):c for a,b,c in cert['poly']}
    if {p:-c for p,c in poly.items()}==expected:poly={p:-c for p,c in poly.items()}
    if poly!=expected:raise ValueError('Recovered exact polynomial differs from the published certificate')
    return {'H':cert['H'],'integer_rows':nr,'symmetric_monomials':nc,'modular_primes':mods,
            'coefficient_bit_size':max(abs(c).bit_length() for c in poly.values()),'exact_integer_kernel':True,'matches_certificate':True}

def main(out):
    certs=json.loads((ROOT/'evidence/height_certificates.json').read_text());ans=[reconstruct(c) for c in certs]
    Path(out).write_text(json.dumps(ans,indent=2,sort_keys=True)+'\n');print(json.dumps(ans))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence/reconstruction.json'));args=ap.parse_args();main(args.out)
