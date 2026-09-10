import pathlib,re
repo=pathlib.Path.cwd(); run=repo/'research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17'
src=(repo/'research/tasks/B699-Binomial/runs/20260910-elementary-count-bbbfe15e/lean/ElementaryCount.lean').read_text(encoding='utf-8')
header='''import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic.Convert
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
Analytic part of the EC candidate from the frozen, merged run
20260910-elementary-count-bbbfe15e. This file does not claim EC or B699.
The correction and its derivative retain the complete real domain x >= 128.
Local acceptance is recorded separately in this run's verification directory.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 20000
set_option maxHeartbeats 1600000
open Real
namespace B699TailEC

'''
def take(start,end): return src[src.index(start):src.index(end)]
out=header+take('theorem log_four','/-- A small, exhaustive')
out+=take('noncomputable def correction (','noncomputable def thetaIntegrand')
out+=take('theorem correction_128_ge','theorem thetaIntegrand_le')
out+='''
end B699TailEC

#print axioms B699TailEC.log_two_lower
#print axioms B699TailEC.log_two_upper
#print axioms B699TailEC.denominator_pos
#print axioms B699TailEC.correction_128_ge
#print axioms B699TailEC.hasDerivAt_correction
#print axioms B699TailEC.correctionDeriv_lower
'''
(run/'lean/ECAnalytic.lean').write_text(out,encoding='utf-8')
