
import sys, json, time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'baseline'))
import cover, source_model as model

def install_ksat29(remove_double5=False):
    raw=[]
    for x in cover.RAW:
        if x[2]=='free_degree_ge29':
            for idx in (1,3,5):
                c=[0]*6;c[idx]=1
                raw.append((29,tuple(c),'sat29_kappa',(0,)*6,tuple(c)))
            raw.append((30,(0,)*6,'free_degree_ge30',(0,)*6,(0,)*6))
        else:
            raw.append(x)
    if remove_double5:
        raw=[x for x in raw if x[2] != 'double5']
    raw=sorted(set(raw)); kept=[]
    for a in raw:
        if any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept):
            continue
        kept.append(a)
    cover.RAW=raw; cover.ITEMS=kept
    cover.minimum_degree.cache_clear(); cover.raw_minimum.cache_clear()
    return len(raw),len(kept)

def e0_survivors(remove_double5=False):
    install_ksat29(remove_double5)
    out=[]
    for st in model.all_states():
        if st['E']: continue
        rec=cover.state_check(st,9,False)
        if rec['winners']:
            out.append({'state':st,'winner':rec['winners'][0],'winner_count':len(rec['winners'])})
    return out

def positive_survivors(remove_double5=False):
    install_ksat29(remove_double5)
    out=[]
    for st in model.all_states():
        if not st['E']: continue
        cap0=tuple(2*d+p for d,p in zip(st['d'],st['p']))
        active=[t for t in model.types if all(a<=b for a,b in zip(t['cost'],cap0))]
        good=[]
        for A in range(1,min(st['E'],9)+1):
            h0=st['h']-3*A
            found=False
            def visit(index,h,cap,n):
                nonlocal found
                if found:return
                if index==len(active):
                    rem=9-A-n
                    if rem>=0 and cover.minimum_degree(rem,cap)<=h:
                        found=True
                    return
                t=active[index]
                if 9-A-n<0:return
                mx=min([h//t['e'],9-A-n]+[c//v for c,v in zip(cap,t['cost']) if v])
                for k in range(mx+1):
                    visit(index+1,h-k*t['e'],
                          tuple(a-k*b for a,b in zip(cap,t['cost'])),n+k)
                    if found:return
            visit(0,h0,cap0,0)
            if found:good.append(A)
        if good: out.append({'state':st,'A_counts':good})
    return out

def main(dst):
    dst=Path(dst); dst.mkdir(parents=True,exist_ok=False)
    e0=e0_survivors(False); ep=positive_survivors(False)
    e0nd=e0_survivors(True); epnd=positive_survivors(True)
    assert len(e0)==130
    assert len(ep)==2
    assert [x['state']['E'] for x in ep]==[1,1]
    assert len(e0nd)==122
    assert len(epnd)==2
    result={
      'status':'PASS_KSAT29_NINE_FACTOR_LEDGER_DIAGNOSTIC',
      'KSAT29_E0_nine_states':len(e0),
      'KSAT29_positiveE_nine_states':len(ep),
      'positiveE_states':[x['state'] for x in ep],
      'hypothetical_delete_all_double5_E0_states':len(e0nd),
      'hypothetical_delete_all_double5_positiveE_states':len(epnd),
      'COVER8_proved':False
    }
    (dst/'ledger_result.json').write_text(json.dumps(result,indent=2)+'\n')
    (dst/'E0_survivors.json').write_text(json.dumps(e0,indent=2)+'\n')
    (dst/'positiveE_survivors.json').write_text(json.dumps(ep,indent=2)+'\n')
    print(result['status'],result)
if __name__=='__main__':
    main(sys.argv[1])
