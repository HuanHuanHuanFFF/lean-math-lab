# Single-residue capacity theorem for the 486 signature architecture

Status: paper proof newly derived in this session; not Lean-checked and no claim of priority.
Purpose: decide whether keeping the prime-signature architecture of the supplied 486 construction and replacing its many residues by distinct single-residue moduli can give a B25 counterexample. The result excludes the whole infinite family described below, not just a finite experiment.

## General counting lemma
Let p_1,...,p_k be distinct primes. For 1 <= r <= k define

    E_r(p) = sum_{S subset {1,...,k}, |S|=r} 1/product_{i in S} p_i.

For every real X >= 1, the number of positive integers q <= X divisible by at least r of these primes is at most X E_r(p).

Proof. Every such q is divisible by the product of some r-element subset S. The union bound, including overlaps, gives

    #q <= sum_{|S|=r} floor(X/product_{i in S}p_i) <= X E_r(p).

There is no additive +1 per subset: we counted multiples starting at zero over [1,X], not translated intervals.

If a collection of these q lies in [alpha Q,beta Q], alpha>0, then

    sum_q 1/q <= (beta/alpha) E_r(p).

If each such q forbids one residue and an integer window lies in [gamma Q,delta Q], gamma>0, with its diameter < alpha Q, then every q hits at most one integer in the window. Consequently

    #deleted <= beta Q E_r(p),
    sum_{deleted x in window}1/x <= (beta/gamma) E_r(p).

For a window whose endpoints are all >= beta Q, every congruence is active. For other windows, the bounds remain valid because activation can only remove hits.

## Application to Wang's fixed 486 scale parameters
Use the source parameters

    Q_j = 2^j,
    k_j = 2 floor(sqrt(j)/8),
    4^(k+i) < p_i < 2*4^(k+i),  i=1,...,k,
    19Q/20 <= q <= 21Q/20,
    |{i:p_i divides q}| >= k/2 - sqrt(k).

This last condition is implied by the source's near-median signature condition; we DROP the upper signature-size bound and every nondivisibility constraint, thereby allowing MORE replacement moduli than the original construction.

For j >= 4096, k >= 16. Put r = ceil(k/2-sqrt(k)); then r >= k/4 >= 1. Each p_i > 4^(k+1), so

    E_r <= binom(k,r) 4^(-r(k+1))
        <= 2^k 2^(-2r(k+1))
        <= 2^(-k^2/2+k/2)
        <= 2^(-k^2/4).

Since j>=4096 implies sqrt(j)/8 >= 8, floor(sqrt(j)/8) >= sqrt(j)/16, hence k >= sqrt(j)/8. Thus

    E_r <= 2^(-j/256).

Let D_j be ANY set of distinct replacement moduli in the displayed interval satisfying the lower signature-size condition. No restriction is imposed on their chosen residues. Then

    sum_{q in D_j} 1/q <= (21/19) 2^(-j/256).

Consequently, for ANY selection of scales and ANY choices of singleton residues,

    sum_{j>=4096} sum_{q in D_j}1/q
      <= (21/19) * 2^(-4096/256)/(1-2^(-1/256)) < infinity.

The scale bands are disjoint; even without disjointness, the sum with multiplicity is an upper bound. Adding finitely many earlier scales does not alter summability.

## Infinite-system conclusion
For every singleton system built from these allowed moduli, the activated survivor set has a NATURAL density. Here is the complete elementary tail argument, not an appeal to an unspecified theorem.

Normalize the residue for q to 0<=a_q<q. Its active deleted progression is

    B_q = {a_q+tq:t=1,2,...}.

For X>=1,

    # (B_q intersect [1,X]) <= floor(X/q) <= X/q.

If S_m is a finite-head survivor set and S the full survivor set, then

    0 <= (#S_m[1,X]-#S[1,X])/X <= sum_{q outside head}1/q.

Each S_m is eventually periodic, hence has a natural density d_m; the decreasing d_m converge to d. The right-hand side tends to zero with the head. Taking liminf/limsup and then increasing the head proves d(S)=d. Partial summation gives logarithmic density d as well.

This proves convergence for the ENTIRE signature-preserving singleton-compression family, with arbitrary infinite choices and arbitrary residues. It does NOT prove B25 for arbitrary moduli, and it does not challenge the multiple-residue 486 construction.

## Local deletion budget and multiplicity needed to escape
The source window [11Q/10,19Q/10] has diameter 4Q/5 < 19Q/20, and lies above every modulus in the scale band. Therefore

    harmonic mass deleted in this window <= (21/22) E_r(p).

A target of at least 3Q/8 deleted points, as in the source, would require

    max residues per modulus >= (5/14)/E_r(p)

if the same signature family and modulus band are retained. Indeed, R residues per modulus hit at most R points per modulus in this window. This lower bound applies even after allowing ALL admissible replacement moduli.

A sharper finite bound, useful for exact checks, follows from p_i>4^(k+i):

    E_r(p) <= binom(k,r) * 4^(-r*k-r*(r+1)/2).

## Failure boundary
The theorem does NOT rule out replacement moduli lacking the prescribed prime signatures, different prime growth rates, multi-scale coding that changes the architecture, or a different counterexample. It shows that a signature-preserving conversion is not merely missing a matching argument: its total reciprocal capacity is summable, forcing convergence.

## Stronger certified total late-scale budget
The more precise prime-growth bound yields a useful uniform numerical certificate:

    sum_{j>=4096} sum_{q in D_j}1/q < 2^(-126).

Here is a finite-plus-analytic verification, with no prime computation. Put k=2h. The scales with this k have j in [64h^2,64(h+1)^2-1], exactly 128h+64 scales. For h=8,9,10,11 use the sharp E_r bound above, with r=h-floor(sqrt(2h)). For h>=12 use E_r<=2^(-h^2). The ratio of consecutive terms T_h=(128h+64)2^(-h^2) is

    T_(h+1)/T_h = ((2h+3)/(2h+1))*2^(-2h-1) < 1/2,

so their tail is at most 3200*2^(-144). Exact rational arithmetic verifies

    (21/19) * [sum_{h=8}^{11}(128h+64)binom(2h,r)
                          *2^(-4hr-r(r+1)) + 3200*2^(-144)] < 2^(-126).

The program experiments/verify_capacity_and_tower.py checks this last rational comparison and records the exact bound. This is a certificate for the displayed analytic argument, not a scan of actual huge moduli. Earlier scales are finite and deliberately outside this late-scale bound.


## Strengthening: ALL potentially active smaller moduli are excluded too
The restriction q approximately Q is unnecessary if the original rare prime-signature condition is retained. This strengthening was derived after the band argument.

For any X>=1, the same union bound, now with harmonic weights on multiples, gives

    sum_{q<=X, q divisible by at least r of the p_i}1/q
      <= sum_{|S|=r} (1/P_S) H_floor(X/P_S)
      <= E_r(p) H_floor(X).

Here P_S=product_{i in S}p_i, and empty multiple ranges contribute zero. Thus for Q_j=2^j and ANY distinct moduli satisfying the original lower signature-size condition and merely q<=2Q_j,

    sum_q 1/q <= E_r(p) [1+(j+1)log 2].

The sum over ALL j>=4096 is finite, since E_r<=2^(-j/256). Hence arbitrary singleton systems drawn from these enlarged families still have NATURAL density. In particular, replacing the original moduli by substantially smaller signature-preserving moduli does not escape the obstruction. All moduli capable of deleting a point of the original window [11Q/10,19Q/10] are below 2Q and are included.

There is also a certified stronger late-scale bound:

    sum_{j>=4096} sum_{q<=2Q_j, allowed signature}1/q < 2^(-114).

Group k=2h as above and use j+1<=64(h+1)^2 and log 2<1. For h=8,...,11 use the sharp E_r; for h>=12 use the quadratic bound and twice the first term of the rapidly decreasing series. The resulting exact rational upper bound is

    sum_{h=8}^{11}64(2h+1)[1+64(h+1)^2] E_r(2h)
       + 3200[1+64*13^2]2^(-144),

which experiments/verify_capacity_and_tower.py checks to be <2^(-114). For the tail, the ratio of consecutive terms is

    ((2h+3)/(2h+1)) * ((1+64(h+2)^2)/(1+64(h+1)^2)) * 2^(-2h-1) < 1/2

for h>=12, justifying the geometric majorant.

Finally, without a lower modulus bound, every row hits at most (4Q/5)/q+1 window points. Therefore all such allowed singleton rows together delete at most

    (4Q/5) E_r H_floor(2Q) + 2Q E_r = o(Q)

points in the original window. Their deleted harmonic mass is at most

    E_r[(8/11)H_floor(2Q)+20/11] = o(1).

This is a purely local capacity failure in addition to the global reciprocal-summability obstruction. Altering the required prime signatures, their size, or their growth is still outside the theorem.
