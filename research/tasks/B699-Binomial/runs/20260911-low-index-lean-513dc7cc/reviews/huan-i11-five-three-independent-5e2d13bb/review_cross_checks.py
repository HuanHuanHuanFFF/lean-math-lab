"""Independent small exact diagnostics for the read-only statement review. No Lean."""
from pathlib import Path
from fractions import Fraction as F
from math import comb, gcd
from functools import reduce
from datetime import datetime, timezone
import hashlib,json,re

HERE=Path(__file__).resolve().parent
RUN=HERE.parents[1]
plan_file=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json'
qe_file=plan_file.parent/'qe-certificates/row-03.json'
plan=json.loads(plan_file.read_text(encoding='utf-8'))['selected_plan']['rows'][3]
qe=json.loads(qe_file.read_text(encoding='utf-8'))
growth=(RUN/'lean/I11Scaled/GrowthInputs.lean').read_text(encoding='utf-8')
def literal_fraction(name):
    match=re.search(r'def '+name+r' : ℚ := (\d+) / (\d+)',growth)
    assert match,name
    return F(int(match[1]),int(match[2]))
ql,el=literal_fraction('qLambda'),literal_fraction('eLambda')
assert ql==F(qe['Q']['lambda']) and el==F(qe['E']['lambda'])
beta=F(8**8,3**6*2**2)
assert beta==F(qe['factorial_certificate']['beta'])
lt=F(plan['L_target']);content_base=lt**3
BQ,BE=beta*ql,beta*el
qrate=F(625**5)*content_base/(2**5*4375**3*BQ)
wrate=F((625*2187)**5)*content_base/(4375**2*BE)
assert qrate==F(plan['Omega3_power_d'])
assert wrate==2187**5*F(plan['Omega4_power_d'])
Z=5726930071079973414170
assert Z==wrate.numerator//wrate.denominator
assert 7*5**4-2*3**7==1
assert qrate**6>=2
assert 5**512<=2**1189 and 3**128<=2**203
assert 2**289<=Z**4 and Z**8<=2**579
assert 579*212<=8*15361
# The exact exponent checks used by the compressed capacity proof.
compressed=[]
for p,Jexp,alpha,a,b in [(5,20000,646,1189,512),(3,35000,772,203,128)]:
    u,v,M,H=289,4,213,15359
    checks={'rate':a*v*Jexp<=u*b*alpha,
            'base':a*Jexp*M<=b*H*alpha,
            'lookahead':2*alpha*b*v+a*v*Jexp*(M+1)<=u*b*alpha*M}
    assert all(checks.values())
    compressed.append({'p':p,'Jexp':Jexp,'alpha':alpha,'checks':checks})

small_rows=[]
for m in [1,2,3]:
    for delta in [0,1]:
        u,v=3*m-delta,2*m+delta-1
        assert u+v+1==5*m
        mags=[comb(2*u-r,u)*comb(v+r,r) for r in range(u+1)]
        g=reduce(gcd,mags)
        qc=[(-1)**u*x for x in mags]
        pc=[(-1)**(u+r)*comb(2*u+v+1,r)*comb(2*u-r,u) for r in range(u+1)]
        ec=[(-1)**r*comb(u+r,r)*comb(2*u+v+1,2*u+r+1) for r in range(v+1)]
        assert all(k%g==0 for k in pc+qc)
        y=4375;z=F(1,y)
        pe=sum(F(x)*z**r for r,x in enumerate(pc))
        qev=sum(F(x)*z**r for r,x in enumerate(qc))
        eev=sum(F(x)*z**r for r,x in enumerate(ec))
        assert pe-(1-z)**(5*m)*qev==z**(2*u+1)*eev
        pn=sum(x//g*y**(u-r) for r,x in enumerate(pc))
        qn=sum(x//g*y**(u-r) for r,x in enumerate(qc))
        err=y**(5*m)*pn-(y-1)**(5*m)*qn
        assert g*qn==y**u*qev
        assert g*err==y**v*eev
        if m==1:
            assert 2*abs(qev)<=BQ and 2*abs(eev)<=BE
        small_rows.append({'m':m,'delta':delta,'u':u,'v':v,'G':g,
                           'q_m1_cap':str(2*abs(qev)/BQ) if m==1 else None,
                           'e_m1_cap':str(2*abs(eev)/BE) if m==1 else None,
                           'source_identity':True,'separate_G_normalization':True})

window_cases=0
for n in range(20,121):
    Y=(n+1)//2
    for a in range(11):
        assert Y<=n-a<=2*Y and n<=2*Y
        for b in range(11):
            assert abs((n-a)-(n-b))<=10<=24
            window_cases+=1
for n in [2**15360,2**15360+1,2**15360+2]:
    Y=(n+1)//2
    assert Y>=2**15359
    for a in range(11):assert Y<=n-a<=2*Y
assert (19+1)//2>19-10

result={
    'utc':datetime.now(timezone.utc).isoformat(),
    'status':'PASS_EXACT_SMALL_DIAGNOSTICS_NOT_LEAN',
    'frozen_plan_sha256':hashlib.sha256(plan_file.read_bytes()).hexdigest(),
    'seed':plan['seed'],'final_weights':[plan['wp'],plan['wq']],
    'qe_embedded_historical_weights':[qe['seed_row']['wp'],qe['seed_row']['wq']],
    'metadata_boundary':'QE embedded graph weights predate FINAL_PLAN; lambda/core/m1 constants are independent of those graph weights.',
    'L_target':str(lt),'L_mid':plan['L_mid'],'m0':plan['D_threshold_m0'],
    'delta_track_thresholds':{str(x['delta']):x['threshold_m'] for x in plan['D_tracks']},
    'qLambda':str(ql),'eLambda':str(el),'beta':str(beta),'qBase':str(BQ),'eBase':str(BE),
    'qRate_equals_original_Omega3_power_d':True,
    'wRate_equals_2187_pow5_times_original_Omega4_power_d':True,
    'qRate':str(qrate),'wRate':str(wrate),'Z_equals_floor_wRate':True,
    'short_basis_max_integer_bits':1190,'compressed_checks':compressed,
    'actual_source_small_rows':small_rows,'window_offset_pairs_tested':window_cases,
    'ceil_low_boundary_counterexample':{'n':19,'offset':10,'Y':10,'N':9},
    'lean_invocations':0,'source_edits':0,
    'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
}
(HERE/'exact-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':result['status'],'rows':len(small_rows),'window_pairs':window_cases,
                  'metadata_weights':result['qe_embedded_historical_weights'],
                  'actual_weights':result['final_weights'],'rate_match':True},ensure_ascii=False))
