"""Exact receiver for new identities/counts/constants ONLY.
The infinite inequalities are proved in notes/PROOFS.md; this is not Lean.
"""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import json, math
from algebra import (add, scale, mul, power, var, absolute_terms, evaluate,
                     uadd, umul, uscale, ueval, trim, mod_gcd)


def require(ok, label):
    if not ok: raise ValueError(label)


def polynomial_from_terms(terms):
    out={}
    for c,m in terms:
        key=tuple(m);out[key]=out.get(key,0)+c
    return {m:c for m,c in out.items() if c}


def forward_interpolation(values):
    """Independent Newton forward differences at 3,...,7."""
    delta=list(map(Q,values));out=[Q(0)];basis=[Q(1)]
    for k in range(5):
        out=uadd(out,uscale(basis,delta[0]/math.factorial(k)))
        delta=[delta[i+1]-delta[i] for i in range(len(delta)-1)]
        basis=umul(basis,[-(3+k),1])
    return out+[Q(0)]*(5-len(out))


def verify(data):
    require(data['schema']=='B699-A-COMPONENT-OBSTRUCTIONS-v1','schema')
    c=data['constants'];E=c['entry_bits'];L=c['factor_norm_bits'];LC=c['content_norm_bits']
    require(E==14000001 and L==1290000 and LC==1291000,'frozen constants')
    require(c['joint_constant_bits']==155000 and c['joint_n_power']==26 and c['joint_J_power']==14,'joint source')
    alpha=Q(*c['lower_J_power'])
    require(alpha==Q(7,4),'edge exponent')
    require((c['joint_n_power']-alpha*c['joint_J_power'])*E>c['joint_constant_bits'],'J lower connection')
    K=c['runge_threshold_coefficient'];h=c['runge_threshold_norm_power']
    require(K==4096 and h==10,'Runge threshold')
    require(c['approx_error_constant']==128 and c['approx_error_H_power']==6,'error coefficient')
    require(c['denominator_H_power']==4 and c['remainder_H_power']==9,'height powers')
    require(K>128 and K>4,'rational rounding and remainder')
    require(K.bit_length()-1+h*L<E,'Runge -> entry')
    require(1+10*LC<E,'content -> entry')
    require(1+6*L<E,'quadratic denominator -> entry')
    require(c['source_value_bits']==915 and c['source_cost_bits']==11,'source cost')
    require(9*(L+c['source_value_bits'])+c['source_cost_bits']<E,'HIT6 connection')
    require(c['source_degree_cap']==305 and c['X_degree_cap']==152,'degree caps')
    require(1290000+306<LC,'primitive content height')
    require(3+4*152+1280000<1290000,'general low-N consumer factor height')

    # Every inequality is proved for all H>=2 and n>K H^10,
    # not inferred from finitely many sample values of H.
    conditions=[(Q(1),2,1),(Q(3,4),6,1),(Q(1,2),4,1),
                (Q(1),16,3),(Q(1),1,2),(Q(1),128,10),
                (Q(1),4,10),(Q(1),2,9),(Q(1),16,1)]
    for r,coeff,q in conditions:
        delta=10*r-q
        require(delta>=0,'monotone H exponent')
        den=math.lcm(r.denominator,delta.denominator)
        lhs=K**int(r*den)*2**int(delta*den)
        require(lhs>=coeff**den,'universal threshold inequality')
    require(Q(2,16)+Q(4,16**2)<Q(1,4),'Y in same quadratic interval')
    require(22+26+4==52 and 2*52==104 and 104<=128,'case0 error')
    require(6+10+2+5+4==27 and 4*27==108 and 108<=128,'case1 error')

    identity_count=0;majorization_coefficients=0
    for case in (0,1):
        spec=data['canonical_integer_tuples']['case'+str(case)]
        ps={name:polynomial_from_terms(spec[name]) for name in ['D','U','V','W']}
        D,U,V,W=(ps[name] for name in ['D','U','V','W'])
        vs=[var(i,6) for i in range(6)]
        if case==0:
            c0,d,b,f,e,h0=vs
            equations=[add(mul(c0,U),mul(d,D)),
                add(mul(add(mul(c0,V),mul(b,D)),U),mul(e,power(D,2))),
                add(add(mul(add(mul(c0,W),mul(f,D)),power(U,2)),mul(mul(h0,power(D,2)),U)),scale(mul(mul(e,V),power(D,2)),-1))]
        else:
            c0,c1,d,b,f,e=vs
            equations=[add(mul(c0,U),mul(d,D)),
                add(add(mul(c0,V),mul(c1,U)),mul(b,D)),
                add(mul(add(add(mul(c0,W),mul(c1,V)),mul(f,D)),U),mul(e,power(D,2)))]
        for poly in equations:
            require(not poly,'quadratic asymptotic identity');identity_count+=1
        # Ensure denominators/leading terms are nonzero for c,d != 0.
        require(len(D)==1 and len(U)==1,'monomial nonzero denominators')
        summ={}
        for vv in vs:summ=add(summ,vv)
        major=power(summ,4)
        for pp in ps.values(): major=add(major,scale(absolute_terms(pp),-1))
        require(all(v>=0 for v in major.values()),'homogeneous fourth-degree height majorant')
        majorization_coefficients+=len(major)

    # Exact generic polynomial division, in N,X,D,U,V,W,C0,C1,C2,C3.
    N,X,D,U,V,W,C0,C1,C2,C3=[var(i,10) for i in range(10)]
    H=add(add(C0,mul(C1,N)),add(mul(C2,power(N,2)),mul(C3,power(N,3))))
    Qpoly=add(add(mul(U,power(N,2)),mul(V,N)),add(W,scale(mul(D,X),-1)))
    B1=add(add(mul(power(U,2),C1),scale(mul(mul(U,V),C2),-1)),
           mul(add(add(mul(mul(U,D),X),power(V,2)),scale(mul(U,W),-1)),C3))
    B0=add(add(mul(power(U,2),C0),mul(add(mul(mul(U,D),X),scale(mul(U,W),-1)),C2)),
           mul(add(scale(mul(mul(V,D),X),-1),mul(V,W)),C3))
    right=add(add(mul(B1,N),B0),mul(Qpoly,add(mul(U,C2),mul(add(mul(U,N),scale(V,-1)),C3))))
    require(add(mul(power(U,2),H),scale(right,-1))=={},'generic quadratic remainder identity');identity_count+=1

    # Norm cost of each coefficient block in this remainder.
    ds=[var(i,4) for i in range(4)];D,U,V,W=ds
    s={}
    for vv in ds:s=add(s,vv)
    s2=power(s,2)
    costs=[power(U,2),power(U,2),add(add(mul(U,V),mul(D,U)),mul(U,W)),
           add(add(add(add(mul(D,U),power(V,2)),mul(U,W)),mul(D,V)),mul(V,W))]
    for cost in costs:
        diff=add(s2,scale(cost,-1));require(all(x>=0 for x in diff.values()),'remainder norm majorant')
        majorization_coefficients+=len(diff)

    # Complete 288-case rational quartic classification, not a scan in n.
    table=data['quartic_graph_table'];seen=set();survivors=[]
    for row in table:
        seed=tuple(row['seed'])
        require(seed not in seen,'duplicate seed');seen.add(seed)
        require(len(seed)==5 and all(0<=s<=r//2 for r,s in zip(range(3,8),seed)),'seed range')
        vals=[(s*(r-s))**2 for r,s in zip(range(3,8),seed)]
        p=forward_interpolation(vals)
        require(p==[Q(*v) for v in row['coeffs']],'quartic interpolation')
        hits=[s for s in range(5) if ueval(p,8)==(s*(8-s))**2]
        require(hits==row['hits8'],'sixth source test')
        if hits: survivors.append(tuple(p))
    require(seen==set(product(*(range(r//2+1) for r in range(3,8)))),'complete parameter cover')
    expected=[]
    for t in range(4):
        p=umul([-t*t,t],[-t*t,t]);p += [0]*(5-len(p));expected.append(tuple(map(Q,p)))
    negative=uscale(umul(umul(umul([-8,1],[-5,1]),[-3,1]),[-50,11]),Q(-2,3))
    expected.append(tuple(negative))
    require(sorted(survivors)==sorted(expected),'five survivors only')
    require(all(20-r>0 for r in [8,5,3]) and 11*20-50>0,'negative quartic has no large real square')

    # General nonconstant content and binomial denominator connection.
    power_profiles=0
    for m in range(2,153):
        for a in range(1,306):
            if 4*a>=m:
                require(2*a+2*m<=10*a,'power denominator sufficient degree inequality')
                power_profiles+=1
    for a in range(1,306): require(2*a+4<=6*a,'all nonconstant quadratic denominators')

    # New limitation example: still hits HIT6, is quadratic in X, deg_N=8.
    d=data['unresolved_test_curve'];aa=d['A'];bb=d['B'];cc=d['C'];p=d['prime']
    require(p==101 and all(p%q for q in range(2,math.isqrt(p)+1)),'auxiliary prime')
    pp=[1]
    for r in range(3,9):pp=umul(pp,[-r,1])
    require(aa==[100,0,0,0,100] and bb==[1,1,0,0,1],'boundary curve coefficient shape')
    require(cc==uscale(umul([0,0,1],pp),-1),'boundary curve constant coefficient')
    disc=uadd(umul(bb,bb),uscale(umul(aa,cc),-4))
    require(disc==d['discriminant'],'boundary discriminant')
    require(disc[-1]%p!=0 and len(disc)==13,'discriminant degree preserved')
    deriv=[i*c for i,c in enumerate(disc)][1:]
    require(mod_gcd(disc,deriv,p)==[1],'irreducible quadratic: discriminant not a rational square')
    require(mod_gcd(aa,bb,p)==[1],'nonconstant positive-X content absent')
    for r in range(3,9):require(ueval(cc,r)==0,'HIT6 for boundary curve')
    require(Q(1,200)+Q(1,400)<Q(1,64),'legal positive real branch lower endpoint')

    boundary=data['boundary_degree4']
    wanted={(0,2):16,(2,1):-8,(4,0):1,(1,0):-1}
    require(polynomial_from_terms(boundary['coefficients'])==wanted,'degree4 obstruction coefficients')
    require(boundary['s_slope']==110 and boundary['s_intercept']==90 and boundary['v_start']==10000 and boundary['common_prime']==11,'degree4 family')
    require(4096*26**10<10**24,'degree4 counterexample exceeds Runge size threshold')
    for v in [10000,10001,10002,123456]:
        ss=110*v+90;nn=ss**4;jj=(ss**4-ss)//2;xx=jj*(nn-jj)
        require(nn%400==0 and 10<=jj<=nn//2,'degree4 family legality')
        require((nn*nn-4*xx)**2==nn,'degree4 family exact equation')
        require(xx**4>nn**7 and 4*xx<=nn*nn,'degree4 family in main real strip')
        require(nn%11==5 and jj%11==7,'actual common prime 11 via first digit')
    return {'status':'PASS_NEW_COMPONENT_OBSTRUCTION_OBLIGATIONS',
      'exact_symbolic_identities':identity_count,
      'coefficient_majorization_terms':majorization_coefficients,
      'universal_threshold_inequalities':len(conditions),
      'complete_quartic_seeds':len(seen),'quartic_survivors':len(survivors),
      'power_denominator_profiles':power_profiles,
      'new_bounds_bits':{'low_N_components':12+10*L,'quadratic_denominators':1+6*L,
                        'nonconstant_content':1+10*LC},
      'root_count_unchanged':152,'family_count_unchanged':57,
      'no_big_kernel_no_history_no_lean':True}

if __name__=='__main__':
    import sys
    root=Path(__file__).resolve().parents[1]
    data=json.loads((root/'evidence/new_certificate.json').read_text())
    print(json.dumps(verify(data),indent=2))
