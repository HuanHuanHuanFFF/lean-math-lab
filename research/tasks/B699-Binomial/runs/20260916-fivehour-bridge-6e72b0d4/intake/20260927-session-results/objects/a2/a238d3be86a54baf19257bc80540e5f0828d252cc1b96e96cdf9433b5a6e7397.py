"""Exact k=5 candidate consumer. Parameter mode does NOT invent primality proofs."""
from pathlib import Path
import argparse,json,math
from core import *
ROOT=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser();p.add_argument('--case');p.add_argument('--u',type=int);p.add_argument('--epsilon',type=int,choices=[-1,1]);p.add_argument('--z',type=int);p.add_argument('--a',type=int)
a=p.parse_args()
fixed=None
if a.case:
    data=json.loads((ROOT/'certificates/examples.json').read_text())
    fixed=next((r for r in data['rows'] if r['label']==a.case),None)
    if fixed is None:raise SystemExit('unknown case')
    for key in ('P_factorization','Q_factorization','n_factorization','F_factorization'):
        fs=fixed[key];N=fixed[{'P_factorization':'P','Q_factorization':'Q','n_factorization':'n'}.get(key,'n')]
        if key=='F_factorization':N-=2
        assert math.prod(p**e for p,e in fs)==N and all(is_prime_trial(p) for p,e in fs)
    v=reconstruct(**dict(u=fixed['parameters']['u'],e=fixed['parameters']['epsilon'],z=fixed['parameters']['z'],a=fixed['parameters']['a']))
else:
    if None in (a.u,a.epsilon,a.z,a.a):raise SystemExit('supply --case or all --u --epsilon --z --a')
    v=reconstruct(a.u,a.epsilon,a.z,a.a)
if v['Lambda'] is None:
    assert v['u']==2 and v['epsilon']==-1 and v['C'][0]==0
    assert (v['z']-3)%10==0
    t=(v['z']-3)//10;assert t>=3 and t%4==3
    A=70*t*t+41*t+5;B=8750*t*t+4900*t+561
    assert v['n']-2==A*B and v['j']==2*v['Q']*A
    cap=3*(100*t+29)*(25*t+6)
    assert B-cap==1250*t*t+925*t+39>0
    certificate={'type':'zero-slot complete-overlap-and-capacity theorem','t':t,'A':A,'B':B,'capacity_upper_after_required_overlap_test':cap,'positive_gap':B-cap}
    rejected=True
else:
    rejected=v['Lambda']%v['T2']!=0
    certificate={'type':'actual complete T2 capacity division','Lambda':v['Lambda'],'T2':v['T2'],'remainder':v['Lambda']%v['T2']}
if fixed:
    assert all(v[key]==fixed[key] for key in ('P','Q','n','j'))
    pf,qf=fixed['P_factorization'],fixed['Q_factorization']
    true_row=len(pf)==len(qf)==1 and pf[0][0]!=qf[0][0]
    assert true_row==fixed['true_two_complete_distinct_powers']
else:
    true_row=False
print(json.dumps({'original_input':v,'candidate_common3_certified':rejected,'certificate':certificate,
    'complete_factorizations_and_base_primality_checked':bool(fixed),'actual_distinct_complete_powers_verified':true_row,
    'whole_row_certified':rejected and true_row,'T0_divides_original_j':v['j']%v['T0']==0,
    'warning': 'Parameter mode certifies a number pair; whole-row lifting remains conditional on true distinct complete prime powers. Passing a necessary check is not NC3.'},ensure_ascii=False,indent=2))
