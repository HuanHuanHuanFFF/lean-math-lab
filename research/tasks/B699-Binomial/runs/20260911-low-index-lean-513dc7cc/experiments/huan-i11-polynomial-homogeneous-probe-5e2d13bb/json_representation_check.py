from pathlib import Path
from fractions import Fraction as F
from math import comb
import re,json
run=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb/research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
s=(run/'lean/Growth/I11ThreeTwoLeaves/ELeaf001.lean').read_text()
j=json.loads((run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-02.json').read_text())
leaf=j['E']['leaves'][1];lam=F(j['E']['lambda'])
coeff=[F(int(m[1]),int(m[2])) for k in range(39) for m in [re.search(r'def gapCoeff'+str(k)+r' : ℚ := \((\d+) : ℚ\) / (\d+)',s)]]
base=[F(int(v),int(leaf['bernstein_denominator'])) for v in leaf['bernstein_numerators']]
print(json.dumps({'count':len(base),'lambda':str(lam),'raw_json_equals_gap':base==coeff,
 'choose_json_equals_gap':[b*comb(38,k) for k,b in enumerate(base)]==coeff,
 'lambda_minus_json_times_choose':[(lam-b)*comb(38,k) for k,b in enumerate(base)]==coeff,
 'first_json':str(base[0]),'first_gap':str(coeff[0]),'lambda_minus_first':str(lam-base[0])},indent=2))
