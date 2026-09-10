import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.dyadic.Base

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Dyadic

private theorem value_eq_shifted (x : Dyadic) (e d : ℕ)
    (h : x.exponent = e + d) : x.value = (x.mantissa * 2 ^ d) * 2 ^ e := by
  simp only [Dyadic.value, h, pow_add]
  ring

/-- Compare after cancelling a common power of two. The size tests avoid
constructing a large power of two even when the exponents are far apart. -/
def ltCheck (x y : Dyadic) : Bool :=
  if x.mantissa = 0 then decide (0 < y.mantissa)
  else if y.mantissa = 0 then false
  else if x.exponent ≤ y.exponent then
    let d := y.exponent - x.exponent
    if x.mantissa.size ≤ d then true
    else decide (x.mantissa < y.mantissa * 2 ^ d)
  else
    let d := x.exponent - y.exponent
    if y.mantissa.size ≤ d then false
    else decide (x.mantissa * 2 ^ d < y.mantissa)

theorem ltCheck_sound {x y : Dyadic} (hcheck : ltCheck x y = true) :
    x.value < y.value := by
  by_cases hx : x.mantissa = 0
  · simp only [ltCheck, hx, if_true] at hcheck
    have hy : 0 < y.mantissa := of_decide_eq_true hcheck
    have hp : 0 < y.mantissa * 2 ^ y.exponent :=
      Nat.mul_pos hy (pow_pos (by decide) _)
    simpa only [Dyadic.value, hx, Nat.zero_mul] using hp
  · by_cases hy : y.mantissa = 0
    · simp only [ltCheck, hx, if_false, hy, if_true, Bool.false_eq_true] at hcheck
    · by_cases he : x.exponent ≤ y.exponent
      · have hc : x.mantissa < y.mantissa * 2 ^ (y.exponent - x.exponent) := by
          by_cases hs : x.mantissa.size ≤ y.exponent - x.exponent
          · have hsmall : x.mantissa < 2 ^ (y.exponent - x.exponent) :=
              Nat.size_le.mp hs
            have hpos : 1 ≤ y.mantissa := Nat.pos_of_ne_zero hy
            exact lt_of_lt_of_le hsmall (by
              simpa only [Nat.one_mul] using
                Nat.mul_le_mul hpos (Nat.le_refl (2 ^ (y.exponent - x.exponent))))
          · have hb : decide (x.mantissa <
                y.mantissa * 2 ^ (y.exponent - x.exponent)) = true := by
              simpa only [ltCheck, hx, if_false, hy, he, if_true, hs] using hcheck
            exact of_decide_eq_true hb
        have heq : y.exponent = x.exponent + (y.exponent - x.exponent) := by omega
        calc
          x.value = x.mantissa * 2 ^ x.exponent := rfl
          _ < (y.mantissa * 2 ^ (y.exponent - x.exponent)) * 2 ^ x.exponent :=
            Nat.mul_lt_mul_of_pos_right hc (pow_pos (by decide) _)
          _ = y.value := (value_eq_shifted _ _ _ heq).symm
      · have hc : x.mantissa * 2 ^ (x.exponent - y.exponent) < y.mantissa := by
          by_cases hs : y.mantissa.size ≤ x.exponent - y.exponent
          · simp only [ltCheck, hx, if_false, hy, he, hs, if_true,
              Bool.false_eq_true] at hcheck
          · have hb : decide (x.mantissa *
                2 ^ (x.exponent - y.exponent) < y.mantissa) = true := by
              simpa only [ltCheck, hx, if_false, hy, he, hs] using hcheck
            exact of_decide_eq_true hb
        have heq : x.exponent = y.exponent + (x.exponent - y.exponent) := by omega
        calc
          x.value = (x.mantissa * 2 ^ (x.exponent - y.exponent)) * 2 ^ y.exponent :=
            value_eq_shifted _ _ _ heq
          _ < y.mantissa * 2 ^ y.exponent :=
            Nat.mul_lt_mul_of_pos_right hc (pow_pos (by decide) _)
          _ = y.value := rfl

end B699Dyadic

#print axioms B699Dyadic.ltCheck_sound
