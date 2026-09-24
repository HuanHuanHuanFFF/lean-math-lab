"""Exact identities and explicit applications. Infinite proofs live in PROOFS.md."""
import hashlib,json,platform,sys
from pathlib import Path
from math import gcd,isqrt
import sympy as S
from predicates import *
x=S.symbols('x')

def co(poly):
    p=S.Poly(poly,x,domain=S.QQ)
    return [str(p.nth(i)) for i in range(p.degree()+1)]

def ico(poly):
    a=[S.Rational(t) for t in co(poly)]
    assert all(t.q==1 for t in a)
    return [int(t) for t in a]

def expr(a):return sum(c*x**i for i,c in enumerate(a))

def hash_int(n):
    return hashlib.sha256(n.to_bytes((n.bit_length()+7)//8,'big')).hexdigest()

def main(out):
    f,j,z,K,L,Q,M=S.symbols('f j z K L Q M')
    # Transform both original windows, without discarding any multiplicity.
    zdef=2*j-f
    first=S.cancel((zdef**2-1-4*j*(j-1))/(f-1))
    second=S.cancel((zdef*(zdef**2-4)-8*j*(j-1)*(j-2))/(f-2))
    assert S.denom(first)==S.denom(second)==1
    trans=S.expand((K+1)*(K-3)-(((f-1)*K+1)*((f-1)*K-3))+(f-2)*K*(f*K-2))
    assert trans==0
    ld=(K+1)*(K-3)/(f-2)
    qsq=(((f-1)*K+1)*(K-3)**2)/(f-2)**2
    md=S.cancel(qsq-ld*(K-4))
    assert S.cancel((K+1)*qsq-ld*(K*K-3*K+ld))==0
    assert S.cancel((K+1)*md-ld*(ld+4))==0
    assert S.cancel(md*qsq-(ld**3+4*ld**2-5*md*ld+md**2))==0
    disc=S.factor(S.discriminant(L**3+4*L**2-5*M*L+M**2,L))
    assert S.expand(disc+M**2*(27*M**2-140*M-144))==0
    assert 187**2<35152<188**2
    # Original-input identity with exactly the isolated-3 corrections.
    n,k,la,mu=S.symbols('n k la mu')
    ell=mu*(k+la)*(k-3*la)/(2*(n-2))
    qsq=mu**2*(k*(n-1)+la)*(k-3*la)**2/(4*la*(n-2)**2)
    eta=(k+la)/2
    mm=2*la*qsq-mu*ell*(2*eta-5*la)
    assert S.cancel(eta*mm-ell*(ell+2*mu*la**2))==0
    sym={'first_window_transform':str(S.expand(first)),
         'second_window_transform':str(S.expand(second)),
         'transport_QK_identity':'Q(K)-z^2(z^2-4)=-(f-2)K(fK-2)',
         'cubic_discriminant':str(disc),
         'parameter_discriminant':35152,'sqrt_bounds':[187,188],
         'all_exact_identities':'PASS','original_integer_identity':'PASS'}
    models=[]
    # Exact polynomial-window models requiring the return to 4|n.
    for g in (1,2,3,7):
        a=x**g;ff=12*a*a+8*a+2;jj=6*a*a+a
        zz=2*jj-ff;kk=S.cancel((zz*zz-1)/(ff-1))
        assert kk==3
        assert S.rem(jj*(jj-1),ff-1,x)==0
        assert S.rem(jj*(jj-1)*(jj-2),ff-2,x)==0
        assert all(c>=0 for c in ico(jj)) and all(c>=0 for c in ico(ff-jj))
        models.append({'g':g,'f':ico(ff),'J':ico(jj),'Z':ico(zz),
                       'K':'3','f_of_odd_mod4':2,'not_NC3':True})
    # A squared-only core which loses the unsquared second window.
    r=2+18*x;kk=r*r-1
    ff=S.expand((4*kk*kk-8*kk+6)/9)
    zz=S.expand(r*(2*r*r-5)/3);jj=S.expand((ff+zz)/2)
    assert ico(ff) and ico(jj)
    assert all(c>=0 for c in ico(jj)) and all(c>=0 for c in ico(ff-jj))
    assert S.expand(zz*zz-1-(ff-1)*kk)==0
    assert S.cancel((kk+1)*(kk-3)/(ff-2))==S.Rational(9,4)
    bad_rem=S.rem(zz*(zz*zz-4),ff-2,x,domain=S.QQ)
    assert bad_rem!=0
    failure={'description':'squared transport only, NOT the original polynomial second window',
             'f':ico(ff),'J':ico(jj),'Z':ico(zz),'K':ico(kk),'L':'9/4',
             'second_window_remainder':co(bad_rem),'lost_root':'-1/9',
             'multiplicity_f_minus_2':2,'multiplicity_Z':1,'not_NC3':True}
    # Applications: no j loop; exact sufficient-predicate antecedents only.
    defs=[]
    defs.append(('balanced_degree12_gap',S.expand(1+(1+2*x**5)*(1+12*x+12*x**7))))
    for m in (1,3):
        U=1+x+x**(6*m)+2*x**(8*m)
        V=1+x+x**(3*m)+2*x**(12*m)
        defs.append((f'balanced_degree{20*m}_small_high_digits',S.expand(1+U*V)))
    defs.append(('sixth_improves_fourth_content',2+2*x+2*x*x+6*x**18+8*x**20))
    apps=[]
    for name,ff in defs:
        cc=ico(ff);d=len(cc)-1;H=sum(cc);e=1
        gate=(2*(H+2))**(2*d+4)
        while 3**e<gate:e+=2
        pred=central_row_predicate(cc,3,e)
        assert pred['status'] in ('CENTRAL_GAP_SUFFICIENT','CENTRAL_SIXTH_CONTENT_SUFFICIENT')
        T=3**e;nn=evaluate(cc,T)
        EE=valuation(nn-2,3)
        apps.append({'name':name,'coefficients':cc,'predicate':pred,
                     'n_bits':nn.bit_length(),'n_sha256_big_endian':hash_int(nn),
                     'source_exponent':EE,'v3_choose_n_3':EE-1})
    assert S.gcd(1+x+x**6+2*x**8,1+x+x**3+2*x**12)==1
    assert S.gcd(1+2*x**5,1+12*x+12*x**7)==1
    last=apps[-1]['predicate']
    old_M=2**((3*valuation(last['A'],2)-valuation(last['content_f_minus_2'],2)+3)//4)
    assert old_M==4 and last['M2']==8 and last['tail_degree']==18
    # Known exact weak-window pairs, never counterexamples.
    pairs=[(76672,26775),(18610024,7865522)]
    for y in (1030,2530,4030):
        nn=48*y**5+200*y**4+280*y**3+150*y*y+25*y+2
        jj=(y+2)*(4*y*y+6*y+1)*(12*y*y+20*y+5)//5
        pairs.append((nn,jj))
    cores=[]
    for nn,jj in pairs:
        d=central_integer_diagnostic(nn,jj)
        assert d['first_full_source_window'] and d['second_full_source_window']
        cores.append(d)
    assert binomial_valuation(76672,26775,3)==3
    assert valuation(76672*76671*76670//6,3)==1
    result={'symbolic':sym,'canonical_models':models,'squared_only_failure':failure,
            'applications':apps,'original_weak_window_cores':cores,
            'weak_pair_common_prime':{'n':76672,'j':26775,'prime':3,'valuations':[1,3]},
            'sixth_vs_fourth_probe':{'old_M2':old_M,'new_M2':last['M2']},
            'sympy_version':S.__version__,
            'infinite_quantifiers':'author proof, not formally checked'}
    out.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('CENTRAL_FRAME_IDENTITIES=PASS')
    print('CONSTANT_M_DISCRIMINANT=PASS; 187^2 < 35152 < 188^2')
    print('ORIGINAL_INTEGER_IDENTITY=PASS; weak-window pairs=',len(cores))
    print('DIGITAL_APPLICATIONS=PASS;',[(a['name'],a['predicate']['exponent'],a['source_exponent']) for a in apps])
    print('SQUARED_ONLY_CONVERSE_REJECTED=PASS')
    print('CENTRAL_SIXTH_EXACT_REPLAY=PASS')

if __name__=='__main__':main(Path(sys.argv[1]))
