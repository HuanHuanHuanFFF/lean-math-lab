import Mathlib.Tactic.Ring
import Mathlib.RingTheory.Coprime.Basic

namespace B686Round5Contact

def curve (z d : ℤ) : ℤ :=
  1 * z ^ 5 - 40 * z ^ 3 * d ^ 2 - 200 * z ^ 2 * d ^ 3 - 420 * z * d ^ 4 - 340 * d ^ 5 - 45 * z ^ 3 + 540 * z * d ^ 2 + 900 * d ^ 3 + 324 * z

def auxiliary (z d : ℤ) : ℤ :=
  - 369360 + 579312 * d - 54486 * d ^ 2 + 706770 * d ^ 3 + 1694640 * d ^ 4 - 1035560 * d ^ 5 + 204120 * z + 2430 * z * d + 152181 * z * d ^ 2 + 241800 * z * d ^ 3 - 716040 * z * d ^ 4 + 17280 * z ^ 2 - 80865 * z ^ 2 * d - 41946 * z ^ 2 * d ^ 2 - 127070 * z ^ 2 * d ^ 3 - 22680 * z ^ 3 - 270 * z ^ 3 * d - 109 * z ^ 3 * d ^ 2 + 2640 * z ^ 4 + 1833 * z ^ 4 * d

def quotient1 (y d : ℤ) : ℤ :=
  2592000 + 6257088 * d + 1480608 * d ^ 2 - 834000 * d ^ 3 - 1065200 * d ^ 4 + 112320 * y - 1036368 * y * d - 496152 * y * d ^ 2 + 202000 * y * d ^ 3 - 64080 * y ^ 2 + 172188 * y ^ 2 * d + 113974 * y ^ 2 * d ^ 2 + 14460 * y ^ 3 - 28653 * y ^ 3 * d - 2725 * y ^ 4
def residual1 (u v q : ℤ) : ℤ :=
  - 5147737920 * v ^ 6 - 8309033280 * v ^ 7 * q - 2967864000 * v ^ 8 * q ^ 2 - 362168000 * v ^ 9 * q ^ 3 - 1579500000 * u * v ^ 5 - 5736268800 * u * v ^ 6 * q - 2566411680 * u * v ^ 7 * q ^ 2 - 378704000 * u * v ^ 8 * q ^ 3 + 978674400 * u ^ 2 * v ^ 4 - 36675000 * u ^ 2 * v ^ 5 * q - 311569440 * u ^ 2 * v ^ 6 * q ^ 2 - 89448840 * u ^ 2 * v ^ 7 * q ^ 3 - 49977000 * u ^ 3 * v ^ 3 + 503343900 * u ^ 3 * v ^ 4 * q + 291417000 * u ^ 3 * v ^ 5 * q ^ 2 + 35919060 * u ^ 3 * v ^ 6 * q ^ 3 - 43696260 * u ^ 4 * v ^ 2 - 59677200 * u ^ 4 * v ^ 3 * q + 59047800 * u ^ 4 * v ^ 4 * q ^ 2 + 17914040 * u ^ 4 * v ^ 5 * q ^ 3 + 9276282 * u ^ 5 * v - 24950358 * u ^ 5 * v ^ 2 * q - 22616640 * u ^ 5 * v ^ 3 * q ^ 2 - 1250940 * u ^ 5 * v ^ 4 * q ^ 3 + 933930 * u ^ 6 + 4896423 * u ^ 6 * v * q - 4306668 * u ^ 6 * v ^ 2 * q ^ 2 - 1893120 * u ^ 6 * v ^ 3 * q ^ 3 + 488655 * u ^ 7 * q + 687402 * u ^ 7 * v * q ^ 2 - 222974 * u ^ 7 * v ^ 2 * q ^ 3 + 67290 * u ^ 8 * q ^ 2 + 28653 * u ^ 8 * v * q ^ 3 + 2725 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity1 (u v q : ℤ) :
    20736 * auxiliary (6 + q * u) (q * v) =
      quotient1 (q * u) (q * v) * curve (6 + q * u) (q * v) +
        q ^ 6 * residual1 u v q := by
  unfold auxiliary quotient1 curve residual1
  ring

theorem local1 (z d q : ℤ) (hy : q ∣ z - (6)) (hd : q ∣ d)
    (hcurve : curve z d = 0) : q ^ 6 ∣ 20736 * auxiliary z d := by
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 6 + q * u := by omega
  subst z
  refine ⟨residual1 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity1 u v q

def quotient2 (y d : ℤ) : ℤ :=
  87480 + 1314387 * d + 558171 * d ^ 2 - 141750 * d ^ 3 - 711400 * d ^ 4 + 174960 * y - 435699 * y * d - 311076 * y * d ^ 2 - 35250 * y * d ^ 3 - 81000 * y ^ 2 + 144963 * y ^ 2 * d + 124583 * y ^ 2 * d ^ 2 + 29520 * y ^ 3 - 48291 * y ^ 3 * d - 10120 * y ^ 4
def residual2 (u v q : ℤ) : ℤ :=
  1406768040 * v ^ 6 - 629086860 * v ^ 7 * q - 944559000 * v ^ 8 * q ^ 2 - 241876000 * v ^ 9 * q ^ 3 + 394875000 * u * v ^ 5 - 891642600 * u * v ^ 6 * q - 1063395840 * u * v ^ 7 * q ^ 2 - 310773000 * u * v ^ 8 * q ^ 3 - 288424800 * u ^ 2 * v ^ 4 - 247477500 * u ^ 2 * v ^ 5 * q - 251143920 * u ^ 2 * v ^ 6 * q ^ 2 - 114726780 * u ^ 2 * v ^ 7 * q ^ 3 - 33939000 * u ^ 3 * v ^ 3 + 56156400 * u ^ 3 * v ^ 4 * q + 78999000 * u ^ 3 * v ^ 5 * q ^ 2 + 399920 * u ^ 3 * v ^ 6 * q ^ 3 + 21688560 * u ^ 4 * v ^ 2 + 22510080 * u ^ 4 * v ^ 3 * q + 13768440 * u ^ 4 * v ^ 4 * q ^ 2 - 216420 * u ^ 4 * v ^ 5 * q ^ 3 - 7821522 * u ^ 5 * v + 424134 * u ^ 5 * v ^ 2 * q - 17155740 * u ^ 5 * v ^ 3 * q ^ 2 - 8213880 * u ^ 5 * v ^ 4 * q ^ 3 - 1654560 * u ^ 6 + 434349 * u ^ 6 * v * q - 4020069 * u ^ 6 * v ^ 2 * q ^ 2 - 3920390 * u ^ 6 * v ^ 3 * q ^ 3 + 93600 * u ^ 7 * q + 579402 * u ^ 7 * v * q ^ 2 - 529383 * u ^ 7 * v ^ 2 * q ^ 3 + 122280 * u ^ 8 * q ^ 2 + 48291 * u ^ 8 * v * q ^ 3 + 10120 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity2 (u v q : ℤ) :
    2187 * auxiliary (3 + q * u) (q * v) =
      quotient2 (q * u) (q * v) * curve (3 + q * u) (q * v) +
        q ^ 6 * residual2 u v q := by
  unfold auxiliary quotient2 curve residual2
  ring

theorem local2 (z d q : ℤ) (hy : q ∣ z - (3)) (hd : q ∣ d)
    (hcurve : curve z d = 0) : q ^ 6 ∣ 2187 * auxiliary z d := by
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 3 + q * u := by omega
  subst z
  refine ⟨residual2 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity2 u v q

def quotient4 (y d : ℤ) : ℤ :=
  132840 - 47061 * d - 188019 * d ^ 2 + 275250 * d ^ 3 - 3800 * d ^ 4 - 23760 * y - 16497 * y * d + 63000 * y * d ^ 2 - 53750 * y * d ^ 3 + 14760 * y ^ 2 - 5229 * y ^ 2 * d - 41891 * y ^ 2 * d ^ 2 - 2640 * y ^ 3 - 1833 * y ^ 3 * d + 1640 * y ^ 4
def residual4 (u v q : ℤ) : ℤ :=
  466576200 * v ^ 6 - 414161460 * v ^ 7 * q + 98373000 * v ^ 8 * q ^ 2 - 1292000 * v ^ 9 * q ^ 3 + 394875000 * u * v ^ 5 - 544683960 * u * v ^ 6 * q + 209310000 * u * v ^ 7 * q ^ 2 - 19871000 * u * v ^ 8 * q ^ 3 + 56700000 * u ^ 2 * v ^ 4 - 274342500 * u ^ 2 * v ^ 5 * q + 198382800 * u ^ 2 * v ^ 6 * q ^ 2 - 37577940 * u ^ 2 * v ^ 7 * q ^ 3 - 29727000 * u ^ 3 * v ^ 3 - 41799600 * u ^ 3 * v ^ 4 * q + 92445000 * u ^ 3 * v ^ 5 * q ^ 2 - 29119440 * u ^ 3 * v ^ 6 * q ^ 3 - 6804000 * u ^ 4 * v ^ 2 + 14376240 * u ^ 4 * v ^ 3 * q + 15522360 * u ^ 4 * v ^ 4 * q ^ 2 - 10740460 * u ^ 4 * v ^ 5 * q ^ 3 + 282366 * u ^ 5 * v + 5444514 * u ^ 5 * v ^ 2 * q - 3126780 * u ^ 5 * v ^ 3 * q ^ 2 - 1349640 * u ^ 5 * v ^ 4 * q ^ 3 + 142560 * u ^ 6 + 20547 * u ^ 6 * v * q - 1387365 * u ^ 6 * v ^ 2 * q ^ 2 + 308430 * u ^ 6 * v ^ 3 * q ^ 3 - 128160 * u ^ 7 * q - 22266 * u ^ 7 * v * q ^ 2 + 107491 * u ^ 7 * v ^ 2 * q ^ 3 + 27240 * u ^ 8 * q ^ 2 + 1833 * u ^ 8 * v * q ^ 3 - 1640 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity4 (u v q : ℤ) :
    81 * auxiliary (-3 + q * u) (q * v) =
      quotient4 (q * u) (q * v) * curve (-3 + q * u) (q * v) +
        q ^ 6 * residual4 u v q := by
  unfold auxiliary quotient4 curve residual4
  ring

theorem local4 (z d q : ℤ) (hy : q ∣ z - (-3)) (hd : q ∣ d)
    (hcurve : curve z d = 0) : q ^ 6 ∣ 81 * auxiliary z d := by
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = -3 + q * u := by omega
  subst z
  refine ⟨residual4 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity4 u v q

/-- info: 'B686Round5Contact.identity1' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity1
/-- info: 'B686Round5Contact.local1' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms local1
/-- info: 'B686Round5Contact.identity2' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity2
/-- info: 'B686Round5Contact.local2' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms local2
/-- info: 'B686Round5Contact.identity4' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity4
/-- info: 'B686Round5Contact.local4' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms local4
end B686Round5Contact
