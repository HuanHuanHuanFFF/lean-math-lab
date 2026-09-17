"""Exact per-input certificate checks for the new two-window lemma.
The universal theorem is in notes/PROOFS.md; this is not a proof assistant.
"""
from math import gcd

def trace(T:int,A:int,B:int,X:int,u:int,w:int)->dict:
    vals=(T,A,B,X,u,w)
    if any(type(t) is not int for t in vals): raise ValueError('non-integer parameter')
    if not(T>=3 and T%2==1 and 1<=A<T and B>=1 and X>=3*A*B*B):
        raise ValueError('outside proved parameter region')
    if not(0<=u<=A and 0<=w<=B): raise ValueError('invalid allocation')
    n=T*(A*X+B);j=T*(u*X+w)
    if not 0<j<n: raise ValueError('illegal endpoint')
    if (3*j*(j-1))%(n-1):return {'mode':'W1-rejected','n':n,'j':j}
    if A*w-B*u<0:u,w=A-u,B-w
    delta=A*w-B*u
    if delta<=0:raise ArithmeticError('zero determinant survived W1')
    y=u+T*delta;r=u*(A-u)
    num=3*y*(y-A)
    if num%(n-1):raise ArithmeticError('first quotient is not integral')
    q=num//(n-1)
    if not 0<q<T or not r>0 or (3*r-q)%T:raise ArithmeticError('quotient reduction failed')
    h=(3*r-q)//T
    L=12*r*delta+2*h*(T*delta+4*u-2*A)
    if not(h>=0 and h*T<3*r and 0<L<n-2):raise ArithmeticError('positive gap failed')
    rem=6*r*(2*A-u-3*y)+2*q*(y+3*u-2*A)
    if rem != -T*L or gcd(T,n-2)!=1:raise ArithmeticError('full-T cancellation failed')
    if (6*j*(j-1)*(j-2))%(n-2)==0:raise ArithmeticError('unexpected two-window solution')
    return dict(mode='W2-rejected',n=n,j=j,delta=delta,q=q,h=h,L=L,T=T,A=A,B=B,X=X)

def verify_stored(rec:dict)->bool:
    try:
        r=trace(*(rec[k] for k in ['T','A','B','X','u','w']))
        return (r['mode']=='W2-rejected' and r['n']==rec['n'] and r['j']==rec['j']
                and r['q']==rec['q'] and -r['T']*r['L']==rec['R'])
    except (KeyError,ValueError,ArithmeticError,TypeError):return False
