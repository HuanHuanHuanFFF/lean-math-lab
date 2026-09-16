"""Sparse exact symbolic verification; no CAS dependency."""
from fractions import Fraction as Q
from math import comb
import json,argparse
from pathlib import Path

# Exponent tuples for n,j,z,L,B,C,D,a,b,lambda,R,F,c,g,N.
V=15
def cn(x):return {(0,)*V:Q(x)} if x else {}
def var(i):
 e=[0]*V;e[i]=1;return {tuple(e):Q(1)}
def add(*ps):
 d={}
 for p in ps:
  for e,c in p.items():d[e]=d.get(e,Q(0))+c
 return {e:c for e,c in d.items() if c}
def mul(p,q):
 d={}
 for e,c in p.items():
  for f,b in q.items():
   k=tuple(x+y for x,y in zip(e,f));d[k]=d.get(k,Q(0))+c*b
 return {e:c for e,c in d.items() if c}
def sc(p,c):return {e:Q(c)*x for e,x in p.items() if c*x}
def neg(p):return sc(p,-1)
def sub(p,q):return add(p,neg(q))
def pw(p,k):
 r=cn(1)
 for _ in range(k):r=mul(r,p)
 return r
def deriv(p,i):
 d={}
 for e,c in p.items():
  if e[i]:
   f=list(e);f[i]-=1;d[tuple(f)]=c*e[i]
 return d
def subst(p,changes):
 ans={}
 for e,c in p.items():
  t=cn(c)
  for i,k in enumerate(e):
   if k:t=mul(t,pw(changes.get(i,var(i)),k))
  ans=add(ans,t)
 return ans

def run():
 n,j,z,L,B,C,D,a,b,lam,R,F,c,g,N=[var(i) for i in range(V)]
 one=cn(1);two=cn(2);k=sub(n,j)
 f6=add(mul(mul(n,mul(sub(n,one),sub(n,two))),pw(z,3)),
        sc(mul(mul(j,mul(sub(n,one),sub(n,two))),pw(z,2)),-3),
        sc(mul(mul(j,mul(sub(j,one),sub(n,two))),z),3),
        neg(mul(j,mul(sub(j,one),sub(j,two)))))
 q=add(mul(mul(n,sub(n,one)),pw(z,2)),sc(mul(mul(j,sub(n,one)),z),-2),mul(j,sub(j,one)))
 results=[]
 def ck(name,left,right):
  d=sub(left,right)
  if d:raise AssertionError(name)
  results.append(name)
 ck('derivative_of_6Phi',deriv(f6,2),sc(mul(sub(n,two),q),3))
 ck('quadratic_discriminant',sub(pw(sc(mul(j,sub(n,one)),-2),2),
    sc(mul(mul(n,sub(n,one)),mul(j,sub(j,one))),4)),sc(mul(j,mul(k,sub(n,one))),4))
 # Homogeneous rational critical equation reduced at n=2.
 crit=add(mul(mul(n,sub(n,one)),pw(a,2)),sc(mul(mul(j,sub(n,one)),mul(a,b)),-2),mul(mul(j,sub(j,one)),pw(b,2)))
 q2=subst(crit,{0:two})
 ck('critical_mod_n_minus_2',q2,add(sc(pw(a,2),2),sc(mul(j,mul(a,b)),-2),mul(mul(j,sub(j,one)),pw(b,2))))
 for r,target in [(0,sc(pw(a,2),2)),(1,sc(mul(a,sub(a,b)),2)),(2,sc(pw(sub(a,b),2),2))]:
  ck('three_residue_'+str(r),subst(q2,{1:cn(r)}),target)
 # h is represented by a here.
 w=sub(sub(sc(j,6),mul(a,sub(n,one))),cn(3))
 eq=add(mul(pw(a,2),mul(n,sub(n,one))),sc(mul(mul(a,j),sub(n,one)),-12),sc(mul(j,sub(j,one)),36))
 ck('complete_square_bottom',sub(pw(w,2),add(mul(mul(a,sub(cn(6),a)),sub(n,one)),cn(9))),eq)
 # Generic critical norm identity: substitute z=(B+t)/(3L), clear powers.
 # t is represented by g; t^2=I=B^2-3LC. Evaluate 27 L^2 Psi.
 I=sub(pw(B,2),sc(mul(L,C),3))
 t=g
 Aexpr=add(pw(add(B,t),3),sc(mul(B,pw(add(B,t),2)),-3),
           sc(mul(mul(L,C),add(B,t)),9),sc(mul(pw(L,2),D),-27))
 # Divide polynomial by t^2-I via exponent folding.
 def red(p):
  out={}
  for ex,co in p.items():
   tt=ex[13];ee=list(ex);ee[13]=tt%2
   term={tuple(ee):co}
   out=add(out,mul(term,pw(I,tt//2)))
  return out
 Qexpr=add(sc(pw(B,3),-2),sc(mul(mul(L,B),C),9),sc(mul(pw(L,2),D),-27))
 ck('critical_values_reduction',red(Aexpr),add(Qexpr,sc(mul(t,I),-2)))
 discr=add(mul(pw(B,2),pw(C,2)),sc(mul(L,pw(C,3)),-4),sc(mul(pw(B,3),D),-4),
           sc(mul(pw(L,2),pw(D,2)),-27),sc(mul(mul(mul(L,B),C),D),18))
 ck('critical_norm_is_old_discriminant',sub(pw(Qexpr,2),sc(pw(I,3),4)),sc(mul(pw(L,2),discr),-27))
 return dict(status='PASS',identities=results,count=len(results),arithmetic='exact sparse Fraction polynomials')
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);args=ap.parse_args();r=run()
 Path(args.out).write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps({'status':r['status'],'identities':r['count']}))
