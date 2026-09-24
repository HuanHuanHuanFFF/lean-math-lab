#!/usr/bin/env python3
"""SymPy-free reconstruction, QQ-DAG validation and degree-bounded determinant identities."""
from pathlib import Path
from fractions import Fraction
import json,time,argparse,hashlib,math,copy
from exact_polynomial import Poly,F
from upstream_check import original,ratios,vv,const,compose,divide_var_linear,validate,corrupt_tests
ROOT=Path(__file__).resolve().parents[1]
def load5(x):return Poly.load(5,x)
def rs(f,idx,nu,de):
 deg=max((mo[idx] for mo in f.d),default=0)
 pn=[nu**i for i in range(deg+1)];pd=[de**i for i in range(deg+1)]
 return sum((f.coeff(idx,i)*pn[i]*pd[deg-i] for i in range(deg+1)),const(5,0))
def stripcheck(raw,rec,nz):
 assert load5(rec['nonzero_product'])==nz
 keep=load5(rec['retained']);prod=keep*F(*rec['unit'])
 for item in rec['dropped']:
  g=load5(item['factor']);witness=load5(item['witness']);power=item['power']
  assert isinstance(power,int) and power>0 and g*witness==nz
  prod=prod*g**power
 assert prod==raw,'invalid factor stripping identity'
 return keep

def raw_regular():
 E=original();fs=ratios(E);w,u,y,L,A=vv(5);G=6*u*u*(u-1)**2
 v=u+u*(u-1)*y
 h=y*y-2*u*y-1+L*(6*w*(u-1)**2-1)-A*(8*w*u*u-12*u*u+12*u-4)
 vals=[h,w,G*L,u,v,G*A]
 out=[]
 for i,(f,p,q) in enumerate(zip(fs,[0,2,2,2,2,2,3,4,4],[0,2,2,2,2,2,2,3,4])):
  g=compose(f,vals)
  if not i:assert g==0;continue
  g=g.var_div(1,p)
  for _ in range(q):g=divide_var_linear(g,1,1)
  out.append(g)
 print('ORIGINAL_TO_REG5_STANDARD_REBUILD=PASS',flush=True)
 return out

def drop2(f):
 assert all(not any(m[2:]) for m in f.d)
 return Poly(2,{m[:2]:c for m,c in f.d.items()})

def ycase(fs,data,y0):
 w,u,y,L,A=vv(5);vals=[w,u,const(5,y0),L,A];ff=[compose(f,vals) for f in fs]
 vidx=4 if y0==0 else 3;scale=L if y0==0 else A;sidx=3 if y0==0 else 4
 de=ff[0].coeff(vidx,1);nu=-ff[0].coeff(vidx,0)
 assert rs(ff[0],vidx,nu,de)==0
 nz1=scale*u*(u-1)*nu;out=[]
 for i,f in enumerate(ff[1:]):
  g=stripcheck(rs(f,vidx,nu,de),data['stage1'][i],nz1)
  if y0==0:
   g=compose(g,[w,u+1,y,L,A]);g=rs(g,0,w-3*u-1,6*u*u);nz2=u*(u+1)*w*scale
  else:g=rs(g,0,w+1,2*u);nz2=u*(u-1)*w*scale
  g=stripcheck(g,data['stage2'][i],nz2);out.append(g)
 N=-out[0].coeff(sidx,0);D=out[0].coeff(sidx,1)
 assert N==load5(data['N']) and D==load5(data['D'])
 assert rs(out[0],sidx,N,D)==0
 nz3=w*u*(u+1 if y0==0 else u-1)*N*D;eq=[]
 for i,f in enumerate(out[1:]):eq.append(stripcheck(rs(f,sidx,N,D),data['stage3'][i],nz3))
 assert all(g==load5(c) for g,c in zip(eq,data['inputs'])) and nz3==load5(data['target'])
 cert=json.loads((ROOT/'certificates'/f'y{y0}.json').read_text())
 stats=validate(cert,[drop2(g) for g in eq],drop2(nz3),['w','u'])
 print('Y_ENDPOINT_STANDARD_PROOF=PASS',y0,flush=True)
 return stats,(cert,[drop2(g) for g in eq],drop2(nz3),['w','u'])

def degree(f,idx):return max((m[idx] for m in f.d),default=-1)
def bareiss(a):
 n=len(a)
 if not n:return 1
 a=[r[:] for r in a];sign=1;prev=1
 for k in range(n-1):
  if a[k][k]==0:
   piv=next((j for j in range(k+1,n) if a[j][k]),None)
   if piv is None:return 0
   a[k],a[piv]=a[piv],a[k];sign=-sign
  pivot=a[k][k]
  for i in range(k+1,n):
   aik=a[i][k]
   for j in range(k+1,n):
    value=pivot*a[i][j]-aik*a[k][j]
    q,r=divmod(value,prev);assert r==0,'Bareiss exact division'
    a[i][j]=q
   a[i][k]=0
  prev=pivot
 return sign*a[-1][-1]

def sylvester(f,g):
 # f/g highest degree first, lengths remain fixed even after a specialisation.
 m,n=len(f)-1,len(g)-1;size=m+n
 rows=[[0]*i+f+[0]*(n-1-i) for i in range(n)]
 rows += [[0]*i+g+[0]*(m-1-i) for i in range(m)]
 assert all(len(row)==size for row in rows)
 return bareiss(rows)

def grouped(f,el,rest):
 d=degree(f,el);out=[[] for _ in range(d+1)]
 for m,c in f.d.items():
  assert c.denominator==1 and all(not m[i] for i in range(f.n) if i!=el and i not in rest)
  out[d-m[el]].append((tuple(m[i] for i in rest),c.numerator))
 return out

def evalgroups(groups,powers):
 return [sum(c*math.prod(powers[i][e] for i,e in enumerate(m)) for m,c in row) for row in groups]
def evalpoly(p,rest,powers):
 return sum(c.numerator*math.prod(powers[i][m[idx]] for i,idx in enumerate(rest)) for m,c in p.d.items())

def resultant_grid(f,g,res,el,rest,label):
 assert all(c.denominator==1 and all(not mo[i] for i in range(res.n) if i not in rest) for mo,c in res.d.items()), "target must be an integer polynomial in precisely the remaining variables"
 m,n=degree(f,el),degree(g,el)
 bounds=[n*degree(f,i)+m*degree(g,i) for i in rest]
 for i,b in zip(rest,bounds):assert degree(res,i)<=b
 gf,gg=grouped(f,el,rest),grouped(g,el,rest)
 import itertools
 points=[range(-(b//2),b-b//2+1) for b in bounds]
 maxd=[max(degree(f,i),degree(g,i),degree(res,i)) for i in rest]
 count=0;st=time.time()
 for vals in itertools.product(*points):
  powers=[[a**e for e in range(md+1)] for a,md in zip(vals,maxd)]
  actual=sylvester(evalgroups(gf,powers),evalgroups(gg,powers))
  assert actual==evalpoly(res,rest,powers),(label,vals,'resultant mismatch')
  count+=1
  if len(rest)==1 and count%100==0:print(label,count,'elapsed',round(time.time()-st,2),flush=True)
 print(label,'PASS','points',count,'bounds',bounds,'seconds',round(time.time()-st,2),flush=True)
 return {'label':label,'matrix_size':m+n,'degree_bounds':bounds,'exact_evaluations':count,'status':'PASS'}

def dwcase(fs,data):
 w,u,y,L,A=vv(5);one=const(5,1)
 an=3*(u-1)**2*(y-1)**2;ad=4*u*u*y*y
 first=rs(fs[0],4,an*L,ad)
 J=first.coeff(3,1)/(-3);K0=first.coeff(3,0)/(-3)
 assert J==load5(data['J_original']) and K0==u*u*y**4*(y-1)**2
 assert first==-3*(L*J+K0)
 Jm=rs(rs(J,1,one,1-u),2,one,1-y)
 assert Jm==load5(data['J_mobius'])
 nz0=u*y*(u-1)*(y-1)*J;nzm=u*y*(u-1)*(y-1)*Jm;ps=[]
 for i,f in enumerate(fs[1:4]):
  g=rs(rs(f,4,an*L,ad),3,-K0,J)
  g=stripcheck(g,data['stages'][i][0],nz0)
  g=rs(rs(g,1,one,1-u),2,one,1-y)
  g=stripcheck(g,data['stages'][i][1],nzm)
  g=stripcheck(rs(g,0,w,u*u*y*y),data['stages'][i][2],nzm)
  assert g==load5(data['W_polys'][i]);ps.append(g)
 print('DW0_RATIONAL_COORDINATES_AND_FACTOR_STRIPS=PASS',flush=True)
 biv=[];stat=[]
 for i,g in enumerate(ps[1:]):
  rec=data['resultants_W'][i];res=load5(rec['resultant'])
  stat.append(resultant_grid(ps[0],g,res,0,[1,2],f'W_RESULTANT_{i+1}'))
  biv.append(stripcheck(res,rec,nzm))
 final=load5(data['resultant_U'])
 stat.append(resultant_grid(biv[0],biv[1],final,1,[2],'U_RESULTANT_FINAL'))
 prod=const(5,data['factor_scalar'])*y**data['factor_y']*(y-1)**data['factor_yminus1'];rootstats=[]
 for rec in data['factors']:
  cs=rec['coefficients_high_first'];pol=sum((c*y**(len(cs)-1-i) for i,c in enumerate(cs)),const(5,0));prod=prod*pol
  p=rec['no_root']['p'];assert p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
  assert cs[0]%p!=0;vals=[]
  for x in range(p):
   v=0
   for c in cs:v=(v*x+c)%p
   vals.append(v)
  assert vals==rec['no_root']['values'] and 0 not in vals
  rootstats.append({'degree':len(cs)-1,'prime':p,'values':vals,'leading_mod_prime':cs[0]%p,'PASS':True})
 assert prod==final
 print('EXACT_FACTORISATION_AND_RATIONAL_NO_ROOT_CERTIFICATES=PASS',flush=True)
 return {'resultant_identities':stat,'univariate_factors':rootstats,'final_degree':degree(final,2),'proof_field':'Q (not C)'}

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--output-dir',required=True,type=Path);args=ap.parse_args();args.output_dir.mkdir(parents=True,exist_ok=False)
 data=json.loads((ROOT/'certificates/algebra.json').read_text());fs=raw_regular()
 assert len(fs)==8 and all(p==load5(s) for p,s in zip(fs,data['source_regular']))
 results={'source_residuals':8,'y':[]}
 for y0 in [0,1]:
  stat,negative=ycase(fs,data['y_charts'][y0],y0);results['y'].append(stat)
  if y0==0:results['corrupted_DAGs_rejected']=corrupt_tests(*negative)
 results['dw0']=dwcase(fs,data['dw0'])
 # The first remaining residual is exactly (3/4)*(D_w*w-N_w).
 w,u,y,L,A=vv(5);Dw=8*A*u*u*y*y-6*L*(u-1)**2*(y-1)**2
 N=-fs[0].coeff(0,0)*F(4,3)
 assert fs[0]==F(3,4)*(Dw*w-N)
 # A weak rational point satisfying the new gates and the top residual, not the next one.
 point=[const(5,F(38,61)),const(5,2),const(5,2),const(5,1),const(5,1)]
 ev=lambda p: compose(p,point).d.get((0,0,0,0,0),F(0))
 assert ev(Dw)==122 and ev(N)==76 and ev(fs[0])==0 and ev(fs[1])==F(-157221,7442)
 bm=json.loads((ROOT/'certificates/boundary_model.json').read_text())
 assert bm['next_residual']=='-157221/7442' and bm['is_original_solution'] is False
 results['boundary_model']={'top_residual':'0','next_residual':'-157221/7442','not_NC_candidate':True}
 print('NEW_GATES_DO_NOT_IMPLY_MIXED_SOLUTION=PASS',flush=True)
 results['generic_w_formula']='PASS; denominator now excluded over Q'
 results['new_scope']='rational regular mixed graph: y*(y-1)*D_w != 0; ordinary graph still open'
 (args.output_dir/'check.json').write_text(json.dumps(results,sort_keys=True,indent=2)+'\n')
 print('MIX_DW_NONZERO_STANDARD_REPLAY=PASS',flush=True)
if __name__=='__main__':main()
