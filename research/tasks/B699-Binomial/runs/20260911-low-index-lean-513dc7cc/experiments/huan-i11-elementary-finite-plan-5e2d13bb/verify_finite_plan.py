from pathlib import Path
from fractions import Fraction as F
from math import factorial,gcd
from datetime import datetime,timezone
import hashlib,importlib.util,itertools,json,sys,time
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
spec=importlib.util.spec_from_file_location('i11_final_check_support',OUT/'generate_inputs.py')
support=importlib.util.module_from_spec(spec);sys.modules[spec.name]=support;spec.loader.exec_module(support)
ri,logq=support.ri,support.ri.logq


def multiply(a,b):
    out=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    while len(out)>1 and out[-1]==0:out.pop()
    return out

def product(factors):
    out=[1]
    for f in factors:out=multiply(out,f)
    return out

def residual(N,T,num,den):
    out=[den*(N[j] if j<len(N) else 0)-num*(T[j] if j<len(T) else 0) for j in range(max(len(N),len(T)))]
    while len(out)>1 and out[-1]==0:out.pop()
    return out

def decode(cert):
    vals=[int(cert['content'])*int(x) for x in cert['primitive_coefficients_ascending']]
    assert len(vals)==cert['degree']+1 and all(x>=0 for x in vals)
    return vals

def factors(c,d,delta,q,rho,K):
    b=c-d
    assert q==(1 if b%2==0 else 2) and 0<=rho<q
    u=(d*rho-delta,d*q);v=(b*rho+delta-1,b*q)
    f=((b*rho+delta-1)//2,b*q//2);n=(u[0]+f[0],u[1]+f[1])
    nf=[(n[0]+j+n[1]*K,n[1]) for j in range(1,n[1]+1)]+[(f[0]+j+f[1]*K,f[1]) for j in range(1,f[1]+1)]
    tf=[(u[0]+j+u[1]*K,u[1]) for j in range(1,u[1]+1)]+[(v[0]+j+v[1]*K,v[1]) for j in range(1,v[1]+1)]
    assert all(a>0 and b>0 for a,b in nf+tf)
    return product(nf),product(tf),(u,v,f,n)


def main():
    started=time.perf_counter()
    tuned=json.loads((OUT/'finite-height-joint-tuning.json').read_text());selected=tuned['selected_plan']
    rough=json.loads((OUT/'D-rough-step-certificates.json').read_text())['tracks']
    lookup={(r['c'],r['d'],r['delta'],r['q'],r['rho']):r for r in rough}
    track_checks=[];row_checks=[];base_max=0;coefficient_count=0
    for idx,row in enumerate(selected['rows']):
        seed=row['seed'];c,d=seed['c'],seed['d'];Lt,Lm=F(row['L_target']),F(row['L_mid'])
        assert 1<Lt<Lm
        mthresholds=[]
        for track in row['D_tracks']:
            delta,q,rho=track['delta'],track['q'],track['rho'];original=lookup[c,d,delta,q,rho]
            kmin=original['k_min'];Rinf=F(original['R_infinity_exact'])
            N,T,args=factors(c,d,delta,q,rho,kmin)
            J=original['rough_power_J'];assert J==2
            Nr=multiply(N,product([[kmin+2,1]]*J));Tr=multiply(T,product([[kmin+1,1]]*J))
            rebuilt=residual(Nr,Tr,Rinf.numerator,Rinf.denominator)
            assert rebuilt==decode(original['rough_certificate'])
            coefficient_count+=len(rebuilt)
            evaluated=[a+b*kmin for a,b in args];u,v,f,n=evaluated
            assert min(evaluated)>=0 and f==v//2 and n==u+f
            Dinit=F(factorial(n)*factorial(f),factorial(u)*factorial(v))
            base_max=max(base_max,*evaluated)
            assert str(Dinit)==original['D_initial']
            K=track['K_constant_step'];N,T,_=factors(c,d,delta,q,rho,K)
            goal=Lm**(d*q)
            assert Lt**(d*q)<goal<Rinf
            rebuilt=residual(N,T,goal.numerator,goal.denominator)
            assert rebuilt==decode(track['constant_step_certificate'])
            coefficient_count+=len(rebuilt)
            init=Dinit/Lt**(d*original['m_initial'])*F(kmin+1,K+1)**J
            assert init==F(track['initial_ratio_lower'])
            power=track['power_T'];block=track['block_B'];R=(Lm/Lt)**(d*q)
            assert init*2**power>=1 and 1+block*(R-1)>=2
            assert R==F(track['block_ratio_R'])
            m0=q*(K+(power+1)*block)+rho
            assert m0==track['threshold_m'];mthresholds.append(m0)
            track_checks.append({'c':c,'d':d,'delta':delta,'q':q,'rho':rho,'k_min':kmin,'K':K,
                                 'm_small':q*K+rho,'power_T':power,'block_B':block,'threshold_m':m0,
                                 'rough_degree':original['rough_certificate']['degree'],
                                 'mid_degree':track['constant_step_certificate']['degree']})
        assert max(mthresholds)==row['D_threshold_m0']
        path=OUT/row['qe_certificate_file'];qe=json.loads(path.read_text())
        expected=next(x for x in json.loads((OUT/'finite-inputs.json').read_text())['rows'] if x['index']==idx)
        assert hashlib.sha256(path.read_bytes()).hexdigest()==expected['sha256']
        beta=F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))
        P,Q=seed['p']**seed['k0'],seed['q']**seed['l0'];a,b,D=seed['a'],seed['b'],seed['D0']
        z=F(D,a*P);assert a*P-b*Q==D>0 and 1<F(c,d)<1/z
        maxes={kind:[] for kind in ('Q','E')}
        for delta in (0,1):
            term=F(factorial(c+d-delta),factorial(d-delta)**2*factorial(c-d+delta-1))
            K=2*term/beta
            for kind in ('Q','E'):
                mass=support.check.weight_mass(kind,c,d,z,delta)
                value=K*mass/F(qe[kind]['lambda'])
                assert 0<value<1 and value==F(qe['constants'][delta]['C'+kind])
                maxes[kind].append(value)
        CQ,CE=max(maxes['Q']),max(maxes['E'])
        assert CQ==F(row['max_CQ']) and CE==F(row['max_CE'])
        O3=F(P**(c-d))*Lt**d/(a**d*b**c*beta*F(qe['Q']['lambda']))
        O4=F(min(P,Q)**c)*Lt**d/((a*P)**(c-d)*D**(2*d)*beta*F(qe['E']['lambda']))
        assert O3==F(row['Omega3_power_d'])>1 and O4==F(row['Omega4_power_d'])>1
        B=selected['B'];H=B-1;lp,lq,l2=logq(P),logq(Q),logq(2)
        selector=min(F(1000-row['wp'],1000)/(c*lp.hi),F(1000-row['wq'],1000)/(c*lq.hi))
        ell3,ell4=logq(O3),logq(O4);lm=logq(max(P,Q));Tlo,Thi=c*lm.lo+ell4.lo,c*lm.hi+ell4.hi
        # The generator rounds T once; verify against exactly its outward endpoints.
        Tsaved=(c*lm+ell4).rounded();Tlo,Thi=Tsaved.lo,Tsaved.hi
        gap=selector*Tlo-1;mlo=selector*H*l2.lo-1
        margins={'m_minus_m0':mlo-row['D_threshold_m0'],'coefficient_margin':mlo*ell3.lo-logq(48).hi,
                 'height_leading_gap':gap,'height_margin':gap*H*l2.lo-Thi-logq(4).hi}
        assert all(v>0 for v in margins.values())
        assert margins=={k:F(v) for k,v in row['verified_height_arithmetic']['margins'].items()}
        row_checks.append({'index':idx,'seed':seed,'wp':row['wp'],'wq':row['wq'],'L_target':str(Lt),'L_mid':str(Lm),
                           'm0':row['D_threshold_m0'],'all_exact_height_margins_positive':True,'all_two_delta_constants_below_one':True,
                           'qe_hash':expected['sha256']})
    cuts=[dict(r['seed'],checked=[r['wp'],r['wq']]) for r in selected['rows']]
    cs=list(support.consumer.corners([2,3,5,7],cuts,'checked'))
    S=min(sum(x) for _,x in cs);Delta=11*(7000+S)-84000
    assert S==selected['S']==640 and Delta==selected['Delta']==40
    global_margin=selected['B']*Delta-1000*11*factorial(11).bit_length()-11*(1000+S)
    assert global_margin==selected['global_height_margin_integer']>0
    for i,j in itertools.combinations(range(4),2):
        assert min(sum(x)+max(0,1000-x[i]-x[j]) for _,x in cs)>=S
    result={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS independent shifted-factor reconstruction and final rational height arithmetic; no Lean',
            'selected_source_sha256':hashlib.sha256((OUT/'finite-height-joint-tuning.json').read_bytes()).hexdigest(),
            'D_track_checks':track_checks,'D_coefficient_comparisons':coefficient_count,
            'largest_D_initial_factorial_argument':base_max,'largest_D_initial_m':2,
            'row_checks':row_checks,'orientations':32,'collision_pairs':6,
            'S':S,'Delta':Delta,'B':selected['B'],'global_height_margin_integer':global_margin,
            'log_evidence':'same hash-bound exact rational atanh-series intervals; not floating acceptance or a Lean log certificate',
            'large_D_at_m_small_evaluated':False,'large_Bernoulli_block_power_expanded':False,
            'seconds':time.perf_counter()-started,'worker_lean_invocations':0}
    (OUT/'independent-finite-check.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':result['status'],'tracks':track_checks,'coefficient_comparisons':coefficient_count,
                      'largest_initial_factorial':base_max,'S':S,'Delta':Delta,'B':selected['B'],
                      'global_height_margin':global_margin,'seconds':result['seconds']},indent=2))

if __name__=='__main__':main()
