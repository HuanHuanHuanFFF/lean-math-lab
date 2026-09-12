from __future__ import annotations
from datetime import datetime, timezone
from fractions import Fraction as Q
from math import factorial, comb, gcd, exp
from pathlib import Path
import hashlib, importlib.util, json, re, sys, time

OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
VENDOR = RUN/'experiments/huan-i18-adoption-5e2d13bb/code/vendor/rational_intervals.py'
spec = importlib.util.spec_from_file_location('rational_G_intervals', VENDOR)
ri = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = ri
spec.loader.exec_module(ri)
I, logq, logI, sqrtq = ri.I, ri.logq, ri.logI, ri.sqrtq
PAIRS = [(3,2),(15,8),(15,11),(5,4),(5,3),(25,17)]
OLD_L = {(3,2):Q(8103,5000),(15,8):Q(4541,2500),(15,11):Q(361,250),
         (5,4):Q(6549,5000),(5,3):Q(7727,5000),(25,17):Q(777,500)}


def fs(x): return f'{x.numerator}/{x.denominator}'


def ratio_D(u, v):
    f = v//2
    return Q(factorial(u+f)*factorial(f),factorial(u)*factorial(v))


def layer_test():
    checked=0
    extrema=[10,-10]
    for P in range(1,33):
        for a in range(P):
            for b in range(P):
                for f in range(P):
                    for eps in (0,1):
                        u,h,v=a+b,b,2*f+eps
                        qr=(2*u-h)//P-u//P-(u-h)//P+(v+h)//P-v//P-h//P
                        dr=(u+f)//P+f//P-u//P-v//P
                        candidate=(2*u+v)//(2*P)+v//(2*P)-u//P-v//P
                        quotient=(2*a+b)//P+(2*f+b+eps)//P-a//P-b//P-(a+b+f)//P-f//P
                        assert candidate==dr and qr-dr==quotient
                        assert quotient>=0 and qr>=0
                        if (v//P)%2==0:
                            assert dr==int(2*(u%P)+(v%P)>=2*P)
                        else:
                            assert dr in (-1,0)
                        extrema=[min(extrema[0],quotient),max(extrema[1],quotient)]
                        checked+=1
    return {'moduli':'all integers 1<=P<=32; hence includes small primes and prime powers',
            'residues':'0<=a,b,f<P; eps=0,1; u=a+b,h=b,v=2f+eps',
            'layer_instances':checked,'min_quotient_layer':extrema[0],'max_quotient_layer':extrema[1],
            'floor_D_identity':True,'pointwise_layer_domination':True,'even_odd_formula':True}


def direct_test():
    coefficients=0
    fractional_D=0
    max_bits=0
    for u in range(49):
        for v in range(49):
            D=ratio_D(u,v)
            if D.denominator!=1: fractional_D+=1
            g=0
            f,eps=v//2,v%2
            for h in range(u+1):
                q=comb(2*u-h,u)*comb(v+h,h)
                quotient=Q(q)/D
                a,b=u-h,h
                alternative=Q(factorial(2*a+b)*factorial(2*f+b+eps),
                              factorial(a)*factorial(b)*factorial(a+b+f)*factorial(f))
                assert quotient==alternative and quotient.denominator==1 and quotient>0
                g=gcd(g,q);max_bits=max(max_bits,q.bit_length());coefficients+=1
            assert (Q(g)/D).denominator==1 and Q(g)>=D
            assert g%D.numerator==0
    return {'u_range':[0,48],'v_range':[0,48],'all_h_through_u':True,
            'uv_pairs':49**2,'coefficients':coefficients,'nonintegral_D_pairs':fractional_D,
            'max_q_bit_length':max_bits,'all_quotients_integral':True,'all_content_quotients_integral':True,
            'all_reduced_numerators_divide_content':True,
            'example':{'u':2,'v':2,'D':'3/2','q':[6,9,6],'G':3,'G_over_D':2}}


def kernel_logs(s,z):
    root=sqrtq(s*s*z*z+4-4*z,bits=160)
    u1=2*(s-1)/(s*(2-z)+root)
    u2=2/(s*z+2+root)
    assert 0<u1.lo<=u1.hi<1 and 0<u2.lo<=u2.hi<1
    la=((s+1)*logq(s+1)-(s-1)*logq(s-1)).rounded()
    lq=(la+(s-1)*logI(u1)+logI(1-u1)+logI(1-(1-z)*u1)).rounded()
    le=(la+logI(u2)+logI(1-u2)+(s-1)*logI(1-z*u2)).rounded()
    return lq,le


def rate_tests():
    rates=[];by_pair={}
    for c,d in PAIRS:
        a,b=c+d,c-d
        beta=Q(a**a,d**(2*d)*b**b)
        gamma=(logq(beta)/2-c*logq(2)).rounded()
        direct=(Q(a,2)*logq(Q(a,2))+Q(b,2)*logq(Q(b,2))-d*logq(d)-b*logq(b)).rounded()
        assert max(gamma.lo,direct.lo)<=min(gamma.hi,direct.hi)
        old=(d*logq(OLD_L[c,d])).rounded()
        gap=(old-gamma).rounded()
        assert gamma.lo>0 and gap.lo>0
        row={'c':c,'d':d,'beta':fs(beta),'gamma':gamma.json(),'gamma_decimal':ri.decimal_outer(gamma,12),
             'old_L':fs(OLD_L[c,d]),'old_rate_d_log_L':old.json(),'old_rate_decimal':ri.decimal_outer(old,12),
             'old_rate_minus_gamma':gap.json(),'gap_decimal':ri.decimal_outer(gap,12),
             'effective_log_L':(gamma/d).json(),
             'effective_L_float_display_only':exp(float((gamma.lo+gamma.hi)/(2*d))),
             'gamma_positive':True,'strictly_weaker_than_existing_G_rate':True}
        rates.append(row);by_pair[c,d]=gamma
    report=(RUN/'experiments/huan-i18-adoption-5e2d13bb/REPORT.md').read_text(encoding='utf-8')
    pattern=r'^\|(\d+),(\d+)\|(\d+),(\d+)\|(\d+),(\d+),(\d+)\|(\d+),(\d+)\|(\d+),(\d+)\|'
    seeds=[tuple(map(int,match)) for match in re.findall(pattern,report,re.M)]
    assert len(seeds)==10
    screened=[]
    for p,q,k,l,a0,b0,D0,c,d,wp,wq in seeds:
        P,Qv=p**k,q**l
        assert a0*P-b0*Qv==D0>0
        s,z=Q(c,d),Q(D0,a0*P)
        logQ,logE=kernel_logs(s,z)
        gamma=by_pair[c,d]
        ell3=((c-d)*logq(P)+gamma-d*logq(a0)-c*logq(b0)-d*logQ).rounded()
        ell4=(c*logq(min(P,Qv))+gamma-(c-d)*logq(a0*P)-2*d*logq(D0)-d*logE).rounded()
        T=(c*logq(max(P,Qv))+ell4).rounded()
        hP=Q(1000-wp,1000)/(c*logq(P))
        hQ=Q(1000-wq,1000)/(c*logq(Qv))
        betaH=I(min(hP.lo,hQ.lo),min(hP.hi,hQ.hi))
        height=(betaH*T-1).rounded()
        failures=[]
        if ell3.hi<=0:failures.append('coefficient exponent d*logOmega3 nonpositive')
        if ell4.hi<=0:failures.append('error exponent d*logOmega4 nonpositive')
        if height.hi<=0:failures.append('original-weight height leading margin nonpositive')
        screened.append({'seed':{'p':p,'q':q,'k0':k,'l0':l,'a0':a0,'b0':b0,'D0':D0,'c':c,'d':d,'wp':wp,'wq':wq},
                         'd_logOmega3':ell3.json(),'d_logOmega3_decimal':ri.decimal_outer(ell3,9),
                         'd_logOmega4':ell4.json(),'d_logOmega4_decimal':ri.decimal_outer(ell4,9),
                         'original_weight_height_leading_margin':height.json(),'height_margin_decimal':ri.decimal_outer(height,9),
                         'necessary_condition_failures':failures,
                         'status':'rejected at optimistic limiting gamma with original c,d and weights' if failures else 'eligible for finite lower-bound and constant checks; not an accepted edge'})
    return rates,screened


def main():
    start=time.perf_counter()
    layer=layer_test();direct=direct_test();rates,seeds=rate_tests()
    sources={}
    for p in [RUN/'lean/PadeInteger.lean',RUN/'lean/Factorial/FactorialCommon.lean',
              RUN/'experiments/huan-i18-adoption-5e2d13bb/REPORT.md',VENDOR,
              RUN/'reviews/huan-pade-integration-5e2d13bb/check_no_g_feasibility_v2.py']:
        b=p.read_bytes();sources[str(p)]={'bytes':len(b),'sha256':hashlib.sha256(b).hexdigest()}
    result={'utc':datetime.now(timezone.utc).isoformat(),'status':'exact bounded checks and paper argument; no Lean',
            'candidate':'D(u,v)=(u+floor(v/2))! floor(v/2)!/(u! v!)',
            'source_hashes':sources,'layer_checks':layer,'direct_checks':direct,'rates':rates,
            'original_seed_optimistic_limiting_rate_screen':seeds,
            'seed_screen_scope':'fixed original c,d, a0,b0, powers and weights only; ideal limiting rate gamma, no finite-m bound or constants asserted; no weight or orientation optimization',
            'elapsed_seconds':time.perf_counter()-start,'worker_lean_invocations':0,'new_original_indices':[]}
    (OUT/'rational-factorial-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'layers':layer,'direct':direct,'rates':[{'pair':[r['c'],r['d']],'gamma':r['gamma_decimal'],'old':r['old_rate_decimal'],'L_display':r['effective_L_float_display_only']} for r in rates],
                      'seed_screen':[{'p_q':[r['seed']['p'],r['seed']['q']],'k_l':[r['seed']['k0'],r['seed']['l0']],'ell3':r['d_logOmega3_decimal'],'height':r['height_margin_decimal'],'failures':r['necessary_condition_failures']} for r in seeds],
                      'seconds':result['elapsed_seconds']},indent=2))


if __name__=='__main__': main()
