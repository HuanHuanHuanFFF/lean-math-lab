\\ UNEXECUTED HANDOFF ONLY. No PARI result is included in this evidence pack.
\\ This solves the fixed algebraic core, not the NC3 conditions.
\\ Consult the official PARI/GP thue/thueinit manual before execution.
f = x^3 - 46*x^2 + 312*x - 338;
if (!polisirreducible(f), error("Unexpected reducibility; stop and recheck the core"));
T = thueinit(f, 1);
sol = thue(T, 1);
print(sol);
\\ Each [Q,V] still needs V>0, canonical prime powers, P=Q+26V,
\\ nu=6Q-13V, Q<P<4Q (for the low-side task), the original n,j recovery,
\\ genuine gcd/alpha/lambda/mu, and all complete original-source carries.
