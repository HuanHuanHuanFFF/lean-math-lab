import Lean.Elab.Tactic.Omega

/-! Fixed paper 115-row numerical IC certificates only. This module proves
integer conditions and interval coverage, not pi(b)<=T or the sieve formula. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 20000
set_option maxHeartbeats 1600000
namespace B699ContinuationRows
structure Row where
  a : Nat
  b : Nat
  k : Nat
  bound : Nat
def valid (r : Row) : Prop :=
  1000 ≤ r.a ∧ r.a ≤ r.b ∧ r.b < 2 ^ r.k ∧
    100 * (3 * (12 + r.k) * r.bound + 5 * 12 + 9 * r.k) ≤ (100 * 12 - 1) * r.a
instance (r : Row) : Decidable (valid r) := by unfold valid; infer_instance
def rows : List Row := [
  ⟨1000, 1023, 10, 172⟩,
  ⟨1024, 1048, 11, 175⟩,
  ⟨1049, 1068, 11, 179⟩,
  ⟨1069, 1096, 11, 183⟩,
  ⟨1097, 1128, 11, 188⟩,
  ⟨1129, 1180, 11, 193⟩,
  ⟨1181, 1236, 11, 202⟩,
  ⟨1237, 1302, 11, 212⟩,
  ⟨1303, 1426, 11, 224⟩,
  ⟨1427, 1558, 11, 245⟩,
  ⟨1559, 1722, 11, 268⟩,
  ⟨1723, 1972, 11, 297⟩,
  ⟨1973, 2047, 11, 309⟩,
  ⟨2048, 2280, 12, 338⟩,
  ⟨2281, 2592, 12, 377⟩,
  ⟨2593, 2998, 12, 429⟩,
  ⟨2999, 3546, 12, 497⟩,
  ⟨3547, 4095, 12, 569⟩,
  ⟨4096, 4758, 13, 652⟩,
  ⟨4759, 5572, 13, 758⟩,
  ⟨5573, 6556, 13, 888⟩,
  ⟨6557, 7740, 13, 1045⟩,
  ⟨7741, 8191, 13, 1102⟩,
  ⟨8192, 9342, 14, 1256⟩,
  ⟨9343, 10666, 14, 1433⟩,
  ⟨10667, 12210, 14, 1637⟩,
  ⟨12211, 13968, 14, 1874⟩,
  ⟨13969, 15942, 14, 2144⟩,
  ⟨15943, 16383, 14, 2203⟩,
  ⟨16384, 18040, 15, 2422⟩,
  ⟨18041, 19860, 15, 2668⟩,
  ⟨19861, 21828, 15, 2937⟩,
  ⟨21829, 23970, 15, 3228⟩,
  ⟨23971, 26290, 15, 3545⟩,
  ⟨26291, 28816, 15, 3889⟩,
  ⟨28817, 31572, 15, 4263⟩,
  ⟨31573, 32767, 15, 4421⟩,
  ⟨32768, 34578, 16, 4674⟩,
  ⟨34579, 36492, 16, 4933⟩,
  ⟨36493, 38472, 16, 5206⟩,
  ⟨38473, 40566, 16, 5489⟩,
  ⟨40567, 42700, 16, 5788⟩,
  ⟨42701, 44916, 16, 6092⟩,
  ⟨44917, 47286, 16, 6408⟩,
  ⟨47287, 49746, 16, 6747⟩,
  ⟨49747, 52288, 16, 7098⟩,
  ⟨52289, 54948, 16, 7461⟩,
  ⟨54949, 57688, 16, 7840⟩,
  ⟨57689, 60546, 16, 8231⟩,
  ⟨60547, 63522, 16, 8639⟩,
  ⟨63523, 65535, 16, 8912⟩,
  ⟨65536, 66382, 17, 9029⟩,
  ⟨66383, 67236, 17, 9146⟩,
  ⟨67237, 68070, 17, 9263⟩,
  ⟨68071, 68916, 17, 9378⟩,
  ⟨68917, 69828, 17, 9495⟩,
  ⟨69829, 70752, 17, 9621⟩,
  ⟨70753, 71652, 17, 9748⟩,
  ⟨71653, 72546, 17, 9872⟩,
  ⟨72547, 73426, 17, 9995⟩,
  ⟨73427, 74328, 17, 10116⟩,
  ⟨74329, 75226, 17, 10241⟩,
  ⟨75227, 76122, 17, 10365⟩,
  ⟨76123, 77080, 17, 10488⟩,
  ⟨77081, 77988, 17, 10620⟩,
  ⟨77989, 78900, 17, 10745⟩,
  ⟨78901, 79840, 17, 10871⟩,
  ⟨79841, 80760, 17, 11000⟩,
  ⟨80761, 81690, 17, 11127⟩,
  ⟨81691, 82618, 17, 11255⟩,
  ⟨82619, 83592, 17, 11383⟩,
  ⟨83593, 84550, 17, 11518⟩,
  ⟨84551, 85548, 17, 11650⟩,
  ⟨85549, 86530, 17, 11787⟩,
  ⟨86531, 87522, 17, 11922⟩,
  ⟨87523, 88530, 17, 12059⟩,
  ⟨88531, 89520, 17, 12198⟩,
  ⟨89521, 90522, 17, 12334⟩,
  ⟨90523, 91512, 17, 12473⟩,
  ⟨91513, 92502, 17, 12609⟩,
  ⟨92503, 93480, 17, 12745⟩,
  ⟨93481, 94446, 17, 12880⟩,
  ⟨94447, 95418, 17, 13013⟩,
  ⟨95419, 96408, 17, 13147⟩,
  ⟨96409, 97398, 17, 13284⟩,
  ⟨97399, 98418, 17, 13420⟩,
  ⟨98419, 99442, 17, 13561⟩,
  ⟨99443, 100492, 17, 13702⟩,
  ⟨100493, 101550, 17, 13847⟩,
  ⟨101551, 102592, 17, 13992⟩,
  ⟨102593, 103656, 17, 14136⟩,
  ⟨103657, 104742, 17, 14283⟩,
  ⟨104743, 105838, 17, 14432⟩,
  ⟨105839, 106920, 17, 14583⟩,
  ⟨106921, 108028, 17, 14732⟩,
  ⟨108029, 109110, 17, 14885⟩,
  ⟨109111, 110206, 17, 15034⟩,
  ⟨110207, 111316, 17, 15185⟩,
  ⟨111317, 112456, 17, 15338⟩,
  ⟨112457, 113608, 17, 15495⟩,
  ⟨113609, 114760, 17, 15654⟩,
  ⟨114761, 115902, 17, 15813⟩,
  ⟨115903, 117070, 17, 15970⟩,
  ⟨117071, 118230, 17, 16131⟩,
  ⟨118231, 119416, 17, 16291⟩,
  ⟨119417, 120640, 17, 16455⟩,
  ⟨120641, 121836, 17, 16623⟩,
  ⟨121837, 123042, 17, 16788⟩,
  ⟨123043, 124230, 17, 16954⟩,
  ⟨124231, 125440, 17, 17118⟩,
  ⟨125441, 126652, 17, 17285⟩,
  ⟨126653, 127870, 17, 17452⟩,
  ⟨127871, 129120, 17, 17620⟩,
  ⟨129121, 130362, 17, 17792⟩,
  ⟨130363, 131071, 17, 17889⟩]
def numericCheck : Bool := rows.all (fun r => decide (valid r))
theorem numericCheck_true : numericCheck = true := by decide
theorem all_rows_valid : ∀ r ∈ rows, valid r := by
  intro r hr
  exact of_decide_eq_true ((List.all_eq_true.mp numericCheck_true) r hr)
def chainCheck (start stop : Nat) : List Row → Bool
  | [] => decide (start = stop)
  | r :: rs => decide (start = r.a) && chainCheck (r.b + 1) stop rs
theorem chainCheck_true : chainCheck 1000 131072 rows = true := by decide
theorem chain_covers {rs : List Row} {start stop : Nat}
    (hc : chainCheck start stop rs = true) :
    ∀ i : Nat, start ≤ i → i < stop → ∃ r ∈ rs, r.a ≤ i ∧ i ≤ r.b := by
  induction rs generalizing start with
  | nil =>
    have hs : start = stop := of_decide_eq_true hc
    intro i hi hlo
    omega
  | cons r rs ih =>
    have hh : decide (start = r.a) = true ∧ chainCheck (r.b + 1) stop rs = true := by
      cases h1 : decide (start = r.a) <;> cases h2 : chainCheck (r.b + 1) stop rs <;>
        simp_all [chainCheck]
    have hs : start = r.a := of_decide_eq_true hh.1
    intro i hi hlo
    by_cases hb : i ≤ r.b
    · exact ⟨r, by simp, by omega, hb⟩
    · obtain ⟨s, hsm, hsa, hsb⟩ := ih hh.2 i (by omega) hlo
      exact ⟨s, by simp [hsm], hsa, hsb⟩
theorem covers_1000_131071 {i : Nat} (hi : 1000 ≤ i) (hup : i ≤ 131071) :
    ∃ r ∈ rows, r.a ≤ i ∧ i ≤ r.b :=
  chain_covers chainCheck_true i hi (by omega)
theorem row_count : rows.length = 115 := by decide
end B699ContinuationRows
#check @B699ContinuationRows.all_rows_valid
#check @B699ContinuationRows.covers_1000_131071
#print axioms B699ContinuationRows.all_rows_valid
#print axioms B699ContinuationRows.covers_1000_131071
#print axioms B699ContinuationRows.row_count
