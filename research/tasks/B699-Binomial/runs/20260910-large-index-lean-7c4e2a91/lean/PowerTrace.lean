import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.dyadic.Base

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Dyadic

/-- An explicitly supplied exponent and directed dyadic bound. -/
structure PowState where
  exponent : ℕ
  bound : Dyadic
  deriving DecidableEq, Repr

/-- Check one binary exponentiation step using only the supplied previous state. -/
def powStepDownCheck (bits : ℕ) (base : Dyadic) (previous next : PowState) : Bool :=
  if next.exponent = previous.exponent + previous.exponent then
    decide (next.bound = mulDown bits previous.bound previous.bound)
  else if next.exponent = previous.exponent + previous.exponent + 1 then
    decide (next.bound = mulDown bits
      (mulDown bits previous.bound previous.bound) base)
  else false

/-- Upward-rounding version of `powStepDownCheck`. -/
def powStepUpCheck (bits : ℕ) (base : Dyadic) (previous next : PowState) : Bool :=
  if next.exponent = previous.exponent + previous.exponent then
    decide (next.bound = mulUp bits previous.bound previous.bound)
  else if next.exponent = previous.exponent + previous.exponent + 1 then
    decide (next.bound = mulUp bits
      (mulUp bits previous.bound previous.bound) base)
  else false

theorem powStepDownCheck_sound {bits : ℕ} {base : Dyadic} {previous next : PowState}
    (hprevious : previous.bound.value ≤ base.value ^ previous.exponent)
    (hcheck : powStepDownCheck bits base previous next = true) :
    next.bound.value ≤ base.value ^ next.exponent := by
  have hsquare : (mulDown bits previous.bound previous.bound).value ≤
      base.value ^ (previous.exponent + previous.exponent) := by
    calc
      _ ≤ previous.bound.value * previous.bound.value := mulDown_le _ _ _
      _ ≤ base.value ^ previous.exponent * base.value ^ previous.exponent :=
        Nat.mul_le_mul hprevious hprevious
      _ = base.value ^ (previous.exponent + previous.exponent) :=
        (pow_add _ _ _).symm
  by_cases he : next.exponent = previous.exponent + previous.exponent
  · have hb : next.bound = mulDown bits previous.bound previous.bound :=
      of_decide_eq_true (by
        simpa only [powStepDownCheck, if_pos he] using hcheck)
    rw [hb, he]
    exact hsquare
  · by_cases ho : next.exponent = previous.exponent + previous.exponent + 1
    · have hb : next.bound = mulDown bits
          (mulDown bits previous.bound previous.bound) base :=
        of_decide_eq_true (by
          simpa only [powStepDownCheck, if_neg he, if_pos ho] using hcheck)
      rw [hb, ho]
      calc
        _ ≤ (mulDown bits previous.bound previous.bound).value * base.value :=
          mulDown_le _ _ _
        _ ≤ base.value ^ (previous.exponent + previous.exponent) * base.value :=
          Nat.mul_le_mul hsquare (Nat.le_refl _)
        _ = base.value ^ (previous.exponent + previous.exponent + 1) :=
          (pow_succ _ _).symm
    · simp only [powStepDownCheck, if_neg he, if_neg ho, Bool.false_eq_true] at hcheck

theorem powStepUpCheck_sound {bits : ℕ} {base : Dyadic} {previous next : PowState}
    (hprevious : base.value ^ previous.exponent ≤ previous.bound.value)
    (hcheck : powStepUpCheck bits base previous next = true) :
    base.value ^ next.exponent ≤ next.bound.value := by
  have hsquare : base.value ^ (previous.exponent + previous.exponent) ≤
      (mulUp bits previous.bound previous.bound).value := by
    calc
      _ = base.value ^ previous.exponent * base.value ^ previous.exponent :=
        pow_add _ _ _
      _ ≤ previous.bound.value * previous.bound.value :=
        Nat.mul_le_mul hprevious hprevious
      _ ≤ (mulUp bits previous.bound previous.bound).value := mul_le_mulUp _ _ _
  by_cases he : next.exponent = previous.exponent + previous.exponent
  · have hb : next.bound = mulUp bits previous.bound previous.bound :=
      of_decide_eq_true (by
        simpa only [powStepUpCheck, if_pos he] using hcheck)
    rw [hb, he]
    exact hsquare
  · by_cases ho : next.exponent = previous.exponent + previous.exponent + 1
    · have hb : next.bound = mulUp bits
          (mulUp bits previous.bound previous.bound) base :=
        of_decide_eq_true (by
          simpa only [powStepUpCheck, if_neg he, if_pos ho] using hcheck)
      rw [hb, ho]
      calc
        _ = base.value ^ (previous.exponent + previous.exponent) * base.value :=
          pow_succ _ _
        _ ≤ (mulUp bits previous.bound previous.bound).value * base.value :=
          Nat.mul_le_mul hsquare (Nat.le_refl _)
        _ ≤ _ := mul_le_mulUp _ _ _
    · simp only [powStepUpCheck, if_neg he, if_neg ho, Bool.false_eq_true] at hcheck

/-- Check every transition and the endpoint. The recursive call consumes the
supplied next state, never a recomputed expression from earlier steps. -/
def powTraceDownFromCheck (bits : ℕ) (base : Dyadic) (exponent : ℕ)
    (final : Dyadic) (previous : PowState) : List PowState → Bool
  | [] => decide (previous.exponent = exponent ∧ previous.bound = final)
  | next :: rest =>
    powStepDownCheck bits base previous next &&
      powTraceDownFromCheck bits base exponent final next rest

/-- Upward-rounding version of `powTraceDownFromCheck`. -/
def powTraceUpFromCheck (bits : ℕ) (base : Dyadic) (exponent : ℕ)
    (final : Dyadic) (previous : PowState) : List PowState → Bool
  | [] => decide (previous.exponent = exponent ∧ previous.bound = final)
  | next :: rest =>
    powStepUpCheck bits base previous next &&
      powTraceUpFromCheck bits base exponent final next rest

theorem powTraceDownFromCheck_sound (bits : ℕ) (base : Dyadic) (exponent : ℕ)
    (final : Dyadic) (trace : List PowState) (previous : PowState)
    (hprevious : previous.bound.value ≤ base.value ^ previous.exponent)
    (hcheck : powTraceDownFromCheck bits base exponent final previous trace = true) :
    final.value ≤ base.value ^ exponent := by
  induction trace generalizing previous with
  | nil =>
    have hend : previous.exponent = exponent ∧ previous.bound = final :=
      of_decide_eq_true (by
        simpa only [powTraceDownFromCheck] using hcheck)
    simpa only [hend.1, hend.2] using hprevious
  | cons next rest ih =>
    have hchecks : powStepDownCheck bits base previous next = true ∧
        powTraceDownFromCheck bits base exponent final next rest = true := by
      simpa only [powTraceDownFromCheck, Bool.and_eq_true] using hcheck
    exact ih next (powStepDownCheck_sound hprevious hchecks.1) hchecks.2

theorem powTraceUpFromCheck_sound (bits : ℕ) (base : Dyadic) (exponent : ℕ)
    (final : Dyadic) (trace : List PowState) (previous : PowState)
    (hprevious : base.value ^ previous.exponent ≤ previous.bound.value)
    (hcheck : powTraceUpFromCheck bits base exponent final previous trace = true) :
    base.value ^ exponent ≤ final.value := by
  induction trace generalizing previous with
  | nil =>
    have hend : previous.exponent = exponent ∧ previous.bound = final :=
      of_decide_eq_true (by
        simpa only [powTraceUpFromCheck] using hcheck)
    simpa only [hend.1, hend.2] using hprevious
  | cons next rest ih =>
    have hchecks : powStepUpCheck bits base previous next = true ∧
        powTraceUpFromCheck bits base exponent final next rest = true := by
      simpa only [powTraceUpFromCheck, Bool.and_eq_true] using hcheck
    exact ih next (powStepUpCheck_sound hprevious hchecks.1) hchecks.2

/-- The trace omits the fixed initial state `(0, one)` and includes its final
state. No positive-precision, positive-base, or positive-exponent assumption is
needed for soundness. -/
def powTraceDownCheck (bits : ℕ) (base : Dyadic) (exponent : ℕ)
    (final : Dyadic) (trace : List PowState) : Bool :=
  powTraceDownFromCheck bits base exponent final ⟨0, one⟩ trace

/-- Upward-rounding version of `powTraceDownCheck`. -/
def powTraceUpCheck (bits : ℕ) (base : Dyadic) (exponent : ℕ)
    (final : Dyadic) (trace : List PowState) : Bool :=
  powTraceUpFromCheck bits base exponent final ⟨0, one⟩ trace

theorem powTraceDownCheck_sound {bits : ℕ} {base : Dyadic} {exponent : ℕ}
    {final : Dyadic} {trace : List PowState}
    (hcheck : powTraceDownCheck bits base exponent final trace = true) :
    final.value ≤ base.value ^ exponent := by
  exact powTraceDownFromCheck_sound bits base exponent final trace ⟨0, one⟩
    (by simp) hcheck

theorem powTraceUpCheck_sound {bits : ℕ} {base : Dyadic} {exponent : ℕ}
    {final : Dyadic} {trace : List PowState}
    (hcheck : powTraceUpCheck bits base exponent final trace = true) :
    base.value ^ exponent ≤ final.value := by
  exact powTraceUpFromCheck_sound bits base exponent final trace ⟨0, one⟩
    (by simp) hcheck

/- Small endpoint and continuity checks, deliberately including exponent zero. -/
example : powTraceDownCheck 0 (embed 0) 0 one [] = true := by decide
example : powTraceUpCheck 0 (embed 0) 0 one [] = true := by decide
example : powTraceDownCheck 16 (embed 3) 5 (embed 243)
    [⟨1, embed 3⟩, ⟨2, embed 9⟩, ⟨5, embed 243⟩] = true := by decide
example : powTraceUpCheck 16 (embed 3) 5 (embed 243)
    [⟨1, embed 3⟩, ⟨2, embed 9⟩, ⟨5, embed 243⟩] = true := by decide
example : powTraceDownCheck 16 (embed 3) 4 (embed 243)
    [⟨1, embed 3⟩, ⟨2, embed 9⟩, ⟨5, embed 243⟩] = false := by decide
example : powTraceUpCheck 16 (embed 3) 5 (embed 242)
    [⟨1, embed 3⟩, ⟨2, embed 9⟩, ⟨5, embed 243⟩] = false := by decide
example : powTraceDownCheck 16 (embed 3) 3 (embed 27)
    [⟨3, embed 27⟩] = false := by decide
example : powTraceUpCheck 16 (embed 3) 3 (embed 27)
    [⟨3, embed 27⟩] = false := by decide

end B699Dyadic

#print axioms B699Dyadic.powTraceDownCheck_sound
#print axioms B699Dyadic.powTraceUpCheck_sound
