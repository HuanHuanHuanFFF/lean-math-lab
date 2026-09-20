#!/usr/bin/env python3
"""Independent SAME-G receiver: exact root multisets and Vandermonde minors.
No discovery imports. Rebuild source data, enumerate L before S and C before B.
Trace applies only when E=0; all unknown row-3 missing roots remain unconstrained.
"""
from __future__ import annotations
import argparse,json,math,time
from itertools import combinations,product
from functools import lru_cache
from pathlib import Path
from accept_core import need,save,ordinary_jet,tangent_jet
from accept_ledger import source_states
ROOT=Path(__file__).resolve().parents[1]
SOURCES,BASELINES,STATES=source_states()
STATE_LOOKUP={(s['h'],tuple(s['v'])):s for s in STATES}

def rkey(r):
    return tuple(tuple(r[k]) if isinstance(r[k],(list,tuple)) else r[k] for k in ['h','v','d','p','E','a','S','specials','B','C','F','size','x_cost'])

def remaining(s,S,ell):
    d,p=s['d'],s['p'];x3,x4,x5=S;x=x3+x4+x5
    return [d[0]-x3-ell,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5]]

def determinant4(points):
    """Integer 4x4 determinant of columns 1,r,r^2,T, via cofactors."""
    need(len(points)==4 and len({r for r,t in points})==4,'four distinct trace rows required')
    z=0
    for i,(r,t) in enumerate(points):
        others=[x for k,(x,y) in enumerate(points) if k!=i]
        v=math.prod(others[b]-others[a] for a in range(3) for b in range(a+1,3))
        z+=(-1)**(i+3)*t*v
    return z

def fixed_rows(s,S,ell):
    need(s['E']==0,'monic trace requires zero total excess')
    U=remaining(s,S,ell);need(min(U)>=0,'negative residual capacity')
    x3,x4,x5=S;x=x3+x4+x5
    n=[x3+ell,x4,x5,0,0,0];K=[0,x3+x4,0,x,0,0];out=[]
    for i,src in enumerate(SOURCES):
        r=src['r']
        if U[i]!=0 or (r==3 and n[i]>0):continue
        values=[j*(r-j) for j in range(r//2+1)]
        m=[max(a-s['v'][i],0) for a in src['off']]
        B=max(src['diag']-s['v'][i],0)
        if src['diag']:m.append((B+1)//2)
        extra=s['d'][i]-n[i]
        if src['diag']:
            mandatory=(B+K[i]+1)//2-(B+1)//2
            need(extra==mandatory,'exhausted tangent budget must fix all ordinary extras')
            m[-1]+=extra
        else:need(extra==0,'odd exhausted row has no extra ordinary roots')
        ordinary=m[:]
        collision=3 if r==4 else 6 if r==5 else None
        copies=x4 if r==4 else x5 if r==5 else 0
        if copies:m[values.index(collision)]+=copies
        need(sum(m)==s['h'],'exact full specialization degree')
        out.append({'row':r,'values':values,'ordinary_multiplicities':ordinary,'specialization_multiplicities':m,
                    'root_sum':sum(v*a for v,a in zip(values,m)),'collision_root':collision,'collision_copies':copies})
    return out

@lru_cache(maxsize=None)
def trace_check(h,v,S,ell):
    s=STATE_LOOKUP[h,v]
    if s['E']>0:return {'allowed':True,'skipped_positive_excess':True,'fixed_rows':[],'obstruction':None}
    rs=fixed_rows(s,S,ell);points=[(r['row'],r['root_sum']) for r in rs]
    for four in combinations(points,4):
        d=determinant4(four)
        if d:return {'allowed':False,'skipped_positive_excess':False,'fixed_rows':rs,'obstruction':{'points':four,'determinant':d}}
    return {'allowed':True,'skipped_positive_excess':False,'fixed_rows':rs,'obstruction':None}

def verify_witness(r,middle,free,use_trace):
    need((r['h'],tuple(r['v'])) in STATE_LOOKUP,'unknown vertical state')
    s=STATE_LOOKUP[r['h'],tuple(r['v'])]
    need(all(r[k]==s[k] for k in ('h','v','d','p','E')),'mixed vertical allocation')
    a=r['a'];S=r['S'];ell=r['specials'][0];b,c,f=r['B'],r['C'],r['F'];x=sum(S)
    need(all(isinstance(n,int) and n>=0 for n in [a,ell,b,c,f,*S]),'nonnegative integer class counts required')
    U=remaining(s,S,ell)
    need(a<=s['E'] and min(U)>=0 and 2*b+c<=sum(U),'source/excess budget')
    cost=3*a+13*ell+4*x+4*b+middle*c+free*f
    need(cost<=s['h'] and cost==r['x_cost'],'X budget')
    need(r['size']==a+ell+x+b+c+f,'factor count')
    if use_trace:need(trace_check(s['h'],tuple(s['v']),tuple(S),ell)['allowed'],'same-G trace obstruction')

def run(middle,free,use_trace):
    best=-1;records=[];per=[];queries=0;excluded=[]
    for s in STATES:
        h,d,E=s['h'],s['d'],s['E'];local=-1
        for a in range(min(E,h//3)+1):
            for ell in range(min(d[0],(h-3*a)//13)+1):
                for S in product(range(d[0]-ell+1),range(d[1]+1),range(d[2]+1)):
                    x=sum(S);X=h-3*a-13*ell-4*x;U=remaining(s,S,ell)
                    if X<0 or min(U)<0:continue
                    if use_trace and not trace_check(h,tuple(s['v']),S,ell)['allowed']:
                        excluded.append({**s,'a':a,'S':list(S),'specials':[ell]});continue
                    T=sum(U)
                    for c in range(min(T,X//middle)+1):
                        for b in range(min((T-c)//2,(X-middle*c)//4)+1):
                            f=(X-middle*c-4*b)//free;K=a+ell+x+b+c+f;queries+=1;local=max(local,K)
                            r={**s,'a':a,'S':list(S),'specials':[ell],'B':b,'C':c,'F':f,'size':K,'x_cost':3*a+13*ell+4*x+4*b+middle*c+free*f}
                            if K>best:best=K;records=[]
                            if K==best:records.append(r)
        per.append({'h':h,'v':s['v'],'E':E,'maximum':local})
    records.sort(key=rkey)
    for r in records:verify_witness(r,middle,free,use_trace)
    return {'middle':middle,'free':free,'trace':use_trace,'maximum':best,'states':len(STATES),'queries':queries,'records':records,'per_state':per,'rejected_outer':excluded}

def mul(A,B):
    C={}
    for (a,b),v in A.items():
        for (c,d),w in B.items():C[a+c,b+d]=C.get((a+c,b+d),0)+v*w
    return {k:v for k,v in C.items() if v}

def family_interface():
    P={(0,0):1};W={(0,0):1}
    for t in range(4):P=mul(P,{(0,1):1,(1,0):-t,(0,0):t*t})
    for r in range(3,9):W=mul(W,{(1,0):1,(0,0):-r})
    ans=[]
    for missing,qroots,lam,kbound in [(4,[3,5],3,[1,1,0]),(5,[3,4],6,[0,1,0])]:
        Q={(0,0):1}
        for r in qroots:Q=mul(Q,{(1,0):1,(0,0):-r})
        T=mul(W,Q);source=[]
        for r in range(3,9):
            vals=sorted({j*(r-j) for j in range(r//2+1)})
            for v in vals:
                mult=sum(t*(r-t)==v for t in range(4))
                m=mult-int(r==missing and v==lam)
                if m:
                    need(all(ordinary_jet(H,r,v,a,b)==0 for H in (P,T) for a in range(m) for b in range(m-a)),'false all-parameter ordinary lower bound')
                    if r==missing and v==lam:
                        need(ordinary_jet(P,r,v,1,0)==0 and ordinary_jet(T,r,v,1,0)==-24,'collision ordinary coefficient')
                    else:need(ordinary_jet(P,r,v,0,m)!=0 and ordinary_jet(T,r,v,0,m)==0,'fixed ordinary coefficient missing')
                else:need(ordinary_jet(P,r,v,0,0)!=0 and ordinary_jet(T,r,v,0,0)==0,'unaccounted source zero')
                source.append([r,v,m,mult])
        need(sum(z[2] for z in source)==23,'quartic single-deficit interface')
        tangents=[]
        for pos,s in enumerate([2,3,4]):
            m=next(z[2] for z in source if z[:2]==[2*s,s*s]);w=2*m-kbound[pos]
            need(all(tangent_jet(H,s,a,b)==0 for H in (P,T) for a in range(w) for b in range(w//2+1) if a+2*b<w),'tangent layer below claimed order')
            layer=[(tangent_jet(P,s,a,b),tangent_jet(T,s,a,b)) for b in range(w//2+1) for a in [w-2*b]]
            # Nonzero constant coefficient, or a nonzero multiple of the allowed nonzero parameter.
            need(any(c!=0 and d==0 for c,d in layer) or any(c==0 and d!=0 for c,d in layer),'nonzero tangent coefficient for every nonzero parameter')
            tangents.append({'row':2*s,'ordinary':m,'weighted':w,'kappa':kbound[pos]})
        ans.append({'class':f'S{missing}','missing_row':missing,'extra_specialization_root':lam,'ordinary_N_linear_coefficient':-24,'parameter_domain':'Q excluding 0','source_signature':source,'tangent_signature':tangents})
    return ans

def verify(out):
    begin=time.monotonic();old=json.loads((ROOT/'evidence/trace_ledger_discovery.json').read_text());summary=[];results={}
    for label,m,tr in [('baseline',15,False),('trace_only',15,True),('location_only',16,False),('new',16,True)]:
        res=run(m,25,tr);saved=old[label]
        need(res['maximum']==saved['maximum'] and res['queries']==saved['queries'],'independent ledger bound/count mismatch')
        need([rkey(r) for r in res['records']]==sorted(rkey(r) for r in saved['records']),'maximum record set mismatch')
        pk=lambda s:(s['h'],tuple(s['v']),s['E'],s['maximum'])
        need(sorted(map(pk,res['per_state']))==sorted(map(pk,saved['per_state'])),'per-state bound mismatch')
        oks=lambda r:(r['h'],tuple(r['v']),r['a'],tuple(r['S']),tuple(r['specials']))
        need(sorted(map(oks,res['rejected_outer']))==sorted(map(oks,saved['rejected_outer'])),'trace rejection set mismatch')
        eq=sorted({(r['h'],tuple(r['v'])) for r in res['records']})
        row={k:res[k] for k in ['middle','free','trace','maximum','states','queries']};row.update(label=label,maximum_records=len(res['records']),equality_vertical_states=len(eq),minimum_equality_h=min(h for h,v in eq))
        summary.append(row);results[label]=res;save(out/f'{label}_ledger_accepted.json',res);print('ACCEPT_LEDGER',row,flush=True)
    nr=results['new'];need(nr['maximum']==10 and all(r['E']==0 for r in nr['records']),'COVER10/FULL-EDGE scope')
    posmax=max(s['maximum'] for s in nr['per_state'] if s['E']>=1);need(posmax<=9,'positive excess bound')
    eq=sorted({(r['h'],tuple(r['v'])) for r in nr['records']});need(len(eq)==71 and min(h for h,v in eq)==107,'new equality-state compression')
    removed=[]
    for i,r in enumerate(results['baseline']['records']):
        ck=trace_check(r['h'],tuple(r['v']),tuple(r['S']),r['specials'][0])
        if not ck['allowed']:removed.append({'baseline_index':i,'record':r,**ck})
    need(len(removed)==187,'old maximal trace exclusions')
    example={'h':97,'v':[27,22,19,16,13,14]};s=STATE_LOOKUP[97,tuple(example['v'])];ex=trace_check(97,tuple(s['v']),(0,0,3),0)
    need(not ex['allowed'],'explicit h97 contradiction lost')
    edge={'status':'PASS_NEW_SAME_G_TRACE_EDGE10_H107','maximum':10,'maximum_if_positive_total_excess':posmax,'maximum_records':len(nr['records']),
          'equality_vertical_state_count':len(eq),'minimum_equality_h':107,'equality_h_values':sorted({h for h,v in eq}),
          'equality_vertical_states':[{'h':h,'v':v,'E':0} for h,v in eq],'weighted_degree_if_equality':305,'all_residual_factors_zero_excess_if_equality':True,
          'example_surviving_10_relaxation':nr['records'][0],'explicit_removed_h97':ex}
    save(out/'S4_S5_COLLISION_INTERFACES.json',family_interface());save(out/'TRACE_REJECTIONS.json',removed);save(out/'TRACE_EDGE10.json',edge)
    save(out/'LEDGER_SUMMARY.json',{'status':'PASS_LOC89_AND_SAME_G_TRACE_LEDGER','modes':summary,'cover_reduced':False,'new_cover':10,'geometry_assumption_middle16':'LOC89 plus frozen LOC77/83 and low-degree interfaces','SAT_range_unchanged':24})
    print('ACCEPT_TRACE_FINAL','records',len(nr['records']),'states',len(eq),'seconds',round(time.monotonic()-begin,3),flush=True)
    return edge

def main():
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args();need(a.out.is_absolute() and not a.out.exists(),'new absolute directory required');a.out.mkdir(parents=True);verify(a.out)
if __name__=='__main__':main()
