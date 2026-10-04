from pathlib import Path
import sys,json,hashlib,math
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path(__file__).parent;prior=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/b');d=json.loads((out/'second-r-colon.json').read_text());d0=json.loads((prior/'one-step-r-colon.json').read_text())
dec2=lambda ts:rs.R.from_dict({tuple(e)+(0,):rs.QQ(c) for e,c in ts});dec3=lambda ts:rs.R.from_dict({tuple(e):rs.QQ(c) for e,c in ts})
Q=dec3(d['Q']);A=dec2(d['A']);B=dec2(d['B']);J=dec2(d0['J']);Aa=dec2(d0['A']);C=dec2(d0['C']);M=108*(u-1)**3*(y-1)**4*Aa*C
U=rs.R.one;powers={}
for name,f in [('u',u),('y',y),('um',u-1),('ym',y-1),('E',u*y-y+1)]:
 k=0
 while True:
  q,rem=Q.div(f)
  if rem:break
  Q=q;U*=f;k+=1
 powers[name]=k
content=0
for c in Q.values():content=math.gcd(content,abs(int(c)))
Q=Q.quo_ground(content);U*=content
assert r*r*U*Q==A*J*fs['V0']+(A*M-r*B)*fs['P5']
F0=dec2(d0['F0']);q0=rs.R.from_dict({(i,j,0):c for (i,j,k),c in Q.items() if k==0});assert max(map(sum,q0.gcd(F0)))==0
enc2=lambda p:[[list(e[:2]),str(c)] for e,c in sorted(p.items())];enc3=lambda p:[[list(e),str(c)] for e,c in sorted(p.items())]
result={'identity':'r^2*U*Q=A*Jcal*V0+(A*M-r*B)*P5','Q':enc3(Q),'Q_stats':rs.stats(Q),'A':enc2(A),'B':enc2(B),'Jcal':enc2(J),'M':enc2(M),'unit_powers':powers,'unit_content':str(content),'F0':enc2(F0),'Q0':enc2(q0),'gcd_Q0_F0':str(q0.gcd(F0).as_expr()),'source_provenance':prov};p=out/'r2-member.json';p.write_text(json.dumps(result,separators=(',',':'))+'\n',encoding='utf-8');print({'stats':rs.stats(Q),'powers':powers,'content':content,'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})

