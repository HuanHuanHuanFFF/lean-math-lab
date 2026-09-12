from pathlib import Path
from fractions import Fraction
import math,json,hashlib
from datetime import datetime,timezone
repo=Path.cwd();rr=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc');run=repo/rr
src=repo/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery/input/i13_cuts.json'
rows=json.loads(src.read_text())['cuts'];selected=[1,2,3,4,6,8,9,10]
out=run/'experiments/huan-i13-fixed-graph-asymptotic-probe-5e2d13bb';out.mkdir(exist_ok=True)
results=[]
for idx in selected:
 row=rows[idx];p,q,k,l,a,b,D,c,d=[row[x] for x in ['p','q','k0','l0','a','b','D0','c','d']]
 P=p**k;Q=q**l;r=c-d;z=D/(a*P);t=d/c
 assert a*P-b*Q==D
 sd=math.sqrt(z*z+4*t*t*(1-z))
 xq=2*(1-t)/(2-z+sd);xe=2*t/(2*t+z+sd)
 logBeta=(c+d)*math.log(c+d)-r*math.log(r)-2*d*math.log(d)
 logQ=logBeta+r*math.log(xq)+d*math.log(1-xq)+d*math.log1p(-(1-z)*xq)
 logE=logBeta+d*math.log(xe)+d*math.log(1-xe)+r*math.log1p(-z*xe)
 v=r/2
 logR=(d+v)*math.log(d+v)+v*math.log(v)-d*math.log(d)-r*math.log(r)
 logAE=d*math.log(P)+c*math.log(Q)+logR-r*math.log(a)-2*d*math.log(D)-logE
 logAQ=r*math.log(P)+logR-d*math.log(a)-c*math.log(b)-logQ
 beta=min((1000-row['wp'])/(1000*c*math.log(P)),(1000-row['wq'])/(1000*c*math.log(Q)))
 gamma=beta*logAE-1
 results.append({'source_index':idx,'pair':[p,q],'cd':[c,d],'original_weights':[row['wp'],row['wq']],'logR':logR,'logAE':logAE,'logAQ':logAQ,'capacity_times_E_rate_minus_one':gamma,'status':'floating exploratory indication only; exact sign and factorial asymptotic proof pending'})
record={'utc':datetime.now(timezone.utc).isoformat(),'owner':'primary /root','source':src.relative_to(repo).as_posix(),'source_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),'scope':'Exactly8 already-selected seeds,originalweights,no threshold/seed optimization','formula':'R asymptotic for rationalDivisor(d*m,(c-d)*m+delta-1); AE=P^d*Q^c*R/(a^(c-d)*D0^(2*d)*Ebase), AQ=P^(c-d)*R/(a^d*b^c*Qbase); beta=min((1-wp/1000)/(c log P),(1-wq/1000)/(c log Q))','results':results,'boundary':'Float probe flags which fixed edges need exact feasibility review. No original component edge or impossibility theorem, no new Lean acceptance.'}
(out/'probe.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps([{'pair':r['pair'],'gamma':round(r['capacity_times_E_rate_minus_one'],10),'logAQ':round(r['logAQ'],8)} for r in results]))

