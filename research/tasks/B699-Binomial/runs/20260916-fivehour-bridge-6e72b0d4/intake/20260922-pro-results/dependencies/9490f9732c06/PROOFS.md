# PROOFS · B699 D / i=3 · Round 3 · NSB64

## 0. Statement, dependency boundary, and the original input

All arithmetic in this document is exact. The main proof is a uniform inequality
argument; it has no finite-n scan as a terminal proof.

The adopted branch is the SAME original NC3 input in the canonical minimal
critical two-base branch

`g=lambda=w=1, b=2r, xi=2mu`, with the previously adopted exit giving `mu=1`.

The original source notation is `P=p^a, Q=q^r`; p and q are distinct odd primes,
and these are complete source powers. The lower bound `Q>=11` is a bound on the
integer Q, not a claim that its base q is at least 11. The original witness
threshold in this document is q>=3.

From the frozen Overview and rounds 1–2 we adopt the explicit integer system

```
h odd, h>=15, Q>=11,
0<v<Q, 3v>Q, Delta=Q-v>=17,
P=Q+hv,
2nu=h(Q-v)-Q, nu>0,
v nu^2=PQ^2-1,
n=PQnu+2,
E=P+nu, F=Q^2+vnu,
j=EQ^2, k=FP, j+k=n, EF=n-1.
```

The orientation is the original one: in this corridor `k>j`. Indeed
`k-j=nu(Pv-Q^2)` and, for x=v/Q>1/3,
`Pv/Q^2=x+h x^2>1/3+15/9=2`. If an upstream source labels the endpoints as sigma
and tau, these formulas identify sigma with the original smaller j; they do not
replace the input by a different n or construct a descending pair.

The old bridge into this system is adopted at its stated author-paper level.
This round is not an independent audit of the old Thue, class-group, or low-ratio
exit. The uniform theorem below can also be read as a standalone sufficient
consumer under the explicitly listed equalities, the legality of n,j, and the
qualification of q as a prime dividing C(n,3). It does NOT require reversing the
necessary system into an equivalence with NC3.

### Theorem NSB64

Define, using a new local parameter A rather than any old coefficient named A,

```
m=floor(sqrt(h)),  A=h-m^2+1.
```

If `m>=64 A^2`, then the SAME original prime q divides C(n,j). Since q is an
active source for C(n,3), this proves Common3(n,j) and rules out that condition
inside the adopted NC3 branch.

Consequently all remaining inputs in that branch satisfy

**`floor(sqrt(h)) < 64 (h-floor(sqrt(h))^2+1)^2`.**

This excludes an unbounded, variable-width region above squares. It does not
bound h, D_cyc, n, q, or r absolutely, and it does not cover general two-base or
multi-slot NC3.

## 1. A size gate and exact normalized coordinates

In this proof only, z=nu/Q is a new local normalized real coordinate; it is NOT
the inherited integer residual also called z in earlier i3 reports. Set x=v/Q.
The norm gives

`z^2=h+(Q^3-1)/(vQ^2)`.

Since v is an integer and v<=Q-1, while v>Q/3,

```
h+1+1/Q+1/Q^2 <= z^2 < h+3.                         (1)
```

Also `h Delta=2nu+Q`. For h>=15,

`2 sqrt(h+3)+1 < 3 sqrt(h)`:

one may bound `2sqrt(h+3)<(5/2)sqrt(h)` (valid for h>16/3) and
`1<(1/2)sqrt(h)` (valid for h>4). Therefore

`h Delta <3Q sqrt(h)`, hence **`h Delta^2<9Q^2`**.

As Delta>=17, this yields

**`h<Q^2<Q^3`.**                                            (2)

In particular, the condition Q^3>h used in earlier special high-layer families
is automatic on the present corridor; it need not be imposed as a new restriction.

A second, nonessential size observation is n<P^3. From x>1/3,
`P/Q>1+h/3`, and `(1+h/3)^2>h+3` for h>6. Thus nu<P and Q<P.
Their integrality gives `n=PQnu+2<=P(P-1)^2+2<P^3`.
This is a relative size gate, not an absolute bound.

The linear relation says `P=hQ-2nu`; hence exactly

```
j/Q^3=h-z,
n/Q^3=h z-2z^2+2/Q^3.                                  (3)
```

The normalized norm equation is

```
f_h(z)=(z^2-h)(h-2z-1)-h=-h/Q^3.                       (4)
```

These are algebraic rewrites of the original input. The symbolic checker also
verifies that, before imposing the norm, the sum and first-window discrepancies
are exactly `-2(vnu^2-PQ^2+1)` and `-(vnu^2-PQ^2+1)` respectively. Thus the
coordinate equations are not counted as independent new constraints.

## 2. A uniform phase estimate, including its error bound

Assume now `m>=64 A^2`. Since `h=m^2+A-1` and h is odd, A and m have the same
parity. In particular m>=64 and A>=1. By (1),

```
m<z<m+1,
0<z-m<(A+2)/(2m)<1/4.                                  (5)
```

For the last inequality, use m>=64A^2. Moreover Q>sqrt(h)>=m by (2).

Define rational expressions

```
z1=m+A/(2m)+1/m^2+(20-A^2)/(8m^3),
B0=m^3-2m^2+(3A/2-1)m-2A+1,
c1=(3A^2-4A-12)/8,
N=h z-2z^2+2/Q^3.
```

We prove the uniform estimate

**`|N-B0-c1/m| <32 A/m^2`.**                              (6)

### 2.1 Derivative and root comparison

On m<=y<=m+1,

```
f_h'(y)=2h(y+1)-6y^2-2y
       >=2m^3-4m^2-14m-8
       >(3/2)m^3.
```

The last strict inequality follows on writing m=64+u, u>=0:

```
(1/2)m^3-4m^2-14m-8
=113784+5618u+92u^2+(1/2)u^3>0.
```

The elementary expression for z1 also lies strictly between m and m+1. For its
lower bound, `A/(2m)>A^2/(8m^3)`; for its upper bound,
`z1-m<=A/(2m)+1/m^2+20/(8m^3)<1` on the stated domain.

### 2.2 Exact residuals and universal majorants

There is no floating approximation in z1. Expanding (4) at z1 gives

`f_h(z1)=(1/256) sum_{j=1}^9 R_j(A)/m^j`, where

| j | R_j(A) |
|---|---|
| 1 | 512A-3584 |
| 2 | -32A^3+896A-2816 |
| 3 | 64A^3+256A^2-3072A-1536 |
| 4 | -28A^4+64A^3+480A^2-1024A-6592 |
| 5 | 24A^4-64A^3+128A^2+512A-12160 |
| 6 | 4A^5-8A^4+32A^3+320A^2-2240A-3712 |
| 7 | -12A^5+480A^3+192A^2-4800A-3840 |
| 8 | -24A^4+960A^2-9600 |
| 9 | A^6-60A^4+1200A^2-8000 |

Similarly,

`h z1-2z1^2-B0-c1/m=(1/32)sum_{j=2}^6 T_j(A)/m^j`, where

| j | T_j(A) |
|---|---|
| 2 | 32A-352 |
| 3 | -4A^3+4A^2+16A-80 |
| 4 | 8A^3-160A-64 |
| 5 | 16A^2-320 |
| 6 | -A^4+40A^2-400 |

Here is a direct rule for checking every term over the infinite domain. To bound
a term `c A^i/m^j` relative to `A^alpha/m^beta`, put d=j-beta. If d>=0 and
`i-alpha<=2d`, then, because A>=1 and m>=64A^2,

`|c| A^(i-alpha)/m^d <= |c|/64^d`.

Every displayed residual term meets that criterion. Summing these rational
majorants gives, respectively,

```
|f_h(z1)|/(A/m)
 <=1169735450043169325/72057594037927936 <17,

|h z1-2z1^2-B0-c1/m|/(A/m^2)
 <=6470686137/536870912 <13.
```

The complete coefficient ledger and each exponent check are in
`certificates/universal_bounds.json`; one implementation rebuilds the symbolic
identities and a separate standard-library implementation checks the rational
majorants. This is a universal coefficient proof, not a parameter sample.

Since `h/Q^3<1/Q<1/m<=A/m`, equation (4) and the derivative lower bound imply

`|z-z1|<12 A/m^4`.

On the same interval, `0<(h y-2y^2)'=h-4y<h<(65/64)m^2`. Together with Q>m,

```
|N-(h z1-2z1^2)|
 <(12*65/64) A/m^2+2/m^3
 <=(782/64) A/m^2 <13 A/m^2.
```

Combining the two error bounds proves (6), even with 26 instead of 32. The
constant 32 is retained for a simpler downstream statement.

## 3. Every parity case forces a native carry

Write `{x}=x-floor(x)`. Equation (5) and h,m integers give

**`{j/Q^3}=1-(z-m)>3/4`.**                                (7)

The n-side phase requires three cases. These cases exhaust all odd h because
A and m have the same parity.

### 3.1 m odd, hence A odd

B0 is a half-integer. Since

```
|c1| <=(3A^2+4A+12)/8 <=19A^2/8,
|N-B0| <19/512+1/128=23/512<1/4,
```

we have `1/4<{n/Q^3}<3/4`. Combining with (7) proves

`{j/Q^3}>{n/Q^3}`.

### 3.2 m even, A even and A>=4

Here B0 is an integer. The coefficient satisfies

`A^2/8<c1<3A^2/8`.

Also `m>=64A^2>=512/A`, so

`32A/m^2 <= A^2/(16m)`.

By (6),

`0<A^2/(16m)<N-B0<7A^2/(16m)<=7/1024<1/4`.

Thus `0<{n/Q^3}<1/4`, and (7) again forces the carry.

### 3.3 m even, A=2: a cancellation that must not be discarded

In this case h=m^2+1, m>=256, c1=-1, and B0 is an integer. From (6),

`B0-5/(4m)<N<B0-3/(4m)`,

so **`floor(N)=B0-1`**. Both relevant fractional parts are near 1; the coarse
comparison used above is insufficient. We retain one more exact correction:

```
z2=m+1/m+1/m^2+2/m^3+5/m^4.
```

As before z2 lies in (m,m+1). Its exact residual is negative:

```
f_h(z2)=-R(m)/m^12,
R(m)=25m^10+14m^9+66m^8+82m^7+151m^6
     +246m^5+174m^4+286m^3+270m^2+300m+250.
```

For m>=64, termwise domination gives

`0<R(m)/m^12<30/m^2`.

The exact rational majorant is
`14547093913178772989/576460752303423488<30` after normalizing by 1/m^2.
Since f_h(z)=-h/Q^3<0 and f_h'>(3/2)m^3, the one-sided comparison gives

`z<z2+20/m^5`.

Define `G(y)=B0+m-y-(h y-2y^2)`. Its derivative is negative on (m,m+1), with
absolute value less than h+1. An exact identity is

```
G(z2)=3/m^2+20/m^3+28/m^5+28/m^6+40/m^7+50/m^8 >3/m^2.
```

If z<=z2, monotonicity only improves the lower bound. Otherwise the preceding
root estimate costs less than `20(h+1)/m^5<21/m^3`. The original extra term
2/Q^3 costs less than 2/m^3. Therefore

```
{j/Q^3}-{n/Q^3}
=B0+m-z-N
>3/m^2-23/m^3>0.
```

This settles the exceptional cancellation case uniformly. No h or Q table was
used to dispose of it.

## 4. Return to the original prime and binomial coefficients

For every case above,

`j mod Q^3 > n mod Q^3`, with `Q^3=q^(3r)`.

For completeness, the elementary return does not require treating Q as prime.
Legendre's formula follows by counting multiples of q,q^2,... in a factorial:

```
v_q(C(n,j))=sum_{e>=1}
 (floor(n/q^e)-floor(j/q^e)-floor((n-j)/q^e)).
```

Each summand is 0 or 1. If `j mod q^e>n mod q^e`, the e-th summand is 1. The
summand at **e=3r** is therefore 1, so q divides C(n,j).

The prime q is the same active prime in the original second window. For q>3,
q|(n-2) directly implies q|C(n,3). If q=3 is retained in the original coarse
block, its original exponent is at least 2 because a lone 3 was stripped; then
`v_3(C(n,3))=v_3(n-2)-1>=1`. The source threshold q>=3, its complete power, and
the SAME original n,j are all preserved.

The classical carry formulation is independently corroborated by Andrew
Granville's author-hosted article, `Introduction`, in *Arithmetic Properties of
Binomial Coefficients I*. No external effective-height or CAS theorem is used in
this new argument; the direct factorial proof above supplies the return.

## 5. What has and has not been reduced

Inside the adopted minimal branch, the condition

`m>=64 A^2, A=h-m^2+1, m=floor(sqrt(h))`

has been excluded without any upper bound on the remaining parameters. For
example, all odd m>=577 with h=m^2+2 satisfy the gate, as do all even m>=256 with
h=m^2+1. These are parameter-family statements, not claims that actual NC3
examples exist in the excluded domain.

Both parameters can vary: take any odd A>=1 and m=64A^2+1, then
`h=m^2+A-1` is odd and satisfies the gate. Taking A=8u+3 also leaves h congruent
to 3 modulo 8, so the theorem is not confined to h classes already removed by
the pure `n=2^(6t)` mod-8 exit. The known old `odd-square+4` family remains valid;
its overlap is not counted as a separate new theorem.

Equivalently the remaining square distance obeys

`h-floor(sqrt(h))^2+1 > sqrt(floor(sqrt(h)))/8`.

This is a new necessary gap, NOT a global height bound. It can be inserted as a
cheap exact gate into the fixed-D_cyc recovery algorithm, but D_cyc itself still
ranges without an established absolute bound. No remaining branch is claimed to
have become a globally finite list.

The current proof is conditional on the explicit frozen bridge into the minimal
branch. It is a new uniform author-paper proof plus exact certificates, not Lean,
not external review, and not a full historical net-difference audit.
