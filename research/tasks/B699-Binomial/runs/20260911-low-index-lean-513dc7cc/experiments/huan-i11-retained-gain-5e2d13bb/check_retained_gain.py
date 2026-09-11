from pathlib import Path
from fractions import Fraction as F
from datetime import datetime,timezone
import copy,hashlib,importlib.util,json,sys,time
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
PLAN=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
SHELL=RUN/'experiments/huan-i11-coverage-feasibility-5e2d13bb'
sys.set_int_max_str_digits(20000)


def load(name,path):
    spec=importlib.util.spec_from_file_location(name,path)
    mod=importlib.util.module_from_spec(spec);sys.modules[name]=mod;spec.loader.exec_module(mod)
    return mod

tune=load('retained_gain_selector',PLAN/'tune_height_weights.py')
ri=tune.ri
rough=json.loads((PLAN/'D-rough-step-certificates.json').read_text())['tracks']
lookup={(r['c'],r['d'],r['delta'],r['q'],r['rho']):r for r in rough}
original=copy.deepcopy(tune.base)


def binary_power(C):
    t=max(0,C.denominator.bit_length()-C.numerator.bit_length())
    while C*2**t<1:t+=1
    while t>0 and C*2**(t-1)>=1:t-=1
    assert C*2**t>=1 and (t==0 or C*2**(t-1)<1)
    return t


def solve(base):
    tune.base=base
    lo,hi=2,17408;checks=[]
    assert not tune.examine(lo)['feasible'] and tune.examine(hi)['feasible']
    while hi-lo>1:
        mid=(lo+hi)//2;r=tune.examine(mid);checks.append(r)
        if r['feasible']:hi=mid
        else:lo=mid
    assert tune.examine(hi)['feasible'] and not tune.examine(hi-1)['feasible']
    rounded=((hi+1023)//1024)*1024
    result=tune.examine(rounded,True)
    assert result['feasible']
    result.update({'minimum_integer_B':hi,'rounded_B':rounded,'r':3,'s':7,'lambda':11,'E':84,
                   'search_checks':checks})
    return result


def main():
    started=time.perf_counter()
    baseline=solve(copy.deepcopy(original))
    frozen=json.loads((PLAN/'FINAL_PLAN.json').read_text())['selected_plan']
    assert baseline['B']==frozen['B']==15360 and baseline['minimum_integer_B']==15148
    assert baseline['weights']==frozen['weights'] and baseline['S']==640
    improved=copy.deepcopy(original);gain_rows=[];max_num=0;max_den=0;gain_bytes=0
    for row in improved['rows']:
        c,d=row['seed']['c'],row['seed']['d'];Lt=F(row['L_target'])
        for track in row['D_tracks']:
            source=lookup[c,d,track['delta'],track['q'],track['rho']]
            K,kmin=track['K_constant_step'],source['k_min'];q=track['q'];n=K-kmin
            ratio=F(source['R_infinity_exact'])/Lt**(d*q)
            assert ratio>1 and 0<=n<=43
            gain=ratio**n
            num_bits,den_bits=gain.numerator.bit_length(),gain.denominator.bit_length()
            assert max(num_bits,den_bits)<65536
            old_C=F(track['initial_ratio_lower']);new_C=old_C*gain
            t_old=track['power_T'];t_new=binary_power(new_C)
            assert t_new<=t_old
            B=track['block_B'];old_m0=track['threshold_m'];new_m0=q*(K+(t_new+1)*B)+track['rho']
            assert new_m0<=old_m0
            fields={'c':c,'d':d,'delta':track['delta'],'q':q,'rho':track['rho'],'K':K,'k_min':kmin,
                    'exponent_K_minus_kmin':n,'ratio_Rinf_over_Lt_dq':str(ratio),'retained_gain':str(gain),
                    'gain_numerator_bits':num_bits,'gain_denominator_bits':den_bits,
                    'discarded_base':str(old_C),'retained_base':str(new_C),
                    'retained_base_numerator_bits':new_C.numerator.bit_length(),'retained_base_denominator_bits':new_C.denominator.bit_length(),
                    'old_T':t_old,'new_minimal_T':t_new,'block_B':B,'old_threshold_m':old_m0,'new_threshold_m':new_m0}
            gain_rows.append(fields);gain_bytes+=len(str(gain).encode())
            max_num=max(max_num,num_bits);max_den=max(max_den,den_bits)
            track['discarded_gain_base_origin']={'initial_ratio_lower':track['initial_ratio_lower'],'power_T':t_old,'threshold_m':old_m0}
            track.update({'retained_gain':str(gain),'retained_gain_exponent':n,'initial_ratio_lower':str(new_C),
                          'power_T':t_new,'initial_lower_times_2powT':str(new_C*2**t_new),'threshold_m':new_m0})
        row['discarded_gain_m0']=row['D_threshold_m0']
        row['D_threshold_m0']=max(r['threshold_m'] for r in row['D_tracks'])
    gained=solve(improved)
    assert gained['minimum_integer_B']<=baseline['minimum_integer_B'] and gained['B']<=baseline['B']
    # This function only builds and counts conservative shells, never CRT pairs.
    stats=load('retained_gain_shell_stats',SHELL/'structure_stats.py')
    old_stats=json.loads((SHELL/'full.json').read_text())['statistics']
    assert old_stats['B']==baseline['B'] and old_stats['pair_offset_loop_upper_bound_after_shell_pruning']==3888997980
    new_stats=stats.run(gained['B'],30,50000,500000)
    assert new_stats['pair_offset_loop_upper_bound_after_shell_pruning']<=old_stats['pair_offset_loop_upper_bound_after_shell_pruning']
    sources=[PLAN/'FINAL_PLAN.json',PLAN/'finite-plan-results.json',PLAN/'D-rough-step-certificates.json',
             PLAN/'tune_height_weights.py',PLAN/'find_finite_parameters.py',SHELL/'structure_stats.py',SHELL/'full.json']
    source_hashes={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources}
    payload={'utc':datetime.now(timezone.utc).isoformat(),'status':'exact bounded retained-gain and finite-selector comparison; no Lean or CRT',
             'start_utc':'2026-09-11T10:56:01Z','checkpoint_utc':'2026-09-11T11:16:01Z',
             'source_hashes':source_hashes,'gain_tracks':gain_rows,
             'gain_size':{'maximum_numerator_bits':max_num,'maximum_denominator_bits':max_den,
                          'gain_numerator_denominator_decimal_bytes':gain_bytes,'maximum_exponent':max(r['exponent_K_minus_kmin'] for r in gain_rows)},
             'baseline_discarded_gain':baseline,'retained_gain':gained,
             'shell_baseline_source_sha256':hashlib.sha256((SHELL/'full.json').read_bytes()).hexdigest(),
             'shell_baseline':old_stats,'shell_retained_gain':new_stats,
             'only_base_gain_and_resulting_T_m0_weights_height_changed':True,
             'D_at_K_evaluated':False,'L_or_cd_search':False,'large_CRT_run':False,'worker_lean_invocations':0,
             'seconds':time.perf_counter()-started,'new_original_indices':[]}
    (OUT/'retained-gain-results.json').write_text(json.dumps(payload,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'gain_size':payload['gain_size'],'tracks':[{k:r[k] for k in ('c','d','delta','q','rho','old_T','new_minimal_T','old_threshold_m','new_threshold_m')} for r in gain_rows],
                      'baseline':{'Bmin':baseline['minimum_integer_B'],'B':baseline['B'],'S':baseline['S'],'Delta':baseline['Delta']},
                      'new':{'Bmin':gained['minimum_integer_B'],'B':gained['B'],'S':gained['S'],'Delta':gained['Delta'],'weights':gained['weights'],
                             'm0':[r['D_threshold_m0'] for r in gained['rows']]},
                      'shell_steps_old':old_stats['pair_offset_loop_upper_bound_after_shell_pruning'],
                      'shell_steps_new':new_stats['pair_offset_loop_upper_bound_after_shell_pruning'],
                      'shell_pairs_new':new_stats['shell_overlap_pair_upper_bound'],
                      'peak_memory':new_stats['resource_actual']['peak_working_set_bytes'],'seconds':payload['seconds']},indent=2))

if __name__=='__main__':main()
