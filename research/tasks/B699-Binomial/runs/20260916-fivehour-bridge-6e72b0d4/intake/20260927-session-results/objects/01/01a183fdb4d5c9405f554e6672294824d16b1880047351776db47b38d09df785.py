"""This round's exact profiles, safe updates, resource proofs and diagnostics.
Only Python standard-library integer/Fraction arithmetic is used.
"""
from __future__ import annotations
import hashlib,itertools,json
from fractions import Fraction
from collections import Counter
from pathlib import Path
from resource_core import load_sigs,multisets,parse_cpp
from frozen_capacity import all_states
T=(4,0,0,2,1,0,0)
TAIL_COSTS=((0,0,0,0,4,0),(0,0,0,0,2,2),(0,0,0,0,0,4))
TAIL11=(11,0,0,0,0,0,4)
SPECIAL=(1699,1701)
REMOVED1=[1701,1742,1817,1921,1986]
REMOVED2=[1699,1701,1742,1817,1823,1921,1986]

def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def sigtext(a):return ''.join(' '.join(map(str,x))+'\n'for x in a)
def querytext(ids,st):return ''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n'for i in ids)
def conditional(a):return [(11,*x[1:])if x==T else x for x in a]

def profiles():
    cases=[]
    for ci,c in enumerate(TAIL_COSTS):
        options=[list(range(v//2+1)) if (i+3)%2==0 else [v//2]for i,v in enumerate(c)]
        for d in itertools.product(*options):
            k=tuple(v-2*a for v,a in zip(c,d));assert all(k[i]==0 for i in (0,2,4))
            cases.append((f'q10_p{ci}_d{"".join(map(str,d))}',10,d,k))
    assert len(cases)==6
    for q in (11,12):
        for d8 in (0,1,2):cases.append((f'tail8_q{q}_d{d8}',q,(0,0,0,0,0,d8),(0,0,0,0,0,4-2*d8)))
    assert len(cases)==12
    return cases

def strengthen(raw,stage):
    new=[];mapping=[];count=0
    for i,x in enumerate(raw):
        active=(x[0]==10 and x[1:] in TAIL_COSTS) if stage==1 else x==TAIL11
        start=len(new)
        if active:
            count+=1;new.append(((11 if stage==1 else 13),*x[1:]))
            for j in range(6):
                a=list(x);a[j+1]+=2 if j in (0,2,4) else 1;new.append(tuple(a))
        else:new.append(x)
        mapping.append({'old_index':i,'old_signature':x,'new_indices':list(range(start,len(new))),
                        'rule':'complete_degree_or_true_cost_increase' if active else 'unchanged'})
    assert (len(raw),len(new),count)==((619,637,3) if stage==1 else (637,643,1))
    assert all(not any(x[i]%2 for i in (1,3,5)) for x in new)
    return new,mapping

def setup(root,fd):
    st=all_states();raw=load_sigs(root/'inputs/signatures619.txt')
    assert len(raw)==619 and conditional(raw)==load_sigs(root/'inputs/baseline_T11_NOT_GLOBAL.txt')
    ids=[]
    for line in (root/'inputs/frontier50.tsv').read_text().splitlines()[1:]:
        i,h,e,vs=line.split();i,h,e=map(int,(i,h,e));v=list(map(int,vs.split(',')))
        assert st[i]['h']==h and st[i]['E']==e==0 and st[i]['v']==v
        assert 2*h+sum(v)==305 and min(st[i]['cap'])>=0
        ids.append(i)
    assert len(ids)==50 and min(st[i]['h']for i in ids)==117
    a1,m1=strengthen(raw,1);a2,m2=strengthen(a1,2)
    arrays=[raw,a1,a2]
    for stage,a in enumerate(arrays):
        (fd/f'stage{stage}_global.txt').write_text(sigtext(a))
        (fd/f'stage{stage}_T11_ONLY_1699_1701.txt').write_text(sigtext(conditional(a)))
    dump(fd/'stage1_safe_mapping.json',m1);dump(fd/'stage2_safe_mapping.json',m2)
    dump(fd/'table_scope.json',{'baseline_global':619,'stage1_global':637,'stage2_global':643,
        'inherited_T11_applies_only_to':SPECIAL,'other_current_states_receive_no_T11':True,
        'signature_meaning':'componentwise lower bounds; not actual irreducible factors'})
    for tag,ii in [('ordinary48',[i for i in ids if i not in SPECIAL]),('restricted2',list(SPECIAL)),('all50',ids)]:
        (fd/f'queries_{tag}.txt').write_text(querytext(ii,st))
    dump(fd/'input50_states.json',[st[i] for i in ids])
    return st,ids,arrays

def group_summary(gs,cap):
    sat=sum(all(sum(x[j+1]for x in g)==cap[j] for j in range(6))for g in gs)
    return {'complete_groups':len(gs),'saturated':sat,'unsaturated':len(gs)-sat,
            'minimum_proxy_degree':min((sum(x[0]for x in g)for g in gs),default=None),
            'degree_histogram':dict(sorted(Counter(sum(x[0]for x in g)for g in gs).items())),
            'actual_realization_claimed':False}

def audit_stage0(root,fd,st,arrays):
    cpp=parse_cpp(fd/'stage0_h117_cpp.txt');old=parse_cpp(root/'inputs/baseline_h117_complete_cpp.txt');ans={}
    for i,num in [(1699,132),(1701,34)]:
        gs=multisets(conditional(arrays[0]),st[i]['cap'],117)
        assert gs==cpp[i]==old[i] and len(gs)==num
        ans[i]=gs
    cap=st[1701]['cap'];gs=ans[1701]
    assert all([sum(x[j+1]for x in g)for j in range(6)]==cap for g in gs)
    rec=[];noT=[]
    for ix,g in enumerate(gs):
        n=sum(x[0]==10 and x[1:] in TAIL_COSTS for x in g);e=sum(x[0]for x in g)
        assert n>0 and e+n>=119
        r={'index':ix,'proxy_degree':e,'target_occurrences':n,'new_actual_degree_lower_bound':e+n,'signatures':g}
        rec.append(r)
        if (11,*T[1:])not in g:noT.append(r)
    assert len(noT)==3 and min(r['new_actual_degree_lower_bound'] for r in rec)==119
    dump(fd/'1701_all34_exact_cost_and_degree.json',{'state':1701,'capacity':cap,'all_saturated':True,
          'minimum_new_actual_degree':119,'all_groups':rec,'three_no_T_groups':noT})
    dump(fd/'stage0_h117_summary.json',{i:group_summary(gs,st[i]['cap'])for i,gs in ans.items()})
    return ans

def audit_stage1(fd,st,arrays):
    cpp=parse_cpp(fd/'stage1_h117_cpp.txt')
    gs=multisets(conditional(arrays[1]),st[1699]['cap'],117)
    assert gs==cpp[1699] and len(gs)==26 and not cpp.get(1701,[])
    assert not multisets(conditional(arrays[1]),st[1701]['cap'],117)
    rec=[];at12=[]
    for ix,g in enumerate(gs):
        assert [sum(x[j+1]for x in g)for j in range(6)]==st[1699]['cap']
        n=g.count(TAIL11);e=sum(x[0]for x in g);assert n and e+2*n>=119
        r={'index':ix,'proxy_degree':e,'tail11_occurrences':n,'lower_if_degree12':e+n,
           'lower_after_excluding11_and12':e+2*n,'signatures':g}
        rec.append(r)
        if e+n<=117:at12.append(r)
    assert len(at12)==4 and min(r['lower_after_excluding11_and12']for r in rec)==119
    dump(fd/'1699_stage1_all26_and_stage2_budget.json',{'state':1699,'capacity':st[1699]['cap'],
        'all_saturated':True,'complete_groups':26,'minimum_new_actual_degree':119,'all_groups':rec,
        'four_groups_not_excluded_by_degree12_only':at12})
    return gs

def audit_fee_set(fd,stage,subset,raw,st,ids):
    p=fd/f'stage{stage}_{subset}_fees.txt';rows=[]
    grid={int(l.split()[0]):list(map(int,l.split()))for l in (fd/f'stage{stage}_{subset}_grid_summary.tsv').read_text().splitlines()[1:]}
    for l in p.read_text().splitlines():
        z=list(map(int,l.split()));i,h,v=z[:3];idx=z[3:];assert len(idx)==8 and h==st[i]['h']
        seq=[raw[j]for j in idx];C=[sum(x[j+1]for x in seq)for j in range(6)]
        assert sum(x[0]for x in seq)==v and all(a<=b for a,b in zip(C,st[i]['cap']))
        assert grid[i][:3]==[i,h,v]
        rows.append({'state':i,'h':h,'minimum_proxy_degree':v,'signature_indices':idx,'weak_signatures':seq,
            'sum_cost':C,'table':f'stage{stage}_'+('T11_ONLY_1699_1701' if subset=='restricted2'else 'global'),
            'actual_realization_claimed':False})
    assert [r['state']for r in rows]==ids and set(grid)==set(ids)
    return rows,sum(z[4] for z in grid.values())

def finalize_fees(root,fd,st,ids,arrays):
    stage_records=[];comparisons=0
    for stage,a in enumerate(arrays):
        ordinary,cc=audit_fee_set(fd,stage,'ordinary48',a,st,[i for i in ids if i not in SPECIAL]);comparisons+=cc
        special,cc=audit_fee_set(fd,stage,'restricted2',conditional(a),st,list(SPECIAL));comparisons+=cc
        rows=sorted(ordinary+special,key=lambda r:r['state']);removed=[r['state']for r in rows if r['minimum_proxy_degree']>r['h']]
        assert removed==[[],REMOVED1,REMOVED2][stage]
        dump(fd/f'stage{stage}_complete_state_receipts.json',rows);stage_records.append(rows)
    final=stage_records[-1];remaining=[r for r in final if r['state']not in REMOVED2]
    assert len(remaining)==43 and min(r['h']for r in remaining)==125
    assert not any(r['state']in SPECIAL for r in remaining)
    dump(fd/'remaining43_weak_resource_records.json',remaining)
    lines=(root/'inputs/frontier50.tsv').read_text().splitlines()
    (fd/'frontier43.tsv').write_text(lines[0]+'\n'+'\n'.join(l for l in lines[1:]if int(l.split()[0])not in REMOVED2)+'\n')
    low=[r['state']for r in remaining if r['h']==125];assert low==[1785,1787,1794]
    (fd/'queries_new_h125.txt').write_text(querytext(low,st))
    # A surviving weak witness prevents accidental global use of the inherited T11.
    w=next(r for r in remaining if r['state']==1787)
    assert w['minimum_proxy_degree']==122<=125
    dump(fd/'non_global_T11_boundary_witness.json',{
        'state':1787,'T11_not_proved_for_this_state':True,'valid_weak_global_table_witness':w,
        'warning':'Do not replace T4 by T11 for this state without its complete low preimages and own quotient proof.'})
    change={'input_frontier':50,'stage1_frontier':45,'output_frontier':43,
       'stage1_removed':REMOVED1,'stage2_additional_removed':[1699,1823],'removed_states':REMOVED2,
       'removed_state_bounds':[r for r in final if r['state']in REMOVED2],
       'COVER8_retained':True,'COVER7_proved':False,'equality_h_lower_bound':125,'equality_V_upper_bound':55,
       'equality_E':0,'equality_DG':305,'minimum_states':low,'full_DP_cells_compared':comparisons,
       'global_signature_count':643,'inherited_T11_only':SPECIAL,
       'all_remaining_states_use_global643':True,'R7':[3,4,5,6,7,8,9],
       'absolute_original_n_bound':None,'strict_original_NC_descent':False}
    dump(fd/'net_changes_and_boundaries.json',change)
    return change

def audit_next(fd,st,arrays):
    cpp=parse_cpp(fd/'new_h125_complete_cpp.txt');allgs={};summ=[]
    for i,num in [(1785,1062),(1787,1962),(1794,3823)]:
        gs=multisets(arrays[2],st[i]['cap'],125);assert gs==cpp[i] and len(gs)==num
        rec={'state':i,'h':125,'capacity':st[i]['cap'],**group_summary(gs,st[i]['cap'])}
        rec['groups_without_T4']=sum(T not in g for g in gs)
        common=set(gs[0])
        for g in gs:common.intersection_update(g)
        rec['common_numeric_types']=sorted(common)
        allgs[i]=gs;summ.append(rec)
    dump(fd/'next_h125_complete_summary.json',summ)
    # Complete, labeled counterfactual price diagnostics, not geometry.
    probes=[]
    for i,gs in allgs.items():
        for e in range(5,12):
            bounds=[sum(x[0]for x in g)+(e-4)*g.count(T)for g in gs]
            probes.append({'state':i,'assumed_minimum_degree_of_T_actual_preimage':e,
                'all_groups':len(gs),'minimum_bound':min(bounds),'groups_still_within125':sum(x<=125 for x in bounds),
                'geometric_statement_proved':False})
    dump(fd/'next_T_counterfactual_diagnostics.json',probes)
    return summ

def gate_statistics(case,lines):
    name,q,d,k=case;admissible=Counter();nonint=Counter();negative=Counter();quads=0
    points=[(r,s)for r in range(3,9)for s in range(r//2+1)]
    for line in lines:
        z=list(map(int,line.split()));assert len(z)==46 and z[0]==q and tuple(z[1:7])==tuple(d) and tuple(z[7:13])==tuple(k)
        lam=z[13:19];beta=z[19:25];m=z[25:]
        ds=[]
        for div in range(1,q+1):
            if q%div or any(x%div for x in m)or any(x%div for x in k):continue
            g=sum((x//div)*(x//div-1)//2 for x in m)
            for (r,s),x in zip(points,m):
                if r==2*s:
                    a=max(0,(x-k[r-3])//div);g+=a*(a-1)//2
            if g<=(q//div-1)**2:ds.append(div)
        assert ds
        admissible[','.join(map(str,ds))]+=1
        for ri,x in enumerate(d):
            if x==2:
                quads+=1;frac=Fraction(beta[ri],120)
                nonint[str(frac.denominator)]+=1
                disc=lam[ri]*lam[ri]-480*beta[ri]
                negative['negative' if disc<0 else 'zero' if disc==0 else 'positive']+=1
    return {'profile':name,'q':q,'delta':d,'kappa':k,'root_configurations':len(lines),
            'admissible_absolute_component_count_sets':dict(sorted(admissible.items())),
            'quadratic_remainders':quads,'quadratic_constant_denominators':dict(sorted(nonint.items())),
            'quadratic_discriminant_signs':dict(sorted(negative.items()))}
