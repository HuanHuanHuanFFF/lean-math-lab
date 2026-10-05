from pathlib import Path
import sympy as sp,json
R=Path(__file__).resolve().parents[1]
N,X,u,t=sp.symbols('N X u t');rec=json.loads((R/'certificates/Fstar_recovery_1.json').read_text());H=sp.sympify(rec['H'],locals={'N':N,'X':X})
assert rec['parameter_count']==0
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]];DIAG=[0,56,0,41,0,52];v=[9,8,7,6,4,5];h=133
rows=[];info=[];source=[]
for k,r in enumerate(range(3,9)):
 row=[]
 for s in range(r//2+1):
  centre=2*s==r;wt=2 if centre else 1;sh=s if centre else 0
  local=sp.Poly(sp.expand(H.subs({N:r+u,X:s*(r-s)+sh*u+t},simultaneous=True)),u,t)
  w=min(a+wt*b for a,b in local.monoms());leading=[(a,b,str(c)) for (a,b),c in local.terms() if a+wt*b==w]
  lower=max(0,(DIAG[k] if centre else OFF[k][s])-v[k]-w)
  info.append({'r':r,'s':s,'weight_t':wt,'Fstar_order':w,'leading_terms':leading,'Q_order':lower});row.append(lower);source.append([r,s,wt,lower])
 rows.append(row)
for p in [257,263]:
 for mode in [0,1]:
  name=f's1874_Fstarquot_p{p}_m{mode}';(R/'certificates'/f'{name}.input').write_text(f'129 258 {p} {mode} 21\n'+''.join(' '.join(map(str,z))+'\n' for z in source))
rec={'state':1874,'Fstar_H':str(H),'e_Q':129,'D_Q':258,'points':info,'Q_lower_rows':rows}
(R/'certificates/Fstar_source_bounds.json').write_text(json.dumps(rec,indent=2)+'\n')
print('Fstar orders',[x['Fstar_order'] for x in info]);print('Q lower',rows)
P0=sp.prod(X-a*N+a*a for a in range(4));W=sp.prod(N-r for r in range(3,9));print('Fstar - P0 / W = ',sp.cancel((H-P0)/W))
