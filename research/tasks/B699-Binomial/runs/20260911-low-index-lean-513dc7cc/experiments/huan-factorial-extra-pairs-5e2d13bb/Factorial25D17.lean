import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

/-!
# Additional actual BFT factorial prefactor: (c,d)=(25,17)

UNCOMPILED CANDIDATE. The imported common module is accepted under the source
hashes in INPUT_SOURCES.json; this file has not been compiled or axiom-audited.
The complete actual factorial proof follows accepted Factorial3D2.lean, with
an independently computed positive-coefficient certificate for this fixed pair.
No recurrence, factorial bound, or HeightValid hypothesis is assumed.

Source: BFT author manuscript 2007-02-26, (3.1)--(3.3) and page-10 substitution;
PDF SHA256 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.
Only the factorial prefactor is covered. No G/theta, integral maximum, or
B699 original-index claim is made.
-/

namespace Math.B699.ElementaryFactorialBound

/-- Exact numerator after cancellation of positive endpoint factors. -/
def numerator_25_17 (m : ℚ) : ℚ :=
  (42 * m + 1) * (42 * m + 2) * (42 * m + 3) * (42 * m + 4) * (42 * m + 5) * (42 * m + 6) * (42 * m + 7) * (42 * m + 8) * (42 * m + 9) * (42 * m + 10) * (42 * m + 11) * (42 * m + 12) * (42 * m + 13) * (42 * m + 14) * (42 * m + 15) * (42 * m + 16) * (42 * m + 17) * (42 * m + 18) * (42 * m + 19) * (42 * m + 20) * (42 * m + 21) * (42 * m + 22) * (42 * m + 23) * (42 * m + 24) * (42 * m + 25) * (42 * m + 26) * (42 * m + 27) * (42 * m + 28) * (42 * m + 29) * (42 * m + 30) * (42 * m + 31) * (42 * m + 32) * (42 * m + 33) * (42 * m + 34) * (42 * m + 35) * (42 * m + 36) * (42 * m + 37) * (42 * m + 38) * (42 * m + 39) * (42 * m + 40) * (42 * m + 41)

def denominator_25_17 (m : ℚ) : ℚ :=
  (17 * m + 1) * (17 * m + 2) * (17 * m + 3) * (17 * m + 4) * (17 * m + 5) * (17 * m + 6) * (17 * m + 7) * (17 * m + 8) * (17 * m + 9) * (17 * m + 10) * (17 * m + 11) * (17 * m + 12) * (17 * m + 13) * (17 * m + 14) * (17 * m + 15) * (17 * m + 16) * (17 * m + 1) * (17 * m + 2) * (17 * m + 3) * (17 * m + 4) * (17 * m + 5) * (17 * m + 6) * (17 * m + 7) * (17 * m + 8) * (17 * m + 9) * (17 * m + 10) * (17 * m + 11) * (17 * m + 12) * (17 * m + 13) * (17 * m + 14) * (17 * m + 15) * (17 * m + 16) * (8 * m + 1) * (8 * m + 2) * (8 * m + 3) * (8 * m + 4) * (8 * m + 5) * (8 * m + 6) * (8 * m + 7)

def ratio_25_17 (m : ℚ) : ℚ :=
  42 * numerator_25_17 m /
    (8 * 17 ^ 2 * m * (m + 1) * denominator_25_17 m)

/-- All coefficients of the residual in x=m-1 are strictly positive.
The literal integer identity is a proof obligation for ring, not an input axiom. -/
theorem certificate_25_17 (x : ℚ) (hx : 0 ≤ x) :
    42 * 684326450885775034048946719925754910487329 * (x + 3) * numerator_25_17 (x + 1) ≤
      8948501202183757564829109440103438962343214188142942025416704 * 8 * 17 ^ 2 * (x + 2) ^ 3 * denominator_25_17 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 341046469319687405568 * (2280732312574330524144322203611845545746366561639283956379753897735949287024151525201920000000000 + x * (62451464154435130828993738630740532694924959512084776860434009047933644631279004912361612800000000 + x * (832888443723362445713551314162491752531428090563967179364348703169866869874164387369090544128000000 + x * (7208763025202403194739804681601132393518314909785237755516531434631691003895168798706995138376000000 + x * (45521516396458560866493835131552578275571553696163409294867498450790098159826346842859614596773920000 + x * (223545962207738377084195450336274550098092481479559366923066112752620719704135719537612601431084060000 + x * (888597986921702910226773663740872508325581632763249859848246841166997274596401177493600078946749777200 + x * (2938412175337892641429371139174848677779328600339402810236895229214595728790635360446963536320934181600 + x * (8244583549742641858137173679807463345150052510021578653806318395495892431505918313661411437962938382408 + x * (19921155732862579037584766242068488610329147952942374236740377187379780706645891596133319199048280480334 + x * (41929684319703337999981500415109489845078293523182523662178621581009845954944753843695664222033755154971 + x * (77571701229670237311346667996061101541770601609455510778771592448002660732604884048023142270830219945099 + x * (127052077396828399097083550410490573693723295726568176303872090640145605210538692900066487986171490442387 + x * (185296608972763177719032286647313555476556024359632348925380395183174044767142204229905401896842453897127 + x * (241759929213459511681391193933705893354566671990369687848588493299121821626974575046408128407443260722588 + x * (283242495329549575149816464364605416855157663990679343538021202999234485313947182298596482762358015080822 + x * (298869857748305394564547231299692281503215659690075669908485491884544706412851590819076991421350556567902 + x * (284682382623293851432469056692117398366255779437991044283610212665662726360433909987656898424650267074124 + x * (245214055471893024460639239210684110601715149788933874165525656507695183494142630374239427933940125265731 + x * (191230857581343053004092628304012550527649496652351887325625678838679640560598335383622167961145257968039 + x * (135115670344291523140581526102996302899052690659289179545578059506824238191704345165377746963801128669463 + x * (86514840575052676387108614405759235962200881169601268418966215378669957297865405856125658608322074033535 + x * (50189433946971296880174778985549003967865058581347931003367917315598865281340033327541966317114499706790 + x * (26361198192221010435485629897014740853358512964446125654004232884588614852829763982710037258170271504760 + x * (12520718878919602339274255207291983207480256558084515977181484908712335642201105076073114560234715796800 + x * (5368522621801633246032039689878509499412874831842545680379556621613393767412178332084804624357400526640 + x * (2073185746555989552400528936032569438631124681596751527328588203700420916508120952845190597531652940960 + x * (718933682644389865894002172735203388446661080809116400892581861017134371799327239776263957480150505440 + x * (223039711670871735636106705350473418195071018035958954463974661544522677305766655312314608486203106112 + x * (61616362617122824217857957319833708200198192995262726017135793086229685614207733690227915795826494336 + x * (15070287984995878985276385154549157068914408202781596402588081216780847518285538497130709515665152384 + x * (3239949608349732821994370364126351868993294139537267660875825519553102483490043218794708233899464896 + x * (606784401041573656632726145933236124307477477725110672608804612202563943532500568412401391138454528 + x * (97867882661828668287514322534331397404252743825543554142420320728768477967572362098657084793514048 + x * (13394178096974074291935980410524415452525433594134540558686644386267220638881943039355912993766112 + x * (1525049528360956933346364380121492183141060902513473296421835377219417586573092774929536186203728 + x * (140561036897671670847874744149946677179989177761911688021964700176501700341637150813281141082208 + x * (10075496574940933264494321901543477731295933019092697683797043153849667952406642007798086169856 + x * (526960442111082310959582037146177012470396680797647916176436531581562564706566823176290763264 + x * (17887468346103401321321004367430011709293995399713219577613212703581537570517287931942895616 + x * 295751437857366478122183082832376022125899623622168888945211931900082478186412156472328192)))))))))))))))))))))))))))))))))))))))) := by positivity
    _ = 8948501202183757564829109440103438962343214188142942025416704 * 8 * 17 ^ 2 * (x + 2) ^ 3 * denominator_25_17 (x + 1) -
        42 * 684326450885775034048946719925754910487329 * (x + 3) * numerator_25_17 (x + 1) := by
      unfold numerator_25_17 denominator_25_17
      ring

theorem ratio_bound_25_17 (m : ℚ) (hm : 1 ≤ m) :
    ratio_25_17 m ≤ beta 25 17 * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_25_17 (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_25_17 m := by
    unfold denominator_25_17
    positivity
  have hbeta : beta 25 17 = (8948501202183757564829109440103438962343214188142942025416704 : ℚ) / 684326450885775034048946719925754910487329 := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- The actual factorial recurrence for all k, with m=k+1.
All subtracted natural-number indices are nonnegative on this domain. -/
theorem factorial_step_zero_25_17 (k : ℕ) :
    factorialTerm 25 17 0 (k + 2) =
      factorialTerm 25 17 0 (k + 1) * ratio_25_17 ((k : ℚ) + 1) := by
  change (((42 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((17 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((8 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((42 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((17 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((8 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_25_17 ((k : ℚ) + 1)
  have ha : 42 * (k + 2) = 42 * (k + 1) + 42 := by omega
  have hd : 17 * (k + 2) = 17 * (k + 1) + 17 := by omega
  have hb : 8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8 := by omega
  have hp : (8 * (k + 1) - 1) + 1 = 8 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (42 * (k + 1)) 42,
    factorial_add_cast (17 * (k + 1)) 17,
    factorial_add_cast (8 * (k + 1) - 1) 8, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_25_17 numerator_25_17 denominator_25_17
  field_simp
  <;> ring

theorem factorial_step_bound_zero_25_17 (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm 25 17 0 (m + 1) ≤ factorialTerm 25 17 0 m *
      (beta 25 17 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_25_17]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_25_17 ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos 25 17 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_25_17 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 25 17 delta (m + 1) ≤ factorialTerm 25 17 delta m *
      (beta 25 17 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_25_17 m hm
  · rw [factorial_delta_one_eq 25 17 (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq 25 17 m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_25_17 m hm)
      (show (0 : ℚ) ≤ (17 : ℚ) ^ 2 / ((42 : ℚ) * (8 : ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_25_17 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 25 17 delta m ≤
      (2 * factorialTerm 25 17 delta 1 / beta 25 17) *
        beta 25 17 ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_25_17 delta n hdelta hn) hm

/-- A convenient single rational constant for both deltas: F_m < beta^m/2.
The exact K=2*F_1/beta constants were independently checked to be <1/2. -/
theorem factorial_uniform_25_17 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 25 17 delta m < (1 / 2 : ℚ) * beta 25 17 ^ m := by
  have hbeta : 0 < beta 25 17 := by norm_num [beta]
  have hK : 2 * factorialTerm 25 17 delta 1 / beta 25 17 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hbound := strict_bound_from_step hbeta (factorialTerm_pos 25 17 delta 1)
    (fun n hn => factorial_step_bound_25_17 delta n hdelta hn) hm
  exact lt_of_lt_of_le hbound (mul_le_mul_of_nonneg_right hK.le (pow_pos hbeta m).le)

/-- Both actual initial constants are recorded separately.
There is no assumption that the delta=1 constant is smaller. -/
theorem factorial_initial_constants_25_17 :
    2 * factorialTerm 25 17 0 1 / beta 25 17 = (27702545920112817363827685939184355545000017526158842575 : ℚ) / 82198901401599771869755928866323476652917531857574055936 ∧
    2 * factorialTerm 25 17 1 1 / beta 25 17 = (8006035770912604218146201236424278752505005065059905504175 : ℚ) / 27618830870937523348237992099084688155380290704144882794496 := by
  norm_num [factorialTerm, beta, Nat.factorial]

/-- Tight K_delta bound for the downstream Q/E growth constants. -/
theorem factorial_strict_k_25_17 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 25 17 delta m <
      (2 * factorialTerm 25 17 delta 1 / beta 25 17) * beta 25 17 ^ m := by
  exact strict_bound_from_step (by norm_num [beta]) (factorialTerm_pos 25 17 delta 1)
    (fun n hn => factorial_step_bound_25_17 delta n hdelta hn) hm

/-- The middle envelope itself is strictly below beta^m/2. -/
theorem factorial_envelope_lt_half_25_17 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    (2 * factorialTerm 25 17 delta 1 / beta 25 17) *
        beta 25 17 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 25 17 ^ m := by
  have hbeta : 0 < beta 25 17 := by norm_num [beta]
  have hK : 2 * factorialTerm 25 17 delta 1 / beta 25 17 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hF : 0 < factorialTerm 25 17 delta 1 := factorialTerm_pos 25 17 delta 1
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * factorialTerm 25 17 delta 1 / beta 25 17) * beta 25 17 ^ m := by
    positivity
  calc
    _ < (2 * factorialTerm 25 17 delta 1 / beta 25 17) * beta 25 17 ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith
    _ < (1 / 2 : ℚ) * beta 25 17 ^ m := mul_lt_mul_of_pos_right hK (pow_pos hbeta m)

/-- The requested complete strengthened bound for every m>=1 and both deltas. -/
theorem factorial_full_bound_25_17 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 25 17 delta m ≤
        (2 * factorialTerm 25 17 delta 1 / beta 25 17) *
          beta 25 17 ^ m * (m : ℚ) / ((m : ℚ) + 1) ∧
      (2 * factorialTerm 25 17 delta 1 / beta 25 17) *
        beta 25 17 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 25 17 ^ m := by
  exact ⟨factorial_telescoping_25_17 delta m hdelta hm,
    factorial_envelope_lt_half_25_17 delta m hdelta hm⟩

#print axioms Math.B699.ElementaryFactorialBound.certificate_25_17
#print axioms Math.B699.ElementaryFactorialBound.ratio_bound_25_17
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_zero_25_17
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_zero_25_17
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_25_17
#print axioms Math.B699.ElementaryFactorialBound.factorial_telescoping_25_17
#print axioms Math.B699.ElementaryFactorialBound.factorial_uniform_25_17
#print axioms Math.B699.ElementaryFactorialBound.factorial_initial_constants_25_17
#print axioms Math.B699.ElementaryFactorialBound.factorial_strict_k_25_17
#print axioms Math.B699.ElementaryFactorialBound.factorial_envelope_lt_half_25_17
#print axioms Math.B699.ElementaryFactorialBound.factorial_full_bound_25_17

end Math.B699.ElementaryFactorialBound
