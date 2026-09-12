# Active discovery: three-bin split, awaiting verification
Under actual noCommon_3: 4|n, set M=(n-2)/2 odd, N=(n-1)/lambda, Mprime=M/mu. lambda=3 iff v3(n-1)=1, else1; mu=3 iff v3(M)=1, else1. lambda*mu in{1,3}; N|j(j-1), Mprime|j(j-1)(j-2).
Allocate complete prime powers of Mprime among j,j-1,j-2; coprime unique assignment (3 retained only when exponent>=2). Bins C0,C1,C2 pairwise coprime.
C2=1 impossible via parity: 2*N*Mprime>j(j-1).
C1=1 gives L*j*(n-j)=D*M*(2M+1), L=lambda*mu. L1=>0<D<1. L3=>D1 for M>=5; 3w^2=M^2+5M+3, w=M+1-j. Mod8 =>M3 mod8,w odd=>n hasv2=3,j odd. n not3, alpha=8, beta1 or3; direct substitution excludes.
C0=1: t=j-1, D=L*t*(4M+1-t)/(M*(2M+1)). L1=>D1 but parity forcesD even. L3=>D2 or4; g=gcd(n,j) divides12-2D, so g power2, alpha2power =>n pure2power. Equation 3(2(n-j)-1)^2 = (12-2D)n^2+(6D-36)n+(27-4D): D2=>8n^2-24n+19; D4=>4n^2-12n+11.
For omega(M)<=2 and mu3, C1,C2 already force >=2 primes besides3 contradiction. Thus possible residual lambda3 (n1 has exactly one3), n=2^v with v even and3 notdiv v.
Need verify every identity/range, then solve or bound fixed quartics n square. Do not register a full theorem before proof.
