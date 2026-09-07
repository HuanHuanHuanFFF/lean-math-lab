"""Original-target consumers for main's four high-contact support exclusions."""
from pathlib import Path
import json
HERE=Path(__file__).resolve().parent
DATA=json.loads((HERE/'selected-four-input.json').read_text())['rows']
code='''import research.tasks.«B686-Four».round6.a.FourTail
import research.tasks.«B686-Four».round6.a.Finite
import research.tasks.«B686-Four».round5.main.PositionPartition
import research.tasks.«B686-Four».independent.TargetBridge

namespace B686Round6A
open B686Round4K5 B686Round5Tail B686Round6High

theorem high_p5_eq_shift_product (n : ℤ) : p5 n = B686Round4Shift.product 5 n := by
  rw [B686Round4Cubic.product_five]
  rfl

theorem split_four_positions (n d i j k l : ℕ)
    (hi : 1 ≤ i) (hij : i < j) (hjk : j < k) (hkl : k < l) (hl : l ≤ 5)
    (h6 : Nat.Coprime d 6) (hdiv : d ∣ (n + i) * (n + j) * (n + k) * (n + l)) :
    ∃ P Q R S : ℕ, d = P * Q * R * S ∧
      P ∣ n + i ∧ Q ∣ n + j ∧ R ∣ n + k ∧ S ∣ n + l ∧
      Nat.Coprime P Q ∧ Nat.Coprime P R ∧ Nat.Coprime P S ∧
      Nat.Coprime Q R ∧ Nat.Coprime Q S ∧ Nat.Coprime R S := by
  obtain ⟨T, S, hT, hS, hd⟩ := exists_dvd_and_dvd_of_dvd_mul hdiv
  obtain ⟨U, R, hU, hR, hT⟩ := exists_dvd_and_dvd_of_dvd_mul hT
  obtain ⟨P, Q, hP, hQ, hU⟩ := exists_dvd_and_dvd_of_dvd_mul hU
  have heq : d = P * Q * R * S := by rw [hd, hT, hU]
  have hPd : P ∣ d := by
    rw [heq]
    exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_right P Q) R) S
  have hQd : Q ∣ d := by
    rw [heq]
    exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_left Q P) R) S
  have hRd : R ∣ d := by rw [heq]; exact dvd_mul_of_dvd_left (dvd_mul_left R (P * Q)) S
  refine ⟨P, Q, R, S, heq, hP, hQ, hR, hS, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact B686Round5Partition.coprime_slot_groups n d P Q i j hi hij (by omega) hP hQ hPd h6
  · exact B686Round5Partition.coprime_slot_groups n d P R i k hi (by omega) (by omega) hP hR hPd h6
  · exact B686Round5Partition.coprime_slot_groups n d P S i l hi (by omega) hl hP hS hPd h6
  · exact B686Round5Partition.coprime_slot_groups n d Q R j k (by omega) hjk (by omega) hQ hR hQd h6
  · exact B686Round5Partition.coprime_slot_groups n d Q S j l (by omega) (by omega) hl hQ hS hQd h6
  · exact B686Round5Partition.coprime_slot_groups n d R S k l (by omega) hkl hl hR hS hRd h6

'''
guards=['high_p5_eq_shift_product','split_four_positions']
for data in DATA:
    row=data['row'];name=row['name'];a,b,c,e=row['slots'];D=row['D'];R=row['R']
    code+=f'''theorem no_auxiliary{name}_divisor_tail (n d : ℤ) (hn : 0 ≤ n) (hd : 50000 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n)
    (hdiv : d ^ {R} ∣ auxiliary{name} (error n d 3) d) : False := by
  obtain ⟨hl, hu⟩ := refined_strip n d hn (by omega) heq
  obtain ⟨hlo, hhi⟩ := auxiliary{name}_bounds (error n d 3) d hd hl hu
  have hsize : d ^ {R} ≤ -auxiliary{name} (error n d 3) d :=
    Int.le_of_dvd (by omega) (dvd_neg.mpr hdiv)
  have hd0 : 0 ≤ d := by omega
  have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 {D})
  nlinarith only [hlo, hhi, hsize, h]

theorem not_four_positions{name}_shift (n d P Q R S : ℕ) (hd5 : 5 ≤ d)
    (hd : d = P * Q * R * S)
    (hP : P ∣ n + {a}) (hQ : Q ∣ n + {b}) (hR : R ∣ n + {c}) (hS : S ∣ n + {e})
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hPS : Nat.Coprime P S)
    (hQR : Nat.Coprime Q R) (hQS : Nat.Coprime Q S) (hRS : Nat.Coprime R S)
    (h6 : Nat.Coprime d 6) :
    (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) ≠
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i)) := by
  by_cases hsmall : d < 50000
  · exact not_four_below_50000 n d hd5 hsmall
  intro heq
  have hp' := B686Round4Shift.nat_shift_equation 5 n d heq
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    simpa only [high_p5_eq_shift_product] using hp'
  have hdiv := four_position_contact{name} n d P Q R S hp'
    (by exact_mod_cast hd) (by exact_mod_cast hP) (by exact_mod_cast hQ)
    (by exact_mod_cast hR) (by exact_mod_cast hS)
    hPQ.isCoprime hPR.isCoprime hPS.isCoprime hQR.isCoprime hQS.isCoprime hRS.isCoprime
    h6.isCoprime
  exact no_auxiliary{name}_divisor_tail n d (by omega) (by omega) hp hdiv

theorem not_four_positions{name} (n m P Q R S : ℕ) (hm : n + 5 ≤ m)
    (hd : m - n = P * Q * R * S)
    (hP : P ∣ n + {a}) (hQ : Q ∣ n + {b}) (hR : R ∣ n + {c}) (hS : S ∣ n + {e})
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hPS : Nat.Coprime P S)
    (hQR : Nat.Coprime Q R) (hQS : Nat.Coprime Q S) (hRS : Nat.Coprime R S)
    (h6 : Nat.Coprime (m - n) 6) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  have hadd : n + (m - n) = m := by omega
  simpa only [hadd, B686Target.product] using
    not_four_positions{name}_shift n (m - n) P Q R S (by omega) hd
      hP hQ hR hS hPQ hPR hPS hQR hQS hRS h6

theorem not_four_support{name} (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + {a}) * (n + {b}) * (n + {c}) * (n + {e})) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  obtain ⟨P, Q, R, S, hd, hP, hQ, hR, hS, hPQ, hPR, hPS, hQR, hQS, hRS⟩ :=
    split_four_positions n (m - n) {a} {b} {c} {e} (by omega) (by omega) (by omega) (by omega) (by omega) h6 hdiv
  exact not_four_positions{name} n m P Q R S hm hd hP hQ hR hS hPQ hPR hPS hQR hQS hRS h6

theorem not_four_support{name}_ratio (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + {a}) * (n + {b}) * (n + {c}) * (n + {e})) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro h
  exact not_four_support{name} n m hm h6 hdiv ((B686Target.ratio_iff 5 n m).mp h)

'''
    guards += [f'no_auxiliary{name}_divisor_tail',f'not_four_positions{name}_shift',f'not_four_positions{name}',f'not_four_support{name}',f'not_four_support{name}_ratio']
for name in guards:code+=f"/-- info: 'B686Round6A.{name}' depends on axioms: [propext, Classical.choice, Quot.sound] -/\n#guard_msgs in\n#print axioms {name}\n"
code+='end B686Round6A\n'
(HERE/'FourPositions.lean').write_text(code)
print('Generated FourPositions.lean;',len(guards),'axiom guards')
