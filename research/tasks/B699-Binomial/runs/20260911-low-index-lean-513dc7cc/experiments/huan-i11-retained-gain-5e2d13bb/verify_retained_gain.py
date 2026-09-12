from pathlib import Path
from fractions import Fraction as F
from math import factorial
from datetime import datetime, timezone
import hashlib, importlib.util, json, sys
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
PLAN=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
sys.set_int_max_str_digits(20000)
result=json.loads((OUT/'retained-gain-results.json').read_text())
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
for path,h in result['source_hashes'].items():assert sha(Path(path))==h
rough=json.loads((PLAN/'D-rough-step-certificates.json').read_text())['tracks']
lookup={(x['c'],x['d'],x['delta'],x['q'],x['rho']):x for x in rough}
new=result['retained_gain'];old=result['baseline_discarded_gain']
seen=0;largest_factorial=0;rows=[]
for row in new['rows']:
    c,d=row['seed']['c'],row['seed']['d'];Lt,Lm=F(row['L_target']),F(row['L_mid'])
    for track in row['D_tracks']:
        q,rho,delta=track['q'],track['rho'],track['delta']
        source=lookup[c,d,delta,q,rho]
        kmin,K=track['k_min'],track['K_constant_step'];m=q*kmin+rho
        assert m==track['small_base_m'] and 1<=m<=2
        u,v=d*m-delta,(c-d)*m+delta-1;f=v//2
        largest_factorial=max(largest_factorial,u+f,f,u,v)
        D=F(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
        assert D==F(track['small_base_D'])
        alpha=(c+d)*q//2;eta=(c-d)*q//2
        assert (c+d)*q%2==0 and (c-d)*q%2==0
        Rinf=F(alpha**alpha*eta**eta,(d*q)**(d*q)*((c-d)*q)**((c-d)*q))
        assert Rinf==F(source['R_infinity_exact'])
        oldC=D/Lt**(d*m)*F(kmin+1,K+1)**2
        assert oldC==F(track['discarded_gain_base_origin']['initial_ratio_lower'])
        gain=(Rinf/Lt**(d*q))**(K-kmin);C=oldC*gain
        assert C==F(track['initial_ratio_lower']) and gain==F(track['retained_gain'])
        T=track['power_T'];B=track['block_B']
        assert C*2**T>=1 and (T==0 or C*2**(T-1)<1)
        R=(Lm/Lt)**(d*q)
        assert R>1 and 1+B*(R-1)>=2
        assert track['threshold_m']==q*(K+B*(T+1))+rho
        seen+=1
    reqs={k:F(v) for k,v in row['selector_requirement_terms'].items()}
    dominant=max(reqs,key=reqs.get)
    assert dominant=='height'
    assert F(row['selector_lower'])>max(reqs.values())
    assert row['D_threshold_m0']==max(t['threshold_m'] for t in row['D_tracks'])
    rows.append({'c':c,'d':d,'old_m0':row['discarded_gain_m0'],'new_m0':row['D_threshold_m0'],
                 'dominant_requirement_at_selected_height':dominant})
assert seen==12 and largest_factorial==18
assert new['weights']==old['weights'] and new['B']==old['B']==15360
assert new['S']==old['S']==640 and new['Delta']==old['Delta']==40
assert new['global_height_margin_integer']==310360
assert len(new['collision_diagnostics'])==6 and all(x['diagnostic_Delta']>0 for x in new['collision_diagnostics'])
assert result['shell_retained_gain']['shell_overlap_pair_upper_bound']==185190380
assert result['shell_retained_gain']['pair_offset_loop_upper_bound_after_shell_pruning']==3888997980
# Read only imports, guarded mains. Hash the actual helper graph without invoking generators.
spec=importlib.util.spec_from_file_location('gain_source_inventory',OUT/'check_retained_gain.py')
module=importlib.util.module_from_spec(spec);sys.modules[spec.name]=module;spec.loader.exec_module(module)
repo=RUN.parents[4]
helper_paths=set()
for mod in list(sys.modules.values()):
    name=getattr(mod,'__file__',None)
    if name:
        p=Path(name).resolve()
        if p.suffix=='.py' and repo in p.parents:helper_paths.add(p)
source_paths=set(Path(x) for x in result['source_hashes'])|helper_paths
source_paths|={PLAN/'qe-certificates'/f'row-{i:02d}.json' for i in range(5)}
source_paths.add(RUN/'lean/Growth/ElementaryRate.lean')
source_map={'utc':datetime.now(timezone.utc).isoformat(),'status':'read-only source identity; no assertion of new Lean acceptance',
 'direct_source_hashes_from_executed_check':result['source_hashes'],
 'all_recorded_sources':{str(p.relative_to(repo)):sha(p) for p in sorted(source_paths) if p.exists()},
 'generic_Lean_interface':'ElementaryRate.lower_telescoping_from_step preserves R^n; no generic modification is required',
 'source_change_scope':'No frozen source or integrated Lean file modified.'}
(OUT/'SOURCE_MAP.json').write_text(json.dumps(source_map,indent=2)+'\n',encoding='utf-8')
check={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS: independent exact base reconstruction and minimal binary exponents',
 'result_sha256':sha(OUT/'retained-gain-results.json'),'actual_initial_D_tracks':seen,'largest_initial_factorial_argument':largest_factorial,
 'minimal_T_checked':seen,'Bernoulli_block_checks':seen,'rows':rows,
 'all_five_selected_height_requirements_are_height':True,
 'worker_lean_invocations':0,'large_CRT_run':False,'D_at_K_evaluated':False,'new_original_indices':[]}
(OUT/'independent-check.json').write_text(json.dumps(check,indent=2)+'\n',encoding='utf-8')
print(json.dumps(check,indent=2))
