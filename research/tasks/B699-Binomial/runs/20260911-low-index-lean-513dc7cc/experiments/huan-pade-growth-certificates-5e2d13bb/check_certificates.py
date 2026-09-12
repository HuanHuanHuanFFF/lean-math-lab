"""Independent polynomial check of small dyadic i18 growth certificates.

Does not import the generator. Local Bernstein coefficients are reconstructed
by multiplying endpoint-positive affine factors directly in the Bernstein
basis, not by its power conversion or de Casteljau routine. The same audited
small rational-log helper is used for the final exact height obligations.
"""
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime,timezone
import argparse,copy,ctypes,hashlib,json,math,os,sys,time

OUT=Path(__file__).resolve().parent
PKG=Path('D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/materials/i18/B699-i18-content-Pade-closure-20260911')
sys.path.insert(0,str(PKG/'code/vendor'))
from rational_intervals import logq


def need(ok,message):
    if not ok:raise ValueError(message)


def peak_bytes():
    class Mem(ctypes.Structure):
        _fields_=[('cb',ctypes.c_ulong),('faults',ctypes.c_ulong)]+[(k,ctypes.c_size_t) for k in
          ('peak','working','peak_paged','paged','peak_nonpaged','nonpaged','pagefile','peak_pagefile')]
    m=Mem();m.cb=ctypes.sizeof(m)
    ctypes.windll.kernel32.GetCurrentProcess.restype=ctypes.c_void_p
    ctypes.windll.psapi.GetProcessMemoryInfo.argtypes=[ctypes.c_void_p,ctypes.POINTER(Mem),ctypes.c_ulong]
    ctypes.windll.psapi.GetProcessMemoryInfo.restype=ctypes.c_int
    need(ctypes.windll.psapi.GetProcessMemoryInfo(ctypes.windll.kernel32.GetCurrentProcess(),ctypes.byref(m),m.cb)!=0,'memory observation')
    return m.peak


def endpoints(kind,z,a,b):
    k=1-z if kind=='Q' else z
    return [(a,b),(1-a,1-b),(1-k*a,1-k*b)]


def bernstein_from_factors(kind,z,a,b,powers):
    coeffs=[F(1)];degree=0
    for (u,v),n in zip(endpoints(kind,z,a,b),powers):
        need(u>=0 and v>=0 and n>=0,'positive factor endpoint/exponent')
        factor=[math.comb(n,k)*u**(n-k)*v**k for k in range(n+1)]
        nxt=[F(0)]*(degree+n+1)
        for i,x in enumerate(coeffs):
            for j,y in enumerate(factor):nxt[i+j]+=x*y
        coeffs=nxt;degree+=n
    return [v/math.comb(degree,k) for k,v in enumerate(coeffs)]


def weight_mass(kind,c,d,z,delta):
    powers=([c-d-1+delta,d-delta,d-delta] if kind=='Q' else
            [d-delta,d-delta,c-d-1+delta])
    bs=bernstein_from_factors(kind,z,F(0),F(1),powers)
    return sum(bs,F(0))/len(bs)


def check_core(data,c,d,z,kind):
    powers=([c-d,d,d] if kind=='Q' else [d,d,c-d])
    weights={f'delta{delta}':([c-d-1+delta,d-delta,d-delta] if kind=='Q' else
                             [d-delta,d-delta,c-d-1+delta]) for delta in (0,1)}
    need(data['kind']==kind and data['degree']==c+d and data['core_exponents']==powers,'core identity')
    need(data['weights']==weights,'delta weight identity')
    lam=F(data['lambda']);need(lam>0,'positive lambda')
    if 'lambda_grid_bits' in data:
        need(data['lambda_grid_bits']==96,'compact grid bits')
        need(lam==F(int(data['lambda_grid_numerator']),2**96),'compact grid numerator')
        old=F(data['previous_lambda'])
        need(old<=lam<old+F(1,2**96),'upward compact rounding')
    need(data['leaves'] and len(data['leaves'])<=512,'bounded partition')
    right=F(0);count=0;minimum=None;tree_stack=[];tree_merges=0
    for leaf in data['leaves']:
        a,b=F(leaf['a']),F(leaf['b']);depth=leaf['depth']
        need(a==right and 0<=a<b<=1,'gap/overlap/endpoints')
        need(isinstance(depth,int) and 0<=depth<=24 and b-a==F(1,2**depth),'dyadic width')
        need((a*2**depth).denominator==1,'dyadic alignment')
        tree_stack.append((int(a*2**depth),depth))
        while len(tree_stack)>=2:
            (k0,d0),(k1,d1)=tree_stack[-2:]
            if d0!=d1 or d0==0 or k0%2 or k1!=k0+1:break
            tree_stack[-2:]=[(k0//2,d0-1)];tree_merges+=1
        bs=bernstein_from_factors(kind,z,a,b,powers)
        den=int(leaf['bernstein_denominator']);need(den>0,'positive denominator')
        supplied=[F(int(n),den) for n in leaf['bernstein_numerators']]
        need(supplied==bs,'independent Bernstein coefficient mismatch')
        need(all(F(0)<=x<lam for x in bs),'lambda gap not in positive cone')
        gap=lam-max(bs);need(gap==F(leaf['strict_gap']),'gap mismatch')
        minimum=gap if minimum is None else min(minimum,gap)
        count+=len(bs);right=b
    need(right==1,'uncovered final interval')
    need(tree_stack==[(0,0)],'partition does not reduce to one binary tree')
    need(data['max_depth']==max(v['depth'] for v in data['leaves']),'depth summary')
    return {'leaves':len(data['leaves']),'coefficient_comparisons':count,'max_depth':data['max_depth'],
            'minimum_strict_gap':str(minimum),'lambda':str(lam),'binary_tree_merges':tree_merges}


def check_row(data,source):
    need(data['row']==source,'fixed source row changed')
    c,d=source['c'],source['d'];P=source['p']**source['k0'];Q=source['q']**source['l0']
    a,b,D=source['a'],source['b'],source['D0'];z=F(D,a*P);L=F(source['L1'])
    need(a*P-b*Q==D>0 and 0<z<1 and 1<F(c,d)<1/z,'seed sign/orientation')
    need(F(data['z'])==z and L>1,'z or G base')
    qc=check_core(data['Q'],c,d,z,'Q');ec=check_core(data['E'],c,d,z,'E')
    beta=F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d));lamQ,lamE=F(qc['lambda']),F(ec['lambda'])
    need(len(data['constants'])==2,'both deltas required')
    CQs=[];CEs=[]
    for delta,item in enumerate(data['constants']):
        need(item['delta']==delta,'delta ordering')
        F1=F(math.factorial(c+d-delta),math.factorial(d-delta)**2*math.factorial(c-d+delta-1))
        K=2*F1/beta;jq=weight_mass('Q',c,d,z,delta);je=weight_mass('E',c,d,z,delta)
        CQ,CE=K*jq/lamQ,K*je/lamE
        for key,value in [('K',K),('weight_Q_moment',jq),('weight_E_moment',je),('CQ',CQ),('CE',CE)]:
            need(F(item[key])==value,'weight/prefactor constant '+key)
        need(CQ>0 and CE>0,'positive constants');CQs.append(CQ);CEs.append(CE)
        # Source factorization exponents at a few diagnostic m; the general
        # proof obligation is the integer identity, not this bounded test.
        for m in (1,2,3,5):
            u=d*m-delta;B=(c-d)*m+delta-1
            need([t*(m-1)+s for t,s in zip(data['Q']['core_exponents'],data['Q']['weights'][f'delta{delta}'])]==[B,u,u],'Q source factorization')
            need([t*(m-1)+s for t,s in zip(data['E']['core_exponents'],data['E']['weights'][f'delta{delta}'])]==[u,u,B],'E source factorization')
    CQ,CE=max(CQs),max(CEs);need(F(data['max_CQ'])==CQ and F(data['max_CE'])==CE,'max constants')
    o3=F(P**(c-d))*L**d/(a**d*b**c*beta*lamQ)
    o4=F(min(P,Q)**c)*L**d/((a*P)**(c-d)*D**(2*d)*beta*lamE)
    need(o3>1 and o4>1,'nonpositive scaled exponent rate')
    numeric=data['numerics']
    for key,val in [('beta',beta),('BQ_beta_lambda',beta*lamQ),('BE_beta_lambda',beta*lamE),
                    ('G_rate_base_L_power_d',L**d),('Omega3_power_d',o3),('Omega4_power_d',o4)]:
        need(F(numeric[key])==val,'rate transcription '+key)
    lp,lq,l2=logq(F(P)),logq(F(Q)),logq(F(2))
    select=min(F(1000-source['wp'],1000)/(c*lp.hi),F(1000-source['wq'],1000)/(c*lq.hi))
    logY=599999*l2.lo;mlo=select*logY-1;ell3,ell4=logq(o3),logq(o4);lm=logq(F(max(P,Q)))
    Tlo,Thi=c*lm.lo+ell4.lo,c*lm.hi+ell4.hi;gap=select*Tlo-1
    margins={'m_minus_m0':mlo-source['m0'],'omega3_margin':mlo*ell3.lo-logq(48*max(F(1),CQ)).hi,
             'betaT_minus_one':gap,'height_margin':gap*logY-Thi-logq(4*max(F(1),CE)).hi}
    need(all(v>0 for v in margins.values()),'height obligation failed')
    need(all(F(numeric['positive_rational_margins'][k])==v for k,v in margins.items()),'margin data mismatch')
    need(numeric['same_log48_log4_as_original']==(CQ<1 and CE<1),'constant convention')
    expected='verified_three_pair_prefactor' if (c,d) in {(3,2),(15,8),(15,11)} else 'extra_pair_prefactor_pending_not_accepted'
    need(data['factorial_status']==expected,'factorial acceptance boundary')
    return {'row':data['row_index'],'Q':qc,'E':ec,'all_C_constants_below_one':CQ<1 and CE<1,
       'exact_height_margins_positive':True,'factorial_status':expected,
       'max_CQ':str(CQ),'max_CE':str(CE),'margin_readable':{k:float(v) for k,v in margins.items()}}


def malformed_checks(data,c,d,z):
    bad=[]
    x=copy.deepcopy(data['Q']);x['leaves']=x['leaves'][1:];bad.append(('missing_interval',x))
    x=copy.deepcopy(data['Q']);x['lambda']=str(F(x['lambda'])/2);bad.append(('lambda_too_small',x))
    x=copy.deepcopy(data['Q']);x['leaves'][0]['bernstein_numerators'][0]=str(int(x['leaves'][0]['bernstein_numerators'][0])+1);bad.append(('coefficient_tamper',x))
    x=copy.deepcopy(data['Q']);x['weights']['delta1']=x['weights']['delta0'];bad.append(('delta_weight_swap',x))
    results=[]
    for name,item in bad:
        try:check_core(item,c,d,z,'Q')
        except (AssertionError,ValueError,KeyError):results.append(name)
        else:raise ValueError('bad certificate accepted '+name)
    return results


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--rows',default='0,2,9');ap.add_argument('--output',default='pilot-check.json');ap.add_argument('--certificate-dir',default='certificates');args=ap.parse_args()
    selected=[int(x) for x in args.rows.split(',')];source=json.loads((PKG/'input/i18_cut_inputs.json').read_text())['cuts']
    started=time.monotonic();rows=[];hashes=[];mutations=[]
    for idx in selected:
        path=OUT/args.certificate_dir/f'row-{idx:02d}.json';data=json.loads(path.read_text(encoding='utf-8'))
        need(data['row_index']==idx,'row index')
        row=check_row(data,source[idx]);rows.append(row);hashes.append({'file':path.name,'sha256':hashlib.sha256(path.read_bytes()).hexdigest()})
        if idx==selected[0]:mutations=malformed_checks(data,source[idx]['c'],source[idx]['d'],F(data['z']))
        print(json.dumps({'row':idx,'leaves_Q':row['Q']['leaves'],'leaves_E':row['E']['leaves'],
            'constants_lt_one':row['all_C_constants_below_one'],'height_margins':row['margin_readable'],
            'factorial_status':row['factorial_status']},ensure_ascii=False),flush=True)
    peak=peak_bytes();need(peak<200_000_000,'memory budget exceeded')
    value={'status':'PASS_INDEPENDENT_SELECTED_POLYNOMIAL_CERTIFICATES_AND_EXACT_HEIGHT_MARGINS',
       'rows':rows,'rows_checked':selected,'certificate_directory':args.certificate_dir,'certificate_hashes':hashes,'bad_variants_rejected':mutations,
       'seconds':time.monotonic()-started,'peak_working_set_bytes':peak,'memory_limit_bytes':200_000_000,
       'total_leaf_intervals':sum(r[k]['leaves'] for r in rows for k in ('Q','E')),
       'total_coefficient_comparisons':sum(r[k]['coefficient_comparisons'] for r in rows for k in ('Q','E')),
       'finished_utc':datetime.now(timezone.utc).isoformat(),'lean_run':False,
       'scope':'Independent local polynomial-cone data and exact rational-log height arithmetic; subdivision aggregation and extra factorial premises are not silently accepted.'}
    (OUT/args.output).write_text(json.dumps(value,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in value.items() if k not in ('rows','certificate_hashes')},ensure_ascii=False))

if __name__=='__main__':main()
