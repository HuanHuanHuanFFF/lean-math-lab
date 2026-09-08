# Fixed-gap real-root geometry (paper tool)

Provenance: the primary task proposed the real-root classification at the first exchange. The fresh branch supplied the sharper interval bound below, and the primary task checked it. This is a paper argument only; no Lean theorem or original integer exclusion is claimed.

## Interval bound

For every integer k>=2 and real x in [-k,-1],

|P_k(x)| <= (k-1)!/4.

Write x=-j-delta with 1<=j<=k-1 and 0<=delta<=1. Splitting the factors on each side of zero gives

|P_k(x)| = prod_{r=0}^{j-1}(r+delta) * prod_{r=1}^{k-j}(r-delta)
           <= delta*(1-delta)*j!*(k-j)!
           <= (k-1)!/4.

The last step uses delta*(1-delta)<=1/4 and binomial(k,j)>=k. Endpoints are included, where the product vanishes.

## Exact statement for odd k

For every odd integer k>=3 and integer d>=k, F_{k,d}(X)=P_k(X+d)-4P_k(X) has exactly one real root, and that root is strictly positive.

Proof outline, with all domains explicit:

- X<=-d-k: both blocks are nonpositive in odd degree, and |P_k(X+d)|<|P_k(X)|, so F>0.
- -d-k<=X<=-d-1: the shifted block lies in its root interval and has absolute value at most (k-1)!/4. The unshifted block is negative with absolute value at least k!, so F>0.
- -d-1<=X<=-k: the shifted product is nonnegative and the unshifted product is nonpositive. They cannot both vanish, so F>0.
- -k<=X<=-1: P_k(X+d)>=k!, while 4|P_k(X)|<k! by the interval bound. Hence F>0.
- On X>-1 the ratio R(X)=P_k(X+d)/P_k(X) is positive and strictly decreasing: its logarithmic derivative is sum_i(1/(X+d+i)-1/(X+i))<0. Its limits are infinity at -1 from the right and 1 at infinity. Therefore R=4 has one root. At X=0, R(0)>=binomial(2k,k)>=6>4, so this root is positive.

Research boundary: the desired natural-number solution, if present, is exactly this positive real root when it happens to be integral. Real-root uniqueness does not exclude integrality and does not imply rational irreducibility. It provides no new global exclusion. The primary task also observed the even-degree analogue with two real roots; no separate proof engineering was started for it.
