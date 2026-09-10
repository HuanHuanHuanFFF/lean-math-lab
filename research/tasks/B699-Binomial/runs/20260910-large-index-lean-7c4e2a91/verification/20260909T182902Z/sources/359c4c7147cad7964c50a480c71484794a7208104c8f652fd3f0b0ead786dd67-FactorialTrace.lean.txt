import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.dyadic.Base
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.ThreeWindowSize

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
Explicit short-mantissa trace certificates for factorial, superfactorial and
falling-factorial bounds. A checker compares consecutive supplied states; it
never re-evaluates a recursively defined factorial approximation.
-/

namespace B699FactorialTrace

open B699Dyadic B699LowIndex

structure State where
  k : ℕ
  factorialLower : B699Dyadic.Dyadic
  factorialUpper : B699Dyadic.Dyadic
  windowLower : B699Dyadic.Dyadic
  descLower : B699Dyadic.Dyadic
  deriving DecidableEq, Repr

/-- Semantic bounds, separated from the finite Boolean checks. -/
def Good (N : ℕ) (st : State) : Prop :=
  st.factorialLower.value ≤ st.k.factorial ∧
  st.k.factorial ≤ st.factorialUpper.value ∧
  st.windowLower.value ≤ windowFactorials st.k ∧
  st.descLower.value ≤ N.descFactorial st.k

/-- The common exact state at index zero, valid for every `N`. -/
def initial : State := ⟨0, one, one, one, one⟩

theorem good_initial (N : ℕ) : Good N initial := by
  simp [Good, initial, windowFactorials]

theorem windowFactorials_succ (k : ℕ) :
    windowFactorials (k + 1) = windowFactorials k * (k + 1).factorial := by
  exact Finset.prod_Icc_succ_top (by omega : 1 ≤ k + 1) Nat.factorial

/-- Only local operations on explicitly supplied dyadics are evaluated. -/
def stepCheck (bits N : ℕ) (a b : State) : Bool :=
  decide (b.k = a.k + 1 ∧
    b.factorialLower = mulDown bits (embed b.k) a.factorialLower ∧
    b.factorialUpper = mulUp bits (embed b.k) a.factorialUpper ∧
    b.windowLower = mulDown bits a.windowLower b.factorialLower ∧
    b.descLower = mulDown bits (embed (N - a.k)) a.descLower)

theorem stepCheck_index {bits N : ℕ} {a b : State}
    (hcheck : stepCheck bits N a b = true) : b.k = a.k + 1 := by
  simp only [stepCheck, decide_eq_true_eq] at hcheck
  exact hcheck.1

theorem stepCheck_sound {bits N : ℕ} {a b : State}
    (hcheck : stepCheck bits N a b = true) (ha : Good N a) : Good N b := by
  simp only [stepCheck, decide_eq_true_eq] at hcheck
  rcases hcheck with ⟨hk, hfLo, hfHi, hwLo, hdLo⟩
  rcases ha with ⟨haLo, haHi, haW, haD⟩
  have hbLo : b.factorialLower.value ≤ b.k.factorial := by
    calc
      _ = (mulDown bits (embed b.k) a.factorialLower).value := by rw [hfLo]
      _ ≤ (embed b.k).value * a.factorialLower.value := mulDown_le _ _ _
      _ ≤ b.k * a.k.factorial := by
        rw [value_embed]
        exact Nat.mul_le_mul_left _ haLo
      _ = b.k.factorial := by rw [hk, Nat.factorial_succ]
  have hbHi : b.k.factorial ≤ b.factorialUpper.value := by
    calc
      _ = b.k * a.k.factorial := by rw [hk, Nat.factorial_succ]
      _ ≤ (embed b.k).value * a.factorialUpper.value := by
        rw [value_embed]
        exact Nat.mul_le_mul_left _ haHi
      _ ≤ (mulUp bits (embed b.k) a.factorialUpper).value := mul_le_mulUp _ _ _
      _ = b.factorialUpper.value := by rw [hfHi]
  refine ⟨hbLo, hbHi, ?_, ?_⟩
  · calc
      _ = (mulDown bits a.windowLower b.factorialLower).value := by rw [hwLo]
      _ ≤ a.windowLower.value * b.factorialLower.value := mulDown_le _ _ _
      _ ≤ windowFactorials a.k * b.k.factorial := Nat.mul_le_mul haW hbLo
      _ = windowFactorials b.k := by rw [hk, windowFactorials_succ]
  · calc
      _ = (mulDown bits (embed (N - a.k)) a.descLower).value := by rw [hdLo]
      _ ≤ (embed (N - a.k)).value * a.descLower.value := mulDown_le _ _ _
      _ ≤ (N - a.k) * N.descFactorial a.k := by
        rw [value_embed]
        exact Nat.mul_le_mul_left _ haD
      _ = N.descFactorial b.k := by rw [hk, Nat.descFactorial_succ]

/-- `states` excludes the supplied initial state and includes every subsequent
state, including the endpoint. Thus a 64-step segment supplies exactly 64 states. -/
def traceCheck (bits N : ℕ) : State → List State → Bool
  | _, [] => true
  | start, st :: rest => stepCheck bits N start st && traceCheck bits N st rest

def endpoint : State → List State → State
  | start, [] => start
  | _, st :: rest => endpoint st rest

/-- Soundness can start from any previously established state. Every supplied
state is justified, so callers can select internal indices as well as endpoints. -/
theorem traceCheck_sound {bits N : ℕ} {start : State} {states : List State}
    (hcheck : traceCheck bits N start states = true) (hstart : Good N start) :
    Good N (endpoint start states) ∧ ∀ st ∈ states, Good N st := by
  induction states generalizing start with
  | nil => exact ⟨hstart, by simp⟩
  | cons st rest ih =>
    have hc : stepCheck bits N start st = true ∧ traceCheck bits N st rest = true := by
      simpa only [traceCheck, Bool.and_eq_true] using hcheck
    have hst := stepCheck_sound hc.1 hstart
    have hr := ih hc.2 hst
    refine ⟨hr.1, ?_⟩
    intro b hb
    rcases List.mem_cons.mp hb with rfl | hb
    · exact hst
    · exact hr.2 b hb

theorem good_of_mem_trace {bits N : ℕ} {start st : State} {states : List State}
    (hcheck : traceCheck bits N start states = true) (hstart : Good N start)
    (hmem : st ∈ states) : Good N st :=
  (traceCheck_sound hcheck hstart).2 st hmem

/-- The checked list has no skipped or repeated index: its endpoint is exactly
its initial index plus the number of checked successor steps. -/
theorem endpoint_index {bits N : ℕ} {start : State} {states : List State}
    (hcheck : traceCheck bits N start states = true) :
    (endpoint start states).k = start.k + states.length := by
  induction states generalizing start with
  | nil => simp [endpoint]
  | cons st rest ih =>
    have hc : stepCheck bits N start st = true ∧ traceCheck bits N st rest = true := by
      simpa only [traceCheck, Bool.and_eq_true] using hcheck
    have hk := stepCheck_index hc.1
    rw [endpoint, ih hc.2, hk, List.length_cons]
    omega

/-- An explicit endpoint check supports small independently checked segments.
The endpoint is checked as data rather than assumed to be the requested index. -/
def segmentCheck (bits N : ℕ) (start : State) (states : List State) (finish : State) : Bool :=
  traceCheck bits N start states && decide (endpoint start states = finish)

theorem segmentCheck_sound {bits N : ℕ} {start finish : State} {states : List State}
    (hcheck : segmentCheck bits N start states finish = true) (hstart : Good N start) :
    Good N finish ∧ finish.k = start.k + states.length ∧ ∀ st ∈ states, Good N st := by
  have hc : traceCheck bits N start states = true ∧ endpoint start states = finish := by
    simpa only [segmentCheck, Bool.and_eq_true, decide_eq_true_eq] using hcheck
  have ht := traceCheck_sound hc.1 hstart
  refine ⟨?_, ?_, ht.2⟩
  · simpa only [hc.2] using ht.1
  · rw [← hc.2]
    exact endpoint_index hc.1

end B699FactorialTrace

#print axioms B699FactorialTrace.good_initial
#print axioms B699FactorialTrace.windowFactorials_succ
#print axioms B699FactorialTrace.stepCheck_index
#print axioms B699FactorialTrace.stepCheck_sound
#print axioms B699FactorialTrace.traceCheck_sound
#print axioms B699FactorialTrace.good_of_mem_trace
#print axioms B699FactorialTrace.endpoint_index
#print axioms B699FactorialTrace.segmentCheck_sound
