from pathlib import Path
from datetime import datetime,timezone
from math import factorial,prod
import importlib.util,json,sys,hashlib,time
OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
PLAN=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
SOURCE=PLAN/'tune_height_weights.py';spec=importlib.util.spec_from_file_location('K_only_height_diagnostic',SOURCE)
tune=importlib.util.module_from_spec(spec);sys.modules[spec.name]=tune;spec.loader.exec_module(tune)
original=json.loads((PLAN/'FINAL_PLAN.json').read_text())['selected_plan']
assert original['B']==15360 and original['S']==640 and [r['D_threshold_m0'] for r in original['rows']]==[141,224,160,129,149]
started=time.perf_counter();K=2**(2*sum(range(1,8)))*prod(factorial(h) for h in range(1,8))**2*prod(factorial(h) for h in range(1,8))
assert K==142131407644347048724404082572664265244672000000000
k=K.bit_length()-1;assert 2**k<=K<2**(k+1)
def evaluate(B,keepK,fixed):
    if fixed:
        try:checks=[tune.finite.at_height(row,B) for row in original['rows']]
        except AssertionError:return {'B':B,'feasible':False,'reason':'fixed original weights fail a local finite-height condition'}
        S=640;Delta=40;weights=original['weights']
        oldmargin=B*Delta-1000*11*factorial(11).bit_length()-11*(1000+S)
    else:
        r=tune.examine(B)
        if 'Delta' not in r:return dict(r)
        S,Delta,weights,oldmargin=r['S'],r['Delta'],r['weights'],r['global_height_margin_integer']
    margin=oldmargin+(1000*k if keepK else 0)
    return {'B':B,'feasible':Delta>0 and margin>0,'S':S,'Delta':Delta,'weights':weights,
            'global_margin':margin,'old_global_margin':oldmargin,'retained_K_bits':k if keepK else 0}
def solve(keepK,fixed):
    lo,hi=2,17408;assert not evaluate(lo,keepK,fixed)['feasible'] and evaluate(hi,keepK,fixed)['feasible']
    while hi-lo>1:
        mid=(lo+hi)//2
        if evaluate(mid,keepK,fixed)['feasible']:hi=mid
        else:lo=mid
    assert not evaluate(hi-1,keepK,fixed)['feasible']
    return evaluate(hi,keepK,fixed)
result={'utc':datetime.now(timezone.utc).isoformat(),'status':'single bounded K-only height diagnostic; original proof plan unchanged',
 'actual_K':str(K),'K_lower_bit':k,'exact_bit_bracket':True,'log2_K_lower_contribution_1000':1000*k,
 'fixed_original_weights':{'discard_K':solve(False,True),'retain_K':solve(True,True)},
 'same_original_L_m0_reweighted_selector':{'discard_K':solve(False,False),'retain_K':solve(True,False)},
 'source_sha256':{str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in [SOURCE,PLAN/'FINAL_PLAN.json',PLAN/'find_finite_parameters.py',RUN.parent/'20260909-low-index-structure-b41a5a63/lean/ThreeWindowSize.lean']},
 'searched_B_interval':[2,17408],'no_new_L_cd_or_m0_search':True,'main_B15360_and_weighted_product_candidate_unchanged':True,
 'seconds':time.perf_counter()-started,'worker_lean_invocations':0,'CRT_pairs_enumerated':0,'new_original_indices':[]}
assert result['same_original_L_m0_reweighted_selector']['discard_K']['B']==15148
for key in ['fixed_original_weights','same_original_L_m0_reweighted_selector']:
 assert result[key]['retain_K']['B']<=result[key]['discard_K']['B']
(OUT/'K-height-diagnostic.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in result.items() if k!='source_sha256'},indent=2))
