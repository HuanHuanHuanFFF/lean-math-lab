import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row166_height : HeightCertificateDatum := { i := 166, r := 55, s := 118, n0Power10 := 7 }

def row166_goods : List GoodSegment := [
  { lower := 334, upper := 496, witness := RowWitness.topPrime 331 },
  { lower := 497, upper := 656, witness := RowWitness.topPrime 491 },
  { lower := 657, upper := 818, witness := RowWitness.topPrime 653 },
  { lower := 819, upper := 976, witness := RowWitness.topPrime 811 },
  { lower := 977, upper := 1142, witness := RowWitness.topPrime 977 },
  { lower := 1143, upper := 1294, witness := RowWitness.topPrime 1129 },
  { lower := 1295, upper := 1456, witness := RowWitness.topPrime 1291 },
  { lower := 1457, upper := 1618, witness := RowWitness.topPrime 1453 },
  { lower := 1619, upper := 1784, witness := RowWitness.topPrime 1619 },
  { lower := 1785, upper := 1948, witness := RowWitness.topPrime 1783 },
  { lower := 1949, upper := 2114, witness := RowWitness.topPrime 1949 },
  { lower := 2115, upper := 2278, witness := RowWitness.topPrime 2113 },
  { lower := 2279, upper := 2438, witness := RowWitness.topPrime 2273 },
  { lower := 2439, upper := 2602, witness := RowWitness.topPrime 2437 },
  { lower := 2603, upper := 2758, witness := RowWitness.topPrime 2593 },
  { lower := 2759, upper := 2918, witness := RowWitness.topPrime 2753 },
  { lower := 2919, upper := 3082, witness := RowWitness.topPrime 2917 },
  { lower := 3083, upper := 3248, witness := RowWitness.topPrime 3083 },
  { lower := 3249, upper := 3394, witness := RowWitness.topPrime 3229 },
  { lower := 3395, upper := 3556, witness := RowWitness.topPrime 3391 },
  { lower := 3557, upper := 3722, witness := RowWitness.topPrime 3557 },
  { lower := 3723, upper := 3884, witness := RowWitness.topPrime 3719 },
  { lower := 3885, upper := 4046, witness := RowWitness.topPrime 3881 },
  { lower := 4047, upper := 4192, witness := RowWitness.topPrime 4027 },
  { lower := 4193, upper := 4342, witness := RowWitness.topPrime 4177 },
  { lower := 4343, upper := 4504, witness := RowWitness.topPrime 4339 },
  { lower := 4505, upper := 4658, witness := RowWitness.topPrime 4493 },
  { lower := 4659, upper := 4822, witness := RowWitness.topPrime 4657 },
  { lower := 4823, upper := 4982, witness := RowWitness.topPrime 4817 },
  { lower := 4983, upper := 5138, witness := RowWitness.topPrime 4973 },
  { lower := 5139, upper := 5284, witness := RowWitness.topPrime 5119 },
  { lower := 5285, upper := 5446, witness := RowWitness.topPrime 5281 },
  { lower := 5447, upper := 5608, witness := RowWitness.topPrime 5443 },
  { lower := 5609, upper := 5756, witness := RowWitness.topPrime 5591 },
  { lower := 5757, upper := 5914, witness := RowWitness.topPrime 5749 },
  { lower := 5915, upper := 6068, witness := RowWitness.topPrime 5903 },
  { lower := 6069, upper := 6232, witness := RowWitness.topPrime 6067 },
  { lower := 6233, upper := 6394, witness := RowWitness.topPrime 6229 },
  { lower := 6395, upper := 6554, witness := RowWitness.topPrime 6389 },
  { lower := 6555, upper := 6718, witness := RowWitness.topPrime 6553 },
  { lower := 6719, upper := 6884, witness := RowWitness.topPrime 6719 },
  { lower := 6885, upper := 7048, witness := RowWitness.topPrime 6883 },
  { lower := 7049, upper := 7208, witness := RowWitness.topPrime 7043 },
  { lower := 7209, upper := 7372, witness := RowWitness.topPrime 7207 },
  { lower := 7373, upper := 7534, witness := RowWitness.topPrime 7369 },
  { lower := 7535, upper := 7694, witness := RowWitness.topPrime 7529 },
  { lower := 7695, upper := 7856, witness := RowWitness.topPrime 7691 },
  { lower := 7857, upper := 8018, witness := RowWitness.topPrime 7853 },
  { lower := 8019, upper := 8182, witness := RowWitness.topPrime 8017 },
  { lower := 8183, upper := 8344, witness := RowWitness.topPrime 8179 },
  { lower := 8345, upper := 8494, witness := RowWitness.topPrime 8329 },
  { lower := 8495, upper := 8632, witness := RowWitness.topPrime 8467 },
  { lower := 8633, upper := 8794, witness := RowWitness.topPrime 8629 },
  { lower := 8795, upper := 8948, witness := RowWitness.topPrime 8783 },
  { lower := 8949, upper := 9106, witness := RowWitness.topPrime 8941 },
  { lower := 9107, upper := 9268, witness := RowWitness.topPrime 9103 },
  { lower := 9269, upper := 9422, witness := RowWitness.topPrime 9257 },
  { lower := 9423, upper := 9586, witness := RowWitness.topPrime 9421 },
  { lower := 9587, upper := 9752, witness := RowWitness.topPrime 9587 },
  { lower := 9753, upper := 9914, witness := RowWitness.topPrime 9749 },
  { lower := 9915, upper := 10072, witness := RowWitness.topPrime 9907 },
  { lower := 10073, upper := 10234, witness := RowWitness.topPrime 10069 },
  { lower := 10235, upper := 10388, witness := RowWitness.topPrime 10223 },
  { lower := 10389, upper := 10534, witness := RowWitness.topPrime 10369 },
  { lower := 10535, upper := 10696, witness := RowWitness.topPrime 10531 },
  { lower := 10697, upper := 10856, witness := RowWitness.topPrime 10691 },
  { lower := 10857, upper := 11018, witness := RowWitness.topPrime 10853 },
  { lower := 11019, upper := 11168, witness := RowWitness.topPrime 11003 },
  { lower := 11169, upper := 11326, witness := RowWitness.topPrime 11161 },
  { lower := 11327, upper := 11486, witness := RowWitness.topPrime 11321 },
  { lower := 11487, upper := 11648, witness := RowWitness.topPrime 11483 },
  { lower := 11649, upper := 11798, witness := RowWitness.topPrime 11633 },
  { lower := 11799, upper := 11954, witness := RowWitness.topPrime 11789 },
  { lower := 11955, upper := 12118, witness := RowWitness.topPrime 11953 },
  { lower := 12119, upper := 12284, witness := RowWitness.topPrime 12119 },
  { lower := 12285, upper := 12446, witness := RowWitness.topPrime 12281 },
  { lower := 12447, upper := 12602, witness := RowWitness.topPrime 12437 },
  { lower := 12603, upper := 12766, witness := RowWitness.topPrime 12601 },
  { lower := 12767, upper := 12928, witness := RowWitness.topPrime 12763 },
  { lower := 12929, upper := 13088, witness := RowWitness.topPrime 12923 },
  { lower := 13089, upper := 13228, witness := RowWitness.topPrime 13063 },
  { lower := 13229, upper := 13394, witness := RowWitness.topPrime 13229 },
  { lower := 13395, upper := 13546, witness := RowWitness.topPrime 13381 },
  { lower := 13547, upper := 13702, witness := RowWitness.topPrime 13537 },
  { lower := 13703, upper := 13862, witness := RowWitness.topPrime 13697 },
  { lower := 13863, upper := 14024, witness := RowWitness.topPrime 13859 },
  { lower := 14025, upper := 14176, witness := RowWitness.topPrime 14011 },
  { lower := 14177, upper := 14342, witness := RowWitness.topPrime 14177 },
  { lower := 14343, upper := 14506, witness := RowWitness.topPrime 14341 },
  { lower := 14507, upper := 14668, witness := RowWitness.topPrime 14503 },
  { lower := 14669, upper := 14834, witness := RowWitness.topPrime 14669 },
  { lower := 14835, upper := 14996, witness := RowWitness.topPrime 14831 },
  { lower := 14997, upper := 15148, witness := RowWitness.topPrime 14983 },
  { lower := 15149, upper := 15314, witness := RowWitness.topPrime 15149 },
  { lower := 15315, upper := 15478, witness := RowWitness.topPrime 15313 },
  { lower := 15479, upper := 15638, witness := RowWitness.topPrime 15473 },
  { lower := 15639, upper := 15794, witness := RowWitness.topPrime 15629 },
  { lower := 15795, upper := 15956, witness := RowWitness.topPrime 15791 },
  { lower := 15957, upper := 16102, witness := RowWitness.topPrime 15937 },
  { lower := 16103, upper := 16268, witness := RowWitness.topPrime 16103 },
  { lower := 16269, upper := 16432, witness := RowWitness.topPrime 16267 },
  { lower := 16433, upper := 16598, witness := RowWitness.topPrime 16433 },
  { lower := 16599, upper := 16738, witness := RowWitness.topPrime 16573 },
  { lower := 16739, upper := 16894, witness := RowWitness.topPrime 16729 },
  { lower := 16895, upper := 17054, witness := RowWitness.topPrime 16889 },
  { lower := 17055, upper := 17218, witness := RowWitness.topPrime 17053 },
  { lower := 17219, upper := 17374, witness := RowWitness.topPrime 17209 },
  { lower := 17375, upper := 17524, witness := RowWitness.topPrime 17359 },
  { lower := 17525, upper := 17684, witness := RowWitness.topPrime 17519 },
  { lower := 17685, upper := 17848, witness := RowWitness.topPrime 17683 },
  { lower := 17849, upper := 18004, witness := RowWitness.topPrime 17839 },
  { lower := 18005, upper := 18154, witness := RowWitness.topPrime 17989 },
  { lower := 18155, upper := 18314, witness := RowWitness.topPrime 18149 },
  { lower := 18315, upper := 18478, witness := RowWitness.topPrime 18313 },
  { lower := 18479, upper := 18626, witness := RowWitness.topPrime 18461 },
  { lower := 18627, upper := 18782, witness := RowWitness.topPrime 18617 },
  { lower := 18783, upper := 18938, witness := RowWitness.topPrime 18773 },
  { lower := 18939, upper := 19084, witness := RowWitness.topPrime 18919 },
  { lower := 19085, upper := 19246, witness := RowWitness.topPrime 19081 },
  { lower := 19247, upper := 19402, witness := RowWitness.topPrime 19237 },
  { lower := 19403, upper := 19568, witness := RowWitness.topPrime 19403 },
  { lower := 19569, upper := 19724, witness := RowWitness.topPrime 19559 },
  { lower := 19725, upper := 19882, witness := RowWitness.topPrime 19717 },
  { lower := 19883, upper := 20032, witness := RowWitness.topPrime 19867 },
  { lower := 20033, upper := 20194, witness := RowWitness.topPrime 20029 },
  { lower := 20195, upper := 20348, witness := RowWitness.topPrime 20183 },
  { lower := 20349, upper := 20512, witness := RowWitness.topPrime 20347 },
  { lower := 20513, upper := 20674, witness := RowWitness.topPrime 20509 },
  { lower := 20675, upper := 20828, witness := RowWitness.topPrime 20663 },
  { lower := 20829, upper := 20974, witness := RowWitness.topPrime 20809 },
  { lower := 20975, upper := 21128, witness := RowWitness.topPrime 20963 },
  { lower := 21129, upper := 21286, witness := RowWitness.topPrime 21121 },
  { lower := 21287, upper := 21448, witness := RowWitness.topPrime 21283 },
  { lower := 21449, upper := 21598, witness := RowWitness.topPrime 21433 },
  { lower := 21599, upper := 21764, witness := RowWitness.topPrime 21599 },
  { lower := 21765, upper := 21922, witness := RowWitness.topPrime 21757 },
  { lower := 21923, upper := 22076, witness := RowWitness.topPrime 21911 },
  { lower := 22077, upper := 22238, witness := RowWitness.topPrime 22073 },
  { lower := 22239, upper := 22394, witness := RowWitness.topPrime 22229 },
  { lower := 22395, upper := 22556, witness := RowWitness.topPrime 22391 },
  { lower := 22557, upper := 22714, witness := RowWitness.topPrime 22549 },
  { lower := 22715, upper := 22874, witness := RowWitness.topPrime 22709 },
  { lower := 22875, upper := 23036, witness := RowWitness.topPrime 22871 },
  { lower := 23037, upper := 23194, witness := RowWitness.topPrime 23029 },
  { lower := 23195, upper := 23354, witness := RowWitness.topPrime 23189 },
  { lower := 23355, upper := 23504, witness := RowWitness.topPrime 23339 },
  { lower := 23505, upper := 23662, witness := RowWitness.topPrime 23497 },
  { lower := 23663, upper := 23828, witness := RowWitness.topPrime 23663 },
  { lower := 23829, upper := 23992, witness := RowWitness.topPrime 23827 },
  { lower := 23993, upper := 24158, witness := RowWitness.topPrime 23993 },
  { lower := 24159, upper := 24316, witness := RowWitness.topPrime 24151 },
  { lower := 24317, upper := 24482, witness := RowWitness.topPrime 24317 },
  { lower := 24483, upper := 24646, witness := RowWitness.topPrime 24481 },
  { lower := 24647, upper := 24796, witness := RowWitness.topPrime 24631 },
  { lower := 24797, upper := 24958, witness := RowWitness.topPrime 24793 },
  { lower := 24959, upper := 25118, witness := RowWitness.topPrime 24953 },
  { lower := 25119, upper := 25282, witness := RowWitness.topPrime 25117 },
  { lower := 25283, upper := 25426, witness := RowWitness.topPrime 25261 },
  { lower := 25427, upper := 25588, witness := RowWitness.topPrime 25423 },
  { lower := 25589, upper := 25754, witness := RowWitness.topPrime 25589 },
  { lower := 25755, upper := 25912, witness := RowWitness.topPrime 25747 },
  { lower := 25913, upper := 26078, witness := RowWitness.topPrime 25913 },
  { lower := 26079, upper := 26218, witness := RowWitness.topPrime 26053 },
  { lower := 26219, upper := 26374, witness := RowWitness.topPrime 26209 },
  { lower := 26375, upper := 26536, witness := RowWitness.topPrime 26371 },
  { lower := 26537, upper := 26678, witness := RowWitness.topPrime 26513 },
  { lower := 26679, upper := 26834, witness := RowWitness.topPrime 26669 },
  { lower := 26835, upper := 26998, witness := RowWitness.topPrime 26833 },
  { lower := 26999, upper := 27158, witness := RowWitness.topPrime 26993 },
  { lower := 27159, upper := 27308, witness := RowWitness.topPrime 27143 },
  { lower := 27309, upper := 27389, witness := RowWitness.topPrime 27299 },
  { lower := 28125, upper := 28288, witness := RowWitness.topPrime 28123 },
  { lower := 28289, upper := 28290, witness := RowWitness.topPrime 28289 },
  { lower := 28561, upper := 28596, witness := RowWitness.topPrime 28559 },
  { lower := 28717, upper := 28726, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28882, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29933, witness := RowWitness.topPrime 29789 },
  { lower := 31213, upper := 31358, witness := RowWitness.topPrime 31193 },
  { lower := 31359, upper := 31415, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31494, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31849, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31992, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32933, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33654, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33779, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34484, witness := RowWitness.topPrime 34319 },
  { lower := 34485, upper := 34540, witness := RowWitness.topPrime 34483 },
  { lower := 36517, upper := 36662, witness := RowWitness.topPrime 36497 },
  { lower := 36663, upper := 36666, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37375, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37468, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37658, witness := RowWitness.topPrime 37493 },
  { lower := 37659, upper := 37703, witness := RowWitness.topPrime 37657 },
  { lower := 38307, upper := 38456, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39469, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40493, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41092, witness := RowWitness.topPrime 40927 },
  { lower := 41093, upper := 41096, witness := RowWitness.topPrime 41081 },
  { lower := 45369, upper := 45418, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45961, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47686, witness := RowWitness.topPrime 47521 },
  { lower := 47687, upper := 47689, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48126, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48538, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48833, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49295, witness := RowWitness.topPrime 49139 },
  { lower := 49298, upper := 49317, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49463, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50575, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51170, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53210, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53303, witness := RowWitness.topPrime 53281 },
  { lower := 56307, upper := 56334, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56472, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57287, witness := RowWitness.topPrime 57241 },
  { lower := 62500, upper := 62575, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65701, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68804, witness := RowWitness.topPrime 68639 },
  { lower := 68805, upper := 68809, witness := RowWitness.topPrime 68791 },
  { lower := 71289, upper := 71452, witness := RowWitness.topPrime 71287 },
  { lower := 71453, upper := 71454, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73167, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73332, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85848, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89538, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93915, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98469, witness := RowWitness.topPrime 98411 },
  { lower := 102152, upper := 102175, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103131, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109540, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137946, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149042, witness := RowWitness.topPrime 148949 }
]

def row166_layers : List CoverLayer := [
  { lower := 27390, upper := 54780, M := 13 },
  { lower := 54780, upper := 109560, M := 10 },
  { lower := 109560, upper := 219120, M := 7 },
  { lower := 219120, upper := 438240, M := 6 },
  { lower := 438240, upper := 876480, M := 4 },
  { lower := 876480, upper := 1752960, M := 3 },
  { lower := 1752960, upper := 3505920, M := 2 },
  { lower := 3505920, upper := 7011840, M := 2 },
  { lower := 7011840, upper := 10000000, M := 2 }
]

def row166 : FiniteCoverRow := {
  height := row166_height,
  goods := row166_goods,
  layers := row166_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good000_checked :
    goodSegmentCheck 166 55 118
      { lower := 334, upper := 496, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good001_checked :
    goodSegmentCheck 166 55 118
      { lower := 497, upper := 656, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good002_checked :
    goodSegmentCheck 166 55 118
      { lower := 657, upper := 818, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good003_checked :
    goodSegmentCheck 166 55 118
      { lower := 819, upper := 976, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good004_checked :
    goodSegmentCheck 166 55 118
      { lower := 977, upper := 1142, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good005_checked :
    goodSegmentCheck 166 55 118
      { lower := 1143, upper := 1294, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good006_checked :
    goodSegmentCheck 166 55 118
      { lower := 1295, upper := 1456, witness := RowWitness.topPrime 1291 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good007_checked :
    goodSegmentCheck 166 55 118
      { lower := 1457, upper := 1618, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good008_checked :
    goodSegmentCheck 166 55 118
      { lower := 1619, upper := 1784, witness := RowWitness.topPrime 1619 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good009_checked :
    goodSegmentCheck 166 55 118
      { lower := 1785, upper := 1948, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good010_checked :
    goodSegmentCheck 166 55 118
      { lower := 1949, upper := 2114, witness := RowWitness.topPrime 1949 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good011_checked :
    goodSegmentCheck 166 55 118
      { lower := 2115, upper := 2278, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good012_checked :
    goodSegmentCheck 166 55 118
      { lower := 2279, upper := 2438, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good013_checked :
    goodSegmentCheck 166 55 118
      { lower := 2439, upper := 2602, witness := RowWitness.topPrime 2437 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good014_checked :
    goodSegmentCheck 166 55 118
      { lower := 2603, upper := 2758, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good015_checked :
    goodSegmentCheck 166 55 118
      { lower := 2759, upper := 2918, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good016_checked :
    goodSegmentCheck 166 55 118
      { lower := 2919, upper := 3082, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good017_checked :
    goodSegmentCheck 166 55 118
      { lower := 3083, upper := 3248, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good018_checked :
    goodSegmentCheck 166 55 118
      { lower := 3249, upper := 3394, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good019_checked :
    goodSegmentCheck 166 55 118
      { lower := 3395, upper := 3556, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good020_checked :
    goodSegmentCheck 166 55 118
      { lower := 3557, upper := 3722, witness := RowWitness.topPrime 3557 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good021_checked :
    goodSegmentCheck 166 55 118
      { lower := 3723, upper := 3884, witness := RowWitness.topPrime 3719 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good022_checked :
    goodSegmentCheck 166 55 118
      { lower := 3885, upper := 4046, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good023_checked :
    goodSegmentCheck 166 55 118
      { lower := 4047, upper := 4192, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good024_checked :
    goodSegmentCheck 166 55 118
      { lower := 4193, upper := 4342, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good025_checked :
    goodSegmentCheck 166 55 118
      { lower := 4343, upper := 4504, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good026_checked :
    goodSegmentCheck 166 55 118
      { lower := 4505, upper := 4658, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good027_checked :
    goodSegmentCheck 166 55 118
      { lower := 4659, upper := 4822, witness := RowWitness.topPrime 4657 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good028_checked :
    goodSegmentCheck 166 55 118
      { lower := 4823, upper := 4982, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good029_checked :
    goodSegmentCheck 166 55 118
      { lower := 4983, upper := 5138, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good030_checked :
    goodSegmentCheck 166 55 118
      { lower := 5139, upper := 5284, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good031_checked :
    goodSegmentCheck 166 55 118
      { lower := 5285, upper := 5446, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good032_checked :
    goodSegmentCheck 166 55 118
      { lower := 5447, upper := 5608, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good033_checked :
    goodSegmentCheck 166 55 118
      { lower := 5609, upper := 5756, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good034_checked :
    goodSegmentCheck 166 55 118
      { lower := 5757, upper := 5914, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good035_checked :
    goodSegmentCheck 166 55 118
      { lower := 5915, upper := 6068, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good036_checked :
    goodSegmentCheck 166 55 118
      { lower := 6069, upper := 6232, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good037_checked :
    goodSegmentCheck 166 55 118
      { lower := 6233, upper := 6394, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good038_checked :
    goodSegmentCheck 166 55 118
      { lower := 6395, upper := 6554, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good039_checked :
    goodSegmentCheck 166 55 118
      { lower := 6555, upper := 6718, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good040_checked :
    goodSegmentCheck 166 55 118
      { lower := 6719, upper := 6884, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good041_checked :
    goodSegmentCheck 166 55 118
      { lower := 6885, upper := 7048, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good042_checked :
    goodSegmentCheck 166 55 118
      { lower := 7049, upper := 7208, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good043_checked :
    goodSegmentCheck 166 55 118
      { lower := 7209, upper := 7372, witness := RowWitness.topPrime 7207 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good044_checked :
    goodSegmentCheck 166 55 118
      { lower := 7373, upper := 7534, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good045_checked :
    goodSegmentCheck 166 55 118
      { lower := 7535, upper := 7694, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good046_checked :
    goodSegmentCheck 166 55 118
      { lower := 7695, upper := 7856, witness := RowWitness.topPrime 7691 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good047_checked :
    goodSegmentCheck 166 55 118
      { lower := 7857, upper := 8018, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good048_checked :
    goodSegmentCheck 166 55 118
      { lower := 8019, upper := 8182, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good049_checked :
    goodSegmentCheck 166 55 118
      { lower := 8183, upper := 8344, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good050_checked :
    goodSegmentCheck 166 55 118
      { lower := 8345, upper := 8494, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good051_checked :
    goodSegmentCheck 166 55 118
      { lower := 8495, upper := 8632, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good052_checked :
    goodSegmentCheck 166 55 118
      { lower := 8633, upper := 8794, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good053_checked :
    goodSegmentCheck 166 55 118
      { lower := 8795, upper := 8948, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good054_checked :
    goodSegmentCheck 166 55 118
      { lower := 8949, upper := 9106, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good055_checked :
    goodSegmentCheck 166 55 118
      { lower := 9107, upper := 9268, witness := RowWitness.topPrime 9103 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good056_checked :
    goodSegmentCheck 166 55 118
      { lower := 9269, upper := 9422, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good057_checked :
    goodSegmentCheck 166 55 118
      { lower := 9423, upper := 9586, witness := RowWitness.topPrime 9421 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good058_checked :
    goodSegmentCheck 166 55 118
      { lower := 9587, upper := 9752, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good059_checked :
    goodSegmentCheck 166 55 118
      { lower := 9753, upper := 9914, witness := RowWitness.topPrime 9749 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good060_checked :
    goodSegmentCheck 166 55 118
      { lower := 9915, upper := 10072, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good061_checked :
    goodSegmentCheck 166 55 118
      { lower := 10073, upper := 10234, witness := RowWitness.topPrime 10069 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good062_checked :
    goodSegmentCheck 166 55 118
      { lower := 10235, upper := 10388, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good063_checked :
    goodSegmentCheck 166 55 118
      { lower := 10389, upper := 10534, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good064_checked :
    goodSegmentCheck 166 55 118
      { lower := 10535, upper := 10696, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good065_checked :
    goodSegmentCheck 166 55 118
      { lower := 10697, upper := 10856, witness := RowWitness.topPrime 10691 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good066_checked :
    goodSegmentCheck 166 55 118
      { lower := 10857, upper := 11018, witness := RowWitness.topPrime 10853 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good067_checked :
    goodSegmentCheck 166 55 118
      { lower := 11019, upper := 11168, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good068_checked :
    goodSegmentCheck 166 55 118
      { lower := 11169, upper := 11326, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good069_checked :
    goodSegmentCheck 166 55 118
      { lower := 11327, upper := 11486, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good070_checked :
    goodSegmentCheck 166 55 118
      { lower := 11487, upper := 11648, witness := RowWitness.topPrime 11483 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good071_checked :
    goodSegmentCheck 166 55 118
      { lower := 11649, upper := 11798, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good072_checked :
    goodSegmentCheck 166 55 118
      { lower := 11799, upper := 11954, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good073_checked :
    goodSegmentCheck 166 55 118
      { lower := 11955, upper := 12118, witness := RowWitness.topPrime 11953 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good074_checked :
    goodSegmentCheck 166 55 118
      { lower := 12119, upper := 12284, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good075_checked :
    goodSegmentCheck 166 55 118
      { lower := 12285, upper := 12446, witness := RowWitness.topPrime 12281 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good076_checked :
    goodSegmentCheck 166 55 118
      { lower := 12447, upper := 12602, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good077_checked :
    goodSegmentCheck 166 55 118
      { lower := 12603, upper := 12766, witness := RowWitness.topPrime 12601 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good078_checked :
    goodSegmentCheck 166 55 118
      { lower := 12767, upper := 12928, witness := RowWitness.topPrime 12763 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good079_checked :
    goodSegmentCheck 166 55 118
      { lower := 12929, upper := 13088, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good080_checked :
    goodSegmentCheck 166 55 118
      { lower := 13089, upper := 13228, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good081_checked :
    goodSegmentCheck 166 55 118
      { lower := 13229, upper := 13394, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good082_checked :
    goodSegmentCheck 166 55 118
      { lower := 13395, upper := 13546, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good083_checked :
    goodSegmentCheck 166 55 118
      { lower := 13547, upper := 13702, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good084_checked :
    goodSegmentCheck 166 55 118
      { lower := 13703, upper := 13862, witness := RowWitness.topPrime 13697 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good085_checked :
    goodSegmentCheck 166 55 118
      { lower := 13863, upper := 14024, witness := RowWitness.topPrime 13859 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good086_checked :
    goodSegmentCheck 166 55 118
      { lower := 14025, upper := 14176, witness := RowWitness.topPrime 14011 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good087_checked :
    goodSegmentCheck 166 55 118
      { lower := 14177, upper := 14342, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good088_checked :
    goodSegmentCheck 166 55 118
      { lower := 14343, upper := 14506, witness := RowWitness.topPrime 14341 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good089_checked :
    goodSegmentCheck 166 55 118
      { lower := 14507, upper := 14668, witness := RowWitness.topPrime 14503 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good090_checked :
    goodSegmentCheck 166 55 118
      { lower := 14669, upper := 14834, witness := RowWitness.topPrime 14669 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good091_checked :
    goodSegmentCheck 166 55 118
      { lower := 14835, upper := 14996, witness := RowWitness.topPrime 14831 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good092_checked :
    goodSegmentCheck 166 55 118
      { lower := 14997, upper := 15148, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good093_checked :
    goodSegmentCheck 166 55 118
      { lower := 15149, upper := 15314, witness := RowWitness.topPrime 15149 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good094_checked :
    goodSegmentCheck 166 55 118
      { lower := 15315, upper := 15478, witness := RowWitness.topPrime 15313 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good095_checked :
    goodSegmentCheck 166 55 118
      { lower := 15479, upper := 15638, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good096_checked :
    goodSegmentCheck 166 55 118
      { lower := 15639, upper := 15794, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good097_checked :
    goodSegmentCheck 166 55 118
      { lower := 15795, upper := 15956, witness := RowWitness.topPrime 15791 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good098_checked :
    goodSegmentCheck 166 55 118
      { lower := 15957, upper := 16102, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good099_checked :
    goodSegmentCheck 166 55 118
      { lower := 16103, upper := 16268, witness := RowWitness.topPrime 16103 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good100_checked :
    goodSegmentCheck 166 55 118
      { lower := 16269, upper := 16432, witness := RowWitness.topPrime 16267 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good101_checked :
    goodSegmentCheck 166 55 118
      { lower := 16433, upper := 16598, witness := RowWitness.topPrime 16433 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good102_checked :
    goodSegmentCheck 166 55 118
      { lower := 16599, upper := 16738, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good103_checked :
    goodSegmentCheck 166 55 118
      { lower := 16739, upper := 16894, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good104_checked :
    goodSegmentCheck 166 55 118
      { lower := 16895, upper := 17054, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good105_checked :
    goodSegmentCheck 166 55 118
      { lower := 17055, upper := 17218, witness := RowWitness.topPrime 17053 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good106_checked :
    goodSegmentCheck 166 55 118
      { lower := 17219, upper := 17374, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good107_checked :
    goodSegmentCheck 166 55 118
      { lower := 17375, upper := 17524, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good108_checked :
    goodSegmentCheck 166 55 118
      { lower := 17525, upper := 17684, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good109_checked :
    goodSegmentCheck 166 55 118
      { lower := 17685, upper := 17848, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good110_checked :
    goodSegmentCheck 166 55 118
      { lower := 17849, upper := 18004, witness := RowWitness.topPrime 17839 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good111_checked :
    goodSegmentCheck 166 55 118
      { lower := 18005, upper := 18154, witness := RowWitness.topPrime 17989 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good112_checked :
    goodSegmentCheck 166 55 118
      { lower := 18155, upper := 18314, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good113_checked :
    goodSegmentCheck 166 55 118
      { lower := 18315, upper := 18478, witness := RowWitness.topPrime 18313 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good114_checked :
    goodSegmentCheck 166 55 118
      { lower := 18479, upper := 18626, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good115_checked :
    goodSegmentCheck 166 55 118
      { lower := 18627, upper := 18782, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good116_checked :
    goodSegmentCheck 166 55 118
      { lower := 18783, upper := 18938, witness := RowWitness.topPrime 18773 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good117_checked :
    goodSegmentCheck 166 55 118
      { lower := 18939, upper := 19084, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good118_checked :
    goodSegmentCheck 166 55 118
      { lower := 19085, upper := 19246, witness := RowWitness.topPrime 19081 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good119_checked :
    goodSegmentCheck 166 55 118
      { lower := 19247, upper := 19402, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good120_checked :
    goodSegmentCheck 166 55 118
      { lower := 19403, upper := 19568, witness := RowWitness.topPrime 19403 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good121_checked :
    goodSegmentCheck 166 55 118
      { lower := 19569, upper := 19724, witness := RowWitness.topPrime 19559 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good122_checked :
    goodSegmentCheck 166 55 118
      { lower := 19725, upper := 19882, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good123_checked :
    goodSegmentCheck 166 55 118
      { lower := 19883, upper := 20032, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good124_checked :
    goodSegmentCheck 166 55 118
      { lower := 20033, upper := 20194, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good125_checked :
    goodSegmentCheck 166 55 118
      { lower := 20195, upper := 20348, witness := RowWitness.topPrime 20183 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good126_checked :
    goodSegmentCheck 166 55 118
      { lower := 20349, upper := 20512, witness := RowWitness.topPrime 20347 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good127_checked :
    goodSegmentCheck 166 55 118
      { lower := 20513, upper := 20674, witness := RowWitness.topPrime 20509 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good128_checked :
    goodSegmentCheck 166 55 118
      { lower := 20675, upper := 20828, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good129_checked :
    goodSegmentCheck 166 55 118
      { lower := 20829, upper := 20974, witness := RowWitness.topPrime 20809 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good130_checked :
    goodSegmentCheck 166 55 118
      { lower := 20975, upper := 21128, witness := RowWitness.topPrime 20963 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good131_checked :
    goodSegmentCheck 166 55 118
      { lower := 21129, upper := 21286, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good132_checked :
    goodSegmentCheck 166 55 118
      { lower := 21287, upper := 21448, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good133_checked :
    goodSegmentCheck 166 55 118
      { lower := 21449, upper := 21598, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good134_checked :
    goodSegmentCheck 166 55 118
      { lower := 21599, upper := 21764, witness := RowWitness.topPrime 21599 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good135_checked :
    goodSegmentCheck 166 55 118
      { lower := 21765, upper := 21922, witness := RowWitness.topPrime 21757 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good136_checked :
    goodSegmentCheck 166 55 118
      { lower := 21923, upper := 22076, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good137_checked :
    goodSegmentCheck 166 55 118
      { lower := 22077, upper := 22238, witness := RowWitness.topPrime 22073 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good138_checked :
    goodSegmentCheck 166 55 118
      { lower := 22239, upper := 22394, witness := RowWitness.topPrime 22229 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good139_checked :
    goodSegmentCheck 166 55 118
      { lower := 22395, upper := 22556, witness := RowWitness.topPrime 22391 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good140_checked :
    goodSegmentCheck 166 55 118
      { lower := 22557, upper := 22714, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good141_checked :
    goodSegmentCheck 166 55 118
      { lower := 22715, upper := 22874, witness := RowWitness.topPrime 22709 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good142_checked :
    goodSegmentCheck 166 55 118
      { lower := 22875, upper := 23036, witness := RowWitness.topPrime 22871 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good143_checked :
    goodSegmentCheck 166 55 118
      { lower := 23037, upper := 23194, witness := RowWitness.topPrime 23029 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good144_checked :
    goodSegmentCheck 166 55 118
      { lower := 23195, upper := 23354, witness := RowWitness.topPrime 23189 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good145_checked :
    goodSegmentCheck 166 55 118
      { lower := 23355, upper := 23504, witness := RowWitness.topPrime 23339 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good146_checked :
    goodSegmentCheck 166 55 118
      { lower := 23505, upper := 23662, witness := RowWitness.topPrime 23497 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good147_checked :
    goodSegmentCheck 166 55 118
      { lower := 23663, upper := 23828, witness := RowWitness.topPrime 23663 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good148_checked :
    goodSegmentCheck 166 55 118
      { lower := 23829, upper := 23992, witness := RowWitness.topPrime 23827 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good149_checked :
    goodSegmentCheck 166 55 118
      { lower := 23993, upper := 24158, witness := RowWitness.topPrime 23993 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good150_checked :
    goodSegmentCheck 166 55 118
      { lower := 24159, upper := 24316, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good151_checked :
    goodSegmentCheck 166 55 118
      { lower := 24317, upper := 24482, witness := RowWitness.topPrime 24317 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good152_checked :
    goodSegmentCheck 166 55 118
      { lower := 24483, upper := 24646, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good153_checked :
    goodSegmentCheck 166 55 118
      { lower := 24647, upper := 24796, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good154_checked :
    goodSegmentCheck 166 55 118
      { lower := 24797, upper := 24958, witness := RowWitness.topPrime 24793 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good155_checked :
    goodSegmentCheck 166 55 118
      { lower := 24959, upper := 25118, witness := RowWitness.topPrime 24953 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good156_checked :
    goodSegmentCheck 166 55 118
      { lower := 25119, upper := 25282, witness := RowWitness.topPrime 25117 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good157_checked :
    goodSegmentCheck 166 55 118
      { lower := 25283, upper := 25426, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good158_checked :
    goodSegmentCheck 166 55 118
      { lower := 25427, upper := 25588, witness := RowWitness.topPrime 25423 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good159_checked :
    goodSegmentCheck 166 55 118
      { lower := 25589, upper := 25754, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good160_checked :
    goodSegmentCheck 166 55 118
      { lower := 25755, upper := 25912, witness := RowWitness.topPrime 25747 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good161_checked :
    goodSegmentCheck 166 55 118
      { lower := 25913, upper := 26078, witness := RowWitness.topPrime 25913 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good162_checked :
    goodSegmentCheck 166 55 118
      { lower := 26079, upper := 26218, witness := RowWitness.topPrime 26053 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good163_checked :
    goodSegmentCheck 166 55 118
      { lower := 26219, upper := 26374, witness := RowWitness.topPrime 26209 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good164_checked :
    goodSegmentCheck 166 55 118
      { lower := 26375, upper := 26536, witness := RowWitness.topPrime 26371 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good165_checked :
    goodSegmentCheck 166 55 118
      { lower := 26537, upper := 26678, witness := RowWitness.topPrime 26513 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good166_checked :
    goodSegmentCheck 166 55 118
      { lower := 26679, upper := 26834, witness := RowWitness.topPrime 26669 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good167_checked :
    goodSegmentCheck 166 55 118
      { lower := 26835, upper := 26998, witness := RowWitness.topPrime 26833 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good168_checked :
    goodSegmentCheck 166 55 118
      { lower := 26999, upper := 27158, witness := RowWitness.topPrime 26993 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good169_checked :
    goodSegmentCheck 166 55 118
      { lower := 27159, upper := 27308, witness := RowWitness.topPrime 27143 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good170_checked :
    goodSegmentCheck 166 55 118
      { lower := 27309, upper := 27389, witness := RowWitness.topPrime 27299 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good171_checked :
    goodSegmentCheck 166 55 118
      { lower := 28125, upper := 28288, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good172_checked :
    goodSegmentCheck 166 55 118
      { lower := 28289, upper := 28290, witness := RowWitness.topPrime 28289 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good173_checked :
    goodSegmentCheck 166 55 118
      { lower := 28561, upper := 28596, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good174_checked :
    goodSegmentCheck 166 55 118
      { lower := 28717, upper := 28726, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good175_checked :
    goodSegmentCheck 166 55 118
      { lower := 28812, upper := 28882, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good176_checked :
    goodSegmentCheck 166 55 118
      { lower := 29791, upper := 29933, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good177_checked :
    goodSegmentCheck 166 55 118
      { lower := 31213, upper := 31358, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good178_checked :
    goodSegmentCheck 166 55 118
      { lower := 31359, upper := 31415, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good179_checked :
    goodSegmentCheck 166 55 118
      { lower := 31423, upper := 31494, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good180_checked :
    goodSegmentCheck 166 55 118
      { lower := 31827, upper := 31849, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good181_checked :
    goodSegmentCheck 166 55 118
      { lower := 31974, upper := 31992, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good182_checked :
    goodSegmentCheck 166 55 118
      { lower := 32805, upper := 32933, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good183_checked :
    goodSegmentCheck 166 55 118
      { lower := 33614, upper := 33654, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good184_checked :
    goodSegmentCheck 166 55 118
      { lower := 33708, upper := 33779, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good185_checked :
    goodSegmentCheck 166 55 118
      { lower := 34322, upper := 34484, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good186_checked :
    goodSegmentCheck 166 55 118
      { lower := 34485, upper := 34540, witness := RowWitness.topPrime 34483 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good187_checked :
    goodSegmentCheck 166 55 118
      { lower := 36517, upper := 36662, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good188_checked :
    goodSegmentCheck 166 55 118
      { lower := 36663, upper := 36666, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good189_checked :
    goodSegmentCheck 166 55 118
      { lower := 37303, upper := 37375, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good190_checked :
    goodSegmentCheck 166 55 118
      { lower := 37446, upper := 37468, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good191_checked :
    goodSegmentCheck 166 55 118
      { lower := 37500, upper := 37658, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good192_checked :
    goodSegmentCheck 166 55 118
      { lower := 37659, upper := 37703, witness := RowWitness.topPrime 37657 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good193_checked :
    goodSegmentCheck 166 55 118
      { lower := 38307, upper := 38456, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good194_checked :
    goodSegmentCheck 166 55 118
      { lower := 39366, upper := 39469, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good195_checked :
    goodSegmentCheck 166 55 118
      { lower := 40401, upper := 40493, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good196_checked :
    goodSegmentCheck 166 55 118
      { lower := 40931, upper := 41092, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good197_checked :
    goodSegmentCheck 166 55 118
      { lower := 41093, upper := 41096, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good198_checked :
    goodSegmentCheck 166 55 118
      { lower := 45369, upper := 45418, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good199_checked :
    goodSegmentCheck 166 55 118
      { lower := 45927, upper := 45961, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good200_checked :
    goodSegmentCheck 166 55 118
      { lower := 47526, upper := 47686, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good201_checked :
    goodSegmentCheck 166 55 118
      { lower := 47687, upper := 47689, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good202_checked :
    goodSegmentCheck 166 55 118
      { lower := 48013, upper := 48126, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good203_checked :
    goodSegmentCheck 166 55 118
      { lower := 48387, upper := 48538, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good204_checked :
    goodSegmentCheck 166 55 118
      { lower := 48778, upper := 48833, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good205_checked :
    goodSegmentCheck 166 55 118
      { lower := 49152, upper := 49295, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good206_checked :
    goodSegmentCheck 166 55 118
      { lower := 49298, upper := 49317, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good207_checked :
    goodSegmentCheck 166 55 118
      { lower := 49379, upper := 49463, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good208_checked :
    goodSegmentCheck 166 55 118
      { lower := 50421, upper := 50575, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good209_checked :
    goodSegmentCheck 166 55 118
      { lower := 51076, upper := 51170, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good210_checked :
    goodSegmentCheck 166 55 118
      { lower := 53138, upper := 53210, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good211_checked :
    goodSegmentCheck 166 55 118
      { lower := 53290, upper := 53303, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good212_checked :
    goodSegmentCheck 166 55 118
      { lower := 56307, upper := 56334, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good213_checked :
    goodSegmentCheck 166 55 118
      { lower := 56454, upper := 56472, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good214_checked :
    goodSegmentCheck 166 55 118
      { lower := 57245, upper := 57287, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good215_checked :
    goodSegmentCheck 166 55 118
      { lower := 62500, upper := 62575, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good216_checked :
    goodSegmentCheck 166 55 118
      { lower := 65610, upper := 65701, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good217_checked :
    goodSegmentCheck 166 55 118
      { lower := 68644, upper := 68804, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good218_checked :
    goodSegmentCheck 166 55 118
      { lower := 68805, upper := 68809, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good219_checked :
    goodSegmentCheck 166 55 118
      { lower := 71289, upper := 71452, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good220_checked :
    goodSegmentCheck 166 55 118
      { lower := 71453, upper := 71454, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good221_checked :
    goodSegmentCheck 166 55 118
      { lower := 73167, upper := 73167, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good222_checked :
    goodSegmentCheck 166 55 118
      { lower := 73205, upper := 73332, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good223_checked :
    goodSegmentCheck 166 55 118
      { lower := 85805, upper := 85848, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_good224_checked :
    goodSegmentCheck 166 55 118
      { lower := 89383, upper := 89538, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good225_checked :
    goodSegmentCheck 166 55 118
      { lower := 93845, upper := 93915, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good226_checked :
    goodSegmentCheck 166 55 118
      { lower := 98415, upper := 98469, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good227_checked :
    goodSegmentCheck 166 55 118
      { lower := 102152, upper := 102175, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good228_checked :
    goodSegmentCheck 166 55 118
      { lower := 103041, upper := 103131, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good229_checked :
    goodSegmentCheck 166 55 118
      { lower := 109503, upper := 109540, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good230_checked :
    goodSegmentCheck 166 55 118
      { lower := 137842, upper := 137946, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row166_good231_checked :
    goodSegmentCheck 166 55 118
      { lower := 148955, upper := 149042, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 166) (r := 55) (s := 118) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_good231_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_goods_checked :
    row166.goods.all (goodSegmentCheck row166.height.i row166.height.r row166.height.s) = true := by
  change row166_goods.all (goodSegmentCheck 166 55 118) = true
  simp only [row166_goods, List.all_cons, List.all_nil,
    row166_good000_checked,
    row166_good001_checked,
    row166_good002_checked,
    row166_good003_checked,
    row166_good004_checked,
    row166_good005_checked,
    row166_good006_checked,
    row166_good007_checked,
    row166_good008_checked,
    row166_good009_checked,
    row166_good010_checked,
    row166_good011_checked,
    row166_good012_checked,
    row166_good013_checked,
    row166_good014_checked,
    row166_good015_checked,
    row166_good016_checked,
    row166_good017_checked,
    row166_good018_checked,
    row166_good019_checked,
    row166_good020_checked,
    row166_good021_checked,
    row166_good022_checked,
    row166_good023_checked,
    row166_good024_checked,
    row166_good025_checked,
    row166_good026_checked,
    row166_good027_checked,
    row166_good028_checked,
    row166_good029_checked,
    row166_good030_checked,
    row166_good031_checked,
    row166_good032_checked,
    row166_good033_checked,
    row166_good034_checked,
    row166_good035_checked,
    row166_good036_checked,
    row166_good037_checked,
    row166_good038_checked,
    row166_good039_checked,
    row166_good040_checked,
    row166_good041_checked,
    row166_good042_checked,
    row166_good043_checked,
    row166_good044_checked,
    row166_good045_checked,
    row166_good046_checked,
    row166_good047_checked,
    row166_good048_checked,
    row166_good049_checked,
    row166_good050_checked,
    row166_good051_checked,
    row166_good052_checked,
    row166_good053_checked,
    row166_good054_checked,
    row166_good055_checked,
    row166_good056_checked,
    row166_good057_checked,
    row166_good058_checked,
    row166_good059_checked,
    row166_good060_checked,
    row166_good061_checked,
    row166_good062_checked,
    row166_good063_checked,
    row166_good064_checked,
    row166_good065_checked,
    row166_good066_checked,
    row166_good067_checked,
    row166_good068_checked,
    row166_good069_checked,
    row166_good070_checked,
    row166_good071_checked,
    row166_good072_checked,
    row166_good073_checked,
    row166_good074_checked,
    row166_good075_checked,
    row166_good076_checked,
    row166_good077_checked,
    row166_good078_checked,
    row166_good079_checked,
    row166_good080_checked,
    row166_good081_checked,
    row166_good082_checked,
    row166_good083_checked,
    row166_good084_checked,
    row166_good085_checked,
    row166_good086_checked,
    row166_good087_checked,
    row166_good088_checked,
    row166_good089_checked,
    row166_good090_checked,
    row166_good091_checked,
    row166_good092_checked,
    row166_good093_checked,
    row166_good094_checked,
    row166_good095_checked,
    row166_good096_checked,
    row166_good097_checked,
    row166_good098_checked,
    row166_good099_checked,
    row166_good100_checked,
    row166_good101_checked,
    row166_good102_checked,
    row166_good103_checked,
    row166_good104_checked,
    row166_good105_checked,
    row166_good106_checked,
    row166_good107_checked,
    row166_good108_checked,
    row166_good109_checked,
    row166_good110_checked,
    row166_good111_checked,
    row166_good112_checked,
    row166_good113_checked,
    row166_good114_checked,
    row166_good115_checked,
    row166_good116_checked,
    row166_good117_checked,
    row166_good118_checked,
    row166_good119_checked,
    row166_good120_checked,
    row166_good121_checked,
    row166_good122_checked,
    row166_good123_checked,
    row166_good124_checked,
    row166_good125_checked,
    row166_good126_checked,
    row166_good127_checked,
    row166_good128_checked,
    row166_good129_checked,
    row166_good130_checked,
    row166_good131_checked,
    row166_good132_checked,
    row166_good133_checked,
    row166_good134_checked,
    row166_good135_checked,
    row166_good136_checked,
    row166_good137_checked,
    row166_good138_checked,
    row166_good139_checked,
    row166_good140_checked,
    row166_good141_checked,
    row166_good142_checked,
    row166_good143_checked,
    row166_good144_checked,
    row166_good145_checked,
    row166_good146_checked,
    row166_good147_checked,
    row166_good148_checked,
    row166_good149_checked,
    row166_good150_checked,
    row166_good151_checked,
    row166_good152_checked,
    row166_good153_checked,
    row166_good154_checked,
    row166_good155_checked,
    row166_good156_checked,
    row166_good157_checked,
    row166_good158_checked,
    row166_good159_checked,
    row166_good160_checked,
    row166_good161_checked,
    row166_good162_checked,
    row166_good163_checked,
    row166_good164_checked,
    row166_good165_checked,
    row166_good166_checked,
    row166_good167_checked,
    row166_good168_checked,
    row166_good169_checked,
    row166_good170_checked,
    row166_good171_checked,
    row166_good172_checked,
    row166_good173_checked,
    row166_good174_checked,
    row166_good175_checked,
    row166_good176_checked,
    row166_good177_checked,
    row166_good178_checked,
    row166_good179_checked,
    row166_good180_checked,
    row166_good181_checked,
    row166_good182_checked,
    row166_good183_checked,
    row166_good184_checked,
    row166_good185_checked,
    row166_good186_checked,
    row166_good187_checked,
    row166_good188_checked,
    row166_good189_checked,
    row166_good190_checked,
    row166_good191_checked,
    row166_good192_checked,
    row166_good193_checked,
    row166_good194_checked,
    row166_good195_checked,
    row166_good196_checked,
    row166_good197_checked,
    row166_good198_checked,
    row166_good199_checked,
    row166_good200_checked,
    row166_good201_checked,
    row166_good202_checked,
    row166_good203_checked,
    row166_good204_checked,
    row166_good205_checked,
    row166_good206_checked,
    row166_good207_checked,
    row166_good208_checked,
    row166_good209_checked,
    row166_good210_checked,
    row166_good211_checked,
    row166_good212_checked,
    row166_good213_checked,
    row166_good214_checked,
    row166_good215_checked,
    row166_good216_checked,
    row166_good217_checked,
    row166_good218_checked,
    row166_good219_checked,
    row166_good220_checked,
    row166_good221_checked,
    row166_good222_checked,
    row166_good223_checked,
    row166_good224_checked,
    row166_good225_checked,
    row166_good226_checked,
    row166_good227_checked,
    row166_good228_checked,
    row166_good229_checked,
    row166_good230_checked,
    row166_good231_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_registered :
    decide (row166.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row166_small_checked :
    coverCheck (2 * row166.height.i + 2) (row166.height.i * (row166.height.i - 1) - 1)
      (row166.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row166_layerCover_checked :
    coverCheck (row166.height.i * (row166.height.i - 1)) (row166.height.n0 - 1)
      (row166.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row166_bounds : List NatInterval :=
  [(334, 496), (497, 656), (657, 818), (819, 976), (977, 1142), (1143, 1294), (1295, 1456), (1457, 1618), (1619, 1784), (1785, 1948), (1949, 2114), (2115, 2278), (2279, 2438), (2439, 2602), (2603, 2758), (2759, 2918), (2919, 3082), (3083, 3248), (3249, 3394), (3395, 3556), (3557, 3722), (3723, 3884), (3885, 4046), (4047, 4192), (4193, 4342), (4343, 4504), (4505, 4658), (4659, 4822), (4823, 4982), (4983, 5138), (5139, 5284), (5285, 5446), (5447, 5608), (5609, 5756), (5757, 5914), (5915, 6068), (6069, 6232), (6233, 6394), (6395, 6554), (6555, 6718), (6719, 6884), (6885, 7048), (7049, 7208), (7209, 7372), (7373, 7534), (7535, 7694), (7695, 7856), (7857, 8018), (8019, 8182), (8183, 8344), (8345, 8494), (8495, 8632), (8633, 8794), (8795, 8948), (8949, 9106), (9107, 9268), (9269, 9422), (9423, 9586), (9587, 9752), (9753, 9914), (9915, 10072), (10073, 10234), (10235, 10388), (10389, 10534), (10535, 10696), (10697, 10856), (10857, 11018), (11019, 11168), (11169, 11326), (11327, 11486), (11487, 11648), (11649, 11798), (11799, 11954), (11955, 12118), (12119, 12284), (12285, 12446), (12447, 12602), (12603, 12766), (12767, 12928), (12929, 13088), (13089, 13228), (13229, 13394), (13395, 13546), (13547, 13702), (13703, 13862), (13863, 14024), (14025, 14176), (14177, 14342), (14343, 14506), (14507, 14668), (14669, 14834), (14835, 14996), (14997, 15148), (15149, 15314), (15315, 15478), (15479, 15638), (15639, 15794), (15795, 15956), (15957, 16102), (16103, 16268), (16269, 16432), (16433, 16598), (16599, 16738), (16739, 16894), (16895, 17054), (17055, 17218), (17219, 17374), (17375, 17524), (17525, 17684), (17685, 17848), (17849, 18004), (18005, 18154), (18155, 18314), (18315, 18478), (18479, 18626), (18627, 18782), (18783, 18938), (18939, 19084), (19085, 19246), (19247, 19402), (19403, 19568), (19569, 19724), (19725, 19882), (19883, 20032), (20033, 20194), (20195, 20348), (20349, 20512), (20513, 20674), (20675, 20828), (20829, 20974), (20975, 21128), (21129, 21286), (21287, 21448), (21449, 21598), (21599, 21764), (21765, 21922), (21923, 22076), (22077, 22238), (22239, 22394), (22395, 22556), (22557, 22714), (22715, 22874), (22875, 23036), (23037, 23194), (23195, 23354), (23355, 23504), (23505, 23662), (23663, 23828), (23829, 23992), (23993, 24158), (24159, 24316), (24317, 24482), (24483, 24646), (24647, 24796), (24797, 24958), (24959, 25118), (25119, 25282), (25283, 25426), (25427, 25588), (25589, 25754), (25755, 25912), (25913, 26078), (26079, 26218), (26219, 26374), (26375, 26536), (26537, 26678), (26679, 26834), (26835, 26998), (26999, 27158), (27159, 27308), (27309, 27389), (28125, 28288), (28289, 28290), (28561, 28596), (28717, 28726), (28812, 28882), (29791, 29933), (31213, 31358), (31359, 31415), (31423, 31494), (31827, 31849), (31974, 31992), (32805, 32933), (33614, 33654), (33708, 33779), (34322, 34484), (34485, 34540), (36517, 36662), (36663, 36666), (37303, 37375), (37446, 37468), (37500, 37658), (37659, 37703), (38307, 38456), (39366, 39469), (40401, 40493), (40931, 41092), (41093, 41096), (45369, 45418), (45927, 45961), (47526, 47686), (47687, 47689), (48013, 48126), (48387, 48538), (48778, 48833), (49152, 49295), (49298, 49317), (49379, 49463), (50421, 50575), (51076, 51170), (53138, 53210), (53290, 53303), (56307, 56334), (56454, 56472), (57245, 57287), (62500, 62575), (65610, 65701), (68644, 68804), (68805, 68809), (71289, 71452), (71453, 71454), (73167, 73167), (73205, 73332), (85805, 85848), (89383, 89538), (93845, 93915), (98415, 98469), (102152, 102175), (103041, 103131), (109503, 109540), (137842, 137946), (148955, 149042)]

theorem row166_bounds_eq : row166.goods.map goodSegmentBounds = row166_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row166_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32933), (2, 40960, 41125), (2, 49152, 49317), (2, 32768, 32933), (2, 49152, 49317), (2, 32768, 32933), (3, 28431, 28596), (3, 32805, 32970), (3, 39366, 39531), (3, 45927, 46092), (3, 52488, 52653), (3, 39366, 39531), (5, 28125, 28290), (5, 31250, 31415), (5, 34375, 34540), (5, 37500, 37665), (5, 40625, 40790), (5, 31250, 31415), (5, 46875, 47040), (7, 28812, 28977), (7, 31213, 31378), (7, 33614, 33779), (7, 50421, 50586), (11, 29282, 29447), (11, 43923, 44088), (13, 28561, 28726), (13, 28561, 28726), (17, 29478, 29643), (17, 34391, 34556), (17, 39304, 39469), (17, 44217, 44382), (17, 49130, 49295), (17, 54043, 54208), (19, 27436, 27601), (19, 34295, 34460), (19, 41154, 41319), (19, 48013, 48178), (23, 36501, 36666), (23, 48668, 48833), (29, 48778, 48943), (31, 29791, 29956), (37, 50653, 50818), (47, 28717, 28882), (53, 28090, 28255), (53, 30899, 31064), (53, 33708, 33873), (53, 36517, 36682), (59, 27848, 28013), (59, 31329, 31494), (59, 34810, 34975), (59, 38291, 38456), (59, 41772, 41937), (59, 45253, 45418), (61, 29768, 29933), (61, 33489, 33654), (61, 37210, 37375), (61, 40931, 41096), (61, 44652, 44817), (61, 48373, 48538), (67, 31423, 31588), (67, 35912, 36077), (67, 40401, 40566), (67, 44890, 45055), (67, 49379, 49544), (67, 53868, 54033), (71, 30246, 30411), (71, 35287, 35452), (71, 40328, 40493), (71, 45369, 45534), (71, 50410, 50575), (73, 31974, 32139), (73, 37303, 37468), (73, 42632, 42797), (73, 47961, 48126), (73, 53290, 53455), (79, 31205, 31370), (79, 37446, 37611), (79, 43687, 43852), (79, 49928, 50093), (89, 31684, 31849), (89, 39605, 39770), (89, 47526, 47691), (97, 28227, 28392), (97, 37636, 37801), (97, 47045, 47210), (101, 30603, 30768), (101, 40804, 40969), (101, 51005, 51170), (103, 31827, 31992), (103, 42436, 42601), (103, 53045, 53210), (107, 34347, 34512), (107, 45796, 45961), (109, 35643, 35808), (109, 47524, 47689), (113, 38307, 38472), (113, 51076, 51241), (127, 32258, 32423), (127, 48387, 48552), (131, 34322, 34487), (131, 51483, 51648), (137, 37538, 37703), (139, 38642, 38807), (149, 44402, 44567), (151, 45602, 45767), (157, 49298, 49463), (163, 53138, 53303)]

def row166_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32933), (2, 40960, 41125), (2, 49152, 49317), (2, 32768, 32933), (2, 49152, 49317), (2, 32768, 32933), (3, 28431, 28596), (3, 32805, 32970), (3, 39366, 39531), (3, 45927, 46092), (3, 52488, 52653), (3, 39366, 39531), (5, 28125, 28290), (5, 31250, 31415), (5, 34375, 34540), (5, 37500, 37665)]

def row166_layer000_block001 : List ColouredInterval :=
  [(5, 40625, 40790), (5, 31250, 31415), (5, 46875, 47040), (7, 28812, 28977), (7, 31213, 31378), (7, 33614, 33779), (7, 50421, 50586), (11, 29282, 29447), (11, 43923, 44088), (13, 28561, 28726), (13, 28561, 28726), (17, 29478, 29643), (17, 34391, 34556), (17, 39304, 39469), (17, 44217, 44382), (17, 49130, 49295)]

def row166_layer000_block002 : List ColouredInterval :=
  [(17, 54043, 54208), (19, 27436, 27601), (19, 34295, 34460), (19, 41154, 41319), (19, 48013, 48178), (23, 36501, 36666), (23, 48668, 48833), (29, 48778, 48943), (31, 29791, 29956), (37, 50653, 50818), (47, 28717, 28882), (53, 28090, 28255), (53, 30899, 31064), (53, 33708, 33873), (53, 36517, 36682), (59, 27848, 28013)]

def row166_layer000_block003 : List ColouredInterval :=
  [(59, 31329, 31494), (59, 34810, 34975), (59, 38291, 38456), (59, 41772, 41937), (59, 45253, 45418), (61, 29768, 29933), (61, 33489, 33654), (61, 37210, 37375), (61, 40931, 41096), (61, 44652, 44817), (61, 48373, 48538), (67, 31423, 31588), (67, 35912, 36077), (67, 40401, 40566), (67, 44890, 45055), (67, 49379, 49544)]

def row166_layer000_block004 : List ColouredInterval :=
  [(67, 53868, 54033), (71, 30246, 30411), (71, 35287, 35452), (71, 40328, 40493), (71, 45369, 45534), (71, 50410, 50575), (73, 31974, 32139), (73, 37303, 37468), (73, 42632, 42797), (73, 47961, 48126), (73, 53290, 53455), (79, 31205, 31370), (79, 37446, 37611), (79, 43687, 43852), (79, 49928, 50093), (89, 31684, 31849)]

def row166_layer000_block005 : List ColouredInterval :=
  [(89, 39605, 39770), (89, 47526, 47691), (97, 28227, 28392), (97, 37636, 37801), (97, 47045, 47210), (101, 30603, 30768), (101, 40804, 40969), (101, 51005, 51170), (103, 31827, 31992), (103, 42436, 42601), (103, 53045, 53210), (107, 34347, 34512), (107, 45796, 45961), (109, 35643, 35808), (109, 47524, 47689), (113, 38307, 38472)]

def row166_layer000_block006 : List ColouredInterval :=
  [(113, 51076, 51241), (127, 32258, 32423), (127, 48387, 48552), (131, 34322, 34487), (131, 51483, 51648), (137, 37538, 37703), (139, 38642, 38807), (149, 44402, 44567), (151, 45602, 45767), (157, 49298, 49463), (163, 53138, 53303)]

def row166_layer000_chunks : List (List ColouredInterval) :=
  [row166_layer000_block000, row166_layer000_block001, row166_layer000_block002, row166_layer000_block003, row166_layer000_block004, row166_layer000_block005, row166_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_arithmetic : LayerArithmeticValid row166.height { lower := 27390, upper := 54780, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_enumeration :
    activePowerIntervalList 166 13 27390 54780 = row166_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_pairs000 :
    row166_layer000_block000.all (fun I => row166_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_pairs001 :
    row166_layer000_block001.all (fun I => row166_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_pairs002 :
    row166_layer000_block002.all (fun I => row166_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_pairs003 :
    row166_layer000_block003.all (fun I => row166_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_pairs004 :
    row166_layer000_block004.all (fun I => row166_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_pairs005 :
    row166_layer000_block005.all (fun I => row166_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_pairs006 :
    row166_layer000_block006.all (fun I => row166_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_chunks_eq : row166_layer000_chunks.flatten = row166_layer000_intervals := by
  rfl

theorem row166_layer000_pairs : pairCoverCheck row166_layer000_intervals row166_bounds = true := by
  apply pairCoverCheck_of_chunks row166_layer000_chunks_eq
  intro block hblock
  simp only [row166_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row166_layer000_pairs000
  · exact row166_layer000_pairs001
  · exact row166_layer000_pairs002
  · exact row166_layer000_pairs003
  · exact row166_layer000_pairs004
  · exact row166_layer000_pairs005
  · exact row166_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer000_checked :
    coverLayerCheck row166.height row166.goods { lower := 27390, upper := 54780, M := 13 } = true := by
  exact coverLayerCheck_of_parts row166_layer000_arithmetic row166_layer000_enumeration row166_bounds_eq row166_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row166_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65701), (2, 81920, 82085), (2, 65536, 65701), (2, 98304, 98469), (2, 65536, 65701), (3, 59049, 59214), (3, 65610, 65775), (3, 59049, 59214), (3, 78732, 78897), (3, 98415, 98580), (3, 59049, 59214), (5, 62500, 62665), (5, 78125, 78290), (5, 93750, 93915), (5, 109375, 109540), (5, 78125, 78290), (7, 67228, 67393), (7, 84035, 84200), (7, 100842, 101007), (11, 58564, 58729), (11, 73205, 73370), (11, 87846, 88011), (11, 102487, 102652), (13, 57122, 57287), (13, 85683, 85848), (17, 83521, 83686), (19, 54872, 55037), (19, 61731, 61896), (19, 68590, 68755), (23, 60835, 61000), (23, 73002, 73167), (23, 85169, 85334), (23, 97336, 97501), (23, 109503, 109559), (29, 73167, 73332), (29, 97556, 97721), (31, 59582, 59747), (31, 89373, 89538), (37, 101306, 101471), (41, 68921, 69086), (43, 79507, 79672), (47, 103823, 103988), (79, 56169, 56334), (79, 62410, 62575), (89, 55447, 55612), (89, 63368, 63533), (89, 71289, 71454), (89, 79210, 79375), (97, 56454, 56619), (97, 65863, 66028), (97, 75272, 75437), (97, 84681, 84846), (97, 94090, 94255), (101, 61206, 61371), (101, 71407, 71572), (101, 81608, 81773), (101, 91809, 91974), (101, 102010, 102175), (103, 63654, 63819), (103, 74263, 74428), (103, 84872, 85037), (103, 95481, 95646), (103, 106090, 106255), (107, 57245, 57410), (107, 68694, 68859), (107, 80143, 80308), (107, 91592, 91757), (107, 103041, 103206), (109, 59405, 59570), (109, 71286, 71451), (109, 83167, 83332), (109, 95048, 95213), (109, 106929, 107094), (113, 63845, 64010), (113, 76614, 76779), (113, 89383, 89548), (113, 102152, 102317), (127, 64516, 64681), (127, 80645, 80810), (127, 96774, 96939), (131, 68644, 68809), (131, 85805, 85970), (131, 102966, 103131), (137, 56307, 56472), (137, 75076, 75241), (137, 93845, 94010), (139, 57963, 58128), (139, 77284, 77449), (139, 96605, 96770), (149, 66603, 66768), (149, 88804, 88969), (151, 68403, 68568), (151, 91204, 91369), (157, 73947, 74112), (157, 98596, 98761), (163, 79707, 79872), (163, 106276, 106441)]

def row166_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65701), (2, 81920, 82085), (2, 65536, 65701), (2, 98304, 98469), (2, 65536, 65701), (3, 59049, 59214), (3, 65610, 65775), (3, 59049, 59214), (3, 78732, 78897), (3, 98415, 98580), (3, 59049, 59214), (5, 62500, 62665), (5, 78125, 78290), (5, 93750, 93915), (5, 109375, 109540), (5, 78125, 78290)]

def row166_layer001_block001 : List ColouredInterval :=
  [(7, 67228, 67393), (7, 84035, 84200), (7, 100842, 101007), (11, 58564, 58729), (11, 73205, 73370), (11, 87846, 88011), (11, 102487, 102652), (13, 57122, 57287), (13, 85683, 85848), (17, 83521, 83686), (19, 54872, 55037), (19, 61731, 61896), (19, 68590, 68755), (23, 60835, 61000), (23, 73002, 73167), (23, 85169, 85334)]

def row166_layer001_block002 : List ColouredInterval :=
  [(23, 97336, 97501), (23, 109503, 109559), (29, 73167, 73332), (29, 97556, 97721), (31, 59582, 59747), (31, 89373, 89538), (37, 101306, 101471), (41, 68921, 69086), (43, 79507, 79672), (47, 103823, 103988), (79, 56169, 56334), (79, 62410, 62575), (89, 55447, 55612), (89, 63368, 63533), (89, 71289, 71454), (89, 79210, 79375)]

def row166_layer001_block003 : List ColouredInterval :=
  [(97, 56454, 56619), (97, 65863, 66028), (97, 75272, 75437), (97, 84681, 84846), (97, 94090, 94255), (101, 61206, 61371), (101, 71407, 71572), (101, 81608, 81773), (101, 91809, 91974), (101, 102010, 102175), (103, 63654, 63819), (103, 74263, 74428), (103, 84872, 85037), (103, 95481, 95646), (103, 106090, 106255), (107, 57245, 57410)]

def row166_layer001_block004 : List ColouredInterval :=
  [(107, 68694, 68859), (107, 80143, 80308), (107, 91592, 91757), (107, 103041, 103206), (109, 59405, 59570), (109, 71286, 71451), (109, 83167, 83332), (109, 95048, 95213), (109, 106929, 107094), (113, 63845, 64010), (113, 76614, 76779), (113, 89383, 89548), (113, 102152, 102317), (127, 64516, 64681), (127, 80645, 80810), (127, 96774, 96939)]

def row166_layer001_block005 : List ColouredInterval :=
  [(131, 68644, 68809), (131, 85805, 85970), (131, 102966, 103131), (137, 56307, 56472), (137, 75076, 75241), (137, 93845, 94010), (139, 57963, 58128), (139, 77284, 77449), (139, 96605, 96770), (149, 66603, 66768), (149, 88804, 88969), (151, 68403, 68568), (151, 91204, 91369), (157, 73947, 74112), (157, 98596, 98761), (163, 79707, 79872)]

def row166_layer001_block006 : List ColouredInterval :=
  [(163, 106276, 106441)]

def row166_layer001_chunks : List (List ColouredInterval) :=
  [row166_layer001_block000, row166_layer001_block001, row166_layer001_block002, row166_layer001_block003, row166_layer001_block004, row166_layer001_block005, row166_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_intervals
