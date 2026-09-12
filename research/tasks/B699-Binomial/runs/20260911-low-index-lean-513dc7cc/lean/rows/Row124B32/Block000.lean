import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row124_height : HeightCertificateDatum := { i := 124, r := 41, s := 87, n0Power10 := 8 }

def row124_goods : List GoodSegment := [
  { lower := 250, upper := 364, witness := RowWitness.topPrime 241 },
  { lower := 365, upper := 482, witness := RowWitness.topPrime 359 },
  { lower := 483, upper := 602, witness := RowWitness.topPrime 479 },
  { lower := 603, upper := 724, witness := RowWitness.topPrime 601 },
  { lower := 725, upper := 842, witness := RowWitness.topPrime 719 },
  { lower := 843, upper := 962, witness := RowWitness.topPrime 839 },
  { lower := 963, upper := 1076, witness := RowWitness.topPrime 953 },
  { lower := 1077, upper := 1192, witness := RowWitness.topPrime 1069 },
  { lower := 1193, upper := 1316, witness := RowWitness.topPrime 1193 },
  { lower := 1317, upper := 1430, witness := RowWitness.topPrime 1307 },
  { lower := 1431, upper := 1552, witness := RowWitness.topPrime 1429 },
  { lower := 1553, upper := 1676, witness := RowWitness.topPrime 1553 },
  { lower := 1677, upper := 1792, witness := RowWitness.topPrime 1669 },
  { lower := 1793, upper := 1912, witness := RowWitness.topPrime 1789 },
  { lower := 1913, upper := 2036, witness := RowWitness.topPrime 1913 },
  { lower := 2037, upper := 2152, witness := RowWitness.topPrime 2029 },
  { lower := 2153, upper := 2276, witness := RowWitness.topPrime 2153 },
  { lower := 2277, upper := 2396, witness := RowWitness.topPrime 2273 },
  { lower := 2397, upper := 2516, witness := RowWitness.topPrime 2393 },
  { lower := 2517, upper := 2626, witness := RowWitness.topPrime 2503 },
  { lower := 2627, upper := 2744, witness := RowWitness.topPrime 2621 },
  { lower := 2745, upper := 2864, witness := RowWitness.topPrime 2741 },
  { lower := 2865, upper := 2984, witness := RowWitness.topPrime 2861 },
  { lower := 2985, upper := 3094, witness := RowWitness.topPrime 2971 },
  { lower := 3095, upper := 3212, witness := RowWitness.topPrime 3089 },
  { lower := 3213, upper := 3332, witness := RowWitness.topPrime 3209 },
  { lower := 3333, upper := 3454, witness := RowWitness.topPrime 3331 },
  { lower := 3455, upper := 3572, witness := RowWitness.topPrime 3449 },
  { lower := 3573, upper := 3694, witness := RowWitness.topPrime 3571 },
  { lower := 3695, upper := 3814, witness := RowWitness.topPrime 3691 },
  { lower := 3815, upper := 3926, witness := RowWitness.topPrime 3803 },
  { lower := 3927, upper := 4046, witness := RowWitness.topPrime 3923 },
  { lower := 4047, upper := 4150, witness := RowWitness.topPrime 4027 },
  { lower := 4151, upper := 4262, witness := RowWitness.topPrime 4139 },
  { lower := 4263, upper := 4384, witness := RowWitness.topPrime 4261 },
  { lower := 4385, upper := 4496, witness := RowWitness.topPrime 4373 },
  { lower := 4497, upper := 4616, witness := RowWitness.topPrime 4493 },
  { lower := 4617, upper := 4726, witness := RowWitness.topPrime 4603 },
  { lower := 4727, upper := 4846, witness := RowWitness.topPrime 4723 },
  { lower := 4847, upper := 4954, witness := RowWitness.topPrime 4831 },
  { lower := 4955, upper := 5074, witness := RowWitness.topPrime 4951 },
  { lower := 5075, upper := 5182, witness := RowWitness.topPrime 5059 },
  { lower := 5183, upper := 5302, witness := RowWitness.topPrime 5179 },
  { lower := 5303, upper := 5426, witness := RowWitness.topPrime 5303 },
  { lower := 5427, upper := 5542, witness := RowWitness.topPrime 5419 },
  { lower := 5543, upper := 5654, witness := RowWitness.topPrime 5531 },
  { lower := 5655, upper := 5776, witness := RowWitness.topPrime 5653 },
  { lower := 5777, upper := 5872, witness := RowWitness.topPrime 5749 },
  { lower := 5873, upper := 5992, witness := RowWitness.topPrime 5869 },
  { lower := 5993, upper := 6110, witness := RowWitness.topPrime 5987 },
  { lower := 6111, upper := 6224, witness := RowWitness.topPrime 6101 },
  { lower := 6225, upper := 6344, witness := RowWitness.topPrime 6221 },
  { lower := 6345, upper := 6466, witness := RowWitness.topPrime 6343 },
  { lower := 6467, upper := 6574, witness := RowWitness.topPrime 6451 },
  { lower := 6575, upper := 6694, witness := RowWitness.topPrime 6571 },
  { lower := 6695, upper := 6814, witness := RowWitness.topPrime 6691 },
  { lower := 6815, upper := 6926, witness := RowWitness.topPrime 6803 },
  { lower := 6927, upper := 7040, witness := RowWitness.topPrime 6917 },
  { lower := 7041, upper := 7162, witness := RowWitness.topPrime 7039 },
  { lower := 7163, upper := 7282, witness := RowWitness.topPrime 7159 },
  { lower := 7283, upper := 7406, witness := RowWitness.topPrime 7283 },
  { lower := 7407, upper := 7516, witness := RowWitness.topPrime 7393 },
  { lower := 7517, upper := 7640, witness := RowWitness.topPrime 7517 },
  { lower := 7641, upper := 7762, witness := RowWitness.topPrime 7639 },
  { lower := 7763, upper := 7882, witness := RowWitness.topPrime 7759 },
  { lower := 7883, upper := 8006, witness := RowWitness.topPrime 7883 },
  { lower := 8007, upper := 8116, witness := RowWitness.topPrime 7993 },
  { lower := 8117, upper := 8240, witness := RowWitness.topPrime 8117 },
  { lower := 8241, upper := 8360, witness := RowWitness.topPrime 8237 },
  { lower := 8361, upper := 8476, witness := RowWitness.topPrime 8353 },
  { lower := 8477, upper := 8590, witness := RowWitness.topPrime 8467 },
  { lower := 8591, upper := 8704, witness := RowWitness.topPrime 8581 },
  { lower := 8705, upper := 8822, witness := RowWitness.topPrime 8699 },
  { lower := 8823, upper := 8944, witness := RowWitness.topPrime 8821 },
  { lower := 8945, upper := 9064, witness := RowWitness.topPrime 8941 },
  { lower := 9065, upper := 9182, witness := RowWitness.topPrime 9059 },
  { lower := 9183, upper := 9304, witness := RowWitness.topPrime 9181 },
  { lower := 9305, upper := 9416, witness := RowWitness.topPrime 9293 },
  { lower := 9417, upper := 9536, witness := RowWitness.topPrime 9413 },
  { lower := 9537, upper := 9656, witness := RowWitness.topPrime 9533 },
  { lower := 9657, upper := 9772, witness := RowWitness.topPrime 9649 },
  { lower := 9773, upper := 9892, witness := RowWitness.topPrime 9769 },
  { lower := 9893, upper := 10010, witness := RowWitness.topPrime 9887 },
  { lower := 10011, upper := 10132, witness := RowWitness.topPrime 10009 },
  { lower := 10133, upper := 10256, witness := RowWitness.topPrime 10133 },
  { lower := 10257, upper := 10376, witness := RowWitness.topPrime 10253 },
  { lower := 10377, upper := 10492, witness := RowWitness.topPrime 10369 },
  { lower := 10493, upper := 10610, witness := RowWitness.topPrime 10487 },
  { lower := 10611, upper := 10730, witness := RowWitness.topPrime 10607 },
  { lower := 10731, upper := 10852, witness := RowWitness.topPrime 10729 },
  { lower := 10853, upper := 10976, witness := RowWitness.topPrime 10853 },
  { lower := 10977, upper := 11096, witness := RowWitness.topPrime 10973 },
  { lower := 11097, upper := 11216, witness := RowWitness.topPrime 11093 },
  { lower := 11217, upper := 11336, witness := RowWitness.topPrime 11213 },
  { lower := 11337, upper := 11452, witness := RowWitness.topPrime 11329 },
  { lower := 11453, upper := 11570, witness := RowWitness.topPrime 11447 },
  { lower := 11571, upper := 11674, witness := RowWitness.topPrime 11551 },
  { lower := 11675, upper := 11780, witness := RowWitness.topPrime 11657 },
  { lower := 11781, upper := 11902, witness := RowWitness.topPrime 11779 },
  { lower := 11903, upper := 12026, witness := RowWitness.topPrime 11903 },
  { lower := 12027, upper := 12134, witness := RowWitness.topPrime 12011 },
  { lower := 12135, upper := 12242, witness := RowWitness.topPrime 12119 },
  { lower := 12243, upper := 12364, witness := RowWitness.topPrime 12241 },
  { lower := 12365, upper := 12470, witness := RowWitness.topPrime 12347 },
  { lower := 12471, upper := 12580, witness := RowWitness.topPrime 12457 },
  { lower := 12581, upper := 12700, witness := RowWitness.topPrime 12577 },
  { lower := 12701, upper := 12820, witness := RowWitness.topPrime 12697 },
  { lower := 12821, upper := 12944, witness := RowWitness.topPrime 12821 },
  { lower := 12945, upper := 13064, witness := RowWitness.topPrime 12941 },
  { lower := 13065, upper := 13186, witness := RowWitness.topPrime 13063 },
  { lower := 13187, upper := 13310, witness := RowWitness.topPrime 13187 },
  { lower := 13311, upper := 13432, witness := RowWitness.topPrime 13309 },
  { lower := 13433, upper := 13544, witness := RowWitness.topPrime 13421 },
  { lower := 13545, upper := 13660, witness := RowWitness.topPrime 13537 },
  { lower := 13661, upper := 13772, witness := RowWitness.topPrime 13649 },
  { lower := 13773, upper := 13886, witness := RowWitness.topPrime 13763 },
  { lower := 13887, upper := 14006, witness := RowWitness.topPrime 13883 },
  { lower := 14007, upper := 14122, witness := RowWitness.topPrime 13999 },
  { lower := 14123, upper := 14230, witness := RowWitness.topPrime 14107 },
  { lower := 14231, upper := 14344, witness := RowWitness.topPrime 14221 },
  { lower := 14345, upper := 14464, witness := RowWitness.topPrime 14341 },
  { lower := 14465, upper := 14584, witness := RowWitness.topPrime 14461 },
  { lower := 14585, upper := 14686, witness := RowWitness.topPrime 14563 },
  { lower := 14687, upper := 14806, witness := RowWitness.topPrime 14683 },
  { lower := 14807, upper := 14920, witness := RowWitness.topPrime 14797 },
  { lower := 14921, upper := 15020, witness := RowWitness.topPrime 14897 },
  { lower := 15021, upper := 15140, witness := RowWitness.topPrime 15017 },
  { lower := 15141, upper := 15252, witness := RowWitness.topPrime 15139 },
  { lower := 15379, upper := 15432, witness := RowWitness.topPrime 15377 },
  { lower := 15463, upper := 15502, witness := RowWitness.topPrime 15461 },
  { lower := 15987, upper := 16095, witness := RowWitness.topPrime 15973 },
  { lower := 16428, upper := 16507, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16910, witness := RowWitness.topPrime 16787 },
  { lower := 16911, upper := 16933, witness := RowWitness.topPrime 16903 },
  { lower := 17405, upper := 17426, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17528, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17619, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17699, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18604, witness := RowWitness.topPrime 18481 },
  { lower := 18605, upper := 18614, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18740, witness := RowWitness.topPrime 18617 },
  { lower := 18741, upper := 18854, witness := RowWitness.topPrime 18731 },
  { lower := 18855, upper := 18873, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19289, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19784, witness := RowWitness.topPrime 19661 },
  { lower := 19785, upper := 19806, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19896, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20004, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20284, witness := RowWitness.topPrime 20161 },
  { lower := 20285, upper := 20287, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20462, witness := RowWitness.topPrime 20399 },
  { lower := 20577, upper := 20658, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20700, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21406, witness := RowWitness.topPrime 21283 },
  { lower := 21407, upper := 21419, witness := RowWitness.topPrime 21407 },
  { lower := 21870, upper := 21986, witness := RowWitness.topPrime 21863 },
  { lower := 21987, upper := 22027, witness := RowWitness.topPrime 21977 },
  { lower := 22090, upper := 22093, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22213, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22449, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22568, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23884, witness := RowWitness.topPrime 23761 },
  { lower := 23885, upper := 23885, witness := RowWitness.topPrime 23879 },
  { lower := 24010, upper := 24130, witness := RowWitness.topPrime 24007 },
  { lower := 24131, upper := 24160, witness := RowWitness.topPrime 24121 },
  { lower := 24167, upper := 24180, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24452, witness := RowWitness.topPrime 24329 },
  { lower := 24453, upper := 24490, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24694, witness := RowWitness.topPrime 24571 },
  { lower := 24695, upper := 24699, witness := RowWitness.topPrime 24691 },
  { lower := 25000, upper := 25087, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25312, witness := RowWitness.topPrime 25189 },
  { lower := 25313, upper := 25338, witness := RowWitness.topPrime 25309 },
  { lower := 26364, upper := 26367, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26487, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26534, witness := RowWitness.topPrime 26501 },
  { lower := 26934, upper := 27019, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27559, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27858, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28213, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28248, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28684, witness := RowWitness.topPrime 28573 },
  { lower := 28812, upper := 28840, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29601, witness := RowWitness.topPrime 29581 },
  { lower := 30258, upper := 30369, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30716, witness := RowWitness.topPrime 30593 },
  { lower := 30717, upper := 30726, witness := RowWitness.topPrime 30713 },
  { lower := 30926, upper := 31022, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31316, witness := RowWitness.topPrime 31193 },
  { lower := 31317, upper := 31373, witness := RowWitness.topPrime 31307 },
  { lower := 31423, upper := 31452, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32891, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33737, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34460, witness := RowWitness.topPrime 34337 },
  { lower := 34461, upper := 34514, witness := RowWitness.topPrime 34457 },
  { lower := 36517, upper := 36620, witness := RowWitness.topPrime 36497 },
  { lower := 36621, upper := 36624, witness := RowWitness.topPrime 36607 },
  { lower := 37303, upper := 37333, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37569, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38414, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39446, witness := RowWitness.topPrime 39323 },
  { lower := 39447, upper := 39449, witness := RowWitness.topPrime 39443 },
  { lower := 40401, upper := 40451, witness := RowWitness.topPrime 40387 },
  { lower := 43750, upper := 43810, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45376, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47644, witness := RowWitness.topPrime 47521 },
  { lower := 47645, upper := 47647, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48084, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48856, witness := RowWitness.topPrime 48733 },
  { lower := 48857, upper := 48857, witness := RowWitness.topPrime 48857 },
  { lower := 49152, upper := 49253, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50533, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51128, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55564, witness := RowWitness.topPrime 55441 },
  { lower := 55565, upper := 55570, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57245, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58687, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59079, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62533, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65659, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68762, witness := RowWitness.topPrime 68639 },
  { lower := 68763, upper := 68774, witness := RowWitness.topPrime 68749 },
  { lower := 68921, upper := 69013, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71410, witness := RowWitness.topPrime 71287 },
  { lower := 71411, upper := 71412, witness := RowWitness.topPrime 71411 },
  { lower := 73205, upper := 73290, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137904, witness := RowWitness.topPrime 137831 }
]

def row124_layers : List CoverLayer := [
  { lower := 15252, upper := 30504, M := 18 },
  { lower := 30504, upper := 61008, M := 14 },
  { lower := 61008, upper := 122016, M := 11 },
  { lower := 122016, upper := 244032, M := 8 },
  { lower := 244032, upper := 488064, M := 7 },
  { lower := 488064, upper := 976128, M := 5 },
  { lower := 976128, upper := 1952256, M := 4 },
  { lower := 1952256, upper := 3904512, M := 3 },
  { lower := 3904512, upper := 7809024, M := 3 },
  { lower := 7809024, upper := 15618048, M := 2 },
  { lower := 15618048, upper := 31236096, M := 2 },
  { lower := 31236096, upper := 62472192, M := 1 },
  { lower := 62472192, upper := 100000000, M := 1 }
]

def row124 : FiniteCoverRow := {
  height := row124_height,
  goods := row124_goods,
  layers := row124_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good000_checked :
    goodSegmentCheck 124 41 87
      { lower := 250, upper := 364, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good001_checked :
    goodSegmentCheck 124 41 87
      { lower := 365, upper := 482, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good002_checked :
    goodSegmentCheck 124 41 87
      { lower := 483, upper := 602, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good003_checked :
    goodSegmentCheck 124 41 87
      { lower := 603, upper := 724, witness := RowWitness.topPrime 601 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good004_checked :
    goodSegmentCheck 124 41 87
      { lower := 725, upper := 842, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good005_checked :
    goodSegmentCheck 124 41 87
      { lower := 843, upper := 962, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good006_checked :
    goodSegmentCheck 124 41 87
      { lower := 963, upper := 1076, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good007_checked :
    goodSegmentCheck 124 41 87
      { lower := 1077, upper := 1192, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good008_checked :
    goodSegmentCheck 124 41 87
      { lower := 1193, upper := 1316, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good009_checked :
    goodSegmentCheck 124 41 87
      { lower := 1317, upper := 1430, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good010_checked :
    goodSegmentCheck 124 41 87
      { lower := 1431, upper := 1552, witness := RowWitness.topPrime 1429 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good011_checked :
    goodSegmentCheck 124 41 87
      { lower := 1553, upper := 1676, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good012_checked :
    goodSegmentCheck 124 41 87
      { lower := 1677, upper := 1792, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good013_checked :
    goodSegmentCheck 124 41 87
      { lower := 1793, upper := 1912, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good014_checked :
    goodSegmentCheck 124 41 87
      { lower := 1913, upper := 2036, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good015_checked :
    goodSegmentCheck 124 41 87
      { lower := 2037, upper := 2152, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good016_checked :
    goodSegmentCheck 124 41 87
      { lower := 2153, upper := 2276, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good017_checked :
    goodSegmentCheck 124 41 87
      { lower := 2277, upper := 2396, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good018_checked :
    goodSegmentCheck 124 41 87
      { lower := 2397, upper := 2516, witness := RowWitness.topPrime 2393 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good019_checked :
    goodSegmentCheck 124 41 87
      { lower := 2517, upper := 2626, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good020_checked :
    goodSegmentCheck 124 41 87
      { lower := 2627, upper := 2744, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good021_checked :
    goodSegmentCheck 124 41 87
      { lower := 2745, upper := 2864, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good022_checked :
    goodSegmentCheck 124 41 87
      { lower := 2865, upper := 2984, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good023_checked :
    goodSegmentCheck 124 41 87
      { lower := 2985, upper := 3094, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good024_checked :
    goodSegmentCheck 124 41 87
      { lower := 3095, upper := 3212, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good025_checked :
    goodSegmentCheck 124 41 87
      { lower := 3213, upper := 3332, witness := RowWitness.topPrime 3209 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good026_checked :
    goodSegmentCheck 124 41 87
      { lower := 3333, upper := 3454, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good027_checked :
    goodSegmentCheck 124 41 87
      { lower := 3455, upper := 3572, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good028_checked :
    goodSegmentCheck 124 41 87
      { lower := 3573, upper := 3694, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good029_checked :
    goodSegmentCheck 124 41 87
      { lower := 3695, upper := 3814, witness := RowWitness.topPrime 3691 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good030_checked :
    goodSegmentCheck 124 41 87
      { lower := 3815, upper := 3926, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good031_checked :
    goodSegmentCheck 124 41 87
      { lower := 3927, upper := 4046, witness := RowWitness.topPrime 3923 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good032_checked :
    goodSegmentCheck 124 41 87
      { lower := 4047, upper := 4150, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good033_checked :
    goodSegmentCheck 124 41 87
      { lower := 4151, upper := 4262, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good034_checked :
    goodSegmentCheck 124 41 87
      { lower := 4263, upper := 4384, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good035_checked :
    goodSegmentCheck 124 41 87
      { lower := 4385, upper := 4496, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good036_checked :
    goodSegmentCheck 124 41 87
      { lower := 4497, upper := 4616, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good037_checked :
    goodSegmentCheck 124 41 87
      { lower := 4617, upper := 4726, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good038_checked :
    goodSegmentCheck 124 41 87
      { lower := 4727, upper := 4846, witness := RowWitness.topPrime 4723 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good039_checked :
    goodSegmentCheck 124 41 87
      { lower := 4847, upper := 4954, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good040_checked :
    goodSegmentCheck 124 41 87
      { lower := 4955, upper := 5074, witness := RowWitness.topPrime 4951 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good041_checked :
    goodSegmentCheck 124 41 87
      { lower := 5075, upper := 5182, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good042_checked :
    goodSegmentCheck 124 41 87
      { lower := 5183, upper := 5302, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good043_checked :
    goodSegmentCheck 124 41 87
      { lower := 5303, upper := 5426, witness := RowWitness.topPrime 5303 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good044_checked :
    goodSegmentCheck 124 41 87
      { lower := 5427, upper := 5542, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good045_checked :
    goodSegmentCheck 124 41 87
      { lower := 5543, upper := 5654, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good046_checked :
    goodSegmentCheck 124 41 87
      { lower := 5655, upper := 5776, witness := RowWitness.topPrime 5653 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good047_checked :
    goodSegmentCheck 124 41 87
      { lower := 5777, upper := 5872, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good048_checked :
    goodSegmentCheck 124 41 87
      { lower := 5873, upper := 5992, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good049_checked :
    goodSegmentCheck 124 41 87
      { lower := 5993, upper := 6110, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good050_checked :
    goodSegmentCheck 124 41 87
      { lower := 6111, upper := 6224, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good051_checked :
    goodSegmentCheck 124 41 87
      { lower := 6225, upper := 6344, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good052_checked :
    goodSegmentCheck 124 41 87
      { lower := 6345, upper := 6466, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good053_checked :
    goodSegmentCheck 124 41 87
      { lower := 6467, upper := 6574, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good054_checked :
    goodSegmentCheck 124 41 87
      { lower := 6575, upper := 6694, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good055_checked :
    goodSegmentCheck 124 41 87
      { lower := 6695, upper := 6814, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good056_checked :
    goodSegmentCheck 124 41 87
      { lower := 6815, upper := 6926, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good057_checked :
    goodSegmentCheck 124 41 87
      { lower := 6927, upper := 7040, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good058_checked :
    goodSegmentCheck 124 41 87
      { lower := 7041, upper := 7162, witness := RowWitness.topPrime 7039 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good059_checked :
    goodSegmentCheck 124 41 87
      { lower := 7163, upper := 7282, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good060_checked :
    goodSegmentCheck 124 41 87
      { lower := 7283, upper := 7406, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good061_checked :
    goodSegmentCheck 124 41 87
      { lower := 7407, upper := 7516, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good062_checked :
    goodSegmentCheck 124 41 87
      { lower := 7517, upper := 7640, witness := RowWitness.topPrime 7517 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good063_checked :
    goodSegmentCheck 124 41 87
      { lower := 7641, upper := 7762, witness := RowWitness.topPrime 7639 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good064_checked :
    goodSegmentCheck 124 41 87
      { lower := 7763, upper := 7882, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good065_checked :
    goodSegmentCheck 124 41 87
      { lower := 7883, upper := 8006, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good066_checked :
    goodSegmentCheck 124 41 87
      { lower := 8007, upper := 8116, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good067_checked :
    goodSegmentCheck 124 41 87
      { lower := 8117, upper := 8240, witness := RowWitness.topPrime 8117 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good068_checked :
    goodSegmentCheck 124 41 87
      { lower := 8241, upper := 8360, witness := RowWitness.topPrime 8237 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good069_checked :
    goodSegmentCheck 124 41 87
      { lower := 8361, upper := 8476, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good070_checked :
    goodSegmentCheck 124 41 87
      { lower := 8477, upper := 8590, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good071_checked :
    goodSegmentCheck 124 41 87
      { lower := 8591, upper := 8704, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good072_checked :
    goodSegmentCheck 124 41 87
      { lower := 8705, upper := 8822, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good073_checked :
    goodSegmentCheck 124 41 87
      { lower := 8823, upper := 8944, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good074_checked :
    goodSegmentCheck 124 41 87
      { lower := 8945, upper := 9064, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good075_checked :
    goodSegmentCheck 124 41 87
      { lower := 9065, upper := 9182, witness := RowWitness.topPrime 9059 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good076_checked :
    goodSegmentCheck 124 41 87
      { lower := 9183, upper := 9304, witness := RowWitness.topPrime 9181 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good077_checked :
    goodSegmentCheck 124 41 87
      { lower := 9305, upper := 9416, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good078_checked :
    goodSegmentCheck 124 41 87
      { lower := 9417, upper := 9536, witness := RowWitness.topPrime 9413 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good079_checked :
    goodSegmentCheck 124 41 87
      { lower := 9537, upper := 9656, witness := RowWitness.topPrime 9533 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good080_checked :
    goodSegmentCheck 124 41 87
      { lower := 9657, upper := 9772, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good081_checked :
    goodSegmentCheck 124 41 87
      { lower := 9773, upper := 9892, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good082_checked :
    goodSegmentCheck 124 41 87
      { lower := 9893, upper := 10010, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good083_checked :
    goodSegmentCheck 124 41 87
      { lower := 10011, upper := 10132, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good084_checked :
    goodSegmentCheck 124 41 87
      { lower := 10133, upper := 10256, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good085_checked :
    goodSegmentCheck 124 41 87
      { lower := 10257, upper := 10376, witness := RowWitness.topPrime 10253 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good086_checked :
    goodSegmentCheck 124 41 87
      { lower := 10377, upper := 10492, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good087_checked :
    goodSegmentCheck 124 41 87
      { lower := 10493, upper := 10610, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good088_checked :
    goodSegmentCheck 124 41 87
      { lower := 10611, upper := 10730, witness := RowWitness.topPrime 10607 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good089_checked :
    goodSegmentCheck 124 41 87
      { lower := 10731, upper := 10852, witness := RowWitness.topPrime 10729 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good090_checked :
    goodSegmentCheck 124 41 87
      { lower := 10853, upper := 10976, witness := RowWitness.topPrime 10853 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good091_checked :
    goodSegmentCheck 124 41 87
      { lower := 10977, upper := 11096, witness := RowWitness.topPrime 10973 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good092_checked :
    goodSegmentCheck 124 41 87
      { lower := 11097, upper := 11216, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good093_checked :
    goodSegmentCheck 124 41 87
      { lower := 11217, upper := 11336, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good094_checked :
    goodSegmentCheck 124 41 87
      { lower := 11337, upper := 11452, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good095_checked :
    goodSegmentCheck 124 41 87
      { lower := 11453, upper := 11570, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good096_checked :
    goodSegmentCheck 124 41 87
      { lower := 11571, upper := 11674, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good097_checked :
    goodSegmentCheck 124 41 87
      { lower := 11675, upper := 11780, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good098_checked :
    goodSegmentCheck 124 41 87
      { lower := 11781, upper := 11902, witness := RowWitness.topPrime 11779 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good099_checked :
    goodSegmentCheck 124 41 87
      { lower := 11903, upper := 12026, witness := RowWitness.topPrime 11903 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good100_checked :
    goodSegmentCheck 124 41 87
      { lower := 12027, upper := 12134, witness := RowWitness.topPrime 12011 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good101_checked :
    goodSegmentCheck 124 41 87
      { lower := 12135, upper := 12242, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good102_checked :
    goodSegmentCheck 124 41 87
      { lower := 12243, upper := 12364, witness := RowWitness.topPrime 12241 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good103_checked :
    goodSegmentCheck 124 41 87
      { lower := 12365, upper := 12470, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good104_checked :
    goodSegmentCheck 124 41 87
      { lower := 12471, upper := 12580, witness := RowWitness.topPrime 12457 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good105_checked :
    goodSegmentCheck 124 41 87
      { lower := 12581, upper := 12700, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good106_checked :
    goodSegmentCheck 124 41 87
      { lower := 12701, upper := 12820, witness := RowWitness.topPrime 12697 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good107_checked :
    goodSegmentCheck 124 41 87
      { lower := 12821, upper := 12944, witness := RowWitness.topPrime 12821 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good108_checked :
    goodSegmentCheck 124 41 87
      { lower := 12945, upper := 13064, witness := RowWitness.topPrime 12941 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good109_checked :
    goodSegmentCheck 124 41 87
      { lower := 13065, upper := 13186, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good110_checked :
    goodSegmentCheck 124 41 87
      { lower := 13187, upper := 13310, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good111_checked :
    goodSegmentCheck 124 41 87
      { lower := 13311, upper := 13432, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good112_checked :
    goodSegmentCheck 124 41 87
      { lower := 13433, upper := 13544, witness := RowWitness.topPrime 13421 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good113_checked :
    goodSegmentCheck 124 41 87
      { lower := 13545, upper := 13660, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good114_checked :
    goodSegmentCheck 124 41 87
      { lower := 13661, upper := 13772, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good115_checked :
    goodSegmentCheck 124 41 87
      { lower := 13773, upper := 13886, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good116_checked :
    goodSegmentCheck 124 41 87
      { lower := 13887, upper := 14006, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good117_checked :
    goodSegmentCheck 124 41 87
      { lower := 14007, upper := 14122, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good118_checked :
    goodSegmentCheck 124 41 87
      { lower := 14123, upper := 14230, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good119_checked :
    goodSegmentCheck 124 41 87
      { lower := 14231, upper := 14344, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good120_checked :
    goodSegmentCheck 124 41 87
      { lower := 14345, upper := 14464, witness := RowWitness.topPrime 14341 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good121_checked :
    goodSegmentCheck 124 41 87
      { lower := 14465, upper := 14584, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good122_checked :
    goodSegmentCheck 124 41 87
      { lower := 14585, upper := 14686, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good123_checked :
    goodSegmentCheck 124 41 87
      { lower := 14687, upper := 14806, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good124_checked :
    goodSegmentCheck 124 41 87
      { lower := 14807, upper := 14920, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good125_checked :
    goodSegmentCheck 124 41 87
      { lower := 14921, upper := 15020, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good126_checked :
    goodSegmentCheck 124 41 87
      { lower := 15021, upper := 15140, witness := RowWitness.topPrime 15017 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good127_checked :
    goodSegmentCheck 124 41 87
      { lower := 15141, upper := 15252, witness := RowWitness.topPrime 15139 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good128_checked :
    goodSegmentCheck 124 41 87
      { lower := 15379, upper := 15432, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good129_checked :
    goodSegmentCheck 124 41 87
      { lower := 15463, upper := 15502, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good130_checked :
    goodSegmentCheck 124 41 87
      { lower := 15987, upper := 16095, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good131_checked :
    goodSegmentCheck 124 41 87
      { lower := 16428, upper := 16507, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good132_checked :
    goodSegmentCheck 124 41 87
      { lower := 16810, upper := 16910, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good133_checked :
    goodSegmentCheck 124 41 87
      { lower := 16911, upper := 16933, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good134_checked :
    goodSegmentCheck 124 41 87
      { lower := 17405, upper := 17426, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good135_checked :
    goodSegmentCheck 124 41 87
      { lower := 17496, upper := 17528, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good136_checked :
    goodSegmentCheck 124 41 87
      { lower := 17576, upper := 17619, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good137_checked :
    goodSegmentCheck 124 41 87
      { lower := 17672, upper := 17699, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good138_checked :
    goodSegmentCheck 124 41 87
      { lower := 18491, upper := 18604, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good139_checked :
    goodSegmentCheck 124 41 87
      { lower := 18605, upper := 18614, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good140_checked :
    goodSegmentCheck 124 41 87
      { lower := 18634, upper := 18740, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good141_checked :
    goodSegmentCheck 124 41 87
      { lower := 18741, upper := 18854, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good142_checked :
    goodSegmentCheck 124 41 87
      { lower := 18855, upper := 18873, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good143_checked :
    goodSegmentCheck 124 41 87
      { lower := 19208, upper := 19289, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good144_checked :
    goodSegmentCheck 124 41 87
      { lower := 19663, upper := 19784, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good145_checked :
    goodSegmentCheck 124 41 87
      { lower := 19785, upper := 19806, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good146_checked :
    goodSegmentCheck 124 41 87
      { lower := 19881, upper := 19896, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good147_checked :
    goodSegmentCheck 124 41 87
      { lower := 19965, upper := 20004, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good148_checked :
    goodSegmentCheck 124 41 87
      { lower := 20172, upper := 20284, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good149_checked :
    goodSegmentCheck 124 41 87
      { lower := 20285, upper := 20287, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good150_checked :
    goodSegmentCheck 124 41 87
      { lower := 20402, upper := 20462, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good151_checked :
    goodSegmentCheck 124 41 87
      { lower := 20577, upper := 20658, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good152_checked :
    goodSegmentCheck 124 41 87
      { lower := 20667, upper := 20700, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good153_checked :
    goodSegmentCheck 124 41 87
      { lower := 21296, upper := 21406, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good154_checked :
    goodSegmentCheck 124 41 87
      { lower := 21407, upper := 21419, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good155_checked :
    goodSegmentCheck 124 41 87
      { lower := 21870, upper := 21986, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good156_checked :
    goodSegmentCheck 124 41 87
      { lower := 21987, upper := 22027, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good157_checked :
    goodSegmentCheck 124 41 87
      { lower := 22090, upper := 22093, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good158_checked :
    goodSegmentCheck 124 41 87
      { lower := 22188, upper := 22213, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good159_checked :
    goodSegmentCheck 124 41 87
      { lower := 22445, upper := 22449, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good160_checked :
    goodSegmentCheck 124 41 87
      { lower := 22472, upper := 22568, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good161_checked :
    goodSegmentCheck 124 41 87
      { lower := 23763, upper := 23884, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good162_checked :
    goodSegmentCheck 124 41 87
      { lower := 23885, upper := 23885, witness := RowWitness.topPrime 23879 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good163_checked :
    goodSegmentCheck 124 41 87
      { lower := 24010, upper := 24130, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good164_checked :
    goodSegmentCheck 124 41 87
      { lower := 24131, upper := 24160, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good165_checked :
    goodSegmentCheck 124 41 87
      { lower := 24167, upper := 24180, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good166_checked :
    goodSegmentCheck 124 41 87
      { lower := 24334, upper := 24452, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good167_checked :
    goodSegmentCheck 124 41 87
      { lower := 24453, upper := 24490, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good168_checked :
    goodSegmentCheck 124 41 87
      { lower := 24576, upper := 24694, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good169_checked :
    goodSegmentCheck 124 41 87
      { lower := 24695, upper := 24699, witness := RowWitness.topPrime 24691 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good170_checked :
    goodSegmentCheck 124 41 87
      { lower := 25000, upper := 25087, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good171_checked :
    goodSegmentCheck 124 41 87
      { lower := 25215, upper := 25312, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good172_checked :
    goodSegmentCheck 124 41 87
      { lower := 25313, upper := 25338, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good173_checked :
    goodSegmentCheck 124 41 87
      { lower := 26364, upper := 26367, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good174_checked :
    goodSegmentCheck 124 41 87
      { lower := 26411, upper := 26487, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good175_checked :
    goodSegmentCheck 124 41 87
      { lower := 26508, upper := 26534, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good176_checked :
    goodSegmentCheck 124 41 87
      { lower := 26934, upper := 27019, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good177_checked :
    goodSegmentCheck 124 41 87
      { lower := 27556, upper := 27559, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good178_checked :
    goodSegmentCheck 124 41 87
      { lower := 27848, upper := 27858, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good179_checked :
    goodSegmentCheck 124 41 87
      { lower := 28125, upper := 28213, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good180_checked :
    goodSegmentCheck 124 41 87
      { lower := 28227, upper := 28248, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good181_checked :
    goodSegmentCheck 124 41 87
      { lower := 28577, upper := 28684, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good182_checked :
    goodSegmentCheck 124 41 87
      { lower := 28812, upper := 28840, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good183_checked :
    goodSegmentCheck 124 41 87
      { lower := 29584, upper := 29601, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good184_checked :
    goodSegmentCheck 124 41 87
      { lower := 30258, upper := 30369, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good185_checked :
    goodSegmentCheck 124 41 87
      { lower := 30618, upper := 30716, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good186_checked :
    goodSegmentCheck 124 41 87
      { lower := 30717, upper := 30726, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good187_checked :
    goodSegmentCheck 124 41 87
      { lower := 30926, upper := 31022, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good188_checked :
    goodSegmentCheck 124 41 87
      { lower := 31213, upper := 31316, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good189_checked :
    goodSegmentCheck 124 41 87
      { lower := 31317, upper := 31373, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good190_checked :
    goodSegmentCheck 124 41 87
      { lower := 31423, upper := 31452, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good191_checked :
    goodSegmentCheck 124 41 87
      { lower := 32805, upper := 32891, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good192_checked :
    goodSegmentCheck 124 41 87
      { lower := 33708, upper := 33737, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good193_checked :
    goodSegmentCheck 124 41 87
      { lower := 34347, upper := 34460, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good194_checked :
    goodSegmentCheck 124 41 87
      { lower := 34461, upper := 34514, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good195_checked :
    goodSegmentCheck 124 41 87
      { lower := 36517, upper := 36620, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good196_checked :
    goodSegmentCheck 124 41 87
      { lower := 36621, upper := 36624, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good197_checked :
    goodSegmentCheck 124 41 87
      { lower := 37303, upper := 37333, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good198_checked :
    goodSegmentCheck 124 41 87
      { lower := 37500, upper := 37569, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good199_checked :
    goodSegmentCheck 124 41 87
      { lower := 38307, upper := 38414, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good200_checked :
    goodSegmentCheck 124 41 87
      { lower := 39326, upper := 39446, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good201_checked :
    goodSegmentCheck 124 41 87
      { lower := 39447, upper := 39449, witness := RowWitness.topPrime 39443 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good202_checked :
    goodSegmentCheck 124 41 87
      { lower := 40401, upper := 40451, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good203_checked :
    goodSegmentCheck 124 41 87
      { lower := 43750, upper := 43810, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good204_checked :
    goodSegmentCheck 124 41 87
      { lower := 45369, upper := 45376, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good205_checked :
    goodSegmentCheck 124 41 87
      { lower := 47526, upper := 47644, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good206_checked :
    goodSegmentCheck 124 41 87
      { lower := 47645, upper := 47647, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good207_checked :
    goodSegmentCheck 124 41 87
      { lower := 48013, upper := 48084, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good208_checked :
    goodSegmentCheck 124 41 87
      { lower := 48734, upper := 48856, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good209_checked :
    goodSegmentCheck 124 41 87
      { lower := 48857, upper := 48857, witness := RowWitness.topPrime 48857 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good210_checked :
    goodSegmentCheck 124 41 87
      { lower := 49152, upper := 49253, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good211_checked :
    goodSegmentCheck 124 41 87
      { lower := 50421, upper := 50533, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good212_checked :
    goodSegmentCheck 124 41 87
      { lower := 51076, upper := 51128, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good213_checked :
    goodSegmentCheck 124 41 87
      { lower := 55451, upper := 55564, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good214_checked :
    goodSegmentCheck 124 41 87
      { lower := 55565, upper := 55570, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good215_checked :
    goodSegmentCheck 124 41 87
      { lower := 57245, upper := 57245, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good216_checked :
    goodSegmentCheck 124 41 87
      { lower := 58619, upper := 58687, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good217_checked :
    goodSegmentCheck 124 41 87
      { lower := 59049, upper := 59079, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good218_checked :
    goodSegmentCheck 124 41 87
      { lower := 62500, upper := 62533, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good219_checked :
    goodSegmentCheck 124 41 87
      { lower := 65610, upper := 65659, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good220_checked :
    goodSegmentCheck 124 41 87
      { lower := 68651, upper := 68762, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good221_checked :
    goodSegmentCheck 124 41 87
      { lower := 68763, upper := 68774, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good222_checked :
    goodSegmentCheck 124 41 87
      { lower := 68921, upper := 69013, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good223_checked :
    goodSegmentCheck 124 41 87
      { lower := 71289, upper := 71410, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good224_checked :
    goodSegmentCheck 124 41 87
      { lower := 71411, upper := 71412, witness := RowWitness.topPrime 71411 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good225_checked :
    goodSegmentCheck 124 41 87
      { lower := 73205, upper := 73290, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good226_checked :
    goodSegmentCheck 124 41 87
      { lower := 137842, upper := 137904, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good226_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_goods_checked :
    row124.goods.all (goodSegmentCheck row124.height.i row124.height.r row124.height.s) = true := by
  change row124_goods.all (goodSegmentCheck 124 41 87) = true
  simp only [row124_goods, List.all_cons, List.all_nil,
    row124_good000_checked,
    row124_good001_checked,
    row124_good002_checked,
    row124_good003_checked,
    row124_good004_checked,
    row124_good005_checked,
    row124_good006_checked,
    row124_good007_checked,
    row124_good008_checked,
    row124_good009_checked,
    row124_good010_checked,
    row124_good011_checked,
    row124_good012_checked,
    row124_good013_checked,
    row124_good014_checked,
    row124_good015_checked,
    row124_good016_checked,
    row124_good017_checked,
    row124_good018_checked,
    row124_good019_checked,
    row124_good020_checked,
    row124_good021_checked,
    row124_good022_checked,
    row124_good023_checked,
    row124_good024_checked,
    row124_good025_checked,
    row124_good026_checked,
    row124_good027_checked,
    row124_good028_checked,
    row124_good029_checked,
    row124_good030_checked,
    row124_good031_checked,
    row124_good032_checked,
    row124_good033_checked,
    row124_good034_checked,
    row124_good035_checked,
    row124_good036_checked,
    row124_good037_checked,
    row124_good038_checked,
    row124_good039_checked,
    row124_good040_checked,
    row124_good041_checked,
    row124_good042_checked,
    row124_good043_checked,
    row124_good044_checked,
    row124_good045_checked,
    row124_good046_checked,
    row124_good047_checked,
    row124_good048_checked,
    row124_good049_checked,
    row124_good050_checked,
    row124_good051_checked,
    row124_good052_checked,
    row124_good053_checked,
    row124_good054_checked,
    row124_good055_checked,
    row124_good056_checked,
    row124_good057_checked,
    row124_good058_checked,
    row124_good059_checked,
    row124_good060_checked,
    row124_good061_checked,
    row124_good062_checked,
    row124_good063_checked,
    row124_good064_checked,
    row124_good065_checked,
    row124_good066_checked,
    row124_good067_checked,
    row124_good068_checked,
    row124_good069_checked,
    row124_good070_checked,
    row124_good071_checked,
    row124_good072_checked,
    row124_good073_checked,
    row124_good074_checked,
    row124_good075_checked,
    row124_good076_checked,
    row124_good077_checked,
    row124_good078_checked,
    row124_good079_checked,
    row124_good080_checked,
    row124_good081_checked,
    row124_good082_checked,
    row124_good083_checked,
    row124_good084_checked,
    row124_good085_checked,
    row124_good086_checked,
    row124_good087_checked,
    row124_good088_checked,
    row124_good089_checked,
    row124_good090_checked,
    row124_good091_checked,
    row124_good092_checked,
    row124_good093_checked,
    row124_good094_checked,
    row124_good095_checked,
    row124_good096_checked,
    row124_good097_checked,
    row124_good098_checked,
    row124_good099_checked,
    row124_good100_checked,
    row124_good101_checked,
    row124_good102_checked,
    row124_good103_checked,
    row124_good104_checked,
    row124_good105_checked,
    row124_good106_checked,
    row124_good107_checked,
    row124_good108_checked,
    row124_good109_checked,
    row124_good110_checked,
    row124_good111_checked,
    row124_good112_checked,
    row124_good113_checked,
    row124_good114_checked,
    row124_good115_checked,
    row124_good116_checked,
    row124_good117_checked,
    row124_good118_checked,
    row124_good119_checked,
    row124_good120_checked,
    row124_good121_checked,
    row124_good122_checked,
    row124_good123_checked,
    row124_good124_checked,
    row124_good125_checked,
    row124_good126_checked,
    row124_good127_checked,
    row124_good128_checked,
    row124_good129_checked,
    row124_good130_checked,
    row124_good131_checked,
    row124_good132_checked,
    row124_good133_checked,
    row124_good134_checked,
    row124_good135_checked,
    row124_good136_checked,
    row124_good137_checked,
    row124_good138_checked,
    row124_good139_checked,
    row124_good140_checked,
    row124_good141_checked,
    row124_good142_checked,
    row124_good143_checked,
    row124_good144_checked,
    row124_good145_checked,
    row124_good146_checked,
    row124_good147_checked,
    row124_good148_checked,
    row124_good149_checked,
    row124_good150_checked,
    row124_good151_checked,
    row124_good152_checked,
    row124_good153_checked,
    row124_good154_checked,
    row124_good155_checked,
    row124_good156_checked,
    row124_good157_checked,
    row124_good158_checked,
    row124_good159_checked,
    row124_good160_checked,
    row124_good161_checked,
    row124_good162_checked,
    row124_good163_checked,
    row124_good164_checked,
    row124_good165_checked,
    row124_good166_checked,
    row124_good167_checked,
    row124_good168_checked,
    row124_good169_checked,
    row124_good170_checked,
    row124_good171_checked,
    row124_good172_checked,
    row124_good173_checked,
    row124_good174_checked,
    row124_good175_checked,
    row124_good176_checked,
    row124_good177_checked,
    row124_good178_checked,
    row124_good179_checked,
    row124_good180_checked,
    row124_good181_checked,
    row124_good182_checked,
    row124_good183_checked,
    row124_good184_checked,
    row124_good185_checked,
    row124_good186_checked,
    row124_good187_checked,
    row124_good188_checked,
    row124_good189_checked,
    row124_good190_checked,
    row124_good191_checked,
    row124_good192_checked,
    row124_good193_checked,
    row124_good194_checked,
    row124_good195_checked,
    row124_good196_checked,
    row124_good197_checked,
    row124_good198_checked,
    row124_good199_checked,
    row124_good200_checked,
    row124_good201_checked,
    row124_good202_checked,
    row124_good203_checked,
    row124_good204_checked,
    row124_good205_checked,
    row124_good206_checked,
    row124_good207_checked,
    row124_good208_checked,
    row124_good209_checked,
    row124_good210_checked,
    row124_good211_checked,
    row124_good212_checked,
    row124_good213_checked,
    row124_good214_checked,
    row124_good215_checked,
    row124_good216_checked,
    row124_good217_checked,
    row124_good218_checked,
    row124_good219_checked,
    row124_good220_checked,
    row124_good221_checked,
    row124_good222_checked,
    row124_good223_checked,
    row124_good224_checked,
    row124_good225_checked,
    row124_good226_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_registered :
    decide (row124.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row124_small_checked :
    coverCheck (2 * row124.height.i + 2) (row124.height.i * (row124.height.i - 1) - 1)
      (row124.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row124_layerCover_checked :
    coverCheck (row124.height.i * (row124.height.i - 1)) (row124.height.n0 - 1)
      (row124.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row124_bounds : List NatInterval :=
  [(250, 364), (365, 482), (483, 602), (603, 724), (725, 842), (843, 962), (963, 1076), (1077, 1192), (1193, 1316), (1317, 1430), (1431, 1552), (1553, 1676), (1677, 1792), (1793, 1912), (1913, 2036), (2037, 2152), (2153, 2276), (2277, 2396), (2397, 2516), (2517, 2626), (2627, 2744), (2745, 2864), (2865, 2984), (2985, 3094), (3095, 3212), (3213, 3332), (3333, 3454), (3455, 3572), (3573, 3694), (3695, 3814), (3815, 3926), (3927, 4046), (4047, 4150), (4151, 4262), (4263, 4384), (4385, 4496), (4497, 4616), (4617, 4726), (4727, 4846), (4847, 4954), (4955, 5074), (5075, 5182), (5183, 5302), (5303, 5426), (5427, 5542), (5543, 5654), (5655, 5776), (5777, 5872), (5873, 5992), (5993, 6110), (6111, 6224), (6225, 6344), (6345, 6466), (6467, 6574), (6575, 6694), (6695, 6814), (6815, 6926), (6927, 7040), (7041, 7162), (7163, 7282), (7283, 7406), (7407, 7516), (7517, 7640), (7641, 7762), (7763, 7882), (7883, 8006), (8007, 8116), (8117, 8240), (8241, 8360), (8361, 8476), (8477, 8590), (8591, 8704), (8705, 8822), (8823, 8944), (8945, 9064), (9065, 9182), (9183, 9304), (9305, 9416), (9417, 9536), (9537, 9656), (9657, 9772), (9773, 9892), (9893, 10010), (10011, 10132), (10133, 10256), (10257, 10376), (10377, 10492), (10493, 10610), (10611, 10730), (10731, 10852), (10853, 10976), (10977, 11096), (11097, 11216), (11217, 11336), (11337, 11452), (11453, 11570), (11571, 11674), (11675, 11780), (11781, 11902), (11903, 12026), (12027, 12134), (12135, 12242), (12243, 12364), (12365, 12470), (12471, 12580), (12581, 12700), (12701, 12820), (12821, 12944), (12945, 13064), (13065, 13186), (13187, 13310), (13311, 13432), (13433, 13544), (13545, 13660), (13661, 13772), (13773, 13886), (13887, 14006), (14007, 14122), (14123, 14230), (14231, 14344), (14345, 14464), (14465, 14584), (14585, 14686), (14687, 14806), (14807, 14920), (14921, 15020), (15021, 15140), (15141, 15252), (15379, 15432), (15463, 15502), (15987, 16095), (16428, 16507), (16810, 16910), (16911, 16933), (17405, 17426), (17496, 17528), (17576, 17619), (17672, 17699), (18491, 18604), (18605, 18614), (18634, 18740), (18741, 18854), (18855, 18873), (19208, 19289), (19663, 19784), (19785, 19806), (19881, 19896), (19965, 20004), (20172, 20284), (20285, 20287), (20402, 20462), (20577, 20658), (20667, 20700), (21296, 21406), (21407, 21419), (21870, 21986), (21987, 22027), (22090, 22093), (22188, 22213), (22445, 22449), (22472, 22568), (23763, 23884), (23885, 23885), (24010, 24130), (24131, 24160), (24167, 24180), (24334, 24452), (24453, 24490), (24576, 24694), (24695, 24699), (25000, 25087), (25215, 25312), (25313, 25338), (26364, 26367), (26411, 26487), (26508, 26534), (26934, 27019), (27556, 27559), (27848, 27858), (28125, 28213), (28227, 28248), (28577, 28684), (28812, 28840), (29584, 29601), (30258, 30369), (30618, 30716), (30717, 30726), (30926, 31022), (31213, 31316), (31317, 31373), (31423, 31452), (32805, 32891), (33708, 33737), (34347, 34460), (34461, 34514), (36517, 36620), (36621, 36624), (37303, 37333), (37500, 37569), (38307, 38414), (39326, 39446), (39447, 39449), (40401, 40451), (43750, 43810), (45369, 45376), (47526, 47644), (47645, 47647), (48013, 48084), (48734, 48856), (48857, 48857), (49152, 49253), (50421, 50533), (51076, 51128), (55451, 55564), (55565, 55570), (57245, 57245), (58619, 58687), (59049, 59079), (62500, 62533), (65610, 65659), (68651, 68762), (68763, 68774), (68921, 69013), (71289, 71410), (71411, 71412), (73205, 73290), (137842, 137904)]

theorem row124_bounds_eq : row124.goods.map goodSegmentBounds = row124_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row124_layer000_intervals : List ColouredInterval :=
  [(2, 16384, 16507), (2, 16384, 16507), (2, 24576, 24699), (2, 16384, 16507), (3, 15309, 15432), (3, 17496, 17619), (3, 19683, 19806), (3, 21870, 21993), (3, 24057, 24180), (3, 26244, 26367), (3, 28431, 28554), (3, 19683, 19806), (3, 26244, 26367), (3, 19683, 19806), (5, 15625, 15748), (5, 18750, 18873), (5, 21875, 21998), (5, 25000, 25123), (5, 28125, 28248), (5, 15625, 15748), (7, 16807, 16930), (7, 19208, 19331), (7, 21609, 21732), (7, 24010, 24133), (7, 26411, 26534), (7, 28812, 28935), (7, 16807, 16930), (11, 15972, 16095), (11, 17303, 17426), (11, 18634, 18757), (11, 19965, 20088), (11, 21296, 21419), (11, 22627, 22750), (11, 23958, 24081), (11, 29282, 29405), (13, 15379, 15502), (13, 17576, 17699), (13, 19773, 19896), (13, 21970, 22093), (13, 24167, 24290), (13, 26364, 26487), (13, 28561, 28684), (13, 28561, 28684), (17, 19652, 19775), (17, 24565, 24688), (17, 29478, 29601), (19, 20577, 20700), (19, 27436, 27559), (23, 24334, 24457), (29, 15252, 15261), (29, 24389, 24512), (37, 16428, 16551), (37, 17797, 17920), (37, 19166, 19289), (37, 20535, 20658), (37, 21904, 22027), (37, 23273, 23396), (37, 24642, 24765), (41, 15252, 15252), (41, 16810, 16933), (41, 18491, 18614), (41, 20172, 20295), (41, 21853, 21976), (41, 23534, 23657), (41, 25215, 25338), (41, 26896, 27019), (41, 28577, 28700), (41, 30258, 30381), (43, 16641, 16764), (43, 18490, 18613), (43, 20339, 20462), (43, 22188, 22311), (43, 24037, 24160), (43, 25886, 26009), (43, 27735, 27858), (43, 29584, 29707), (47, 15463, 15586), (47, 17672, 17795), (47, 19881, 20004), (47, 22090, 22213), (47, 24299, 24422), (47, 26508, 26631), (47, 28717, 28840), (53, 16854, 16977), (53, 19663, 19786), (53, 22472, 22595), (53, 25281, 25404), (53, 28090, 28213), (59, 17405, 17528), (59, 20886, 21009), (59, 24367, 24490), (59, 27848, 27971), (61, 18605, 18728), (61, 22326, 22449), (61, 26047, 26170), (61, 29768, 29891), (67, 17956, 18079), (67, 22445, 22568), (67, 26934, 27057), (71, 20164, 20287), (71, 25205, 25328), (71, 30246, 30369), (73, 15987, 16110), (73, 21316, 21439), (73, 26645, 26768), (79, 18723, 18846), (79, 24964, 25087), (83, 20667, 20790), (83, 27556, 27679), (89, 15842, 15965), (89, 23763, 23886), (97, 18818, 18941), (97, 28227, 28350), (101, 20402, 20525), (103, 21218, 21341), (107, 22898, 23021), (109, 23762, 23885), (113, 25538, 25661)]

def row124_layer000_block000 : List ColouredInterval :=
  [(2, 16384, 16507), (2, 16384, 16507), (2, 24576, 24699), (2, 16384, 16507), (3, 15309, 15432), (3, 17496, 17619), (3, 19683, 19806), (3, 21870, 21993), (3, 24057, 24180), (3, 26244, 26367), (3, 28431, 28554), (3, 19683, 19806), (3, 26244, 26367), (3, 19683, 19806), (5, 15625, 15748), (5, 18750, 18873)]

def row124_layer000_block001 : List ColouredInterval :=
  [(5, 21875, 21998), (5, 25000, 25123), (5, 28125, 28248), (5, 15625, 15748), (7, 16807, 16930), (7, 19208, 19331), (7, 21609, 21732), (7, 24010, 24133), (7, 26411, 26534), (7, 28812, 28935), (7, 16807, 16930), (11, 15972, 16095), (11, 17303, 17426), (11, 18634, 18757), (11, 19965, 20088), (11, 21296, 21419)]

def row124_layer000_block002 : List ColouredInterval :=
  [(11, 22627, 22750), (11, 23958, 24081), (11, 29282, 29405), (13, 15379, 15502), (13, 17576, 17699), (13, 19773, 19896), (13, 21970, 22093), (13, 24167, 24290), (13, 26364, 26487), (13, 28561, 28684), (13, 28561, 28684), (17, 19652, 19775), (17, 24565, 24688), (17, 29478, 29601), (19, 20577, 20700), (19, 27436, 27559)]

def row124_layer000_block003 : List ColouredInterval :=
  [(23, 24334, 24457), (29, 15252, 15261), (29, 24389, 24512), (37, 16428, 16551), (37, 17797, 17920), (37, 19166, 19289), (37, 20535, 20658), (37, 21904, 22027), (37, 23273, 23396), (37, 24642, 24765), (41, 15252, 15252), (41, 16810, 16933), (41, 18491, 18614), (41, 20172, 20295), (41, 21853, 21976), (41, 23534, 23657)]

def row124_layer000_block004 : List ColouredInterval :=
  [(41, 25215, 25338), (41, 26896, 27019), (41, 28577, 28700), (41, 30258, 30381), (43, 16641, 16764), (43, 18490, 18613), (43, 20339, 20462), (43, 22188, 22311), (43, 24037, 24160), (43, 25886, 26009), (43, 27735, 27858), (43, 29584, 29707), (47, 15463, 15586), (47, 17672, 17795), (47, 19881, 20004), (47, 22090, 22213)]

def row124_layer000_block005 : List ColouredInterval :=
  [(47, 24299, 24422), (47, 26508, 26631), (47, 28717, 28840), (53, 16854, 16977), (53, 19663, 19786), (53, 22472, 22595), (53, 25281, 25404), (53, 28090, 28213), (59, 17405, 17528), (59, 20886, 21009), (59, 24367, 24490), (59, 27848, 27971), (61, 18605, 18728), (61, 22326, 22449), (61, 26047, 26170), (61, 29768, 29891)]

def row124_layer000_block006 : List ColouredInterval :=
  [(67, 17956, 18079), (67, 22445, 22568), (67, 26934, 27057), (71, 20164, 20287), (71, 25205, 25328), (71, 30246, 30369), (73, 15987, 16110), (73, 21316, 21439), (73, 26645, 26768), (79, 18723, 18846), (79, 24964, 25087), (83, 20667, 20790), (83, 27556, 27679), (89, 15842, 15965), (89, 23763, 23886), (97, 18818, 18941)]

def row124_layer000_block007 : List ColouredInterval :=
  [(97, 28227, 28350), (101, 20402, 20525), (103, 21218, 21341), (107, 22898, 23021), (109, 23762, 23885), (113, 25538, 25661)]

def row124_layer000_chunks : List (List ColouredInterval) :=
  [row124_layer000_block000, row124_layer000_block001, row124_layer000_block002, row124_layer000_block003, row124_layer000_block004, row124_layer000_block005, row124_layer000_block006, row124_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_arithmetic : LayerArithmeticValid row124.height { lower := 15252, upper := 30504, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_enumeration :
    activePowerIntervalList 124 18 15252 30504 = row124_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_pairs000 :
    row124_layer000_block000.all (fun I => row124_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row124_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_pairs001 :
    row124_layer000_block001.all (fun I => row124_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row124_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_pairs002 :
    row124_layer000_block002.all (fun I => row124_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row124_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_pairs003 :
    row124_layer000_block003.all (fun I => row124_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row124_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_pairs004 :
    row124_layer000_block004.all (fun I => row124_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row124_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_pairs005 :
    row124_layer000_block005.all (fun I => row124_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row124_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_pairs006 :
    row124_layer000_block006.all (fun I => row124_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row124_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_pairs007 :
    row124_layer000_block007.all (fun I => row124_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row124_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_chunks_eq : row124_layer000_chunks.flatten = row124_layer000_intervals := by
  rfl

theorem row124_layer000_pairs : pairCoverCheck row124_layer000_intervals row124_bounds = true := by
  apply pairCoverCheck_of_chunks row124_layer000_chunks_eq
  intro block hblock
  simp only [row124_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row124_layer000_pairs000
  · exact row124_layer000_pairs001
  · exact row124_layer000_pairs002
  · exact row124_layer000_pairs003
  · exact row124_layer000_pairs004
  · exact row124_layer000_pairs005
  · exact row124_layer000_pairs006
  · exact row124_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer000_checked :
    coverLayerCheck row124.height row124.goods { lower := 15252, upper := 30504, M := 18 } = true := by
  exact coverLayerCheck_of_parts row124_layer000_arithmetic row124_layer000_enumeration row124_bounds_eq row124_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer000_checked
