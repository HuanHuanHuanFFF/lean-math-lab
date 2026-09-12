# Checkpoint 004: verified minimal consumer and exact method boundary

Both full logarithm certificates passed a separate fixed-point verifier; the full two-conic result had 186 terminal cells and16 rejected corrupt certificates.

Further reduction retains ell=3 from full noCommon. a=2 is eliminated by mod9,7,13 (12 exponent states). a=1 with mod27,13,37 forces v=2 mod36. Only the D=3 logarithm certificate is needed to boundv<96; the remaining exponents38,74 fail mod17,11. The minimal checker passed and8 corrupt minimal certificates were rejected.

A constructive proof now shows that for every fixed modulusL and any boundV, the isolated a=1 conic still has a local solution with v>=V andv=2mod36. Therefore finite fixed-modulus filtering cannot replace the height bound; adaptive moduli/descent/other necessary constraints remain open.

Consumer checks passed:3249 actual small binomial pairs;657 nonvacuous first-divisibility inputs for the new square-root gcd bounds;970 full rows up ton4000 (960100pairs); one separate fullrown30172 (15083pairs);206 selected large-n same-prime transfer inputs. The n30172 row hasomega(N)=2,omega(K)=3, fails all old cubic row criteria, yet passesQ²>=6nwithQ431. Atj15086 thisQbase doesnot divideC(n,j); the true witness5has valuations1,3.

One regression expectation was corrected: at(n,j)=(28,14), the two v3 values are2,3, not2,2. The failing assertion exposed the mistaken expectation; direct binomial factorization agreed with Legendre. No proof or frontier conclusion depended on the mistaken expectation.

Remaining: write final report/handoff/failure log, unified acceptance, manifests, isolated ZIP rerun. R7 unchanged; no Lean or human review.
