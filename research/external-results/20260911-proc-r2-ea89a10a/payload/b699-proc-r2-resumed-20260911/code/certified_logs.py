"""Integer enclosures S*log(n) using 24 atanh terms; never float."""
from functools import lru_cache
SCALE=10**18
TERMS=24
# For 0<=t<=1/3, omitted log-series tail is at most
# 2*t^(2N+1)/((2N+1)*(1-t*t)).  Its scaled value is < 1.
if not 18*SCALE < 8*(2*TERMS+1)*3**(2*TERMS+1):
    raise RuntimeError('tail bound')

def _series(a: int,b: int) -> tuple[int,int]:
    if not 0<=3*a<=b: raise ValueError('requires 0 <= a/b <= 1/3')
    if a==0:return 0,0
    aa,bb=a,b;lower=0
    for k in range(TERMS):
        lower+=(2*SCALE*aa)//((2*k+1)*bb)
        aa*=a*a;bb*=b*b
    return lower,lower+TERMS+1

@lru_cache(maxsize=None)
def log_interval(n: int) -> tuple[int,int]:
    if not isinstance(n,int) or isinstance(n,bool) or n<1: raise ValueError('positive integer')
    k=n.bit_length()-1;q=1<<k
    l2,u2=_series(1,3);l,u=_series(n-q,n+q)
    return k*l2+l,k*u2+u
