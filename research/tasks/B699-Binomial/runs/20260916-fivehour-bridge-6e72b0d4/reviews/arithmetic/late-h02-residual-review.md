# Late H02 residual-height review

Reviewer: `/root/arithmetic`. Requested by `/root` as an independent paper check, maximum five minutes. Checked 2026-09-15 22:59:53--23:02 UTC. **Verdict: the identities and all stated bounds are correct**, with the explicit integer step in section 3 and the scope qualifications below. No frozen report, proof, handoff or manifest was changed.

## 1. Exact hypotheses and complete-power split

Assume an actual NC5 input with `6<=j<=floor(n/2)`, and the adopted high-power H02 hypotheses: the maximal complete 2- and 3-powers are at positions 0 and 2, both high, in either ordering. Thus n is even and n modulo 3 is 0 or 2, so gcd(n-1,6)=1. Put k=n-j, g=gcd(n,j), alpha=n/g, beta=j/g.

The native small part of n-1 is s in {1,5}, where s=5 exactly if v5(n-1)=1. If its 5-valuation is larger, its **whole** 5-power stays in q1. Hence `q1=(n-1)/s`. The previously established full-power NC transfer gives q1|j(j-1). Since g*alpha=1 modulo q1, this is equivalent to q1|beta(alpha-beta). Because gcd(beta,alpha-beta)=1, split every complete prime power of q1 into the unique side it divides:

`q1=u*v`, `u|beta`, `v|alpha-beta`, `gcd(u,v)=1`.

Set b=beta/u, c=(alpha-beta)/v and t=bc. All are positive integers. The fundamental identity is `g*(u*b+v*c)-s*u*v=1`.

## 2. Positive residuals and the height identity

Define `U=s*u-g*c`, `V=s*v-g*b`. Direct substitution gives

`v*U=j-1`, `u*V=k-1`.

Because j,k>=6, U,V are positive integers, without needing any additional assumption such as g>=2. Expansion gives

`U*V=g^2*t-s`.

Since b,c<=t and `(U-1)(V-1)>=0`,

`s*alpha=b*U+c*V+2g*t`

`       <=t*(U*V+1)+2g*t`

`       =g^2*t^2+2g*t-(s-1)*t`

`       <=(g*t+1)^2-1`.

In particular `alpha<(g*t+1)^2/s`. These are necessary consequences of NC5 plus its complete first-free-row condition; no sufficiency is claimed.

## 3. First accepted H02 estimate

From `g^5<(625/8)n` and n=g*alpha, divide by g>0 to obtain `g^4<(625/8)alpha`. The preceding height gives

`g^4<(625/8)*(g*t+1)^2/s<81*(g*t+1)^2`,

and therefore `g^2<9(g*t+1)`.

If g>=10t, then `g^2-9gt=g(g-9t)>=10t^2>=10`, contradicting its strict upper bound 9. Thus **g<10t**.

The stated next constant uses integrality: `g<=10t-1`, hence `gt+1<=10t^2-t+1<=10t^2`. It follows that

**`alpha<100*t^4/s`**, **`n<1000*t^5/s`**.

Without recording that integer step, the immediate substitution g<10t alone would leave an unnecessary +1; the proposed result itself is correct.

## 4. Seventh-power estimate

From `g^7<2^22*n`, obtain `g^6<2^22*alpha`. Since gt>=1, `gt+1<=2gt`, and hence

`g^6<2^24*g^2*t^2/s`.

Thus `g^4<2^24*t^2/s<=2^24*t^2`, so **`g^2<2^12*t`**. Substituting this into `alpha<4g^2t^2/s` gives

**`alpha<2^14*t^3/s`**, and therefore **`n^2<2^40*t^7/s^2`**.

All divisions and squarings are legitimate because the variables and s are positive. No special parity or omitted endpoint is needed.

## 5. The smaller integer and its limit

Because `jk=g^2*t*u*v=g^2*t*(n-1)/s`, the integer n'=g^2t satisfies

`n'=s*jk/(n-1)`.

For s=1, use jk<=n^2/4 and n>=12>4 to get

`n'<=n^2/[4(n-1)]<n/3`.

For s=5 the same calculation does not force n'<n. Neither case constructs a compatible j', preserves the normalized exponent templates, or transfers the other complete source windows. A genuinely smaller integer is therefore not yet a descent of actual NC inputs.

## 6. Exact diagnostic replay

An independent short standard-library calculation checked the supplied model:

`n=155648`, `j=65303`, `g=19`, `alpha=8192`, `beta=3437`,

`u=491`, `v=317`, `b=7`, `c=15`, `t=105`, `s=1`.

It gives q1=155647=u*v, U=206, V=184, and both accepted g inequalities hold. The complete maxima are Q2=8192 at n and Q3=9 at n-2. The candidate smaller integer is n'=37905, with `n'/g=1995`. If g is kept unchanged, this candidate quotient contains primes 7 and 19 and is outside all six stated normalized templates. No new gcd is implicitly assigned, since a new j' has not been supplied.

Trial division through floor(sqrt(8647)) confirms that 8647 is prime. Here `n-2=18*8647`, `n mod8647=2`, and `j mod8647=4774`. Thus v_8647(C(n,5))=1 and a carry gives v_8647(C(n,j))=1. The r=2 window fails NC; this is an actual common prime, not an NC counterexample.

The diagnostic refutes sufficiency of the weak q1-plus-g-bounds model for the proposed unchanged-g return map. It does not refute every possible descent and does not count as an original-problem counterexample.

## 7. Accepted and unaccepted scope

For each fixed positive integer t, the displayed bounds give an effective finite height for every actual high-power H02 NC5 input having that residual t. **t remains unbounded**, and no finite endpoint has been excluded in this review. Consequently the result is a new necessary residual-height interface, not a full H02 theorem. The only external mathematical inputs used here are the two previously accepted H02 g estimates and the already adopted complete-power NC source transfer.
