"""Exact small arithmetic/source audit. Never invokes Lean, sieves, or installs."""
from pathlib import Path
from fractions import Fraction as F
from hashlib import sha256
from math import isqrt
import json
ROOT=Path.cwd()
OUT=Path(__file__).resolve().parent
RUN=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
PROC=Path('research/external-results/20260911-proc-r2-ea89a10a/payload/b699-proc-r2-resumed-20260911')
OLD=PROC/'source/B699-ProC-interrupted-handoff-20260911/input/A'
PDF=Path('research/tasks/B699-Binomial/runs/20260911-web-i18-6f4334c9/reviews/huan-i18-5e2d13bb/publication/BFTpaper0207.pdf')
ML=Path('D:/CodingProject/Math/.lake/packages/mathlib')
PNT=Path('D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/pnt-source-survey/PrimeNumberTheoremAnd/IEANTN')
def save(name,obj):
    (OUT/name).write_bytes((json.dumps(obj,ensure_ascii=False,indent=2)+'\n').encode())
def ln_unit(x,N=100):
    assert 1<=x<=2
    z=(x-1)/(x+1)
    low=sum((2*z**(2*k+1)/F(2*k+1) for k in range(N)),F(0))
    tail=2*z**(2*N+1)/(F(2*N+1)*(1-z*z))
    return low,low+tail
L2=ln_unit(F(2))
def log_iv(x):
    assert x>0
    n=0
    while x<1:x*=2;n-=1
    while 2<x:x/=2;n+=1
    a,b=ln_unit(x)
    return (a+n*L2[0],b+n*L2[1]) if n>=0 else (a+n*L2[1],b+n*L2[0])
def ivstr(x):return list(map(str,x))
def deciv(x,d=12):
    q=10**d
    lo=x[0]*q;hi=x[1]*q
    a=lo.numerator//lo.denominator;b=-((-hi.numerator)//hi.denominator)
    return [str(F(a,q)),str(F(b,q))]
def ceil_sqrt(x,den=10**9):
    z=x*den*den;n=isqrt(z.numerator//z.denominator)
    if F(n,den)**2<x:n+=1
    return F(n,den)
G=F(910560352,10**9);ETA=F(213,10**6);K=F(259,125);M=10000
pts=sorted({F(k,n) for n in (1,4,9) for k in range(n+1)})
catalog=[];allcells=[]
for l,u in zip(pts,pts[1:]):
    t=(l+u)/2;J=2*int(4*t)+int(t);value=int(9*t)-J
    # Exact interval constants; floors are right continuous at l.
    assert int(4*l)==int(4*t) and int(9*l)==int(9*t) and int(l)==int(t)
    row={'l':str(l),'u':str(u),'J':J,'value':value};allcells.append(row)
    if value==2:catalog.append(row)
assert [(F(x['l']),F(x['u'])) for x in catalog]==[(F(2*j,9),F(j,4)) for j in range(1,5)]
# Four w=0 rows, exact old common-prime-product numerator 9m-2.
coarse=[F(11,250),F(4,125),F(13,500),F(11,500)]
rows=[]
for j in range(1,5):
    A=F(9,2*j);B=F(1,j);C=F(4,j);e=coarse[j-1]
    precise=max(ceil_sqrt(K*K*A/M),ETA*A)
    assert e>=0 and e*e>=K*K*A/M and e>=ETA*A
    assert A*M-B>=1 and A*M-B>C*M
    rate=A-(1+ETA)*C-e-B/M
    rows.append(dict(j=j,A=str(A),B=str(B),C=str(C),error=str(e),precise_error=str(precise),rate=str(rate),precise_rate=str(A-(1+ETA)*C-precise-B/M)))
rate=sum((F(r['rate']) for r in rows),F(0))
assert rate==F(54941,60000)>F(183,200)>G
precise=sum((F(r['precise_rate']) for r in rows),F(0))
A=sum((F(r['A']) for r in rows),F(0));B=sum((F(r['B']) for r in rows),F(0));C=sum((F(r['C']) for r in rows),F(0))
eps=F(1,200);slope=(1-eps)*A-(1+eps)*C;offset=(1-eps)*B
assert slope==F(61,64) and offset==F(199,96)
assert slope-offset/49>G and slope-offset/48<G
# A publication-weaker envelope with a finite bridge at T=10^6.
# finite: sqrt theta lower and theta<=x only up to 4,500,000.
# infinite: |theta-x|<=x/200 for all x>=1,000,000.
T=10**6
finite_rate=A-C-sum(coarse,F(0))-B/M
assert finite_rate==F(22019,24000)>F(183,200)
assert F(9,8)*T-F(1,4)>=T
# Uniform +/-1/200 follows numerically from original BFT on x>=172000.
X0=172000
assert K*K/F(X0)<=eps*eps and ETA<eps
# BFT G_1 to C2 bridge: G_1/C2 divides 4m, by ProC Q2, still unformalized.
gam=log_iv(F(6549,5000));ln204=log_iv(F(204));ln4=log_iv(F(4))
gam=(4*gam[0],4*gam[1]);after51=(gam[0]-ln204[1]/51,gam[1]-ln204[0]/51)
assert after51[0]>G and ln4[0]>1
certificate={
 'kind':'EXACT_RATIONAL_SOURCE_AUDIT_NOT_LEAN_OR_PRIME_ENUMERATION',
 'target_rate':str(G),'BFT_eta':str(ETA),'BFT_sqrt_constant':str(K),
 'all_breakpoint_cells':allcells,'selected_catalog':catalog,'M':M,'rows':rows,
 'BFT_conditional_rate':str(rate),'BFT_conditional_margin':str(rate-G),
 'precise_rate':str(precise),'precise_margin':str(precise-G),
 'chosen_growth_rate':str(F(183,200)),
 'half_percent':{'epsilon':str(eps),'A_sum':str(A),'B_offset_sum':str(B),'C_sum':str(C),'slope':str(slope),'offset':str(offset),'first_integer_from_rate_only':49,'margin_at_49':str(slope-offset/49-G),'BFT_implies_half_percent_from':X0},
 'weaker_two_stage':{'M':M,'T':T,'theta_finite_lower_x':M,'theta_finite_upper_x':4500000,'finite_rate':str(finite_rate),'theta_tail_epsilon':str(eps),'tail_m_lower':T,'theta_tail_x_lower':T},
 'BFT_original_G_rate':ivstr(gam),'BFT_original_G_rate_decimal_outer':deciv(gam),
 'BFT_to_C2_at_m51':ivstr(after51),'BFT_to_C2_at_m51_decimal_outer':deciv(after51),
 'BFT_transfer_log4_gt1':ivstr(ln4),
 'finite_obligation':{'m_first':51,'m_last':9999,'integer_rows_if_singletons':9949,'full_C2_prime_power_upper':44995,'four_interval_prime_upper':44994,'checked':False},
 'no_new_lean':True,'prime_tables_generated':0,
 'scope_boundary':'C2 growth route only; no final Pade capacity/height claim.'}
save('arithmetic-certificate.json',certificate)
# No new old-family search: only replay existing recorded 205 rows.
old=json.loads((ROOT/OLD/'evidence/content_tail.json').read_bytes());replay=[]
for family in old['rows']:
    etas=set();new=F(0);total=F(0)
    for r in family['rows']:
        a,b,c,e,rt=(F(r[k]) for k in ('A','B','C','error','rate'))
        etas.add((a-c-e-b/family['M']-rt)/c);total+=rt
        new+=max(F(0),a-(1+ETA)*c-max(e,ETA*a)-b/family['M'])
    assert etas=={F(213,10**7)} and total==F(family['lower'])
    replay.append({'family':[family[k] for k in ('e','d','f')],'M':family['M'],'terms':len(family['rows']),'target':family['g'],'recorded_eta':str(next(iter(etas))),'corrected_same_terms_lower':str(new),'corrected_same_terms_decimal_outer':deciv((new,new)),'margin':str(new-F(family['g']))})
assert sum(x['terms'] for x in replay)==205
save('original-proc-205-replay.json',{'kind':'REPLAY_OF_ORIGINAL_PROC_OLD_A_NOT_CORRECTED_I18','known_prior_discovery':str(RUN/'reviews/huan-i18-correction-second-5e2d13bb/REPORT.md'),'corrected_i18_279_terms_are_separate':True,'rows':replay,'no_repair_search':True})
sourcepaths=[PDF,PROC/'notes/PADE_MINIMAL_INTERFACE.md',PROC/'notes/THRESHOLDS.md',PROC/'notes/PROOFS.md',OLD/'REPORT.md',OLD/'code/make_content_tail.py',OLD/'evidence/content_tail.json',RUN/'reviews/huan-i18-correction-second-5e2d13bb/REPORT.md',RUN/'notes/huan-explicit-theta-source-survey-5e2d13bb/survey.json',ML/'Mathlib/NumberTheory/Chebyshev.lean',ML/'Mathlib/NumberTheory/PrimeCounting.lean',PNT/'Dusart.lean',PNT/'RosserSchoenfeld/RosserSchoenfeldPrime.lean',PNT/'RosserSchoenfeld/RSPrimeLower.lean',PNT/'RosserSchoenfeld/RosserSchoenfeldZeta.lean',Path('research/tasks/B686-Four/formalization/PrimeCounting/LinearPrimeCounting.lean'),Path('research/tasks/B686-Four/round8/continuation/verification.json'),Path('research/tasks/B686-Four/round8/continuation/verification/joint-audit.log'),Path('research/tasks/B677-Lcm/runs/20260908-formalization-92c221/lean/analytic/DusartBridge.lean'),Path('research/tasks/B677-Lcm/runs/20260908-formalization-92c221/verification/analytic/20260908T130158Z/evidence.json'),Path('research/tasks/B699-Binomial/runs/20260910-elementary-count-bbbfe15e/acceptance.md'),Path('research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17/lean/ECAnalytic.lean'),Path('research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17/verification/20260910T075554Z/evidence.json')]
manifest=[]
for p in sourcepaths:
    x=(ROOT/p).resolve();b=x.read_bytes();manifest.append({'path':str(p).replace('\\','/'),'sha256':sha256(b).hexdigest(),'bytes':len(b)})
save('SOURCE_MAP.json',{'repo_head_at_prior_checkpoint':'f0b0cc10fbab9db7133aae9914178caf0b4c587b','mathlib_observed_head':'0df444a360eaa60ab8c11dca51a86af692955474','PNT_snapshot_commit':'a5154676af9aa3095150ee410cdda80555aa0642','PNT_snapshot_not_locally_accepted':True,'sources':manifest})
print(json.dumps({'status':'PASS_EXACT_SMALL_ARITHMETIC','selected_prime_cells':4,'conditional_rate':str(rate),'precise_rate':str(precise),'rate_gt_target':True,'known_ETA_issue_replayed_old_terms':205,'sources':len(manifest),'lean_runs':0,'sieves':0},ensure_ascii=False))
