from pathlib import Path
from fractions import Fraction as F
from math import gcd
import hashlib, importlib.util, json, time

START = time.monotonic()
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[6]
OLD = ROOT / 'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/notes/zero-boundary'
CHECKER = OLD / 'check_log_certificate.py'
CERT = OLD / 'verification/20260909T090620Z/certificate.json'
spec = importlib.util.spec_from_file_location('frozen_log_checker', CHECKER)
old = importlib.util.module_from_spec(spec)
spec.loader.exec_module(old)
data = json.loads(CERT.read_text(encoding='utf-8'))
row = data['pairs'][0]
assert (row['p'],row['q']) == (2,3)
M = 2**53
assert data['M0'] == str(M) and data['terms'] == 96
idx = row['resonance_index']
u,v = (int(row['candidates'][idx][k]) for k in ('u','v'))
alpha = old.divide_boxes(old.log_interval(2,96),old.log_interval(3,96))
beta = old.divide_boxes(old.log_interval(5,96),old.log_interval(3,96))
D = 10**50
floor = lambda z: z.numerator // z.denominator
ceil = lambda z: -floor(-z)
coarsen = lambda box: (F(floor(box[0]*D),D),F(ceil(box[1]*D),D))
a = coarsen(alpha)
b = coarsen(beta)
delta = max(abs(v*a[0]-u),abs(v*a[1]-u))
k = floor(v*b[0])
gap = min(v*b[0]-k,k+1-v*b[1])
eps = gap-M*delta
assert eps >= F(1,100)
assert gcd(u,v)==1 and v>M and M*delta<F(1,2)
# exactly two certificate rows: A/C=1 and A/C=5
ratio_index_5 = sum(gcd(a0,b0)==1 for a0 in range(1,5) for b0 in range(1,65))
assert row['assignments'][0] == -1
assert row['assignments'][ratio_index_5] == idx
# Simple safe margins make the pilot checker smaller than the sharp endpoints.
delta_safe = F(ceil(delta*10**18),10**18)
gap_safe = F(floor(gap*100),100)
assert delta <= delta_safe and gap_safe <= gap and M*delta_safe+F(1,100)<=gap_safe
assert M*delta_safe<F(1,2)
inputs = {}
for p in [CHECKER,CERT,OLD/'reduction-plan.md',OLD/'README.md',HERE.parent/'huan-critical-finite-reuse-audit-5e2d13bb/REPORT.md',HERE.parent/'huan-critical-finite-reuse-audit-5e2d13bb/record.json']:
    inputs[str(p.relative_to(ROOT))] = {'sha256':hashlib.sha256(p.read_bytes()).hexdigest().upper(),'bytes':p.stat().st_size}
result = {'worker':'/root/zero_log_separation','started_utc':'2026-09-12 10:23:56 UTC','checkpoint_utc':'2026-09-12 10:43:56 UTC','status':'source_candidate_not_Lean_verified','inputs':inputs,'M0':str(M),'new_raw_exponent_cap_candidate':15359,'signed_shift_cap':6,'new_shifted_cap_candidate':15365,'sample_count':2,'p':2,'q':3,'candidate_index':idx,'u':str(u),'v':str(v),'alpha_rounded_50':[str(z) for z in a],'beta_5_rounded_50':[str(z) for z in b],'k':str(k),'delta':str(delta),'gap':str(gap),'epsilon':str(eps),'delta_safe':str(delta_safe),'gap_safe':str(gap_safe),'checks':{'nonresonant_5':True,'resonant_1':True,'coprime':gcd(u,v)==1,'v_gt_M0':v>M,'all_original_boxes_inside_rounded_boxes':all(L<=l<=h<=H for (L,H),(l,h) in [(a,alpha),(b,beta)]),'M0_is_2_pow_53':M==2**53},'initial_margin_probe':{'delta':'1/40000000000000000','gap':'49/100','status':'gap_margin_too_large','delta_comparison_passed':delta<=F(1,40000000000000000),'gap_comparison_passed':F(49,100)<=gap,'follow_up':'round_the_exact_delta_up_to_1e-18_and_gap_down_to_1e-2'},'lean_invocations':0,'full_checker_invocations':0,'git_commands':0,'elapsed_seconds':time.monotonic()-START}
qchecks = {}
for label,numerator,qbox in [('alpha23',2,a),('betaFive',5,b)]:
    nlo,nhi = old.log_interval(numerator,96)
    dlo,dhi = old.log_interval(3,96)
    qlo,qhi = qbox
    fields = [dlo>0,qlo*dlo<=nlo,qlo*dhi<=nlo,nhi<=qhi*dlo,nhi<=qhi*dhi]
    assert all(fields)
    qchecks[label] = fields
assert F(1,2)<old.log_interval(3,96)[0]
result['quotient_four_crossproduct_checks'] = qchecks
result['log_three_lower_gt_half'] = True
result['counterchecks'] = {
 'gcd_needed':{'u':2,'v':4,'M':2,'alpha':'1/2','x':2,'y':1,'linear_form':'0','coprime_check':False,'denominator_check':True,'strict_error_check':True},
 'denominator_gt_M_needed':{'u':1,'v':2,'M':2,'alpha':'1/2','x':2,'y':1,'linear_form':'0','coprime_check':True,'denominator_check':False,'strict_error_check':True},
 'strict_error_endpoint_needed':{'u':1,'v':3,'M':1,'alpha':'1/6','x':1,'y':0,'v_times_abs_form':'1/2','coprime_check':True,'denominator_check':True,'strict_error_check':False}}
assert 4*abs(2*F(1,2)-1)==0 and gcd(2,4)!=1
assert 2*abs(2*F(1,2)-1)==0 and not 2>2
assert 3*abs(F(1,6))==F(1,2) and abs(3*F(1,6)-1)==F(1,2)
result['source_candidates'] = {}
import re
all_roots=[]
for source in sorted((HERE/'lean/ZeroBoundaryLogSeparation').glob('*.lean')):
    txt=source.read_text(encoding='utf-8')
    roots=re.findall(r'^theorem\s+(\w+)',txt,re.M)
    for root in roots:
        full='Math.B699.ZeroBoundaryLogSeparation.'+root
        assert '#check ('+full+' :' in txt, full+' missing typed #check'
        assert '#print axioms '+full in txt, full+' missing axiom audit'
    assert not re.search(r'\b(sorry|admit|sorryAx|axiom)\b',txt)
    result['source_candidates'][str(source.relative_to(HERE))]={'sha256':hashlib.sha256(source.read_bytes()).hexdigest().upper(),'roots':roots,'typed_check_count':len(roots),'axiom_print_count':len(roots)}
    all_roots += ['Math.B699.ZeroBoundaryLogSeparation.'+r for r in roots]
result['static_root_audit']={'all_roots':all_roots,'count':len(all_roots),'passed':True,'is_Lean_acceptance':False}
result['external_box_candidate_sources']={}
for name in ['Definitions.lean','Pilots.lean']:
    p=HERE.parent/'huan-zero-log-boxes-5e2d13bb'/name
    result['external_box_candidate_sources'][str(p.relative_to(ROOT))]={'sha256':hashlib.sha256(p.read_bytes()).hexdigest().upper(),'status':'unverified_external_worker_candidate_snapshot'}
result['diagnostic_script_sha256']=hashlib.sha256(Path(__file__).read_bytes()).hexdigest().upper()
result['elapsed_seconds']=time.monotonic()-START
(HERE/'record.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:result[k] for k in ['M0','u','v','alpha_rounded_50','beta_5_rounded_50','k','delta_safe','gap_safe','checks','elapsed_seconds']},indent=2))