#!/usr/bin/env python3
"""Independent standard-library-only reconstruction and ideal-membership verifier.
No CAS, modular lifting, Groebner completeness, or original NC quantifiers are trusted here.
"""
import json, sys, time, math, argparse, hashlib, copy
from pathlib import Path
from fractions import Fraction as F
from exact_polynomial import Poly
if not __debug__:raise RuntimeError('Do not use -O')
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
# Coefficient lists are ascending powers in the independent variable x.
def ua(a,b):
 n=max(len(a),len(b));z=a[0].cp(0)
 return [(a[i] if i<len(a) else z)+(b[i] if i<len(b) else z) for i in range(n)]
def us(a,b):return ua(a,[-c for c in b])
def um(a,b):
 z=a[0].cp(0);r=[z]*(len(a)+len(b)-1)
 for i,c in enumerate(a):
  if not c.d:continue
  for j,d in enumerate(b):
   if d.d:r[i+j]=r[i+j]+c*d
 return r
def up(a,n):
 r=[a[0].cp(1)]
 for _ in range(n):r=um(r,a)
 return r
def uc(a,c):return [p*c for p in a]
def square_resid(P,N):
 assert len(P)==2*N+1 and P[-1]==1
 z=P[0].cp(0);B=[z]*(N+1);B[N]=z.cp(1)
 for deg in range(2*N-1,N-1,-1):
  coeff=z
  for i in range(max(0,deg-N),min(N,deg)+1):coeff=coeff+B[i]*B[deg-i]
  B[deg-N]=(P[deg]-coeff)/2
 R=us(P,um(B,B));assert all(c==0 for c in R[N:])
 return R[:N],B

def insert_var(p,pos):
 return Poly(p.n+1,{m[:pos]+(0,)+m[pos:]:c for m,c in p.d.items()})
def substitute_drop(p,pos,val):
 assert val.n==p.n-1
 r=Poly.constant(val.n,0);maxpow=max((m[pos] for m in p.d),default=0)
 powers=[val**i for i in range(maxpow+1)]
 for i in range(maxpow+1):
  coeff=Poly(val.n,{m[:pos]+m[pos+1:]:c for m,c in p.d.items() if m[pos]==i})
  r=r+coeff*powers[i]
 return r

def build_inputs():
 st=time.time();N=8;b,h,j,k,c,p,q,z=[Poly.variable(N,i) for i in range(N)];one=Poly.constant(N,1);zero=Poly.constant(N,0)
 M=[b,zero,one];H=[k,j,h,one];A=[q,p,one];V=ua(up(H,2),uc(A,c));t=c*z
 P=ua(ua(um(up(M,2),up(V,3)),uc(um(M,up(V,2)),-8*t)),ua(uc(um(us([16*one],uc(M,5)),V),t*t),uc(ua(M,[20*one]),t**3)))
 E,B=square_resid(P,11)
 fs=[a.var_div(4,2) for a in E[::-1]]
 # The highest residual is -c/8 plus an expression independent of c.
 theta8=8*fs[0]+c
 assert all(m[4]==0 for m in theta8.d)
 theta=theta8.drop(4)
 # Compact formula is a second exact expression for the eliminated coefficient.
 bb,hh,uu,vv,pp,qq,zz=[Poly.variable(7,i) for i in range(7)]
 dd=hh-pp
 compact=6*((bb-uu)*dd**2+bb*(2*qq-uu)+2*vv*dd+(hh*dd+qq-uu)**2)-32*zz
 assert theta==compact
 out=[substitute_drop(f,4,theta) for f in fs[1:]]
 assert substitute_drop(fs[0],4,theta)==0
 print('RAW_SQUARE_AND_NORMALIZATION=PASS',round(time.time()-st,3),flush=True)
 return out,theta,{'raw_residuals':11,'residual_normalization':'E_i/c^2, c nonzero','retained_equations':10,'input_terms':[len(a.d) for a in out],'theta_terms':len(theta.d)}

def validate(data,inputs,theta,verbose=True):
 assert data['variables']==['b','h','j','k','p','q','z']
 assert data['coefficient_field']=='QQ'
 n=7;nodes=[];seen=set();edges=mults=0;st=time.time()
 for i,nd in enumerate(data['nodes']):
  p=Poly.load(n,nd['poly'])
  if 'input' in nd:
   assert 'terms' not in nd
   ix=nd['input'];assert isinstance(ix,int) and 0<=ix<len(inputs) and ix not in seen
   assert p==inputs[ix],('input mismatch',i,ix);seen.add(ix)
  else:
   r=Poly.constant(n,0)
   for ed in nd['terms']:
    j=ed['node'];assert isinstance(j,int) and 0<=j<i,('non-DAG',i,j)
    factor=Poly.load(n,ed['factor']);r=r+factor*nodes[j]
    edges+=1;mults+=len(factor.d)
   assert p==r,('linear combination failure',i)
  nodes.append(p)
  if verbose and (i+1)%25==0:print('CHECK_NODE',i+1,'seconds',round(time.time()-st,3),flush=True)
 assert seen==set(range(10))
 ti=data['target'];assert isinstance(ti,int) and 0<=ti<len(nodes)
 target=(theta*Poly.variable(n,6))**2
 assert nodes[ti]==target, 'wrong nonzero target'
 return {'nodes':len(nodes),'input_nodes':10,'derived_nodes':len(nodes)-10,'edges':edges,'multiplier_monomials':mults,'target':'(Theta*z)^2','full_coefficient_equality':'PASS'}

def main():
 pa=argparse.ArgumentParser();pa.add_argument('--output-dir',required=True,type=Path);pa.add_argument('--skip-corrupt-tests',action='store_true');a=pa.parse_args();a.output_dir.mkdir(parents=True,exist_ok=False)
 data=json.loads((ROOT/'certificates/four20.json').read_text());inputs,theta,istats=build_inputs();stats=validate(data,inputs,theta)
 neg=[]
 if not a.skip_corrupt_tests:
  # Put intentionally invalid fields early; avoids needlessly repeating the expensive valid DAG.
  for typ in ['variable_order','input_coefficient','future_reference','changed_first_derived','wrong_field']:
   d=copy.deepcopy(data)
   if typ=='variable_order':d['variables'][0]='wrong'
   if typ=='input_coefficient':d['nodes'][0]['poly'][0][1]+=d['nodes'][0]['poly'][0][2]
   if typ in ['future_reference','changed_first_derived']:
    i=next(i for i,nd in enumerate(d['nodes']) if 'terms'in nd)
    if typ=='future_reference':d['nodes'][i]['terms'][0]['node']=len(d['nodes'])
    else:d['nodes'][i]['poly'][0][1]+=d['nodes'][i]['poly'][0][2]
   if typ=='wrong_field':d['coefficient_field']='GF(1000003)'
   try:validate(d,inputs,theta,False)
   except (AssertionError,ValueError,TypeError,IndexError):neg.append(typ);continue
   raise AssertionError('accepted bad certificate '+typ)
 result={'schema_version':1,'scope':'full genuine-quadratic remainder of the whole-four slot, M degree2 L degree8; mixed slot remains open','evidence':'author paper plus exact characteristic-zero ideal-membership DAG, no Lean or external independent review','construction':istats,'proof':stats,'negative_tests_rejected':neg,'certificate_sha256':hashlib.sha256((ROOT/'certificates/four20.json').read_bytes()).hexdigest()}
 (a.output_dir/'standard_check.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
 print('FOUR20_QUADRATIC_REMAINDER_QQ_CERTIFICATE=PASS\nCORRUPTED_CERTIFICATES_REJECTED=PASS\nFOUR20_STANDARD_LIBRARY_REPLAY=PASS',flush=True)
if __name__=='__main__':main()
