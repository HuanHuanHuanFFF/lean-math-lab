"""Exact boundary-component diagnostic from the current six-polynomial source."""
from pathlib import Path
import sys,json,time,hashlib
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path(__file__).parent;start=time.monotonic();memory=rs.memory()
def coeff(F,k):return rs.R.from_dict({(a,b,0):c for (a,b,j),c in F.items() if j==k})
a,b=coeff(gs['N'],1),coeff(gs['N'],0)
pa=[rs.R.one];pb=[rs.R.one]
for i in range(1,10):pa.append(pa[-1]*a);pb.append(pb[-1]*(-b))
def at_N_zero(F):
 d=max(e[2] for e in F);value=rs.R.zero
 for k in range(d+1):value+=coeff(F,k)*pb[k]*pa[d-k]
 return d,value
_,res=at_N_zero(gs['K']);res=-res
H2=(y-1)**2-3*u+6*u*y-2*u*y*y+3*u*u-6*u*u*y+2*u*u*y*y
B9,rem=res.div(-48*u*u*y*y*(u-1)**4*H2);assert not rem
assert rs.stats(B9)['terms']==88
print('B9',rs.stats(B9),flush=True)
records=[]
for name,F in fs.items():
 d,value=at_N_zero(F);quot,rem=value.div(B9);q2,r2=value.div(H2)
 item={'name':name,'r_degree':d,'cleared_terms':len(value),'B9_divides':not bool(rem),'H2_divides':not bool(r2),'B9_quotient_terms':len(quot),'B9_quotient_total_degree':max(map(sum,quot)) if quot else -1}
 if not rem:
  path=out/('Nzero-'+name+'-quotient.json');data={'identity':'N1^d*F(-N0/N1)=B9*quotient','F':name,'d':d,'quotient':[[list(e[:2]),str(c)] for e,c in sorted(quot.items())]};path.write_text(json.dumps(data,separators=(',',':'))+'\n',encoding='utf-8');item['quotient_sha256']=hashlib.sha256(path.read_bytes()).hexdigest();item['quotient_bytes']=path.stat().st_size
 records.append(item);print(item,flush=True)
base={'B9':[[list(e[:2]),str(c)] for e,c in sorted(B9.items())],'N1':[[list(e[:2]),str(c)] for e,c in sorted(a.items())],'N0':[[list(e[:2]),str(c)] for e,c in sorted(b.items())],'H2':[[list(e[:2]),str(c)] for e,c in sorted(H2.items())]}
import sympy as s
U,Y=s.symbols('u y');bb=s.Poly(B9.as_expr().subs(Y,2),U);nn=s.Poly((a*b*u*(u-1)*(u*y-y+1)).as_expr().subs(Y,2),U);gg=s.gcd(bb,nn);assert gg.degree()==0
base['y2_nonempty_chart_check']={'B9_degree':bb.degree(),'B9_coefficients':[str(bb.nth(i)) for i in range(bb.degree()+1)],'bad_factor_gcd_degree':gg.degree()}
(out/'Nzero-component.json').write_text(json.dumps({'source_provenance':prov,'resource':memory,'polynomials':base,'identities':records,'elapsed_seconds':time.monotonic()-start},indent=2)+'\n',encoding='utf-8')
