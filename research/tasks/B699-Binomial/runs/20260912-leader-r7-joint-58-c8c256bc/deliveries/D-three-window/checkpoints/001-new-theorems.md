# Checkpoint: new weighted three-window threshold consumer
New derivation, not an inherited result:
For i=3..9, let s_r be the part of n-r formed by all p<i complete prime powers and the isolated single p=i when i is prime and its valuation equals one. q_r=(n-r)/s_r. Under absence of a transferable source common prime (stronger allowed hypothesis than NC_i, not NC_3), q0|j, q1|j(j-1), q2|j(j-1)(j-2).
Using D's residual construction with NEW q1,q2 and j arbitrary incl center gives
64 eta(n) (n-1)^3 <= s0^4 s1^3 s2^2,
eta=8 for n=0 mod4, 4 for n=2 mod4, 2 for odd n.
Contrapositive is a whole-row target threshold lift, with full p=i cancellation rule. For all R7 use S(x)=full 2,3,5,7 part, and obtain the SAME p>=11 for all target indices for each j.
Candidate counting: L=lcm(S(n),S(n-1),S(n-2)); failed row test implies L^4 >=128(n-1)^3. Complete small-prime allocation count <= product(1+3 floor(log_p X)); CRT gives at most (X^(1/4)/3+2) per pattern. Thus explicit O(X^(1/4) log^4 X) exceptional-row upper bound, not finiteness.
Infinite new-vs-displayed-criteria family: n=22^v, v=1 mod420, v>=421. S0=2^v,S1=21,S2=10; passes new test; fails old ROW9 and ROW-H; source contains one 5 and one 7, so old blanket no-low-prime lift doesn't apply. Do not claim novel against every historical consumer.
Still to do: exact independent arithmetic checks, proof writeup, semantic mutations, package replay, all boundary diagnostics.
