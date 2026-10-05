"""Exact Q recovery for a rank-deficient geometry gate; no parameter sampling."""
from pathlib import Path
from math import comb
from functools import lru_cache
import sympy as sp,json,sys,time
R=Path(__file__).resolve().parents[1]
N,X=sp.symbols('N X')
@lru_cache(None)
def jet(A,B,r,x,shear,i,j):
 if j>B:return 0
 return sum(comb(B,j)*comb(B-j,k)*x**(B-j-k)*shear**k*comb(A,i-k)*r**(A-i+k) for k in range(min(i,B-j)+1) if i-k<=A)
def recover(path:Path,line:int):
 v=list(map(int,path.read_text().splitlines()[line].split()));q=v[0];ds,ks,ls,bs,ms=v[1:7],v[7:13],v[13:19],v[19:25],v[25:]
 W=sp.Poly(sp.prod(N-r for r in range(3,9)),N); H0=0;pt=0
 for r in range(3,9):
  f=1
  for s in range(r//2+1):f*=(X-s*(r-s))**ms[pt];pt+=1
  if ds[r-3]==1:f*=X-sp.Rational(ls[r-3],120)
  elif ds[r-3]==2:f*=X**2-sp.Rational(ls[r-3],120)*X+sp.Rational(bs[r-3],120)
  H0+=sp.expand(f)*sp.prod((N-t)/sp.Integer(r-t) for t in range(3,9) if t!=r)
 H0=sp.Poly(sp.expand(H0),N,X);assert max(a+2*b for a,b in H0.monoms())<=2*q
 mons=[(a,b) for b in range(q-2) for a in range(2*q-5-2*b)]; rows=[];meta=[];pt=0
 for r in range(3,9):
  for s in range(r//2+1):
   centre=2*s==r;m=ms[pt];shear=s if centre else 0;x=s*(r-s)
   for j in range(m):
    for i in range(1,max(m-j,2*m-2*j-ks[r-3]) if centre else m-j):
     row=[sum(int(c)*jet(a+d,b,r,x,shear,i,j) for (d,),c in W.terms()) for a,b in mons]
     row.append(sum(int(14400*c)*jet(a,b,r,x,shear,i,j) for (a,b),c in H0.terms()))
     rows.append(row);meta.append([r,s,i,j])
   pt+=1
 # independent modular row selection; then verify exact nullspace on EVERY row
 p=32749;basis={};selected=[]
 for ri,row in enumerate(rows):
  z=[x%p for x in row]
  for k in range(len(z)):
   if not z[k]:continue
   if k not in basis:
    inv=pow(z[k],-1,p);basis[k]=[t*inv%p for t in z];selected.append(ri);break
   f=z[k];z=[(a-f*b)%p for a,b in zip(z,basis[k])]
 small=sp.Matrix([rows[i] for i in selected]); null=small.nullspace();M=sp.Matrix(rows)
 assert all(M*b==sp.zeros(M.rows,1) for b in null)
 rec={'q':q,'gate_line':line,'source_gate':str(path.relative_to(R)),'matrix_rows':M.rows,'matrix_columns':M.cols,'rank_Q':len(selected),'nullity_Q':len(null),'independent_rows':selected,'full_nullspace_checked':True}
 if not any(b[-1] for b in null):rec['affine_consistent']=False;return rec,None
 rec['affine_consistent']=True;z=next(b for b in null if b[-1]);part=z/z[-1];free=[b-b[-1]*part for b in null if b!=z]
 pars=sp.symbols('a0:'+str(len(free)));vec=part+sum((a*b for a,b in zip(pars,free)),sp.zeros(M.cols,1))
 H=sp.Poly(sp.expand(H0.as_expr()+W.as_expr()*sum(z*N**a*X**b for z,(a,b) in zip(vec,mons))/14400),N,X)
 assert M*vec==sp.zeros(M.rows,1);f=sp.factor_list(H.as_expr());rec.update({'parameter_count':len(pars),'parameters':[str(x) for x in pars],'H':str(H.as_expr()),'factorization':str(sp.factor(H.as_expr())),'factor_list':[[str(x),int(k)] for x,k in f[1]],'R_coefficients_scaled':[str(x) for x in vec[:-1]],'coefficients':[[a,b,str(c)] for (a,b),c in H.terms()]})
 degs=[];uniform=True
 for f0,k in f[1]:
  pp=sp.Poly(f0,X);degs.extend([pp.degree()]*k)
  if pp.degree()<1 or sp.expand(pp.LC()).free_symbols:uniform=False
 rec['uniform_nonconstant_factors']=bool(uniform and len(degs)>=2);rec['factor_degrees_X']=degs
 return rec,H.as_expr()
if __name__=='__main__':
 path=Path(sys.argv[1]);line=int(sys.argv[2]);out=Path(sys.argv[3]);t=time.perf_counter();rec,H=recover(path,line);out.write_text(json.dumps(rec,indent=2)+'\n');print('q',rec['q'],'line',line,'rank',rec['rank_Q'],'nullity',rec['nullity_Q'],'factors',rec.get('factor_degrees_X'), 'uniform_reducible',rec.get('uniform_nonconstant_factors'),'seconds',time.perf_counter()-t);print(rec.get('factorization','inconsistent')[:2500])
