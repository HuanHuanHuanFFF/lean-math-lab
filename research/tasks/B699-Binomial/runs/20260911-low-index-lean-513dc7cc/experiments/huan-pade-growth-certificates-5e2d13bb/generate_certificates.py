"""Small exact dyadic Bernstein certificates for the ten fixed i18 cores.

Generation uses power-to-Bernstein conversion and de Casteljau subdivision.
The separate checker reconstructs coefficients from affine factor endpoints.
No floating-point decision, Lean process, sieve, network or Git operation.
"""
from __future__ import annotations
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime,timezone
import argparse
import ctypes
import hashlib
import json
import math
import os
import sys
import time

OUT=Path(__file__).resolve().parent
PKG=Path('D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/materials/i18/B699-i18-content-Pade-closure-20260911')
sys.path.insert(0,str(PKG/'code/vendor'))
from rational_intervals import logq
SLACK=F(1,10**7)
KNOWN_FACTORIAL={(3,2),(15,8),(15,11)}


def peak_bytes():
    if os.name!='nt':return None
    class Mem(ctypes.Structure):
        _fields_=[('cb',ctypes.c_ulong),('faults',ctypes.c_ulong)]+[(k,ctypes.c_size_t) for k in
          ('peak','working','peak_paged','paged','peak_nonpaged','nonpaged','pagefile','peak_pagefile')]
    m=Mem();m.cb=ctypes.sizeof(m)
    ctypes.windll.kernel32.GetCurrentProcess.restype=ctypes.c_void_p
    ctypes.windll.psapi.GetProcessMemoryInfo.argtypes=[ctypes.c_void_p,ctypes.POINTER(Mem),ctypes.c_ulong]
    ctypes.windll.psapi.GetProcessMemoryInfo.restype=ctypes.c_int
    if ctypes.windll.psapi.GetProcessMemoryInfo(ctypes.windll.kernel32.GetCurrentProcess(),ctypes.byref(m),m.cb):return m.peak
    return None


def mul(a,b):
    out=[F(0)]*(len(a)+len(b)-1)
    for j,x in enumerate(a):
        for k,y in enumerate(b):out[j+k]+=x*y
    return out


def linear_power(a,b,n):return [F(math.comb(n,k))*a**(n-k)*b**k for k in range(n+1)]


def core_coefficients(c,d,z,kind):
    if kind=='Q':powers=(c-d,d,d);linears=((F(0),F(1)),(F(1),F(-1)),(F(1),z-1))
    else:powers=(d,d,c-d);linears=((F(0),F(1)),(F(1),F(-1)),(F(1),-z))
    pol=[F(1)]
    for (a,b),n in zip(linears,powers):pol=mul(pol,linear_power(a,b,n))
    return pol,powers


def to_bernstein(pol):
    n=len(pol)-1
    return [sum((pol[k]*F(math.comb(i,k),math.comb(n,k)) for k in range(i+1)),F(0)) for i in range(n+1)]


def halve(bs):
    left=[bs[0]];right=[bs[-1]];row=bs
    while len(row)>1:
        row=[(a+b)/2 for a,b in zip(row,row[1:])]
        left.append(row[0]);right.append(row[-1])
    return left,list(reversed(right))


def point_core(c,d,z,kind,x):
    return (x**(c-d)*(1-x)**d*(1-(1-z)*x)**d if kind=='Q' else
            x**d*(1-x)**d*(1-z*x)**(c-d))


def derivative_sign(c,d,z,kind,x):
    if kind=='Q':
        a=c-d;b=d;k=1-z;e=d
    else:a=d;b=d;k=z;e=c-d
    return a*(1-x)*(1-k*x)-b*x*(1-k*x)-e*k*x*(1-x)


def proposed_lambda(c,d,z,kind):
    lo,hi=F(0),F(1)
    for _ in range(40):
        mid=(lo+hi)/2
        if derivative_sign(c,d,z,kind,mid)>0:lo=mid
        else:hi=mid
    x=(lo+hi)/2
    lower=point_core(c,d,z,kind,x)
    assert lower>0
    return lower*(1+SLACK),x,lower


def encode(bs):
    den=math.lcm(*(v.denominator for v in bs))
    return str(den),[str(v.numerator*(den//v.denominator)) for v in bs]


def certificate(c,d,z,kind):
    pol,powers=core_coefficients(c,d,z,kind)
    bs=to_bernstein(pol);lam,x,lower=proposed_lambda(c,d,z,kind)
    stack=[(F(0),F(1),0,bs)];leaves=[];nodes=0
    while stack:
        a,b,depth,coeffs=stack.pop();nodes+=1
        assert len(leaves)<512 and depth<=24,'bounded certificate generation limit'
        if max(coeffs)<lam:
            den,nums=encode(coeffs)
            leaves.append({'a':str(a),'b':str(b),'depth':depth,'bernstein_denominator':den,
                           'bernstein_numerators':nums,'strict_gap':str(lam-max(coeffs))})
        else:
            l,r=halve(coeffs);mid=(a+b)/2
            stack.append((mid,b,depth+1,r));stack.append((a,mid,depth+1,l))
    return {'kind':kind,'degree':c+d,'core_exponents':list(powers),'lambda':str(lam),
        'relative_proposal_slack':str(SLACK),'sample_x':str(x),'sample_value':str(lower),
        'generation_method':'exact power-to-Bernstein conversion; exact dyadic de Casteljau',
        'nodes_visited':nodes,'leaves':leaves,'max_depth':max(v['depth'] for v in leaves),
        'weights':{'delta0':([c-d-1,d,d] if kind=='Q' else [d,d,c-d-1]),
                   'delta1':([c-d,d-1,d-1] if kind=='Q' else [d-1,d-1,c-d])}}


def beta_moment(a,b):return F(math.factorial(a)*math.factorial(b),math.factorial(a+b+1))
def beta_base(c,d):return F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))
def prefactor_K(c,d,delta):
    term=F(math.factorial(c+d-delta),math.factorial(d-delta)**2*math.factorial(c-d+delta-1))
    return 2*term/beta_base(c,d)
def weight_moment(c,d,z,kind,delta):
    h=d-delta;t=c-d-1+delta
    if kind=='Q':return sum((math.comb(h,j)*z**j*beta_moment(t+j,2*h-j) for j in range(h+1)),F(0))
    return sum((math.comb(t,j)*(1-z)**j*beta_moment(h+j,h+t-j) for j in range(t+1)),F(0))


def margins(row,lamQ,lamE,CQ,CE):
    p,q,k,l,a,b,c,d=[row[t] for t in ('p','q','k0','l0','a','b','c','d')]
    P,Q=p**k,q**l;L=F(row['L1']);D=row['D0'];beta=beta_base(c,d)
    BQ,BE=beta*lamQ,beta*lamE
    o3=F(P**(c-d))*L**d/(a**d*b**c*BQ)
    o4=F(min(P,Q)**c)*L**d/((a*P)**(c-d)*D**(2*d)*BE)
    assert o3>1 and o4>1
    lp,lq,l2=logq(F(P)),logq(F(Q)),logq(F(2))
    selector=min(F(1000-row['wp'],1000)/(c*lp.hi),F(1000-row['wq'],1000)/(c*lq.hi))
    H=599999;lo_logY=H*l2.lo;mlo=selector*lo_logY-1
    e3,e4=logq(o3),logq(o4);lm=logq(F(max(P,Q)))
    Tlo,Thi=c*lm.lo+e4.lo,c*lm.hi+e4.hi
    gap=selector*Tlo-1
    rhs3=logq(48*max(F(1),CQ));rhs4=logq(4*max(F(1),CE))
    checks={'m_minus_m0':mlo-row['m0'],'omega3_margin':mlo*e3.lo-rhs3.hi,
            'betaT_minus_one':gap,'height_margin':gap*lo_logY-Thi-rhs4.hi}
    assert min(checks.values())>0,checks
    return {'beta':str(beta),'BQ_beta_lambda':str(BQ),'BE_beta_lambda':str(BE),
       'G_rate_base_L_power_d':str(L**d),'BQ_over_L_power_d':str(BQ/L**d),'BE_over_L_power_d':str(BE/L**d),
       'Omega3_power_d':str(o3),'Omega4_power_d':str(o4),'m_lower':str(mlo),
       'T_interval':[str(Tlo),str(Thi)],'selector_lower':str(selector),
       'positive_rational_margins':{k:str(v) for k,v in checks.items()},
       'readable_margins_not_acceptance':{k:float(v) for k,v in checks.items()},
       'same_log48_log4_as_original':CQ<1 and CE<1,'height_bits_Y':H}


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--rows',default='0,2,9');args=ap.parse_args()
    chosen=[int(x) for x in args.rows.split(',')];rows=json.loads((PKG/'input/i18_cut_inputs.json').read_text())['cuts']
    dest=OUT/'certificates';dest.mkdir(exist_ok=True);summary=[];started=time.monotonic()
    for idx in chosen:
        path=dest/f'row-{idx:02d}.json'
        if path.exists():
            data=json.loads(path.read_text(encoding='utf-8'))
            assert data['row']==rows[idx] and data['slack']==str(SLACK)
            summary.append({'row':idx,'reused_saved_certificate':True,'path':str(path),'sha256':hashlib.sha256(path.read_bytes()).hexdigest()})
            continue
        row=rows[idx];c,d=row['c'],row['d'];P=row['p']**row['k0'];z=F(row['D0'],row['a']*P)
        assert row['D0']==row['a']*P-row['b']*row['q']**row['l0']
        assert 0<z<1 and 1<F(c,d)<1/z,'Sign/domain must be handled explicitly'
        began=time.monotonic();Qcert=certificate(c,d,z,'Q');Ecert=certificate(c,d,z,'E')
        constants=[]
        for delta in (0,1):
            K=prefactor_K(c,d,delta);jq=weight_moment(c,d,z,'Q',delta);je=weight_moment(c,d,z,'E',delta)
            constants.append({'delta':delta,'K':str(K),'weight_Q_moment':str(jq),'weight_E_moment':str(je),
                   'CQ':str(K*jq/F(Qcert['lambda'])),'CE':str(K*je/F(Ecert['lambda']))})
        CQ=max(F(v['CQ']) for v in constants);CE=max(F(v['CE']) for v in constants)
        numerical=margins(row,F(Qcert['lambda']),F(Ecert['lambda']),CQ,CE)
        data={'schema':'i18-dyadic-bernstein-growth-v1','row_index':idx,'row':row,'z':str(z),
            'slack':str(SLACK),'Q':Qcert,'E':Ecert,'constants':constants,'max_CQ':str(CQ),'max_CE':str(CE),
            'factorial_status':('verified_three_pair_prefactor' if (c,d) in KNOWN_FACTORIAL else 'extra_pair_prefactor_pending_not_accepted'),
            'numerics':numerical,'seconds':time.monotonic()-began,
            'proof_boundary':'Leafwise cone membership only. Requires moment subdivision/reflection/tree aggregation; not a global cone input.',
            'lean_run':False}
        path.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        item={'row':idx,'p':row['p'],'q':row['q'],'c':c,'d':d,'z':str(z),
            'lambdaQ_display':float(F(Qcert['lambda'])),'lambdaE_display':float(F(Ecert['lambda'])),
            'leaves_Q':len(Qcert['leaves']),'leaves_E':len(Ecert['leaves']),'depth_Q':Qcert['max_depth'],'depth_E':Ecert['max_depth'],
            'CQ_display':float(CQ),'CE_display':float(CE),'margins_display':numerical['readable_margins_not_acceptance'],
            'factorial_status':data['factorial_status'],'seconds':data['seconds'],'certificate_bytes':path.stat().st_size}
        summary.append(item);print(json.dumps(item,ensure_ascii=False),flush=True)
    peak=peak_bytes();assert peak is not None and peak<200_000_000,peak
    output={'status':'GENERATED_SELECTED_EXACT_GROWTH_CERTIFICATES','rows':chosen,'summary':summary,
       'seconds':time.monotonic()-started,'peak_working_set_bytes':peak,'memory_limit_bytes':200_000_000,
       'finished_utc':datetime.now(timezone.utc).isoformat(),'lean_run':False}
    (OUT/('generation-'+('-'.join(map(str,chosen)))+'.json')).write_text(json.dumps(output,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in output.items() if k!='summary'},ensure_ascii=False))

if __name__=='__main__':main()
