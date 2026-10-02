from pathlib import Path
import sympy as sp,json,hashlib,csv,shutil
root=Path(__file__).resolve().parents[1]
N,X,u,t,l=sp.symbols('N X u t lam')
P0=sp.prod(X-a*N+a*a for a in range(4));W=sp.prod(N-r for r in range(3,9));B=(N-3)*(N-4)*W
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]]
DIAG=[0,56,0,41,0,52];UOFF=[[2,2],[1,2],[1,1,1],[1,1,1],[1,1,1,1],[1,1,1,1]];UD=[0,2,0,1,0,0]
v=[12,10,9,8,6,6];h=127;out=[];Qrows=[];caps=[]
poly=sp.Poly(sp.expand(P0+l*B),N,X)
for ri,r in enumerate(range(3,9)):
 row=[]
 caps.append(2*h-2*sum(max(z-v[ri],0) for z in OFF[ri])-max(DIAG[ri]-v[ri],0))
 for s in range(r//2+1):
  central=2*s==r;x=s*(r-s);shear=s if central else 0;wt=2 if central else 1
  bound=UD[ri] if central else UOFF[ri][s]
  local=sp.Poly(sp.expand(poly.as_expr().subs({N:r+u,X:x+shear*u+t},simultaneous=True)),u,t)
  choices=[]
  for (a,b),c in local.terms():
   if a+wt*b<=bound:
    c=sp.Poly(c,l);terms=c.terms()
    if len(terms)==1 and terms[0][0][0] in [0,1] and terms[0][1]!=0:choices.append((a+wt*b,a,b,c.as_expr()))
  assert choices;weight,a,b,c=min(choices,key=lambda z:z[:3])
  # Second coefficient calculation directly from global monomials (exact Hasse formula).
  direct=0
  for (A,Z),cc in poly.terms():
   for k in range(min(a,Z-b)+1):
    if b<=Z and a-k<=A:
     direct+=cc*sp.binomial(Z,b)*sp.binomial(Z-b,k)*x**(Z-b-k)*shear**k*sp.binomial(A,a-k)*r**(A-a+k)
  assert sp.expand(direct-c)==0
  low=max((DIAG[ri] if central else OFF[ri][s])-v[ri],0)-bound
  low=max(low,0);row.append(low)
  out.append({'r':r,'s':s,'weight_t':wt,'S5_upper_order':bound,'nonzero_coefficient':[a,b,str(c)],'Q_lower_order':low,'dual_calculation_equal':True})
 Qrows.append(row)
assert caps==[0,0,6,7,4,6]
rec={'state':1825,'h':h,'v':v,'capacity':caps,'P0':str(sp.expand(P0)),'B':str(sp.expand(B)),'points':out,'Q_lower_rows':Qrows,'all_nonzero_rational_parameters':True}
(root/'certificates/S5_source_bounds.json').write_text(json.dumps(rec,indent=2)+'\n')
# Restore known frontier by explicitly tagged prior-delivery deletions, not by inventing a 27 file.
prev=[1794,2017,1816,1819,1939,2007,1814]
rows=list(csv.DictReader((root/'sources/frontier34.tsv').open(),delimiter='\t'))
f27=[r for r in rows if int(r['idx']) not in prev];f26=[r for r in f27 if int(r['idx'])!=1825]
assert len(rows)==34 and len(f27)==27 and len(f26)==26
assert min(int(r['h']) for r in f27)==127 and min(int(r['h']) for r in f26)==133
for name,a in [('frontier27_reconstructed',f27),('frontier26',f26)]:
 with (root/'certificates'/f'{name}.tsv').open('w') as f:
  wr=csv.DictWriter(f,fieldnames=list(rows[0]),delimiter='\t',lineterminator='\n');wr.writeheader();wr.writerows(a)
fr={'raw_frontier34_sha256':hashlib.sha256((root/'sources/frontier34.tsv').read_bytes()).hexdigest(),'adopted_prior_deletions':prev,'new_deletions':[1825],'remaining':len(f26),'h_min':133,'V_max':39,'unique_lowest':1874,'reconstruction_is_not_prior_zip_byte_verification':True}
(root/'certificates/frontier_reconstruction.json').write_text(json.dumps(fr,indent=2)+'\n')
print('S5 bounds checked; state capacity',caps,'Q lower rows',Qrows);print(fr)
