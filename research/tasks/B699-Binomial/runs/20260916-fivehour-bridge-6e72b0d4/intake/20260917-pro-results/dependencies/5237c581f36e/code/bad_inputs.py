"""Reject invalid consumers, and retain counterexamples to unjustified proof strengthenings."""
from fractions import Fraction as Q
from pathlib import Path
from math import gcd,comb
import json,sys
from common import kernel_gate,row_gate,content,eval_poly,residual

def run():
    rejected=[]
    bad_kernel=[('T_one',(1,1,1,100)),('zero_head',(5,0,1,100)),('head_not_below_T',(5,5,1,100)),
                ('zero_tail',(5,1,0,100)),('first_gate',(11,8,1,7)),('second_gate',(5,4,24,237))]
    for name,ps in bad_kernel:
        assert not kernel_gate(*ps);rejected.append(name)
    bad_row=[('composite_source',(9,1,2,1,5)),('source_two',(2,1,1,1,8)),
             ('isolated_three',(3,1,1,1,8)),('tail_divisible_source',(5,1,2,5,8)),
             ('zero_f',(5,0,1,1,8)),('zero_e',(5,1,1,1,0))]
    for name,ps in bad_row:
        assert not row_gate(*ps);rejected.append(name)
    assert eval_poly([0,0,-2,4],Q(1,2))==0
    rejected.append('rational_root_claim_without_odd_quadratic_coefficient')
    _,H,L,ps=content(28,14)
    assert eval_poly(ps,Q(1,3))==0 and L==18
    _,_,q,R=residual(28,14,3,1)
    assert R==0 and q==20
    rejected.append('nonzero_residual_without_NC')
    _,_,q,R=residual(3916,1045,4,1)
    assert q==53 and (9-q)/11==-4 and R==13376
    assert R%(6*11*(3916-2))!=0
    rejected+=['assuming_nonnegative_lift','content_divisibility_without_NC']
    assert 11%27>56%27 and not 11%9>56%9
    assert gcd(comb(56,3),comb(56,11))==840
    rejected.append('replacing_complete_27_by_9')
    p=11;x=p**3
    assert not kernel_gate(p,p-1,(p-1)*(x+1),x*x)
    rejected.append('claiming_all_three_digit_gaps_covered')
    return {'status':'PASS','rejected_or_counterexample_variants':rejected,'count':len(rejected),
            'scope':'consumer-domain regression and exact counterexamples to intermediate strengthenings; not formal proof verification'}
if __name__=='__main__':
    out=run();Path(sys.argv[1]).write_text(json.dumps(out,indent=2,sort_keys=True)+'\n');print('PASS invalid variants',out['count'])
