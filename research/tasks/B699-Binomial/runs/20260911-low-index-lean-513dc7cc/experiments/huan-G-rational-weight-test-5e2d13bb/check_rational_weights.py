from __future__ import annotations
from datetime import datetime,timezone
from fractions import Fraction as F
from pathlib import Path
import hashlib,importlib.util,itertools,json,re,sys,time

OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
I18=RUN/'experiments/huan-i18-adoption-5e2d13bb/REPORT.md'
PROFILES=RUN.parent/'20260910-asymmetric-pade-022987af/delivery/results/refined_profiles.json'
VENDOR=RUN/'experiments/huan-i18-adoption-5e2d13bb/code/vendor/rational_intervals.py'
OLD_CODE=RUN/'reviews/huan-pade-integration-5e2d13bb/check_no_g_feasibility_v2.py'
D_REPORT=RUN/'experiments/huan-G-rational-factorial-test-5e2d13bb/REPORT.md'
spec=importlib.util.spec_from_file_location('rational_weight_intervals',VENDOR)
ri=importlib.util.module_from_spec(spec);sys.modules[spec.name]=ri;spec.loader.exec_module(ri)
I,logq,logI,sqrtq=ri.I,ri.logq,ri.logI,ri.sqrtq


def seedkey(r):return tuple(int(r[k]) for k in ('p','q','k0','l0','a','b','D0'))
def configkey(r):return seedkey(r)+(r['c'],r['d'])


def kernel_logs(s,z):
    R=sqrtq(s*s*z*z+4-4*z,bits=160)
    u1=2*(s-1)/(s*(2-z)+R);u2=2/(s*z+2+R)
    assert 0<u1.lo<=u1.hi<1 and 0<u2.lo<=u2.hi<1
    la=((s+1)*logq(s+1)-(s-1)*logq(s-1)).rounded()
    lq=(la+(s-1)*logI(u1)+logI(1-u1)+logI(1-(1-z)*u1)).rounded()
    le=(la+logI(u2)+logI(1-u2)+(s-1)*logI(1-z*u2)).rounded()
    return lq,le


cache={}
def caps_for(r, rate_mode):
    key=configkey(r)
    cache_key=key+(rate_mode,)
    if cache_key in cache:return cache[cache_key]
    p,q,k,l,a,b,D,c,d=key
    P,Q=p**k,q**l
    assert a*P-b*Q==D>0 and c>d>0
    z=F(D,a*P);s=F(c,d)
    beta=F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))
    gamma_D=(logq(beta)/2-c*logq(2)).rounded()
    assert gamma_D.lo>0
    assert rate_mode in ('G1','rational_D')
    gamma=I.point(0) if rate_mode=='G1' else gamma_D
    lq,le=kernel_logs(s,z)
    ell3=((c-d)*logq(P)+gamma-d*logq(a)-c*logq(b)-d*lq).rounded()
    ell4=(c*logq(min(P,Q))+gamma-(c-d)*logq(a*P)-2*d*logq(D)-d*le).rounded()
    T=(c*logq(max(P,Q))+ell4).rounded()
    base={'growth_rate_mode':rate_mode,'gamma_D_reference':gamma_D.json(),
          'effective_log_L':(gamma/d).json(),'configuration':dict(zip(('p','q','k0','l0','a','b','D0','c','d'),key)),
          'P':P,'Q':Q,'z':str(z),'gamma':gamma.json(),'d_logOmega3':ell3.json(),
          'd_logOmega4':ell4.json(),'T':T.json()}
    if ell3.hi<0 or ell4.hi<0:
        reasons=[]
        if ell3.hi<0:reasons.append('coefficient exponent d*logOmega3<0')
        if ell4.hi<0:reasons.append('error exponent d*logOmega4<0')
        base.update({'optimistic_caps':[0,0],'status':'no useful joint edge at these fixed parameters',
                     'reason':reasons,'limiting_strict_integer_weights':None})
    else:
        assert T.lo>0
        logs=[logq(P),logq(Q)]
        upper=[1000*(1-c*x.lo/T.hi) for x in logs]
        lower=[1000*(1-c*x.hi/T.lo) for x in logs]
        caps=[max(0,ri.ceilq(x)) for x in upper]
        assert max(caps)<999
        candidate=[max(0,ri.ceilq(x)-1) for x in lower]
        # The ceil upper caps deliberately include equality and rounding slack.
        # All genuine integer or real weights are <= these optimistic caps.
        if ell3.lo>0 and ell4.lo>0 and all(x>=0 for x in lower):
            betaH=min((F(1000-candidate[0],1000)/(c*logs[0])).lo,
                      (F(1000-candidate[1],1000)/(c*logs[1])).lo)
            margin=betaH*T.lo-1
            assert margin>0
        else:margin=None;candidate=None
        base.update({'optimistic_caps':caps,'weight_supremum_upper':[str(x) for x in upper],
                     'weight_supremum_lower':[str(x) for x in lower],
                     'status':'optimistic upper rectangle, not proved cuts',
                     'limiting_strict_integer_weights':candidate,
                     'candidate_height_leading_margin_lower':str(margin) if margin is not None else None})
    cache[cache_key]=base;return base


def corners(primes,rows,key):
    idx={p:i for i,p in enumerate(primes)}
    edges=[(idx[r['p']],idx[r['q']],*r[key]) for r in rows]
    for mask in range(1<<len(edges)):
        x=[0]*len(primes)
        for k,(p,q,wp,wq) in enumerate(edges):
            j,w=(q,wq) if (mask>>k)&1 else (p,wp)
            x[j]=max(x[j],w)
        yield mask,x


def structure_options(i,t,S):
    options=[]
    for r in range(i):
        for s in range(1,i):
            if 2*s<=r:continue
            lam=2*s-r;E=s*(s+1)+(i-r-1)*(i-r)//2
            options.append((lam*(1000*(i-t)+S)-1000*E,r,s,lam,E))
    best=max(options)
    return {'Delta':best[0],'r':best[1],'s':best[2],'lambda':best[3],'E':best[4],
            'enumerated_pairs':len(options),'domain':'0<=r<i, 1<=s<i, 2s>r; same liberal domain as prior audit'}


def witness(mask,x,primes):return {'orientation':mask,'coordinates':dict(zip(primes,x))}


def main(rate_mode):
    start=time.perf_counter()
    i18=[]
    pattern=r'^\|(\d+),(\d+)\|(\d+),(\d+)\|(\d+),(\d+),(\d+)\|(\d+),(\d+)\|(\d+),(\d+)\|'
    for vals in re.findall(pattern,I18.read_text(encoding='utf-8-sig'),re.M):
        i18.append(dict(zip(('p','q','k0','l0','a','b','D0','c','d','wp','wq'),map(int,vals))))
    assert len(i18)==10
    profiles=json.loads(PROFILES.read_text())['profiles']
    allrows=i18+[r for p in profiles for r in p['cuts']]
    for row in allrows:
        row['original_caps']=[row['wp'],row['wq']]
        row['optimistic_caps']=caps_for(row,rate_mode)['optimistic_caps']
    # Reconstruct the frozen consumers at their original weights first.
    primes18=[2,3,5,7,11,13,17]
    original18=list(corners(primes18,i18,'original_caps'))
    original_weighted=min(sum(w*y for w,y in zip(range(24,17,-1),sorted(x))) for _,x in original18)
    original_collision=min(sum(x)+max(0,1000-x[p]-x[q]) for _,x in original18 for p,q in itertools.combinations(range(7),2))
    assert original_weighted==24013 and original_collision==1431
    baseline=[]
    for profile in profiles:
        value=min(sum(x) for _,x in corners(profile['primes'],profile['cuts'],'original_caps'))
        assert value==profile['S']
        assert profile['lambda']==2*profile['s']-profile['r']
        assert profile['E']==profile['s']*(profile['s']+1)+(profile['i']-profile['r']-1)*(profile['i']-profile['r'])//2
        assert profile['Delta']==profile['lambda']*(1000*(profile['i']-profile['t'])+value)-1000*profile['E']
        baseline.append({'i':profile['i'],'reconstructed_S':value,'Delta':profile['Delta']})
    # All objectives are coordinatewise monotone, so simultaneous upper caps
    # dominate every permitted weight optimization at fixed c,d.
    corners18=list(corners(primes18,i18,'optimistic_caps'))
    weighted,wm,wx=min((sum(w*y for w,y in zip(range(24,17,-1),sorted(x))),mask,x) for mask,x in corners18)
    plain,pm,px=min((sum(x),mask,x) for mask,x in corners18)
    collisions=[]
    for p,q in itertools.combinations(range(7),2):
        val,mask,x=min((sum(x)+max(0,1000-x[p]-x[q]),mask,x) for mask,x in corners18)
        collisions.append({'pair':[primes18[p],primes18[q]],'optimistic_sigma':val,
                           'original_structure_Delta':19*(11000+val)-234000,
                           'best_same_family_structure':structure_options(18,7,val),
                           'witness':witness(mask,x,primes18)})
    worst=min(collisions,key=lambda row:row['best_same_family_structure']['Delta'])
    i18result={'i':18,'rows':i18,'orientations':len(corners18),'fixed_distinct_position_weighted_minimum':weighted,
               'fixed_distinct_position_threshold':24000,'fixed_weighted_deficit':weighted-24000,
               'weighted_witness':witness(wm,wx,primes18),'optimistic_plain_S':plain,
               'best_plain_sum_structure':structure_options(18,7,plain),
               'collision_pair_count':21,'collision_records':collisions,'blocking_collision_pair':worst['pair'],
               'blocking_collision_best_Delta':worst['best_same_family_structure']['Delta'],
               'all_collision_pairs_blocked_even_after_structure_optimization':all(x['best_same_family_structure']['Delta']<=0 for x in collisions),
               'verdict':'no complete i18 via these fixed row parameters; collision branch blocks independently of further distinct-position tuning' if worst['best_same_family_structure']['Delta']<=0 else 'collision branch requires further analysis'}
    profile_results=[]
    for profile in profiles:
        rows=list(corners(profile['primes'],profile['cuts'],'optimistic_caps'))
        S,mask,x=min((sum(x),mask,x) for mask,x in rows)
        best=structure_options(profile['i'],profile['t'],S)
        current=profile['lambda']*(1000*(profile['i']-profile['t'])+S)-1000*profile['E']
        profile_results.append({'i':profile['i'],'primes':profile['primes'],'t':profile['t'],'rows':profile['cuts'],
                                'orientations':len(rows),'optimistic_S':S,'original_S':profile['S'],
                                'original_structure_Delta':current,'best_same_family_structure':best,
                                'blocking_witness':witness(mask,x,profile['primes']),
                                'verdict':'even optimistic reoptimized weights and structure fail' if best['Delta']<=0 else 'optimistic full-index margin positive; finite checks still required'})
    candidates=[row['i'] for row in profile_results if row['best_same_family_structure']['Delta']>0]
    if worst['best_same_family_structure']['Delta']>0 and weighted>24000:candidates.append(18)
    sources={}
    for p in [I18,PROFILES,VENDOR,OLD_CODE,D_REPORT]:
        b=p.read_bytes();sources[str(p)]={'bytes':len(b),'sha256':hashlib.sha256(b).hexdigest()}
    active_cache=[item for item in cache.values() if item['growth_rate_mode']==rate_mode]
    result={'growth_rate_mode':rate_mode,'utc':datetime.now(timezone.utc).isoformat(),'status':'exact optimistic fixed-parameter feasibility audit; no Lean or proved weights',
            'source_hashes':sources,'unique_material_seeds':len({seedkey(r) for r in allrows}),
            'fixed_seed_parameter_configurations':len(active_cache),'fixed_parameter_pairs':sorted({(r['c'],r['d']) for r in allrows}),
            'row_caps':active_cache,'baseline_reconstruction':{'i18_weighted':original_weighted,'i18_collision':original_collision,'other_profiles':baseline},
            'i18':i18result,'other_profiles':profile_results,
            'orientation_vectors':len(corners18)+sum(r['orientations'] for r in profile_results),
            'i18_collision_orientation_evaluations':21*len(corners18),
            'optimistically_feasible_complete_indices':candidates,'new_original_indices':[],
            'scope':'only each stored cut current c,d; simultaneous coordinatewise necessary upper caps, allowing limiting equality and upward integer rounding; original consumer family and liberal r,s domain; no new seeds, c,d search, finite-m constants, or actual weight proofs',
            'elapsed_seconds':time.perf_counter()-start,'worker_lean_invocations':0}
    filename='rational-weight-checks-G1.json' if rate_mode=='G1' else 'rational-weight-checks.json'
    (OUT/filename).write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    return result


def read_interval(obj):return I(F(obj['lo']),F(obj['hi']))
def overlaps(a,b):return max(a.lo,b.lo)<=min(a.hi,b.hi)


def run_comparison():
    baseline=main('G1')
    improved=main('rational_D')
    old={configkey(r['configuration']):r for r in baseline['row_caps']}
    new={configkey(r['configuration']):r for r in improved['row_caps']}
    assert len(old)==len(new)==32 and set(old)==set(new)
    checks=[]
    for key in sorted(old):
        before,after=old[key],new[key]
        gamma=read_interval(after['gamma'])
        assert read_interval(before['gamma'])==I.point(0) and gamma.lo>0
        assert all(a>=b for a,b in zip(after['optimistic_caps'],before['optimistic_caps']))
        assert read_interval(after['effective_log_L'])*key[-1]==gamma
        increments={}
        for name in ['d_logOmega3','d_logOmega4','T']:
            lo,hi=read_interval(before[name]),read_interval(after[name])
            inc=hi-lo
            assert hi.lo>lo.hi and overlaps(inc,gamma)
            increments[name]=inc.json()
        if 'weight_supremum_upper' in before:
            assert 'weight_supremum_upper' in after
            assert all(F(a)>=F(b) for a,b in zip(after['weight_supremum_upper'],before['weight_supremum_upper']))
            assert all(F(a)>=F(b) for a,b in zip(after['weight_supremum_lower'],before['weight_supremum_lower']))
        checks.append({'configuration':after['configuration'],'G1_caps':before['optimistic_caps'],
                       'D_caps':after['optimistic_caps'],'caps_never_decrease':True,
                       'gamma_log_G_per_m':gamma.json(),'effective_log_L':after['effective_log_L'],
                       'd_times_effective_log_L_equals_gamma':True,
                       'rate_increments_equal_gamma_within_outward_intervals':increments})
    assert improved['i18']['fixed_distinct_position_weighted_minimum']>=baseline['i18']['fixed_distinct_position_weighted_minimum']
    for before,after in zip(baseline['i18']['collision_records'],improved['i18']['collision_records']):
        assert before['pair']==after['pair']
        assert after['optimistic_sigma']>=before['optimistic_sigma']
        assert after['best_same_family_structure']['Delta']>=before['best_same_family_structure']['Delta']
    profiles=[]
    for before,after in zip(baseline['other_profiles'],improved['other_profiles']):
        assert before['i']==after['i']
        assert after['optimistic_S']>=before['optimistic_S']
        assert after['best_same_family_structure']['Delta']>=before['best_same_family_structure']['Delta']
        profiles.append({'i':after['i'],'G1_S':before['optimistic_S'],'D_S':after['optimistic_S'],
                         'G1_best_Delta':before['best_same_family_structure']['Delta'],
                         'D_best_Delta':after['best_same_family_structure']['Delta']})
    comparison={'utc':datetime.now(timezone.utc).isoformat(),
                'status':'all 32 same-configuration caps and all eight same-consumer results are monotone',
                'configurations':checks,'unit':'gamma=log G/m; effective L=exp(gamma/d); no numeric gamma was used as a multiplicative L base',
                'i18':{'G1_weighted':baseline['i18']['fixed_distinct_position_weighted_minimum'],
                       'D_weighted':improved['i18']['fixed_distinct_position_weighted_minimum'],
                       'G1_blocking_collision_best_Delta':baseline['i18']['blocking_collision_best_Delta'],
                       'D_blocking_collision_best_Delta':improved['i18']['blocking_collision_best_Delta']},
                'other_profiles':profiles,
                'prior_16876_scope':'earlier no-G audit allowed every s=c/d>1 through uniform necessary caps; this comparison fixes each stored c,d, so 16876 is not its G1 baseline',
                'baseline_data_sha256':hashlib.sha256((OUT/'rational-weight-checks-G1.json').read_bytes()).hexdigest(),
                'D_data_sha256':hashlib.sha256((OUT/'rational-weight-checks.json').read_bytes()).hexdigest()}
    (OUT/'same-configuration-monotonicity.json').write_text(json.dumps(comparison,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':comparison['status'],'unit':comparison['unit'],'i18':comparison['i18'],
                      'other_profiles':profiles,'D_optimistic_complete_indices':improved['optimistically_feasible_complete_indices'],
                      'G1_seconds':baseline['elapsed_seconds'],'D_seconds':improved['elapsed_seconds']},ensure_ascii=False,indent=2))


if __name__=='__main__':run_comparison()
