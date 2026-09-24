#!/usr/bin/env python3
"""Exact QQ source reconstruction. Search choices are not trusted by check.py."""
from pathlib import Path
import argparse, subprocess, os, json, hashlib, sys, time
import sympy as sp
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
R,h,j,k,l,m,n,a,x=ring('h,j,k,l,m,n,a,x',QQ)

def cf(f,d):return R.from_dict({mo[:-1]+(0,):c for mo,c in f.items() if mo[-1]==d})
def original():
 H=x**3+h*x*x+j*x+k;D=x*H*H+l*x**3+m*x*x+n*x-a;t=a+k*k+n
 V=(x-1)*D-a;C,rr=V.div(x);assert not rr
 P,rr=(C*C*D-QQ(5,4)*a*t*C+QQ(1,4)*a*t*t*(x-1)).div(x);assert not rr
 B=x**10
 for d in range(19,9,-1):B+=cf(P-B*B,d)*x**(d-10)/2
 return [cf(P-B*B,d) for d in range(9,-1,-1)]
def divide(f,power_,var):
 for _ in range(power_):
  f,rem=f.div(var);assert not rem
 return f
def rational_sub(f,var,nu,de):
 idx=R.index(var);degree=max((mo[idx] for mo in f),default=0);out=R.zero
 for i in range(degree+1):
  c=R.from_dict({mo[:idx]+(0,)+mo[idx+1:]:q for mo,q in f.items() if mo[idx]==i})
  out+=c*nu**i*de**(degree-i)
 return out

def charts():
 E=original();out={}
 # Low cubic remainder ell=0; m!=0. Here k and a are ratios.
 ns=(-4*a*k+3*h+3)/6
 js=(16*a*a*k*k+24*a*h*k+24*a*k-72*a+9*h*h-18*h-27)/36
 eq=[divide(f.compose({l:R.zero,j:js,k:m*k,n:m*ns,a:m*a}),2,m) for f in E]
 assert not eq[0] and not eq[1]
 out['low_remainder']=(eq[2:],a*m,[0,2,4,6],['h','w','m','z'],[1,1,3,2],3)
 # Full ell!=0 ratio chart. m=u,n=v,a=z,k=w in this local ring.
 js=(4*a*k-6*a)/3+h*(m*m-2*m)-k*l-m*m+2*(m-1)*n
 vals={j:js,k:l*k,m:l*(h+m),n:l*(js+h*m+n),a:l*a}
 eq=[divide(f.compose(vals),2,l) for f in E]
 assert not eq[0];fs=eq[1:]
 ex=[f.compose(k,QQ(3,2)) for f in fs];ex[1]-=3*h*ex[0]
 out['exception']=(ex,a*l,[6,0,3,4,5],['a','h','l','m','n'],[3,1,3,1,2],0)
 # u=0, generic 6w-1!=0: exact denominator clearing only.
 f0=[f.compose(m,0) for f in fs];ln=-(2*a+3*n*n)/4;ld=(6*k-1)/8
 assert not rational_sub(f0[0],l,ln,ld)
 ff=[rational_sub(f,l,ln,ld) for f in f0[1:]]
 out['u0_generic']=(ff,a*ln*ld,[0,2,5,6],['h','w','v','z'],[1,1,2,3],3)
 # u=0, w=1/6: E8 gives z=-3v^2/2.
 ff=[f.compose({m:R.zero,k:QQ(1,6),a:-3*n*n/2}) for f in fs];assert not ff[0]
 out['u0_exception']=(ff[1:],l*n,[0,3,5],['h','l','v'],[1,3,2],2)
 # u=1, v!=1. z=(v-1)^2*A; E8/E7 solve ell,h.
 hn=-3-(8*a*k*n-12*a*k-6*a*n+8*a)/3
 ln=(n-1)**2*(4*a*(1-2*k)+6)
 ff=[f.compose(m,1).compose({h:hn,l:ln,a:(n-1)**2*a}) for f in fs]
 assert not ff[0] and not ff[1]
 ff=[divide(f,p,n-1) for f,p in zip(ff[2:],[2,2,2,2,2,3,4])]
 out['u1_small']=(ff,a*(n-1)*(4*a*(1-2*k)+6),[2,5,6],['w','v','A'],[1,1,2],2)
 return out

def writepoly(o,f,idx):
 assert all(mo[i]==0 for mo in f for i in range(8) if i not in idx)
 o.write(str(len(f))+'\n')
 for mo,c in f.items():o.write(f'{c.numerator} {c.denominator} '+' '.join(str(mo[i]) for i in idx)+'\n')

def main():
 p=argparse.ArgumentParser();p.add_argument('--output-dir',required=True,type=Path);p.add_argument('--chart',default='all');p.add_argument('--timeout',type=int,default=300);args=p.parse_args();args.output_dir.mkdir(parents=True,exist_ok=False)
 data=charts();binary=args.output_dir/'gbtrace'
 subprocess.run(['g++','-std=c++17','-O3',str(ROOT/'src/gbtrace.cpp'),'-lgmpxx','-lgmp','-o',str(binary)],check=True)
 receipts={}
 for name,(eq,target,idx,names,weights,ti) in data.items():
  if args.chart!='all' and args.chart!=name:continue
  ip=args.output_dir/(name+'.in');tp=args.output_dir/(name+'.target');cp=args.output_dir/(name+'.json')
  with ip.open('w') as o:
   o.write(f'{len(idx)} {len(eq)} {ti}\n'+' '.join(map(str,weights))+'\n'+' '.join(names)+'\n')
   for f in eq:writepoly(o,f,idx)
  with tp.open('w') as o:writepoly(o,target,idx)
  env={k:v for k,v in os.environ.items() if not k.startswith('GB_')};env['GB_MAX_BITS']='0';env['GB_DIV_MODE']='0';env['GB_TARGET_FILE']=str(tp.resolve())
  st=time.monotonic()
  with (args.output_dir/(name+'.log')).open('w') as log:subprocess.run([str(binary),str(ip),str(cp)],stdout=log,stderr=log,env=env,timeout=args.timeout,check=True)
  actual=cp.read_bytes();expected=(ROOT/'certificates'/(name+'.json')).read_bytes();assert actual==expected, 'new certificate differs; do not silently adopt it'
  receipts[name]={'from_original_equation':True,'byte_identical':True,'sha256':hashlib.sha256(actual).hexdigest(),'elapsed_seconds':round(time.monotonic()-st,3)}
  print('REGENERATED',name,'BYTE_IDENTICAL=PASS',flush=True)
 (args.output_dir/'regeneration.json').write_text(json.dumps({'sympy':sp.__version__,'receipts':receipts},indent=2,sort_keys=True)+'\n')
 print('ALL_SELECTED_CERTIFICATES_REGENERATED=PASS',flush=True)
if __name__=='__main__':main()
