import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

/-!
UNCOMPILED CANDIDATE. Fixed original i11 row02, (c,d)=(23,15).
The actual factorial recurrence and the degree-36 positive residual are proved
here. No factorial bound or G bound is assumed. Each delta keeps its own K.
Frozen input: FINAL_PLAN row02 and qe-certificates/row-02.json.
Only a growth prerequisite; no original B699 index is settled by this file.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ElementaryFactorialBound

/-- Exact fixed (23,15) actual factorial ratio. -/
def numerator_23_15 (m : ℚ) : ℚ :=
  (38 * m + 1) * (38 * m + 2) * (38 * m + 3) * (38 * m + 4) * (38 * m + 5) * (38 * m + 6) * (38 * m + 7) * (38 * m + 8) * (38 * m + 9) * (38 * m + 10) * (38 * m + 11) * (38 * m + 12) * (38 * m + 13) * (38 * m + 14) * (38 * m + 15) * (38 * m + 16) * (38 * m + 17) * (38 * m + 18) * (38 * m + 19) * (38 * m + 20) * (38 * m + 21) * (38 * m + 22) * (38 * m + 23) * (38 * m + 24) * (38 * m + 25) * (38 * m + 26) * (38 * m + 27) * (38 * m + 28) * (38 * m + 29) * (38 * m + 30) * (38 * m + 31) * (38 * m + 32) * (38 * m + 33) * (38 * m + 34) * (38 * m + 35) * (38 * m + 36) * (38 * m + 37)

def denominator_23_15 (m : ℚ) : ℚ :=
  (15 * m + 1) * (15 * m + 2) * (15 * m + 3) * (15 * m + 4) * (15 * m + 5) * (15 * m + 6) * (15 * m + 7) * (15 * m + 8) * (15 * m + 9) * (15 * m + 10) * (15 * m + 11) * (15 * m + 12) * (15 * m + 13) * (15 * m + 14) * (15 * m + 1) * (15 * m + 2) * (15 * m + 3) * (15 * m + 4) * (15 * m + 5) * (15 * m + 6) * (15 * m + 7) * (15 * m + 8) * (15 * m + 9) * (15 * m + 10) * (15 * m + 11) * (15 * m + 12) * (15 * m + 13) * (15 * m + 14) * (8 * m + 1) * (8 * m + 2) * (8 * m + 3) * (8 * m + 4) * (8 * m + 5) * (8 * m + 6) * (8 * m + 7)

def ratio_23_15 (m : ℚ) : ℚ :=
  38 * numerator_23_15 m /
    (8 * 15 ^ 2 * m * (m + 1) * denominator_23_15 m)

/-- Degree-36 positive residual, recomputed from the exact actual factorial ratio. -/
theorem certificate_23_15 (x : ℚ) (hx : 0 ≤ x) :
    38 * 191751059232884086668491363525390625 * (x + 3) * numerator_23_15 (x + 1) ≤
      64129340766667961004998043349750267214506111671353344 * 8 * 15 ^ 2 * (x + 2) ^ 3 * denominator_23_15 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 174626316288000000 * (1903139924356617609550013200361382898937643300383986979017412859100571622969016320000 + x * (46837993467208038603096777861250221334488908857640263508241456021232936823144838144000 + x * (559788131567413464296497105690984465712244359260129847638238455649584345299853712870400 + x * (4328444185518785535930753384650518437285643772146102187055608854016957306472696498397440 + x * (24338857839565261878908878878095542598351568977914530917269696482529006785994929163551552 + x * (106061896518866727962057687105396804196901853791010798240539857373757664397056611578875600 + x * (372747472443468654370626566767137466251166326958113633603119523522558940318526960163379296 + x * (1085548724163244262452159789475288840187764141713022901525566083866238332755325853488661240 + x * (2671382867940362715416154435391556212966349886525353228733708217715510677322101336885909764 + x * (5636360459533697236956798969444959397665133961915739279301877498049085819521409072153650045 + x * (10310478591224897150892767791897459880819297278341896547582529016361210547249326354546288536 + x * (16494756251619302721954000733016203125186964134294989443620818476690760517552517748946113445 + x * (23236040087401444521521154181839861581137005198758687149507287615379840229234912451585505354 + x * (28977400995329524488394319187585685402040030018316343615948718983634425285062706358398272230 + x * (32126363700934074295148049046940883758573677021107112451744284179051441784757175280930796688 + x * (31766488109105092911457442397776823970174624014277305101665099624500696524479380391795182250 + x * (28081452179251235848034026785807109019802261991652997153559645958270333256339736683675247000 + x * (22229387207884328224482254649227710455214689212206057634720980131378768801680420464360273125 + x * (15772924723685391889300787672217007844986936972989645814542582584561191241346670987825895000 + x * (10034888714302542355373426565679740255339430663493211350367438759530134851140617405001953125 + x * (5722577645771962638124154657918807107778944755816485929234687757102376454259742856207031250 + x * (2922351021180233644983336261465061325419369683611158763201996649940633862594311634156250000 + x * (1334202546145286468608196805136425415173799796335817146113559736893788436278041402156250000 + x * (543281109557060466191960926050655042580230710073624401691266528829305927688733510742187500 + x * (196671858245932795847539889565618887104881122248586698365028367089411775995895578125000000 + x * (63030807700144165826991841057103712591225856915851469119493977238530837133469487304687500 + x * (17787977832667555088890657130227354456153932456485879618781655432672253108480185546875000 + x * (4390390982004785867975436586425463493100364399231488778456605242025096456860961914062500 + x * (939539694778788725761719667314028602563480387214500070145633959615397200131835937500000 + x * (172394229934031447101793413525098865504839126815207649100942900838374503781127929687500 + x * (26730331028129341207591122077155700783906455793374104012444521812735959429931640625000 + x * (3434701706946471130350012883132770040435656312201291499386450946124115371704101562500 + x * (355955395790910354229581083297710653133345675566476856036485183638039398193359375000 + x * (28590427783718254124769297174285091012419172258762592793386501508453369140625000000 + x * (1670073588409406736750880498675591611153794485800277703377644517199707031250000000 + x * (63119693223957421829871365373274823137748846060582519026809667968750000000000000 + x * (1158578637808315100262511269342916831867422391459811349402539062500000000000000))))))))))))))))))))))))))))))))))))) := by positivity
    _ = 64129340766667961004998043349750267214506111671353344 * 8 * 15 ^ 2 * (x + 2) ^ 3 * denominator_23_15 (x + 1) -
        38 * 191751059232884086668491363525390625 * (x + 3) * numerator_23_15 (x + 1) := by
      unfold numerator_23_15 denominator_23_15
      ring

theorem ratio_bound_23_15 (m : ℚ) (hm : 1 ≤ m) :
    ratio_23_15 m ≤ beta 23 15 * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_23_15 (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_23_15 m := by
    unfold denominator_23_15
    positivity
  have hbeta : beta 23 15 = (64129340766667961004998043349750267214506111671353344 : ℚ) / 191751059232884086668491363525390625 := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- The actual factorial recurrence for all k, with m=k+1.
All subtracted natural-number indices are nonnegative on this domain. -/
theorem factorial_step_zero_23_15 (k : ℕ) :
    factorialTerm 23 15 0 (k + 2) =
      factorialTerm 23 15 0 (k + 1) * ratio_23_15 ((k : ℚ) + 1) := by
  change (((38 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((15 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((8 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((38 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((15 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((8 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_23_15 ((k : ℚ) + 1)
  have ha : 38 * (k + 2) = 38 * (k + 1) + 38 := by omega
  have hd : 15 * (k + 2) = 15 * (k + 1) + 15 := by omega
  have hb : 8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8 := by omega
  have hp : (8 * (k + 1) - 1) + 1 = 8 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (38 * (k + 1)) 38,
    factorial_add_cast (15 * (k + 1)) 15,
    factorial_add_cast (8 * (k + 1) - 1) 8, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_23_15 numerator_23_15 denominator_23_15
  field_simp
  <;> ring

theorem factorial_step_bound_zero_23_15 (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm 23 15 0 (m + 1) ≤ factorialTerm 23 15 0 m *
      (beta 23 15 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_23_15]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_23_15 ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos 23 15 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_23_15 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 23 15 delta (m + 1) ≤ factorialTerm 23 15 delta m *
      (beta 23 15 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_23_15 m hm
  · rw [factorial_delta_one_eq 23 15 (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq 23 15 m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_23_15 m hm)
      (show (0 : ℚ) ≤ (15 : ℚ) ^ 2 / ((38 : ℚ) * (8 : ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_23_15 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 23 15 delta m ≤
      (2 * factorialTerm 23 15 delta 1 / beta 23 15) *
        beta 23 15 ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_23_15 delta n hdelta hn) hm

/-- A convenient single rational constant for both deltas: F_m < beta^m/2.
The exact K=2*F_1/beta constants were independently checked to be <1/2. -/
theorem factorial_uniform_23_15 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 23 15 delta m < (1 / 2 : ℚ) * beta 23 15 ^ m := by
  have hbeta : 0 < beta 23 15 := by norm_num [beta]
  have hK : 2 * factorialTerm 23 15 delta 1 / beta 23 15 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hbound := strict_bound_from_step hbeta (factorialTerm_pos 23 15 delta 1)
    (fun n hn => factorial_step_bound_23_15 delta n hdelta hn) hm
  exact lt_of_lt_of_le hbound (mul_le_mul_of_nonneg_right hK.le (pow_pos hbeta m).le)

/-- Both actual initial constants are recorded separately.
There is no assumption that the delta=1 constant is smaller. -/
theorem factorial_initial_constants_23_15 :
    2 * factorialTerm 23 15 0 1 / beta 23 15 = (62958057501119183131392267532646656036376953125 : ℚ) / 173480081281022661132807206949419654644504500496 ∧
    2 * factorialTerm 23 15 1 1 / beta 23 15 = (14165562937751816204563260194845497608184814453125 : ℚ) / 52737944709430888984373390912623575011929368150784 := by
  norm_num [factorialTerm, beta, Nat.factorial]

/-- Tight K_delta bound for the downstream Q/E growth constants. -/
theorem factorial_strict_k_23_15 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 23 15 delta m <
      (2 * factorialTerm 23 15 delta 1 / beta 23 15) * beta 23 15 ^ m := by
  exact strict_bound_from_step (by norm_num [beta]) (factorialTerm_pos 23 15 delta 1)
    (fun n hn => factorial_step_bound_23_15 delta n hdelta hn) hm

/-- The middle envelope itself is strictly below beta^m/2. -/
theorem factorial_envelope_lt_half_23_15 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    (2 * factorialTerm 23 15 delta 1 / beta 23 15) *
        beta 23 15 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 23 15 ^ m := by
  have hbeta : 0 < beta 23 15 := by norm_num [beta]
  have hK : 2 * factorialTerm 23 15 delta 1 / beta 23 15 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hF : 0 < factorialTerm 23 15 delta 1 := factorialTerm_pos 23 15 delta 1
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * factorialTerm 23 15 delta 1 / beta 23 15) * beta 23 15 ^ m := by
    positivity
  calc
    _ < (2 * factorialTerm 23 15 delta 1 / beta 23 15) * beta 23 15 ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith
    _ < (1 / 2 : ℚ) * beta 23 15 ^ m := mul_lt_mul_of_pos_right hK (pow_pos hbeta m)

/-- The requested complete strengthened bound for every m>=1 and both deltas. -/
theorem factorial_full_bound_23_15 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 23 15 delta m ≤
        (2 * factorialTerm 23 15 delta 1 / beta 23 15) *
          beta 23 15 ^ m * (m : ℚ) / ((m : ℚ) + 1) ∧
      (2 * factorialTerm 23 15 delta 1 / beta 23 15) *
        beta 23 15 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 23 15 ^ m := by
  exact ⟨factorial_telescoping_23_15 delta m hdelta hm,
    factorial_envelope_lt_half_23_15 delta m hdelta hm⟩

#print axioms Math.B699.ElementaryFactorialBound.certificate_23_15
#print axioms Math.B699.ElementaryFactorialBound.ratio_bound_23_15
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_zero_23_15
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_zero_23_15
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_23_15
#print axioms Math.B699.ElementaryFactorialBound.factorial_telescoping_23_15
#print axioms Math.B699.ElementaryFactorialBound.factorial_uniform_23_15
#print axioms Math.B699.ElementaryFactorialBound.factorial_initial_constants_23_15
#print axioms Math.B699.ElementaryFactorialBound.factorial_strict_k_23_15
#print axioms Math.B699.ElementaryFactorialBound.factorial_envelope_lt_half_23_15
#print axioms Math.B699.ElementaryFactorialBound.factorial_full_bound_23_15

end Math.B699.ElementaryFactorialBound
