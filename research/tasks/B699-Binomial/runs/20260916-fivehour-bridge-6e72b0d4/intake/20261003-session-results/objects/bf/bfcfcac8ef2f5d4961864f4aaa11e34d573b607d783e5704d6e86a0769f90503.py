#!/usr/bin/env python3
"""Independent exact receiver. No imports from generator or recovery script.
Finite checks support, but do not formalize, the uniform paper proof.
"""
from __future__ import annotations
import argparse,copy,json
from fractions import Fraction as F
from pathlib import Path

def need(ok,msg):
    if not ok:raise ValueError(msg)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def nsqrt(n):
    if n<0:raise ValueError('negative square root')
    if n<2:return n
    a=1<<((n.bit_length()+1)//2)
    while True:
        b=(a+n//a)//2
        if b>=a:
            need(a*a<=n<(a+1)**2,'integer Newton postcondition');return a
        a=b

def ev(rows,x):return sum((F(c)*F(x)**k for k,c in rows),F(0))
def Gexpanded(h,x):return -2*x**3+(h-1)*x*x+2*h*x-h*h

def verify(o):
    need(o['schema']=='B699-D-R10-global-integer-phase-v1','schema')
    need(o['threshold_tau']==256 and o['guard_factor']==4,'uniform guard constants')
    need(o['root_phase_error_constant']==2,'phase error constant')
    need(o['n_correction_numerator']==2,'original n correction')
    need(o['original_source_layer_multiple']==3,'original complete source exponent')
    need(o['is_original_NC_count'] is False,'NC count disclaimer')
    tab=o['polynomials'];need(set(tab)=={'G_base','central_minus_residual','central_plus_residual'},'table set')
    for name,rows in tab.items():
        ks=[r[0] for r in rows];need(ks==sorted(set(ks)),'duplicate powers')
        need(all(F(c)!=0 for k,c in rows),'zero coefficients')
        if name=='G_base':need(all(-9<=k<=-1 for k in ks),'Laurent degree')
        else:need(all(0<=k<=2 for k in ks),'central residual degree')
    points=0
    # Before any cancellation, multiplication by u^9 gives degree at most 13.
    for a in range(2,16):
        u=F(a);h=u*u-1;x=u+1/u**2+F(5,2)/u**3
        need(ev(tab['G_base'],u)==Gexpanded(h,x),'G-base full interpolation');points+=1
    # The two raw degree-six polynomial identities require seven points each.
    for t in range(2,9):
        U=t*t+t+2;h=U-1
        cm=F(t**3)+F(3,2)*t*t+F(19,8)*t+F(15,16)
        cp=F(t**3)+F(3,2)*t*t+F(27,8)*t+F(23,16)
        need(ev(tab['central_minus_residual'],t)==h*h*U-cm*cm,'central minus interpolation')
        need(ev(tab['central_plus_residual'],t)==U**3-cp*cp,'central plus interpolation');points+=2
    need(all(F(c)<0 for _,c in tab['G_base']),'signed G remainder')
    T=F(256)
    expected={
      'G_base_abs_times_u':sum(abs(F(c))*T**(k+1) for k,c in tab['G_base']),
      'source_h_over_Q_cubed_times_u':(2+3/T)**3/(1-1/T**2)**2,
      'derivative_lower_margin':1-4/T-16/T**2-8/T**3,
      'epsilon_lower_margin':1-20/T**2,
      'epsilon_upper_margin':2-(1+F(5,2)/T+20/T**2),
      'D_lower_margin':F(1,2)-9/T-F(103,2)/T**2,
      'D_upper_margin':F(1,2)-31/T-F(5,2)/T**2-8/T**3,
      'central_root_error_upper':F(147,128)/T+F(147,128)/T**2+F(1519,512)/T**3,
      'central_guard_margin':T**3-64*(T*T+T+2)}
    need({k:F(v) for k,v in o['rational_bounds'].items()}==expected,'rational bound values')
    need(expected['G_base_abs_times_u']<15,'G remainder bound')
    need(expected['source_h_over_Q_cubed_times_u']<9,'source perturbation bound')
    need(expected['central_root_error_upper']<F(1,128),'central floor gap')
    need(all(v>0 for k,v in expected.items() if 'margin' in k),'positive margins')
    for r in o['phase_records']:
        h=r['h'];U=h+1;t=nsqrt(U);jm=nsqrt(h*h*U);jp=nsqrt(U**3)
        gm=h*h*U-jm*jm;gp=U**3-jp*jp;guard=t>=256 and gm>=4*h and gp>=4*U
        need(r=={'h':h,'tau':t,'Delta':U-t*t,'J_minus':jm,'J_plus':jp,
                  'gap_minus':gm,'gap_plus':gp,'guarded':guard,
                  'Q3_carry_if_original_tuple':guard and jp-jm==t,
                  'Q3_zero_if_original_tuple':guard and jp-jm==t+1,
                  'quotient_J':jm-2*h-1},'integer-phase record')
        need(jp-jm in (t,t+1),'exact root difference')
    need(o['uniform_central_carry_residues_mod8']==[4,5,6,7],'central congruence classification')
    for r in o['central_records']:
        t=r['tau'];h=t*t+t+1;U=h+1
        km=(16*t**3+24*t*t+38*t+15)//16
        kp=(16*t**3+24*t*t+54*t+23)//16
        need(km==nsqrt(h*h*U) and kp==nsqrt(U**3),'closed central square roots')
        need(r['J_minus']==km and r['J_plus']==kp and r['floor_difference']==kp-km,'central stored roots')
        need(r['Q3_carry']==(t%8 in (4,5,6,7)),'central carry side')
        need(r['guarded'] and h*h*U-km*km>=4*h and U**3-kp*kp>=4*U,'central guards')
        need(r['h_labels']==[h%m for m in (2,3,5,7,13)],'central labels')
        need(r['scope']=='h arithmetic only; not an original tuple','central model scope')
    for r in o['real_root_diagnostics']:
        h,Q=r['h'],r['Q'];t=nsqrt(h+1);lo,hi=map(F,r['root_interval'])
        need(F(t)<=lo<hi<=t+1 and hi-lo==F(1,2**128),'exact dyadic root bracket')
        need(Gexpanded(h,lo)+F(h,Q**3)<0<Gexpanded(h,hi)+F(h,Q**3),'expanded cubic signs')
        pm=h*lo-2*lo*lo+F(2,Q**3)+2*h+1;pp=h*hi-2*hi*hi+F(2,Q**3)+2*h+1
        sm,sp=pm+lo,pp+hi
        fm,fp=pm//1,pp//1;gm,gp=sm//1,sp//1
        need(fm==fp==r['Phi_floor'] and gm==gp==r['Phi_plus_w_floor'],'certified floors')
        jm,jp=nsqrt(h*h*(h+1)),nsqrt((h+1)**3)
        need(h*h*(h+1)-jm*jm>=4*h and (h+1)**3-jp*jp>=4*(h+1),'diagnostic guarded')
        need(fm==jm and gm==jp,'uniform phase prediction regression')
        need(r['only_Q3_carry_layer']==(gm-fm==t),'real diagnostic carry')
        need(r['scope']=='real algebraic diagnostic only; no integer P/H/Pell/n recovery','real diagnostic scope')
    for r in o['one_power_tests']:
        low,high=r['low'],r['high'];need(0<low<high<=2*low,'power window')
        n=192;s=6;found=[]
        while n<high:
            if n>=low:found.append([n,s])
            n*=4096;s+=12
        need(len(found)<=1 and r['selected']==(found[0] if found else None),'independent power enumeration')
    for r in o['quadratic_tests']:
        h,Q,H,P,n,D=(r[x] for x in ('h','Q','H','P','n','discriminant'))
        need(h*Q==P+4*H and P>4*H+2*Q,'small root branch')
        need(n==2*P*Q*H+2 and (n-2)%(2*Q)==0,'same n product')
        need(D==(h*Q)**2-16*((n-2)//(2*Q))==(P-4*H)**2,'quadratic identity')
        need((h*Q-nsqrt(D))%8==0 and (h*Q-nsqrt(D))//8==H,'unique H branch')
        need(r['scope']=='quadratic identity test only; not full original core','quadratic test scope')
    seq=o['coarse_h_example_sequences']
    need(seq==[{'tau_start':14332,'tau_step':10920,'central_delta_offset':2,'Q3_carry':True},
               {'tau_start':8872,'tau_step':10920,'central_delta_offset':2,'Q3_carry':False}],'sequence binding')
    for r in seq:
        t=r['tau_start'];step=r['tau_step']
        need(all(step%m==0 for m in (8,3,5,7,13)),'uniform sequence residues')
        h=t*t+t+1;need([h%m for m in (2,3,5,7,13)]==[1,0,2,6,4],'coarse h labels')
        need((t%8>=4)==r['Q3_carry'],'sequence source phase')
    # Direct integer binomial expansion: valid uniformly by 2a>=a+1.
    transports=0
    for a in range(1,7):
      for A0 in (1,2,7,12):
       for J in (1,3,11,37):
        u13=13**a;mod=13*u13;Q=1+7*A0*u13;n=3*2**(6+12*a)
        need((n-J*Q**3-(n-J-8*J*A0*u13))%mod==0,'same n 13 transport')
        transports+=1
    return {'status':'PASS','complete_interpolation_points':points,'rational_bounds_checked':len(expected),
      'integer_phase_records':len(o['phase_records']),'central_records':len(o['central_records']),
      'real_root_diagnostics':len(o['real_root_diagnostics']),'one_power_tests':len(o['one_power_tests']),
      'quadratic_tests':len(o['quadratic_tests']),'13_transport_regressions':transports,
      'uniform_proof_status':'author paper proof, not formalized','actual_NC3_instances_counted':False,
      'global_recovery_exhausted':False,'Lean_executed':False}

def negative_tests(o):
    tests=[]
    tests.append(('guard threshold',lambda x:x.__setitem__('threshold_tau',255)))
    tests.append(('guard gap coefficient',lambda x:x.__setitem__('guard_factor',3)))
    tests.append(('removed original +2',lambda x:x.__setitem__('n_correction_numerator',0)))
    tests.append(('wrong prime working layer',lambda x:x.__setitem__('original_source_layer_multiple',2)))
    tests.append(('G Laurent coefficient',lambda x:x['polynomials']['G_base'][0].__setitem__(1,'-1')))
    tests.append(('central minus residual',lambda x:x['polynomials']['central_minus_residual'][0].__setitem__(1,'0')))
    tests.append(('central plus residual',lambda x:x['polynomials']['central_plus_residual'][1].__setitem__(1,'1')))
    tests.append(('phase lower root',lambda x:x['phase_records'][0].__setitem__('J_minus',x['phase_records'][0]['J_minus']+1)))
    tests.append(('phase gap',lambda x:x['phase_records'][0].__setitem__('gap_plus',x['phase_records'][0]['gap_plus']+1)))
    tests.append(('central wrong residue class',lambda x:x.__setitem__('uniform_central_carry_residues_mod8',[0,1,2,3])))
    tests.append(('central carry reversal',lambda x:x['central_records'][0].__setitem__('Q3_carry',not x['central_records'][0]['Q3_carry'])))
    tests.append(('real root bracket corruption',lambda x:x['real_root_diagnostics'][0]['root_interval'].__setitem__(0,'0')))
    tests.append(('power endpoint error',lambda x:x['one_power_tests'][0].__setitem__('selected',None)))
    tests.append(('quadratic wrong branch value',lambda x:x['quadratic_tests'][0].__setitem__('H',x['quadratic_tests'][0]['H']+1)))
    tests.append(('coarse family wrong step',lambda x:x['coarse_h_example_sequences'][0].__setitem__('tau_step',10921)))
    tests.append(('local model upgraded to core',lambda x:x['central_records'][0].__setitem__('scope','original NC3 tuple')))
    out=[]
    for label,change in tests:
        bad=copy.deepcopy(o);change(bad)
        try:verify(bad)
        except (ValueError,KeyError,ZeroDivisionError,AssertionError):out.append({'test':label,'rejected':True})
        else:raise ValueError('tamper accepted: '+label)
    return out

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',required=True)
    ap.add_argument('--output',required=True);ap.add_argument('--negative-tests',action='store_true');a=ap.parse_args()
    obj=json.loads(Path(a.certificate).read_text());r=verify(obj)
    r['negative_tests']=negative_tests(obj) if a.negative_tests else []
    Path(a.output).write_bytes(canon(r));print(json.dumps({'status':'PASS','negative_tests_rejected':len(r['negative_tests']),
        'interpolation_points':r['complete_interpolation_points'],'actual_NC3_instances_counted':False}))
if __name__=='__main__':main()
