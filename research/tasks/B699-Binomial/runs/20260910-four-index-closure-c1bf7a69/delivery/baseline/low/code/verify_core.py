"""Standard-library exact audit. Rebuilds identities, integer height certificates and test cases.
It does NOT reprove the published BFT or BEG theorems, run Lean, or exhaust B699 inputs.
"""
import json, math, sys, hashlib, time
from pathlib import Path
from fractions import Fraction as F
import exact_polynomial as P
ROOT=Path(__file__).resolve().parents[1]
TARGET=[17,23,26,27,30,32,33]
PAIRS=[(2,7,259),(3,11,329),(5,13,163)]

def prime(n):return n>=2 and all(n%d for d in range(2,math.isqrt(n)+1))
def vp(n,p):
    if n<=0:raise ValueError('vp called on a nonpositive integer')
    e=0
    while n%p==0:e+=1;n//=p
    return e

def vf(n,p):
    r=0
    while n:n//=p;r+=n
    return r

def factor(n):
    d={};p=2
    while p*p<=n:
        while n%p==0:d[p]=d.get(p,0)+1;n//=p
        p+=1
    if n>1:d[n]=d.get(n,0)+1
    return d

def audit_heights(rows):
    if [r['i'] for r in rows]!=TARGET:raise ValueError('target coverage mismatch')
    assert len({p for a,b,w in PAIRS for p in (a,b)})==6
    sigma=sum(w for a,b,w in PAIRS);assert sigma==751
    audits=[]
    for r in rows:
        i=r['i'];t=sum(prime(p) for p in range(2,i))
        a=r['r'];s=r['s'];L=i-a-1;lam=2*s-a;E=s*(s+1)+L*(L+1)//2
        if not(0<=a<i and 0<s<i and lam>0):raise ValueError('bad cutoffs')
        for key,val in [('t',t),('L',L),('lambda',lam),('E',E),('sigma_numerator',751),('sigma_denominator',1000)]:
            if r[key]!=val:raise ValueError('bad field: '+key)
        delta=1000*(lam*(i-t)-E)+751*lam
        if delta<=0 or r['Delta']!=delta:raise ValueError('nonpositive/wrong exponent')
        h=r['height_power_of_two']
        if h<22 or (1<<22)-i+1<=1771561 or (1<<22)<i*(i-1):raise ValueError('threshold gap')
        exponents={}
        for p in range(2,i+1):
            if not prime(p):continue
            # This is not the generator's factorial-product construction.
            eK=(s*(s+1) if p==2 else 0)
            eK+=2*sum((s-v+1)*vp(v,p) for v in range(1,s+1))
            eK+=sum((L-v+1)*vp(v,p) for v in range(1,L+1))
            exponents[p]=1000*eK-1000*lam*vf(i,p)+(h*delta-1751*lam if p==2 else 0)
        num=math.prod(p**e for p,e in exponents.items() if e>0)
        den=math.prod(p**(-e) for p,e in exponents.items() if e<0)
        if num<den:raise ValueError('integer height inequality failed')
        audits.append({'i':i,'h':h,'Delta':delta,'exact_prime_exponent_comparison':True,'numerator_bits':num.bit_length(),'denominator_bits':den.bit_length()})
    return audits

def polynomial_audit():
    x,y=P.X,P.Y;n=P.add(x,y)
    f=[P.scale(P.mul(P.falling(x,r),P.falling(y,4-r)),F(1,math.factorial(r)*math.factorial(4-r))) for r in range(5)]
    e,d,c,b,a=f
    I=P.add(P.sub(P.scale(P.mul(a,e),12),P.scale(P.mul(b,d),3)),P.powp(c,2))
    J=P.add(P.add(P.scale(P.mul(P.mul(a,c),e),72),P.scale(P.mul(P.mul(b,c),d),9)),
            P.add(P.add(P.scale(P.mul(a,P.powp(d,2)),-27),P.scale(P.mul(P.powp(b,2),e),-27)),P.scale(P.powp(c,3),-2)))
    W=P.sub(P.scale(P.powp(I,3),2),P.powp(J,2))
    def product(*args):
        r=P.const(1)
        for z in args:r=P.mul(r,z)
        return r
    xm1=P.sub(x,P.const(1));ym1=P.sub(y,P.const(1));nm2=P.sub(n,P.const(2));nm3=P.sub(n,P.const(3))
    Q=P.add(P.sub(P.add(P.add(P.powp(x,2),P.mul(x,y)),P.powp(y,2)),P.scale(n,3)),P.const(2))
    expectedI=P.scale(product(x,y,xm1,ym1,nm3,nm2),F(1,8))
    expectedJ=P.scale(product(P.powp(x,2),P.powp(y,2),xm1,ym1,P.powp(nm3,2),nm2),F(-1,16))
    raw=product(P.powp(x,3),P.powp(y,3),P.powp(xm1,2),P.powp(ym1,2),P.powp(nm3,3),P.powp(nm2,2),Q)
    assert I==expectedI and J==expectedJ and W==P.scale(raw,F(-1,256))
    assert [P.degree(I),P.degree(J),P.degree(W)]==[6,9,17]
    mult=[{'b':b,'c':c,'multiplicity':P.multiplicity(raw,b,c)} for aa in range(4) for b in range(aa+1) for c in [aa-b]]
    assert all(r['multiplicity']==6 for r in mult)
    # T3 polynomial attaining the lower bound d/m=9/4.
    cubic=product(P.powp(x,2),P.powp(y,2),xm1,ym1,P.sub(n,P.const(1)),P.powp(nm2,2))
    m3=[P.multiplicity(cubic,b,aa-b) for aa in range(3) for b in range(aa+1)]
    assert P.degree(cubic)==9 and all(v>=4 for v in m3)
    # Verify the parametrization identity as an exact polynomial in two parameters.
    # Reusing x,y as s,t is safe in this independent polynomial ring.
    px=product(P.add(x,y),P.add(x,P.scale(y,2)))
    py=product(x,P.add(P.scale(x,2),y))
    pz=P.add(P.add(P.powp(x,2),P.mul(x,y)),P.powp(y,2))
    homogeneous_Q=P.add(P.sub(P.add(P.add(P.powp(px,2),P.mul(px,py)),P.powp(py,2)),
                          P.scale(P.mul(P.add(px,py),pz),3)),P.scale(P.powp(pz,2),2))
    assert homogeneous_Q=={}
    # Twice the symmetric matrix of Q_h has nonzero determinant; Q is smooth.
    matrix=((2,1,-3),(1,2,-3),(-3,-3,4))
    determinant=(matrix[0][0]*(matrix[1][1]*matrix[2][2]-matrix[1][2]*matrix[2][1])
        -matrix[0][1]*(matrix[1][0]*matrix[2][2]-matrix[1][2]*matrix[2][0])
        +matrix[0][2]*(matrix[1][0]*matrix[2][1]-matrix[1][1]*matrix[2][0]))
    assert determinant==-6
    # Verify its six distinct preimages.
    conic_points=[(1,0),(2,0),(0,1),(0,2),(1,2),(2,1)]
    params=[(-1,2),(0,1),(-1,1),(-2,1),(1,0),(1,1)]
    assert all(u*v2-v*u2 != 0 for pos,(u,v) in enumerate(params) for u2,v2 in params[pos+1:])
    for (u,v),(xx,yy) in zip(params,conic_points):
        zz=u*u+u*v+v*v
        assert F((u+v)*(u+2*v),zz)==xx and F(u*(2*u+v),zz)==yy
        assert P.evaluate(Q,xx,yy)==0
    # The weighted sums for components outside the exceptional curves.
    assert 3*F(1,8)+3*F(3,16)==F(15,16)
    assert 3*F(1,12)+3*F(1,9)+2*F(5,36)==F(31,36)
    return {'I_J_W_dictionary_identities':True,'degrees':[6,9,17],'T4_multiplicities':mult,
            'T3_attaining_polynomial_degree':9,'T3_multiplicities':m3,'conic_parameter_points_checked':6,
            'conic_parametrization_identity':True,'twice_conic_matrix_determinant':determinant,
            'sharp_polynomial_thresholds':{'i3':'9/4','i4':'17/6'},
            'ineffective_height_multiplier':(256*729)**2}

def actual_tests():
    tests=[]
    for n,i,j in [(10,4,5),(16,4,6),(36,4,12),(375,4,125),(1875,4,625),(14739,17,4913)]:
        assert i<j and 2*j<=n
        ci=math.comb(n,i);cj=math.comb(n,j)
        ps=set()
        for a in range(i):ps.update(factor(n-a))
        fac={p:vf(n,p)-vf(i,p)-vf(n-i,p) for p in ps};fac={p:e for p,e in fac.items() if e}
        assert math.prod(p**e for p,e in fac.items())==ci
        V=math.prod(p**e for p,e in fac.items() if p>=i)
        U=ci//V
        D=math.prod(p**e for p,e in fac.items() if p>=i and cj%p)
        ff=[math.comb(j,r)*math.comb(n-j,i-r) for r in range(i+1)]
        assert all(v%D==0 for v in ff)
        row={'n':n,'i':i,'j':j,'U':U,'V':V,'D':D,'all_coefficients_divisible_by_D':True,
             'common_primes_ge_i':[p for p in sorted(fac) if p>=i and cj%p==0]}
        if i==4:
            e,d,c,b,a=ff
            II=12*a*e-3*b*d+c*c
            JJ=72*a*c*e+9*b*c*d-27*a*d*d-27*b*b*e-2*c*c*c
            WW=2*II**3-JJ**2
            assert WW<0 and WW%(D**6)==0
            row.update({'W':WW,'D6_divides_W':True,'V6_divides_W':WW%(V**6)==0})
        else:
            assert fac[17]==2 and cj%17!=0 and D%(17**2)==0
            row['endpoint_p_equals_i_full_exponent']=2
            q=17**(fac[17]+1)
            aa=n%q;bb=j%q;cc=(n-j)%q
            assert aa<i and bb+cc==aa
            assert (n-aa)%q==(j-bb)%q==(n-j-cc)%q==0
            assert max(vp(n-a,17) for a in range(i))==fac[17]+1
            row['endpoint_compensated_modulus']=q
            row['endpoint_compensated_residues']=[aa,bb,cc]
            a=i//3;s=(2*i+1)//3;L=i-a-1;lam=2*s-a
            z=math.prod(math.comb(j,h)*math.comb(n-j,h) for h in range(1,s+1))*math.prod(math.comb(n-i+h,h) for h in range(1,L+1))
            assert z%(D**lam)==0
            row['three_window_divisibility']=True
        tests.append(row)
    assert any(r.get('V6_divides_W') is False for r in tests)
    return tests

def mutation_tests(rows):
    import copy
    results={}
    mutations={
        'height_one_too_small':lambda z:z[0].__setitem__('height_power_of_two',z[0]['height_power_of_two']-1),
        'unsupported_sigma':lambda z:z[0].__setitem__('sigma_numerator',752),
        'wrong_prime_count':lambda z:z[0].__setitem__('t',z[0]['t']-1),
        'missing_index':lambda z:z.pop(),
    }
    for name,change in mutations.items():
        z=copy.deepcopy(rows);change(z)
        try:audit_heights(z)
        except (AssertionError,ValueError):results[name]='rejected'
        else:raise AssertionError('accepted bad certificate: '+name)
    return results

def main():
    t0=time.time()
    rows=json.loads((ROOT/'outputs/height_certificates_751.json').read_text())
    out={'status':'passed','scope':'Exact internal identities and finite certificates, not a proof of external BFT/BEG inputs or Lean acceptance',
         'heights':audit_heights(rows),'polynomials':polynomial_audit(),'actual_nonvacuous_tests':actual_tests(),
         'mutation_tests':mutation_tests(rows)}
    out['elapsed_seconds']=time.time()-t0
    (ROOT/'outputs/core_verification.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'heights':[(r['i'],r['h']) for r in out['heights']],
                      'actual_tests':len(out['actual_nonvacuous_tests']),'bad_certificates_rejected':len(out['mutation_tests']),
                      'elapsed_seconds':out['elapsed_seconds']},indent=2))
if __name__=='__main__':main()
