from pathlib import Path
import sympy as s
import json, hashlib, time
from itertools import product
BASE=Path(__file__).resolve().parents[2]
OUT=Path(__file__).resolve().parent
TMP=Path('D:/Temp/b699-r7-onehour-20261004/review-odd6')
N,X,u,t=s.symbols('N X u t')
t0=time.monotonic()
assert s.isprime(65521)
author=json.loads((BASE/'experiments/a/sextic-saturated-exact.json').read_text(encoding='utf-8'))
lines=(TMP/'residual-65521.txt').read_text().splitlines()
residual={}
for line in lines:
    head,*parts=line.split('|')
    rank,z=map(int,head.split())
    cfg=tuple(tuple(map(int,p.split())) for p in parts)
    assert rank==55
    assert cfg not in residual
    residual[cfg]=(rank,z)
sourcecfg=set()
for line in (BASE/'experiments/a/sextic-saturated-no-genus-configs.txt').read_text().splitlines():
    head,*parts=line.split('|')
    cfg=tuple(tuple(map(int,p.split()[1:])) for p in parts)
    sourcecfg.add(cfg)
assert set(residual)==sourcecfg, (len(residual),len(sourcecfg))
results=[]
received_cfg=set()
for rec in author['results']:
    cfg=tuple(tuple(ms) for kp,ms in rec['configuration'])
    assert all(kp==0 for kp,ms in rec['configuration'])
    assert cfg in residual
    assert cfg not in received_cfg
    received_cfg.add(cfg)
    assert rec['dimension']==1 and len(rec['basis'])==1
    H=s.Poly(s.sympify(rec['basis'][0],locals={'N':N,'X':X}),N,X)
    assert H.total_degree()>0 and H.degree(X)==6
    assert all(c.is_Rational for c in H.coeffs())
    assert max(a+2*b for (a,b),c in H.terms())<=13
    jet_count=0
    for r,ms in enumerate(cfg,3):
        assert sum(ms)==6 and len(ms)==r//2+1
        for a,m in enumerate(ms):
            center=(2*a==r)
            sh=a if center else 0
            T=s.Poly(s.expand(H.as_expr().subs({N:r+u,X:a*(r-a)+sh*u+t},simultaneous=True)),u,t)
            for (i,j),c in T.terms():
                assert not (i+j<m or (center and i+2*j<2*m)), (rec['index'],r,a,m,i,j,c)
            jet_count+=sum(1 for i in range(14) for j in range(7) if i+j<m or center and i+2*j<2*m)
    roots=[r for r in range(3,9) if s.Poly(H.as_expr().subs(N,r),X).is_zero]
    assert roots
    # Rank over GF(65521)=55 gives Q-rank >=55. This exact nonzero
    # rational kernel vector gives Q-rank <=55, hence full Q-kernel dimension 1.
    results.append(dict(index=rec['index'],rank_GF65521=55,rational_kernel_dimension=1,exact_jet_conditions=jet_count,vertical_factors=[f'N-{r}' for r in roots],nonzero=True,degree_X=6,weighted_degree=max(a+2*b for (a,b),c in H.terms())))
    print(json.dumps(results[-1]),flush=True)
assert len(results)==len(residual)==14
assert received_cfg==set(residual)
report=dict(verifier='verify_odd6 / gpt-6.1-sol xhigh',prime=65521,enumeration_residuals=14,source_configuration_match=True,exact_polynomial_jets='direct symbolic substitution over QQ, independent of author jet formula',kernel_dimension_reason='GF(65521) rank 55 and nonzero QQ kernel vector imply QQ rank 55; 56 columns',seconds=round(time.monotonic()-t0,3),results=results)
(OUT/'independent-exact-receive.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print('ALL_EXACT_JETS_AND_VERTICAL_FACTORS_CHECKED seconds=',report['seconds'],flush=True)

