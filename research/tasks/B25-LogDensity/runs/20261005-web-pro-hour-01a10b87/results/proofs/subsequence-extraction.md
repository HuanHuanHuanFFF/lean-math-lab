# Head-excess extraction lemma

Status: paper proof derived in this session. No novelty claim, no Lean run. This abstract lemma does not use singleton residues and therefore is NOT itself a solution of B25.

## Definitions
Write B_i={x>=n_i: x congruent to a_i mod n_i}, D=union_i B_i, D_m=union_{i<=m}B_i. Let U_m be the full periodic union of the same m residue classes, and delta_m=d(U_m)=d(D_m). Put delta_*=lim_m delta_m, which exists by monotonicity. For N>=2 write L_E(N)=(sum_{1<=x<=N,x in E}1/x)/log N.

Finite heads give liminf_N L_D(N)>=delta_*. This alone neither proves convergence nor excludes a limiting value larger than delta_*.

## Lemma
If an admissible infinite activated system satisfies

    limsup_N L_D(N) > delta_*,

then a subsystem obtained only by deleting rows has no logarithmic density. In particular, a universal existence theorem for this class is equivalent to the stronger universal assertion that every system has logarithmic deleted density exactly delta_*.

## Proof with quantitative separation
Choose eta>0 such that limsup L_D > delta_*+6 eta. Choose a finite base head F_0 with periodic deleted density delta_0 > delta_*-eta. It will always be retained.

Inductively, assume all decisions through some finite modulus threshold have been made, with finitely many retained rows F_{t-1}. Choose a recovery point R_t, exceeding the previous low point and all retained moduli, large enough that

    L_{D(F_{t-1})}(R_t) <= delta_*+eta.

This is possible because D(F_{t-1}) is eventually periodic, with density at most delta_*. Permanently omit every undecided row with n_i<=R_t. Let O_t be the (finite) collection of all omitted rows so far.

The set D(O_t)\D(F_0) is eventually periodic, and its density is

    d(U(O_t) union U(F_0)) - delta_0 <= delta_*-delta_0 < eta.

Indeed, that finite union uses only rows of the original system. Hence, for all sufficiently large Y,

    L_{D(O_t)\D(F_0)}(Y) <= 2 eta.

Choose Y_t>R_t among the infinitely many original-system high points satisfying

    L_D(Y_t) >= delta_*+6 eta,

and large enough for the preceding omitted-row estimate. Retain ALL original rows with R_t<n_i<=Y_t. This is a finite addition. Repeat, with R_{t+1}>Y_t.

Let D' be the final retained union. All rows added after recovery point R_t have modulus >R_t, so they are inactive on [1,R_t]. Thus

    L_{D'}(R_t) <= delta_*+eta.

At Y_t every original active row has n_i<=Y_t. Such a row is either retained or belongs to O_t. Because F_0 is retained,

    (D\D') intersect [1,Y_t]
      subset (D(O_t)\D(F_0)) intersect [1,Y_t].

Consequently

    L_{D'}(Y_t) >= delta_*+4 eta.

Later rows have modulus >Y_t and cannot change this conclusion. Both R_t and Y_t tend to infinity, and the displayed normalized harmonic means are separated by 3 eta>0. The retained family must be infinite: otherwise D' would be eventually periodic and could not obey this separation. Reindexing retained rows preserves strictly increasing positive moduli and one residue per modulus.

This proves the lemma. Taking complements replaces L_D(N) by H_N/log N-L_D(N), so the corresponding survivor set also fails to have logarithmic density.

## Exact logical consequence for the full question
For this entire class, the following UNIVERSAL assertions are equivalent:

(A) Every activated singleton system has a logarithmic density.
(B) Every such deleted union has logarithmic density delta_*.
(C) Every such system has conditioned-tail continuity:

    lim_{m->infinity} limsup_{N->infinity}
      L_{D\D_m}(N) = 0.

(B)=>(A) is immediate. The extraction lemma proves (A)=>(B). For a fixed system, (B)<=> (C) follows from D_m subset D, finite-head convergence, and delta_m increasing to delta_*.

IMPORTANT: For ONE particular system, existence of a density alone has not been proved to imply its value equals delta_*. The implication uses the UNIVERSAL existence statement and closure of the class under deleting rows.

## Uniform finite candidate, still unproved
For every finite singleton system F and N>=2, let delta(F) be its full periodic union density. A stronger sufficient claim is

    sum_{x<=N,x in D(F)}1/x <= delta(F) H_N.       (UF)

If (UF) were proved, apply it to exactly the rows n_i<=N, then let N grow; limsup L_D<=delta_* follows. This would solve B25 positively. A finite counterexample to (UF), however, would NOT by itself refute (A), (B), or (C). A weaker uniform bound with an additive o(log N) error, independent of F, is also sufficient. None of these uniform bounds is proved here.
