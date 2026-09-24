"""Same-G exact integer-budget acceptance. No floating point and no old ledger import.
All geometric category interfaces are listed in SOURCE_ADOPTION.md.
"""
from fractions import Fraction as Q
from functools import lru_cache
from pathlib import Path
import json
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
# Coordinates: doubled row3 deficit, row4 (2Delta+kappa), row5 doubled
# deficit, row6 (2Delta+kappa). Charges at rows7/8 are safely discarded here.
SPECIAL=(('B45',4,(0,3,2,0)),('B35',4,(2,1,2,0)),('B34',4,(2,3,0,0)),
         ('B33R',4,(4,1,0,0)),('B33L',4,(4,0,0,1)),
         ('S4',4,(0,3,0,1)),('S3',4,(2,1,0,1)),('S5',4,(0,0,2,1)),
         ('M3',13,(2,0,0,0)))
HMAX=152;TMAX=16

def lower(i,v):return sum(max(a-v,0) for a in OFF[i])+(max(DIAG[i]-v,0)+1)//2

def distributions(n,k):
    if not k:yield ();return
    for a in range(n+1):
        for tail in distributions(n-a,k-1):yield (a,)+tail

def all_states():
    out=[]
    for h in range(HMAX+1):
        minimum=[]
        for i in range(6):
            v=0
            while lower(i,v)>h:v+=1
            assert v==0 or lower(i,v-1)>h
            minimum.append(v)
        residual=305-2*h-sum(minimum)
        if residual<0:continue
        for u in distributions(residual,6):
            v=tuple(a+b for a,b in zip(minimum,u))
            d=tuple(h-lower(i,v[i]) for i in range(6))
            p=tuple(max(DIAG[i]-v[i],0)%2 if DIAG[i] else 0 for i in range(6))
            out.append(dict(h=h,v=v,E=305-2*h-sum(v),d=d,p=p))
    assert len(out)==2035 and sum(s['E']==0 for s in out)==1540
    assert max(sum(s['d']) for s in out if s['E']==0)==TMAX
    return out

def rest_table(types):
    A=[[(0,()) for _ in range(HMAX+1)] for _ in range(TMAX+1)]
    for t in range(TMAX+1):
        for h in range(HMAX+1):
            best=(0,())
            if t and A[t-1][h][0]>best[0]:best=A[t-1][h]
            if h and A[t][h-1][0]>best[0]:best=A[t][h-1]
            for name,c,d in types:
                if h>=c and t>=d:
                    n,w=A[t-d][h-c]
                    if n+1>best[0]:best=(n+1,w+(name,))
            A[t][h]=best
    return A

def direct_rest(h,t,b5=5,c=16,f=25,b3=4):
    """Second implementation: explicit bounded integer multiplicities, no DP."""
    best=0
    for a in range(min(t//3,h//b3)+1):
        for b in range(min((t-3*a)//2,(h-b3*a)//b5)+1):
            for cc in range(min(t-3*a-2*b,(h-b3*a-b5*b)//c)+1):
                ff=(h-b3*a-b5*b-c*cc)//f
                best=max(best,a+b+cc+ff)
    return best

def zero_slack_trace(st):
    """A freshly proved weaker TRACE0, NOT a replay of the unavailable Sept20 TRACE."""
    pts=[]
    for i in range(6):
        if st['d'][i]:continue
        r=i+3;v=st['v'][i];values=[s*(r-s) for s in range(r//2+1)]
        mult=[max(a-v,0) for a in OFF[i]]
        if DIAG[i]:mult.append((max(DIAG[i]-v,0)+1)//2)
        assert sum(mult)==st['h']
        pts.append((r,sum(a*b for a,b in zip(values,mult))))
    if len(pts)<4:return True
    tri=pts[:3]
    for r,value in pts[3:]:
        total=Q(0)
        for x,y in tri:
            term=Q(y)
            for xx,yy in tri:
                if xx!=x:term*=Q(r-xx,x-xx)
            total+=term
        if total!=value:return False
    return True

def optimum(st,A,types=SPECIAL):
    caps=tuple(2*d+p for d,p in zip(st['d'],st['p']))
    tail=caps[4]//2+caps[5]//2
    @lru_cache(None)
    def visit(i,h,c):
        if i==len(types):
            n,w=A[tail+sum(x//2 for x in c)][h]
            return n,tuple((name,1) for name in w)
        name,cost,vec=types[i]
        top=min([h//cost]+[c[j]//v for j,v in enumerate(vec) if v])
        best=(-1,())
        for k in range(top+1):
            n,w=visit(i+1,h-k*cost,tuple(c[j]-k*vec[j] for j in range(4)))
            if n+k>best[0]:best=(n+k,(((name,k),)+w if k else w))
        return best
    return visit(0,st['h'],caps[:4])

def run(out_dir):
    out_dir=Path(out_dir);states=all_states()
    A=rest_table((('B3',4,3),('B5',5,2),('C',16,1),('F',25,0)))
    for t in range(TMAX+1):
        for h in range(HMAX+1):assert A[t][h][0]==direct_rest(h,t)
    records=[];maximum=0;per_state=[]
    for st in states:
        if st['E']:continue
        n,w=optimum(st,A);tr=zero_slack_trace(st)
        per_state.append(dict(**st,maximum=n,trace0=tr))
        if n>maximum:maximum=n;records=[]
        if n==maximum:records.append(dict(**st,maximum=n,witness=w,trace0=tr))
    assert maximum==10 and len(records)==60 and min(x['h'] for x in records)==117
    surviving=[x for x in records if x['trace0']]
    assert len(surviving)==54 and min(x['h'] for x in surviving)==117
    assert all(x['maximum']<=9 for x in per_state if x['h']<=116)
    # Exact obstruction witness, with an explicit row allocation for the generic fees.
    target=dict(h=117,v=(17,14,13,11,8,8),E=0,d=(0,0,5,4,0,2),p=(0,0,0,0,0,0))
    assert target in states and zero_slack_trace(target)
    assert 4*4+2*5+16+3*25==117 and 4+2+1+3==10
    # 4 S5: Delta5=4, kappa6=4. B5_1: Delta5=1,Delta8=1;
    # B5_2: Delta6=2. C: Delta8=1. Exactly fills c=(0,0,10,8,0,4).
    assert (0,0,2*(4+1),2*2+4,0,2*(1+1))==tuple(2*d+p for d,p in zip(target['d'],target['p']))
    probes={}
    for name,b5,fc,no22 in [('no_B22',5,25,True),('B5_min6',6,25,False),('B5_min6_free26',6,26,False),('no_high_double_class',153,25,False)]:
        types=tuple(t for t in SPECIAL if not(no22 and t[0].startswith('B')))
        B=rest_table((('B3',4,3),('B5',b5,2),('C',16,1),('F',fc,0)))
        vals=[];mx=0
        for st in states:
            if st['E'] or not zero_slack_trace(st):continue
            n,w=optimum(st,B,types)
            if n>mx:mx=n;vals=[]
            if n==mx:vals.append(dict(**st,witness=w))
        probes[name]=dict(maximum=mx,min_h=min(x['h'] for x in vals),states=len(vals),witness=vals[0],geometric_hypothesis_proved=False)
    assert all(x['maximum']==10 for x in probes.values())
    result=dict(status='PASS_B22_SAME_G_HEIGHT117',vertical_states=2035,E0_states=1540,maximum=maximum,min_h_for_10=117,states_for_10=60,trace0_states_for_10=54,special_types=SPECIAL,rest_types=[['B3',4,3],['B5',5,2],['C',16,1],['F',25,0]],rest_DP_entries_independently_checked=(TMAX+1)*(HMAX+1),witness=dict(**target,counts=dict(S5=4,B5=2,C=1,F=3)),conditional_probes=probes,maximum_records=records)
    (out_dir/'ledger.json').write_text(json.dumps(result,indent=2)+'\n')
    (out_dir/'all_states.json').write_text(json.dumps(states,indent=2)+'\n')
    (out_dir/'E0_state_bounds.json').write_text(json.dumps(per_state,indent=2)+'\n')
    print(result['status'],'max=10 min_h=117 states=60 TRACE0=54',flush=True)
    return result
if __name__=='__main__':
    import sys
    run(sys.argv[1])
