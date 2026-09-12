import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row126_height : HeightCertificateDatum := { i := 126, r := 41, s := 89, n0Power10 := 8 }

def row126_goods : List GoodSegment := [
  { lower := 254, upper := 376, witness := RowWitness.topPrime 251 },
  { lower := 377, upper := 498, witness := RowWitness.topPrime 373 },
  { lower := 499, upper := 624, witness := RowWitness.topPrime 499 },
  { lower := 625, upper := 744, witness := RowWitness.topPrime 619 },
  { lower := 745, upper := 868, witness := RowWitness.topPrime 743 },
  { lower := 869, upper := 988, witness := RowWitness.topPrime 863 },
  { lower := 989, upper := 1108, witness := RowWitness.topPrime 983 },
  { lower := 1109, upper := 1234, witness := RowWitness.topPrime 1109 },
  { lower := 1235, upper := 1356, witness := RowWitness.topPrime 1231 },
  { lower := 1357, upper := 1452, witness := RowWitness.topPrime 1327 },
  { lower := 1453, upper := 1578, witness := RowWitness.topPrime 1453 },
  { lower := 1579, upper := 1704, witness := RowWitness.topPrime 1579 },
  { lower := 1705, upper := 1824, witness := RowWitness.topPrime 1699 },
  { lower := 1825, upper := 1948, witness := RowWitness.topPrime 1823 },
  { lower := 1949, upper := 2074, witness := RowWitness.topPrime 1949 },
  { lower := 2075, upper := 2194, witness := RowWitness.topPrime 2069 },
  { lower := 2195, upper := 2304, witness := RowWitness.topPrime 2179 },
  { lower := 2305, upper := 2422, witness := RowWitness.topPrime 2297 },
  { lower := 2423, upper := 2548, witness := RowWitness.topPrime 2423 },
  { lower := 2549, upper := 2674, witness := RowWitness.topPrime 2549 },
  { lower := 2675, upper := 2796, witness := RowWitness.topPrime 2671 },
  { lower := 2797, upper := 2922, witness := RowWitness.topPrime 2797 },
  { lower := 2923, upper := 3042, witness := RowWitness.topPrime 2917 },
  { lower := 3043, upper := 3166, witness := RowWitness.topPrime 3041 },
  { lower := 3167, upper := 3292, witness := RowWitness.topPrime 3167 },
  { lower := 3293, upper := 3396, witness := RowWitness.topPrime 3271 },
  { lower := 3397, upper := 3516, witness := RowWitness.topPrime 3391 },
  { lower := 3517, upper := 3642, witness := RowWitness.topPrime 3517 },
  { lower := 3643, upper := 3768, witness := RowWitness.topPrime 3643 },
  { lower := 3769, upper := 3894, witness := RowWitness.topPrime 3769 },
  { lower := 3895, upper := 4014, witness := RowWitness.topPrime 3889 },
  { lower := 4015, upper := 4138, witness := RowWitness.topPrime 4013 },
  { lower := 4139, upper := 4264, witness := RowWitness.topPrime 4139 },
  { lower := 4265, upper := 4386, witness := RowWitness.topPrime 4261 },
  { lower := 4387, upper := 4498, witness := RowWitness.topPrime 4373 },
  { lower := 4499, upper := 4618, witness := RowWitness.topPrime 4493 },
  { lower := 4619, upper := 4728, witness := RowWitness.topPrime 4603 },
  { lower := 4729, upper := 4854, witness := RowWitness.topPrime 4729 },
  { lower := 4855, upper := 4956, witness := RowWitness.topPrime 4831 },
  { lower := 4957, upper := 5082, witness := RowWitness.topPrime 4957 },
  { lower := 5083, upper := 5206, witness := RowWitness.topPrime 5081 },
  { lower := 5207, upper := 5322, witness := RowWitness.topPrime 5197 },
  { lower := 5323, upper := 5448, witness := RowWitness.topPrime 5323 },
  { lower := 5449, upper := 5574, witness := RowWitness.topPrime 5449 },
  { lower := 5575, upper := 5698, witness := RowWitness.topPrime 5573 },
  { lower := 5699, upper := 5818, witness := RowWitness.topPrime 5693 },
  { lower := 5819, upper := 5938, witness := RowWitness.topPrime 5813 },
  { lower := 5939, upper := 6064, witness := RowWitness.topPrime 5939 },
  { lower := 6065, upper := 6178, witness := RowWitness.topPrime 6053 },
  { lower := 6179, upper := 6298, witness := RowWitness.topPrime 6173 },
  { lower := 6299, upper := 6424, witness := RowWitness.topPrime 6299 },
  { lower := 6425, upper := 6546, witness := RowWitness.topPrime 6421 },
  { lower := 6547, upper := 6672, witness := RowWitness.topPrime 6547 },
  { lower := 6673, upper := 6798, witness := RowWitness.topPrime 6673 },
  { lower := 6799, upper := 6918, witness := RowWitness.topPrime 6793 },
  { lower := 6919, upper := 7042, witness := RowWitness.topPrime 6917 },
  { lower := 7043, upper := 7168, witness := RowWitness.topPrime 7043 },
  { lower := 7169, upper := 7284, witness := RowWitness.topPrime 7159 },
  { lower := 7285, upper := 7408, witness := RowWitness.topPrime 7283 },
  { lower := 7409, upper := 7518, witness := RowWitness.topPrime 7393 },
  { lower := 7519, upper := 7642, witness := RowWitness.topPrime 7517 },
  { lower := 7643, upper := 7768, witness := RowWitness.topPrime 7643 },
  { lower := 7769, upper := 7884, witness := RowWitness.topPrime 7759 },
  { lower := 7885, upper := 8008, witness := RowWitness.topPrime 7883 },
  { lower := 8009, upper := 8134, witness := RowWitness.topPrime 8009 },
  { lower := 8135, upper := 8248, witness := RowWitness.topPrime 8123 },
  { lower := 8249, upper := 8368, witness := RowWitness.topPrime 8243 },
  { lower := 8369, upper := 8494, witness := RowWitness.topPrime 8369 },
  { lower := 8495, upper := 8592, witness := RowWitness.topPrime 8467 },
  { lower := 8593, upper := 8706, witness := RowWitness.topPrime 8581 },
  { lower := 8707, upper := 8832, witness := RowWitness.topPrime 8707 },
  { lower := 8833, upper := 8956, witness := RowWitness.topPrime 8831 },
  { lower := 8957, upper := 9076, witness := RowWitness.topPrime 8951 },
  { lower := 9077, upper := 9192, witness := RowWitness.topPrime 9067 },
  { lower := 9193, upper := 9312, witness := RowWitness.topPrime 9187 },
  { lower := 9313, upper := 9436, witness := RowWitness.topPrime 9311 },
  { lower := 9437, upper := 9562, witness := RowWitness.topPrime 9437 },
  { lower := 9563, upper := 9676, witness := RowWitness.topPrime 9551 },
  { lower := 9677, upper := 9802, witness := RowWitness.topPrime 9677 },
  { lower := 9803, upper := 9928, witness := RowWitness.topPrime 9803 },
  { lower := 9929, upper := 10054, witness := RowWitness.topPrime 9929 },
  { lower := 10055, upper := 10164, witness := RowWitness.topPrime 10039 },
  { lower := 10165, upper := 10288, witness := RowWitness.topPrime 10163 },
  { lower := 10289, upper := 10414, witness := RowWitness.topPrime 10289 },
  { lower := 10415, upper := 10524, witness := RowWitness.topPrime 10399 },
  { lower := 10525, upper := 10638, witness := RowWitness.topPrime 10513 },
  { lower := 10639, upper := 10764, witness := RowWitness.topPrime 10639 },
  { lower := 10765, upper := 10878, witness := RowWitness.topPrime 10753 },
  { lower := 10879, upper := 10992, witness := RowWitness.topPrime 10867 },
  { lower := 10993, upper := 11118, witness := RowWitness.topPrime 10993 },
  { lower := 11119, upper := 11244, witness := RowWitness.topPrime 11119 },
  { lower := 11245, upper := 11368, witness := RowWitness.topPrime 11243 },
  { lower := 11369, upper := 11494, witness := RowWitness.topPrime 11369 },
  { lower := 11495, upper := 11616, witness := RowWitness.topPrime 11491 },
  { lower := 11617, upper := 11742, witness := RowWitness.topPrime 11617 },
  { lower := 11743, upper := 11868, witness := RowWitness.topPrime 11743 },
  { lower := 11869, upper := 11992, witness := RowWitness.topPrime 11867 },
  { lower := 11993, upper := 12112, witness := RowWitness.topPrime 11987 },
  { lower := 12113, upper := 12238, witness := RowWitness.topPrime 12113 },
  { lower := 12239, upper := 12364, witness := RowWitness.topPrime 12239 },
  { lower := 12365, upper := 12472, witness := RowWitness.topPrime 12347 },
  { lower := 12473, upper := 12598, witness := RowWitness.topPrime 12473 },
  { lower := 12599, upper := 12714, witness := RowWitness.topPrime 12589 },
  { lower := 12715, upper := 12838, witness := RowWitness.topPrime 12713 },
  { lower := 12839, upper := 12954, witness := RowWitness.topPrime 12829 },
  { lower := 12955, upper := 13078, witness := RowWitness.topPrime 12953 },
  { lower := 13079, upper := 13188, witness := RowWitness.topPrime 13063 },
  { lower := 13189, upper := 13312, witness := RowWitness.topPrime 13187 },
  { lower := 13313, upper := 13438, witness := RowWitness.topPrime 13313 },
  { lower := 13439, upper := 13546, witness := RowWitness.topPrime 13421 },
  { lower := 13547, upper := 13662, witness := RowWitness.topPrime 13537 },
  { lower := 13663, upper := 13774, witness := RowWitness.topPrime 13649 },
  { lower := 13775, upper := 13888, witness := RowWitness.topPrime 13763 },
  { lower := 13889, upper := 14008, witness := RowWitness.topPrime 13883 },
  { lower := 14009, upper := 14134, witness := RowWitness.topPrime 14009 },
  { lower := 14135, upper := 14232, witness := RowWitness.topPrime 14107 },
  { lower := 14233, upper := 14346, witness := RowWitness.topPrime 14221 },
  { lower := 14347, upper := 14472, witness := RowWitness.topPrime 14347 },
  { lower := 14473, upper := 14586, witness := RowWitness.topPrime 14461 },
  { lower := 14587, upper := 14688, witness := RowWitness.topPrime 14563 },
  { lower := 14689, upper := 14808, witness := RowWitness.topPrime 14683 },
  { lower := 14809, upper := 14922, witness := RowWitness.topPrime 14797 },
  { lower := 14923, upper := 15048, witness := RowWitness.topPrime 14923 },
  { lower := 15049, upper := 15156, witness := RowWitness.topPrime 15031 },
  { lower := 15157, upper := 15274, witness := RowWitness.topPrime 15149 },
  { lower := 15275, upper := 15396, witness := RowWitness.topPrime 15271 },
  { lower := 15397, upper := 15516, witness := RowWitness.topPrime 15391 },
  { lower := 15517, upper := 15636, witness := RowWitness.topPrime 15511 },
  { lower := 15637, upper := 15749, witness := RowWitness.topPrime 15629 },
  { lower := 15987, upper := 16097, witness := RowWitness.topPrime 15973 },
  { lower := 16428, upper := 16509, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16912, witness := RowWitness.topPrime 16787 },
  { lower := 16913, upper := 16935, witness := RowWitness.topPrime 16903 },
  { lower := 17405, upper := 17428, witness := RowWitness.topPrime 17401 },
  { lower := 17672, upper := 17701, witness := RowWitness.topPrime 17669 },
  { lower := 17797, upper := 17797, witness := RowWitness.topPrime 17791 },
  { lower := 18491, upper := 18606, witness := RowWitness.topPrime 18481 },
  { lower := 18607, upper := 18616, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18742, witness := RowWitness.topPrime 18617 },
  { lower := 18743, upper := 18868, witness := RowWitness.topPrime 18743 },
  { lower := 18869, upper := 18875, witness := RowWitness.topPrime 18869 },
  { lower := 19663, upper := 19786, witness := RowWitness.topPrime 19661 },
  { lower := 19787, upper := 19808, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19898, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20006, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20286, witness := RowWitness.topPrime 20161 },
  { lower := 20287, upper := 20289, witness := RowWitness.topPrime 20287 },
  { lower := 20402, upper := 20464, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20527, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20658, witness := RowWitness.topPrime 20533 },
  { lower := 20659, upper := 20660, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20702, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21408, witness := RowWitness.topPrime 21283 },
  { lower := 21409, upper := 21421, witness := RowWitness.topPrime 21407 },
  { lower := 21875, upper := 21996, witness := RowWitness.topPrime 21871 },
  { lower := 21997, upper := 22029, witness := RowWitness.topPrime 21997 },
  { lower := 22090, upper := 22095, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22215, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22451, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22570, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23886, witness := RowWitness.topPrime 23761 },
  { lower := 23887, upper := 23887, witness := RowWitness.topPrime 23887 },
  { lower := 24334, upper := 24454, witness := RowWitness.topPrime 24329 },
  { lower := 24455, upper := 24492, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24690, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25089, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25314, witness := RowWitness.topPrime 25189 },
  { lower := 25315, upper := 25340, witness := RowWitness.topPrime 25309 },
  { lower := 26934, upper := 27021, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27561, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27860, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28215, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28250, witness := RowWitness.topPrime 28219 },
  { lower := 28672, upper := 28686, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28797, witness := RowWitness.topPrime 28711 },
  { lower := 29584, upper := 29603, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29893, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 31024, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31374, witness := RowWitness.topPrime 31249 },
  { lower := 31375, upper := 31375, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31454, witness := RowWitness.topPrime 31397 },
  { lower := 34347, upper := 34462, witness := RowWitness.topPrime 34337 },
  { lower := 34463, upper := 34516, witness := RowWitness.topPrime 34457 },
  { lower := 37303, upper := 37335, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37571, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38416, witness := RowWitness.topPrime 38303 },
  { lower := 40401, upper := 40453, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41056, witness := RowWitness.topPrime 40949 },
  { lower := 47526, upper := 47646, witness := RowWitness.topPrime 47521 },
  { lower := 47647, upper := 47649, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48086, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48793, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49255, witness := RowWitness.topPrime 49139 },
  { lower := 51076, upper := 51130, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55566, witness := RowWitness.topPrime 55441 },
  { lower := 55567, upper := 55572, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57247, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58689, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59081, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62535, witness := RowWitness.topPrime 62497 },
  { lower := 71289, upper := 71412, witness := RowWitness.topPrime 71287 },
  { lower := 71413, upper := 71414, witness := RowWitness.topPrime 71413 },
  { lower := 73205, upper := 73292, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89498, witness := RowWitness.topPrime 89381 },
  { lower := 148955, upper := 149002, witness := RowWitness.topPrime 148949 }
]

def row126_layers : List CoverLayer := [
  { lower := 15750, upper := 31500, M := 16 },
  { lower := 31500, upper := 63000, M := 12 },
  { lower := 63000, upper := 126000, M := 9 },
  { lower := 126000, upper := 252000, M := 7 },
  { lower := 252000, upper := 504000, M := 6 },
  { lower := 504000, upper := 1008000, M := 4 },
  { lower := 1008000, upper := 2016000, M := 3 },
  { lower := 2016000, upper := 4032000, M := 3 },
  { lower := 4032000, upper := 8064000, M := 2 },
  { lower := 8064000, upper := 16128000, M := 2 },
  { lower := 16128000, upper := 32256000, M := 1 },
  { lower := 32256000, upper := 64512000, M := 1 },
  { lower := 64512000, upper := 100000000, M := 1 }
]

def row126 : FiniteCoverRow := {
  height := row126_height,
  goods := row126_goods,
  layers := row126_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good000_checked :
    goodSegmentCheck 126 41 89
      { lower := 254, upper := 376, witness := RowWitness.topPrime 251 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good001_checked :
    goodSegmentCheck 126 41 89
      { lower := 377, upper := 498, witness := RowWitness.topPrime 373 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good002_checked :
    goodSegmentCheck 126 41 89
      { lower := 499, upper := 624, witness := RowWitness.topPrime 499 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good003_checked :
    goodSegmentCheck 126 41 89
      { lower := 625, upper := 744, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good004_checked :
    goodSegmentCheck 126 41 89
      { lower := 745, upper := 868, witness := RowWitness.topPrime 743 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good005_checked :
    goodSegmentCheck 126 41 89
      { lower := 869, upper := 988, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good006_checked :
    goodSegmentCheck 126 41 89
      { lower := 989, upper := 1108, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good007_checked :
    goodSegmentCheck 126 41 89
      { lower := 1109, upper := 1234, witness := RowWitness.topPrime 1109 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good008_checked :
    goodSegmentCheck 126 41 89
      { lower := 1235, upper := 1356, witness := RowWitness.topPrime 1231 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good009_checked :
    goodSegmentCheck 126 41 89
      { lower := 1357, upper := 1452, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good010_checked :
    goodSegmentCheck 126 41 89
      { lower := 1453, upper := 1578, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good011_checked :
    goodSegmentCheck 126 41 89
      { lower := 1579, upper := 1704, witness := RowWitness.topPrime 1579 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good012_checked :
    goodSegmentCheck 126 41 89
      { lower := 1705, upper := 1824, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good013_checked :
    goodSegmentCheck 126 41 89
      { lower := 1825, upper := 1948, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good014_checked :
    goodSegmentCheck 126 41 89
      { lower := 1949, upper := 2074, witness := RowWitness.topPrime 1949 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good015_checked :
    goodSegmentCheck 126 41 89
      { lower := 2075, upper := 2194, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good016_checked :
    goodSegmentCheck 126 41 89
      { lower := 2195, upper := 2304, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good017_checked :
    goodSegmentCheck 126 41 89
      { lower := 2305, upper := 2422, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good018_checked :
    goodSegmentCheck 126 41 89
      { lower := 2423, upper := 2548, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good019_checked :
    goodSegmentCheck 126 41 89
      { lower := 2549, upper := 2674, witness := RowWitness.topPrime 2549 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good020_checked :
    goodSegmentCheck 126 41 89
      { lower := 2675, upper := 2796, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good021_checked :
    goodSegmentCheck 126 41 89
      { lower := 2797, upper := 2922, witness := RowWitness.topPrime 2797 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good022_checked :
    goodSegmentCheck 126 41 89
      { lower := 2923, upper := 3042, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good023_checked :
    goodSegmentCheck 126 41 89
      { lower := 3043, upper := 3166, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good024_checked :
    goodSegmentCheck 126 41 89
      { lower := 3167, upper := 3292, witness := RowWitness.topPrime 3167 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good025_checked :
    goodSegmentCheck 126 41 89
      { lower := 3293, upper := 3396, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good026_checked :
    goodSegmentCheck 126 41 89
      { lower := 3397, upper := 3516, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good027_checked :
    goodSegmentCheck 126 41 89
      { lower := 3517, upper := 3642, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good028_checked :
    goodSegmentCheck 126 41 89
      { lower := 3643, upper := 3768, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good029_checked :
    goodSegmentCheck 126 41 89
      { lower := 3769, upper := 3894, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good030_checked :
    goodSegmentCheck 126 41 89
      { lower := 3895, upper := 4014, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good031_checked :
    goodSegmentCheck 126 41 89
      { lower := 4015, upper := 4138, witness := RowWitness.topPrime 4013 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good032_checked :
    goodSegmentCheck 126 41 89
      { lower := 4139, upper := 4264, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good033_checked :
    goodSegmentCheck 126 41 89
      { lower := 4265, upper := 4386, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good034_checked :
    goodSegmentCheck 126 41 89
      { lower := 4387, upper := 4498, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good035_checked :
    goodSegmentCheck 126 41 89
      { lower := 4499, upper := 4618, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good036_checked :
    goodSegmentCheck 126 41 89
      { lower := 4619, upper := 4728, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good037_checked :
    goodSegmentCheck 126 41 89
      { lower := 4729, upper := 4854, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good038_checked :
    goodSegmentCheck 126 41 89
      { lower := 4855, upper := 4956, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good039_checked :
    goodSegmentCheck 126 41 89
      { lower := 4957, upper := 5082, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good040_checked :
    goodSegmentCheck 126 41 89
      { lower := 5083, upper := 5206, witness := RowWitness.topPrime 5081 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good041_checked :
    goodSegmentCheck 126 41 89
      { lower := 5207, upper := 5322, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good042_checked :
    goodSegmentCheck 126 41 89
      { lower := 5323, upper := 5448, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good043_checked :
    goodSegmentCheck 126 41 89
      { lower := 5449, upper := 5574, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good044_checked :
    goodSegmentCheck 126 41 89
      { lower := 5575, upper := 5698, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good045_checked :
    goodSegmentCheck 126 41 89
      { lower := 5699, upper := 5818, witness := RowWitness.topPrime 5693 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good046_checked :
    goodSegmentCheck 126 41 89
      { lower := 5819, upper := 5938, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good047_checked :
    goodSegmentCheck 126 41 89
      { lower := 5939, upper := 6064, witness := RowWitness.topPrime 5939 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good048_checked :
    goodSegmentCheck 126 41 89
      { lower := 6065, upper := 6178, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good049_checked :
    goodSegmentCheck 126 41 89
      { lower := 6179, upper := 6298, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good050_checked :
    goodSegmentCheck 126 41 89
      { lower := 6299, upper := 6424, witness := RowWitness.topPrime 6299 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good051_checked :
    goodSegmentCheck 126 41 89
      { lower := 6425, upper := 6546, witness := RowWitness.topPrime 6421 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good052_checked :
    goodSegmentCheck 126 41 89
      { lower := 6547, upper := 6672, witness := RowWitness.topPrime 6547 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good053_checked :
    goodSegmentCheck 126 41 89
      { lower := 6673, upper := 6798, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good054_checked :
    goodSegmentCheck 126 41 89
      { lower := 6799, upper := 6918, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good055_checked :
    goodSegmentCheck 126 41 89
      { lower := 6919, upper := 7042, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good056_checked :
    goodSegmentCheck 126 41 89
      { lower := 7043, upper := 7168, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good057_checked :
    goodSegmentCheck 126 41 89
      { lower := 7169, upper := 7284, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good058_checked :
    goodSegmentCheck 126 41 89
      { lower := 7285, upper := 7408, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good059_checked :
    goodSegmentCheck 126 41 89
      { lower := 7409, upper := 7518, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good060_checked :
    goodSegmentCheck 126 41 89
      { lower := 7519, upper := 7642, witness := RowWitness.topPrime 7517 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good061_checked :
    goodSegmentCheck 126 41 89
      { lower := 7643, upper := 7768, witness := RowWitness.topPrime 7643 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good062_checked :
    goodSegmentCheck 126 41 89
      { lower := 7769, upper := 7884, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good063_checked :
    goodSegmentCheck 126 41 89
      { lower := 7885, upper := 8008, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good064_checked :
    goodSegmentCheck 126 41 89
      { lower := 8009, upper := 8134, witness := RowWitness.topPrime 8009 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good065_checked :
    goodSegmentCheck 126 41 89
      { lower := 8135, upper := 8248, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good066_checked :
    goodSegmentCheck 126 41 89
      { lower := 8249, upper := 8368, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good067_checked :
    goodSegmentCheck 126 41 89
      { lower := 8369, upper := 8494, witness := RowWitness.topPrime 8369 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good068_checked :
    goodSegmentCheck 126 41 89
      { lower := 8495, upper := 8592, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good069_checked :
    goodSegmentCheck 126 41 89
      { lower := 8593, upper := 8706, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good070_checked :
    goodSegmentCheck 126 41 89
      { lower := 8707, upper := 8832, witness := RowWitness.topPrime 8707 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good071_checked :
    goodSegmentCheck 126 41 89
      { lower := 8833, upper := 8956, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good072_checked :
    goodSegmentCheck 126 41 89
      { lower := 8957, upper := 9076, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good073_checked :
    goodSegmentCheck 126 41 89
      { lower := 9077, upper := 9192, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good074_checked :
    goodSegmentCheck 126 41 89
      { lower := 9193, upper := 9312, witness := RowWitness.topPrime 9187 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good075_checked :
    goodSegmentCheck 126 41 89
      { lower := 9313, upper := 9436, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good076_checked :
    goodSegmentCheck 126 41 89
      { lower := 9437, upper := 9562, witness := RowWitness.topPrime 9437 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good077_checked :
    goodSegmentCheck 126 41 89
      { lower := 9563, upper := 9676, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good078_checked :
    goodSegmentCheck 126 41 89
      { lower := 9677, upper := 9802, witness := RowWitness.topPrime 9677 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good079_checked :
    goodSegmentCheck 126 41 89
      { lower := 9803, upper := 9928, witness := RowWitness.topPrime 9803 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good080_checked :
    goodSegmentCheck 126 41 89
      { lower := 9929, upper := 10054, witness := RowWitness.topPrime 9929 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good081_checked :
    goodSegmentCheck 126 41 89
      { lower := 10055, upper := 10164, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good082_checked :
    goodSegmentCheck 126 41 89
      { lower := 10165, upper := 10288, witness := RowWitness.topPrime 10163 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good083_checked :
    goodSegmentCheck 126 41 89
      { lower := 10289, upper := 10414, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good084_checked :
    goodSegmentCheck 126 41 89
      { lower := 10415, upper := 10524, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good085_checked :
    goodSegmentCheck 126 41 89
      { lower := 10525, upper := 10638, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good086_checked :
    goodSegmentCheck 126 41 89
      { lower := 10639, upper := 10764, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good087_checked :
    goodSegmentCheck 126 41 89
      { lower := 10765, upper := 10878, witness := RowWitness.topPrime 10753 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good088_checked :
    goodSegmentCheck 126 41 89
      { lower := 10879, upper := 10992, witness := RowWitness.topPrime 10867 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good089_checked :
    goodSegmentCheck 126 41 89
      { lower := 10993, upper := 11118, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good090_checked :
    goodSegmentCheck 126 41 89
      { lower := 11119, upper := 11244, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good091_checked :
    goodSegmentCheck 126 41 89
      { lower := 11245, upper := 11368, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good092_checked :
    goodSegmentCheck 126 41 89
      { lower := 11369, upper := 11494, witness := RowWitness.topPrime 11369 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good093_checked :
    goodSegmentCheck 126 41 89
      { lower := 11495, upper := 11616, witness := RowWitness.topPrime 11491 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good094_checked :
    goodSegmentCheck 126 41 89
      { lower := 11617, upper := 11742, witness := RowWitness.topPrime 11617 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good095_checked :
    goodSegmentCheck 126 41 89
      { lower := 11743, upper := 11868, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good096_checked :
    goodSegmentCheck 126 41 89
      { lower := 11869, upper := 11992, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good097_checked :
    goodSegmentCheck 126 41 89
      { lower := 11993, upper := 12112, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good098_checked :
    goodSegmentCheck 126 41 89
      { lower := 12113, upper := 12238, witness := RowWitness.topPrime 12113 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good099_checked :
    goodSegmentCheck 126 41 89
      { lower := 12239, upper := 12364, witness := RowWitness.topPrime 12239 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good100_checked :
    goodSegmentCheck 126 41 89
      { lower := 12365, upper := 12472, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good101_checked :
    goodSegmentCheck 126 41 89
      { lower := 12473, upper := 12598, witness := RowWitness.topPrime 12473 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good102_checked :
    goodSegmentCheck 126 41 89
      { lower := 12599, upper := 12714, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good103_checked :
    goodSegmentCheck 126 41 89
      { lower := 12715, upper := 12838, witness := RowWitness.topPrime 12713 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good104_checked :
    goodSegmentCheck 126 41 89
      { lower := 12839, upper := 12954, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good105_checked :
    goodSegmentCheck 126 41 89
      { lower := 12955, upper := 13078, witness := RowWitness.topPrime 12953 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good106_checked :
    goodSegmentCheck 126 41 89
      { lower := 13079, upper := 13188, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good107_checked :
    goodSegmentCheck 126 41 89
      { lower := 13189, upper := 13312, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good108_checked :
    goodSegmentCheck 126 41 89
      { lower := 13313, upper := 13438, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good109_checked :
    goodSegmentCheck 126 41 89
      { lower := 13439, upper := 13546, witness := RowWitness.topPrime 13421 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good110_checked :
    goodSegmentCheck 126 41 89
      { lower := 13547, upper := 13662, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good111_checked :
    goodSegmentCheck 126 41 89
      { lower := 13663, upper := 13774, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good112_checked :
    goodSegmentCheck 126 41 89
      { lower := 13775, upper := 13888, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good113_checked :
    goodSegmentCheck 126 41 89
      { lower := 13889, upper := 14008, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good114_checked :
    goodSegmentCheck 126 41 89
      { lower := 14009, upper := 14134, witness := RowWitness.topPrime 14009 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good115_checked :
    goodSegmentCheck 126 41 89
      { lower := 14135, upper := 14232, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good116_checked :
    goodSegmentCheck 126 41 89
      { lower := 14233, upper := 14346, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good117_checked :
    goodSegmentCheck 126 41 89
      { lower := 14347, upper := 14472, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good118_checked :
    goodSegmentCheck 126 41 89
      { lower := 14473, upper := 14586, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good119_checked :
    goodSegmentCheck 126 41 89
      { lower := 14587, upper := 14688, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good120_checked :
    goodSegmentCheck 126 41 89
      { lower := 14689, upper := 14808, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good121_checked :
    goodSegmentCheck 126 41 89
      { lower := 14809, upper := 14922, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good122_checked :
    goodSegmentCheck 126 41 89
      { lower := 14923, upper := 15048, witness := RowWitness.topPrime 14923 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good123_checked :
    goodSegmentCheck 126 41 89
      { lower := 15049, upper := 15156, witness := RowWitness.topPrime 15031 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good124_checked :
    goodSegmentCheck 126 41 89
      { lower := 15157, upper := 15274, witness := RowWitness.topPrime 15149 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good125_checked :
    goodSegmentCheck 126 41 89
      { lower := 15275, upper := 15396, witness := RowWitness.topPrime 15271 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good126_checked :
    goodSegmentCheck 126 41 89
      { lower := 15397, upper := 15516, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good127_checked :
    goodSegmentCheck 126 41 89
      { lower := 15517, upper := 15636, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good128_checked :
    goodSegmentCheck 126 41 89
      { lower := 15637, upper := 15749, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good129_checked :
    goodSegmentCheck 126 41 89
      { lower := 15987, upper := 16097, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good130_checked :
    goodSegmentCheck 126 41 89
      { lower := 16428, upper := 16509, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good131_checked :
    goodSegmentCheck 126 41 89
      { lower := 16810, upper := 16912, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good132_checked :
    goodSegmentCheck 126 41 89
      { lower := 16913, upper := 16935, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good133_checked :
    goodSegmentCheck 126 41 89
      { lower := 17405, upper := 17428, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good134_checked :
    goodSegmentCheck 126 41 89
      { lower := 17672, upper := 17701, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good135_checked :
    goodSegmentCheck 126 41 89
      { lower := 17797, upper := 17797, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good136_checked :
    goodSegmentCheck 126 41 89
      { lower := 18491, upper := 18606, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good137_checked :
    goodSegmentCheck 126 41 89
      { lower := 18607, upper := 18616, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good138_checked :
    goodSegmentCheck 126 41 89
      { lower := 18634, upper := 18742, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good139_checked :
    goodSegmentCheck 126 41 89
      { lower := 18743, upper := 18868, witness := RowWitness.topPrime 18743 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good140_checked :
    goodSegmentCheck 126 41 89
      { lower := 18869, upper := 18875, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good141_checked :
    goodSegmentCheck 126 41 89
      { lower := 19663, upper := 19786, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good142_checked :
    goodSegmentCheck 126 41 89
      { lower := 19787, upper := 19808, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good143_checked :
    goodSegmentCheck 126 41 89
      { lower := 19881, upper := 19898, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good144_checked :
    goodSegmentCheck 126 41 89
      { lower := 19965, upper := 20006, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good145_checked :
    goodSegmentCheck 126 41 89
      { lower := 20172, upper := 20286, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good146_checked :
    goodSegmentCheck 126 41 89
      { lower := 20287, upper := 20289, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good147_checked :
    goodSegmentCheck 126 41 89
      { lower := 20402, upper := 20464, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good148_checked :
    goodSegmentCheck 126 41 89
      { lower := 20480, upper := 20527, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good149_checked :
    goodSegmentCheck 126 41 89
      { lower := 20535, upper := 20658, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good150_checked :
    goodSegmentCheck 126 41 89
      { lower := 20659, upper := 20660, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good151_checked :
    goodSegmentCheck 126 41 89
      { lower := 20667, upper := 20702, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good152_checked :
    goodSegmentCheck 126 41 89
      { lower := 21296, upper := 21408, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good153_checked :
    goodSegmentCheck 126 41 89
      { lower := 21409, upper := 21421, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good154_checked :
    goodSegmentCheck 126 41 89
      { lower := 21875, upper := 21996, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good155_checked :
    goodSegmentCheck 126 41 89
      { lower := 21997, upper := 22029, witness := RowWitness.topPrime 21997 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good156_checked :
    goodSegmentCheck 126 41 89
      { lower := 22090, upper := 22095, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good157_checked :
    goodSegmentCheck 126 41 89
      { lower := 22188, upper := 22215, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good158_checked :
    goodSegmentCheck 126 41 89
      { lower := 22445, upper := 22451, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good159_checked :
    goodSegmentCheck 126 41 89
      { lower := 22472, upper := 22570, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good160_checked :
    goodSegmentCheck 126 41 89
      { lower := 23763, upper := 23886, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good161_checked :
    goodSegmentCheck 126 41 89
      { lower := 23887, upper := 23887, witness := RowWitness.topPrime 23887 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good162_checked :
    goodSegmentCheck 126 41 89
      { lower := 24334, upper := 24454, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good163_checked :
    goodSegmentCheck 126 41 89
      { lower := 24455, upper := 24492, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good164_checked :
    goodSegmentCheck 126 41 89
      { lower := 24576, upper := 24690, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good165_checked :
    goodSegmentCheck 126 41 89
      { lower := 25000, upper := 25089, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good166_checked :
    goodSegmentCheck 126 41 89
      { lower := 25215, upper := 25314, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good167_checked :
    goodSegmentCheck 126 41 89
      { lower := 25315, upper := 25340, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good168_checked :
    goodSegmentCheck 126 41 89
      { lower := 26934, upper := 27021, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good169_checked :
    goodSegmentCheck 126 41 89
      { lower := 27556, upper := 27561, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good170_checked :
    goodSegmentCheck 126 41 89
      { lower := 27848, upper := 27860, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good171_checked :
    goodSegmentCheck 126 41 89
      { lower := 28125, upper := 28215, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good172_checked :
    goodSegmentCheck 126 41 89
      { lower := 28227, upper := 28250, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good173_checked :
    goodSegmentCheck 126 41 89
      { lower := 28672, upper := 28686, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good174_checked :
    goodSegmentCheck 126 41 89
      { lower := 28717, upper := 28797, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good175_checked :
    goodSegmentCheck 126 41 89
      { lower := 29584, upper := 29603, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good176_checked :
    goodSegmentCheck 126 41 89
      { lower := 29791, upper := 29893, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good177_checked :
    goodSegmentCheck 126 41 89
      { lower := 30926, upper := 31024, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good178_checked :
    goodSegmentCheck 126 41 89
      { lower := 31250, upper := 31374, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good179_checked :
    goodSegmentCheck 126 41 89
      { lower := 31375, upper := 31375, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good180_checked :
    goodSegmentCheck 126 41 89
      { lower := 31423, upper := 31454, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good181_checked :
    goodSegmentCheck 126 41 89
      { lower := 34347, upper := 34462, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good182_checked :
    goodSegmentCheck 126 41 89
      { lower := 34463, upper := 34516, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good183_checked :
    goodSegmentCheck 126 41 89
      { lower := 37303, upper := 37335, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good184_checked :
    goodSegmentCheck 126 41 89
      { lower := 37500, upper := 37571, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good185_checked :
    goodSegmentCheck 126 41 89
      { lower := 38307, upper := 38416, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good186_checked :
    goodSegmentCheck 126 41 89
      { lower := 40401, upper := 40453, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good187_checked :
    goodSegmentCheck 126 41 89
      { lower := 40960, upper := 41056, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good188_checked :
    goodSegmentCheck 126 41 89
      { lower := 47526, upper := 47646, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good189_checked :
    goodSegmentCheck 126 41 89
      { lower := 47647, upper := 47649, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good190_checked :
    goodSegmentCheck 126 41 89
      { lower := 48013, upper := 48086, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good191_checked :
    goodSegmentCheck 126 41 89
      { lower := 48778, upper := 48793, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_good192_checked :
    goodSegmentCheck 126 41 89
      { lower := 49152, upper := 49255, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good193_checked :
    goodSegmentCheck 126 41 89
      { lower := 51076, upper := 51130, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good194_checked :
    goodSegmentCheck 126 41 89
      { lower := 55451, upper := 55566, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good195_checked :
    goodSegmentCheck 126 41 89
      { lower := 55567, upper := 55572, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good196_checked :
    goodSegmentCheck 126 41 89
      { lower := 57245, upper := 57247, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good197_checked :
    goodSegmentCheck 126 41 89
      { lower := 58619, upper := 58689, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good198_checked :
    goodSegmentCheck 126 41 89
      { lower := 59049, upper := 59081, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good199_checked :
    goodSegmentCheck 126 41 89
      { lower := 62500, upper := 62535, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good200_checked :
    goodSegmentCheck 126 41 89
      { lower := 71289, upper := 71412, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good201_checked :
    goodSegmentCheck 126 41 89
      { lower := 71413, upper := 71414, witness := RowWitness.topPrime 71413 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good202_checked :
    goodSegmentCheck 126 41 89
      { lower := 73205, upper := 73292, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good203_checked :
    goodSegmentCheck 126 41 89
      { lower := 89383, upper := 89498, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row126_good204_checked :
    goodSegmentCheck 126 41 89
      { lower := 148955, upper := 149002, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 126) (r := 41) (s := 89) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_good204_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_goods_checked :
    row126.goods.all (goodSegmentCheck row126.height.i row126.height.r row126.height.s) = true := by
  change row126_goods.all (goodSegmentCheck 126 41 89) = true
  simp only [row126_goods, List.all_cons, List.all_nil,
    row126_good000_checked,
    row126_good001_checked,
    row126_good002_checked,
    row126_good003_checked,
    row126_good004_checked,
    row126_good005_checked,
    row126_good006_checked,
    row126_good007_checked,
    row126_good008_checked,
    row126_good009_checked,
    row126_good010_checked,
    row126_good011_checked,
    row126_good012_checked,
    row126_good013_checked,
    row126_good014_checked,
    row126_good015_checked,
    row126_good016_checked,
    row126_good017_checked,
    row126_good018_checked,
    row126_good019_checked,
    row126_good020_checked,
    row126_good021_checked,
    row126_good022_checked,
    row126_good023_checked,
    row126_good024_checked,
    row126_good025_checked,
    row126_good026_checked,
    row126_good027_checked,
    row126_good028_checked,
    row126_good029_checked,
    row126_good030_checked,
    row126_good031_checked,
    row126_good032_checked,
    row126_good033_checked,
    row126_good034_checked,
    row126_good035_checked,
    row126_good036_checked,
    row126_good037_checked,
    row126_good038_checked,
    row126_good039_checked,
    row126_good040_checked,
    row126_good041_checked,
    row126_good042_checked,
    row126_good043_checked,
    row126_good044_checked,
    row126_good045_checked,
    row126_good046_checked,
    row126_good047_checked,
    row126_good048_checked,
    row126_good049_checked,
    row126_good050_checked,
    row126_good051_checked,
    row126_good052_checked,
    row126_good053_checked,
    row126_good054_checked,
    row126_good055_checked,
    row126_good056_checked,
    row126_good057_checked,
    row126_good058_checked,
    row126_good059_checked,
    row126_good060_checked,
    row126_good061_checked,
    row126_good062_checked,
    row126_good063_checked,
    row126_good064_checked,
    row126_good065_checked,
    row126_good066_checked,
    row126_good067_checked,
    row126_good068_checked,
    row126_good069_checked,
    row126_good070_checked,
    row126_good071_checked,
    row126_good072_checked,
    row126_good073_checked,
    row126_good074_checked,
    row126_good075_checked,
    row126_good076_checked,
    row126_good077_checked,
    row126_good078_checked,
    row126_good079_checked,
    row126_good080_checked,
    row126_good081_checked,
    row126_good082_checked,
    row126_good083_checked,
    row126_good084_checked,
    row126_good085_checked,
    row126_good086_checked,
    row126_good087_checked,
    row126_good088_checked,
    row126_good089_checked,
    row126_good090_checked,
    row126_good091_checked,
    row126_good092_checked,
    row126_good093_checked,
    row126_good094_checked,
    row126_good095_checked,
    row126_good096_checked,
    row126_good097_checked,
    row126_good098_checked,
    row126_good099_checked,
    row126_good100_checked,
    row126_good101_checked,
    row126_good102_checked,
    row126_good103_checked,
    row126_good104_checked,
    row126_good105_checked,
    row126_good106_checked,
    row126_good107_checked,
    row126_good108_checked,
    row126_good109_checked,
    row126_good110_checked,
    row126_good111_checked,
    row126_good112_checked,
    row126_good113_checked,
    row126_good114_checked,
    row126_good115_checked,
    row126_good116_checked,
    row126_good117_checked,
    row126_good118_checked,
    row126_good119_checked,
    row126_good120_checked,
    row126_good121_checked,
    row126_good122_checked,
    row126_good123_checked,
    row126_good124_checked,
    row126_good125_checked,
    row126_good126_checked,
    row126_good127_checked,
    row126_good128_checked,
    row126_good129_checked,
    row126_good130_checked,
    row126_good131_checked,
    row126_good132_checked,
    row126_good133_checked,
    row126_good134_checked,
    row126_good135_checked,
    row126_good136_checked,
    row126_good137_checked,
    row126_good138_checked,
    row126_good139_checked,
    row126_good140_checked,
    row126_good141_checked,
    row126_good142_checked,
    row126_good143_checked,
    row126_good144_checked,
    row126_good145_checked,
    row126_good146_checked,
    row126_good147_checked,
    row126_good148_checked,
    row126_good149_checked,
    row126_good150_checked,
    row126_good151_checked,
    row126_good152_checked,
    row126_good153_checked,
    row126_good154_checked,
    row126_good155_checked,
    row126_good156_checked,
    row126_good157_checked,
    row126_good158_checked,
    row126_good159_checked,
    row126_good160_checked,
    row126_good161_checked,
    row126_good162_checked,
    row126_good163_checked,
    row126_good164_checked,
    row126_good165_checked,
    row126_good166_checked,
    row126_good167_checked,
    row126_good168_checked,
    row126_good169_checked,
    row126_good170_checked,
    row126_good171_checked,
    row126_good172_checked,
    row126_good173_checked,
    row126_good174_checked,
    row126_good175_checked,
    row126_good176_checked,
    row126_good177_checked,
    row126_good178_checked,
    row126_good179_checked,
    row126_good180_checked,
    row126_good181_checked,
    row126_good182_checked,
    row126_good183_checked,
    row126_good184_checked,
    row126_good185_checked,
    row126_good186_checked,
    row126_good187_checked,
    row126_good188_checked,
    row126_good189_checked,
    row126_good190_checked,
    row126_good191_checked,
    row126_good192_checked,
    row126_good193_checked,
    row126_good194_checked,
    row126_good195_checked,
    row126_good196_checked,
    row126_good197_checked,
    row126_good198_checked,
    row126_good199_checked,
    row126_good200_checked,
    row126_good201_checked,
    row126_good202_checked,
    row126_good203_checked,
    row126_good204_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_registered :
    decide (row126.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row126_small_checked :
    coverCheck (2 * row126.height.i + 2) (row126.height.i * (row126.height.i - 1) - 1)
      (row126.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row126_layerCover_checked :
    coverCheck (row126.height.i * (row126.height.i - 1)) (row126.height.n0 - 1)
      (row126.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row126_bounds : List NatInterval :=
  [(254, 376), (377, 498), (499, 624), (625, 744), (745, 868), (869, 988), (989, 1108), (1109, 1234), (1235, 1356), (1357, 1452), (1453, 1578), (1579, 1704), (1705, 1824), (1825, 1948), (1949, 2074), (2075, 2194), (2195, 2304), (2305, 2422), (2423, 2548), (2549, 2674), (2675, 2796), (2797, 2922), (2923, 3042), (3043, 3166), (3167, 3292), (3293, 3396), (3397, 3516), (3517, 3642), (3643, 3768), (3769, 3894), (3895, 4014), (4015, 4138), (4139, 4264), (4265, 4386), (4387, 4498), (4499, 4618), (4619, 4728), (4729, 4854), (4855, 4956), (4957, 5082), (5083, 5206), (5207, 5322), (5323, 5448), (5449, 5574), (5575, 5698), (5699, 5818), (5819, 5938), (5939, 6064), (6065, 6178), (6179, 6298), (6299, 6424), (6425, 6546), (6547, 6672), (6673, 6798), (6799, 6918), (6919, 7042), (7043, 7168), (7169, 7284), (7285, 7408), (7409, 7518), (7519, 7642), (7643, 7768), (7769, 7884), (7885, 8008), (8009, 8134), (8135, 8248), (8249, 8368), (8369, 8494), (8495, 8592), (8593, 8706), (8707, 8832), (8833, 8956), (8957, 9076), (9077, 9192), (9193, 9312), (9313, 9436), (9437, 9562), (9563, 9676), (9677, 9802), (9803, 9928), (9929, 10054), (10055, 10164), (10165, 10288), (10289, 10414), (10415, 10524), (10525, 10638), (10639, 10764), (10765, 10878), (10879, 10992), (10993, 11118), (11119, 11244), (11245, 11368), (11369, 11494), (11495, 11616), (11617, 11742), (11743, 11868), (11869, 11992), (11993, 12112), (12113, 12238), (12239, 12364), (12365, 12472), (12473, 12598), (12599, 12714), (12715, 12838), (12839, 12954), (12955, 13078), (13079, 13188), (13189, 13312), (13313, 13438), (13439, 13546), (13547, 13662), (13663, 13774), (13775, 13888), (13889, 14008), (14009, 14134), (14135, 14232), (14233, 14346), (14347, 14472), (14473, 14586), (14587, 14688), (14689, 14808), (14809, 14922), (14923, 15048), (15049, 15156), (15157, 15274), (15275, 15396), (15397, 15516), (15517, 15636), (15637, 15749), (15987, 16097), (16428, 16509), (16810, 16912), (16913, 16935), (17405, 17428), (17672, 17701), (17797, 17797), (18491, 18606), (18607, 18616), (18634, 18742), (18743, 18868), (18869, 18875), (19663, 19786), (19787, 19808), (19881, 19898), (19965, 20006), (20172, 20286), (20287, 20289), (20402, 20464), (20480, 20527), (20535, 20658), (20659, 20660), (20667, 20702), (21296, 21408), (21409, 21421), (21875, 21996), (21997, 22029), (22090, 22095), (22188, 22215), (22445, 22451), (22472, 22570), (23763, 23886), (23887, 23887), (24334, 24454), (24455, 24492), (24576, 24690), (25000, 25089), (25215, 25314), (25315, 25340), (26934, 27021), (27556, 27561), (27848, 27860), (28125, 28215), (28227, 28250), (28672, 28686), (28717, 28797), (29584, 29603), (29791, 29893), (30926, 31024), (31250, 31374), (31375, 31375), (31423, 31454), (34347, 34462), (34463, 34516), (37303, 37335), (37500, 37571), (38307, 38416), (40401, 40453), (40960, 41056), (47526, 47646), (47647, 47649), (48013, 48086), (48778, 48793), (49152, 49255), (51076, 51130), (55451, 55566), (55567, 55572), (57245, 57247), (58619, 58689), (59049, 59081), (62500, 62535), (71289, 71412), (71413, 71414), (73205, 73292), (89383, 89498), (148955, 149002)]

theorem row126_bounds_eq : row126.goods.map goodSegmentBounds = row126_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row126_layer000_intervals : List ColouredInterval :=
  [(2, 16384, 16509), (2, 16384, 16509), (2, 20480, 20605), (2, 24576, 24701), (2, 28672, 28797), (2, 16384, 16509), (2, 24576, 24701), (2, 16384, 16509), (3, 19683, 19808), (5, 15750, 15750), (5, 18750, 18875), (5, 21875, 22000), (5, 25000, 25125), (5, 28125, 28250), (5, 31250, 31375), (5, 15750, 15750), (5, 31250, 31375), (7, 16807, 16932), (11, 15972, 16097), (11, 17303, 17428), (11, 18634, 18759), (11, 19965, 20090), (11, 21296, 21421), (11, 29282, 29407), (13, 17576, 17701), (13, 19773, 19898), (13, 21970, 22095), (13, 24167, 24292), (13, 26364, 26489), (13, 28561, 28686), (13, 30758, 30883), (13, 28561, 28686), (17, 19652, 19777), (17, 24565, 24690), (17, 29478, 29603), (19, 20577, 20702), (19, 27436, 27561), (23, 24334, 24459), (29, 24389, 24514), (31, 29791, 29916), (37, 16428, 16553), (37, 17797, 17922), (37, 19166, 19291), (37, 20535, 20660), (37, 21904, 22029), (41, 16810, 16935), (41, 18491, 18616), (41, 20172, 20297), (41, 21853, 21978), (41, 23534, 23659), (41, 25215, 25340), (41, 26896, 27021), (43, 16641, 16766), (43, 18490, 18615), (43, 20339, 20464), (43, 22188, 22313), (43, 24037, 24162), (43, 25886, 26011), (43, 27735, 27860), (43, 29584, 29709), (47, 17672, 17797), (47, 19881, 20006), (47, 22090, 22215), (47, 24299, 24424), (47, 26508, 26633), (47, 28717, 28842), (47, 30926, 31051), (53, 16854, 16979), (53, 19663, 19788), (53, 22472, 22597), (53, 25281, 25406), (53, 28090, 28215), (53, 30899, 31024), (59, 17405, 17530), (59, 20886, 21011), (59, 24367, 24492), (59, 27848, 27973), (59, 31329, 31454), (61, 18605, 18730), (61, 22326, 22451), (61, 26047, 26172), (61, 29768, 29893), (67, 17956, 18081), (67, 22445, 22570), (67, 26934, 27059), (67, 31423, 31499), (71, 20164, 20289), (71, 25205, 25330), (71, 30246, 30371), (73, 15987, 16112), (73, 21316, 21441), (73, 26645, 26770), (79, 18723, 18848), (79, 24964, 25089), (79, 31205, 31330), (83, 20667, 20792), (83, 27556, 27681), (89, 15842, 15967), (89, 23763, 23888), (97, 18818, 18943), (97, 28227, 28352), (101, 20402, 20527), (101, 30603, 30728), (103, 21218, 21343), (107, 22898, 23023), (109, 23762, 23887), (113, 25538, 25663)]

def row126_layer000_block000 : List ColouredInterval :=
  [(2, 16384, 16509), (2, 16384, 16509), (2, 20480, 20605), (2, 24576, 24701), (2, 28672, 28797), (2, 16384, 16509), (2, 24576, 24701), (2, 16384, 16509), (3, 19683, 19808), (5, 15750, 15750), (5, 18750, 18875), (5, 21875, 22000), (5, 25000, 25125), (5, 28125, 28250), (5, 31250, 31375), (5, 15750, 15750)]

def row126_layer000_block001 : List ColouredInterval :=
  [(5, 31250, 31375), (7, 16807, 16932), (11, 15972, 16097), (11, 17303, 17428), (11, 18634, 18759), (11, 19965, 20090), (11, 21296, 21421), (11, 29282, 29407), (13, 17576, 17701), (13, 19773, 19898), (13, 21970, 22095), (13, 24167, 24292), (13, 26364, 26489), (13, 28561, 28686), (13, 30758, 30883), (13, 28561, 28686)]

def row126_layer000_block002 : List ColouredInterval :=
  [(17, 19652, 19777), (17, 24565, 24690), (17, 29478, 29603), (19, 20577, 20702), (19, 27436, 27561), (23, 24334, 24459), (29, 24389, 24514), (31, 29791, 29916), (37, 16428, 16553), (37, 17797, 17922), (37, 19166, 19291), (37, 20535, 20660), (37, 21904, 22029), (41, 16810, 16935), (41, 18491, 18616), (41, 20172, 20297)]

def row126_layer000_block003 : List ColouredInterval :=
  [(41, 21853, 21978), (41, 23534, 23659), (41, 25215, 25340), (41, 26896, 27021), (43, 16641, 16766), (43, 18490, 18615), (43, 20339, 20464), (43, 22188, 22313), (43, 24037, 24162), (43, 25886, 26011), (43, 27735, 27860), (43, 29584, 29709), (47, 17672, 17797), (47, 19881, 20006), (47, 22090, 22215), (47, 24299, 24424)]

def row126_layer000_block004 : List ColouredInterval :=
  [(47, 26508, 26633), (47, 28717, 28842), (47, 30926, 31051), (53, 16854, 16979), (53, 19663, 19788), (53, 22472, 22597), (53, 25281, 25406), (53, 28090, 28215), (53, 30899, 31024), (59, 17405, 17530), (59, 20886, 21011), (59, 24367, 24492), (59, 27848, 27973), (59, 31329, 31454), (61, 18605, 18730), (61, 22326, 22451)]

def row126_layer000_block005 : List ColouredInterval :=
  [(61, 26047, 26172), (61, 29768, 29893), (67, 17956, 18081), (67, 22445, 22570), (67, 26934, 27059), (67, 31423, 31499), (71, 20164, 20289), (71, 25205, 25330), (71, 30246, 30371), (73, 15987, 16112), (73, 21316, 21441), (73, 26645, 26770), (79, 18723, 18848), (79, 24964, 25089), (79, 31205, 31330), (83, 20667, 20792)]

def row126_layer000_block006 : List ColouredInterval :=
  [(83, 27556, 27681), (89, 15842, 15967), (89, 23763, 23888), (97, 18818, 18943), (97, 28227, 28352), (101, 20402, 20527), (101, 30603, 30728), (103, 21218, 21343), (107, 22898, 23023), (109, 23762, 23887), (113, 25538, 25663)]

def row126_layer000_chunks : List (List ColouredInterval) :=
  [row126_layer000_block000, row126_layer000_block001, row126_layer000_block002, row126_layer000_block003, row126_layer000_block004, row126_layer000_block005, row126_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_arithmetic : LayerArithmeticValid row126.height { lower := 15750, upper := 31500, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_enumeration :
    activePowerIntervalList 126 16 15750 31500 = row126_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_pairs000 :
    row126_layer000_block000.all (fun I => row126_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_pairs001 :
    row126_layer000_block001.all (fun I => row126_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_pairs002 :
    row126_layer000_block002.all (fun I => row126_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_pairs003 :
    row126_layer000_block003.all (fun I => row126_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_pairs004 :
    row126_layer000_block004.all (fun I => row126_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_pairs005 :
    row126_layer000_block005.all (fun I => row126_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_pairs006 :
    row126_layer000_block006.all (fun I => row126_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_chunks_eq : row126_layer000_chunks.flatten = row126_layer000_intervals := by
  rfl

theorem row126_layer000_pairs : pairCoverCheck row126_layer000_intervals row126_bounds = true := by
  apply pairCoverCheck_of_chunks row126_layer000_chunks_eq
  intro block hblock
  simp only [row126_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row126_layer000_pairs000
  · exact row126_layer000_pairs001
  · exact row126_layer000_pairs002
  · exact row126_layer000_pairs003
  · exact row126_layer000_pairs004
  · exact row126_layer000_pairs005
  · exact row126_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer000_checked :
    coverLayerCheck row126.height row126.goods { lower := 15750, upper := 31500, M := 16 } = true := by
  exact coverLayerCheck_of_parts row126_layer000_arithmetic row126_layer000_enumeration row126_bounds_eq row126_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row126_layer001_intervals : List ColouredInterval :=
  [(2, 32768, 32893), (2, 40960, 41085), (2, 49152, 49277), (2, 32768, 32893), (2, 49152, 49277), (2, 32768, 32893), (3, 59049, 59174), (5, 34375, 34500), (5, 37500, 37625), (5, 46875, 47000), (5, 62500, 62625), (11, 43923, 44048), (11, 58564, 58689), (13, 57122, 57247), (17, 34391, 34516), (17, 39304, 39429), (17, 44217, 44342), (17, 49130, 49255), (17, 54043, 54168), (17, 58956, 59081), (19, 34295, 34420), (19, 41154, 41279), (19, 48013, 48138), (19, 54872, 54997), (19, 61731, 61856), (23, 36501, 36626), (23, 48668, 48793), (23, 60835, 60960), (29, 48778, 48903), (31, 59582, 59707), (37, 50653, 50778), (53, 33708, 33833), (59, 34810, 34935), (59, 38291, 38416), (59, 41772, 41897), (61, 33489, 33614), (61, 37210, 37335), (61, 40931, 41056), (61, 44652, 44777), (67, 31500, 31548), (67, 35912, 36037), (67, 40401, 40526), (67, 44890, 45015), (67, 49379, 49504), (67, 53868, 53993), (71, 35287, 35412), (71, 40328, 40453), (71, 45369, 45494), (71, 50410, 50535), (71, 55451, 55576), (71, 60492, 60617), (73, 31974, 32099), (73, 37303, 37428), (73, 42632, 42757), (73, 47961, 48086), (73, 53290, 53415), (73, 58619, 58744), (79, 37446, 37571), (79, 43687, 43812), (79, 49928, 50053), (79, 56169, 56294), (79, 62410, 62535), (83, 34445, 34570), (83, 41334, 41459), (83, 48223, 48348), (83, 55112, 55237), (83, 62001, 62126), (89, 31684, 31809), (89, 39605, 39730), (89, 47526, 47651), (89, 55447, 55572), (97, 37636, 37761), (97, 47045, 47170), (97, 56454, 56579), (101, 40804, 40929), (101, 51005, 51130), (101, 61206, 61331), (103, 31827, 31952), (103, 42436, 42561), (103, 53045, 53170), (107, 34347, 34472), (107, 45796, 45921), (107, 57245, 57370), (109, 35643, 35768), (109, 47524, 47649), (109, 59405, 59530), (113, 38307, 38432), (113, 51076, 51201)]

def row126_layer001_block000 : List ColouredInterval :=
  [(2, 32768, 32893), (2, 40960, 41085), (2, 49152, 49277), (2, 32768, 32893), (2, 49152, 49277), (2, 32768, 32893), (3, 59049, 59174), (5, 34375, 34500), (5, 37500, 37625), (5, 46875, 47000), (5, 62500, 62625), (11, 43923, 44048), (11, 58564, 58689), (13, 57122, 57247), (17, 34391, 34516), (17, 39304, 39429)]

def row126_layer001_block001 : List ColouredInterval :=
  [(17, 44217, 44342), (17, 49130, 49255), (17, 54043, 54168), (17, 58956, 59081), (19, 34295, 34420), (19, 41154, 41279), (19, 48013, 48138), (19, 54872, 54997), (19, 61731, 61856), (23, 36501, 36626), (23, 48668, 48793), (23, 60835, 60960), (29, 48778, 48903), (31, 59582, 59707), (37, 50653, 50778), (53, 33708, 33833)]

def row126_layer001_block002 : List ColouredInterval :=
  [(59, 34810, 34935), (59, 38291, 38416), (59, 41772, 41897), (61, 33489, 33614), (61, 37210, 37335), (61, 40931, 41056), (61, 44652, 44777), (67, 31500, 31548), (67, 35912, 36037), (67, 40401, 40526), (67, 44890, 45015), (67, 49379, 49504), (67, 53868, 53993), (71, 35287, 35412), (71, 40328, 40453), (71, 45369, 45494)]

def row126_layer001_block003 : List ColouredInterval :=
  [(71, 50410, 50535), (71, 55451, 55576), (71, 60492, 60617), (73, 31974, 32099), (73, 37303, 37428), (73, 42632, 42757), (73, 47961, 48086), (73, 53290, 53415), (73, 58619, 58744), (79, 37446, 37571), (79, 43687, 43812), (79, 49928, 50053), (79, 56169, 56294), (79, 62410, 62535), (83, 34445, 34570), (83, 41334, 41459)]

def row126_layer001_block004 : List ColouredInterval :=
  [(83, 48223, 48348), (83, 55112, 55237), (83, 62001, 62126), (89, 31684, 31809), (89, 39605, 39730), (89, 47526, 47651), (89, 55447, 55572), (97, 37636, 37761), (97, 47045, 47170), (97, 56454, 56579), (101, 40804, 40929), (101, 51005, 51130), (101, 61206, 61331), (103, 31827, 31952), (103, 42436, 42561), (103, 53045, 53170)]

def row126_layer001_block005 : List ColouredInterval :=
  [(107, 34347, 34472), (107, 45796, 45921), (107, 57245, 57370), (109, 35643, 35768), (109, 47524, 47649), (109, 59405, 59530), (113, 38307, 38432), (113, 51076, 51201)]

def row126_layer001_chunks : List (List ColouredInterval) :=
  [row126_layer001_block000, row126_layer001_block001, row126_layer001_block002, row126_layer001_block003, row126_layer001_block004, row126_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_arithmetic : LayerArithmeticValid row126.height { lower := 31500, upper := 63000, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_enumeration :
    activePowerIntervalList 126 12 31500 63000 = row126_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_enumeration
