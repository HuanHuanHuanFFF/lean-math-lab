"""Refine seven-factor positive-excess relaxation by adopted ODD-SAT3-5.
Only epsilon=1, q<=5, zero source cost is excluded. No E=0 assumption.
"""
from resource_model import *

def refine():
    start=time.monotonic();states=all_states();raw,sigs=signatures()
    positive=[]
    # epsilon=1: q>=6 at zero cost, or q>=3 at a positive even-row cost,
    # or q>=3 with cost at least 2 on an odd row. These are safe proxies.
    positive.append((6,1,(0,)*6))
    for r in range(6):
        c=[0]*6;c[r]=1 if r%2 else 2;positive.append((3,1,tuple(c)))
    # epsilon>=2: retained without new restrictions, including zero cost.
    for ep in (2,3):positive.append((3,ep,(0,)*6))
    @lru_cache(None)
    def best(n,cap):
        if n==0:return 0
        if time.monotonic()-start>90:raise RuntimeError('checkpoint, not proof')
        return min((s[0]+best(n-1,tuple(y-x for x,y in zip(s[1:],cap))) for s in sigs if all(x<=y for x,y in zip(s[1:],cap))),default=10**6)
    @lru_cache(None)
    def solve(n,excess,cap):
        # exact number n of selected factors; unused budget allowed
        if n==0:return (0,())
        vals=[(best(n,cap),())]
        for q,ep,c in positive:
            if ep<=excess and all(x<=y for x,y in zip(c,cap)):
                z,w=solve(n-1,excess-ep,tuple(y-x for x,y in zip(c,cap)))
                vals.append((q+z,((q,ep,c),)+w))
        return min(vals,key=lambda t:(t[0],len(t[1]),t[1]))
    survivors=[];closed=[];bounds=[]
    for s in sorted(states,key=lambda x:(-x['E'],x['idx'])):
        if s['E']==0:continue
        d,w=solve(7,s['E'],s['cap'])
        if d<=s['h']:
            survivors.append(dict(**s,min_degree=d,positive_proxy_witness=w))
            if s['E']==1:
                bounds.append(dict(idx=s['idx'],positive_q_upper=s['h']-best(6,s['cap']),balanced_seven_min=best(7,s['cap'])))
        else:closed.append(dict(idx=s['idx'],h=s['h'],E=s['E'],min_degree=d))
    target=next(s for s in states if s['idx']==1970)
    c=target['cap'];tests=[]
    for r in range(6):
        if c[r]:
            cc=list(c);cc[r]-=1
            tests.append(dict(row=r+3,min_five_balanced=best(5,tuple(cc)),plus_two_cubics=best(5,tuple(cc))+6))
    return dict(scope='conditional on global649 and ODD-SAT3-5; complete positive-E row-budget relaxation',source_odd_sha256='1318319ffd765a2e8f637afb0e536db4d45e9c0bda2cab130fe7403a3412091e',survivors_by_E=dict(sorted(Counter(s['E'] for s in survivors).items())),survivors=survivors,closed=closed,E2_unique_state=target,E2_positive_cost_tests=tests,E1_positive_degree_bounds=bounds,seconds=round(time.monotonic()-start,3),balanced_cache=best.cache_info()._asdict(),mixed_cache=solve.cache_info()._asdict())
if __name__=='__main__':
    d=refine();Path(sys.argv[1]).write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in d.items() if k not in ('survivors','closed','E1_positive_degree_bounds')},ensure_ascii=False))
    print('q bounds',min(x['positive_q_upper'] for x in d['E1_positive_degree_bounds']),max(x['positive_q_upper'] for x in d['E1_positive_degree_bounds']))
