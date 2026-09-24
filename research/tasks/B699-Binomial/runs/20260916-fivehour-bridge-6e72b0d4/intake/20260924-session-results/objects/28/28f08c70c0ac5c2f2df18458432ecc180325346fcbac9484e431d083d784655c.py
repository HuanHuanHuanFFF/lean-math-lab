#!/usr/bin/env python3
"""Standard-library exact re-derivation and coefficient-by-coefficient DAG check."""
from exact_polynomial import Poly, F
from pathlib import Path
import json,sys,time,copy,argparse,hashlib
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
def const(n,c):return Poly.constant(n,c)
def vv(n):return [Poly.variable(n,i) for i in range(n)]
def add(a,b):
 z=a[0].cp(0);return [(a[i] if i<len(a) else z)+(b[i] if i<len(b) else z) for i in range(max(len(a),len(b)))]
def scale(a,c):return [x*c for x in a]
def mul(a,b):
 z=a[0].cp(0);o=[z]*(len(a)+len(b)-1)
 for i,c in enumerate(a):
  for j,d in enumerate(b):
   if c.d and d.d:o[i+j]=o[i+j]+c*d
 return o
def power(a,n):
 o=[a[0].cp(1)]
 for _ in range(n):o=mul(o,a)
 return o
def square_res(P,N):
 z=P[0].cp(0);one=z.cp(1);assert len(P)==2*N+1 and P[-1]==1
 B=[z]*N+[one]
 for deg in range(2*N-1,N-1,-1):
  c=z
  for i in range(max(0,deg-N),min(N,deg)+1):c=c+B[i]*B[deg-i]
  B[deg-N]=(P[deg]-c)/2
 out=add(P,scale(mul(B,B),-1));assert all(f==0 for f in out[N:]);return out[:N][::-1]
def original():
 h,j,k,l,m,n,a=vv(7);z=const(7,0);one=const(7,1)
 H=[k,j,h,one]
 D=add([z]+mul(H,H),[-a,n,m,l]);t=a+k*k+n
 V=add(mul([-one,one],D),[-a]);assert V[0]==0 and V[1]==-t and sum(V,const(7,0))==-a;C=V[1:]
 Num=add(add(mul(mul(C,C),D),scale(C,-F(5,4)*a*t)),scale([-one,one],F(1,4)*a*t*t))
 assert Num[0]==0
 E=square_res(Num[1:],10)
 print('ORIGINAL_TEN_RESIDUALS_REBUILT=PASS',flush=True)
 return E

def compose(p,vals):
 n=vals[0].n;out=const(n,0);pw=[]
 for i,v in enumerate(vals):
  mx=max((m[i] for m in p.d),default=0);pw.append([v**k for k in range(mx+1)])
 for mo,c in p.d.items():
  t=const(n,c)
  for i,e in enumerate(mo):
   if e:t=t*pw[i][e]
  out=out+t
 return out

def rat_drop(p,idx,nu,de):
 assert nu.n==de.n==p.n-1
 deg=max((m[idx] for m in p.d),default=0);out=const(nu.n,0)
 pn=[nu**i for i in range(deg+1)];pd=[de**i for i in range(deg+1)]
 for e in range(deg+1):
  c=Poly(nu.n,{mo[:idx]+mo[idx+1:]:v for mo,v in p.d.items() if mo[idx]==e})
  out=out+c*pn[e]*pd[deg-e]
 return out

def low_chart(E):
 h,w,m,z=vv(4);zero=const(4,0)
 no=(-4*z*w+3*h+3)/6
 jj=(16*z*z*w*w+24*z*h*w+24*z*w-72*z+9*h*h-18*h-27)/36
 v=[h,jj,m*w,zero,m,m*no,m*z]
 fs=[compose(f,v).var_div(2,2) for f in E]
 assert fs[0]==0 and fs[1]==0
 return fs[2:],z**2,['h','w','m','z']

def ratios(E):
 h,w,l,u,v,z=vv(6)
 jj=(4*z*w-6*z)/3+h*(u*u-2*u)-w*l-u*u+2*(u-1)*v
 vals=[h,jj,l*w,l,l*(h+u),l*(jj+h*u+v),l*z]
 fs=[compose(f,vals).var_div(2,2) for f in E]
 assert fs[0]==0
 print('FULL_NONZERO_ELL_RATIO_CHART=PASS',flush=True)
 return fs[1:]

def ex_chart(fs):
 a,h,l,u,v=vv(5);values=[h,const(5,F(3,2)),l,u,v,a]
 ff=[compose(f,values) for f in fs]
 ff[1]=ff[1]-3*h*ff[0]
 return ff,(a*l)**2,['a','h','l','m','n']

def u_chart(fs,uvalue):
 h,w,l,v,z=vv(5);values=[h,w,l,const(5,uvalue),v,z]
 ff=[compose(f,values) for f in fs]
 hh,ww,vv_,zz=vv(4)
 if uvalue==0:
  ln=-(2*zz+3*vv_**2)/4;ld=(6*ww-1)/8
 else:
  ln=(4*zz*ww-2*zz-3*vv_**2+6*vv_-3)/4;ld=const(4,-F(1,8))
 assert rat_drop(ff[0],2,ln,ld)==0
 eq=[rat_drop(f,2,ln,ld) for f in ff[1:]]
 target=(zz*ln*ld)**2 if uvalue==0 else zz**2
 return eq,target,['h','w','v','z']

def divide_var_linear(p,idx,root):
 x=Poly.variable(p.n,idx);div=x-root;o=const(p.n,0);r=p
 while r.d:
  degree=max(m[idx] for m in r.d)
  if degree==0:break
  c=r.coeff(idx,degree);term=c*x**(degree-1);o=o+term;r=r-term*div
 assert r==0, 'nonzero linear-division remainder'
 return o

def u1small_chart(fs):
 w,v,A=vv(3)
 hn=-3-(8*A*w*v-12*A*w-6*A*v+8*A)/3
 ln=(v-1)**2*(4*A*(1-2*w)+6)
 vals=[hn,w,ln,const(3,1),v,(v-1)**2*A]
 eq=[compose(f,vals) for f in fs]
 assert eq[0]==0 and eq[1]==0
 powers=[2,2,2,2,2,3,4];out=[]
 for f,power_ in zip(eq[2:],powers):
  for _ in range(power_):f=divide_var_linear(f,1,1)
  out.append(f)
 # Omitted v=1 graph: the original E8 then E7 force ell=0.
 hh,ww,zz=vv(3);ln0=4*zz*(1-2*ww)
 ex=[compose(f,[hh,ww,ln0,const(3,1),const(3,1),zz]) for f in fs]
 assert ex[0]==0 and ex[1]==-zz*(1-2*ww)/2
 return out,A*(v-1)*(4*A*(1-2*w)+6),['w','v','A']

def u0ex_chart(fs):
 h,l,v=vv(3)
 eq=[compose(f,[h,const(3,F(1,6)),l,const(3,0),v,-F(3,2)*v*v]) for f in fs]
 assert eq[0]==0
 return eq[1:],l*v,['h','l','v']

def validate(d,inputs,target,names,verbose=True):
 assert d['coefficient_field']=='QQ' and d['variables']==names
 N=len(names);nodes=[];seen=set();edges=mult=0;st=time.time()
 for i,nd in enumerate(d['nodes']):
  p=Poly.load(N,nd['poly'])
  if 'input' in nd:
   ix=nd['input'];assert 0<=ix<len(inputs) and ix not in seen and 'terms' not in nd
   assert p==inputs[ix],('BAD_INPUT',i,ix);seen.add(ix)
  else:
   o=const(N,0)
   for te in nd['terms']:
    j=te['node'];assert isinstance(j,int) and 0<=j<i
    q=Poly.load(N,te['factor']);o=o+q*nodes[j];edges+=1;mult+=len(q.d)
   assert o==p,('BAD_COMBINATION',i)
  nodes.append(p)
  if verbose and (i+1)%40==0:print('NODE',i+1,'/',len(d['nodes']),'sec',round(time.time()-st,2),flush=True)
 assert seen==set(range(len(inputs)))
 ti=d['target'];assert isinstance(ti,int) and 0<=ti<len(nodes)
 assert nodes[ti]==target,'wrong target'
 return {'nodes':len(nodes),'inputs':len(inputs),'edges':edges,'multiplier_monomials':mult,'target':target.serial(),'exact':'PASS'}

def boundary_checks(E):
 h,j,k,n,a=vv(5);zero=const(5,0)
 low=[compose(f,[h,j,k,zero,zero,n,a]) for f in E]
 assert low[0]==a*k
 # a != 0 -> k=0; then E8 forces n=0; E6 forces a=0.
 hh,jj,nn,aa=vv(4)
 lv=[compose(f,[hh,jj,const(4,0),nn,aa]) for f in low]
 assert lv[1]==3*nn*nn/4
 h3,j3,a3=vv(3)
 last=compose(lv[3],[h3,j3,const(3,0),a3])
 assert last==-a3*a3/2
 # A necessary-coefficient-screen survivor need not satisfy the original square.
 point=[0,0,1,1,2,0,1]
 fp=[compose(f,[const(1,a) for a in point]) for f in E]
 assert fp[0]==-F(17,4)
 assert point[3]*(2*point[2]-3*point[3])*(point[4]-point[0]*point[3])*(point[4]-(point[0]+1)*point[3])!=0
 return {'ell0_eta0_boundary':'PASS','regular_weak_model_E9':'-17/4','regularity_not_sufficient':True}

def corrupt_tests(data,inputs,target,names):
 rejected=[]
 for kind in ['wrong_field','changed_input','future_reference','changed_factor','wrong_target']:
  d=copy.deepcopy(data)
  if kind=='wrong_field':d['coefficient_field']='GF(1000003)'
  if kind=='changed_input':d['nodes'][0]['poly'][0][1]+=d['nodes'][0]['poly'][0][2]
  if kind in ['future_reference','changed_factor']:
   node=next(nd for nd in d['nodes'] if 'terms' in nd)
   if kind=='future_reference':node['terms'][0]['node']=len(d['nodes'])
   else:node['terms'][0]['factor'][0][1]+=node['terms'][0]['factor'][0][2]
  if kind=='wrong_target':d['target']=0
  try:validate(d,inputs,target,names,False)
  except (AssertionError,ValueError,TypeError,IndexError):rejected.append(kind);continue
  raise AssertionError('accepted intentionally corrupted proof '+kind)
 return rejected

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--output-dir',required=True,type=Path);ap.add_argument('--chart',default='all');a=ap.parse_args();a.output_dir.mkdir(parents=True,exist_ok=False)
 E=original();f=ratios(E);results={'boundary_checks':boundary_checks(E)}
 charts={'low_remainder':lambda:low_chart(E),'exception':lambda:ex_chart(f),'u0_generic':lambda:u_chart(f,0),'u0_exception':lambda:u0ex_chart(f),'u1_small':lambda:u1small_chart(f)}
 for name,fn in charts.items():
  if a.chart!='all' and a.chart!=name:continue
  st=time.time();print('CHART',name,flush=True)
  inputs,target,names=fn();d=json.loads((ROOT/'certificates'/f'{name}.json').read_text());stat=validate(d,inputs,target,names)
  stat['certificate_sha256']=hashlib.sha256((ROOT/'certificates'/f'{name}.json').read_bytes()).hexdigest()
  results[name]=stat
  if name=='low_remainder':results['negative_tests_rejected']=corrupt_tests(d,inputs,target,names)
  print('CHART_PASS',name,'sec',round(time.time()-st,3),flush=True)
 (a.output_dir/'standard_check.json').write_text(json.dumps(results,sort_keys=True,indent=2)+'\n')
 print('MIX_EXCEPTION_GATES_STANDARD_CHECK=PASS',flush=True)
if __name__=='__main__':main()
