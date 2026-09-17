#!/usr/bin/env python3
"""Independent standard-library checker; does not import the constructor.
Reconstructs complete domains with divisor-pair scanning and checks roots
of M V^2-(d+2*k)E V+E^2-Q0*m^3 directly, before denominator cancellation.
"""
from __future__ import annotations
import argparse, copy, json
from pathlib import Path
from math import gcd, isqrt

def divisors(n:int)->list[int]:
    ds=[]
    for t in range(1,isqrt(n)+1):
        if n%t==0:
            ds.append(t)
            if t*t!=n:ds.append(n//t)
    return sorted(ds)

def valid_unitary(t:int,n:int)->bool:
    return n%t==0 and gcd(t,n//t)==1

def check(cert:dict)->dict:
    assert cert['schema']=='B699-ODD13-Q0-v1'
    assert cert['Q_values']==[1,3,13,39]
    assert cert['theorem_bounds']=={'family_I':'512 B^2 a^6 < 27 d M Q0^2', 'family_II':'512 B^2 a^6 < 2187 d M Q0^2'}
    assert cert['conclusion']=='no valid primitive (W,E) in the complete Q0|39 domain'
    expected=[];expected_cases=[];squares=0
    for k in [1,3]:
        for q in [1,3,13,39]:
            # derive the inclusive bound as the last integer below the
            # proved nonintegral rational threshold
            add,coef=(1,27) if k==1 else (6,2187)
            threshold_num=add*512+coef*q*q
            hi=(threshold_num-1)//512
            C={'kappa':k,'Q0':q,'bound_d_inclusive':hi,'d_values':[],
               'states':0,'square_states':0,'valid_primitive_roots':0}
            if k==3 and q%3==0:
                C['reason']='3 does not divide B in family II'
                expected_cases.append(C);continue
            for d in range(1,hi+1):
                if not(d%2==1 and d>=(3 if k==1 else 5)):continue
                if k==3 and d%3==0:continue
                M=(d+k)**2-3*k*k;B=((2*d+k)**2-13*k*k)//4
                cs=[]
                for c in ([1,3] if k==1 else [1]):
                    if (c*B)%q==0:cs.append(c)
                if not cs:continue
                for a in divisors(d):
                    if not valid_unitary(a,d):continue
                    if not 512*a**6*B**2<27*k**4*d*M*q**2:continue
                    if d not in C['d_values']:C['d_values'].append(d)
                    for m in divisors(M):
                        if not valid_unitary(m,M):continue
                        E=a*m;v=M//m
                        # Direct, uncancelled integer quadratic.
                        lead=M;lin=-(d+2*k)*E;con=E*E-q*m**3
                        Delta=lin*lin-4*lead*con
                        assert Delta%(m*m)==0
                        D=Delta//(m*m)
                        assert D==4*q*M*m-a*a*(3*d*d+4*k*d-12*k*k)
                        floor=isqrt(D) if D>=0 else None
                        roots=[]
                        if Delta>=0 and isqrt(Delta)**2==Delta:
                            squares+=1;C['square_states']+=1
                            bigroot=isqrt(Delta)
                            assert bigroot%m==0
                            for sign in (-1,1):
                                NN=-lin+sign*bigroot;DD=2*lead
                                integral=NN%DD==0
                                valid=False
                                if integral:
                                    V=NN//DD;W=k*V
                                    assert lead*V*V+lin*V+con==0
                                    valid=(W>E and W%2==1 and gcd(V,E)==1)
                                assert not valid, ('surviving primitive root',k,q,d,a,m,NN,DD)
                                roots.append({'sign':sign,'numerator':NN//m,
                                              'denominator':DD//m,'integral':integral,
                                              'valid_primitive':valid})
                        expected.append({'kappa':k,'Q0':q,'d':d,'M':M,'B':B,
                                         'a':a,'m':m,'v':v,'E':E,'allowed_c':cs,
                                         'reduced_discriminant':D,'floor_sqrt':floor,
                                         'rational_root_tests':roots})
                        C['states']+=1
            expected_cases.append(C)
    assert cert['cases']==expected_cases,'incomplete or changed case domain'
    assert cert['records']==expected,'incomplete or altered arithmetic records'
    return {'schema':'B699-ODD13-Q0-acceptance-v1','complete_cases':len(expected_cases),
            'complete_states':len(expected),'square_discriminants':squares,
            'primitive_survivors':0,
            'enumeration':'divisor-pair scan, direct uncancelled quadratic',
            'scope':'complete proved coefficient domain; not an n scan'}

def negative_tests(cert:dict)->list[str]:
    mutants=[]
    c=copy.deepcopy(cert);c['records'].pop();mutants.append(('deleted_last_state',c))
    c=copy.deepcopy(cert);c['cases'][0]['bound_d_inclusive']+=2;mutants.append(('changed_bound',c))
    c=copy.deepcopy(cert);c['records'][0]['floor_sqrt']+=1;mutants.append(('wrong_square_bracket',c))
    c=copy.deepcopy(cert);c['records'][0]['m']*=3;mutants.append(('wrong_full_prime_block',c))
    c=copy.deepcopy(cert);c['records'][0]['allowed_c']=[];mutants.append(('deleted_c3_allowance',c))
    c=copy.deepcopy(cert);c['cases'].pop();mutants.append(('deleted_case',c))
    c=copy.deepcopy(cert);c['Q_values']=[1,3,13];mutants.append(('deleted_39',c))
    c=copy.deepcopy(cert)
    rr=next(r for r in c['records'] if r['rational_root_tests'])
    rr['rational_root_tests'][0]['valid_primitive']=True
    mutants.append(('zero_root_accepted',c))
    c=copy.deepcopy(cert);c['records'][0]['kappa']=3;mutants.append(('swapped_family',c))
    rejected=[]
    for name,c in mutants:
        try:check(c)
        except (AssertionError,KeyError,ValueError,TypeError):rejected.append(name)
        else:raise AssertionError('damaged certificate accepted: '+name)
    return rejected

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--output',type=Path,required=True);ap.add_argument('--negative-tests',action='store_true')
    args=ap.parse_args();cert=json.loads(args.certificate.read_text())
    ans=check(cert)
    if args.negative_tests:ans['damaged_certificates_rejected']=negative_tests(cert)
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(ans,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'states':ans['complete_states'],'survivors':0,
                      'negative_tests':len(ans.get('damaged_certificates_rejected',[]))}))
