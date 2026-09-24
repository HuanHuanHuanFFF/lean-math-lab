"""Source adoption checks, negative tests, and the precise remaining relaxation boundary."""
from pathlib import Path
from fractions import Fraction as F
from math import prod,comb
from copy import deepcopy
import json
from algebra import *

def lagrange_derivative(nodes,r,at):
    others=[v for v in nodes if v!=r]
    den=prod(r-v for v in others)
    return F(sum(prod(at-v for v in others if v!=omit) for omit in others),den)

def boundary():
    h=127;state=dict(h=h,v=[12,10,9,8,6,6],d=[0,0,3,3,2,3],p=[0,0,0,1,0,0],E=0)
    ordinary=[[65,62],[57,47,23],[42,45,37],[32,35,40,18],[25,28,33,39],[19,22,27,33,23]]
    extra=[[],[],[6,6,6],[14,14],[31,31],[0,45,63]]
    spectra=[];S=[];M2=[]
    for r,m,ex in zip(range(3,9),ordinary,extra):
        row={s*(r-s):a for s,a in enumerate(m)}
        for a in ex:row[a]=row.get(a,0)+1
        assert sum(row.values())==h
        one=sum(a*b for a,b in row.items());two=sum(a*a*b for a,b in row.items())
        assert one==39*r*r-164*r+265
        spectra.append(sorted(row.items()));S.append(one);M2.append(two)
    assert sum(a*b for a,b in zip([-1,5,-10,10,-5,1],M2))==0
    diffs=[];cur=M2
    while cur:
        diffs.append(cur[0]);cur=[b-a for a,b in zip(cur,cur[1:])]
    assert diffs[-1]==0
    for r,y in zip(range(3,9),M2):assert y==sum(diffs[k]*comb(r-3,k) for k in range(min(4,r-3)+1))
    # Cost allocation: 3 genuine S5, seven C split 2/2/3 over rows 6/7/8.
    assert 3*4+7*16==124<=h
    assert [0,0,6,3+4,4,6]==[2*d+p for d,p in zip(state['d'],state['p'])]
    # Construct only the value-level interpolant H0; it FAILS a required ordinary jet.
    def row_value(i,x):return prod((x-a)**m for a,m in spectra[i])
    badjet=sum(lagrange_derivative(list(range(3,9)),r,3)*row_value(r-3,2) for r in range(3,9))
    assert badjet!=0  # Actual Gbar would require ordinary order >=62 at (3,2).
    return dict(status='PASS_PRECISE_RELAXATION_BOUNDARY',state=state,counts={'S5':3,'C':7},x_cost=124,
                ordinary_multiplicities=ordinary,extra_roots=extra,specialization_spectra=spectra,
                trace=S,trace_polynomial='39*N^2-164*N+265',second_power_sums=M2,
                second_power_sum_newton_coefficients=diffs[:5],second_power_sum_fifth_difference=0,
                H0_formula='sum_{r=3}^8 Lagrange_r(N) * product_v (X-v)^{specialization_multiplicity(r,v)}',
                H0_fails_required_jet={'point':[3,2],'derivative':[1,0],'required_value':0,'actual_value':str(badjet)},
                actual_G_or_factorization_recovered=False,original_problem_counterexample=False)

def adoption_checks(root):
    data=json.loads((root/'sources/b22_adopted_families.json').read_text());M=data['monomials']
    assert M==[list(x) for x in monomials(4)]
    assert len(data['families'])==11
    counts={'plane':0,'pencil':0};summ=[]
    for a in data['families']:
        counts[a['kind']]+=1
        V=[tuple(map(F,a['base']))+(F(1),)]+[tuple(map(F,v))+(F(0),) for v in a['directions']]
        assert sum(map(sum,a['m']))==22 and a['delta']==[4-sum(m) for m in a['m']]
        # Directions vanish identically on all six source rows: fixed specialization spectra.
        for vec in V[1:]:
            for r in range(3,9):
                for j in range(5):assert sum(c*r**i for (i,b),c in zip(M,vec) if b==j)==0
        for r,m in zip(range(3,9),a['m']):
            for s,mv in enumerate(m):
                for deg in range(mv):
                    for j in range(deg+1):
                        row=jet(4,r,s*(r-s),deg-j,j)
                        assert all(sum(x*y for x,y in zip(row,v))==0 for v in V)
        summ.append(dict(id=a['ids'][0],kind=a['kind'],directions=len(V)-1,fixed_six_specializations=True))
    assert counts=={'plane':6,'pencil':5}
    return summ

def negative_tests(enum,certificate):
    tests=[]
    def rejects(name,fn):
        try:fn()
        except (AssertionError,ValueError,IndexError):tests.append(name);return
        raise AssertionError('corruption was accepted: '+name)
    c=deepcopy(certificate);c['records'][0]['vectors'][0][-1]='0'
    rejects('changed_monic_coefficient',lambda:verify_spaces(enum,c))
    c=deepcopy(certificate);c['records'][0]['vectors'][0][0]='1'
    rejects('changed_rational_solution',lambda:verify_spaces(enum,c))
    c=deepcopy(certificate);c['records'].pop()
    rejects('missing_source_configuration',lambda:verify_spaces(enum,c))
    n=36;trap=[0]*n;trap[0]=32749;trap[-1]=1
    assert affine([trap],n) is not None;tests.append('rational_modular_affine_trap_retained')
    bad=[0]*n;bad[-1]=1
    assert affine([bad],n) is None;tests.append('leading_only_equation_rejected')
    assert trace_allowed([(3,114),(4,213),(7,910)])
    assert not trace_allowed([(3,114),(4,213),(5,392),(7,910)])
    tests.append('h117_trace_obstruction')
    good=[(i,39*i*i-164*i+265) for i in range(3,9)]
    assert trace_allowed(good)
    wrong=good[:];wrong[-1]=(wrong[-1][0],wrong[-1][1]+1)
    assert not trace_allowed(wrong);tests.append('changed_trace_value_rejected')
    # Verify all coefficient formula jets by evaluating the whole local polynomial at (u,t)=(1,1).
    for q in [5,6,7]:
        M=monomials(q)
        for r in [4,6,8]:
            for col,(a,b) in enumerate(M):
                total=sum(tangent_jet(q,r,i,j)[col] for i in range(2*q+1) for j in range(q+1))
                assert total==(r+1)**a*((r//2)**2+r//2+1)**b
    tests.append('tangent_jet_full_binomial_identity')
    assert boundary()['H0_fails_required_jet']['actual_value']!='0'
    tests.append('value_interpolant_not_promoted_to_source_jet_solution')
    return tests

def run(root,outdir,enum):
    root=Path(root);outdir=Path(outdir)
    certificate=json.loads((root/'certificates/b28_restricted_spaces.json').read_text())
    spaces=verify_spaces(enum,certificate)
    adopted=adoption_checks(root)
    negative=negative_tests(enum,certificate)
    result=dict(status='PASS_GAMMA5_RATIONAL_RECOVERY',configurations=13,affine_line_spaces=1,
                spaces=spaces,adopted_B22_checks=adopted,negative_tests=negative)
    (outdir/'algebra.json').write_text(json.dumps(result,indent=2)+'\n')
    (outdir/'boundary.json').write_text(json.dumps(boundary(),indent=2)+'\n')
    print(result['status'],len(negative),'negative/regression tests',flush=True)
    return result
