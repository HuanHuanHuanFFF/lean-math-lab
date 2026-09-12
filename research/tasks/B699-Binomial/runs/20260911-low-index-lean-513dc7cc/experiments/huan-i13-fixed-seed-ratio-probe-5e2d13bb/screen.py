from pathlib import Path
from math import sqrt, log, gcd
from fractions import Fraction as F
import json,hashlib,time
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
assert OUT==RUN/'experiments/huan-i13-fixed-seed-ratio-probe-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
src=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery/input/i13_cuts.json'
assert hashlib.sha256(src.read_bytes()).hexdigest()=='195d21db772a0637f7514cb920de8b66c029cb54f2347ef50191d69eb675efe1'
rows=json.loads(src.read_text())['cuts'];selected=[2,3,4,9,10]
grid=sorted([(c,d)for c in range(2,33)for d in range(1,c)if gcd(c,d)==1],key=lambda x:(sum(x),x[0],x[1]))
def screen(row,c,d):
 p,q,k,l,a,b,Ds=[row[x]for x in ['p','q','k0','l0','a','b','D0']];P=p**k;Q=q**l
 z=Ds/(a*P);t=d/c;r=c-d
 S=sqrt(z*z+4*t*t*(1-z));xq=2*(1-t)/(2-z+S);xe=2*t/(2*t+z+S)
 lb=(c+d)*log(c+d)-2*d*log(d)-r*log(r)
 lqb=lb+r*log(xq)+d*log(1-xq)+d*log(1-(1-z)*xq)
 leb=lb+d*log(xe)+d*log(1-xe)+r*log(1-z*xe)
 gam=lb/2-c*log(2)
 aq=r*log(P)+gam-d*log(a)-c*log(b)-lqb
 T=d*log(P)+c*log(Q)+gam-r*log(a)-2*d*log(Ds)-leb
 kap=min((1000-row['wp'])/(1000*c*log(P)),(1000-row['wq'])/(1000*c*log(Q)))
 return {'c':c,'d':d,'cost':c+d,'logAQ':aq,'slack':kap*T-1,'gamma':gam,'screen_pass':aq>0 and kap*T>1}
results=[]
for idx in selected:
 row=rows[idx];P=row['p']**row['k0'];z=F(row['D0'],row['a']*P)
 vals=[screen(row,c,d) for c,d in grid if z<F(d,c)]
 good=[x for x in vals if x['screen_pass']]
 results.append({'source_index':idx,'original_parameters':row,'legal_count':len(vals),'screen_positive_count':len(good),'lowest_cost_screen':good[0] if good else None,'best_slack_screen':max(good,key=lambda x:x['slack'])if good else None,'grid':vals})
assert next(x for r in results if r['source_index']==9 for x in r['grid'] if(x['c'],x['d'])==(11,7))['screen_pass']
record={'status':'FLOAT_SCREEN_ONLY_NO_ACCEPTANCE','grid_bound_c':32,'coprime_pairs_before_z_filter':len(grid),'selected_indices':selected,'rows':results,'original_height_unchanged':[8192,8191],'note':'Every reported positive and all lower-cost configurations will be exactly interval checked; floats do not prove signs.'}
(OUT/'screen.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps([{k:v for k,v in r.items() if k!='grid'}for r in results],ensure_ascii=False,indent=2))
