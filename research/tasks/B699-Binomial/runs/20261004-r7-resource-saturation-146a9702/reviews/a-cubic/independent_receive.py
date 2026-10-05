"""Independent characteristic-zero receive, family/source audits and input binding.
Jets are obtained by literal polynomial multiplication. Kernels are constructed
from DomainMatrix rational RREF. This never imports or executes author code.
"""
from pathlib import Path
from collections import Counter
from functools import lru_cache
from math import gcd, lcm
import json, hashlib, time, sys
import sympy as sp
from sympy.polys.matrices import DomainMatrix

ROOT=Path.cwd(); OWN=Path(__file__).resolve().parent
RUN=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702'
BASE=RUN/'experiments/a'
N,X,U,T,A,B,C,L=sp.symbols('N X u t a b c lambda')
MONS=[(a,b) for b in range(4) for a in range(8-2*b)]
START=time.monotonic()
EXPECTED={
 RUN/'notes/a/04-cubic-families.md':'70827516171b8bd94388e1253d5c9a890cc37461bf440105f7fdbfe1e64dc638',
 BASE/'cubic_min_cost.cpp':'f9d5932a52fb34606eeb70ee92243b11b934459c09baeb9b1aefc9a40e53b205',
 BASE/'cubic_exact_receive.py':'f091d48ac45dfd31fa676edbc4166b6737495330808106285257025e07f6bd07',
}

def multiply(poly,constant,u,t):
    out={}
    for (i,j),value in poly.items():
        for at,coef in (((i,j),constant),((i+1,j),u),((i,j+1),t)):
            if coef:out[at]=out.get(at,0)+value*coef
    return out

@lru_cache(None)
def literal(a,b,r,s):
    poly={(0,0):1}
    for _ in range(a):poly=multiply(poly,r,1,0)
    for _ in range(b):poly=multiply(poly,s*(r-s),s if 2*s==r else 0,1)
    return poly

def matrix(cfg):
    rows=[]
    for r,(kp,multiplicities) in zip(range(3,9),cfg):
        for s,m in enumerate(multiplicities):
            if m==0:continue
            center=2*s==r;w=2*m-kp
            conditions={(i,j) for i in range(8) for j in range(4)
                        if i+j<m or (center and i+2*j<w)}
            for i,j in sorted(conditions,key=lambda ij:(ij[1],ij[0])):
                rows.append([literal(a,b,r,s).get((i,j),0) for a,b in MONS])
    return sp.Matrix(rows)

def primitive(values):
    scale=lcm(*(int(sp.Rational(v).q) for v in values))
    ints=[int(v*scale) for v in values]; divisor=gcd(*ints)
    assert divisor
    ints=[v//divisor for v in ints]
    if next(v for v in reversed(ints) if v)<0:ints=[-v for v in ints]
    return ints

def expr(values):return sum(c*N**a*X**b for c,(a,b) in zip(values,MONS))

def coefficients(poly):
    pp=sp.Poly(poly,N,X,domain=sp.QQ)
    return sp.Matrix([pp.coeff_monomial(N**a*X**b) for a,b in MONS])

def parse(path):
    parsed={}
    for line in path.read_text(encoding='utf-8-sig').splitlines():
        parts=line.split('|');header=tuple(map(int,parts[0].split()))
        cfg=tuple((int(s.split()[0]),tuple(int(n) for n in s.split()[1:])) for s in parts[1:])
        assert len(cfg)==6 and all(sum(m)==3 for kp,m in cfg)
        assert cfg not in parsed
        parsed[cfg]=header
    return parsed

def canonical_common(polys):
    common=polys[0]
    for poly in polys[1:]:common=sp.gcd(common,poly)
    den,pp=sp.Poly(common,N,X,domain=sp.QQ).clear_denoms()
    content,pp=pp.primitive()
    if pp.LC()<0:pp=-pp
    norm=sum(abs(int(c)) for c in pp.coeffs())
    weight=max(a+2*b for (a,b),c in pp.terms())
    return pp,norm,weight

def root_order(poly,r,s):
    at=s*(r-s);row=sp.Poly(sp.expand(poly.subs(N,r)),X)
    for k in range(4):
        if sp.diff(row.as_expr(),X,k).subs(X,at)!=0:return k
    raise RuntimeError('vanishing row')

def local_terms(poly,r,s):
    at=s*(r-s);shear=s if 2*s==r else 0
    shifted=sp.expand(poly.subs({N:r+U,X:at+shear*U+T},simultaneous=True))
    return dict(sp.Poly(shifted,U,T).terms())

if __name__=='__main__':
    fixed={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in EXPECTED}
    assert all(fixed[str(p.relative_to(ROOT))]==expected for p,expected in EXPECTED.items())
    assert sp.isprime(32749) and sp.isprime(257)
    profiles={};allcfg=set();profile_comparison={}
    for profile in (4,6,8):
        own=parse(OWN/f'independent-profile{profile}.txt');author=parse(BASE/f'cubic-cost-row{profile}.txt')
        assert set(own)==set(author)
        assert all(own[c]==author[c] for c in own)
        profiles[profile]=own;allcfg.update(own)
        profile_comparison[profile]={'residuals':len(own),'all_configurations_and_modular_ranks_match':True}
    author_json=json.loads((BASE/'cubic-even-exact.json').read_text(encoding='utf-8-sig'))
    author_results={tuple((kp,tuple(ms)) for kp,ms in v['configuration']):v for v in author_json['results']}
    assert set(author_results)==allcfg and len(allcfg)==87
    F=X*(X-N+1)*(X-2*N+4)
    P=(N-3)**2*(N-4)*(N-5)*(N-6)*(N-7)*(N-8)
    F2=X*(N**5-24*N**4-N**3*X+229*N**3+15*N**2*X-1080*N**2-83*N*X+2542*N+3*X**2+135*X-2388)
    family_cfgs={
      ((0,(1,2)),(1,(1,1,1)),(0,(1,1,1)),(0,(1,1,1,0)),(0,(1,1,1,0)),(0,(1,1,1,0,0))):('I',[F,N*F,P]),
      ((0,(2,1)),(1,(1,1,1)),(0,(1,1,1)),(0,(1,1,1,0)),(0,(1,1,0,1)),(0,(1,0,1,1,0))):('II',[F2,P]),
    }
    results=[];counts=Counter();max_norm=0;families=[]
    for cfg in sorted(allcfg):
        mat=matrix(cfg)
        reduced,pivots=DomainMatrix.from_Matrix(mat).convert_to(sp.QQ).rref()
        rr=reduced.to_Matrix();free=[i for i in range(20) if i not in pivots]
        vectors=[]
        for f in free:
            vector=[sp.S.Zero]*20;vector[f]=sp.S.One
            for r,p in enumerate(pivots):vector[p]=-rr[r,f]
            vector=primitive(vector);assert mat*sp.Matrix(vector)==sp.zeros(mat.rows,1)
            vectors.append(vector)
        assert len(vectors)==author_results[cfg]['dimension']
        polys=[expr(v) for v in vectors]
        if not polys:
            status='full_rank_Q';cp=None;norm=0;weight=None
        else:
            cp,norm,weight=canonical_common(polys)
            status='fixed_common_polynomial_consumer' if cp.total_degree()>0 and weight<=11 and norm<=2**24980 else 'unresolved_family'
            claimed=sp.Poly(sp.sympify(author_results[cfg]['common_polynomial'],locals={'N':N,'X':X}),N,X,domain=sp.QQ)
            assert cp.monic()==claimed.monic()
        assert status==author_results[cfg]['status']
        counts[status]+=1
        if status=='fixed_common_polynomial_consumer':max_norm=max(max_norm,norm)
        if status=='unresolved_family':
            name,generators=family_cfgs[cfg]
            assert len(generators)==len(vectors)
            gg=sp.Matrix.hstack(*(coefficients(g) for g in generators))
            assert gg.rank()==len(generators) and mat*gg==sp.zeros(mat.rows,len(generators))
            families.append({'family':name,'configuration':cfg,'dimension':len(vectors),'generators':list(map(str,generators)),
                             'span_exactly_the_QQ_kernel':True})
        results.append({'configuration':cfg,'dimension':len(vectors),'status':status,
                        'primitive_basis_vectors':vectors,'common_polynomial':str(cp.as_expr()) if cp else None,
                        'common_l1':norm,'common_weight':weight})
    assert dict(counts)=={'fixed_common_polynomial_consumer':85,'unresolved_family':2}
    source_tables={};source_checks=[]
    for name,base,poly in [('I',F,(A*N+B)*F+C*P),('II',F2,F2+L*P)]:
        points=[]
        for r in range(3,9):
            for s in range(r//2+1):
                m=root_order(base,r,s);center=2*s==r;terms=local_terms(poly,r,s)
                assert all(coef==0 for (i,j),coef in terms.items() if i+j<m)
                weight=1 if center and r==4 else (0 if center else m)
                if center:
                    assert all(coef==0 for (i,j),coef in terms.items() if i+2*j<weight)
                points.append({'r':r,'s':s,'jet_weight':2 if center else 1,'ordinary_order':m,'source_order':weight})
        source_tables[name]=points
    I4=local_terms((A*N+B)*F+C*P,4,2).get((1,0),0)
    II4=local_terms(F2+L*P,4,2).get((1,0),0)
    assert sp.expand(I4-24*C)==0 and sp.expand(II4-(-32+24*L))==0
    IIcenters={r:sp.expand((F2+L*P).subs({N:r,X:(r//2)**2})) for r in (6,8)}
    assert all(v!=0 for v in IIcenters.values())
    special=sp.expand(3*F2+4*P)
    old=4*N**7-144*N**6+3*N**5*X+2176*N**5-72*N**4*X-17880*N**4-3*N**3*X**2+687*N**3*X+86236*N**3+45*N**2*X**2-3240*N**2*X-244056*N**2-249*N*X**2+7626*N*X+375264*N+9*X**3+405*X**2-7164*X-241920
    assert sp.expand(special-old)==0
    pp,norm,weight=canonical_common([special])
    assert norm==987183 and weight==7 and pp.degree(X)==3
    special_terms=local_terms(special,4,2)
    assert min(i+2*j for (i,j),c in special_terms.items() if c)!=1
    assert min(i+2*j for (i,j),c in special_terms.items() if c)==2
    off=[(77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39)]
    diag=[0,56,0,41,0,52]
    global_inputs=[]
    for number,name in ((1,'I'),(2,'II')):
        path=BASE/'quotient-global'/f'global-f{number}.input.txt'
        lines=[tuple(map(int,line.split())) for line in path.read_text().splitlines()]
        assert lines[0]==(149,298,257,0,21)
        expected=[]
        for p in source_tables[name]:
            r,s,jw=p['r'],p['s'],p['jet_weight']
            g=diag[r-3] if jw==2 else off[r-3][s]
            expected.append((r,s,jw,max(g-p['source_order'],0)))
        assert lines[1:]==expected
        conditions=sum(sum(1 for b in range(m) for a in range(m) if a+w*b<m) for r,s,w,m in expected)
        global_inputs.append({'family':name,'input':str(path.relative_to(ROOT)),'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
                              'exact_source_subtraction_matches':True,'conditions':conditions,'complete_B298_monomials':22500})
    output={'reviewer':'/root/review_excess','fixed_sources':fixed,'algorithm':'reverse-row modular enumeration with literal product jets; independently constructed QQ DomainMatrix RREF',
            'profile_comparison':profile_comparison,'unique_configurations':87,'status_counts':dict(counts),'maximum_fixed_common_l1':max_norm,
            'families':families,'source_tables':source_tables,'family_I_center4_u':str(I4),'family_II_center4_u':str(II4),
            'family_II_center6_8_values':{r:str(v) for r,v in IIcenters.items()},
            'lambda4_over3_exception':{'primitive_polynomial':str(pp.as_expr()),'l1':norm,'weight':weight,'q':3,'center4_weight':2,'equals_old_ODD_exception':True},
            'global_input_binding':global_inputs,'results':results,'seconds':round(time.monotonic()-START,6)}
    outpath=OWN/'independent-exact-result.json';outpath.write_text(json.dumps(output,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:output[k] for k in ('profile_comparison','unique_configurations','status_counts','maximum_fixed_common_l1','family_I_center4_u','family_II_center4_u','family_II_center6_8_values','global_input_binding','seconds')}))
    print(json.dumps({'result_sha256':hashlib.sha256(outpath.read_bytes()).hexdigest(),'families':[{'name':f['family'],'dimension':f['dimension'],'exact_span':f['span_exactly_the_QQ_kernel']} for f in families]}))

