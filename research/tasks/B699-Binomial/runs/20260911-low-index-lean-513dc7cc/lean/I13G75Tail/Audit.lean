import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13G75Tail.Bounds

set_option autoImplicit false
set_option relaxedAutoImplicit false
open Math.B699.I13G75Tail Math.B699.I13G75Uniform Math.B699.PadeConstruction

example (m : ℕ) (hm : 187 ≤ m) :
    tailBase * tailRate ^ (m - 187) ≤ divisorZero m :=
  divisor_zero_tail_lower m hm
example (m : ℕ) (hm : 1 ≤ m) :
    oneConstant * infiniteRate ^ m ≤ divisorOne m :=
  divisor_one_full_rate m hm
example (m : ℕ) (hm : 187 ≤ m) :
    tailBase * tailRate ^ (m - 187) ≤
      (qContent (5 * m) (2 * m - 1) (5 * m) : ℚ) :=
  q_content_zero_tail_lower m hm
example (m : ℕ) (hm : 1 ≤ m) :
    oneConstant * infiniteRate ^ m ≤
      (qContent (5 * m - 1) (2 * m) (5 * m - 1) : ℚ) :=
  q_content_one_full_rate m hm

#print axioms Math.B699.I13G75Tail.tailRate
#print axioms Math.B699.I13G75Tail.tailBase
#print axioms Math.B699.I13G75Tail.oneConstant
#print axioms Math.B699.I13G75Tail.tail_rate_pos
#print axioms Math.B699.I13G75Tail.tail_base_pos
#print axioms Math.B699.I13G75Tail.one_constant_pos
#print axioms Math.B699.I13G75Tail.tail_fraction_le
#print axioms Math.B699.I13G75Tail.divisor_zero_tail_step
#print axioms Math.B699.I13G75Tail.divisor_zero_tail_anchor
#print axioms Math.B699.I13G75Tail.divisor_zero_tail_lower
#print axioms Math.B699.I13G75Tail.divisor_one_full_rate
#print axioms Math.B699.I13G75Tail.q_content_zero_tail_lower
#print axioms Math.B699.I13G75Tail.q_content_one_full_rate
