#!/usr/bin/env python3
"""Reconstruct the genuine quadratic-remainder chart and regenerate its QQ certificate.
Optional dependencies: SymPy 1.14.0, a C++17 compiler, GMP development libraries.
The default certificate verification needs only Python's standard library.
"""
import argparse, os, subprocess, sys, json, hashlib
from pathlib import Path
import sympy as sp
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
ROOT=Path(__file__).resolve().parents[1]
sys.set_int_max_str_digits(0)

def construct():
 R,b,h,j,k,c,p,q,z,x=ring('b,h,j,k,c,p,q,z,x',QQ)
 M=x*x+b;H=x**3+h*x*x+j*x+k;A=x*x+p*x+q;V=H*H+c*A;t=c*z
 P=M*M*V**3-8*t*M*V*V+(16-5*M)*t*t*V+t**3*(M+20)
 def cf(f,d):return R.from_dict({m[:-1]+(0,):cc for m,cc in f.items() if m[-1]==d})
 B=x**11
 for d in range(21,10,-1):B+=cf(P-B*B,d)*x**(d-11)/2
 E=P-B*B
 assert all(m[-1]<11 for m in E)
 fs=[]
 for d in range(10,-1,-1):
  f,r=cf(E,d).div(c*c);assert not r;fs.append(f)
 assert fs[0].diff(c)==-QQ(1,8)
 theta=8*fs[0]+c;assert theta.diff(c)==0
 delta=h-p
 assert theta==6*((b-j)*delta**2+b*(2*q-j)+2*k*delta+(h*delta+q-j)**2)-32*z
 inputs=[f.compose(c,theta) for f in fs[1:]]
 idx=[0,1,2,3,5,6,7]
 assert all(m[4]==m[8]==0 for f in inputs for m in f)
 return inputs,theta*z,idx

def writepoly(out,p,idx):
 out.write(str(len(p))+'\n')
 for m,c in p.items():out.write(f'{c.numerator} {c.denominator} '+' '.join(str(m[i]) for i in idx)+'\n')

def main():
 pa=argparse.ArgumentParser();pa.add_argument('--output-dir',required=True,type=Path);pa.add_argument('--search-timeout',type=int,default=180);a=pa.parse_args()
 a.output_dir.mkdir(parents=True,exist_ok=False)
 inputs,target,idx=construct()
 ip=a.output_dir/'four.in';tp=a.output_dir/'target.in';cp=a.output_dir/'four20.json';binary=a.output_dir/'gbtrace'
 with ip.open('w') as out:
  out.write('7 10 6\n2 1 2 3 1 2 4\nb h j k p q z\n')
  for f in inputs:writepoly(out,f,idx)
 with tp.open('w') as out:writepoly(out,target,idx)
 subprocess.run(['g++','-std=c++17','-O3',str(ROOT/'src/gbtrace.cpp'),'-lgmpxx','-lgmp','-o',str(binary)],check=True)
 env={k:v for k,v in os.environ.items() if not k.startswith('GB_')};env['GB_TARGET_FILE']=str(tp.resolve());env['GB_MAX_BITS']='0';env['GB_DIV_MODE']='0'
 with (a.output_dir/'search.log').open('w') as log:
  subprocess.run([str(binary),str(ip),str(cp)],env=env,stdout=log,stderr=log,timeout=a.search_timeout,check=True)
 expected=(ROOT/'certificates/four20.json').read_bytes();actual=cp.read_bytes()
 if actual!=expected:raise AssertionError('Regenerated certificate differs; run independent verification before using it.')
 receipt={'from_original_formulas':True,'sympy_version':sp.__version__,'coefficient_field':'QQ','coefficient_cap':0,'certificate_sha256':hashlib.sha256(actual).hexdigest(),'byte_identical':True,'note':'This reconstructs one exact certificate; no claim of Groebner completeness is needed.'}
 (a.output_dir/'regeneration.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n')
 print('FOUR20_QQ_CERTIFICATE_REGENERATED=PASS\nCERTIFICATE_BYTE_IDENTICAL=PASS')
if __name__=='__main__':main()
