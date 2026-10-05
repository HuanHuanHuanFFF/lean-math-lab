from pathlib import Path
import sys,json,hashlib,sympy as s
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path(__file__).parent;d=json.loads((out/'r2-member.json').read_text());dec2=lambda ts:rs.R.from_dict({tuple(e)+(0,):rs.QQ(c) for e,c in ts});dec3=lambda ts:rs.R.from_dict({tuple(e):rs.QQ(c) for e,c in ts})
Z=dec3(d['Q']);J=dec2(d['Jcal']);M=dec2(d['M']);B1=dec2(d['B']).quo_ground(9);assert dec2(d['A'])==-9*J;assert all(c.denominator==1 for c in B1.values());assert r*r*u*u*y*y*Z==-J*J*fs['V0']-(J*M+r*B1)*fs['P5']
enc2=lambda p:[[list(e[:2]),str(c)] for e,c in sorted(p.items())]
cert={'identity':'r^2*u^2*y^2*Z=-Jcal^2*V0-(Jcal*M+r*B1)*P5','Z':d['Q'],'Jcal':d['Jcal'],'M':d['M'],'B1':enc2(B1),'Z_stats':rs.stats(Z),'source_provenance':prov,'F0':d['F0'],'Z0':d['Q0']};p=out/'r2-compact-certificate.json';p.write_text(json.dumps(cert,separators=(',',':'))+'\n',encoding='utf-8')
prior=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/b');wd=json.loads((prior/'one-step-N-colon.json').read_text());W=dec3(wd['W']);T=s.symbols('t');q=s.Poly(T*T+1,T,domain=s.QQ)
def at0(F):
 vals={}
 for (a,b,c),v in F.items():
  if c==0:vals[a]=vals.get(a,0)+int(v)*2**b
 return s.Poly.from_dict({(a,):v for a,v in vals.items()},T,domain=s.QQ).rem(q)
vs={n:at0(F) for n,F in (fs|gs|{'W':W,'Z':Z}).items()};assert all(vs[n].is_zero for n in list(fs)+['W']);assert not vs['Z'].is_zero
invs={n:s.invert(vs[n],q) for n in ['N','K','D','Z']}
for n,v in invs.items():assert (v*vs[n]).rem(q)==1
enc=lambda p:[str(p.nth(i)) for i in range(max(0,p.degree())+1)]
fiber={'q':['1','0','1'],'u':'t','y':2,'r':0,'values':{n:enc(v) for n,v in vs.items()},'inverses':{n:enc(v) for n,v in invs.items()},'claim':'Exact points of (J_new,W) with Z invertible; these are r=0 boundary points and are not legal.'};fp=out/'r0-removal-fiber.json';fp.write_text(json.dumps(fiber,indent=2)+'\n',encoding='utf-8')
print({'compact_bytes':p.stat().st_size,'compact_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'r0_fiber_bytes':fp.stat().st_size,'r0_fiber_sha256':hashlib.sha256(fp.read_bytes()).hexdigest(),'Z_at_i_y2_r0':enc(vs['Z'])})
