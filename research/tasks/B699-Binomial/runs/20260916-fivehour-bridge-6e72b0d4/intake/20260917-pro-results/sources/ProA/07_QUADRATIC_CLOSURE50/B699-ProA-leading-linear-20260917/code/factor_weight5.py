import sympy as s,json,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1];N,X=s.symbols('N X')
d=json.loads((ROOT/'evidence/weight5_first_window.json').read_text());bs=d['basis'];out=[];irr=[];st=time.time()
for i,r in enumerate(d['candidates']):
 f=sum(c*N**a*X**b for c,(a,b) in zip(r['vector'],bs))
 co,fac=s.factor_list(f,N,X)
 rec={'vector':r['vector'],'factors':[[[[int(a),int(b),int(c)] for (a,b),c in s.Poly(g,N,X).terms()],int(e)] for g,e in fac],'scalar':int(co)}
 out.append(rec)
 if len(fac)==1 and fac[0][1]==1:irr.append(rec)
 if i%250==0:print(i,'irreducible',len(irr),'sec',round(time.time()-st,2),flush=True)
(ROOT/'evidence/weight5_factors.json').write_text(json.dumps({'factored':out,'irreducible':irr,'seconds':time.time()-st},indent=2))
print('DONE',len(out),len(irr),time.time()-st)
for r in irr[:15]:print(sum(c*N**a*X**b for c,(a,b) in zip(r['vector'],bs)))
