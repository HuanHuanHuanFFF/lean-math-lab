import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernSieveFloor
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCorrectness
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCorrectness
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.AllNumericFinal
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernCoreTransfer
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
namespace B699ActualPi
@[expose] def pairs : List (Nat × Nat) := [(1023, 172), (1048, 175), (1068, 179), (1096, 183), (1128, 188), (1180, 193), (1236, 202), (1302, 212), (1426, 224), (1558, 245), (1722, 268), (1972, 297), (2047, 309), (2280, 338), (2592, 377), (2998, 429), (3546, 497), (4095, 569), (4758, 652), (5572, 758), (6556, 888), (7740, 1045), (8191, 1102), (9342, 1256), (10666, 1433), (12210, 1637), (13968, 1874), (15942, 2144), (16383, 2203), (18040, 2422), (19860, 2668), (21828, 2937), (23970, 3228), (26290, 3545), (28816, 3889), (31572, 4263), (32767, 4421), (34578, 4674), (36492, 4933), (38472, 5206), (40566, 5489), (42700, 5788), (44916, 6092), (47286, 6408), (49746, 6747), (52288, 7098), (54948, 7461), (57688, 7840), (60546, 8231), (63522, 8639), (65535, 8912), (66382, 9029), (67236, 9146), (68070, 9263), (68916, 9378), (69828, 9495), (70752, 9621), (71652, 9748), (72546, 9872), (73426, 9995), (74328, 10116), (75226, 10241), (76122, 10365), (77080, 10488), (77988, 10620), (78900, 10745), (79840, 10871), (80760, 11000), (81690, 11127), (82618, 11255), (83592, 11383), (84550, 11518), (85548, 11650), (86530, 11787), (87522, 11922), (88530, 12059), (89520, 12198), (90522, 12334), (91512, 12473), (92502, 12609), (93480, 12745), (94446, 12880), (95418, 13013), (96408, 13147), (97398, 13284), (98418, 13420), (99442, 13561), (100492, 13702), (101550, 13847), (102592, 13992), (103656, 14136), (104742, 14283), (105838, 14432), (106920, 14583), (108028, 14732), (109110, 14885), (110206, 15034), (111316, 15185), (112456, 15338), (113608, 15495), (114760, 15654), (115902, 15813), (117070, 15970), (118230, 16131), (119416, 16291), (120640, 16455), (121836, 16623), (123042, 16788), (124230, 16954), (125440, 17118), (126652, 17285), (127870, 17452), (129120, 17620), (130362, 17792), (131071, 17889)]
@[expose] def pool : Finset Nat := B699ModernPrunedSieve.primes.toFinset
private theorem pool_prime : ∀ p ∈ pool, p.Prime := by decide
private theorem pool_card : pool.card = 16 := by decide
private theorem pool_max : ∀ p ∈ pool, p ≤ 53 := by decide
private theorem b_ge53 : ∀ bt ∈ pairs, 53 ≤ bt.1 := by decide
private theorem tuple_map : pairs = B699CorePrunedSieve.AllNumeric.pairs := by decide

theorem actual_primeCounting_bound : ∀ bt ∈ pairs, Nat.primeCounting bt.1 ≤ bt.2 := by
  intro bt hbt
  have hnum := B699CorePrunedSieve.AllNumeric.pairs_valid bt (by rw [← tuple_map]; exact hbt)
  rw [← B699ModernPrunedSieve.primes_eq_core, ← B699ModernPrunedSieve.count_eq_core] at hnum
  have hrec := B699ModernPrunedSieve.count_eq_floorSum
    B699ModernPrunedSieve.primes B699ModernPrunedSieve.primes_nodup bt.1
  change B699ModernPrunedSieve.count B699ModernPrunedSieve.primes bt.1 =
    ∑ t ∈ pool.powerset, (-1 : Int) ^ t.card * (bt.1 / t.prod id : Nat) at hrec
  have hfloor := B699ModernSieve.survivors_card_floor_formula pool pool_prime bt.1
  have heq : ((B699ModernSieve.survivors pool bt.1).card : Int) =
      B699ModernPrunedSieve.count B699ModernPrunedSieve.primes bt.1 := hfloor.trans hrec.symm
  rw [← heq] at hnum
  have hbound : ∀ p ∈ pool, p ≤ bt.1 := fun p hp => (pool_max p hp).trans (b_ge53 bt hbt)
  have hupper := B699ModernSieve.primeCounting_sieve_upper
    (by decide : pool.Nonempty) pool_prime hbound
  rw [pool_card] at hupper
  omega
end B699ActualPi
#check @B699ActualPi.actual_primeCounting_bound
#print axioms B699ActualPi.actual_primeCounting_bound

