"""Bounded read-only input audit; writes results only beside this script.

No Lean, full certificate checker, CF generation, exponent-family scan or Git.
Fixed work: 3 M64 comparisons; 130 tiny rational log-box comparisons; 3 old
log assignment samples; 2 existing cubic blocks at widths 10/33; 2 fresh blocks.
"""
from datetime import datetime, timezone
from fractions import Fraction as F
from hashlib import sha256
from math import factorial, gcd, isqrt
from pathlib import Path
import json
import time

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[1]
ROOT = RUN.parents[4]
OLD = RUN.parent / '20260909-low-index-structure-b41a5a63' / 'notes/zero-boundary'
MATH = Path('D:/CodingProject/Math/.lake/packages/mathlib')


def digest(path):
    return sha256(path.read_bytes()).hexdigest().upper()


def load(path):
    return json.loads(path.read_text(encoding='utf-8-sig'))


def box(z, terms, sharp=True):
    partial = sum((2 * z ** (2*k+1) / (2*k+1) for k in range(terms)), F(0))
    tail = 2 * z ** (2*terms+1) / (1-z*z)
    if sharp:
        tail /= 2*terms+1
    return partial, partial+tail


def logbox(a, terms=96):
    k = a.bit_length()-1
    power = 1 << k
    lo2, hi2 = box(F(1, 3), terms)
    lo, hi = box(F(a-power, a+power), terms)
    return k*lo2+lo, k*hi2+hi


def divbox(a, b):
    assert b[0] > 0
    corners = [x/y for x in a for y in b]
    return min(corners), max(corners)


def distance_lower(bounds):
    lo, hi = bounds
    ceil_lo = -((-lo.numerator)//lo.denominator)
    floor_hi = hi.numerator//hi.denominator
    if ceil_lo <= floor_hi:
        return F(0)
    return min(lo-(lo.numerator//lo.denominator), -((-hi.numerator)//hi.denominator)-hi)


def ilog(n, p):
    lo, hi = 0, n.bit_length()+1
    while hi-lo > 1:
        mid = (hi+lo)//2
        if p**mid <= n:
            lo = mid
        else:
            hi = mid
    return lo


def inspect_block(p, q, row, w, provenance):
    u, L, b0, v = (int(row[k]) for k in ['u', 'L', 'b0', 'v'])
    P, Q = p**u, q**b0
    bound = p**(u+3*L)
    failures = []
    minrho = Q
    for d in range(-w, w+1):
        rho = (v*d) % Q or Q
        minrho = min(minrho, rho)
        if rho*rho <= bound:
            failures.append(d)
    return dict(p=p,q=q,u=u,L=L,b0=b0,w=w,source=provenance,
                metadata_ok=(u>=1 and b0>=1 and w<P and Q**3<=(P-w)**2 and P*v%Q==1),
                signed_checks=2*w+1,failed_displacements=failures,
                passes=not failures and Q**3<=(P-w)**2 and P*v%Q==1,
                largest_integer_bits=max(bound.bit_length(),(Q**3).bit_length()),
                maximal_admissible_L=(ilog(minrho*minrho-1,p)-u)//3 if minrho>1 else -1)


def fresh_block(p, q, u):
    P = p**u
    b0 = ilog((P-33)**2, q)//3
    Q = q**b0
    v = pow(P,-1,Q)
    minrho = min((v*d)%Q or Q for d in range(-33,34))
    L = (ilog(minrho*minrho-1,p)-u)//3 if minrho>1 else -1
    return dict(p=p,q=q,u=u,b0=b0,w=33,maximal_admissible_L=L,
                one_block_possible=L>=0,low_cut_83=(p**(3*(u-1))<((1<<83)-33)**2),
                signed_checks=67,largest_integer_bits=max((Q**3).bit_length(),P.bit_length()))


def main():
    ts=time.perf_counter()
    frozen=load(OLD/'manifest.json')
    hashes=[]
    for name, expected in frozen['frozen_expected_hashes'].items():
        actual=digest(OLD/name)
        hashes.append(dict(path=(OLD/name).relative_to(ROOT).as_posix(),expected=expected,actual=actual,equal=actual==expected))
    assert all(x['equal'] for x in hashes)
    mrows=[]
    for old in load(OLD/'M64-certificates.json')['rows']:
        i,t=old['i'],old['t'];s=2*t+1;lam=i+1
        K=2**(s*(s+1))
        for j in range(1,s+1):K*=factorial(j)**2
        for j in range(1,2*t+1):K*=factorial(j)
        left=(2*factorial(i))**lam;right=K*64**(lam*(t-1))
        assert str(left)==old['left'] and str(right)==old['right'] and left<=right
        mrows.append(dict(i=i,t=t,r=t,s=s,lam=lam,d=0,K_bits=K.bit_length(),left_bits=left.bit_length(),right_bits=right.bit_length(),holds=True))
    # Only fixed m=100,102,104 trials. Preserve the failed m=100 attempt.
    box_attempts=[]
    for api_terms in [100,102,104]:
        boxes=[]
        for label,z in [('log2',F(1,3))]+[(str(a),F(a-(1<<(a.bit_length()-1)),a+(1<<(a.bit_length()-1)))) for a in range(1,65)]:
            lo96,hi96=box(z,96,True)
            lo_api,hi_api=box(z,api_terms,False)
            assert 0<=z<=F(1,3)
            boxes.append(dict(label=label,z=str(z),lower96_le_lower_api=lo96<=lo_api,coarse_upper_api_le_old_sharp_upper96=hi_api<=hi96,
                              positive_slack=hi_api<hi96,max_fraction_bits=max(lo96.numerator.bit_length(),lo96.denominator.bit_length(),hi_api.numerator.bit_length(),hi_api.denominator.bit_length())))
        failed=[x['label'] for x in boxes if not (x['lower96_le_lower_api'] and x['coarse_upper_api_le_old_sharp_upper96'])]
        box_attempts.append(dict(mathlib_terms=api_terms,failed_labels=failed,all_passed=not failed,checks=boxes))
        if not failed:break
    assert box_attempts[-1]['all_passed']
    certificate=load(OLD/'verification/20260909T090620Z/certificate.json')
    assert int(certificate['M0'])==2**53
    pair=certificate['pairs'][0]
    assert (pair['p'],pair['q'])==(2,3)
    tau=divbox(logbox(2),logbox(3))
    samples=[]
    ratios=[(a,b) for a in range(1,65) for b in range(1,65) if gcd(a,b)==1]
    for a,b in [(5,1),(1,5),(5,7)]:
        choice=pair['assignments'][ratios.index((a,b))]
        assert choice>=0
        c=pair['candidates'][choice];u,v=int(c['u']),int(c['v'])
        delta=max(abs(v*tau[0]-u),abs(v*tau[1]-u))
        abox,bbox=logbox(a),logbox(b)
        mu=divbox((abox[0]-bbox[1],abox[1]-bbox[0]),logbox(3))
        dist=distance_lower((v*mu[0],v*mu[1]))
        eold=dist-2**53*delta;enew=dist-15365*delta
        assert eold>=F(1,100) and enew>=eold
        samples.append(dict(p=2,q=3,a=a,b=b,assignment=choice,u=str(u),v=str(v),old_epsilon_ge_one_hundredth=True,new_epsilon_not_smaller=True,
                            epsilon_lower_gt=str((eold.numerator*1000000)//eold.denominator)+'/1000000'))
    cres=pair['candidates'][pair['resonance_index']];ur,vr=int(cres['u']),int(cres['v'])
    dr=max(abs(vr*tau[0]-ur),abs(vr*tau[1]-ur))
    assert gcd(ur,vr)==1 and vr>2**53 and dr<F(1,2*(2**53))
    cmap_path=RUN/'experiments/huan-i11-cubic-data-consumers-5e2d13bb/cover-blockdatum-map.json'
    cp=load(cmap_path)['pairs'][0]
    assert (cp['p'],cp['q'])==(2,3)
    cubic=[]
    for index in [0,len(cp['rows'])-1]:
        for width in [10,33]:
            cubic.append(inspect_block(2,3,cp['rows'][index],width,f'old_pair23_row_{index}'))
    newblocks=[fresh_block(2,3,56),fresh_block(29,31,12)]
    source_paths=[OLD/'manifest.json',OLD/'candidate-chain.md',OLD/'reduction-plan.md',
        RUN.parent/'20260909-low-index-structure-b41a5a63/lean/CofactorCover.lean',
        RUN.parent/'20260909-low-index-structure-b41a5a63/lean/SmallPrimeLocalization.lean',
        RUN.parent/'20260909-low-index-structure-b41a5a63/lean/SmallPowerIntervals.lean',
        RUN.parent/'20260909-low-index-structure-b41a5a63/lean/PrimePowerEnumeration.lean',
        RUN.parent/'20260909-low-index-structure-b41a5a63/lean/FiniteCover.lean',
        RUN/'lean/CriticalPadeHeight/Final.lean',RUN/'lean/CubicCover/Pair.lean',RUN/'lean/CubicBlock/Checker.lean',
        RUN/'lean/CrtGrid/Cell.lean',RUN/'lean/I11CrtStep/Meta.lean',cmap_path,
        RUN/'experiments/huan-critical-height-three-indices-5e2d13bb/route.json',
        RUN/'experiments/huan-critical-height-three-indices-5e2d13bb/REPORT.md']
    sources=[dict(path=p.relative_to(ROOT).as_posix(),bytes=p.stat().st_size,sha256=digest(p)) for p in source_paths]
    mathlibs=[]
    for module in ['Mathlib/Analysis/SpecialFunctions/Log/Basic','Mathlib/Analysis/SpecialFunctions/Log/Deriv']:
        p=MATH/(module+'.lean');o=MATH/'.lake/build/lib/lean'/(module+'.olean')
        mathlibs.append(dict(module=module.replace('/','.'),source=str(p),sha256=digest(p),olean=str(o),olean_exists=o.is_file(),olean_bytes=o.stat().st_size if o.exists() else None))
    report=dict(utc=datetime.now(timezone.utc).isoformat(),kind='bounded_read_and_exact_diagnostic_not_Lean',
       owner='/root/critical_finite_audit',runner_sha256=digest(Path(__file__)),writes_only=str(EXP),old_source_baseline=frozen['source_baseline'],
       current_shared_evidence_source_commit='9d4228e3ed0de4bb6b8e555ca59af3f53d578c67',
       frozen_hashes=hashes,sources=sources,M64=mrows,
       exponent_inclusion=dict(new_raw_x_max=15359,max_resonant_shift=6,new_abs_shifted_max=15365,old_M0=str(2**53),strictly_contained=15365<2**53,
          same_position_threshold=64**2,cubic_threshold=64**3+33,small_prime_pairs_by_i={'28':36,'31':45,'34':55}),
       finite_log_box_bridge=dict(mathlib_terms=api_terms,old_terms=96,attempts=box_attempts,all_passed=True,new_generic_sharp_tail_required=False,
          sharp96_tail_log2=str(box(F(1,3),96)[1]-box(F(1,3),96)[0])),
       old_log_samples=samples,resonance_sample=dict(p=2,q=3,u=str(ur),v=str(vr),reduced=True,denominator_gt_old_M0=True,error_lt_one_over_two_M0=True),
       old_log_scope={key:certificate[key] for key in ['M0','terms','ratio_count','max_used_v','raw_strict_n_bound','strict_n_bound']},
       old_certificate_total_pairs=len(certificate['pairs']),old_assignment_count=len(certificate['pairs'])*certificate['ratio_count'],
       cubic_existing_samples=cubic,cubic_new_fixed_samples=newblocks,
       exact_endpoint_checks=dict(two_pow_84_gt_ten_pow_25=(1<<84)>10**25,two_pow_83_lt_ten_pow_25=(1<<83)<10**25,
          raw_bound_matches=25600*int(certificate['max_used_v'])==int(certificate['raw_strict_n_bound'])),
       mathlib_pin_declared=load(ROOT/'lake-manifest.json')['packages'][0]['rev'],mathlib_head_read=(MATH/'.git/HEAD').read_text().strip(),mathlib_api_files=mathlibs,first_attempt=dict(status='m100_fraction_comparison_assertion_failed',cause='coarse_mathlib_upper_plus_100_term_sum_exceeds_old_96_term_sharp_upper_at_32_fixed_points',follow_up='m102_passed_all_65_points',no_source_or_certificate_mutation=True),
       elapsed_seconds=time.perf_counter()-ts,lean_invocations=0,full_checker_invocations=0,new_certificate_families=0,git_commands=0)
    (EXP/'record.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(dict(status='bounded_audit_pass',M64_checks=len(mrows),frozen_hashes_ok=len(hashes),log_box_comparisons=sum(len(x['checks']) for x in box_attempts),log_box_terms=api_terms,log_box_attempts=[dict(mathlib_terms=x['mathlib_terms'],failed_labels=x['failed_labels']) for x in box_attempts],log_box_bridge=True,
       old_log_samples=len(samples),cubic_existing=cubic,cubic_new=newblocks,elapsed_seconds=report['elapsed_seconds']),ensure_ascii=False))


if __name__=='__main__':
    main()
