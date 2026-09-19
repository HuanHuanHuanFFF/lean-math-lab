"""Rebuild the specific polynomial identities in PROOFS, without a CAS."""
from poly_exact import X,Y,add,scale,mul,power,const,substitute,shift,terms,order

def kernels():
    n,J = add(X,Y),mul(X,Y)
    A=mul(add(X,const(-1)),add(Y,const(-1)))
    P=add(power(n,2),scale(J,-3),scale(n,-1))
    Q=add(scale(power(n,4),10),scale(mul(power(n,2),J),-36),scale(power(J,2),27),
          scale(power(n,3),-54),scale(mul(n,J),117),scale(power(n,2),90),
          scale(J,-81),scale(n,-58),const(12))
    return n,J,A,P,Q,mul(mul(J,A),P),mul(mul(J,A),Q)

def K(n,U):
    return add(scale(power(n,2),10),scale(mul(n,U),-36),scale(n,-34),
               scale(power(U,2),27),scale(U,81),const(12))

def build_algebra():
    n,J,A,P,Q,F3,F4=kernels()
    result={'F3':terms(F3),'F4':terms(F4),'Q':terms(Q)}
    result['orders']={name:[[order(shift(F,b,r-b)) for b in range(r+1)] for r in range(6)]
                      for name,F in [('F3',F3),('F4',F4)]}
    result['Q_positive_shift']=terms(substitute(Q,add(X,const(7)),add(X,Y,const(7))))
    result['Q_upper_shift']=terms(substitute(add(scale(power(n,4),10),scale(Q,-1)),
                                          add(X,const(7)),add(X,Y,const(7))))
    # Exact local expansions for the y/L3/L4 coprimality proof.
    result['K3']=terms(K(add(X,const(3)),add(Y,const(1))))
    result['K4']=terms(K(add(X,const(4)),add(Y,const(1))))
    # Chebyshev-type univariate upper bound, using X as a formal real variable.
    lhs=add(const(4),scale(power(X,2),-243),scale(power(X,3),729))
    rhs=mul(power(add(scale(X,9),const(-2)),2),add(scale(X,9),const(1)))
    if lhs != rhs:
        raise AssertionError('F3 envelope identity')
    result['envelope_identity']=terms(lhs)
    # F3/F4 in first-row coordinates: use X=N, Y=U.
    N,U=X,Y
    nn=add(N,const(1));jj=mul(N,U)
    aa=add(jj,scale(nn,-1),const(1))
    pp=add(power(nn,2),scale(jj,-3),scale(nn,-1))
    qq=add(scale(power(nn,4),10),scale(mul(power(nn,2),jj),-36),scale(power(jj,2),27),
           scale(power(nn,3),-54),scale(mul(nn,jj),117),scale(power(nn,2),90),
           scale(jj,-81),scale(nn,-58),const(12))
    f3=mul(mul(jj,aa),pp)
    exp3=mul(mul(mul(power(N,3),U),add(U,const(-1))),add(nn,scale(U,-3)))
    f4=mul(mul(jj,aa),qq)
    exp4=mul(mul(mul(power(N,4),U),add(U,const(-1))),K(nn,U))
    if f3 != exp3 or f4 != exp4:
        raise AssertionError('first-row identities')
    result['first_row_F3']=terms(exp3)
    result['first_row_F4']=terms(exp4)
    # The actual L3/L4 and center identities, in formal coordinates (n,U).
    nn,uu=X,Y
    kk=K(nn,uu)
    b0=add(nn,scale(uu,-3))
    k_recovered=add(scale(power(b0,2),3),
                    scale(mul(b0,add(scale(nn,2),const(-9))),3),
                    mul(add(nn,const(-3)),add(nn,const(-4))))
    TT=add(scale(nn,2),const(4),scale(uu,-9))
    center_k=add(scale(power(add(nn,const(-4)),2),10),
                 mul(add(scale(nn,8),const(-35)),TT),power(TT,2))
    center=add(scale(add(mul(add(nn,const(-1)),add(uu,const(-2))),const(2)),9),
               mul(add(nn,const(-1)),TT))
    if kk!=k_recovered or scale(kk,3)!=center_k or center!=scale(power(add(nn,const(-4)),2),2):
        raise AssertionError('integer recovery/center identity')
    result['K_positive_recovery']=terms(k_recovered)
    result['center_identity']=terms(center)
    return result
