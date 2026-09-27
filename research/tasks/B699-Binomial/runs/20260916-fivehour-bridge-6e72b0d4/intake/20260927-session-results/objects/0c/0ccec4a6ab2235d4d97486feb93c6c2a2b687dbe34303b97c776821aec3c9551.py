"""Complete resource statements for FRONTIER56; no implicit global T-floor upgrade."""
from pathlib import Path
from itertools import product
from collections import Counter
import json
from resource_core import load_sigs,multisets,parse_cpp
from frozen_capacity import all_states,OFF,DIAG

T=(4,0,0,2,1,0,0)
REMOVED=[1704,1862,1902,1924,1931,2002]
ACTIVE=[1699,1701,1704,1862,1902,1924,1931,2002]
EXTRA_PAIRS=[(4,(0,2,2,1,0,0)),(6,(0,0,2,1,0,2)),(6,(0,0,2,1,2,0)),
             (7,(0,0,2,1,0,2)),(7,(0,0,2,1,2,0)),(10,(0,0,2,1,0,1)),(10,(0,1,2,1,0,0))]

def dump(p,x): p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def write_sigs(p,rows): p.write_text(''.join(' '.join(map(str,r))+'\n' for r in rows))
def write_queries(p,ids,st): p.write_text(''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n' for i in ids))

def init(root,fd):
    st=all_states(); ids=[]
    for l in (root/'inputs/frontier56.tsv').read_text().splitlines()[1:]:
        i,h,e,v=l.split(); i,h,e=int(i),int(h),int(e);v=list(map(int,v.split(',')))
        assert st[i]['h']==h and st[i]['v']==v and st[i]['E']==e==0;ids.append(i)
    assert len(ids)==len(set(ids))==56
    assert [i for i in ids if st[i]['h']==117]==[1699,1701,1704]
    raw=load_sigs(root/'inputs/signatures619.txt');assert len(raw)==619 and raw.count(T)==1
    conditional=[(11,*a[1:]) if a==T else a for a in raw]
    write_sigs(fd/'CONDITIONAL_T11_NOT_GLOBAL.txt',conditional)
    write_queries(fd/'queries56.txt',ids,st);write_queries(fd/'h117_queries.txt',[1699,1701,1704],st)
    write_queries(fd/'remaining_h117_queries.txt',[1699,1701],st)
    dump(fd/'conditional_contract.json',{'global_table_changed':False,'baseline_signature_count':619,'changed_index':raw.index(T),
        'old_T':T,'conditional_T':[11,*T[1:]],'activation_requires':'complete true q<=10 preimages AND same-state S5/F_* exclusions',
        'conditional_all56_queries_are_diagnostics_until_activation':True})
    return st,ids,raw,conditional

def registry(root,fd):
    old=json.loads((root/'inputs/LOW_T35_registry.json').read_text())
    pairs={(q,tuple(c)) for q,c in old['pairs']};assert len(pairs)==35
    oldprof={(x['q'],tuple(x['delta']),tuple(x['kappa'])) for x in old['profiles']};assert len(oldprof)==48
    newpairs=set(EXTRA_PAIRS)|{(10,T[1:])};assert len(newpairs)==8 and not(pairs&newpairs)
    cases=[['base_q10',10,[0,0,1,0,0,0],[0,0,0,1,0,0]]]
    for q,c in EXTRA_PAIRS:
        for d in product(*(range(v//2+1) for v in c)):
            k=tuple(v-2*a for v,a in zip(c,d))
            if any(k[j] for j in (0,2,4)): continue
            name=f'ext{len(cases)-1:02d}_q{q}';cases.append([name,q,list(d),list(k)])
    newprof={(q,tuple(d),tuple(k)) for _,q,d,k in cases}
    assert len(cases)==len(newprof)==11 and not(newprof&oldprof)
    allpairs=pairs|newpairs; allprof=set()
    for q,c in allpairs:
        for d in product(*(range(v//2+1) for v in c)):
            k=tuple(v-2*a for v,a in zip(c,d))
            if not any(k[j] for j in (0,2,4)): allprof.add((q,d,k))
    assert allprof==oldprof|newprof and len(allprof)==59
    dump(fd/'LOW_T43_cover.json',{'pairs':sorted(allpairs),'total_profiles':59,'adopted_profiles':48,'new_profiles':cases,
        'adopted_theorem':'LOW-T35, inputs/adopted_frontier56/PROOFS.md sections 1.2-2',
        'new_pair_count':8,'classification':'on the listed domain an irreducible monic H can only be S5 or F_*',
        'F_star_only_possible_pair':[4,[0,2,2,1,0,0]],'new_q10_base_excluded':True,
        'no_claim_all_q_le10_are_classified':True})
    return allpairs,cases

def main_groups(root,fd,st,raw,cover):
    cpp=parse_cpp(fd/'original_h117_cpp.txt');frozen=parse_cpp(root/'inputs/h117_complete_cpp.txt')
    ss=multisets(raw,st[1704]['cap'],117);assert ss==cpp[1704]==frozen[1704] and len(ss)==3128
    cap=st[1704]['cap']; records=[];patterns=set(); pre=set()
    for ix,g in enumerate(ss):
        degree=sum(a[0] for a in g);a=g.count(T)
        rem=tuple(c-sum(x[j+1] for x in g) for j,c in enumerate(cap));ds=117-degree
        assert a>0 and min(rem)>=0 and ds>=0
        records.append({'index':ix,'proxy_degree':degree,'T_count':a,'degree_slack':ds,'cost_slack':rem,
            'saturated':not any(rem),'under_floor10':degree+6*a,'under_floor11':degree+7*a})
        patterns.add((ds,rem))
    for ds,rem in patterns:
        for inc in product(*(range(0,x+1,2 if j%2==0 else 1) for j,x in enumerate(rem))):
            c=tuple(x+y for x,y in zip(T[1:],inc))
            for q in range(4,min(10,4+ds)+1): pre.add((q,c))
    assert len(pre)==19 and pre<=cover
    new=pre-{(q,tuple(c)) for q,c in json.loads((root/'inputs/LOW_T35_registry.json').read_text())['pairs']}
    assert new=={(10,T[1:])}
    assert Counter(r['T_count'] for r in records)==Counter({2:2969,1:159})
    assert sum(r['saturated'] for r in records)==2648
    survivors=[g for g,r in zip(ss,records) if r['under_floor10']<=117]
    old=[tuple(tuple(x) for x in g) for g in json.loads((root/'inputs/six1704_T10.json').read_text())['six_complete_multisets']]
    assert survivors==old and len(survivors)==6
    assert all(sum(x[0] for x in g)==105 and g.count(T)==2 for g in survivors)
    assert min(r['under_floor11'] for r in records)==119
    dump(fd/'1704_all_3128_budget_checks.json',records)
    dump(fd/'1704_all_q_le10_individual_preimages.json',{'complete_pairs':sorted(pre),'budget_slack_patterns':sorted(patterns),
        'adopted_pairs':18,'only_new_pair':[10,list(T[1:])],'individual_not_simultaneous':True,'unsaturated_increments_retained':True})
    dump(fd/'1704_six_equalities.json',{'multisets':survivors,'old_proxy_degree':105,'T_count':2,'under_T10':117,'under_T11':119})
    summary={'state':1704,'complete_multisets':3128,'python_cpp_frozen_sets_equal':True,'saturated':2648,'unsaturated':480,
        'T_count_distribution':dict(Counter(r['T_count'] for r in records)),'complete_low_pairs':19,
        'six_T10_equalities_retained':True,'T11_lower_bound':119,'all_3128_excluded_once_T11_proved':True}
    dump(fd/'1704_summary.json',summary)
    return pre,summary

def read_fees(p,raw,st,ids):
    rec=[]
    for l in p.read_text().splitlines():
        i,h,e,*seq=map(int,l.split());assert i in ids and h==st[i]['h'] and len(seq)==8
        ss=[raw[j] for j in seq];assert sum(x[0] for x in ss)==e
        used=[sum(x[j+1] for x in ss) for j in range(6)];assert all(a<=b for a,b in zip(used,st[i]['cap']))
        rec.append({'state':i,'h':h,'minimum':e,'signature_indices':seq,'weak_signatures':ss,'cost':used,'actual_realization_claimed':False})
    assert [r['state'] for r in rec]==ids
    return rec

def all_domains(fd,st,cover,mainpre):
    M={}
    with (fd/'original_full_DP_cells.tsv').open() as f:
        next(f)
        for l in f:
            i,n,*v=map(int,l.split())
            if n==7 and i in ACTIVE: M[i,tuple(v[:6])]=v[6]
    records=[]
    for i in ACTIVE:
        cap=st[i]['cap'];h=st[i]['h'];tests=[];pre=[]
        for c in product(*(range(T[j+1],cap[j]+1,2 if j%2==0 else 1) for j in range(6))):
            rem=tuple(a-b for a,b in zip(cap,c));m=M[i,rem];qs=list(range(4,min(10,h-m)+1))
            tests.append({'true_cost':c,'M7':m,'allowed_q':qs})
            pre.extend((q,c) for q in qs)
        assert set(pre)<=cover,(i,set(pre)-cover)
        if i==1704: assert set(pre)==mainpre
        if i!=1924: assert (4,(0,2,2,1,0,0)) not in pre
        records.append({'state':i,'h':h,'capacity':cap,'complete_preimages':pre,'count':len(pre),'all_true_cost_tests':tests,
                        'covered_by_LOW_T43':True,'F_star_quotient_required':i==1924})
    dump(fd/'all_activated_state_low_domains.json',records)
    return records

def quotient_cases(st,cd,s5bounds,ebounds):
    cases=[]
    for i in ACTIVE:
        for family,bd in [('S5',s5bounds)]+([('Fstar',ebounds)] if i==1924 else []):
            e=st[i]['h']-4;lines=[str(e)];pts=[]
            for b in bd:
                r,s=b['r'],b['s'];ri=r-3;diag=2*s==r
                low=max(0,(DIAG[ri] if diag else OFF[ri][s])-st[i]['v'][ri]);lo=max(0,low-b['upper'])
                lines.append(f'{r} {s} {lo}');pts.append({'r':r,'s':s,'Gbar_lower':low,'factor_upper':b['upper'],
                    'quotient_lower':lo,'kind':'weighted' if diag else 'ordinary'})
            tag=f'{i}_{family}';(cd/f'{tag}.case').write_text('\n'.join(lines)+'\n')
            cases.append({'state':i,'tag':tag,'family':family,'h':st[i]['h'],'v':st[i]['v'],'quotient_e':e,
                'quotient_D':2*e,'points':pts,'same_state_required':True})
    assert len(cases)==9
    dump(cd/'all_nine_state_specific_cases.json',cases)
    return cases

def finish(root,fd,st,ids,raw,conditional,domains,modules):
    orig=read_fees(fd/'original_fees56.txt',raw,st,ids);cond=read_fees(fd/'conditional_fees56.txt',conditional,st,ids)
    removed=[r['state'] for r in cond if r['minimum']>r['h']];assert removed==REMOVED
    assert all(r['minimum']<=r['h'] for r in orig)
    assert {r['state'] for r in domains}==set(ACTIVE)
    assert all(r['nullity']==0 for r in modules)
    counts={}
    for label,rs in [('original',orig),('conditional',cond)]:
        table={};total=0
        for l in (fd/f'{label}_full_DP_summary.tsv').read_text().splitlines()[1:]:
            i,h,m,size,cells,*_=map(int,l.split());assert cells==size*9
            table[i]=(h,m);total+=cells
        assert set(table)==set(ids) and all(table[r['state']]==(r['h'],r['minimum']) for r in rs)
        counts[label]=total
    keep=[i for i in ids if i not in removed];assert len(keep)==50
    source=(root/'inputs/frontier56.tsv').read_text().splitlines()
    (fd/'frontier50.tsv').write_text(source[0]+'\n'+'\n'.join(l for l in source[1:] if int(l.split()[0]) in keep)+'\n')
    records=[]
    for o,c in zip(orig,cond):
        if o['state'] not in keep:continue
        r=dict(c if o['state'] in ACTIVE else o)
        r['state_specific_table']='T11' if o['state'] in ACTIVE else 'original619'
        records.append(r)
    assert all(r['minimum']<=r['h'] for r in records)
    dump(fd/'remaining50_weak_resource_records.json',records)
    dump(fd/'activation_and_net_changes.json',{'baseline':56,'remaining':50,'removed':removed,'active_T11_states':ACTIVE,
        'conditional_all56_diagnostic':cond,'source_table_unchanged':True,'dp_comparisons':counts,
        'activation_completed_by_low_domains_and_current_state_quotients':True})
    assert min(st[i]['h'] for i in keep)==117
    assert [i for i in keep if st[i]['h']==117]==[1699,1701]
    return {'status':'PASS_T10_S5_FSTAR_FRONTIER50','input_frontier':56,'remaining_frontier':50,'net_removed':6,
        'removed_states':removed,'COVER8':True,'COVER7_proved':False,'minimum_equality_h':117,'maximum_vertical_sum':71,
        'H118_proved':False,'lowest_states':[1699,1701],'global_signature_count':619,'global_table_changed':False,
        'state_specific_T11_activated':ACTIVE,'original_DP_compared_cells':counts['original'],
        'conditional_DP_compared_cells':counts['conditional'],'total_DP_compared_cells':sum(counts.values()),
        'original_n_absolute_bound':None,'strict_NC_descent':False,'Lean':False,'external_independent_review':False,
        'repository_operations':False,'R7_unchanged':[3,4,5,6,7,8,9]}

def next_states(root,fd,st,raw,conditional):
    cpp=parse_cpp(fd/'remaining_h117_conditional_cpp.txt');base=parse_cpp(root/'inputs/h117_complete_cpp.txt');ans=[]
    for i,expected in [(1699,132),(1701,34)]:
        ss=multisets(conditional,st[i]['cap'],117);assert ss==cpp[i] and len(ss)==expected
        # Exact bijection from the budget-filtered ORIGINAL full groups.
        mapped=sorted(tuple(sorted((11,*x[1:]) if x==T else x for x in g)) for g in base[i]
                      if sum(x[0] for x in g)+7*g.count(T)<=117)
        assert ss==mapped
        t11=(11,*T[1:]);counts=Counter(g.count(t11) for g in ss);cap=st[i]['cap']
        sat=sum(all(sum(x[j+1] for x in g)==v for j,v in enumerate(cap)) for g in ss)
        noT=[g for g in ss if t11 not in g]
        dump(fd/f'next_{i}_no_T_complete.json',{'state':i,'complete_no_T_groups':noT,'not_actual_factors':True})
        ans.append({'state':i,'h':117,'v':st[i]['v'],'capacity':cap,'active_table':'state-specific proven T11',
            'complete_multisets':len(ss),'minimum_proxy_degree':min(sum(x[0] for x in g) for g in ss),
            'saturated':sat,'unsaturated':len(ss)-sat,'T11_count_distribution':dict(counts),'no_T_count':len(noT),
            'python_cpp_and_original_filtered_sets_equal':True,'still_open':True})
    dump(fd/'next_h117_complete_summary.json',ans)
    return ans
