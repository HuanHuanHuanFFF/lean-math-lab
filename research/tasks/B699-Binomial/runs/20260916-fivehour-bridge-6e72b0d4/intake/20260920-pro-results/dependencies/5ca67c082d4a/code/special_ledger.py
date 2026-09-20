"""Discovery ledger for exceptional single-deficit classes with real costs.
All inequalities refer to one and the same vertical state of the same G.
"""
from ledger import states
import sys,json,itertools,time
from pathlib import Path

def ledger_special(middle,free,specials):
 best=-1;recs=[];queries=0
 for h,v,d,p,E in states():
  for x3,x4,x5 in itertools.product(*(range(d[i]+1) for i in range(3))):
   x=x3+x4+x5
   for ys in itertools.product(*(range(d[0]-x3+1) for _ in specials)):
    y=sum(ys)
    if x3+y>d[0]:continue
    kap=[sum(a*s['kappa'][i] for a,s in zip(ys,specials)) for i in range(3)]
    dd=[d[0]-x3-y,(2*d[1]+p[1]-x3-x4-kap[0])//2-x4,d[2]-x5,(2*d[3]+p[3]-x-kap[1])//2,d[4],(2*d[5]+p[5]-kap[2])//2]
    if min(dd)<0:continue
    budget=sum(dd);base=4*x+sum(a*s['q'] for a,s in zip(ys,specials))
    for a in range(E+1):
     for b in range(min(budget//2,(h-base-3*a)//4)+1):
      for c in range(min(budget-2*b,(h-base-3*a-4*b)//middle)+1):
       cost=base+3*a+4*b+middle*c;f=(h-cost)//free;size=a+x+y+b+c+f;queries+=1
       if size>best:best=size;recs=[]
       if size==best:recs.append({'h':h,'v':v,'d':d,'p':p,'E':E,'a':a,'S':[x3,x4,x5],'specials':ys,'B':b,'C':c,'F':f,'size':size,'x_cost':cost+free*f})
 return {'maximum':best,'middle':middle,'free':free,'special_types':specials,'queries':queries,'max_records':recs,'positive_maximum_records':sum(r['a']>0 for r in recs)}
if __name__=='__main__':
 p=Path(__file__).resolve().parents[1];out=[]
 for m,f in [(14,21),(14,25),(15,25)]:
  x=ledger_special(m,f,[{'q':13,'kappa':[2,0,1]}]);out.append(x);print(m,f,x['maximum'],len(x['max_records']),x['positive_maximum_records'],flush=True)
 (p/'evidence/special_ledger_probe.json').write_text(json.dumps(out,sort_keys=True,separators=(',',':'))+'\n')
