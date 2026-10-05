from pathlib import Path
import sys,json,time
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path(__file__).parent;prior=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/b');data=json.loads((prior/'one-step-r-colon.json').read_text());Wr=rs.R.from_dict({tuple(e):rs.QQ(c) for e,c in data['Wr']});F0=rs.R.from_dict({tuple(e)+(0,):rs.QQ(c) for e,c in data['F0']})
c0=lambda f:rs.R.from_dict({(a,b,0):c for (a,b,k),c in f.items() if k==0})
alpha,rem=c0(fs['P5']).div(F0);assert not rem;beta,rem=c0(Wr).div(F0);assert not rem;g=alpha.gcd(beta);A=alpha.exquo(g);B=beta.exquo(g)
Q,rem=(A*Wr-B*fs['P5']).div(r);assert not rem;assert r*Q==A*Wr-B*fs['P5']
print('alpha',rs.stats(alpha),'beta',rs.stats(beta),'gcd',str(g.as_expr()),flush=True)
print('new',rs.stats(Q),'F0_gcd',str(c0(Q).gcd(F0).as_expr()),flush=True)
result={'identity':'r*Q=A*Wr-B*P5','A':[[list(e[:2]),str(c)] for e,c in sorted(A.items())],'B':[[list(e[:2]),str(c)] for e,c in sorted(B.items())],'Q':[[list(e),str(c)] for e,c in sorted(Q.items())],'Q_stats':rs.stats(Q),'F0_gcd_at_r0':str(c0(Q).gcd(F0).as_expr())};(out/'second-r-colon.json').write_text(json.dumps(result,separators=(',',':'))+'\n',encoding='utf-8')
