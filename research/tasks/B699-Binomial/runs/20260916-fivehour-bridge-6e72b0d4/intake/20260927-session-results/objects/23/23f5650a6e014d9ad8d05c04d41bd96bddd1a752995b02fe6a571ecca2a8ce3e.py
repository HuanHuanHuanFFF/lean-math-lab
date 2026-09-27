"""New small rational kernels and uniform S5 source upper bounds.
Exact Fractions and polynomial dictionaries only; no CAS in replay.
"""
from fractions import Fraction as F
from pathlib import Path
import json
from exact_minors import integer_columns,jet,poly_mul as mul,poly_add as add,scalar,bareiss

def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def encode(f):return [[a,b,F(v).numerator,F(v).denominator]for(a,b),v in sorted(f.items())]
def rref(a,n):
 a=[[F(x)for x in r]for r in a];piv=[];rr=0
 for c in range(n):
  ix=next((i for i in range(rr,len(a))if a[i][c]),None)
  if ix is None:continue
  a[rr],a[ix]=a[ix],a[rr];v=a[rr][c];a[rr]=[x/v for x in a[rr]]
  for i in range(len(a)):
   if i!=rr and a[i][c]:
    v=a[i][c];a[i]=[x-v*y for x,y in zip(a[i],a[rr])]
  piv.append(c);rr+=1
  if rr==len(a):break
 return a,piv

def base_polys():
 P0={(0,0):F(1)};W={(0,0):F(1)}
 for a in range(4):P0=mul(P0,{(0,1):F(1),(1,0):F(-a),(0,0):F(a*a)})
 for r in range(3,9):W=mul(W,{(1,0):F(1),(0,0):F(-r)})
 B=mul(mul(W,{(1,0):F(1),(0,0):F(-3)}),{(1,0):F(1),(0,0):F(-4)})
 return P0,B,W

def coords(polys,H):
 mons=sorted(set(H)|{m for f in polys for m in f});n=len(polys)
 a=[[F(f.get(m,0))for f in polys]+[F(H.get(m,0))]for m in mons]
 rr,piv=rref(a,n)
 for row in rr:
  if not any(row[:n]):assert not row[n]
 x=[F(0)]*n
 for i,c in enumerate(piv):x[c]=rr[i][n]
 ans={}
 for v,f in zip(x,polys):ans=add(ans,scalar(f,v))
 assert ans==H
 return x

def run(gd,out):
 P0,B,W=base_polys();records=[]
 cases=[('t05_q4',0,None),('t10_q5',2,{(2,0):F(3,2),(1,0):F(-25,2),(0,0):F(26)}),('t10_q5',12,{(2,0):F(5,6),(1,0):F(-35,6),(0,0):F(10)}),('t17_q5',3,{(2,0):F(1),(1,0):F(-9),(0,0):F(20)}),('t17_q5',4,{(2,0):F(1),(1,0):F(-9),(0,0):F(20)})]
 for name,ix,f in cases:
  line=(gd/f'{name}.gates').read_text().splitlines()[ix]
  cols,labels,m,k=integer_columns(line);mat=[];used=[]
  for r,s,i,j,pt in labels:
   if i+j<m[pt] or(2*s==r and i+2*j<2*m[pt]-k[r-3]):
    mat.append([jet(c,r,s,i,j)for c in cols]);used.append([r,s,i,j])
  rr,piv=rref(mat,len(cols));expected=[P0,B]if f is None else[mul(P0,add({(0,1):F(1)},scalar(f,-1)))]
  assert len(cols)-len(piv)==len(expected)
  xx=[]
  for pol in expected:
   x=coords(cols,pol)
   assert all(sum(a*b for a,b in zip(row,x))==0 for row in mat)
   xx.append([str(a)for a in x])
  if f is None:
   assert P0.get((0,4))==1 and not B.get((0,4),0)
  else:assert expected[0].get((0,5))==1
  records.append({'profile':name,'gate_index':ix,'rank':len(piv),'columns':len(cols),'kernel_dimension':len(expected),'pivots':piv,'rref_nonzero_rows':[[str(v)for v in row]for row in rr[:len(piv)]],'expected_basis':list(map(encode,expected)),'kernel_coordinates':xx,'linear_cofactor_f':None if f is None else encode(f),'conclusion':'linear completion lies in S5 family; exact kappa4 profile will fail'if f is None else'full monic completion is P0*(X-f(N)), hence reducible'})
 dump(out/'new_exact_rational_kernels.json',records)
 # The one new quartic relaxation is not an actual kappa4=1 profile:
 # specialization at N=4 has a simple root X=4, so m4=1;
 # both P0 and B have no weight<2 term, and dP0/dX is nonzero there.
 assert jet(P0,4,2,0,0)==0 and jet(B,4,2,0,0)==0
 assert jet(P0,4,2,1,0)==jet(B,4,2,1,0)==0
 assert jet(P0,4,2,0,1)!=0 and jet(B,4,2,0,1)==0
 kappacheck={'point':[4,4],'P0_X':str(jet(P0,4,2,0,1)),'m':1,'w':2,'actual_kappa4':0,'excluded_profile_kappa4':1,'valid_for_all_rational_t':True}
 dump(out/'quartic_exact_kappa_mismatch.json',kappacheck)
 # Complete parameter-independent source upper bounds for A_t=P0+tB, t!=0.
 U=((2,2),(1,2),(1,1,1),(1,1,1),(1,1,1,1),(1,1,1,1));WU=(0,2,0,1,0,0);upper=[]
 for ri,r in enumerate(range(3,9)):
  for s in range(r//2+1):
   diag=2*s==r
   if diag:
    if r==4:
     assert jet(P0,r,s,0,1)!=0 and jet(B,r,s,0,1)==0;reason='nonzero local t coefficient independent of parameter'
    elif r==6:
     assert jet(P0,r,s,1,0)==0 and jet(B,r,s,1,0)!=0;reason='local u coefficient is nonzero parameter times Bprime(6)'
    else:
     assert jet(P0,r,s,0,0)!=0 and jet(B,r,s,0,0)==0;reason='nonzero specialization'
    bound=WU[ri]
   else:
    bound=U[ri][s]
    if (r,s)==(5,2):
     assert jet(P0,r,s,1,0)==0 and jet(B,r,s,1,0)!=0;reason='ordinary u derivative is nonzero parameter times Bprime(5)'
    else:
     assert jet(P0,r,s,0,bound)!=0
     assert all(jet(P0,r,s,0,k)==0 for k in range(bound));assert all(jet(B,r,s,0,k)==0 for k in range(5));reason='specialization root multiplicity upper bound'
   upper.append({'r':r,'s':s,'point':[r,s*(r-s)],'bound':bound,'kind':'weighted'if diag else'ordinary','reason':reason})
 dump(out/'S5_uniform_source_upper_bounds.json',{'P0':encode(P0),'B':encode(B),'t_nonzero_required':True,'ordinary_upper':U,'weighted_upper':WU,'all_21_sources':upper,'parameter_not_bounded':True})
 return records

def integer_samples(gd,cases,out):
 rec=[]
 for name,q,d,k in cases:
  text=(gd/f'{name}.32719.minors').read_text().splitlines()
  if not text:continue
  ix,n,val,*ids=map(int,text[0].split());gates=(gd/f'{name}.gates').read_text().splitlines()
  cols,labels,m,ks=integer_columns(gates[ix]);mat=[]
  for j in ids:
   r,s,i,b,pt=labels[j]
   assert i+b<m[pt]or(2*s==r and i+2*b<2*m[pt]-ks[r-3])
   mat.append([jet(f,r,s,i,b)for f in cols])
  assert n==len(ids)==len(cols)
  det,divs=bareiss(mat);assert det and det%32719==14400*val%32719
  rec.append({'profile':name,'gate_index':ix,'size':n,'jet_indices':ids,'exact_determinant':str(det),'exact_division_checks':divs,'mod32719':det%32719})
 dump(out/'exact_integer_minor_samples.json',rec);return len(rec)
