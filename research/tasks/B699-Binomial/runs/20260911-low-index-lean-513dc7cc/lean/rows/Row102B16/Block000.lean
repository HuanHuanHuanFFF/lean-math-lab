import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row102_height : HeightCertificateDatum := { i := 102, r := 33, s := 71, n0Power10 := 9 }

def row102_goods : List GoodSegment := [
  { lower := 206, upper := 300, witness := RowWitness.topPrime 199 },
  { lower := 301, upper := 394, witness := RowWitness.topPrime 293 },
  { lower := 395, upper := 490, witness := RowWitness.topPrime 389 },
  { lower := 491, upper := 592, witness := RowWitness.topPrime 491 },
  { lower := 593, upper := 694, witness := RowWitness.topPrime 593 },
  { lower := 695, upper := 792, witness := RowWitness.topPrime 691 },
  { lower := 793, upper := 888, witness := RowWitness.topPrime 787 },
  { lower := 889, upper := 988, witness := RowWitness.topPrime 887 },
  { lower := 989, upper := 1084, witness := RowWitness.topPrime 983 },
  { lower := 1085, upper := 1170, witness := RowWitness.topPrime 1069 },
  { lower := 1171, upper := 1272, witness := RowWitness.topPrime 1171 },
  { lower := 1273, upper := 1360, witness := RowWitness.topPrime 1259 },
  { lower := 1361, upper := 1462, witness := RowWitness.topPrime 1361 },
  { lower := 1463, upper := 1560, witness := RowWitness.topPrime 1459 },
  { lower := 1561, upper := 1660, witness := RowWitness.topPrime 1559 },
  { lower := 1661, upper := 1758, witness := RowWitness.topPrime 1657 },
  { lower := 1759, upper := 1860, witness := RowWitness.topPrime 1759 },
  { lower := 1861, upper := 1962, witness := RowWitness.topPrime 1861 },
  { lower := 1963, upper := 2052, witness := RowWitness.topPrime 1951 },
  { lower := 2053, upper := 2154, witness := RowWitness.topPrime 2053 },
  { lower := 2155, upper := 2254, witness := RowWitness.topPrime 2153 },
  { lower := 2255, upper := 2352, witness := RowWitness.topPrime 2251 },
  { lower := 2353, upper := 2452, witness := RowWitness.topPrime 2351 },
  { lower := 2453, upper := 2548, witness := RowWitness.topPrime 2447 },
  { lower := 2549, upper := 2650, witness := RowWitness.topPrime 2549 },
  { lower := 2651, upper := 2748, witness := RowWitness.topPrime 2647 },
  { lower := 2749, upper := 2850, witness := RowWitness.topPrime 2749 },
  { lower := 2851, upper := 2952, witness := RowWitness.topPrime 2851 },
  { lower := 2953, upper := 3054, witness := RowWitness.topPrime 2953 },
  { lower := 3055, upper := 3150, witness := RowWitness.topPrime 3049 },
  { lower := 3151, upper := 3238, witness := RowWitness.topPrime 3137 },
  { lower := 3239, upper := 3330, witness := RowWitness.topPrime 3229 },
  { lower := 3331, upper := 3432, witness := RowWitness.topPrime 3331 },
  { lower := 3433, upper := 3534, witness := RowWitness.topPrime 3433 },
  { lower := 3535, upper := 3634, witness := RowWitness.topPrime 3533 },
  { lower := 3635, upper := 3732, witness := RowWitness.topPrime 3631 },
  { lower := 3733, upper := 3834, witness := RowWitness.topPrime 3733 },
  { lower := 3835, upper := 3934, witness := RowWitness.topPrime 3833 },
  { lower := 3935, upper := 4032, witness := RowWitness.topPrime 3931 },
  { lower := 4033, upper := 4128, witness := RowWitness.topPrime 4027 },
  { lower := 4129, upper := 4230, witness := RowWitness.topPrime 4129 },
  { lower := 4231, upper := 4332, witness := RowWitness.topPrime 4231 },
  { lower := 4333, upper := 4428, witness := RowWitness.topPrime 4327 },
  { lower := 4429, upper := 4524, witness := RowWitness.topPrime 4423 },
  { lower := 4525, upper := 4624, witness := RowWitness.topPrime 4523 },
  { lower := 4625, upper := 4722, witness := RowWitness.topPrime 4621 },
  { lower := 4723, upper := 4824, witness := RowWitness.topPrime 4723 },
  { lower := 4825, upper := 4918, witness := RowWitness.topPrime 4817 },
  { lower := 4919, upper := 5020, witness := RowWitness.topPrime 4919 },
  { lower := 5021, upper := 5122, witness := RowWitness.topPrime 5021 },
  { lower := 5123, upper := 5220, witness := RowWitness.topPrime 5119 },
  { lower := 5221, upper := 5310, witness := RowWitness.topPrime 5209 },
  { lower := 5311, upper := 5410, witness := RowWitness.topPrime 5309 },
  { lower := 5411, upper := 5508, witness := RowWitness.topPrime 5407 },
  { lower := 5509, upper := 5608, witness := RowWitness.topPrime 5507 },
  { lower := 5609, upper := 5692, witness := RowWitness.topPrime 5591 },
  { lower := 5693, upper := 5794, witness := RowWitness.topPrime 5693 },
  { lower := 5795, upper := 5892, witness := RowWitness.topPrime 5791 },
  { lower := 5893, upper := 5982, witness := RowWitness.topPrime 5881 },
  { lower := 5983, upper := 6082, witness := RowWitness.topPrime 5981 },
  { lower := 6083, upper := 6180, witness := RowWitness.topPrime 6079 },
  { lower := 6181, upper := 6274, witness := RowWitness.topPrime 6173 },
  { lower := 6275, upper := 6372, witness := RowWitness.topPrime 6271 },
  { lower := 6373, upper := 6474, witness := RowWitness.topPrime 6373 },
  { lower := 6475, upper := 6574, witness := RowWitness.topPrime 6473 },
  { lower := 6575, upper := 6672, witness := RowWitness.topPrime 6571 },
  { lower := 6673, upper := 6774, witness := RowWitness.topPrime 6673 },
  { lower := 6775, upper := 6864, witness := RowWitness.topPrime 6763 },
  { lower := 6865, upper := 6964, witness := RowWitness.topPrime 6863 },
  { lower := 6965, upper := 7062, witness := RowWitness.topPrime 6961 },
  { lower := 7063, upper := 7158, witness := RowWitness.topPrime 7057 },
  { lower := 7159, upper := 7260, witness := RowWitness.topPrime 7159 },
  { lower := 7261, upper := 7354, witness := RowWitness.topPrime 7253 },
  { lower := 7355, upper := 7452, witness := RowWitness.topPrime 7351 },
  { lower := 7453, upper := 7552, witness := RowWitness.topPrime 7451 },
  { lower := 7553, upper := 7650, witness := RowWitness.topPrime 7549 },
  { lower := 7651, upper := 7750, witness := RowWitness.topPrime 7649 },
  { lower := 7751, upper := 7842, witness := RowWitness.topPrime 7741 },
  { lower := 7843, upper := 7942, witness := RowWitness.topPrime 7841 },
  { lower := 7943, upper := 8038, witness := RowWitness.topPrime 7937 },
  { lower := 8039, upper := 8140, witness := RowWitness.topPrime 8039 },
  { lower := 8141, upper := 8224, witness := RowWitness.topPrime 8123 },
  { lower := 8225, upper := 8322, witness := RowWitness.topPrime 8221 },
  { lower := 8323, upper := 8418, witness := RowWitness.topPrime 8317 },
  { lower := 8419, upper := 8520, witness := RowWitness.topPrime 8419 },
  { lower := 8521, upper := 8622, witness := RowWitness.topPrime 8521 },
  { lower := 8623, upper := 8724, witness := RowWitness.topPrime 8623 },
  { lower := 8725, upper := 8820, witness := RowWitness.topPrime 8719 },
  { lower := 8821, upper := 8922, witness := RowWitness.topPrime 8821 },
  { lower := 8923, upper := 9024, witness := RowWitness.topPrime 8923 },
  { lower := 9025, upper := 9114, witness := RowWitness.topPrime 9013 },
  { lower := 9115, upper := 9210, witness := RowWitness.topPrime 9109 },
  { lower := 9211, upper := 9310, witness := RowWitness.topPrime 9209 },
  { lower := 9311, upper := 9412, witness := RowWitness.topPrime 9311 },
  { lower := 9413, upper := 9514, witness := RowWitness.topPrime 9413 },
  { lower := 9515, upper := 9612, witness := RowWitness.topPrime 9511 },
  { lower := 9613, upper := 9714, witness := RowWitness.topPrime 9613 },
  { lower := 9715, upper := 9798, witness := RowWitness.topPrime 9697 },
  { lower := 9799, upper := 9892, witness := RowWitness.topPrime 9791 },
  { lower := 9893, upper := 9988, witness := RowWitness.topPrime 9887 },
  { lower := 9989, upper := 10074, witness := RowWitness.topPrime 9973 },
  { lower := 10075, upper := 10170, witness := RowWitness.topPrime 10069 },
  { lower := 10171, upper := 10270, witness := RowWitness.topPrime 10169 },
  { lower := 10271, upper := 10302, witness := RowWitness.topPrime 10271 },
  { lower := 10580, upper := 10668, witness := RowWitness.topPrime 10567 },
  { lower := 10669, upper := 10749, witness := RowWitness.topPrime 10667 },
  { lower := 10935, upper := 11010, witness := RowWitness.topPrime 10909 },
  { lower := 11011, upper := 11086, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11194, witness := RowWitness.topPrime 11093 },
  { lower := 11195, upper := 11210, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11314, witness := RowWitness.topPrime 11213 },
  { lower := 11315, upper := 11351, witness := RowWitness.topPrime 11311 },
  { lower := 11774, upper := 11844, witness := RowWitness.topPrime 11743 },
  { lower := 11845, upper := 11868, witness := RowWitness.topPrime 11839 },
  { lower := 11875, upper := 11875, witness := RowWitness.topPrime 11867 },
  { lower := 12005, upper := 12080, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12389, witness := RowWitness.topPrime 12301 },
  { lower := 12493, upper := 12592, witness := RowWitness.topPrime 12491 },
  { lower := 12593, upper := 12594, witness := RowWitness.topPrime 12589 },
  { lower := 13125, upper := 13222, witness := RowWitness.topPrime 13121 },
  { lower := 13223, upper := 13226, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13283, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13355, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13552, witness := RowWitness.topPrime 13451 },
  { lower := 13553, upper := 13557, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13812, witness := RowWitness.topPrime 13711 },
  { lower := 13813, upper := 13851, witness := RowWitness.topPrime 13807 },
  { lower := 14336, upper := 14428, witness := RowWitness.topPrime 14327 },
  { lower := 14429, upper := 14507, witness := RowWitness.topPrime 14423 },
  { lower := 14884, upper := 14893, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15222, witness := RowWitness.topPrime 15121 },
  { lower := 15223, upper := 15230, witness := RowWitness.topPrime 15217 },
  { lower := 15376, upper := 15474, witness := RowWitness.topPrime 15373 },
  { lower := 15475, upper := 15480, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16074, witness := RowWitness.topPrime 15973 },
  { lower := 16075, upper := 16080, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16482, witness := RowWitness.topPrime 16381 },
  { lower := 16483, upper := 16485, witness := RowWitness.topPrime 16481 },
  { lower := 16810, upper := 16888, witness := RowWitness.topPrime 16787 },
  { lower := 16889, upper := 16921, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17399, witness := RowWitness.topPrime 17299 },
  { lower := 17661, upper := 17760, witness := RowWitness.topPrime 17659 },
  { lower := 17761, upper := 17762, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18582, witness := RowWitness.topPrime 18481 },
  { lower := 18583, upper := 18592, witness := RowWitness.topPrime 18583 },
  { lower := 18634, upper := 18706, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18735, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18850, witness := RowWitness.topPrime 18749 },
  { lower := 18851, upper := 18851, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19308, witness := RowWitness.topPrime 19207 },
  { lower := 19309, upper := 19309, witness := RowWitness.topPrime 19309 },
  { lower := 19683, upper := 19764, witness := RowWitness.topPrime 19681 },
  { lower := 19773, upper := 19784, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19982, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20262, witness := RowWitness.topPrime 20161 },
  { lower := 20263, upper := 20273, witness := RowWitness.topPrime 20261 },
  { lower := 20402, upper := 20440, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20503, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20634, witness := RowWitness.topPrime 20533 },
  { lower := 20635, upper := 20636, witness := RowWitness.topPrime 20627 },
  { lower := 20667, upper := 20678, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21397, witness := RowWitness.topPrime 21313 },
  { lower := 21875, upper := 21972, witness := RowWitness.topPrime 21871 },
  { lower := 21973, upper := 22005, witness := RowWitness.topPrime 21961 },
  { lower := 22188, upper := 22191, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22546, witness := RowWitness.topPrime 22469 },
  { lower := 24010, upper := 24108, witness := RowWitness.topPrime 24007 },
  { lower := 24109, upper := 24111, witness := RowWitness.topPrime 24109 },
  { lower := 24334, upper := 24430, witness := RowWitness.topPrime 24329 },
  { lower := 24431, upper := 24468, witness := RowWitness.topPrime 24421 },
  { lower := 24642, upper := 24677, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25065, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25290, witness := RowWitness.topPrime 25189 },
  { lower := 25291, upper := 25362, witness := RowWitness.topPrime 25261 },
  { lower := 25363, upper := 25382, witness := RowWitness.topPrime 25357 },
  { lower := 26047, upper := 26112, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26465, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26512, witness := RowWitness.topPrime 26501 },
  { lower := 26934, upper := 26997, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28191, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28662, witness := RowWitness.topPrime 28573 },
  { lower := 28672, upper := 28678, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28773, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28818, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29869, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30347, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 31000, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31294, witness := RowWitness.topPrime 31193 },
  { lower := 31295, upper := 31314, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31351, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31430, witness := RowWitness.topPrime 31397 },
  { lower := 31433, upper := 31498, witness := RowWitness.topPrime 31397 },
  { lower := 31499, upper := 31524, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32040, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32869, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33715, witness := RowWitness.topPrime 33703 },
  { lower := 34375, upper := 34396, witness := RowWitness.topPrime 34369 },
  { lower := 34445, upper := 34476, witness := RowWitness.topPrime 34439 },
  { lower := 35152, upper := 35232, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35388, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36598, witness := RowWitness.topPrime 36497 },
  { lower := 36599, upper := 36602, witness := RowWitness.topPrime 36599 },
  { lower := 37303, upper := 37311, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37404, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37450, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37547, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37601, witness := RowWitness.topPrime 37549 },
  { lower := 37636, upper := 37654, witness := RowWitness.topPrime 37633 },
  { lower := 39366, upper := 39427, witness := RowWitness.topPrime 39359 },
  { lower := 39605, upper := 39647, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40429, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40905, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41032, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43788, witness := RowWitness.topPrime 43721 },
  { lower := 48013, upper := 48062, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48769, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48835, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50511, witness := RowWitness.topPrime 50417 },
  { lower := 55451, upper := 55542, witness := RowWitness.topPrime 55441 },
  { lower := 55543, upper := 55548, witness := RowWitness.topPrime 55541 },
  { lower := 58619, upper := 58665, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62511, witness := RowWitness.topPrime 62497 },
  { lower := 65536, upper := 65622, witness := RowWitness.topPrime 65521 },
  { lower := 65623, upper := 65634, witness := RowWitness.topPrime 65617 },
  { lower := 68651, upper := 68691, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68991, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73268, witness := RowWitness.topPrime 73189 },
  { lower := 146410, upper := 146435, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148978, witness := RowWitness.topPrime 148949 }
]

def row102_layers : List CoverLayer := [
  { lower := 10302, upper := 20604, M := 23 },
  { lower := 20604, upper := 41208, M := 19 },
  { lower := 41208, upper := 82416, M := 15 },
  { lower := 82416, upper := 164832, M := 12 },
  { lower := 164832, upper := 329664, M := 10 },
  { lower := 329664, upper := 659328, M := 8 },
  { lower := 659328, upper := 1318656, M := 7 },
  { lower := 1318656, upper := 2637312, M := 6 },
  { lower := 2637312, upper := 5274624, M := 5 },
  { lower := 5274624, upper := 10549248, M := 4 },
  { lower := 10549248, upper := 21098496, M := 3 },
  { lower := 21098496, upper := 42196992, M := 3 },
  { lower := 42196992, upper := 84393984, M := 2 },
  { lower := 84393984, upper := 168787968, M := 2 },
  { lower := 168787968, upper := 337575936, M := 2 },
  { lower := 337575936, upper := 675151872, M := 1 },
  { lower := 675151872, upper := 1000000000, M := 1 }
]

def row102 : FiniteCoverRow := {
  height := row102_height,
  goods := row102_goods,
  layers := row102_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good000_checked :
    goodSegmentCheck 102 33 71
      { lower := 206, upper := 300, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good001_checked :
    goodSegmentCheck 102 33 71
      { lower := 301, upper := 394, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good002_checked :
    goodSegmentCheck 102 33 71
      { lower := 395, upper := 490, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good003_checked :
    goodSegmentCheck 102 33 71
      { lower := 491, upper := 592, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good004_checked :
    goodSegmentCheck 102 33 71
      { lower := 593, upper := 694, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good005_checked :
    goodSegmentCheck 102 33 71
      { lower := 695, upper := 792, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good006_checked :
    goodSegmentCheck 102 33 71
      { lower := 793, upper := 888, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good007_checked :
    goodSegmentCheck 102 33 71
      { lower := 889, upper := 988, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good008_checked :
    goodSegmentCheck 102 33 71
      { lower := 989, upper := 1084, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good009_checked :
    goodSegmentCheck 102 33 71
      { lower := 1085, upper := 1170, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good010_checked :
    goodSegmentCheck 102 33 71
      { lower := 1171, upper := 1272, witness := RowWitness.topPrime 1171 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good011_checked :
    goodSegmentCheck 102 33 71
      { lower := 1273, upper := 1360, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good012_checked :
    goodSegmentCheck 102 33 71
      { lower := 1361, upper := 1462, witness := RowWitness.topPrime 1361 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good013_checked :
    goodSegmentCheck 102 33 71
      { lower := 1463, upper := 1560, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good014_checked :
    goodSegmentCheck 102 33 71
      { lower := 1561, upper := 1660, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good015_checked :
    goodSegmentCheck 102 33 71
      { lower := 1661, upper := 1758, witness := RowWitness.topPrime 1657 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good016_checked :
    goodSegmentCheck 102 33 71
      { lower := 1759, upper := 1860, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good017_checked :
    goodSegmentCheck 102 33 71
      { lower := 1861, upper := 1962, witness := RowWitness.topPrime 1861 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good018_checked :
    goodSegmentCheck 102 33 71
      { lower := 1963, upper := 2052, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good019_checked :
    goodSegmentCheck 102 33 71
      { lower := 2053, upper := 2154, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good020_checked :
    goodSegmentCheck 102 33 71
      { lower := 2155, upper := 2254, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good021_checked :
    goodSegmentCheck 102 33 71
      { lower := 2255, upper := 2352, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good022_checked :
    goodSegmentCheck 102 33 71
      { lower := 2353, upper := 2452, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good023_checked :
    goodSegmentCheck 102 33 71
      { lower := 2453, upper := 2548, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good024_checked :
    goodSegmentCheck 102 33 71
      { lower := 2549, upper := 2650, witness := RowWitness.topPrime 2549 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good025_checked :
    goodSegmentCheck 102 33 71
      { lower := 2651, upper := 2748, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good026_checked :
    goodSegmentCheck 102 33 71
      { lower := 2749, upper := 2850, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good027_checked :
    goodSegmentCheck 102 33 71
      { lower := 2851, upper := 2952, witness := RowWitness.topPrime 2851 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good028_checked :
    goodSegmentCheck 102 33 71
      { lower := 2953, upper := 3054, witness := RowWitness.topPrime 2953 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good029_checked :
    goodSegmentCheck 102 33 71
      { lower := 3055, upper := 3150, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good030_checked :
    goodSegmentCheck 102 33 71
      { lower := 3151, upper := 3238, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good031_checked :
    goodSegmentCheck 102 33 71
      { lower := 3239, upper := 3330, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good032_checked :
    goodSegmentCheck 102 33 71
      { lower := 3331, upper := 3432, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good033_checked :
    goodSegmentCheck 102 33 71
      { lower := 3433, upper := 3534, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good034_checked :
    goodSegmentCheck 102 33 71
      { lower := 3535, upper := 3634, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good035_checked :
    goodSegmentCheck 102 33 71
      { lower := 3635, upper := 3732, witness := RowWitness.topPrime 3631 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good036_checked :
    goodSegmentCheck 102 33 71
      { lower := 3733, upper := 3834, witness := RowWitness.topPrime 3733 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good037_checked :
    goodSegmentCheck 102 33 71
      { lower := 3835, upper := 3934, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good038_checked :
    goodSegmentCheck 102 33 71
      { lower := 3935, upper := 4032, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good039_checked :
    goodSegmentCheck 102 33 71
      { lower := 4033, upper := 4128, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good040_checked :
    goodSegmentCheck 102 33 71
      { lower := 4129, upper := 4230, witness := RowWitness.topPrime 4129 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good041_checked :
    goodSegmentCheck 102 33 71
      { lower := 4231, upper := 4332, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good042_checked :
    goodSegmentCheck 102 33 71
      { lower := 4333, upper := 4428, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good043_checked :
    goodSegmentCheck 102 33 71
      { lower := 4429, upper := 4524, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good044_checked :
    goodSegmentCheck 102 33 71
      { lower := 4525, upper := 4624, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good045_checked :
    goodSegmentCheck 102 33 71
      { lower := 4625, upper := 4722, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good046_checked :
    goodSegmentCheck 102 33 71
      { lower := 4723, upper := 4824, witness := RowWitness.topPrime 4723 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good047_checked :
    goodSegmentCheck 102 33 71
      { lower := 4825, upper := 4918, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good048_checked :
    goodSegmentCheck 102 33 71
      { lower := 4919, upper := 5020, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good049_checked :
    goodSegmentCheck 102 33 71
      { lower := 5021, upper := 5122, witness := RowWitness.topPrime 5021 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good050_checked :
    goodSegmentCheck 102 33 71
      { lower := 5123, upper := 5220, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good051_checked :
    goodSegmentCheck 102 33 71
      { lower := 5221, upper := 5310, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good052_checked :
    goodSegmentCheck 102 33 71
      { lower := 5311, upper := 5410, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good053_checked :
    goodSegmentCheck 102 33 71
      { lower := 5411, upper := 5508, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good054_checked :
    goodSegmentCheck 102 33 71
      { lower := 5509, upper := 5608, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good055_checked :
    goodSegmentCheck 102 33 71
      { lower := 5609, upper := 5692, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good056_checked :
    goodSegmentCheck 102 33 71
      { lower := 5693, upper := 5794, witness := RowWitness.topPrime 5693 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good057_checked :
    goodSegmentCheck 102 33 71
      { lower := 5795, upper := 5892, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good058_checked :
    goodSegmentCheck 102 33 71
      { lower := 5893, upper := 5982, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good059_checked :
    goodSegmentCheck 102 33 71
      { lower := 5983, upper := 6082, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good060_checked :
    goodSegmentCheck 102 33 71
      { lower := 6083, upper := 6180, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good061_checked :
    goodSegmentCheck 102 33 71
      { lower := 6181, upper := 6274, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good062_checked :
    goodSegmentCheck 102 33 71
      { lower := 6275, upper := 6372, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good063_checked :
    goodSegmentCheck 102 33 71
      { lower := 6373, upper := 6474, witness := RowWitness.topPrime 6373 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good064_checked :
    goodSegmentCheck 102 33 71
      { lower := 6475, upper := 6574, witness := RowWitness.topPrime 6473 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good065_checked :
    goodSegmentCheck 102 33 71
      { lower := 6575, upper := 6672, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good066_checked :
    goodSegmentCheck 102 33 71
      { lower := 6673, upper := 6774, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good067_checked :
    goodSegmentCheck 102 33 71
      { lower := 6775, upper := 6864, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good068_checked :
    goodSegmentCheck 102 33 71
      { lower := 6865, upper := 6964, witness := RowWitness.topPrime 6863 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good069_checked :
    goodSegmentCheck 102 33 71
      { lower := 6965, upper := 7062, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good070_checked :
    goodSegmentCheck 102 33 71
      { lower := 7063, upper := 7158, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good071_checked :
    goodSegmentCheck 102 33 71
      { lower := 7159, upper := 7260, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good072_checked :
    goodSegmentCheck 102 33 71
      { lower := 7261, upper := 7354, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good073_checked :
    goodSegmentCheck 102 33 71
      { lower := 7355, upper := 7452, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good074_checked :
    goodSegmentCheck 102 33 71
      { lower := 7453, upper := 7552, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good075_checked :
    goodSegmentCheck 102 33 71
      { lower := 7553, upper := 7650, witness := RowWitness.topPrime 7549 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good076_checked :
    goodSegmentCheck 102 33 71
      { lower := 7651, upper := 7750, witness := RowWitness.topPrime 7649 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good077_checked :
    goodSegmentCheck 102 33 71
      { lower := 7751, upper := 7842, witness := RowWitness.topPrime 7741 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good078_checked :
    goodSegmentCheck 102 33 71
      { lower := 7843, upper := 7942, witness := RowWitness.topPrime 7841 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good079_checked :
    goodSegmentCheck 102 33 71
      { lower := 7943, upper := 8038, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good080_checked :
    goodSegmentCheck 102 33 71
      { lower := 8039, upper := 8140, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good081_checked :
    goodSegmentCheck 102 33 71
      { lower := 8141, upper := 8224, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good082_checked :
    goodSegmentCheck 102 33 71
      { lower := 8225, upper := 8322, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good083_checked :
    goodSegmentCheck 102 33 71
      { lower := 8323, upper := 8418, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good084_checked :
    goodSegmentCheck 102 33 71
      { lower := 8419, upper := 8520, witness := RowWitness.topPrime 8419 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good085_checked :
    goodSegmentCheck 102 33 71
      { lower := 8521, upper := 8622, witness := RowWitness.topPrime 8521 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good086_checked :
    goodSegmentCheck 102 33 71
      { lower := 8623, upper := 8724, witness := RowWitness.topPrime 8623 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good087_checked :
    goodSegmentCheck 102 33 71
      { lower := 8725, upper := 8820, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good088_checked :
    goodSegmentCheck 102 33 71
      { lower := 8821, upper := 8922, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good089_checked :
    goodSegmentCheck 102 33 71
      { lower := 8923, upper := 9024, witness := RowWitness.topPrime 8923 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good090_checked :
    goodSegmentCheck 102 33 71
      { lower := 9025, upper := 9114, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good091_checked :
    goodSegmentCheck 102 33 71
      { lower := 9115, upper := 9210, witness := RowWitness.topPrime 9109 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good092_checked :
    goodSegmentCheck 102 33 71
      { lower := 9211, upper := 9310, witness := RowWitness.topPrime 9209 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good093_checked :
    goodSegmentCheck 102 33 71
      { lower := 9311, upper := 9412, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good094_checked :
    goodSegmentCheck 102 33 71
      { lower := 9413, upper := 9514, witness := RowWitness.topPrime 9413 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good095_checked :
    goodSegmentCheck 102 33 71
      { lower := 9515, upper := 9612, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good096_checked :
    goodSegmentCheck 102 33 71
      { lower := 9613, upper := 9714, witness := RowWitness.topPrime 9613 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good097_checked :
    goodSegmentCheck 102 33 71
      { lower := 9715, upper := 9798, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good098_checked :
    goodSegmentCheck 102 33 71
      { lower := 9799, upper := 9892, witness := RowWitness.topPrime 9791 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good099_checked :
    goodSegmentCheck 102 33 71
      { lower := 9893, upper := 9988, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good100_checked :
    goodSegmentCheck 102 33 71
      { lower := 9989, upper := 10074, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good101_checked :
    goodSegmentCheck 102 33 71
      { lower := 10075, upper := 10170, witness := RowWitness.topPrime 10069 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good102_checked :
    goodSegmentCheck 102 33 71
      { lower := 10171, upper := 10270, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good103_checked :
    goodSegmentCheck 102 33 71
      { lower := 10271, upper := 10302, witness := RowWitness.topPrime 10271 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good104_checked :
    goodSegmentCheck 102 33 71
      { lower := 10580, upper := 10668, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good105_checked :
    goodSegmentCheck 102 33 71
      { lower := 10669, upper := 10749, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good106_checked :
    goodSegmentCheck 102 33 71
      { lower := 10935, upper := 11010, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good107_checked :
    goodSegmentCheck 102 33 71
      { lower := 11011, upper := 11086, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good108_checked :
    goodSegmentCheck 102 33 71
      { lower := 11094, upper := 11194, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good109_checked :
    goodSegmentCheck 102 33 71
      { lower := 11195, upper := 11210, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good110_checked :
    goodSegmentCheck 102 33 71
      { lower := 11236, upper := 11314, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good111_checked :
    goodSegmentCheck 102 33 71
      { lower := 11315, upper := 11351, witness := RowWitness.topPrime 11311 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good112_checked :
    goodSegmentCheck 102 33 71
      { lower := 11774, upper := 11844, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good113_checked :
    goodSegmentCheck 102 33 71
      { lower := 11845, upper := 11868, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good114_checked :
    goodSegmentCheck 102 33 71
      { lower := 11875, upper := 11875, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good115_checked :
    goodSegmentCheck 102 33 71
      { lower := 12005, upper := 12080, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good116_checked :
    goodSegmentCheck 102 33 71
      { lower := 12321, upper := 12389, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good117_checked :
    goodSegmentCheck 102 33 71
      { lower := 12493, upper := 12592, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good118_checked :
    goodSegmentCheck 102 33 71
      { lower := 12593, upper := 12594, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good119_checked :
    goodSegmentCheck 102 33 71
      { lower := 13125, upper := 13222, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good120_checked :
    goodSegmentCheck 102 33 71
      { lower := 13223, upper := 13226, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good121_checked :
    goodSegmentCheck 102 33 71
      { lower := 13254, upper := 13283, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good122_checked :
    goodSegmentCheck 102 33 71
      { lower := 13310, upper := 13355, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good123_checked :
    goodSegmentCheck 102 33 71
      { lower := 13454, upper := 13552, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good124_checked :
    goodSegmentCheck 102 33 71
      { lower := 13553, upper := 13557, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good125_checked :
    goodSegmentCheck 102 33 71
      { lower := 13718, upper := 13812, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good126_checked :
    goodSegmentCheck 102 33 71
      { lower := 13813, upper := 13851, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good127_checked :
    goodSegmentCheck 102 33 71
      { lower := 14336, upper := 14428, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good128_checked :
    goodSegmentCheck 102 33 71
      { lower := 14429, upper := 14507, witness := RowWitness.topPrime 14423 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good129_checked :
    goodSegmentCheck 102 33 71
      { lower := 14884, upper := 14893, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good130_checked :
    goodSegmentCheck 102 33 71
      { lower := 15123, upper := 15222, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good131_checked :
    goodSegmentCheck 102 33 71
      { lower := 15223, upper := 15230, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good132_checked :
    goodSegmentCheck 102 33 71
      { lower := 15376, upper := 15474, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good133_checked :
    goodSegmentCheck 102 33 71
      { lower := 15475, upper := 15480, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good134_checked :
    goodSegmentCheck 102 33 71
      { lower := 15979, upper := 16074, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good135_checked :
    goodSegmentCheck 102 33 71
      { lower := 16075, upper := 16080, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good136_checked :
    goodSegmentCheck 102 33 71
      { lower := 16384, upper := 16482, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good137_checked :
    goodSegmentCheck 102 33 71
      { lower := 16483, upper := 16485, witness := RowWitness.topPrime 16481 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good138_checked :
    goodSegmentCheck 102 33 71
      { lower := 16810, upper := 16888, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good139_checked :
    goodSegmentCheck 102 33 71
      { lower := 16889, upper := 16921, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good140_checked :
    goodSegmentCheck 102 33 71
      { lower := 17303, upper := 17399, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good141_checked :
    goodSegmentCheck 102 33 71
      { lower := 17661, upper := 17760, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good142_checked :
    goodSegmentCheck 102 33 71
      { lower := 17761, upper := 17762, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good143_checked :
    goodSegmentCheck 102 33 71
      { lower := 18490, upper := 18582, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good144_checked :
    goodSegmentCheck 102 33 71
      { lower := 18583, upper := 18592, witness := RowWitness.topPrime 18583 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good145_checked :
    goodSegmentCheck 102 33 71
      { lower := 18634, upper := 18706, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good146_checked :
    goodSegmentCheck 102 33 71
      { lower := 18723, upper := 18735, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good147_checked :
    goodSegmentCheck 102 33 71
      { lower := 18750, upper := 18850, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good148_checked :
    goodSegmentCheck 102 33 71
      { lower := 18851, upper := 18851, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good149_checked :
    goodSegmentCheck 102 33 71
      { lower := 19208, upper := 19308, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good150_checked :
    goodSegmentCheck 102 33 71
      { lower := 19309, upper := 19309, witness := RowWitness.topPrime 19309 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good151_checked :
    goodSegmentCheck 102 33 71
      { lower := 19683, upper := 19764, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good152_checked :
    goodSegmentCheck 102 33 71
      { lower := 19773, upper := 19784, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good153_checked :
    goodSegmentCheck 102 33 71
      { lower := 19965, upper := 19982, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good154_checked :
    goodSegmentCheck 102 33 71
      { lower := 20172, upper := 20262, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good155_checked :
    goodSegmentCheck 102 33 71
      { lower := 20263, upper := 20273, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good156_checked :
    goodSegmentCheck 102 33 71
      { lower := 20402, upper := 20440, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good157_checked :
    goodSegmentCheck 102 33 71
      { lower := 20480, upper := 20503, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good158_checked :
    goodSegmentCheck 102 33 71
      { lower := 20535, upper := 20634, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good159_checked :
    goodSegmentCheck 102 33 71
      { lower := 20635, upper := 20636, witness := RowWitness.topPrime 20627 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good160_checked :
    goodSegmentCheck 102 33 71
      { lower := 20667, upper := 20678, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good161_checked :
    goodSegmentCheck 102 33 71
      { lower := 21316, upper := 21397, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good162_checked :
    goodSegmentCheck 102 33 71
      { lower := 21875, upper := 21972, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good163_checked :
    goodSegmentCheck 102 33 71
      { lower := 21973, upper := 22005, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good164_checked :
    goodSegmentCheck 102 33 71
      { lower := 22188, upper := 22191, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good165_checked :
    goodSegmentCheck 102 33 71
      { lower := 22472, upper := 22546, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good166_checked :
    goodSegmentCheck 102 33 71
      { lower := 24010, upper := 24108, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good167_checked :
    goodSegmentCheck 102 33 71
      { lower := 24109, upper := 24111, witness := RowWitness.topPrime 24109 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good168_checked :
    goodSegmentCheck 102 33 71
      { lower := 24334, upper := 24430, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good169_checked :
    goodSegmentCheck 102 33 71
      { lower := 24431, upper := 24468, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good170_checked :
    goodSegmentCheck 102 33 71
      { lower := 24642, upper := 24677, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good171_checked :
    goodSegmentCheck 102 33 71
      { lower := 25000, upper := 25065, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good172_checked :
    goodSegmentCheck 102 33 71
      { lower := 25215, upper := 25290, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good173_checked :
    goodSegmentCheck 102 33 71
      { lower := 25291, upper := 25362, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good174_checked :
    goodSegmentCheck 102 33 71
      { lower := 25363, upper := 25382, witness := RowWitness.topPrime 25357 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good175_checked :
    goodSegmentCheck 102 33 71
      { lower := 26047, upper := 26112, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good176_checked :
    goodSegmentCheck 102 33 71
      { lower := 26411, upper := 26465, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good177_checked :
    goodSegmentCheck 102 33 71
      { lower := 26508, upper := 26512, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good178_checked :
    goodSegmentCheck 102 33 71
      { lower := 26934, upper := 26997, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good179_checked :
    goodSegmentCheck 102 33 71
      { lower := 28125, upper := 28191, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good180_checked :
    goodSegmentCheck 102 33 71
      { lower := 28577, upper := 28662, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good181_checked :
    goodSegmentCheck 102 33 71
      { lower := 28672, upper := 28678, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good182_checked :
    goodSegmentCheck 102 33 71
      { lower := 28717, upper := 28773, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good183_checked :
    goodSegmentCheck 102 33 71
      { lower := 28812, upper := 28818, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good184_checked :
    goodSegmentCheck 102 33 71
      { lower := 29791, upper := 29869, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good185_checked :
    goodSegmentCheck 102 33 71
      { lower := 30258, upper := 30347, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good186_checked :
    goodSegmentCheck 102 33 71
      { lower := 30926, upper := 31000, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good187_checked :
    goodSegmentCheck 102 33 71
      { lower := 31213, upper := 31294, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good188_checked :
    goodSegmentCheck 102 33 71
      { lower := 31295, upper := 31314, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good189_checked :
    goodSegmentCheck 102 33 71
      { lower := 31329, upper := 31351, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good190_checked :
    goodSegmentCheck 102 33 71
      { lower := 31423, upper := 31430, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good191_checked :
    goodSegmentCheck 102 33 71
      { lower := 31433, upper := 31498, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good192_checked :
    goodSegmentCheck 102 33 71
      { lower := 31499, upper := 31524, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good193_checked :
    goodSegmentCheck 102 33 71
      { lower := 31974, upper := 32040, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good194_checked :
    goodSegmentCheck 102 33 71
      { lower := 32805, upper := 32869, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good195_checked :
    goodSegmentCheck 102 33 71
      { lower := 33708, upper := 33715, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good196_checked :
    goodSegmentCheck 102 33 71
      { lower := 34375, upper := 34396, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good197_checked :
    goodSegmentCheck 102 33 71
      { lower := 34445, upper := 34476, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good198_checked :
    goodSegmentCheck 102 33 71
      { lower := 35152, upper := 35232, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good199_checked :
    goodSegmentCheck 102 33 71
      { lower := 35344, upper := 35388, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good200_checked :
    goodSegmentCheck 102 33 71
      { lower := 36517, upper := 36598, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good201_checked :
    goodSegmentCheck 102 33 71
      { lower := 36599, upper := 36602, witness := RowWitness.topPrime 36599 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good202_checked :
    goodSegmentCheck 102 33 71
      { lower := 37303, upper := 37311, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good203_checked :
    goodSegmentCheck 102 33 71
      { lower := 37349, upper := 37404, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good204_checked :
    goodSegmentCheck 102 33 71
      { lower := 37446, upper := 37450, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good205_checked :
    goodSegmentCheck 102 33 71
      { lower := 37500, upper := 37547, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good206_checked :
    goodSegmentCheck 102 33 71
      { lower := 37553, upper := 37601, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good207_checked :
    goodSegmentCheck 102 33 71
      { lower := 37636, upper := 37654, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good208_checked :
    goodSegmentCheck 102 33 71
      { lower := 39366, upper := 39427, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good209_checked :
    goodSegmentCheck 102 33 71
      { lower := 39605, upper := 39647, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good210_checked :
    goodSegmentCheck 102 33 71
      { lower := 40401, upper := 40429, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good211_checked :
    goodSegmentCheck 102 33 71
      { lower := 40817, upper := 40905, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good212_checked :
    goodSegmentCheck 102 33 71
      { lower := 40960, upper := 41032, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good213_checked :
    goodSegmentCheck 102 33 71
      { lower := 43750, upper := 43788, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good214_checked :
    goodSegmentCheck 102 33 71
      { lower := 48013, upper := 48062, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good215_checked :
    goodSegmentCheck 102 33 71
      { lower := 48734, upper := 48769, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good216_checked :
    goodSegmentCheck 102 33 71
      { lower := 48778, upper := 48835, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good217_checked :
    goodSegmentCheck 102 33 71
      { lower := 50421, upper := 50511, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good218_checked :
    goodSegmentCheck 102 33 71
      { lower := 55451, upper := 55542, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good219_checked :
    goodSegmentCheck 102 33 71
      { lower := 55543, upper := 55548, witness := RowWitness.topPrime 55541 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good220_checked :
    goodSegmentCheck 102 33 71
      { lower := 58619, upper := 58665, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good221_checked :
    goodSegmentCheck 102 33 71
      { lower := 62500, upper := 62511, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good222_checked :
    goodSegmentCheck 102 33 71
      { lower := 65536, upper := 65622, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good223_checked :
    goodSegmentCheck 102 33 71
      { lower := 65623, upper := 65634, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good224_checked :
    goodSegmentCheck 102 33 71
      { lower := 68651, upper := 68691, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good225_checked :
    goodSegmentCheck 102 33 71
      { lower := 68921, upper := 68991, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good226_checked :
    goodSegmentCheck 102 33 71
      { lower := 73205, upper := 73268, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good227_checked :
    goodSegmentCheck 102 33 71
      { lower := 146410, upper := 146435, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good228_checked :
    goodSegmentCheck 102 33 71
      { lower := 148955, upper := 148978, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good228_checked
