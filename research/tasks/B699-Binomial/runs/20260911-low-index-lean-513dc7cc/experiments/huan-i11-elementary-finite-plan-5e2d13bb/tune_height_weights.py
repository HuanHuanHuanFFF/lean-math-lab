from pathlib import Path
from fractions import Fraction as F
from math import factorial,floor
from datetime import datetime,timezone
import copy,hashlib,importlib.util,itertools,json,sys,time
OUT=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('i11_fixed_L_plan',OUT/'find_finite_parameters.py')
finite=importlib.util.module_from_spec(spec);sys.modules[spec.name]=finite;spec.loader.exec_module(finite)
ri,logq=finite.ri,finite.logq
SOURCE=OUT/'finite-plan-results.json'
raw=json.loads(SOURCE.read_text());base=raw['selected_plan']
assert base['uniform_weight_reduction']==6 and base['suggested_height_bits_n']==17408
qedata=[json.loads((OUT/row['qe_certificate_file']).read_text()) for row in base['rows']]
PRIMES=[2,3,5,7]


def examine(B,keep_rows=False):
    H=B-1;l2=logq(2);rows=[]
    for original,kernel in zip(base['rows'],qedata):
        row=copy.deepcopy(original);seed=row['seed'];c=seed['c']
        P,Q=seed['p']**seed['k0'],seed['q']**seed['l0'];lp,lq=logq(P),logq(Q)
        Tlo,Thi=F(row['T']['lo']),F(row['T']['hi']);e3lo=F(row['ell3']['lo'])
        CQ,CE=F(row['max_CQ']),F(row['max_CE'])
        reqs={'G_start':F(row['D_threshold_m0']+1)/(H*l2.lo),
              'coefficient':(1+logq(48*max(F(1),CQ)).hi/e3lo)/(H*l2.lo),
              'height':(1+(Thi+logq(4*max(F(1),CE)).hi)/(H*l2.lo))/Tlo}
        required=max(reqs.values())
        weights=[ri.ceilq(1000*(1-c*ell.hi*required))-1 for ell in (lp,lq)]
        if min(weights)<0:
            return {'B':B,'feasible':False,'reason':'a row has no nonnegative joint weight at this height','row':len(rows)}
        assert all(w<=kernel['seed_row'][key] for w,key in zip(weights,('wp','wq')))
        selector=min(F(1000-weights[0],1000)/(c*lp.hi),F(1000-weights[1],1000)/(c*lq.hi))
        assert selector>required
        row['parameter_proposal_origin']={'uniform_reduction':6,'original_wp':original['wp'],'original_wq':original['wq'],
                                           'L_target':original['L_target'],'L_mid':original['L_mid']}
        for key in ['initial_rate_allowance','target_loss_fraction','mid_loss_fraction','minimum_integer_H_Y','required_H_log2_Y_bounds']:
            row.pop(key,None)
        row.update({'wp':weights[0],'wq':weights[1],'selector_lower':str(selector),
                    'selector_required_at_height':str(required),'selector_requirement_terms':{k:str(v) for k,v in reqs.items()},
                    'height_leading_gap_lower':str(selector*Tlo-1)})
        row['verified_height_arithmetic']=finite.at_height(row,B)
        rows.append(row)
    cuts=[dict(row['seed'],weights=[row['wp'],row['wq']]) for row in rows]
    corners=list(finite.g.consumer.corners(PRIMES,cuts,'weights'))
    S,mask,x=min((sum(x),mask,x) for mask,x in corners)
    Delta=11*(7000+S)-84000
    global_margin=B*Delta-1000*11*factorial(11).bit_length()-11*(1000+S)
    out={'B':B,'feasible':global_margin>0,'S':S,'Delta':Delta,'global_height_margin_integer':global_margin,
         'orientation_witness':{'mask':mask,'x':dict(zip(PRIMES,x))},'weights':[[r['wp'],r['wq']] for r in rows]}
    if keep_rows:
        collisions=[]
        for p,q in itertools.combinations(range(4),2):
            sigma,cm,cx=min((sum(x)+max(0,1000-x[p]-x[q]),m,x) for m,x in corners)
            assert sigma>=S
            collisions.append({'pair':[PRIMES[p],PRIMES[q]],'sigma':sigma,
                               'diagnostic_Delta':11*(7000+sigma)-84000,
                               'witness':{'mask':cm,'x':dict(zip(PRIMES,cx))}})
        out['rows']=rows;out['collision_diagnostics']=collisions
    return out


def main():
    started=time.perf_counter();checks=[]
    lo,hi=2,17408
    low=examine(lo);high=examine(hi)
    assert not low['feasible'] and high['feasible']
    checks.extend([low,high])
    while hi-lo>1:
        mid=(lo+hi)//2;result=examine(mid);checks.append(result)
        if result['feasible']:hi=mid
        else:lo=mid
    minimal=examine(hi,True);assert minimal['feasible'] and not examine(hi-1)['feasible']
    rounded=((hi+1023)//1024)*1024
    selected=examine(rounded,True);assert selected['feasible']
    selected.update({'r':3,'s':7,'lambda':11,'E':84,'all_orientations':32,
                     'coverage_sizing':finite.coverage(rounded,selected['S'],selected['Delta'])})
    result={'utc':datetime.now(timezone.utc).isoformat(),'status':'finite exact joint weights at fixed rational L values; not Lean accepted',
            'source_uniform_plan_sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest(),
            'source_uniform_reduction':6,'source_uniform_height_bits':17408,
            'search_range_bits':[2,17408],'only_L_values_of_original_selected_plan_used':True,
            'monotonicity_reason':'all selector requirements decrease with B, so both joint weights increase; global margin is increasing in B and in S once feasible',
            'checks':checks,'minimum_integer_B_in_this_fixed_L_plan':hi,'minimal_plan':minimal,'selected_plan':selected,
            'uniform_plan_coverage':base['coverage_sizing'],
            'baseline_4096_coverage':base['coverage_sizing_original_4096'],
            'seconds':time.perf_counter()-started,'worker_lean_invocations':0,'new_original_indices':[]}
    (OUT/'finite-height-joint-tuning.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'minimum_B':hi,'selected_B':rounded,'S':selected['S'],'Delta':selected['Delta'],
                      'global_margin':selected['global_height_margin_integer'],'weights':selected['weights'],
                      'm0':[r['D_threshold_m0'] for r in selected['rows']],
                      'local_height_margins':[r['verified_height_arithmetic']['display'] for r in selected['rows']],
                      'coverage':selected['coverage_sizing'],'seconds':result['seconds']},indent=2))

if __name__=='__main__':main()
