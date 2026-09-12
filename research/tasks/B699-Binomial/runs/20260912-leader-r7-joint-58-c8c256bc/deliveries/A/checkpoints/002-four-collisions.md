# Checkpoint: four new global co-location exclusions

New cuts accepted by the frozen exact rational routine at log Y >= 9,500,000, d<=13.
No new content family or finite content block search. New normalization/permutations consume already accepted content families.

Complement {2,3}: cuts (A3>=Y^.3200 or A2>=Y^.0900) and (A3>=Y^.2847 or A2>=Y^.3231). Product lower exponent >=.3200.
Complement {2,5}: cuts (A2>=Y^.3100 or A5>=Y^.1550) and (A2>=Y^.1500 or A5>=Y^.3100). Product lower exponent >=.3050.
Complement {3,5}: cuts (A5>=Y^.1900 or A3>=Y^.3400) and (A5>=Y^.3645 or A3>=Y^.2409). Product lower exponent >=.3400.
Complement {5,7}: cuts (A5>=Y^.2000 or A7>=Y^.3200) and (A5>=Y^.3915 or A7>=Y^.2644). Product lower exponent >=.3200.

For every maximum-position collision, generic prior scalar gives (A_complement_product)^10 <= R n^3 and individual local cubic bounds A^3<=216(n-a) for n>=2^84. Complement positions are distinct because triple collisions or two total positions imply n^7<=R, rejected by old i9 finite theorem.

For n<2^14000001 use exactly the corresponding p,q A14-CUBIC-BLOCKS local theorem (not A14 itself), yielding n<2^169, contradictory to old i9 finite.
For n>=2^14000001 set Y=n/2. New product exponents >.3 give n<2^1021 (worst .3050) or smaller, contradiction. Therefore exclude collisions {5,7},{3,7},{2,7},{2,3}; {3,5} was previously excluded. Only {2,5} remains.

Consequences: prior 84 alpha families reduce to 56 single-high +4 double-high (alpha=m 2^a5^b, m in {1,3,7,21}); 24 complete two-exponent families eliminated. Must still independently check numeric cuts, family alignment and universal proof transcription. No Lean, no old block replay this turn.

New bounded seed probe for missing complement {3,7}: 115 seeds x189 old family variants; no improvement over old seed. Numerical model boundary only.

Current new route: for residual alpha two-high {2,5}, exploit fixed occupied row zero plus Q3,Q7 positions r,s. Transportation LP on full prime-power allocations leaves only r+s<=6 asymptotically (12 ordered pairs). Values of min t3+t7: (1,2):17/10, (1,3):16/9, (1,4):15/8, (2,3):17/9, sum6:2. Need finite constants and scalar weights, not just LP asymptotics.
