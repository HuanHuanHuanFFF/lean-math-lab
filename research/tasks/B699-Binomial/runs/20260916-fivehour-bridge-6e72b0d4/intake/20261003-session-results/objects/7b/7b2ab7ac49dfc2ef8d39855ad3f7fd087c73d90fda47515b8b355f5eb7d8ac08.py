#!/usr/bin/env python3
"""Second exact receiver: interpolation, expanded cubic signs and integer carries.
Does not import the generator. Uniform theorems remain author paper proofs.
"""
from __future__ import annotations
import argparse, copy, hashlib, itertools, json
from fractions import Fraction as F
from math import isqrt
from pathlib import Path

def need(ok,msg):
    if not ok:raise ValueError(msg)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def poly(rows,t,d):return sum((F(c)*F(t)**a*F(d)**b for a,b,c in rows),F(0))
def fexpanded(h,Q,w):return -2*w**3+(h-1)*w*w+2*h*w-h*h+F(h,Q**3)
def table_bound(rows,shift):
    totals=[F(0),F(0)] # constant, Delta
    for a,b,c in rows:
        ee=a+shift+b//2
        need(ee<=0,'uncontrolled monomial in bound')
        totals[b%2]+=abs(F(c))*F(256)**ee
    return [str(totals[1]),str(totals[0])]
def isprime(n):return n>=2 and all(n%d for d in range(2,isqrt(n)+1))

def verify(obj):
    need(obj['schema']=='B699-D-R09-near-square-v1','schema')
    need(obj['cutoff_tau']==256,'paper cutoff binding')
    need(obj['original_source_layer_multiple']==3,'original complete source layer')
    need(obj['n_correction_numerator']==2,'original n correction')
    need(obj['not_original_NC_count'] is True,'scope count')
    tabs=obj['polynomials'];points=0
    bounds={'G_w0':(-9,-1,6),'delta_w0_minus_J':(-6,-2,4),
            'G_D2_w1':(-12,-2,0),'D2_delta_plus_theta_minus_R':(-8,-2,0)}
    for name,rows in tabs.items():
        need(name in bounds,'unknown polynomial')
        lo,hi,dmax=bounds[name]
        keys=[]
        for a,b,c in rows:
            need(lo<=a<=hi and 0<=b<=dmax and F(c)!=0,'degree/zero bound')
            keys.append((a,b))
        need(keys==sorted(set(keys)),'duplicate/unordered polynomial entries')
    need(set(tabs)==set(bounds),'missing exact polynomial')
    for t,d in itertools.product(range(2,11),range(7)):
        w=F(t)+F(d,2*t)+F(1,t*t)+F(20-d*d,8*t**3)
        h=t*t+d-1
        expected=(w*w-h)*(h-2*w-1)-h
        need(poly(tabs['G_w0'],t,d)==expected,'G w0 interpolation')
        points+=1
    for t,d in itertools.product(range(2,7),range(5)):
        theta=F(d,2*t)+F(1,t*t)+F(20-d*d,8*t**3)
        h=t*t+d-1
        j=F(d*t,2)+1-2*d+F(3*d*d-4*d-12,8*t)
        expected=(h-4*t)*theta-2*theta*theta-j
        need(poly(tabs['delta_w0_minus_J'],t,d)==expected,'delta interpolation')
        points+=1
    for t in range(2,13):
        w=F(t)+F(1,t)+F(1,t*t)+F(2,t**3)+F(5,t**4);h=t*t+1
        need(poly(tabs['G_D2_w1'],t,0)==(w*w-h)*(h-2*w-1)-h,'D2 G interpolation')
        points+=1
    for t in range(2,9):
        th=F(1,t)+F(1,t*t)+F(2,t**3)+F(5,t**4);h=t*t+1
        need(poly(tabs['D2_delta_plus_theta_minus_R'],t,0)==(h-4*t)*th-2*th*th+th-(t-3),'D2 delta interpolation')
        points+=1
    cb=obj['coefficient_bounds']
    for name,tab,shift,limits in [('G','G_w0',1,[3,16]),('delta','delta_w0_minus_J',2,[2,12])]:
        recalc=table_bound(tabs[tab],shift)
        need(cb[name]==recalc,'monotone coefficient bound bytes')
        need(all(F(x)<y for x,y in zip(recalc,limits)),'monotone coefficient bound value')
    b2=sum((abs(F(c))*F(256)**(a+2) for a,b,c in tabs['G_D2_w1']),F(0))
    need(cb['D2_G_absolute']==str(b2) and b2<26,'D2 derivative residual bound')
    need(all(F(c)<0 for a,b,c in tabs['D2_delta_plus_theta_minus_R']),'D2 all-negative residual')
    rm={
      'derivative_at_8':str(F(8**3-4*8**2-14*8-6)),
      'Q_correction':str(F(9)-(F(2)+F(3,256))**3),
      'scaled_error':str(F(1)-F(5,16)-F(37,256)-F(18,256**2)),
      'odd_fraction_margin':str(F(1)-F(17,512)-(F(7,8)+F(1,256))),
      'even_fraction_margin':str(F(1)-F(17,512)-(F(3,8)+F(1,256))),
      'special_D2_margin':str(F(3)-F(24,256)),
      'D0_polynomial_at_6':str(F(3*6**2-6+2))}
    need(obj['rational_margins']==rm and all(F(x)>0 for x in rm.values()),'rational proof margin')
    roots=obj['root_regressions']+[obj['boundary']]
    need(len(roots)==19,'root list completeness')
    for rr in roots:
        h,Q,t,dd=rr['h'],rr['Q'],rr['tau'],rr['Delta']
        need(t==isqrt(h+1) and dd==h+1-t*t and h%2==1,'root parameters')
        lo,hi=map(F,rr['root_interval'])
        need(t<lo<hi<t+1 and hi-lo<F(1,2**90),'root enclosure size')
        need(fexpanded(h,Q,lo)<0<fexpanded(h,Q,hi),'independent cubic signs')
        need(lo*lo>h+1 and hi*hi<h+2,'root within correct square interval')
        need(Q*(2*lo+1)>=h and h>2*(2*hi+1),'real d>=1 and v>d')
        lth,hth=lo-t,hi-t
        dl=(h-4*t)*lth-2*lth*lth+F(2,Q**3)
        du=(h-4*t)*hth-2*hth*hth+F(2,Q**3)
        num=dl.numerator//dl.denominator
        need(num==du.numerator//du.denominator==rr['delta_integer_part'],'fractional part enclosure')
        carry=du-num<1-hth
        nocarry=dl-num>1-lth
        need(rr['continuous_carry_side']==carry and rr['continuous_no_carry_side']==nocarry,'root sign classification')
        if rr['kind']=='within_proved_band':
            need(t>=256 and dd*dd<=t and carry,'certified near-square band regression')
        else:
            need(h==31546857 and Q==1000003 and isprime(Q),'fixed outside-band object')
            need(dd*dd>t and nocarry and dl-num>F(2,3) and lth>F(13,20),'outside-band strict analytic obstruction')
            need([h%m for m in [2,3,5,7,13]]==[1,0,2,6,4],'coarse h phase only')
        need('not NC3' in rr['scope'],'weak root scope label')
    family=obj['phase_family'];need(len(family)==9,'phase family sample length')
    for k,rec in enumerate(family):
        t=837+2730*k;h=t*t+18
        need(rec['k']==k and rec['tau']==t and rec['Delta']==19 and rec['h']==h,'phase family reconstruction')
        residues={str(m):h%m for m in [2,3,5,7,13]}
        need(rec['residues']==residues=={'2':1,'3':0,'5':2,'7':6,'13':4},'phase family labels')
        need(19**2<=t and 'no original input' in rec['scope'],'phase family not NC')
    need(obj['quadratic_residues_mod13']==[0,1,3,4,9,10,12],'old square overlap')
    # Original polynomial identity with explicit E,L errors. The degree in each
    # of d,v,H,h is at most 3, so this is the complete 4x4x4x4 tensor.
    original_points=0
    for d,v,H,h in itertools.product(range(1,5),repeat=4):
        Q=d+v;P=Q+h*v
        E=4*v*H*H-P*Q*Q+1;L=h*d-4*H-Q
        Xi=-16*H**3+4*(h-1)*H*H*Q+4*h*H*Q*Q-h*h*Q**3+h
        need(Xi==h*E+(4*H*H-h*Q*Q)*L,'original E/L cubic identity')
        original_points+=1
    # Integer remainder algorithm, independent of the generator's rational phase.
    digest=hashlib.sha256();count=car=0
    for Q in range(3,42,2):
        for h in range(3,48,2):
            for H in range(1,2*Q+1):
                P=h*Q-4*H
                if P<=0:continue
                n=2*P*Q*H+2;j=Q*Q*(P+2*H)
                if not 0<j<=n:continue
                t,z=divmod(2*H,Q)
                if z==0:continue
                digit=(n%(Q**3))//(Q*Q);xdigit=(j%(Q**3))//(Q*Q)
                term=int((j%(Q**3))+(n-j)%(Q**3)>=Q**3)
                need(term==int(digit<xdigit) and xdigit==Q-z,'complete source digit carry')
                row=[Q,h,H,P,n,j,t,z,digit,xdigit,term]
                digest.update(canon(row));count+=1;car+=term
    ar=obj['arithmetic_regression']
    need(ar['count']==count and ar['carry_count']==car and ar['sha256']==digest.hexdigest(),'arithmetic regression checksum')
    return {'status':'PASS','laurent_interpolation_points':points,'original_error_identity_points':original_points,
            'integer_digit_cases':count,'integer_digit_carries':car,'real_root_enclosures':len(roots),
            'phase_label_samples':len(family),'uniform_proof_formalized':False,
            'actual_NC_instances':None,'external_BL_verified':False,'q6_executed':False}

def negatives(obj):
    tests=[]
    def bad(name,change):
        x=copy.deepcopy(obj);change(x)
        try:verify(x)
        except (ValueError,KeyError,TypeError,AssertionError,ZeroDivisionError):tests.append({'name':name,'rejected':True});return
        raise ValueError('corruption accepted: '+name)
    bad('complete_source_layer_3_to_2',lambda x:x.__setitem__('original_source_layer_multiple',2))
    bad('drop_n_plus_2',lambda x:x.__setitem__('n_correction_numerator',0))
    bad('lower_paper_cutoff_without_proof',lambda x:x.__setitem__('cutoff_tau',128))
    bad('alter_G_constant',lambda x:x['polynomials']['G_w0'][0].__setitem__(2,'1'))
    bad('omit_Laurent_term',lambda x:x['polynomials']['delta_w0_minus_J'].pop())
    bad('reverse_D2_residual_sign',lambda x:x['polynomials']['D2_delta_plus_theta_minus_R'][0].__setitem__(2,'50'))
    bad('false_coefficient_bound',lambda x:x['coefficient_bounds']['G'].__setitem__(0,'0'))
    bad('false_D2_absolute_bound',lambda x:x['coefficient_bounds'].__setitem__('D2_G_absolute','24'))
    bad('false_positive_margin',lambda x:x['rational_margins'].__setitem__('scaled_error','1'))
    bad('reverse_root_enclosure',lambda x:x['root_regressions'][0]['root_interval'].reverse())
    bad('claim_outside_band_carry',lambda x:x['boundary'].__setitem__('continuous_carry_side',True))
    bad('change_boundary_Q',lambda x:x['boundary'].__setitem__('Q',1000005))
    bad('change_formal_family_defect',lambda x:x['phase_family'][0].__setitem__('Delta',9))
    bad('admit_old_mod13_square_5',lambda x:x['quadratic_residues_mod13'].append(5))
    bad('miscount_arithmetic_checks',lambda x:x['arithmetic_regression'].__setitem__('count',1))
    bad('mislabel_NC_count',lambda x:x.__setitem__('not_original_NC_count',False))
    return tests

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',required=True);ap.add_argument('--output',required=True);ap.add_argument('--negative-tests',action='store_true');a=ap.parse_args()
    obj=json.loads(Path(a.certificate).read_text());result=verify(obj)
    result['negative_tests']=negatives(obj) if a.negative_tests else []
    result['certificate_sha256']=hashlib.sha256(Path(a.certificate).read_bytes()).hexdigest()
    p=Path(a.output);p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(canon(result))
    print(json.dumps({'status':'PASS','negative_tests_rejected':len(result['negative_tests']),
                      'integer_digit_cases':result['integer_digit_cases'],'q6_executed':False}))
if __name__=='__main__':main()
