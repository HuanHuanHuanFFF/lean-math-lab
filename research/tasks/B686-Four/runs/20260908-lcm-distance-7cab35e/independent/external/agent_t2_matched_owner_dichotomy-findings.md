# Erdős 686 supplied-owner matched residual dichotomy

## Status

This checkpoint is a complete theorem about any **supplied** exact common
owner modulus.  It is not a full solution of Erdős 686 and does not assert
that every remaining equation has such an owner.

The equation-facing Lean surface is
`suppliedOwner_matched_residual_dichotomy` in
`ErdosProblems/Erdos686MatchedOwnerDichotomy.lean`.  The modulus `q` is
arbitrary and positive; a prime-power caller may set `q=p^e` without changing
the proof.  The direct Lean check prints exactly
`[propext, Classical.choice, Quot.sound]` for the final theorem.

## Exact statement banked

Assume `k>=16`, `d>=k`, `i,j in [1,k]`, `q>0`, the quotient-four block
equation, and exact matched factorizations

```text
n+i       = a*q,
n+d+j     = (a+b)*q.
```

Let

```text
L_t = (-1)^(t-1) (t-1)! (k-t)!,
D   = L_j(a+b) - 4 L_i a.
```

The sharp centered window first gives the quantified estimate

```text
1218443*k*b < 3707904*a,
```

so in particular `0<b<a`.  The matched square lift gives `q | D`.

If `D!=0`, exact absolute-value control gives

```text
1218443*k*d
  < 3707904*a^2*(C_j+2*C_i),
C_t=(t-1)!*(k-t)!.
```

If `D=0`, put

```text
g = gcd(4*C_i,C_j),  A=4*C_i/g,  B=C_j/g.
```

Lean constructs positive `w` and `Z=w*q` such that

```text
a=B*w,  a+b=A*w,  0<B<A<2B,
n+i=B*Z,  n+d+j=A*Z.
```

Writing `E_t` for the signed linear coefficient of the local cofactor, define

```text
c2 = A^2*E_j - 4*B^2*E_i.
```

The local second-order expansion proves `Z | c2`.  Strict decrease of the
exact harmonic owner slope proves `c2!=0` uniformly under `B<A<2B`; hence

```text
Z <= |c2|,
d <= (A-B)*|c2| + k-1.
```

The `c2!=0` theorem has no hidden center exception.  At an odd central owner,
the formal zero has normalized ratio `(A,B)=(4,1)`, which violates `A<2B`.

## Exact reproduction

```sh
lake env lean ErdosProblems/Erdos686MatchedOwnerDichotomy.lean
python3 -m unittest compute/campaign686/agent_t2_matched_owner_dichotomy/test_matched_owner_dichotomy_verify.py
python3 compute/campaign686/agent_t2_matched_owner_dichotomy/matched_owner_dichotomy_verify.py --max-k 300
```

The test suite passes four tests.  The full exact verifier checks strict
harmonic monotonicity and all `36,102` normalized signed candidates for
`16<=k<=300`; every candidate has `c2!=0`.  This enumeration is reproduction
only.  Uniform nonvanishing is proved symbolically in Lean.

Named exact fixtures include:

- both row-22 narrow pairs `(i,j)=(9,7),(14,16)`, with
  `(A,B)=(16,15)` and `c2=104810845224960000`;
- the exact row-22 factorization
  `d=2^9*3^12*5*7^2*11` and lower factor
  `n+19=49*230091142213`, with no upper landing for that prime;
- row 984's `n+17=439*7237`, where `7237>d+k-1` and has no upper landing;
- the boundary `q=k=17`, where a block of diameter `k-1` still has a unique
  owner;
- the genuine `d=1` telescopes `(k,n)=(6,1),(9,2),(15,4)`, including both
  mandatory odd rows, all of which lie outside `d>=k`.

The row-22 and row-984 fixtures are explicitly checked not to be equations.

## Exact remaining gap

To turn this checkpoint into a uniform row theorem, one still needs a proper
owner-supply or accumulation theorem.  One sufficient quantified form is:

> For every quotient-four solution with `k>=16` and `d>=k`, there exist
> `i,j,q,a,b` satisfying the displayed exact matched factorizations and such
> that the resulting nonzero-arm bound or fixed zero-arm bound contradicts
> the same solution's parameters.

The current theorem proves the dichotomy after those witnesses are supplied;
it does not prove the quantified supply statement.  Reusing the nonzero
bound independently on many graph edges is not enough by itself, because the
same lower term can be charged by multiple incident edges and degree-two
cycles remain scale-neutral.
