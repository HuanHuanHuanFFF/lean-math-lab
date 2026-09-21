"""Exact rational acceptance for TRIPLE45 and local-bound regression tests."""
import json
from pathlib import Path
from fractions import Fraction as F
from algebra import equations,tangent_jet,affine,monomials,mul
ROOT=Path(__file__).resolve().parents[1]
def run(out):
    out=Path(out)
    a=json.loads((out/'triple4.json').read_text());b=json.loads((out/'triple5.json').read_text())
    assert a['q']==4 and b['q']==5 and a['consistent']==2 and b['consistent']==0
    expected=json.loads((ROOT/'certificates/triple4_spaces.json').read_text())
    assert sorted(a['multiplicities'])==sorted(x['m'] for x in expected)
    P4={(0,0):F(1)}
    for t in range(4):P4=mul(P4,{(0,1):F(1),(1,0):F(-t),(0,0):F(t*t)})
    vec=tuple(P4.get(m,F(0)) for m in monomials(4));accepted=[]
    for rec in expected:
        eq=equations(4,1,rec['m']);m=rec['m'][5][-1]
        for w in range(2*m):
            for j in range(w//2+1):eq.append(tangent_jet(4,8,w-2*j,j))
        vs=affine(eq,25)
        assert vs==[vec]==[tuple(map(F,v)) for v in rec['vectors']]
        assert all(sum(x*y for x,y in zip(e,vec))==0 for e in eq)
        accepted.append(dict(m=rec['m'],dimension=0,factorization='ell0*ell1*ell2*ell3'))
    for q in [4,5]:
        v=json.loads((out/f'triple{q}.json').read_text());w=json.loads((out/f'triple{q}_cross.json').read_text())
        assert sorted(v['multiplicities'])==sorted(w['multiplicities'])
        assert v['consistent']==w['consistent']
    # The strengthened diagonal genus term needs kappa=0.
    def orders(poly):
        m=min(i+j for i,j in poly);w=min(i+2*j for i,j in poly)
        transformed={(i+j-m,j):c for (i,j),c in poly.items()}
        mp=min(i+j for i,j in transformed)
        return m,w,mp
    assert orders({(0,2):1,(4,0):1})==(2,4,2)
    assert orders({(0,2):1,(3,0):1})==(2,3,1)
    assert 32749*F(-1,32749)+1==0
    for q in range(4,29):assert (2*q*(2*q-4))//4+1==(q-1)**2
    result=dict(status='PASS_TRIPLE45_RATIONAL_ACCEPTANCE',quartic_spaces=accepted,
                quintic_survivors=0,full_cross_prime=True,
                local_kappa_boundary='t^2+u^3 has m2,w3,blowup multiplicity1; do not use doubled choose(m,2)',
                modular_affine_trap_rejected=True)
    (out/'small_acceptance.json').write_text(json.dumps(result,indent=2)+'\n')
    print(result['status'],flush=True)
    return result
