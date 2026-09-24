"""Independent exact checks using only Python's standard library.

This program does not prove the adopted elliptic-surface theorem. It verifies
polynomial identities, recorded root counts, and concrete consumer hypotheses.
"""
from __future__ import annotations
import argparse, copy, hashlib, json
from fractions import Fraction as F
from functools import reduce
from math import gcd, isqrt
from pathlib import Path

# Dense rational polynomials, coefficients in ascending order.
def trim(a):
    a=list(map(F,a)) or [F(0)]
    while len(a)>1 and a[-1]==0: a.pop()
    return a

def add(a,b):
    c=[F(0)]*max(len(a),len(b))
    for i,x in enumerate(a): c[i]+=x
    for i,x in enumerate(b): c[i]+=x
    return trim(c)

def scale(a,k): return trim([F(k)*x for x in a])
def sub(a,b): return add(a,scale(b,-1))
def mul(a,b):
    c=[F(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b): c[i+j]+=x*y
    return trim(c)

def power(a,n):
    ans=[F(1)]
    for _ in range(n): ans=mul(ans,a)
    return ans

def compose(a,b):
    out=[F(0)]
    for x in reversed(a): out=add(mul(out,b),[x])
    return out

def divmod_poly(a,b):
    a,b=trim(a),trim(b)
    if b==[0]: raise ZeroDivisionError('zero polynomial')
    q=[F(0)]*max(1,len(a)-len(b)+1)
    while a!=[0] and len(a)>=len(b):
        k=len(a)-len(b); c=a[-1]/b[-1]; q[k]+=c
        a=sub(a,[F(0)]*k+scale(b,c))
    return trim(q),trim(a)

def exact_div(a,b):
    q,r=divmod_poly(a,b)
    assert r==[0], ('non-exact polynomial division',r)
    return q

def derivative(a): return trim([i*a[i] for i in range(1,len(a))])
def monic(a):
    a=trim(a)
    return a if a==[0] else scale(a,1/a[-1])
def gcd_poly(a,b):
    while trim(b)!=[0]: a,b=b,divmod_poly(a,b)[1]
    return monic(a)
def degree(a): return len(trim(a))-1

def squarefree_parts(a):
    a=monic(a)
    c=gcd_poly(a,derivative(a)); w=exact_div(a,c); i=1; parts=[]
    while degree(w)>0:
        y=gcd_poly(w,c); z=exact_div(w,y)
        if degree(z)>0: parts.append((z,i))
        w=y; c=exact_div(c,y); i+=1
    assert degree(c)==0
    return parts

def read_poly(a): return trim([F(x) for x in a])
def evaluate(a,x):
    v=0
    for c in reversed(a): v=v*x+c
    return v

def val(n,p):
    if n==0: raise ValueError('valuation of zero')
    n=abs(n); v=0
    while n%p==0: n//=p; v+=1
    return v

def divisors(n): return [i for i in range(1,n+1) if n%i==0]
def D_direct(A,d): return max(i for i in divisors(d) if A%(i*i)==0)

def slots(coeff,num,den):
    d=len(coeff)-1; A=coeff[-1]
    assert D_direct(A,d)==2
    cf=reduce(gcd,coeff[1:])
    exponent=(5*val(A,2)-2*val(cf,2)+5)//6
    modulus=2**exponent
    return [s for s in range(d) if den*s>num*d and coeff[s]%2==0
            and coeff[s]>=modulus and all(c%2==0 for c in coeff[s+1:])]

# Sparse rational polynomials in the three independent symbols (L,M,Q).
def scalar(c): return {(0,0,0):F(c)} if c else {}
def var(i):
    k=[0,0,0]; k[i]=1
    return {tuple(k):F(1)}
def sa(a,b):
    c=a.copy()
    for k,v in b.items():
        c[k]=c.get(k,F(0))+v
        if not c[k]: del c[k]
    return c
def sc(a,c): return {k:v*F(c) for k,v in a.items() if v*F(c)}
def ss(a,b): return sa(a,sc(b,-1))
def sm(a,b):
    c={}
    for i,x in a.items():
        for j,y in b.items():
            k=tuple(v+w for v,w in zip(i,j)); c[k]=c.get(k,F(0))+x*y
    return {k:v for k,v in c.items() if v}
def sp(a,n):
    r=scalar(1)
    for _ in range(n): r=sm(r,a)
    return r

def sparse_checks():
    L,M,Q=var(0),var(1),var(2)
    one=scalar(1); four=scalar(4)
    curveA=sc(sm(sp(M,2),sa(sc(M,15),scalar(16))),-F(1,3))
    curveB=sc(sm(sp(M,3),sa(sa(sc(sp(M,2),27),sc(M,180)),scalar(128))),F(1,27))
    X=sm(M,sa(L,scalar(F(4,3)))); Y=sm(sp(M,2),Q)
    cubic=ss(sm(M,sp(Q,2)),sa(sa(sp(L,3),sc(sp(L,2),4)),sa(sc(sm(M,L),-5),sp(M,2))))
    assert ss(ss(ss(sp(Y,2),sp(X,3)),sm(curveA,X)),sa(curveB,sm(sp(M,3),cubic)))=={}
    discr=sm(sp(M,8),sa(sa(sc(sp(M,2),27),sc(M,-140)),scalar(-144)))
    assert ss(sa(sc(sp(curveA,3),4),sc(sp(curveB,2),27)),discr)=={}
    # Recovery numerators: K=Kn/M, Z=Zn/M, f=2+Fn/M^2.
    Kn=ss(sm(L,sa(L,four)),M)
    Zn=sm(sa(L,four),Q)
    Fn=sm(sa(L,four),ss(sa(sp(L,2),sc(L,4)),sc(M,4)))
    lhs=ss(sm(M,ss(sp(Zn,2),sp(M,2))),sm(sa(sp(M,2),Fn),Kn))
    assert ss(lhs,sm(sp(sa(L,four),2),cubic))=={}
    assert ss(sm(Fn,Q),sm(Zn,ss(Kn,sc(M,3))))=={}
    assert ss(sm(Fn,L),sm(sa(Kn,M),ss(Kn,sc(M,3))))=={}
    return 5


def check_certificate(cert):
    assert cert['status']=='EXACT_REPLAY_PASS'
    t=[F(0),F(1)]
    A=scale(mul(power(t,2),[16,15]),-F(1,3))
    B=scale(mul(power(t,3),[128,180,27]),F(1,27))
    R=trim([-144,-140,27]); discr=mul(power(t,8),R)
    assert read_poly(cert['curve']['A'])==A
    assert read_poly(cert['curve']['B'])==B
    assert read_poly(cert['curve']['delta_without_minus16'])==discr
    assert read_poly(cert['curve']['bad_value_polynomial'])==R
    assert add(scale(power(A,3),4),scale(power(B,2),27))==discr
    rd=140**2+4*27*144
    assert rd==cert['curve']['bad_value_discriminant']==35152
    assert isqrt(rd)**2<rd<(isqrt(rd)+1)**2
    assert evaluate(R,-F(16,15))==F(2704,75)
    assert evaluate([128,180,27],-F(16,15))==-F(832,25)
    for e,k,va,vb,vd in cert['finite_minimality']:
        assert k==e//2 and va==2*e-4*k and vb==3*e-6*k and vd==8*e-12*k
        assert va in (0,2) and vb in (0,3) and vd>0
    assert [row[0] for row in cert['finite_minimality']]==list(range(1,65))
    for m,N,va,vb,vd in cert['infinity_minimality']:
        assert N==(5*m+5)//6
        assert (va,vb,vd)==(4*N-3*m,6*N-5*m,12*N-10*m)
        assert min(va,vb,vd)>=0 and (va<4 or vb<6)
    assert [row[0] for row in cert['infinity_minimality']]==list(range(1,65))
    for row in cert['root_profiles']:
        poly=read_poly(row['M']); m=degree(poly)
        parts=squarefree_parts(poly)
        r=sum(degree(g) for g,e in parts)
        o=sum(degree(g) for g,e in parts if e%2)
        W=compose(R,poly); w=degree(W)-degree(gcd_poly(W,derivative(W)))
        chi=(5*m+5)//6-(m-o)//2
        bound=2*r+2*w-o-2
        assert (row['m'],row['r'],row['o'],row['w'],row['chi'],row['ell_bound'])==(m,r,o,w,chi,bound)
        assert row['uniform_bound']==5*m-2 and bound<=5*m-2
    triples=[]
    # Enumerate the entire interval implied by the proved bound, not arbitrary d.
    m=2
    for d in range(2,13*m-6+1,2):
        if (5*d+m)%6: continue
        s=(5*d+m)//6; ell=4*s-3*d
        if 0<s<d and ell>m and ell<=5*m-2: triples.append([d,s,ell])
    assert triples==cert['loss_two_degree_classes']==[[8,7,4],[14,12,6],[20,17,8]]
    weak=cert['weak_core']
    L=read_poly(weak['L_in_M']); Q=read_poly(weak['Q_in_M'])
    assert sub(mul(t,power(Q,2)),add(add(power(L,3),scale(power(L,2),4)),add(scale(mul(t,L),-5),power(t,2))))==[0]
    Fn=mul(add(L,[4]),sub(add(power(L,2),scale(L,4)),scale(t,4)))
    fnum=add(scale(power(t,2),2),Fn)
    fpoly,fremainder=divmod_poly(fnum,power(t,2))
    assert fpoly==read_poly(weak['f_polynomial_part_in_M'])
    assert fremainder==[0,-12] and weak['f_pole_numerator']==-12
    assert degree(exact_div(sub(mul(L,add(L,[4])),t),t))>=0
    assert degree(exact_div(mul(add(L,[4]),Q),t))>=0
    assert weak['restored_f_polynomial'] is False and weak['original_NC3'] is False
    assert read_poly(weak['M'])==[1,0,1]
    # Three original-row applications, hypotheses only.
    for app in cert['applications']:
        k,a,b,c,p=(app[q] for q in ('k','a','b','c','p'))
        assert k>=1 and all(q>0 and q%2 for q in (a,b,c))
        assert p in (3,5,7)
        U=[0]*(13*k+1); V=U.copy()
        U[0]=V[0]=1; U[1]=2*a; U[9*k]=2*c; U[13*k]=2
        V[1]=2*b; V[13*k]=2
        coeff=[int(v) for v in add(mul(U,V),[1])]
        d=len(coeff)-1; H=sum(coeff); cf=reduce(gcd,coeff[1:])
        assert coeff==app['coefficients']
        assert (d,H,coeff[-1],cf)==(app['d'],app['H'],app['A'],app['content'])
        assert D_direct(4,d)==app['D']==2
        assert degree(gcd_poly(U,V))==0
        assert app['first_source_block_degrees']==[13*k,13*k]
        assert slots(coeff,5,6)==app['old_candidate_slots']==[22*k]
        assert slots(coeff,11,13)==app['new_candidate_slots']==[]
        assert max(i for i in range(d) if coeff[i])==app['h']==22*k
        T=p**app['e']; gate=(2*(H+2))**(2*d+4)
        assert T>=gate and T//p<gate
        n=evaluate(coeff,T)
        assert isinstance(n,int) and n%4==app['n_mod4']==0
        assert n.bit_length()==app['n_bit_length']
        assert hashlib.sha256(n.to_bytes((n.bit_length()+7)//8,'big')).hexdigest()==app['n_big_endian_sha256']
        src=val(n-2,p)
        assert src==app['actual_source_exponent']==app['e']+val(coeff[1],p)
        assert val(n*(n-1)*(n-2)//6,p)==app['choose_n_3_valuation']==src-(p==3)
    assert cert['uniform_inequalities']==dict(ell_le_5m_minus_2=True,d_le_13m_minus_6=True,thirteen_s_ge_eleven_d_plus_1=True)
    return True


def partitions(n,minimum=1):
    if n==0:
        yield []
    for first in range(minimum,n+1):
        for tail in partitions(n-first,first): yield [first]+tail


def main(certificate,out):
    cert=json.loads(certificate.read_text())
    identity_count=sparse_checks()
    assert check_certificate(cert)
    print('STANDARD_LIBRARY_POLYNOMIAL_IDENTITIES=PASS')
    print('STANDARD_LIBRARY_ROOT_AND_MINIMALITY_CHECKS=PASS')
    print('ORIGINAL_ROW_HYPOTHESES=PASS; NO_J_SCAN')
    count=0
    for m in range(1,21):
        for part in partitions(m):
            r=len(part); o=sum(e%2 for e in part)
            assert 2*r-o<=m and (m-o)%2==0
            chi=(5*m+5)//6-(m-o)//2
            assert chi>0
            # Exact degree-bound cancellation, not a theorem certification.
            assert 3*(5*m-2)-2*m==13*m-6
            count+=1
    print('MULTIPLICITY_PARTITION_REGRESSION=PASS; COUNT='+str(count))
    corrupt=[]
    for name,modify in [
        ('discriminant',lambda x:x['curve']['delta_without_minus16'].__setitem__(8,'-143')),
        ('degree_classes',lambda x:x['loss_two_degree_classes'].append([26,22,10])),
        ('root_count',lambda x:x['root_profiles'][0].__setitem__('w',5)),
        ('application',lambda x:x['applications'][0]['coefficients'].__setitem__(22,5)),
        ('weak_recovery',lambda x:x['weak_core'].__setitem__('restored_f_polynomial',True)),
    ]:
        bad=copy.deepcopy(cert); modify(bad)
        try: check_certificate(bad)
        except (AssertionError,ValueError,ZeroDivisionError): corrupt.append(name)
        else: raise AssertionError('corrupt certificate accepted: '+name)
    print('CORRUPTED_CERTIFICATES_REJECTED=PASS; COUNT='+str(len(corrupt)))
    out.mkdir(parents=True,exist_ok=True)
    receipt=dict(status='STANDARD_LIBRARY_CROSSCHECK_PASS',sparse_identities=identity_count,
       finite_minimality_cases=len(cert['finite_minimality']),infinity_cases=len(cert['infinity_minimality']),
       root_profiles=len(cert['root_profiles']),multiplicity_partitions_through_degree_20=count,
       original_row_applications=len(cert['applications']),loss_two_degree_classes=cert['loss_two_degree_classes'],
       corruptions_rejected=corrupt,external_geometric_theorem_machine_verified=False,
       infinite_NC3_implications_machine_verified=False)
    (out/'standard_library.json').write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('CENTER_11_OF_13_STANDARD_CROSSCHECK=PASS')

if __name__=='__main__':
    p=argparse.ArgumentParser(); p.add_argument('--certificate',required=True,type=Path)
    p.add_argument('--out',required=True,type=Path); args=p.parse_args()
    main(args.certificate,args.out)
