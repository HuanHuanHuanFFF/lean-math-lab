#!/usr/bin/env python3
"""Deterministic replay. Local feasibility uses nu, not the generator's EH test.
Finite tests below supplement the paper proof; they do not prove its unbounded
quantifiers or reconstruct a genuine NC3 input. No network/repository/Lean.
"""
from __future__ import annotations
import argparse,copy,json
from functools import lru_cache
from itertools import product
from math import gcd,prod
from pathlib import Path
from arithmetic import models_nu,pell_linear,power,defects,prime,vp

@lru_cache(None)
def local(p:int,q:int):
    if not prime(p) or p==2:raise ValueError('odd prime required')
    return models_nu(p,q)

def check_row_independent(r:dict,p:int)->None:
    A,B,h,nu,d,y=(r[k] for k in ('A','B','h','nu','d','y'))
    v=A*y%p;Q=(d+v)%p;P=(Q+h*v)%p
    assert (d*d+d+1-3*y*y)%p==0
    assert (A*B-3*(d-1))%p==0
    assert (2*nu-h*d+Q)%p==0
    assert (v*nu*nu-P*Q*Q+1)%p==0
    assert (nu*nu-B*y-(h+3)*d*d-(2*h+3)*d*v-(h+1)*v*v)%p==0
    C=(4*B*h-16*A*d-120*y-27*B)%p
    Z=(20*B-320*A-C)%p
    F=(3*Z*Z-64*(C*A+15)**2)%p
    cs=C*pow(4,-1,p)%p;fs=F*pow(16,-1,p)%p
    w=(5*fs+42*cs*cs-18000)%p
    V=(w*w-97200*cs*cs+194400000)%p
    for k,x in {'P':P,'Q':Q,'n':(P*Q*nu+2)%p,'C':C,'cstar':cs,
                'fstar':fs,'w':w,'V':V}.items():assert r[k]==x,(p,k)
    # Exact old index formulae projected modulo p; no new independent equation.
    j=(P+nu)*Q*Q%p;k=(Q*Q+v*nu)*P%p
    assert (j+k-r['n'])%p==0
    assert (j*k-P*Q*Q*(r['n']-1))%p==0

def check_certificate(cert:dict)->dict:
    assert cert['schema']=='B699-D-R27-origin-sevenfree-v1'
    assert cert['full_V_smallpart_exponents']=={'2':[0,4,6],'3':[0,2],'5':[0,4,5]}
    assert cert['V3_unit_mod3']==1
    assert cert['V5_units']=={'0':[4],'4':[1,2],'5':[3]}
    three,n3=local(3,0);seven,n7=local(7,0)
    assert cert['local3']==three and cert['local7']==seven
    assert len(three)==7 and len(seven)==15
    assert all(not(r['A']==r['B']==0) for r in three)
    n0=[r for r in three if r['n']==0]
    assert len(n0)==1 and n0[0]['A']==0 and n0[0]['B']==1
    image7=sorted({(r['V'],r['n']) for r in seven})
    assert image7==[(0,2),(2,2),(2,5),(3,0),(3,1),(3,3),(5,1),(5,2),(5,4),(5,6)]
    for c0 in (1,3):
      for s in range(3):
        compatible=any(r['V']==0 and r['n']==c0*pow(2,s,7)%7 for r in seven)
        assert compatible==(c0==1 and s==1)
    assert power((2,1),8,7)==(1,0)
    five=[];n5=0
    for q in (0,2):
        rows,count=local(5,q);n5+=count
        filtered=[r for r in rows if r['C']==0]
        assert len(filtered)==1
        five.append({'q_mod3':q,'models':filtered})
    assert cert['local5_C0']==five
    # Independently build the lifted five-phase list from local models and AB mod25.
    phase=[]
    for q in range(15):
      if q%3==1:continue
      Ut,Xt=pell_linear(8*q+1)
      d25=((3*Xt-1)//2)%25
      for c0 in (1,3):
       for s in range(12):
        if c0==1 and s%6:continue
        rows=next(r['models'] for r in five if r['q_mod3']==q%3)
        for r in rows:
            if r['n']!=c0*pow(2,s,5)%5:continue
            if r['A']==r['B']==0 and d25!=1:continue
            phase.append([q,c0,s]);break
    assert phase==cert['phase5_q15_s12'] and len(phase)==23
    assert power((2,1),24,25)==(1,20)
    for k in range(5):
        U,X=pell_linear(24*k+1)
        assert U%25==(2+10*k)%25 and X%25==(1+15*k)%25
        assert ((3*X-1)//2)%25==(1+10*k)%25
    for q in range(12):
        U,X=pell_linear(8*q+1)
        assert U//2%3==1 and ((3*X-1)//2)%3==1
    for p,q in ((3,0),(5,0),(5,2),(7,0)):
        for r in local(p,q)[0]:check_row_independent(r,p)
    b=cert['boundary']
    assert (b['q'],b['c0'],b['s'],b['V'])==(30,1,2400,867063118729)
    assert prime(b['V']) and gcd(b['V'],210)==1 and b['V']%16==9
    assert b['V']%3==1 and b['V']%5==4 and b['s']%6==0
    assert [z['p'] for z in b['witnesses']]==[3,5,7,11,13,17,19,37,61]
    bcandidates=0
    for z in b['witnesses']:
        p=z['p'];rows,count=local(p,b['q']);bcandidates+=count
        assert z['model'] in rows
        check_row_independent(z['model'],p)
        assert z['model']['V']==b['V']%p
        assert z['model']['n']==b['c0']*pow(2,b['s'],p)%p
    U,X=pell_linear(8*b['q']+1);d=(3*X-1)//2;n=1<<b['s']
    assert n>d*d and b['V']>b['q']**2
    assert vp(n-1,3)==2 and vp((n-2)//2,3)==0
    assert (8*b['q']-4)//2<=b['s']<=18*(8*b['q']+1)+15
    return {'local_feasibility_candidates':{'mod3':n3,'mod5_both_rows':n5,'mod7':n7,
                   'sum_primary':n3+n5+n7,'boundary_nine_primes':bcandidates},
            'local_model_counts':{'mod3':len(three),'mod5_C0':[1,1],'mod7':len(seven)},
            'phase5_class_count':23,
            'boundary':{'q':b['q'],'c0':b['c0'],'s':b['s'],'V':b['V'],
                        'V_deterministically_prime':True,'v3_n_minus1':2,
                        'scope':'Separate modular witnesses only; not a global integer/prime-power or NC3 recovery'}}

def regressions()->dict:
    three=0
    for A,B,c in product(range(9),repeat=3):
        if A%3==0:
            if B%3==0:continue
        else:
            if B%3 or (c+A)%3:continue
        f,w,V=defects(A,B,c)
        e=2 if A%3==0 else 0
        assert vp(V,3)==e and (V//3**e)%3==1
        three+=1
    five=0
    for A,B,c in product(range(25),repeat=3):
        f,w,V=defects(A,B,c)
        e=0 if c%5 else 4 if c%25 else 5
        unit={0:{4},4:{1,2},5:{3}}[e]
        assert vp(V,5)==e and (V//5**e)%5 in unit
        five+=1
    scaled=0
    for e in range(13):
      for z in (1,2,3,4,6,7,8,9):
       for A,B in ((2,4),(6,28),(12,20),(26,76)):
        c=5**e*z;f,w,V=defects(A,B,c)
        expected=0 if e==0 else 4 if e==1 else 5
        assert vp(V,5)==expected
        scaled+=1
    checks={
      'A_gt_2pow23':7**49>2**137,
      'constant_3part':2**6*3**2*5**5==1800000,
      'seven_gcd_constant':7203*194400000**7==2**56*3**36*5**35*7**4,
      'old_square_gap_threshold':3**49>2**67,
    }
    assert all(checks.values())
    six=[]
    for s in range(1,37):
        if s%2==0:
            isolated=vp(2**s-1,3)==1
            assert isolated==(s%6 in (2,4))
            six.append([s,isolated])
    small=sorted(2**a*3**b*5**c for a in (0,4,6) for b in (0,2) for c in (0,4,5))
    assert len(set(small))==18 and max(small)==1800000
    return {'v3_integer_regression_count':three,'v5_integer_regression_count':five,
            'v5_scaled_regression_count':scaled,'even_s_regression_count':len(six),
            'exact_constant_checks':checks,'new_small_parts':small,
            'regression_warning':'Finite algebraic/valuation regression only; unbounded claims are proved in PROOFS.md'}

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
    cert=json.loads(args.certificate.read_text(encoding='utf-8'))
    result=check_certificate(cert);result['regressions']=regressions()
    tests=[]
    for label,mutator in [
        ('deleted_mod5_model',lambda c:c['local5_C0'][0]['models'].pop()),
        ('false_mod7_phase',lambda c:c['local7'][0].update(n=(c['local7'][0]['n']+1)%7)),
        ('extra_five_phase',lambda c:c['phase5_q15_s12'].append([2,1,6])),
        ('false_5adic_exponent',lambda c:c['full_V_smallpart_exponents']['5'].append(2)),
        ('old_odd_exponent_boundary',lambda c:c['boundary'].update(s=2401))]:
        bad=copy.deepcopy(cert);mutator(bad)
        try:check_certificate(bad)
        except (AssertionError,ArithmeticError,ValueError):tests.append(label)
        else:raise AssertionError('bad certificate accepted: '+label)
    result.update(status='PASS',bad_certificates_rejected=tests,
        evidence_level='paper proof + exact finite certificates + same-author distinct algorithms; not Lean or external independent review')
    args.out.parent.mkdir(parents=True,exist_ok=True)
    args.out.write_text(json.dumps(result,sort_keys=True,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
    print('ORIGIN_PHASE_CERTIFICATES=PASS; MOD3_MODELS=7; MOD5_C0_MODELS=2; MOD7_MODELS=15')
    print('REFINED_3_5_VALUATIONS=PASS')
    print('FIVE_SAME_INPUT_PHASES=PASS; CLASSES=23')
    print('PRIME_POWER_SPLIT_CONSTANTS=PASS')
    print('BAD_CERTIFICATES_REJECTED=PASS; COUNT='+str(len(tests)))
    print('ROUND27_VERIFY=PASS')
if __name__=='__main__':main()
