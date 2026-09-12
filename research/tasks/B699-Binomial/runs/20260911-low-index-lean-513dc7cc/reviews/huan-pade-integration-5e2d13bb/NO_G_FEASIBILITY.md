# Bounded feasibility of G=1 for the material's actual Padé seeds

Reviewer: `/root/pade_construction`. This is a bounded feasibility result appended after the read-only integration audit, not a new Lean candidate or original-problem theorem. Final numerical record: `no-g-feasibility-v2.json`; the original v1 record is retained. The source REPORT, profile JSON, and exact interval helper are SHA256-bound inside that record.

## Conclusion and exact scope

For the **existing 25 distinct seeds** used by i18's ten cuts and the seven frozen asymmetric profiles for i=11,16,19,21,22,24,25, the current height consumers cannot be recovered by setting the exponential content bound to G>=1 and changing only (c,d), the positive cofactor weights, and the height. This is stronger than a grid finding no candidate: every seed receives a rational-interval upper cap valid for any real s=c/d>1 in this rate mechanism, and all relevant edge orientations are exhausted using those deliberately optimistic caps.

This does **not** rule out all proofs without analytic number theory, new seeds or edges, extra integer normalization, another global consumer, or an elementary exponential G lower bound greater than 1. The other stage-B material (13,17,23,26,27,28,30,31,32,33,34) was not covered by this bounded experiment. No B index is unlocked by this check.

The original i18 weights are not erroneous in their stated G>1 setting. What is ruled out is reusing or recovering them from the same seeds with G=1. The corrected theta constant is not consumed anywhere in this G=1 computation.

## Both exponential conditions, not one error base

For the fixed positive seed P=p^k0, Q=q^l0, aP-bQ=D>0, let z=D/(aP), M1=min(P,Q), M2=max(P,Q). The source kernels are

Qcal(s)=alpha(s) max_(0<t<1) t^(s-1)(1-t)(1-t+zt),
Ecal(s)=alpha(s) max_(0<t<1) t(1-t)(1-zt)^(s-1),
alpha(s)=(s+1)^(s+1)/(s-1)^(s-1).

For G=1 define

A(s)=log Omega3=(s-1)log P-log a-s log b-log Qcal(s),
B(s)=log Omega4=s log M1-(s-1)log(aP)-2log D-log Ecal(s),
Phi(s)=log M2+B(s)/s
      =log(Q/a)+[log(aP/D^2)-log Ecal(s)]/s.

With weights wp/1000,wq/1000, the height exponent condition is

min((1-wp/1000)/log P,(1-wq/1000)/log Q) Phi(s) >= 1.

The source's strict geometric certificate requires strict positivity of A and of beta*T-1. For the obstruction, we conservatively allow equality in the limiting exponential conditions, so possible polynomial prefactors at a critical exponent are not accidentally excluded. The witness below passes the original strict conditions.

## Uniform necessary caps for all s, with interval evidence

Three elementary observations give the cap without a large parameter search.

1. Qcal(s)>=4: insert t=(s-1)/(s+1), and use 1-t+zt>=1-t. Consequently A(s)>=0 requires

s >= s0=log(4aP)/log(P/b),

provided P>b. If P<=b, A(s)<0 for all s>1.

2. Ecal(s)>s for every s>1 and 0<z<1. Insert t=1/(s+1) and use 1-zt>1-t to obtain

Ecal(s) > s^s/(s-1)^(s-1) > s.

Positive weights and the height exponent condition imply Phi(s)>log M2, hence Omega4>1. But Omega4<=aP/[D^2 Ecal(s)]<aP/(D^2 s). Thus a useful s must satisfy

s<aP/D^2<=aP/D=1/z.

The cap therefore loses no useful large-s parameter merely by restricting to 1<s<1/z.

3. Ecal(s) is increasing on 1<s<1/z. For every fixed t in (0,1), the log derivative of its scaled kernel in s is

log((s+1)/(s-1))+log(1-zt)
 > log((s+1)/s)>0.

The pointwise maximum is therefore increasing as well. Let sL be a rational lower bound for s0 with 1<sL<=s0. For every useful s>=s0, the numerator log(aP/D^2)-log Ecal(s) is positive and bounded above by its value at sL. Hence

Phi(s) <= log(Q/a)+max(0, log(aP/D^2)-log Ecal(sL))/sL =: Fcap.

The script computes a directed rational interval for s0, takes sL=floor(10000*s0_lower)/10000, and encloses Ecal(sL) and Fcap using the fixed rational log/sqrt package. The source maximum is evaluated stably as

u2=2/(s*z+2+sqrt(s^2*z^2+4-4z));

this is the rationalization of the report's displayed u2. Q uses u1=2(s-1)/(s(2-z)+sqrt(...)).

Any usable weight pair must satisfy

wp <= 1000[1-log(P)/Fcap],
wq <= 1000[1-log(Q)/Fcap].

Upper log/cap endpoints are combined in the conservative direction, then rounded upward to integers. If even Fcap<=log M2, no positive two-ended weight pair is possible from that seed in this mechanism. An unusable edge is represented by the trivial 0-or-0 constraint.

These rounded weights are **optimistic upper caps, not newly proved cofactor inequalities**. Pretending that all such strongest constraints are available creates a stronger graph than any feasible G=1 choice. If even this graph fails the existing height consumer, lowering weights or raising the height cannot repair that exponent deficit.

## i18: all 1024 orientations and both position branches

The adopted REPORT section 5.1 supplies the ten ordered seeds and weights. The two weight coordinates were kept in the stored p,q order, including repeated pairs. Every selected seed independently has D>0 and aP>0; thus the actual fixed-seed x/y nonzero obligations in the integration audit are met for these 25 seeds. This x=D is distinct from the target gap, which may be zero.

The i18 uniform optimistic caps, in the report order, are:

| p,q | k0,l0 | original wp,wq | optimistic G=1 cap |
|---|---|---|---|
| 2,13 | 9,2 | 57,224 | 17,192 |
| 17,2 | 2,5 | 31,407 | 0,0 |
| 17,2 | 1,4 | 351,365 | 266,282 |
| 3,11 | 5,2 | 340,423 | 299,388 |
| 5,7 | 2,2 | 390,263 | 314,170 |
| 5,11 | 3,2 | 197,202 | 157,163 |
| 13,5 | 1,2 | 332,162 | 246,54 |
| 7,13 | 1,1 | 269,38 | 0,0 |
| 7,13 | 3,2 | 110,218 | 62,176 |
| 13,11 | 1,1 | 49,111 | 0,0 |

All ten original weight pairs are ruled out for G=1 by these caps, for every s in this mechanism. The original weights remain valid under their stated stronger G inputs.

For distinct maximal positions, source (6.1) is Y^279 times the weighted cofactor product <=constant*n^303. Its exponent threshold is therefore 1000*(303-279)=24000. Exhausting all 1024 cap orientations gives only **16876**, a deficit of 7124. A minimizing vector in prime order (2,3,5,7,11,13,17) is

(282,0,54,170,388,0,0).

This is an abstract constraint-system witness, not an original B699 counterexample.

All 21 collision pairs were also checked on all 1024 corners. The worst pair (2,11) has scalar bound 1224. With the report's lambda=19,E=234,t=7, its exponent is

19*(11000+1224)-234000=-1744.

The source positive result used weighted minimum 24013 and collision minimum 1431. Those original values are separately reconstructed from the actual source weights in the final review check. The source threshold and original/cap weights are all tied to the adopted REPORT hash.

## Seven other material profiles

All 14,112 edge orientations from the frozen profiles were repeated with the optimistic cap weights. For each profile, the same unweighted three-window family was also optimized over 0<=r<i, 1<=s<i, 2s>r, so the comparison does not rely only on retaining one old structural pair.

| i | optimistic S numerator | original-structure Delta | best Delta in same structural family |
|---|---:|---:|---:|
| 11 | 484 | -1676 | -1676 |
| 16 | 711 | -4624 | -4335 |
| 19 | 807 | -3667 | -3474 |
| 21 | 974 | -7572 | -7494 |
| 22 | 831 | -3718 | -3549 |
| 24 | 923 | -9925 | -9694 |
| 25 | 709 | -7275 | -6984 |

All remain negative even under the stronger optimistic graph. The i18 weighted construction was checked as given; other weighted positional designs were not explored.

## A local positive example, with every relevant numerical condition

The actual seed P=17,Q=16,a=b=1,D=1 admits a weaker individual edge without G:

(c,d)=(3,2), L=1, m0=0, wp=wq=250, log2(Y)>=4095.

Both delta=0,1 prefactors C1,delta and C2,delta are rigorously bounded below 1 using exact positive beta-integral expansions and pi>3. Both log(Omega3), log(Omega4) are positive. All four finite-height tests pass with the following certified lower margins:

- m-m0 >249.46099249;
- coefficient-term log margin >3.83375429;
- beta*T-1 >0.01580057;
- final height contradiction margin >31.95072694.

This is a complete exact numerical instance conditional on the same analytic Padé bound; it uses no theta or exponential G estimate. It is weaker than i18's original (351,365) edge and **does not unlock an entire B index**. The example prevents the negative global conclusion from being misread as saying all G=1 Padé edges are impossible.

A small rational grid (c<=64,d<=32,s<6 and s<1/z) was also used for reconnaissance: 18,600 parameter evaluations across the 25 seeds. Its floating results are not the basis of the obstruction or of the exact positive witness.

## Cost and next allocation

No checked B index is unlocked, so no larger-height exponent blocks or CRT certificates were generated. A larger finite cover cannot repair a negative leading height exponent in the same consumer. If new seeds, edges or another consumer later restore a positive exponent, any increased initial height would require explicit extension/reverification of the affected finite exponent-block coverage; the existing finite packages do not automatically cover a new bound.

The recommended next action remains actual Lean diagnostics for the integrated recurrence/determinant chain. This feasibility task is closed at its stated finite-seed/consumer scope. The reviewer will wait for the primary's real compiler errors and will not expand the unverified candidate chain.
