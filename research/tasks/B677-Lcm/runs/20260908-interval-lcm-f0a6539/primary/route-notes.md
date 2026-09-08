# Primary route development (2026-09-08, live checkpoint04:53 Shanghai)

## Periodic correction route (known method, untested for target leverage)

For length k, write P_k(n)=product(n+1,...,n+k) and G_k(n)=P_k(n)/M(n,k). Farhi-Kane (2008/2009), arXiv0808.1507, proves the correction function is periodic with period dividing lcm(1,...,k-1) after adjusting their k+1 indexing. A collision requires P_k(m)/P_k(n)=G_k(m)/G_k(n)>1. Equal residue classes modulo a period cannot collide by strict growth of P_k. Different residue classes reduce to finitely many rational-ratio polynomial equations for each fixed k, but k and residue modulus remain unbounded and integral-point bounds may be impractical. No theorem claimed yet; check whether this is already the explorer's route before allocating proof work.

Expected leverage: an infinite congruence family excluded; potentially turns fixed k into exact algebraic curves. Cost warning: merely formalizing periodicity would leave the main unknown region essentially unchanged unless a curve method or stronger uniform obstruction follows.

## Monotonicity failure / source distinction

Stijn Cambie, Resolution of an Erdos problem on least common multiples, arXiv2410.09138v1 (2024), solves #678 by constructing arbitrarily large inversions of interval LCM even with a later longer interval. This is not a solution of #677, which asks equality at equal length. The paper uses CRT control of correction factors and could supply structural examples, but an inequality construction does not give an equality intermediate-value principle on integers. Do not pursue a global monotonicity proof.

Sources checked directly: https://arxiv.org/pdf/0808.1507 ; https://arxiv.org/html/2410.09138v1 . Novelty of any applied reduction remains unconfirmed.

## Untried cross-task transfer: small cofactors force a common slope

Motivation after B699's two-cofactor criterion: a hypothetical B677 LCM equality matches each maximal large prime power between one position in each interval. Suppose two such matches give

    n+a=u*P,  m+b=v*P,
    n+c=w*Q,  m+d=z*Q,

with offsets a,b,c,d in[1,k] and positive cofactors. Elimination gives the exact integer identity

    n*(v*w-u*z)=u*w*(b-d)-v*w*a+u*z*c.

The right side has absolute value at most k*(u*w+v*w+u*z). Hence, if n exceeds that bound, the slopes satisfy v*w=u*z and the offsets must satisfy u*(b-d)=v*(a-c). This is a proposed necessary condition, not an implemented or newly accepted theorem in this round. It is an elementary determinant argument closely related to the B699 arithmetic core; originality is not claimed.

Potential use: the already derived global paper bound m+1<4(n+k), together with n>369k in the remaining region, makes small-cofactor matches nearly rigid. Two incompatible matches could be rejected with a compact exact certificate rather than a long LCM computation. The unbounded case without enough small-cofactor matches remains; no density or existence assertion for such matches has been proved.

Next smallest useful test: use maximal prime-power positions from a bounded source-defined search, build the two-match certificates, check the displayed identity and quantify whether this rejects cases left by the existing prime/gap filters. Only continue toward a formal lemma or wider search if that diagnostic distinguishes the unresolved frontier. Deferred because the user shortened the round to06:10 and current verification/publication has priority.
