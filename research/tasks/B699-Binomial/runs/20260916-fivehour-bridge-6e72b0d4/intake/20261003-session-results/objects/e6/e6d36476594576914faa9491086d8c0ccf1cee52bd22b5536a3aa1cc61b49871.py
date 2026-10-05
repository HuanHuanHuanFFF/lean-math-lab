#!/usr/bin/env python3
"""Build finite exact checks for the author uniform integer-phase proof."""
from __future__ import annotations
import argparse, importlib.util, json
from fractions import Fraction as F
from math import isqrt
from pathlib import Path

def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def add(*ps):
    d={}
    for p in ps:
        for k,v in p.items():d[k]=d.get(k,F(0))+v
    return {k:v for k,v in d.items() if v}
def scale(p,c):return {k:v*F(c) for k,v in p.items() if v*F(c)}
def mul(p,q):
    out={}
    for i,a in p.items():
        for j,b in q.items():out[i+j]=out.get(i+j,F(0))+a*b
    return {k:v for k,v in out.items() if v}
def pw(p,k):
    r={0:F(1)}
    for _ in range(k):r=mul(r,p)
    return r
def enc(p):return [[k,str(v)] for k,v in sorted(p.items())]
def G(h,w):return (w*w-h)*(h-2*w-1)-h

def roots(h,Q):
    tau=isqrt(h+1);lo=F(tau);hi=F(tau+1)
    fun=lambda w:G(h,w)+F(h,Q**3)
    assert fun(lo)<0<fun(hi)
    for _ in range(128):
        md=(lo+hi)/2
        if fun(md)<0:lo=md
        else:hi=md
    phi=lambda w:h*w-2*w*w+F(2,Q**3)+2*h+1
    pm,pp=phi(lo),phi(hi)
    sm,sp=pm+lo,pp+hi
    fm=pm.numerator//pm.denominator;fp=pp.numerator//pp.denominator
    gm=sm.numerator//sm.denominator;gp=sp.numerator//sp.denominator
    assert fm==fp and gm==gp
    return {'h':h,'Q':Q,'root_interval':[str(lo),str(hi)],
            'Phi_floor':fm,'Phi_plus_w_floor':gm,
            'only_Q3_carry_layer':gm-fm==tau,
            'scope':'real algebraic diagnostic only; no integer P/H/Pell/n recovery'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);arg=ap.parse_args()
    sp=importlib.util.spec_from_file_location('local_recovery',Path(__file__).with_name('recover_guarded.py'))
    mod=importlib.util.module_from_spec(sp);sp.loader.exec_module(mod)
    u={1:F(1)};h={2:F(1),0:F(-1)};x={1:F(1),-2:F(1),-3:F(5,2)}
    gb=add(scale(pw(x,3),-2),mul(add(h,{0:F(-1)}),pw(x,2)),scale(mul(h,x),2),scale(pw(h,2),-1))
    U={2:F(1),1:F(1),0:F(2)};hc=add(U,{0:F(-1)})
    cm={3:F(1),2:F(3,2),1:F(19,8),0:F(15,16)}
    cp={3:F(1),2:F(3,2),1:F(27,8),0:F(23,16)}
    dm=add(mul(pw(hc,2),U),scale(pw(cm,2),-1))
    dp=add(pw(U,3),scale(pw(cp,2),-1))
    T=F(256)
    bounds={
      'G_base_abs_times_u':str(sum(abs(v)*T**(k+1) for k,v in gb.items())),
      'source_h_over_Q_cubed_times_u':str((2+3/T)**3/(1-1/T**2)**2),
      'derivative_lower_margin':str(1-4/T-16/T**2-8/T**3),
      'epsilon_lower_margin':str(1-20/T**2),
      'epsilon_upper_margin':str(2-(1+F(5,2)/T+20/T**2)),
      'D_lower_margin':str(F(1,2)-9/T-F(103,2)/T**2),
      'D_upper_margin':str(F(1,2)-31/T-F(5,2)/T**2-8/T**3),
      'central_root_error_upper':str(F(147,128)/T+F(147,128)/T**2+F(1519,512)/T**3),
      'central_guard_margin':str(T**3-64*(T*T+T+2))}
    tt=[256,257,258,259,260,261,262,263,511,1024,5616,8872,14332,25252,10**6+4,10**20+4,10**60+7]
    pairs=set()
    for t in tt:
        for d in [1,2,isqrt(t)+1,t//2,t,t+2,3*t//2,2*t]:
            if (t*t+d-1)%2==0:d+=1
            if 0<=d<=2*t:pairs.add((t,d))
    pairs.add((5616,7402))
    phases=[mod.phase(t*t+d-1) for t,d in sorted(pairs)]
    cen=[]
    for t in list(range(256,272))+[8872,14332,25252,10**20+4,10**60+7]:
        f=mod.phase(t*t+t+1)
        cen.append({'tau':t,'J_minus':f['J_minus'],'J_plus':f['J_plus'],
                    'floor_difference':f['J_plus']-f['J_minus'],
                    'Q3_carry':t%8>=4,'guarded':f['guarded'],
                    'h_labels':[f['h']%m for m in (2,3,5,7,13)],
                    'scope':'h arithmetic only; not an original tuple'})
    rad=[]
    for p in phases:
        if p['guarded'] and p['tau']<15000:
            if len(rad)>=24:break
            rad.append(roots(p['h'],max(1000003,3*p['tau']+101)))
    for t in (8872,14332):rad.append(roots(t*t+t+1,1000003))
    rad.append(roots(31546857,1000003))
    selectors=[]
    for k in (0,1,2,4,8,16,32,64):
        n=192<<(12*k)
        for lo,hi in [(n,n+1),(n-1,n),(n-1,n+1),(n+1,2*n),(n//2+1,n+1)]:
            v=mod.one_power(lo,hi)
            selectors.append({'low':lo,'high':hi,'selected':list(v) if v else None})
    quadratic=[]
    for hh in (17,33,101,65537,1000001):
      for QQ in (3,5,17,101):
       for H in (1,3,7,11):
        P=hh*QQ-4*H
        if P<=4*H+2*QQ:continue
        n=2*P*QQ*H+2;C=(n-2)//(2*QQ);D=(hh*QQ)**2-16*C
        r=isqrt(D)
        assert r*r==D and (hh*QQ-r)//8==H
        quadratic.append({'h':hh,'Q':QQ,'H':H,'P':P,'n':n,'discriminant':D,
                          'scope':'quadratic identity test only; not full original core'})
    data={'schema':'B699-D-R10-global-integer-phase-v1','threshold_tau':256,
      'guard_factor':4,'root_phase_error_constant':2,'n_correction_numerator':2,
      'original_source_layer_multiple':3,'is_original_NC_count':False,
      'polynomials':{'G_base':enc(gb),'central_minus_residual':enc(dm),'central_plus_residual':enc(dp)},
      'rational_bounds':bounds,'phase_records':phases,'central_records':cen,
      'real_root_diagnostics':rad,'one_power_tests':selectors,'quadratic_tests':quadratic,
      'uniform_central_carry_residues_mod8':[4,5,6,7],
      'coarse_h_example_sequences':[
         {'tau_start':14332,'tau_step':10920,'central_delta_offset':2,'Q3_carry':True},
         {'tau_start':8872,'tau_step':10920,'central_delta_offset':2,'Q3_carry':False}],
      'unchecked':['global existence of any original core tuple','historical net difference',
                   'boundedness of h and Q','all other prime-source carry layers']}
    Path(arg.output).parent.mkdir(parents=True,exist_ok=True);Path(arg.output).write_bytes(canon(data))
    print(json.dumps({'status':'BUILT','phase_records':len(phases),'central_records':len(cen),
                      'real_root_diagnostics':len(rad),'quadratic_tests':len(quadratic),
                      'one_power_tests':len(selectors),'is_original_NC_count':False}))
if __name__=='__main__':main()
