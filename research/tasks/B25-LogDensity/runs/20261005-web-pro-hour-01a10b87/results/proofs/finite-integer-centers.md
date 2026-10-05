# Unconditional logarithmic density for finitely many integer centers

Status: paper proof supplied in this session, not Lean-checked. The zero-center core is the classical set-of-multiples phenomenon, not a claimed new theorem. The finite-center extension below is derived explicitly here; literature priority was not established.

## Positive theorem and exact scope
Let C be a FIXED finite subset of Z. Suppose each row admits c_i in C with a_i congruent to c_i modulo n_i. There is no reciprocal-summability assumption and no gcd restriction. Then the activated survivor set has logarithmic density, equal to the decreasing limit of finite-head survivor densities.

The theorem does NOT cover general residues whose required set of integer centers is infinite. In particular, choosing the normalized representative 0<=a_i<n_i does not create a fixed finite center set.

## Lemma 1: a harmonic inequality for sets of multiples
For a finite family B of positive integers, write M(B)={x>=1: b divides x for some b in B}, and let delta(B) be its natural periodic density. For every integer N>=1,

    sum_{x<=N,x in M(B)}1/x <= delta(B) H_N.

Proof. Discard b>N on the left, which cannot increase the desired upper bound on the right. Use the finitely many primes p<=N. Let V_p be independent geometric random variables with

    P(V_p=e)=(1-1/p)p^(-e),  e>=0,

and let Z=product p^(V_p). The event A={some b in B, b<=N, divides Z} is increasing in the coordinatewise order. The event E={Z<=N} is decreasing. Product-measure association gives P(A intersect E)<=P(A)P(E).

For completeness, association for two bounded increasing functions on a product of chains follows by induction on the number of coordinates. For a single coordinate V and an independent copy V', twice their covariance is E[(f(V)-f(V'))(g(V)-g(V'))]>=0. Conditional covariance and the monotonicity of conditional expectations give the inductive step. Negating a decreasing function gives the increasing/decreasing version. Infinite geometric supports follow by truncation (or bounded convergence); the number of coordinates is finite.

For n<=N, P(Z=n)=c_N/n, where c_N=product_{p<=N}(1-1/p). Thus P(A|E)=H_{M(B)}(N)/H_N. Also P(A) is the Haar probability of the corresponding divisibility conditions, namely delta(B intersect [1,N])<=delta(B), since the geometric valuations have the uniform-integer p-adic divisibility probabilities. This proves the bound. For N=1 the claim is checked directly; no primes are needed.

## Lemma 2: infinite sets of multiples have logarithmic density
For any family B, let B_m be increasing finite heads and delta_*=lim delta(B_m). At a given N, only b<=N can divide an integer up to N, so Lemma 1 gives

    H_{M(B)}(N) <= delta_* H_N.

Fixed heads give the matching logarithmic liminf. Hence M(B) has logarithmic density delta_*, and

    L_{M(B)\M(B_m)}(N) -> delta_*-delta(B_m).

This is a legitimate conditioned-tail statement derived from association, NOT from a possibly divergent reciprocal sum.

## Lemma 3: translation has bounded harmonic error
For fixed c in Z and any E subset of positive integers, translating E by c and discarding nonpositive outputs changes its harmonic sum up to N by at most a constant depending only on |c| (for example 2 H_|c|). This follows by shifting the index and summing the telescoping absolute differences |1/(x+c)-1/x|, together with the finitely many boundary terms. Thus a fixed translation preserves logarithmic density and the logarithmic mass of set differences.

## Proof of the finite-center theorem
Partition the moduli by their selected integer center c. Write B_c for the moduli in that class, and T_c=c+M(B_c), restricted to positive integers. Here delta(B_c) denotes the LIMIT of finite-head periodic densities, equivalently the logarithmic density proved in Lemma 2; it does not assert an unproved natural density for the infinite multiples set. By Lemmas 2 and 3, T_c is a logarithmic-L1 limit of its finite-head translated-multiple sets T_{c,m}; explicitly, the logarithmic density of T_c\T_{c,m} tends to zero as m grows.

Let T=union_{c in C}T_c and T_m=union_{c in C}T_{c,m}. Because C is finite,

    limsup_N L_{T\T_m}(N)
      <= sum_{c in C} [delta(B_c)-delta(B_{c,m})] -> 0.

Each T_m is eventually periodic and has the same density delta_m as the full periodic union of those congruence rows. It follows by squeezing that T has logarithmic density delta_*=lim delta_m.

Let D be the activated deleted union. For every x>max(0,max C), if a row deletes x then x-c_i is a positive multiple of n_i. Therefore D is contained in T outside a fixed finite set. Hence limsup L_D<=delta_*.

On the other hand, D contains each activated finite-head deleted union D_m, which is eventually periodic with density delta_m. Therefore liminf L_D>=delta_* as well. Taking complements proves the theorem for S.

## Edge cases and limitations
- A modulus 1 forces D to contain all positive integers; the conclusion gives density 0 for S.
- For negative centers the activated infinite union and the unactivated translated multiples set can differ at infinitely many points. The proof does NOT declare that difference finite: it uses upper containment and lower finite-head density instead.
- Negative residues and negative centers are allowed. The finite exceptional range in the containment argument is explicit and harmless.
- Moduli may have arbitrary common factors and arbitrarily divergent reciprocal sum.
- The proof handles finitely many center classes, not a number of center classes increasing with N.
- To extend to infinitely many centers, one would need an additional uniform/summable logarithmic tail bound over the center classes. No such bound is asserted.
- Logarithmic density is proved; natural density is NOT asserted for this theorem.
