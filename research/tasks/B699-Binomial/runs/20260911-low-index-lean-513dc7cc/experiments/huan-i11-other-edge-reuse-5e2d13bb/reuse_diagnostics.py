"""Small exact checks for fixed-row reuse. No optimization, Lean, or CRT."""
from pathlib import Path
from fractions import Fraction as F
from math import comb,factorial,gcd
from functools import reduce
from datetime import datetime,timezone
import json,hashlib
HERE=Path(__file__).resolve().parent
RUN=HERE.parents[1]
PLAN_DIR=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
SEL_DIR=RUN/'experiments/huan-i11-approximation-bridge-plan-5e2d13bb'
plan=json.loads((PLAN_DIR/'FINAL_PLAN.json').read_text(encoding='utf-8'))['selected_plan']['rows']
selectors=json.loads((SEL_DIR/'log-free-selector-results.json').read_text(encoding='utf-8'))['rows']
shorts=json.loads((SEL_DIR/'short-power-bases.json').read_text(encoding='utf-8'))['rows']

def source_values(seed,m,delta):
    c,d=seed['c'],seed['d'];u=d*m-delta;v=(c-d)*m+delta-1
    assert u>=0 and v>=0 and u+v+1==c*m
    P,Q=seed['p']**seed['k0'],seed['q']**seed['l0']
    x,y=seed['D0'],seed['a']*P
    z=F(x,y)
    mags=[comb(2*u-j,u)*comb(v+j,j) for j in range(u+1)]
    g=reduce(gcd,mags)
    qc=[(-1)**u*k for k in mags]
    pc=[(-1)**(u+j)*comb(2*u+v+1,j)*comb(2*u-j,u) for j in range(u+1)]
    ec=[(-1)**j*comb(u+j,j)*comb(2*u+v+1,2*u+j+1) for j in range(v+1)]
    qeval=sum(F(k)*z**j for j,k in enumerate(qc))
    peval=sum(F(k)*z**j for j,k in enumerate(pc))
    eeval=sum(F(k)*z**j for j,k in enumerate(ec))
    assert peval-(1-z)**(c*m)*qeval==z**(2*u+1)*eeval
    assert all(k%g==0 for k in pc+qc)
    pn=sum(k//g*x**j*y**(u-j) for j,k in enumerate(pc))
    qn=sum(k//g*x**j*y**(u-j) for j,k in enumerate(qc))
    error=y**(c*m)*pn-(y-x)**(c*m)*qn
    scale=y**v*x**(2*u+1)
    assert g*qn==y**u*qeval
    assert g*error==scale*eeval
    uniform=(y**(c-d)*x**(2*d))**m
    assert F(scale,uniform)==(F(x,y) if delta==0 else F(1,x))
    assert scale<=uniform
    return {'m':m,'delta':delta,'u':u,'v':v,'G':g,'Q':qeval,'E':eeval,
            'error':error,'exact_scale':scale,'uniform_scale':uniform}

rows=[]
for i in [0,1,2,4]:
    r=plan[i];s=r['seed'];c,d=s['c'],s['d']
    P,Q=s['p']**s['k0'],s['q']**s['l0'];x,y=s['D0'],s['a']*P
    assert y-s['b']*Q==x and 1<=x<y
    qe=json.loads((PLAN_DIR/r['qe_certificate_file']).read_text(encoding='utf-8'))
    beta=F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))
    ql,el=F(qe['Q']['lambda']),F(qe['E']['lambda'])
    BQ,BE=beta*ql,beta*el;g=F(r['L_target'])**d
    A3=F(P**c)*g/(s['b']**c*y**d*BQ)
    W=F((P*Q)**c)*g/(y**(c-d)*x**(2*d)*BE)
    assert A3==F(r['Omega3_power_d'])
    assert W==max(P,Q)**c*F(r['Omega4_power_d'])
    Z=W.numerator//W.denominator;M=selectors[i]['minimum_index_at_Y0']
    assert Z==selectors[i]['integer_threshold_base_Z']==shorts[i]['Z']
    assert M==shorts[i]['M'] and M>=r['D_threshold_m0']
    assert Z**(M-1)<=4*2**15359<Z**M and A3**M>48
    sb=shorts[i];uu,vv=sb['u'],sb['v']
    assert 2**uu<=Z**vv
    for end in sb['ends']:
        pp,aa,bb=end['prime'],end['a'],end['b']
        jj=1000*c*end['seed_exponent'];al=end['alpha']
        assert pp**bb<=2**aa and al==1000-end['weight']
        assert uu*bb*al-aa*vv*jj==end['rate_exponent_margin']>=0
        assert bb*15359*al-aa*jj*M==end['base_exponent_margin']>=0
        assert uu*bb*al*M-2*al*bb*vv-aa*vv*jj*(M+1)==end['lookahead_exponent_margin']>=0
    initial=[]
    for delta in [0,1]:
        val=source_values(s,1,delta)
        F1=F(factorial(c+d-delta),factorial(d-delta)**2*factorial(c-d+delta-1))
        K=2*F1/beta;CQ=2*abs(val['Q'])/BQ;CE=2*abs(val['E'])/BE
        recorded=qe['constants'][delta]
        assert K==F(recorded['K']) and CQ==F(recorded['CQ']) and CE==F(recorded['CE'])
        assert abs(val['Q'])/F1==F(recorded['JQ']) and abs(val['E'])/F1==F(recorded['JE'])
        assert CQ<1 and CE<1
        initial.append({'delta':delta,'F1':str(F1),'K':str(K),'actualQ1':str(val['Q']),
                        'actualE1':str(val['E']),'CQ':str(CQ),'CE':str(CE)})
    rows.append({'row_index':i,'seed':s,'weights':[r['wp'],r['wq']],
                 'P':P,'Q':Q,'x_D':x,'y':y,'y_minus_x':y-x,'z':str(F(x,y)),
                 'u_delta':'%s*m-delta'%d,'v_delta':'%s*m+delta-1'%(c-d),
                 'extraction_multipliers':[s['k0']*c,s['l0']*c],
                 'L_target':r['L_target'],'L_mid':r['L_mid'],'contentBase':str(g),
                 'G_m0':r['D_threshold_m0'],'M':M,'Z':Z,
                 'Q_lambda':str(ql),'E_lambda':str(el),'qBase':str(BQ),'eBase':str(BE),
                 'Q_homogeneous_growth_factor':y**d,'E_homogeneous_growth_factor':y**(c-d)*x**(2*d),
                 'E_delta_leftover_factors':[str(F(x,y)),str(F(1,x))],
                 'qRate':str(A3),'wRate':str(W),'both_rates_match_original_plan':True,
                 'Q_leaves':len(qe['Q']['leaves']),'E_leaves':len(qe['E']['leaves']),
                 'initial_constants':initial,'short_power_certificate':sb,
                 'D_tracks':[{k:t[k] for k in ['delta','q','rho','K_constant_step','m_small','power_T','block_B','threshold_m']} for t in r['D_tracks']]})

prefix_checks=[]
for m in range(1,6):
    for delta in [0,1]:
        val=source_values(plan[0]['seed'],m,delta)
        prefix_checks.append({k:v for k,v in val.items() if k not in ['Q','E'] and (m==1 or k in ['m','delta','u','v','G'])})
wrong=source_values(plan[0]['seed'],1,0)
assert wrong['G']*wrong['error']!=128**wrong['v']*wrong['E']
result={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS_EXACT_BOUNDED_REUSE_DIAGNOSTICS_NOT_LEAN',
        'rows':rows,'two_five_small_source_checks':prefix_checks,
        'D1_copy_counterexample':{'m':1,'delta':0,'u':4,'v':0,'G':wrong['G'],
                                 'G_times_actual_error':wrong['G']*wrong['error'],
                                 'incorrect_D1_rhs':str(128**wrong['v']*wrong['E']),
                                 'missing_factor':3**9},
        'big_final_capacity_powers_recomputed':False,'existing_short_bases_rechecked':True,
        'optimization_or_new_constants':False,'worker_lean_invocations':0,'new_original_indices':[],
        'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
(HERE/'reuse-data.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':result['status'],'two_five_rows':len(prefix_checks),'initial_delta_rows':8,
                  'D1_copy_counterexample':result['D1_copy_counterexample'],
                  'fixed_Z_M':[[r['row_index'],r['Z'],r['M']] for r in rows]},ensure_ascii=False))
