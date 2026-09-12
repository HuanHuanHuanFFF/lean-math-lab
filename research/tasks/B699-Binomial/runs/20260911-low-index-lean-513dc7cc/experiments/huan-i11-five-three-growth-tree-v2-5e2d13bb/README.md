# i11 (5,3) GrowthTree v2 correction candidate

This directory is a traceable, uncompiled correction copy of the frozen nine-leaf five-three candidate. The frozen source and lean integration remain unchanged.

The sole source correction is in I11FiveThreeTree.lean: every parser-sensitive polynomial.comp argument passed to GrowthTree or GrowthTree.split is wrapped as a complete application. Shared and Leaves are byte-preserved copies. The copy preserves the existing imports, all 18 fully qualified QLeaf/ELeaf references, the Shared qLam/eLam aliases, and choose(8,k)*(lambda-b[k]) coefficients.

Independent static checks found 40 wrapped applications, zero remaining bad forms, 81 coefficient identities, nine expected leaf namespaces, and balanced parentheses. No Lean command was run, so this remains pending acceptance.
