"""Fixed original-input identities; numeric checks use separate code in arith.py."""
GENERAL_NAMES=['d','z','k','u','a']
ZERO_NAMES=['z','v','d','k','u']

def general_spec(V):
    d,z,k,u,a=(V[x] for x in GENERAL_NAMES)
    H=d*u-k*z+1
    checks={}
    for eps in (-1,1):
        P=d*a+eps*k;Q=k*P+d;X=u*P+a+z;Y=z*a+eps*u
        F=P*Q-1;n=F+2
        checks[f'recovery_{eps}']=P*X-Q*Y-eps
        if eps==-1:
            slots=[Y,X,Q-X]
            As=[u*z,u*z,-(k-u)*((k-u)*z-1)]
            Bs=[k*k-u*d*Q,k-u*d*P,u*a*(k-u)*d*d-k*k*((k-u)*z-1)]
            Cs=[k*a-(k+u)*z+1,k*a+(k-u)*z,(k-u)*(2*k-u)*z-k*u*a-(2*k-u)]
            checks['T0_negative']=u*z*n+(k*k-u*d*Q)*Y-(k*a-(k-u)*z+1)
        else:
            slots=[X,Y,2*Q-X]
            As=[-u*z,-u*z,-(2*k-u)*((2*k-u)*z-2)]
            Bs=[u*d*P+k,u*d*Q+k*k,u*a*(2*k-u)*d*d+k*k*((2*k-u)*z-2)]
            Cs=[k*a+(k+u)*z,k*a-(k-u)*z+1,(k-u)*(2*k-u)*z+k*u*a-2*(k-u)]
            checks['T0_positive']=-u*z*n+(u*d*P+k)*X-(k*a+(k-u)*z)
        for i in range(3):checks[f'T2_{eps}_{i}']=As[i]*F+Bs[i]*slots[i]-Cs[i]
    b=d-z-a
    checks['positive_C1_bound_identity']=4*d*(k-u)*z-(k*d*d+2*d-k*(d-2*z)**2-2*(d-2*z))
    checks['negative_C1_upper']=u*(k*a+(k-u)*z)-((k*k-u*u)*z-k-k*u*b)
    checks['positive_C0_upper']=u*(k*a+(k+u)*z)-((k*k+u*u)*z-k-k*u*b)
    checks['positive_C1_upper']=u*(k*a-(k-u)*z+1)-((k-u)**2*z-k+u-k*u*b)
    checks['negative_C2_lower']=(k-u)*(2*k-u)*z-k*u*a-(2*k-u)-((k-u)*((k-u)*z-1)+k*u*b)
    checks['positive_C2_upper']=(k-u)*(2*k-u)*z+k*u*a-2*(k-u)-((k-u)*(3*k-u)*z-(3*k-2*u)-k*u*b)
    return [H],checks

def zero_spec(V):
    z,v,d,k,u=(V[x] for x in ZERO_NAMES)
    a=u*v;P=u*v*d-k;Q=k*P+d
    A=z*v-1;B=k*k*P-u*d;F=P*Q-1
    M1=2*u*d+1;M2=(k-2*u)*d-1
    gens=[z+d-k*v,k*k*v-(k+u)*d-1]
    checks={
        'original_du_relation':d*u-k*z+1,
        'original_zero_C0':k*a-(k+u)*z+1,
        'original_F_factorization':F-A*B,
        'original_j_factorization':P*(u*P+a+z)+1-u*Q*A,
        'B_quadratic':B-(u*(k+u)*d*d-k**3),
        'C1_normalization':k*a+(k-u)*z-M1,
        'C2_normalization':(k-u)*(2*k-u)*z-k*u*a-(2*k-u)-2*u*M2,
        'first_band_ratio':2*k*k*P-k*k*d*d-((2*u*(k+u)-k*k)*d*d+2*u*d-2*k**3),
        'positive_gap':B-M1*M2-(u*(5*u-k)*d*d+(4*u-k)*d-k**3+1),
    }
    return gens,checks
