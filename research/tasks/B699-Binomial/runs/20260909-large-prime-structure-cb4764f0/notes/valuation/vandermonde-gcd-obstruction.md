# Vandermonde gcd: exact high-prime formula and its limitation

Paper derivation by valuation-transfer, written after the 18:07 UTC route exchange on 2026-09-08. Source baseline and deadline are unchanged from `zero-gap-memo.md`. No computation or Lean run was performed by this worker. This memo records a method obstruction, not new target coverage.

Let `i>=2`, `j>i`, `k>=j`, `n=j+k`, and

`T_r=C(j,r) C(k,i-r)` for integers `0<=r<=i`,

`G_i(j,k)=gcd(T_0,...,T_i)`.

The multinomial identity is

`C(n,i) C(i,r) C(n-i,j-r) = C(n,j) T_r`.

Thus the actual avoiding part D from `zero-gap-memo.md` divides every T_r and hence G. For prime i, every interior r also contains the extra p=i factor from C(i,r); the endpoint r=0,i does not.

## Exact formula

Fix a prime p>=i. Let `b=j mod p`, `c=k mod p`.

- If b+c>=i, then `v_p(G)=0`.
- If b+c<i, then b,c<i, and `j-b,k-c>0`. Put `E=v_p(j-b)`, `F=v_p(k-c)`. Then

`v_p(G)=min(E,F)-delta`, where `delta=1` if p=i and delta=0 otherwise.

The subtraction is nonnegative, because E,F>=1. These are full integer valuations.

For p>i, all denominator factorials in every T_r are prime to p. Therefore

`v_p(T_r)=E*1[r>b] + F*1[i-r>c]`,

when b,c<i; if b>=i or c>=i the corresponding indicator is always zero. If b+c>=i, choose an r with `r<=b` and `i-r<=c` to get zero. If b+c<i, every r activates at least one indicator, while the endpoints realize F and E. The minimum is min(E,F).

For p=i, endpoints have valuations E-1 and F-1 because i! contains exactly one p. Interior factorials are prime to p. If b+c>=p, the interval `[p-c,b]` contains an interior integer r, giving valuation zero. If b+c<p, every interior term has valuation at least min(E,F), so the minimum over all terms is min(E,F)-1 at an endpoint.

## What is gained, and what is not

For a prime p>=i actually dividing C(n,i), with `e=v_p(C(n,i))>0`, the requirement `e<=v_p(G)` says exactly that

`b+c=a=n mod p < i` and `p^(e+delta)` divides both `j-b` and `k-c`.

Equivalently, the actual full-Q localization holds with `r=b`, `s=c`, and `r+s=a<i`. If b+c<i, then `n-a=(j-b)+(k-c)`, so its valuation is at least min(E,F); the inequality above forces equality at the required exponent. No larger-power condition beyond this exact Q is introduced.

Thus G improves mere endpoint divisibility when endpoints allow a residue wrap, but it is equivalent to the full-Q low-residue packet already available. It does not capture carries at higher powers. Example: `(n,i,j,k,p)=(12,2,6,6,3)` has Q=3, a=r=s=0, and `G=gcd(15,36,15)=3`; nevertheless 3 divides C(12,6)=924 because a higher base-3 digit carries.

The endpoint-only wrap can already be seen for one prime at `(n,i,j,k,p)=(16,4,8,8,5)`: 5 divides C(16,4)=1820 and both endpoint terms C(8,4)=70; the middle term C(8,2)^2=784 is prime to 5. Here b=c=3 and b+c=6>=i. This is a counterexample to that helper inference, not to the original target (5 is actually common).

A finer boundary observation: an endpoint wrap with a candidate full Q is possible only for p>i with e=1 and p<=2i-2. For e>=2, or p=i with the extra numerator exponent, Q>=2i-1 and two residues below i cannot wrap. Thus this additional gcd observation has especially narrow independent content.

## Decision

Do not allocate substantial formalization or a new enumeration to G merely to increase lemma count. Its exact formula identifies the same unresolved structural barrier as the existing low-Q packet. Revisit only if a genuinely smaller uniform bound for this gcd is found, or a linear combination of Vandermonde terms yields an arithmetic obstruction not implied by the formula. The next route uses the adjusted rough LCM bound for d>i, recorded separately, rather than claiming that this gcd alone solves the remaining region.
