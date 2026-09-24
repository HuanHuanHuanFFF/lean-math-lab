#!/usr/bin/env python3
"""Exact integer/rational certificate checks. No numerical rank or external CAS."""
from __future__ import annotations
import itertools,json,hashlib
from pathlib import Path
from fractions import Fraction
ROOT=Path(__file__).resolve().parents[1]
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
EXPECTED={(16,4):90,(16,5):67,(17,4):142,(17,5):107,(18,4):217,(18,5):156}

def dump(path:Path,obj)->None:
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')

def validate_gates(path:Path,q:int,missing:int)->dict:
    lines=path.read_text().splitlines();seen=set()
    for line in lines:
        z=list(map(int,line.split()))
        assert len(z)==26,('gate width',len(z))
        qq,rr,nz,lam,genus,*ms=z
        assert qq==q and rr==missing
        key=tuple(z);assert key not in seen;seen.add(key)
        rows=[];pos=0;S=[];T=[];load=[0]*9;g=0;zeros=0
        for r in range(3,9):
            m=ms[pos:pos+r//2+1];pos+=len(m);rows.append(m)
            assert all(x>=0 for x in m) and sum(m)==q-(r==missing)
            roots=[]
            for s,c in enumerate(m):
                roots += [s*(r-s)]*c;zeros+=c>0;g+=c*(c-1)//2
                load[s]+=c;load[r-s]+=c
            if r%2==0:g+=m[r//2]*(m[r//2]-1)//2
            if r==missing:
                assert all(lam!=s*(r-s) or c>0 for s,c in enumerate(m)), 'impossible zero-order collision'
                roots.append(lam)
            assert len(roots)==q
            sr=sum(roots);S.append(sr)
            # Sum of root pairs, independently of the generator's incremental formula.
            T.append(sum(roots[i]*roots[j]for i in range(q)for j in range(i+1,q)))
        assert zeros==nz and nz>=14
        assert g==genus and g<=(q-1)**2
        assert max(load)<=2*q
        assert all(-S[i]+3*S[i+1]-3*S[i+2]+S[i+3]==0 for i in range(3))
        assert sum(a*b for a,b in zip((-1,5,-10,10,-5,1),T))==0
    assert len(lines)==EXPECTED[q,missing],('missing or excess gate',q,missing,len(lines))
    return dict(q=q,deficit_row=missing,count=len(lines),unique=True,all_exact_conditions=True)

def inputs_and_signatures(out:Path)->tuple[list,list,list]:
    inp=ROOT/'inputs';meta=json.loads((inp/'FROZEN_INPUTS.json').read_text())
    for name,h in meta['input_hashes'].items():assert hashlib.sha256((inp/name).read_bytes()).hexdigest()==h
    raw=json.loads((inp/'frozen_signatures.json').read_text());assert len(raw)==472
    new=[];mapping=[]
    for idx,(e,c,n,d,k) in enumerate(raw):
        additions=[]
        if n=='near16_24_early' and (d[1]==1 or d[2]==1):
            assert e==16 and sum(d)==1 and not any(k)
            additions.append([19,c,'early_near19plus',d,k])
            for pos in (1,3,5):
                kk=k[:];kk[pos]+=1;cc=c[:];cc[pos]+=1
                additions.append([16,cc,'early_near16_18_kappa',d,kk])
        else:additions.append([e,c,n,d,k])
        mapping.append(dict(old_id=idx,new_ids=list(range(len(new),len(new)+len(additions)))))
        new.extend(additions)
    assert len(new)==478
    dump(out/'new_signatures.json',new);dump(out/'signature_mapping.json',mapping)
    noquartic=[x for x in new if not(x[2]in('S4','S5')or x[2].startswith('B22_plane'))]
    assert len(noquartic)==464
    for name,a in [('all',new),('without_quartics',noquartic)]:
        (out/f'signatures_{name}.txt').write_text(''.join(' '.join(map(str,[x[0]]+x[1]))+'\n'for x in a))
    frontier=[];queries=[]
    for line in (inp/'frontier205.tsv').read_text().splitlines()[1:]:
        idx,h,E,v=line.split();idx,h,E=int(idx),int(h),int(E);v=list(map(int,v.split(',')))
        assert E==0 and 305-2*h-sum(v)==0
        c=[2*h-2*sum(max(a-v[i],0)for a in OFF[i])-max(DIAG[i]-v[i],0)for i in range(6)]
        assert min(c)>=0
        frontier.append(dict(idx=idx,h=h,E=E,v=v,capacity=c));queries.append(' '.join(map(str,[idx,h]+c)))
    assert len(frontier)==205 and frontier[0]['idx']==1626
    (out/'205queries.txt').write_text('\n'.join(queries)+'\n')
    (out/'1626query.txt').write_text(queries[0]+'\n')
    return new,mapping,frontier

def parity_certificate(new:list,mapping:list,out:Path)->dict:
    C=(0,3,4,3,4,10);audits=[]
    for idx,(e,c,name,d,k) in enumerate(new):
        if name in ('S4','S5')or name.startswith('B22_plane'):continue
        if any(a>b for a,b in zip(c,C)):continue
        A=c[1]+c[2];B=sum(c[3:]);slack=2*e+21*A+16*B-80
        required=5*(A%2)
        assert slack>=required
        audits.append(dict(id=idx,degree_fee=e,cost=c,A=A,B=B,slack=slack,required_parity_slack=required))
    assert len(audits)==220
    # After summing eight inequalities: minimize the implied degree over every possible total A,B.
    lower=min(Fraction(640-21*A-16*B+5*(A%2),2)for A in range(8)for B in range(18))
    assert lower==113
    old_ids=json.loads((ROOT/'inputs/previous_state1626_bound.json').read_text())['weak_minimum_witness_raw_indices']
    ids=[mapping[i]['new_ids'][0]for i in old_ids]
    assert len(ids)==8
    fee=sum(new[i][0]for i in ids);cost=[sum(new[i][1][j]for i in ids)for j in range(6)]
    assert fee==113 and cost==list(C)
    res=dict(status='PASS_INTEGER_PARITY_PRICE_113',capacity=C,applicable_signatures=220,inequality='2e+21(c4+c5)+16(c6+c7+c8)>=80+5*((c4+c5) mod 2)',complete_price_audit=audits,minimum_eight_fee=113,matching_resource_witness_ids=ids,matching_witness_fee=fee,matching_witness_cost=cost,weak_witness_is_not_a_curve=True)
    dump(out/'parity_price_1626.json',res);return res

def finish(out:Path,frontier:list)->dict:
    assert (out/'all_new_fees.txt').read_bytes()==(out/'all_new_fees_raw.txt').read_bytes()
    assert (out/'1626newfees.txt').read_bytes()==(out/'1626newfees_raw.txt').read_bytes()
    values={i:(h,e) for i,h,e in (map(int,l.split())for l in (out/'all_new_fees.txt').read_text().splitlines())}
    assert set(values)=={s['idx']for s in frontier}
    removed=[dict(state=i,h=h,minimum_degree=e,available=h,reason='new_early_near_fees')for i,(h,e)in values.items()if e>h]
    assert len(removed)==31 and 1626 not in {z['state']for z in removed}
    assert (out/'1626newfees.txt').read_text().strip()=='1626 111 113'
    removed.append(dict(state=1626,h=111,minimum_degree=113,available=111,reason='frozen_quartic_exclusion_plus_new_early_near_and_parity_price'))
    remove_ids={z['state']for z in removed};remaining=[s for s in frontier if s['idx']not in remove_ids]
    assert len(remaining)==173 and min(s['h']for s in remaining)==112
    assert max(sum(s['v'])for s in remaining)==81
    header='idx\th\tE\tv3,v4,v5,v6,v7,v8\n'
    text=header+''.join(f"{s['idx']}\t{s['h']}\t{s['E']}\t"+','.join(map(str,s['v']))+'\n'for s in remaining)
    (out/'final_E0_frontier.tsv').write_text(text)
    dump(out/'removed_states.json',sorted(removed,key=lambda s:s['state']))
    nexts=[dict(**s,minimum_original_signature_degree=values[s['idx']][1])for s in remaining if s['h']==112]
    res=dict(status='PASS_EARLY_NEAR16_18_H112_FRONTIER173',old_states=205,new_states=173,removed_states=sorted(remove_ids),global_new_fee_deletions=31,additional_lowest_state_deleted=1626,minimum_equality_h=112,maximum_vertical_sum=81,fixed_G_cover_upper_bound=8,EDGE8='adopted_frozen_input',COVER7_proved=False,original_n_j_absolutely_bounded=False,Lean=False,new_batch_local_round=3,other_conversations_round_count='unknown',next_lowest_states=nexts)
    dump(out/'ledger_summary.json',res);return res
