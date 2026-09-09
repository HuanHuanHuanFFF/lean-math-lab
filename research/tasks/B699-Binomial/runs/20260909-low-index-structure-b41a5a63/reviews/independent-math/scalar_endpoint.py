import json, math
from pathlib import Path
n,i,j,p,r,s = 162,3,81,3,1,2
C = math.comb(n,i)
e = 0
v = C
while v % p == 0:
    e += 1
    v //= p
Q = p ** (e+1)
a,b,c = n%Q,j%Q,(n-j)%Q
Z = math.prod(math.comb(j,h)*math.comb(n-j,h) for h in range(1,s+1)) * math.prod(math.comb(n-i+h,h) for h in range(1,i-r))
result = {'scope':'one fixed scalar endpoint example; not an original-domain scan','n':n,'i':i,'j':j,'p':p,'e':e,'Q':Q,'a':a,'b':b,'c':c,'lambda':2*s-r,'first_choose':C,'p_avoids_second':math.comb(n,j)%p != 0,'full_Q_localizes':all(x%Q == 0 for x in (n-a,j-b,n-j-c)),'full_weighted_power_divides_Z':Z%(p**(e*(2*s-r))) == 0}
assert e == 3 and Q == 81 and a == b+c and result['p_avoids_second'] and result['full_Q_localizes'] and result['full_weighted_power_divides_Z']
output=Path('research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/reviews/independent-math/scalar-endpoint.json')
output.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result))