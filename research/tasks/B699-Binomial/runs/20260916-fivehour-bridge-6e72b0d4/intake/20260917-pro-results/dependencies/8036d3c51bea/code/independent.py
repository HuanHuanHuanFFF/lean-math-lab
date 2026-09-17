"""Second arithmetic path: original numerators and explicit finite-degree grids.
Does not import kernel.py, algebra.py, or verify_rows.py.
"""
import json,sys,itertools
from pathlib import Path
from math import gcd
root=Path(__file__).resolve().parents[1];out=Path(sys.argv[1]);out.mkdir(parents=True,exist_ok=True)
records=json.loads((root/'outputs/selected_first_window.json').read_text())
for t in records:
 T,A,B,X,u,w=[t[k] for k in ['T','A','B','X','u','w']]
 n=T*(A*X+B);z=T*(u*X+w)
 assert 3*z*(z-1)%(n-1)==0
 for zz,uu in [(z,u),(n-z,A-u)]:
  YY=A*zz-uu*(n-1)
  if YY<0:YY=A-YY;uu=A-uu
  delta=(YY-uu)//T
  q=3*YY*(YY-A)//(n-1)
  rr=uu*(A-uu)
  h=(3*rr)//T
  assert q==3*rr%T and 0<q<T and 3*rr-q==T*h
  # Full unreduced cubic minus an exact multiple, not the R* formula.
  numerator=6*(YY+uu)*(YY+uu-A)*(YY+uu-2*A)
  rem=numerator-(2*YY+6*uu-4*A)*q*(n-2)
  assert rem<0 and rem%T==0 and 0<(-rem)//T<n-2 and gcd(T,n-2)==1
  assert numerator%(n-2)!=0
# Coefficient bounds: (A,u,y)-degree at most 3, q-degree at most 1.
grid=0
for A,u,y,q in itertools.product(range(4),range(4),range(4),range(2)):
 r=u*(A-u)
 left=6*(y+u)*(y+u-A)*(y+u-2*A)
 right=(2*y+6*u-4*A)*(3*y*(y-A)-q)+6*r*(2*A-u-3*y)+2*q*(y+3*u-2*A)
 assert left==right;grid+=1
# Substitution identity degree bounds: T<=2,A<=3,u<=3,delta<=1,h<=1.
for T,A,u,d,h in itertools.product(range(3),range(4),range(4),range(2),range(2)):
 r=u*(A-u);y=u+T*d;q=3*r-T*h
 R=6*r*(2*A-u-3*y)+2*q*(y+3*u-2*A)
 assert R==-T*(12*r*d+2*h*(T*d+4*u-2*A));grid+=1
for A,u in itertools.product(range(4),repeat=2):
 assert 4*A**3-27*u*(A-u)**2==(A-3*u)**2*(4*A-3*u);grid+=1

def carries(n,j,p):
 a=j;b=n-j;c=0;total=0
 while a or b or c:
  c=(a%p+b%p+c)//p;total+=c;a//=p;b//=p
 return total
expected=json.loads((out/'rows.json').read_text())['row_samples_complete_within_no_carry_digit_ranges'];nc_total=0
for R in expected:
 p,f,A,B,e,n=[R[k] for k in ['P','f','A','B','e','n']];T=p**f;X=p**e
 count=0
 # Independent enumeration: all head/tail values, then arithmetic carry test.
 for u in range(A+1):
  for w in range(B+1):
   j=T*(u*X+w)
   if 4<=j<=n//2 and carries(n,j,p)==0:
    assert (3*j*(j-1))%(n-1)!=0 or (6*j*(j-1)*(j-2))%(n-2)!=0
    count+=1
 assert count==R['complete_no_carry_j_count'];nc_total+=count
for j in range(4,29):
 c=carries(56,j,3)
 # Direct product valuation, unlike factorial floor sums.
 z=1
 from math import comb
 z=comb(56,j);v=0
 while z%3==0:z//=3;v+=1
 assert c==v
res={'nonempty_W1_records_reconstructed_both_sides':2*len(records),'complete_identity_grid_points':grid,
     'separate_digit_allocation_enumeration':nc_total,'implementation_independence':'No core imports; not independent authorship or Lean.'}
(out/'independent.json').write_text(json.dumps(res,sort_keys=True,indent=2)+'\n')
print('PASS second arithmetic path',grid,'complete identity grid points')
