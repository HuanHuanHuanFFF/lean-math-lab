#!/usr/bin/env python3
from __future__ import annotations
import json,sys
from fractions import Fraction as F
from pathlib import Path

def Q(x):return F(str(x))
def peval(c,r):return sum(Q(a)*F(r)**i for i,a in enumerate(c))

def check_model(path):
    z=json.load(open(path));bad=0;good=0
    for q in z['queries']:
        cap=tuple(q['capacity']);remaining=q['remaining_factor_count'];avail=q['available_X']
        assert q['moment_aware_min']<=avail
        for a in q['aggregates']:
            # Re-sum the explicit signature witness.
            deg=0;cnt=0;cost=[0]*6;delta=[0]*6;kappa=[0]*6
            for w in a['witness']:
                n=w['count'];cnt+=n;deg+=n*w['e']
                for i in range(6):
                    cost[i]+=n*w['cost'][i];delta[i]+=n*w['delta'][i];kappa[i]+=n*w['kappa'][i]
            assert cnt==remaining and deg==a['degree'] and tuple(cost)==cap
            assert delta==a['delta'] and kappa==a['kappa']
            rows={x['r']:x for x in a['fixed_row_summaries']}
            fm=a['first_moment']
            if not fm['compatible']:
                bad+=1
                ws=fm['integer_weights'];labs=fm['labels'];rhs=fm['integer_rhs']
                rr=[int(s[2:-1]) for s in labs]
                assert len(ws)==len(rr)
                for j in range(3):assert sum(w*r**j for w,r in zip(ws,rr))==0
                assert sum(w*int(rows[r]['fixed_e1']) for w,r in zip(ws,rr))==rhs!=0
                assert not a['first_second_moment']['compatible']
            else:
                good+=1
                sm=a['first_second_moment'];assert sm['compatible']
                S=sm['S_coefficients'];T=sm['E2_coefficients']
                for rc in sm['row_certificate']:
                    r=rc['r'];base=rows[r];f=rc['free_count'];poly=list(map(Q,rc['free_polynomial_low_to_high']))
                    assert len(poly)==f+1 and poly[-1]==1
                    free_sum=-poly[-2] if f>=1 else F(0)
                    free_e2=poly[-3] if f>=2 else F(0)
                    assert free_sum==Q(rc['free_sum'])
                    total_s=Q(base['fixed_e1'])+free_sum
                    total_t=Q(base['fixed_e2'])+Q(base['fixed_e1'])*free_sum+free_e2
                    assert total_s==Q(rc['S'])==peval(S,r)
                    assert total_t==Q(rc['E2'])==peval(T,r)
    assert bad==z['first_moment_rejections']
    assert z['additional_second_moment_rejections']==0
    return {'bad':bad,'good':good,'states_eliminated':z['states_eliminated']}

def main(root):
    root=Path(root);c=root/'certificates'
    cur=check_model(c/'current_posttrace.json');hyp=check_model(c/'conditional_ksat2_31_posttrace.json')
    pay=json.load(open(c/'ksat2_31_payoff.json'));summary=json.load(open(c/'summary.json'))
    assert pay['states_eliminated']==0 and sum(x['gain']>0 for x in pay['gains'])==4
    assert [(x['state'],x['special_S5'],x['gain']) for x in pay['gains'] if x['gain']]==[
        ('h147a',2,1),('h147b',1,1),('h147b',2,1),('h149',2,1)]
    assert summary['actual_infinite_resource_aggregate_branches_eliminated']==cur['bad']==4
    assert summary['actual_state_eliminations']==cur['states_eliminated']==0
    assert summary['conditional_ksat2_31_state_eliminations']==hyp['states_eliminated']==0
    assert summary['second_moment_additional_rejections']==0
    print(json.dumps({'status':'PASS_INDEPENDENT_CERTIFICATE_CHECK','current':cur,'conditional':hyp},indent=2))
if __name__=='__main__':main(sys.argv[1])
