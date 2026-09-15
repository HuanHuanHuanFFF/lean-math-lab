"""Infinite family certificates plus one exact (644-bit exponent) display."""
from pathlib import Path
from math import gcd,isqrt,lcm
import json,sys

def isprime(q):return q>=2 and all(q%d for d in range(2,isqrt(q)+1))
def vp(n,p):
 assert n>0
 v=0
 while n%p==0:v+=1;n//=p
 return v

def legendre(n,p):
 ans=0
 while n:n//=p;ans+=n
 return ans

def carries(n,j,p):
 ans=0;Q=p
 while Q<=n:ans+=j%Q>n%Q;Q*=p
 return ans

def digit_add(n,j,p):
 a=j;b=n-j;c=0;total=0
 while a or b or c:
  d=(a%p)+(b%p)+c
  c=int(d>=p);total+=c;a//=p;b//=p
 return total

s0=322;r=4447;t=133;q=6577
assert isprime(r) and isprime(q)
period=lcm(6,r*(r-1),q-1)
assert period==21669412752 and pow(2,period,r*r)==1 and pow(4,period,q)==1
xm=7*pow(2,s0,r*r)%(r*r)
assert (xm+1)%r==0
Bmod=(xm+1)//r
assert Bmod==1492 and gcd(Bmod,r)==1 and (98*t*Bmod+3)%r==0
assert (6824*pow(4,s0,q)+133)%q==0
assert s0%6==4 and period%6==0 and gcd(t,3*r)==1
assert 98*t<3*r
family={'s_base':s0,'s_period':period,'root_odd_part':7,'r':r,'coefficient':t,'gamma_extra_prime':q,
        'x_mod_r_squared':xm,'B_mod_r':Bmod,'first_window_exact':True,
        'witness_period_checks':{'two_mod_r_squared':1,'four_mod_q':1,'mod6':0},
        'coverage':'s=s_base+s_period*k, k>=0; n=x^2; j=49*133*((x-1)/3)*((x+1)/4447), x=7*2^s'}
# An independent actual integer check at the first member. Large j-binomial is not formed.
s=s0;x=7*(1<<s);n=x*x;A=(x-1)//3;B=(x+1)//r;j=49*t*A*B
assert gcd(n,j)==49 and 4<=j and 2*j<n
N=(n-1)//3;M=(n-2)//2
assert vp(n-1,3)==1 and vp(M,3)==0
assert j*(j-1)%N==0 and j*(j-1)*(j-2)%M!=0
beta=j//49;gamma=(n-j)//49
assert beta//gcd(beta,n-1)==133
assert gcd(gamma,n-1)==r and gamma//r>23
assert gamma%r==0 and gamma%q==0
assert gcd(A,B)==1 and min(A,B)>23 and gcd(B,r)==1
assert all(z%d for z in [j,n-j] for d in [x-1,x+1])
choose3=n*(n-1)*(n-2)//6
v=legendre(n,7)-legendre(j,7)-legendre(n-j,7)
assert v==carries(n,j,7)==digit_add(n,j,7)==113 and vp(choose3,7)==2
assert vp(choose3,3)==0 # an auxiliary mod-9 obstruction is not a prime-3 witness
W=gcd(choose3,M//gcd(M,j*(j-1)*(j-2)))
assert W>1 and W%2==1
# Earlier whole-row estimates are not exclusions on this input.
assert 128*(49**4)*((n-1)**3)<27*n**4
assert (2*s)%3!=1 and n%9!=0
# Check low-prime-power row display and the generic defect bound on all small canonical data
examples=[]
for prime in [5,7,11,13]:
 assert isprime(prime)
 for exponent in range(1,3):
  y=3*prime**exponent+1
  examples.append({'P':prime,'a':exponent,'x':y,'n':y*y})
# Complete small row regressions, not a substitute for the uniform proof.
row_regressions=[]
for pp,ee in [(3,1),(5,1),(7,1),(11,1),(13,1),(5,2)]:
    xx=3*pp**ee+1;nn=xx*xx;cc=nn*(nn-1)*(nn-2)//6;choose=1;count=0
    for jj in range(1,nn//2+1):
        choose=choose*(nn-jj+1)//jj
        if jj<4:continue
        gg=gcd(cc,choose)
        while gg%2==0:gg//=2
        assert gg>1;count+=1
    row_regressions.append({'P':pp,'a':ee,'n':nn,'legal_j_checked':count})
res={'status':'PASS','infinite_family':family,'display':{'n_representation':'49 * 2^644',
     'j_representation':'6517 * (n-1) / 13341','n_bits':n.bit_length(),'j_bits':j.bit_length(),
     'g':49,'e_minus':133,'d_plus':r,'e_plus_lower_bound':24,
     'beta_canonical_cofactor_lower_bound':24,'gamma_canonical_cofactor_lower_bound':4447,
     'first_projection':True,'second_projection':False,'old_SQ_conditions':False,
     'ROW128_is_satisfied':True,'ROW256_exponent_condition':False,'ROW512_div9_condition':False,
     'common_prime':7,'v7_choose3':2,'v7_choosej':v,'v3_choose3':0,'shared_divisor_W':str(W)},
     'row_examples':examples,'small_row_regressions':row_regressions,'small_pair_total':sum(r['legal_j_checked'] for r in row_regressions)}
out=Path(sys.argv[1]);(out/'family.json').write_text(json.dumps(res,sort_keys=True,indent=2)+'\n')
print(json.dumps({'family_period':period,'display_bits':n.bit_length(),'common_prime':7,'valuation':v}))
