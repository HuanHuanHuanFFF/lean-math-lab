"""New identities constructed independently of stored certificate terms."""
from exact_poly import variables

def specs():
    out=[]
    names=['d','k','u','z','a'];v=variables(names);d,k,u,z,a=(v[n] for n in names)
    G=d*u-k*z+1
    for e in (-1,1):
        P=d*a+e*k;Q=k*P+d;n=P*Q+1;X=u*P+a+z;Y=z*a+e*u
        H0=k*a+e*(k-u)*z+(1-e)//2
        expressions={
            'original_j':P*X+(1-e)//2-Q*Y-(1+e)//2,
            'source0_H0':(u*z*n+(k*k-u*d*Q)*Y-H0) if e<0 else (-u*z*n+(u*d*P+k)*X-H0),
        }
        for key,R in expressions.items():
            out.append(dict(id=f'{key}_{e}',names=names,residual=R,relation=G))
    # Direct identities (relation zero): square completion, H0 gaps, weak models.
    names=['k','P','D'];v=variables(names);k,P,D=(v[n] for n in names)
    out.append(dict(id='odd_k_square_completion',names=names,
                    residual=k*(k*P**2+2*D*P+1)-(k*P+D)**2+(D**2-k),relation=None))
    names=['k','u','z','d','b'];v=variables(names);k,u,z,d,b=(v[n] for n in names);a=d-z-b
    for e in (-1,1):
        H0=k*a+e*(k-u)*z+(1-e)//2
        gap=k*b+((2*k-u)*z-1 if e<0 else u*z)
        out.append(dict(id=f'H0_gap_{e}',names=names,residual=k*d-H0-gap,relation=None))
    names=['x'];x=variables(names)['x'];P=(x+1)*(x*x+1);Q=(x-1)*(x**4+1);K=(x-1)**2;d=2*(x-1)
    J8=Q*x*(3*x*x+2*x+1);X8=3*x**5-4*x**4+7*x-8
    pairs={
        'weak_n':P*Q+1-x**8,
        'weak_division':Q-K*P-d,
        'weak_CRT':J8-8-P*X8,
        'weak_top_quotient':X8-(3*x*x-7*x)*P-(4*P+10*x-12),
        'weak_z':d*x*(3*x*x+2*x+1)-8-(6*x-8)*P,
        'weak_wrong_carry':8*K*(6*x-8)-8*d*(3*x*x-7*x)-64*(x-1),
    }
    # weak_wrong_carry corresponds to 64*(k*z-d*u)=64*(x-1).
    # Correct common denominator: z=(6x-8)/8, u=(3x^2-7x)/8.
    pairs['weak_wrong_carry']=K*(6*x-8)-d*(3*x*x-7*x)-8*(x-1)
    for key,R in pairs.items():out.append(dict(id=key,names=names,residual=R,relation=None))
    return out
