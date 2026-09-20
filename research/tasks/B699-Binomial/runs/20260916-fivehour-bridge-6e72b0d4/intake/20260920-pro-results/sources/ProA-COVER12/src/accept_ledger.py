"""Independent same-G ledger verifier, using fixed (c,f) and maximal b.
The discovery ledger instead fixes (b,c) and maximizes f.
"""
from pathlib import Path
import json

def allocations():
    off=[(77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39)]
    diag=[0,56,0,41,0,52]
    allstates=[]
    for h in range(153):
        cap=305-2*h
        valid=[]
        for r in range(6):
            valid.append([(v,sum(max(x-v,0) for x in off[r])+(max(diag[r]-v,0)+1)//2)
                          for v in range(cap+1)
                          if sum(max(x-v,0) for x in off[r])+(max(diag[r]-v,0)+1)//2<=h])
        if any(not a for a in valid):continue
        minima=[a[0][0] for a in valid]
        if sum(minima)>cap:continue
        def rec(r,remaining,vs,ls):
            if r==6:
                d=tuple(h-v for v in ls);p=tuple(max(diag[i]-vs[i],0)%2 for i in range(6))
                allstates.append((h,tuple(vs),remaining,d,p));return
            reserve=sum(minima[r+1:])
            for v,L in valid[r]:
                if v+reserve>remaining:break
                rec(r+1,remaining-v,vs+[v],ls+[L])
        rec(0,cap,[],[])
    return allstates

def key(rec):
    return (rec['h'],tuple(rec['v']),rec['a'],rec['x3'],rec['x4'],rec['x5'],rec['b'],rec['c'],rec['f'])

def verify(root:Path,out:Path):
    states=allocations();assert len(states)==2035
    assert len({h for h,*_ in states})==130 and max(s[2] for s in states)==3
    records=json.loads((root/'certificates/ledger_results.json').read_text());receipts=[]
    for record in records:
        mid,free=record['middle'],record['free'];maximum=-1;positive=-1;maximizers=set();queries=0
        for h,v,E,d,p in states:
            for x3 in range(d[0]+1):
             for x4 in range(d[1]+1):
              for x5 in range(d[2]+1):
               x=x3+x4+x5
               raw=[d[0]-x3,(2*d[1]+p[1]-x3-x4-2*x4)//2,d[2]-x5,
                    (2*d[3]+p[3]-x)//2,d[4],d[5]]
               if min(raw)<0:continue
               cap=sum(raw)
               for a in range(E+1):
                budget=h-3*a-4*x
                if budget<0:continue
                for c in range(min(cap,budget//mid)+1):
                 for f in range((budget-mid*c)//free+1):
                  b=min((cap-c)//2,(budget-mid*c-free*f)//4)
                  val=a+x+b+c+f;queries+=1
                  if a:positive=max(positive,val)
                  k=(h,v,a,x3,x4,x5,b,c,f)
                  if val>maximum:maximum=val;maximizers={k}
                  elif val==maximum:maximizers.add(k)
        assert maximum==record['maximum'] and positive==record['maximum_with_positive_excess']
        assert maximizers=={key(r) for r in record['maximizers']}
        assert len(maximizers)==len(record['maximizers'])
        receipts.append({'middle':mid,'free':free,'maximum':maximum,'positive_excess_maximum':positive,
                         'maximizers':len(maximizers),'dual_enumeration_queries':queries})
    assert [r['maximum'] for r in receipts]==[13,13,13,12]
    assert [r['maximizers'] for r in receipts]==[411,28,173,577]
    # Adversarial test: a forged COVER11 assertion contradicts an explicit feasible tuple.
    new=records[-1];w=next(x for x in new['maximizers'] if x['a']>0)
    assert w['count']==12 and w['x_cost']<=w['h']
    diagnostics=json.loads((root/'certificates/next_budget_diagnostics.json').read_text())
    actual={(h,tuple(v)):(E,d,p) for h,v,E,d,p in states}
    for diag in diagnostics:
        mid,free=diag['middle'],diag['free'];r=diag['one_witness']
        assert mid>=11 and free>=18 and diag['maximum']==12
        E,d,p=actual[r['h'],tuple(r['v'])]
        assert E==r['E'] and list(d)==r['d'] and list(p)==r['p']
        a,x3,x4,x5,b,c,f=(r[k] for k in ['a','x3','x4','x5','b','c','f'])
        x=x3+x4+x5
        dp=[d[0]-x3,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5]]
        assert min(a,x3,x4,x5,b,c,f)>=0 and min(dp)>=0 and a<=E
        assert 2*b+c<=sum(dp) and 3*a+4*x+4*b+mid*c+free*f<=r['h']
        assert a+x+b+c+f==12
    # All these fee systems strengthen (11,18), hence max<=12; witnesses prove equality.
    (out/'ledger_receipt.json').write_text(json.dumps({'states':2035,'runs':receipts,'counterexample_to_relaxed_EDGE12':w,'next_budget_feasible_12_witnesses':len(diagnostics)},indent=2))
    print('PASS_DUAL_LEDGER',receipts,'COVER12; EDGE12_NOT_ESTABLISHED',flush=True)
    return receipts
if __name__=='__main__':
    import sys
    verify(Path(__file__).resolve().parents[1],Path(sys.argv[1]))
