"""Exact boundary of the new inequalities, not an NC9 counterexample."""
from math_core import *
from pathlib import Path
import time,json
R=Path(__file__).resolve().parents[1];t0=time.perf_counter()
p=1733
assert prime_trial(p) and p%400==133 and p%11==6
assert pow(6,10,11)==1 and pow(6,2,11)==3
assert 8*3%11==2 and 6*3%11==7
# Entire parameter t>=1: exponent differences, evaluated at their positive minima.
assert 199-1>14  # p^(199t-1)>2^14 ensures d*Delta<j/2 for d<=n^(1/6)
assert 303+3>5  # p^(303t+3)>2^5 ensures center distance exceeds the new band
assert 3*401>20 # n^3>2^20 for noncentral slopes
# Exact sample of the arithmetic progression t=10v+2.
t=2;e=t;H=400*t+1;K=300*t+1;Q=p**e
n=Q*(2*p**H+p**K+1);j=Q*p**H;D=n-2*j;g=gcd(n,j)
assert n%400==0 and g==Q and 10<=j and 2*j<=n
assert vbin(n,j,p)==0 and vbin(n,9,11)>0 and vbin(n,j,11)>0
assert n**13*g**4 < 2**213*(j*(n-j))**7
assert n**3 < 2**205*(j//g)**4
assert g**4 < 2**200*n
assert 128*D**9>n**6
assert coefficient(n,j,1,2)!=0
out={'status':'PASS_EXACT_BOUNDARY_NOT_NC9','prime':p,'parameter':'t=10v+2, v>=0','sample_t':t,'sample_n_bits':n.bit_length(),
 'source_v11':vbin(n,9,11),'target_v11':vbin(n,j,11),'avoided_source_prime':p,
 'unbounded_parameters':['t','e','H','K'],'all_new_rational_band_distances_fail':'proved symbolically for every d<=n^(1/6) in PROOFS Appendix B',
 'not_claimed':['alpha 7-smooth','all NC9 conditions','counterexample to B699'],
 'seconds':time.perf_counter()-t0}
(R/'logs/boundary.json').write_text(json.dumps(out,indent=2));print(json.dumps(out))
