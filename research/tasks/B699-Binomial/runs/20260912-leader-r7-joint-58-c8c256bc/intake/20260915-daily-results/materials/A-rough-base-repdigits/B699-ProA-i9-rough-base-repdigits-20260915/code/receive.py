"""Checks only the finite obligations for this round, with integer/Fraction arithmetic.
It does not prove the adopted mathematical contracts or the entire paper argument.
"""
from pathlib import Path
from fractions import Fraction as F
from math import gcd
import json,sys,time
from core import degree_case,source_conditions
ROOT=Path(__file__).resolve().parents[1]

def check(c: dict) -> dict:
    count=0
    def must(b: bool, label: str):
        nonlocal count
        count+=1
        if not b: raise ValueError(label)
    must(c['schema']=='A_ROUGH_BASE_REPDIGITS_V1','schema')
    must(c['scope']=={'base_min':11,'coprime_to':210,'C_min':1,'C_strictly_less_than_B':True,'e_min':1,'k_min':1,'t_min':2,'n_multiple':400},'exact proved scope')
    a=c['adopted'];rho=F(*a['rho']);u=c['uniform'];h=c['source_bound']
    must(rho==F(463,5000),'frozen PC, not a newly supplied stronger cut')
    must(a['scalar_R']==171603713767500 and a['scalar_R']<2**48<400**7,'SC constant and position contradiction')
    must(a['finite_exponent']==4096 and a['cut_entry_exponent']==14000001 and a['old_math_replays']==0,'adopted execution/height boundary')
    expected={(r,s) for r in range(1,9) for s in range(1,9) if r!=s}
    keys=[(x['r'],x['s']) for x in c['positions']]
    must(len(keys)==len(set(keys)) and set(keys)==expected,'all56 positions exactly once')
    for x in c['positions']:
        r,s=x['r'],x['s'];w=12-max(r,s)
        must(x['w']==w,'weight')
        ne=6-r-s-rho*w;ce=r+s-6+rho*w
        must(F(*x['n_exponent'])==ne,'position n exponent')
        must(F(*x['constant_exponent'])==ce,'position constant exponent')
        must(ne<=F(1037,500) and ce<12,'universal bound over positions')
    must(u=={'g_exponent':6000,'n_exponent':1037,'constant_power2':306000,'position_constant_upper':12,'per_row_loss':840,'loss_exponent':60},'U coefficients')
    must(840<2**10 and (12+60*10)*500==306000 and 12*500==6000,'integer U exponent computation')
    rr=c['residue_classes'];rk=[(x['k_mod4'],x['t_mod4']) for x in rr]
    must(len(rk)==16 and len(set(rk))==16 and set(rk)=={(a,b) for a in range(4) for b in range(4)},'complete mod4 partition')
    for x in rr:
        k=x['k_mod4'] or 4;t=x['t_mod4'] or 4
        if t==1:t=5
        must(x['d']==degree_case(k,t),'case degree')
    types=c['types'];must(sorted((x['d'],x['D_min']) for x in types)==[(0,2),(1,2),(2,3),(3,4)],'exact type minima')
    for x in types:
        d,m=x['d'],x['D_min']
        must(4963*m-6000*d-1037 >= 163*(m+1),'base of affine delta bound')
    must(4963-163>0,'affine delta bound for all larger D')
    must(h['smooth_factor']==2*h['three_seven_cap']==42 and h['three_seven_cap']==21,'complete 3/7 loss')
    must(42<2**h['smooth_factor_power2_upper'] and h['smooth_factor_power2_upper']==6,'S7 constant')
    must(h['denominator_delta_slope']==6000-1037==4963 and h['delta_d_coefficient']==6000 and h['delta_constant']==1037,'derive delta, including C<B')
    must(h['pre_kt_power2']==306000+6*6000==342000,'cofactor to source inequality')
    must(h['D_first_impossible']==30 and h['D_max']==29,'D range is not a chosen scan cap')
    must(h['D_induction_LHS_step']==3*4963==14889,'base>8 exponent')
    must(h['D_induction_offset']==3*(3*6000+1037)+342000+6000==405111,'D induction offset')
    must(h['D_RHS_exponent']==6000 and h['D_base_exponent']==14889*30-405111==41559,'D base')
    must(30<32 and h['D_base_rhs_log_bound']==5*6000==30000 and 41559>30000,'D=30 impossible exactly')
    must(14889>6000,'D induction ratio for every next integer')
    must(2*29==58<2**h['kt_power2_upper'] and h['kt_power2_upper']==6,'kt bound')
    must(h['delta_ratio']==163 and h['last_B_power2']==342000+6*6000==378000,'final B exponent')
    must(h['last_n_power2']==378000+163==378163,'n<2 B^(D+1)')
    must(h['n_height_exponent']==2321 and 2321*163==378323>378163 and 2321<4096,'final contradiction, not global height')
    for x in c['examples']:
        must(source_conditions(x['B'],x['C'],x['e'],x['k'],x['t']),'source example satisfies all hypotheses')
    return {'status':'PASS_NEW_ROUGH_BASE_REPDIGIT_FINITE_OBLIGATIONS','finite_assertions':count,'ordered_positions':56,'residue_classes':16,'affine_types':4,'historical_math_replays':0,'lean':False,'independent_external_review':False}

if __name__=='__main__':
    st=time.perf_counter();data=json.loads((ROOT/'evidence/certificate.json').read_text());out=check(data);out['seconds']=time.perf_counter()-st
    dest=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT/'logs/acceptance.json'
    dest.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n');print(json.dumps(out,ensure_ascii=False))
