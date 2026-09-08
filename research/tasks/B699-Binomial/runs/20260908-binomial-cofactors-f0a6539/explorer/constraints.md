# B699: exact constraints and a two-cofactor sufficient condition

Status: paper arguments plus bounded independent computation; no Lean theorem in this directory. Original target remains open here. Novelty unconfirmed. Initial shared deadline10:00 was superseded by the user's 05:12 instruction: stop exploration06:10 Asia/Shanghai; this explorer hands off by05:18. Publication/commit/push coordination belongs to the primary task.

## Definitions and source boundary

Let n,i,j be natural numbers with 1<=i<j<=floor(n/2). For a prime p write v_p for the exponent in a positive integer. The target asks for a common prime >=i. The statements below using p>i deliberately avoid the p=i denominator boundary. Kummer's standard carry criterion is exposited in Bergman, https://arxiv.org/html/0806.0607, section4. The original conjecture is in Erdos-Szekeres1978, https://users.renyi.hu/~p_erdos/1978-46.pdf .

For 0<=k<=n, direct factorial valuation gives

v_p(choose(n,k)) = sum_{e>=1} (floor(n/p^e)-floor(k/p^e)-floor((n-k)/p^e))
                 = sum_{e>=1} 1[k mod p^e > n mod p^e].

Each summand is0 or1, and all sufficiently large e give0. The second equality follows by subtracting quotient-remainder expressions for n and k. Therefore p not dividing choose(n,k) forces k mod p^e <= n mod p^e for every e>=1. This supplies the exact low-residue consequence used by the search independently of Lucas's digit implementation.

## Terminal-factor constraint

Suppose 0<=a<i<p, p is prime, e>=1 and P=p^e divides n-a. Since a<p<=P, n mod P=a. If p does not divide choose(n,j), then j mod P<=a.

Also p divides choose(n,i): among the i factors n,n-1,...,n-i+1 precisely n-a is divisible by p, and i! is not divisible by p. In fact v_p(choose(n,i))=v_p(n-a). P need not be the exact prime power in n-a.

Thus a weak-target counterexample necessarily satisfies all these low-residue conditions. They are only necessary; higher digit conditions can still reject a low-residue candidate. The prime p=i is handled separately by the actual valuation/Lucas test.

## Reduced denominator constraint

Set d=gcd(n,j), n=s*d, j=t*d, gcd(s,t)=1. Then 0<t<=s/2. In a counterexample every prime divisor of s is <=i. For if p>i divides s, then v_p(j)<v_p(n). At P=p^(v_p(n)), j mod P>0=n mod P, so p divides choose(n,j), and the a=0 argument also puts p in choose(n,i).

Boundary correction: it is not valid to replace <=i by <i. If i=p is prime and v_p(n)=1, the denominator i! removes that unique p in choose(n,i). If v_p(n)>=2, the same argument forces v_p(j)>=v_p(n) in a counterexample.

Given the terminal-factor assumptions above and p not dividing choose(n,j), put b=j mod P<=a. The identities sj=tn and n=a moduloP imply

P divides a*t-b*s.

If s does not divide a, this integer is nonzero since gcd(s,t)=1. As 0<=b<=a and 0<t<=s/2,

P <= |a*t-b*s| <= a*(s-t).

For s=2,t=1 and odd a, the right-hand side is a<i<p<=P, a contradiction. This is the central-case bridge; exact Schur odd-product applicability is handled by the primary task, not claimed as proved here.

## Two-cofactor sufficient condition

**Proposition (paper proof).** In addition to the target's legal n,i,j, assume

- 0<=a<i and 0<=b<i;
- p,q are primes, p>i and q>i;
- e,f>=1, P=p^e, Q=q^f;
- n-a=u*P and n-b=v*Q, with positive natural u,v;
- gcd(u,v)=1;
- n>u*v*(a+b).

Then p or q divides both choose(n,i) and choose(n,j).

**Proof.** Both p and q divide choose(n,i) by the terminal-factor argument. Suppose neither divides choose(n,j). Divide j by P and Q:

j=r*P+c=s*Q+d0, 0<=c<=a, 0<=d0<=b.

Because a,b<i<j<=n/2, we have j<n-a=uP and j<n-b=vQ. Hence 0<=r<u and 0<=s<v. Multiplying the two displayed expressions by uv and substituting uP=n-a, vQ=n-b yields

n*(v*r-u*s)=u*v*(d0-c)+v*r*a-u*s*b.

The right side lies between -uv(a+b) and uv(a+b): its positive terms are at most uv*b+uv*a, and its negative terms have the same bound. Since uv(a+b)<n, the integer v*r-u*s must be0. Coprimality gives u divides r. Together with0<=r<u this forces r=0, and consequently j=c<=a<i, contradiction. QED.

No distinctness assumption on a,b or p,q is needed. No exact-valuation hypothesis is needed. The arithmetic core only uses positive P,Q, the two factorizations and low-residue assumptions; primality belongs to the binomial bridge.

**Concrete diagnostic consumer.** n=101273250, a=4,b=5, P=50636623, Q=20254649, u=2,v=5. Both P,Q are prime and n>10*(4+5). Consequently all legal pairs with6<=i<Q are covered by p or q. For the tested i=47..49 these two constraints alone disposed of every j. This illustrates a uniform conditional family, not a proof that infinitely many n have that factorization pattern.

**Actual frontier contribution.** The proposition excludes every n,i possessing such a pair of offsets and coprime small cofactors, uniformly over all legal j. It does not bound n or i in the complementary region. Numbers without any such pair, larger/noncoprime cofactors, and cases whose useful primes equal i remain globally unbounded. The finite experiments do not establish that this criterion covers every possible counterexample.

## Boundary diagnostics and novelty

- Removing coprimality is invalid: n=28,i=3,j=14,a=0,b=2,P=7,Q=13,u=4,v=2. The size bound holds, but neither7 nor13 divides choose(28,14).
- Removing the size bound is invalid: n=16,i=2,j=6,a=b=1,P=3,Q=5,u=5,v=3. The cofactors are coprime, but16<=30 and neither3 nor5 divides choose(16,6).
- Allowing p=i with no extra first-binomial divisibility hypothesis is invalid for the named-pair conclusion: n=39,i=3,j=19,a=0,b=1,P=3,Q=19,u=13,v=2. The size and coprime conditions hold, but3 does not divide choose(39,3) and19 does not divide choose(39,19). Other primes satisfy the original conjecture.

These are counterexamples to weakened helper statements, not counterexamples to B699. `valuation_audit.py` directly verifies them.

Primary-provided precedent lead, not audited by this explorer: Casacuberta2019 https://arxiv.org/abs/1906.07652 and Shareshian-Woodroofe2018 on two-prime row covering. In particular a=0,b=1 may already be included in a known criterion. Treat this proposition as an independently reconstructed useful condition; do not claim novelty before checking those sources.
