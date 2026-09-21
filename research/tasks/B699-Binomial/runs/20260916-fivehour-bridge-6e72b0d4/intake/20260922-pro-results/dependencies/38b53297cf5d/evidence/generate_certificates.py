#!/usr/bin/env python3
"""Regenerate author certificates with SymPy; offline replay does not require SymPy."""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction as F
import importlib.util,json,sys
import sympy as s
ROOT=Path(__file__).resolve().parents[1]
d,w,u,z=s.symbols('d w u z')
Q=(d**3-1)/w+d
H0=(16*d**4+40*w*d**2-32*d+27*w*w)/(4*w*w)
Y0=s.factor((d*d*H0-2*Q*Q-Q*d)/2)
Y2=s.expand(Q**4+d*Q**3+d*d*Q*Q+d**3*Q+d**4+d*d*w)
U=s.cancel(64*w**4*(Y0*Y0-Y2)/d**2)
L=s.cancel(64*w**4*(Y2-(Y0-d*d/(8*w*w))**2)/d**2)
U1=s.cancel(64*(Y0.subs(w,1)**2-Y2.subs(w,1))/d**2)
L1=s.cancel(64*(Y2.subs(w,1)-(Y0.subs(w,1)-3*d*d/8)**2)/d**2)
def records(expr,vars):
    return [{'powers':list(p),'coefficient':str(c)}
            for p,c in sorted(s.Poly(s.expand(expr),*vars).terms())]
def shifted(expr):
    return s.expand(expr.subs(d,w*w/16+40*w+u).subs(w,z+1))
data={'name':'COF40-COMP1','format':1,
      'logic':'Polynomial identities and universal nonnegative-variable positivity, not sampling.',
      'U':records(U,(d,w)),'L':records(L,(d,w)),
      'shift_U':records(shifted(U),(u,z)),
      'shift_L':records(shifted(L),(u,z)),
      'U1':records(U1,(d,)), 'L1':records(L1,(d,)),
      'shift_U1':records(U1.subs(d,14+u),(u,)),
      'shift_L1':records(L1.subs(d,14+u),(u,))}
for key in ('shift_U','shift_L','shift_U1','shift_L1'):
    if not all(F(r['coefficient'])>0 for r in data[key]): raise ArithmeticError(key)
(ROOT/'certificates/cofactor_identity.json').write_text(json.dumps(data,indent=2)+'\n')

spec=importlib.util.spec_from_file_location('old_phase',ROOT/'inputs/round4-native_phase.py')
phase=importlib.util.module_from_spec(spec);spec.loader.exec_module(phase)
models=[]
for qq in (10007,10037):
    hh=16639
    lo,hi=phase.isolate(hh,-F(hh,qq**3),F(128),F(130),128)
    jp=lambda a:F(qq)*(hh-a)/(hh-2*a)**2
    np=lambda a:F(qq)*a/(hh-2*a)+F(2,qq**2)/(hh-2*a)**2
    ji=(jp(lo),jp(hi));ni=(np(lo),np(hi))
    jf=phase.fractional_interval(*ji);nf=phase.fractional_interval(*ni)
    if jf is None or nf is None: raise ArithmeticError('Phase crossing')
    nu_pair=(qq*lo,qq*hi)
    nu_floor=phase.floor_fraction(nu_pair[0])
    if not nu_floor<nu_pair[0]<=nu_pair[1]<nu_floor+1:
        raise ArithmeticError('Nonintegrality not certified')
    result='P2_POSITIVE_COMPARISON' if jf[0]>nf[1] else 'P2_NEGATIVE_COMPARISON'
    if result=='P2_NEGATIVE_COMPARISON' and not jf[1]<nf[0]: raise ArithmeticError('Undecided')
    models.append({'h':hh,'Q':qq,'z_interval':[str(lo),str(hi)],
       'j_over_P2':[str(x) for x in ji],'n_over_P2':[str(x) for x in ni],
       'j_fraction':[str(x) for x in jf],'n_fraction':[str(x) for x in nf],
       'nu_interval':[str(x) for x in nu_pair],'nu_floor':nu_floor,'result':result,
       'missing':'nu noninteger; hence no integer same-input recovery, no P prime-power source, no NC3.'})
(ROOT/'certificates/other_source_failure.json').write_text(json.dumps({'models':models},indent=2)+'\n')
print('SYMPY_GENERATION=PASS')
print('UNIVERSAL_SHIFT_TERM_COUNTS='+str({k:len(data[k]) for k in ('shift_U','shift_L','shift_U1','shift_L1')}))
