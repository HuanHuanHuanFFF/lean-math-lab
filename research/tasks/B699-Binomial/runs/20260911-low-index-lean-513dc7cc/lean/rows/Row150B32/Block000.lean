import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row150_height : HeightCertificateDatum := { i := 150, r := 49, s := 106, n0Power10 := 8 }

def row150_goods : List GoodSegment := [
  { lower := 302, upper := 442, witness := RowWitness.topPrime 293 },
  { lower := 443, upper := 592, witness := RowWitness.topPrime 443 },
  { lower := 593, upper := 742, witness := RowWitness.topPrime 593 },
  { lower := 743, upper := 892, witness := RowWitness.topPrime 743 },
  { lower := 893, upper := 1036, witness := RowWitness.topPrime 887 },
  { lower := 1037, upper := 1182, witness := RowWitness.topPrime 1033 },
  { lower := 1183, upper := 1330, witness := RowWitness.topPrime 1181 },
  { lower := 1331, upper := 1476, witness := RowWitness.topPrime 1327 },
  { lower := 1477, upper := 1620, witness := RowWitness.topPrime 1471 },
  { lower := 1621, upper := 1770, witness := RowWitness.topPrime 1621 },
  { lower := 1771, upper := 1908, witness := RowWitness.topPrime 1759 },
  { lower := 1909, upper := 2056, witness := RowWitness.topPrime 1907 },
  { lower := 2057, upper := 2202, witness := RowWitness.topPrime 2053 },
  { lower := 2203, upper := 2352, witness := RowWitness.topPrime 2203 },
  { lower := 2353, upper := 2500, witness := RowWitness.topPrime 2351 },
  { lower := 2501, upper := 2626, witness := RowWitness.topPrime 2477 },
  { lower := 2627, upper := 2770, witness := RowWitness.topPrime 2621 },
  { lower := 2771, upper := 2916, witness := RowWitness.topPrime 2767 },
  { lower := 2917, upper := 3066, witness := RowWitness.topPrime 2917 },
  { lower := 3067, upper := 3216, witness := RowWitness.topPrime 3067 },
  { lower := 3217, upper := 3366, witness := RowWitness.topPrime 3217 },
  { lower := 3367, upper := 3510, witness := RowWitness.topPrime 3361 },
  { lower := 3511, upper := 3660, witness := RowWitness.topPrime 3511 },
  { lower := 3661, upper := 3808, witness := RowWitness.topPrime 3659 },
  { lower := 3809, upper := 3952, witness := RowWitness.topPrime 3803 },
  { lower := 3953, upper := 4096, witness := RowWitness.topPrime 3947 },
  { lower := 4097, upper := 4242, witness := RowWitness.topPrime 4093 },
  { lower := 4243, upper := 4392, witness := RowWitness.topPrime 4243 },
  { lower := 4393, upper := 4540, witness := RowWitness.topPrime 4391 },
  { lower := 4541, upper := 4672, witness := RowWitness.topPrime 4523 },
  { lower := 4673, upper := 4822, witness := RowWitness.topPrime 4673 },
  { lower := 4823, upper := 4966, witness := RowWitness.topPrime 4817 },
  { lower := 4967, upper := 5116, witness := RowWitness.topPrime 4967 },
  { lower := 5117, upper := 5262, witness := RowWitness.topPrime 5113 },
  { lower := 5263, upper := 5410, witness := RowWitness.topPrime 5261 },
  { lower := 5411, upper := 5556, witness := RowWitness.topPrime 5407 },
  { lower := 5557, upper := 5706, witness := RowWitness.topPrime 5557 },
  { lower := 5707, upper := 5850, witness := RowWitness.topPrime 5701 },
  { lower := 5851, upper := 6000, witness := RowWitness.topPrime 5851 },
  { lower := 6001, upper := 6136, witness := RowWitness.topPrime 5987 },
  { lower := 6137, upper := 6282, witness := RowWitness.topPrime 6133 },
  { lower := 6283, upper := 6426, witness := RowWitness.topPrime 6277 },
  { lower := 6427, upper := 6576, witness := RowWitness.topPrime 6427 },
  { lower := 6577, upper := 6726, witness := RowWitness.topPrime 6577 },
  { lower := 6727, upper := 6868, witness := RowWitness.topPrime 6719 },
  { lower := 6869, upper := 7018, witness := RowWitness.topPrime 6869 },
  { lower := 7019, upper := 7168, witness := RowWitness.topPrime 7019 },
  { lower := 7169, upper := 7308, witness := RowWitness.topPrime 7159 },
  { lower := 7309, upper := 7458, witness := RowWitness.topPrime 7309 },
  { lower := 7459, upper := 7608, witness := RowWitness.topPrime 7459 },
  { lower := 7609, upper := 7756, witness := RowWitness.topPrime 7607 },
  { lower := 7757, upper := 7906, witness := RowWitness.topPrime 7757 },
  { lower := 7907, upper := 8056, witness := RowWitness.topPrime 7907 },
  { lower := 8057, upper := 8202, witness := RowWitness.topPrime 8053 },
  { lower := 8203, upper := 8340, witness := RowWitness.topPrime 8191 },
  { lower := 8341, upper := 8478, witness := RowWitness.topPrime 8329 },
  { lower := 8479, upper := 8616, witness := RowWitness.topPrime 8467 },
  { lower := 8617, upper := 8758, witness := RowWitness.topPrime 8609 },
  { lower := 8759, upper := 8902, witness := RowWitness.topPrime 8753 },
  { lower := 8903, upper := 9042, witness := RowWitness.topPrime 8893 },
  { lower := 9043, upper := 9192, witness := RowWitness.topPrime 9043 },
  { lower := 9193, upper := 9336, witness := RowWitness.topPrime 9187 },
  { lower := 9337, upper := 9486, witness := RowWitness.topPrime 9337 },
  { lower := 9487, upper := 9628, witness := RowWitness.topPrime 9479 },
  { lower := 9629, upper := 9778, witness := RowWitness.topPrime 9629 },
  { lower := 9779, upper := 9918, witness := RowWitness.topPrime 9769 },
  { lower := 9919, upper := 10056, witness := RowWitness.topPrime 9907 },
  { lower := 10057, upper := 10188, witness := RowWitness.topPrime 10039 },
  { lower := 10189, upper := 10330, witness := RowWitness.topPrime 10181 },
  { lower := 10331, upper := 10480, witness := RowWitness.topPrime 10331 },
  { lower := 10481, upper := 10626, witness := RowWitness.topPrime 10477 },
  { lower := 10627, upper := 10776, witness := RowWitness.topPrime 10627 },
  { lower := 10777, upper := 10920, witness := RowWitness.topPrime 10771 },
  { lower := 10921, upper := 11058, witness := RowWitness.topPrime 10909 },
  { lower := 11059, upper := 11208, witness := RowWitness.topPrime 11059 },
  { lower := 11209, upper := 11346, witness := RowWitness.topPrime 11197 },
  { lower := 11347, upper := 11478, witness := RowWitness.topPrime 11329 },
  { lower := 11479, upper := 11620, witness := RowWitness.topPrime 11471 },
  { lower := 11621, upper := 11770, witness := RowWitness.topPrime 11621 },
  { lower := 11771, upper := 11892, witness := RowWitness.topPrime 11743 },
  { lower := 11893, upper := 12036, witness := RowWitness.topPrime 11887 },
  { lower := 12037, upper := 12186, witness := RowWitness.topPrime 12037 },
  { lower := 12187, upper := 12312, witness := RowWitness.topPrime 12163 },
  { lower := 12313, upper := 12450, witness := RowWitness.topPrime 12301 },
  { lower := 12451, upper := 12600, witness := RowWitness.topPrime 12451 },
  { lower := 12601, upper := 12750, witness := RowWitness.topPrime 12601 },
  { lower := 12751, upper := 12892, witness := RowWitness.topPrime 12743 },
  { lower := 12893, upper := 13042, witness := RowWitness.topPrime 12893 },
  { lower := 13043, upper := 13192, witness := RowWitness.topPrime 13043 },
  { lower := 13193, upper := 13336, witness := RowWitness.topPrime 13187 },
  { lower := 13337, upper := 13486, witness := RowWitness.topPrime 13337 },
  { lower := 13487, upper := 13636, witness := RowWitness.topPrime 13487 },
  { lower := 13637, upper := 13782, witness := RowWitness.topPrime 13633 },
  { lower := 13783, upper := 13930, witness := RowWitness.topPrime 13781 },
  { lower := 13931, upper := 14080, witness := RowWitness.topPrime 13931 },
  { lower := 14081, upper := 14230, witness := RowWitness.topPrime 14081 },
  { lower := 14231, upper := 14370, witness := RowWitness.topPrime 14221 },
  { lower := 14371, upper := 14518, witness := RowWitness.topPrime 14369 },
  { lower := 14519, upper := 14668, witness := RowWitness.topPrime 14519 },
  { lower := 14669, upper := 14818, witness := RowWitness.topPrime 14669 },
  { lower := 14819, upper := 14962, witness := RowWitness.topPrime 14813 },
  { lower := 14963, upper := 15106, witness := RowWitness.topPrime 14957 },
  { lower := 15107, upper := 15256, witness := RowWitness.topPrime 15107 },
  { lower := 15257, upper := 15390, witness := RowWitness.topPrime 15241 },
  { lower := 15391, upper := 15540, witness := RowWitness.topPrime 15391 },
  { lower := 15541, upper := 15690, witness := RowWitness.topPrime 15541 },
  { lower := 15691, upper := 15832, witness := RowWitness.topPrime 15683 },
  { lower := 15833, upper := 15972, witness := RowWitness.topPrime 15823 },
  { lower := 15973, upper := 16122, witness := RowWitness.topPrime 15973 },
  { lower := 16123, upper := 16260, witness := RowWitness.topPrime 16111 },
  { lower := 16261, upper := 16402, witness := RowWitness.topPrime 16253 },
  { lower := 16403, upper := 16530, witness := RowWitness.topPrime 16381 },
  { lower := 16531, upper := 16678, witness := RowWitness.topPrime 16529 },
  { lower := 16679, upper := 16822, witness := RowWitness.topPrime 16673 },
  { lower := 16823, upper := 16972, witness := RowWitness.topPrime 16823 },
  { lower := 16973, upper := 17112, witness := RowWitness.topPrime 16963 },
  { lower := 17113, upper := 17256, witness := RowWitness.topPrime 17107 },
  { lower := 17257, upper := 17406, witness := RowWitness.topPrime 17257 },
  { lower := 17407, upper := 17550, witness := RowWitness.topPrime 17401 },
  { lower := 17551, upper := 17700, witness := RowWitness.topPrime 17551 },
  { lower := 17701, upper := 17832, witness := RowWitness.topPrime 17683 },
  { lower := 17833, upper := 17976, witness := RowWitness.topPrime 17827 },
  { lower := 17977, upper := 18126, witness := RowWitness.topPrime 17977 },
  { lower := 18127, upper := 18276, witness := RowWitness.topPrime 18127 },
  { lower := 18277, upper := 18418, witness := RowWitness.topPrime 18269 },
  { lower := 18419, upper := 18562, witness := RowWitness.topPrime 18413 },
  { lower := 18563, upper := 18702, witness := RowWitness.topPrime 18553 },
  { lower := 18703, upper := 18850, witness := RowWitness.topPrime 18701 },
  { lower := 18851, upper := 18988, witness := RowWitness.topPrime 18839 },
  { lower := 18989, upper := 19128, witness := RowWitness.topPrime 18979 },
  { lower := 19129, upper := 19270, witness := RowWitness.topPrime 19121 },
  { lower := 19271, upper := 19416, witness := RowWitness.topPrime 19267 },
  { lower := 19417, upper := 19566, witness := RowWitness.topPrime 19417 },
  { lower := 19567, upper := 19708, witness := RowWitness.topPrime 19559 },
  { lower := 19709, upper := 19858, witness := RowWitness.topPrime 19709 },
  { lower := 19859, upper := 20002, witness := RowWitness.topPrime 19853 },
  { lower := 20003, upper := 20146, witness := RowWitness.topPrime 19997 },
  { lower := 20147, upper := 20296, witness := RowWitness.topPrime 20147 },
  { lower := 20297, upper := 20446, witness := RowWitness.topPrime 20297 },
  { lower := 20447, upper := 20592, witness := RowWitness.topPrime 20443 },
  { lower := 20593, upper := 20742, witness := RowWitness.topPrime 20593 },
  { lower := 20743, upper := 20892, witness := RowWitness.topPrime 20743 },
  { lower := 20893, upper := 21036, witness := RowWitness.topPrime 20887 },
  { lower := 21037, upper := 21180, witness := RowWitness.topPrime 21031 },
  { lower := 21181, upper := 21328, witness := RowWitness.topPrime 21179 },
  { lower := 21329, upper := 21472, witness := RowWitness.topPrime 21323 },
  { lower := 21473, upper := 21616, witness := RowWitness.topPrime 21467 },
  { lower := 21617, upper := 21766, witness := RowWitness.topPrime 21617 },
  { lower := 21767, upper := 21916, witness := RowWitness.topPrime 21767 },
  { lower := 21917, upper := 22060, witness := RowWitness.topPrime 21911 },
  { lower := 22061, upper := 22200, witness := RowWitness.topPrime 22051 },
  { lower := 22201, upper := 22342, witness := RowWitness.topPrime 22193 },
  { lower := 22343, upper := 22350, witness := RowWitness.topPrime 22343 },
  { lower := 22445, upper := 22590, witness := RowWitness.topPrime 22441 },
  { lower := 22591, upper := 22594, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23910, witness := RowWitness.topPrime 23761 },
  { lower := 23911, upper := 23911, witness := RowWitness.topPrime 23911 },
  { lower := 24037, upper := 24159, witness := RowWitness.topPrime 24029 },
  { lower := 24167, upper := 24186, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24316, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24478, witness := RowWitness.topPrime 24329 },
  { lower := 24479, upper := 24516, witness := RowWitness.topPrime 24473 },
  { lower := 24576, upper := 24714, witness := RowWitness.topPrime 24571 },
  { lower := 25215, upper := 25338, witness := RowWitness.topPrime 25189 },
  { lower := 25339, upper := 25364, witness := RowWitness.topPrime 25339 },
  { lower := 26364, upper := 26393, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26556, witness := RowWitness.topPrime 26407 },
  { lower := 26557, upper := 26560, witness := RowWitness.topPrime 26557 },
  { lower := 26645, upper := 26657, witness := RowWitness.topPrime 26641 },
  { lower := 27556, upper := 27585, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27884, witness := RowWitness.topPrime 27847 },
  { lower := 28227, upper := 28239, witness := RowWitness.topPrime 28219 },
  { lower := 28672, upper := 28710, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28860, witness := RowWitness.topPrime 28711 },
  { lower := 28861, upper := 28866, witness := RowWitness.topPrime 28859 },
  { lower := 29791, upper := 29917, witness := RowWitness.topPrime 29789 },
  { lower := 30899, upper := 30907, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31048, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31342, witness := RowWitness.topPrime 31193 },
  { lower := 31343, upper := 31362, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31478, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31833, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31976, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32917, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33638, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33763, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34468, witness := RowWitness.topPrime 34319 },
  { lower := 34469, upper := 34540, witness := RowWitness.topPrime 34469 },
  { lower := 36015, upper := 36061, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36646, witness := RowWitness.topPrime 36497 },
  { lower := 36647, upper := 36650, witness := RowWitness.topPrime 36643 },
  { lower := 37303, upper := 37359, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37452, witness := RowWitness.topPrime 37441 },
  { lower := 37538, upper := 37595, witness := RowWitness.topPrime 37537 },
  { lower := 37636, upper := 37687, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38440, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39472, witness := RowWitness.topPrime 39323 },
  { lower := 39473, upper := 39475, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40477, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40953, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41080, witness := RowWitness.topPrime 40949 },
  { lower := 47526, upper := 47670, witness := RowWitness.topPrime 47521 },
  { lower := 47671, upper := 47673, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48110, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48817, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49279, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50559, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51154, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55590, witness := RowWitness.topPrime 55441 },
  { lower := 55591, upper := 55596, witness := RowWitness.topPrime 55589 },
  { lower := 56307, upper := 56318, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56456, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57271, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58713, witness := RowWitness.topPrime 58613 },
  { lower := 68644, upper := 68788, witness := RowWitness.topPrime 68639 },
  { lower := 68789, upper := 68800, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69039, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71436, witness := RowWitness.topPrime 71287 },
  { lower := 71437, upper := 71438, witness := RowWitness.topPrime 71437 },
  { lower := 73205, upper := 73316, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85832, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89522, witness := RowWitness.topPrime 89381 },
  { lower := 103041, upper := 103115, witness := RowWitness.topPrime 103007 },
  { lower := 148955, upper := 149026, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154598, witness := RowWitness.topPrime 154543 }
]

def row150_layers : List CoverLayer := [
  { lower := 22350, upper := 44700, M := 15 },
  { lower := 44700, upper := 89400, M := 11 },
  { lower := 89400, upper := 178800, M := 9 },
  { lower := 178800, upper := 357600, M := 6 },
  { lower := 357600, upper := 715200, M := 5 },
  { lower := 715200, upper := 1430400, M := 4 },
  { lower := 1430400, upper := 2860800, M := 3 },
  { lower := 2860800, upper := 5721600, M := 2 },
  { lower := 5721600, upper := 11443200, M := 2 },
  { lower := 11443200, upper := 22886400, M := 2 },
  { lower := 22886400, upper := 45772800, M := 1 },
  { lower := 45772800, upper := 91545600, M := 1 },
  { lower := 91545600, upper := 100000000, M := 1 }
]

def row150 : FiniteCoverRow := {
  height := row150_height,
  goods := row150_goods,
  layers := row150_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good000_checked :
    goodSegmentCheck 150 49 106
      { lower := 302, upper := 442, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good001_checked :
    goodSegmentCheck 150 49 106
      { lower := 443, upper := 592, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good002_checked :
    goodSegmentCheck 150 49 106
      { lower := 593, upper := 742, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good003_checked :
    goodSegmentCheck 150 49 106
      { lower := 743, upper := 892, witness := RowWitness.topPrime 743 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good004_checked :
    goodSegmentCheck 150 49 106
      { lower := 893, upper := 1036, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good005_checked :
    goodSegmentCheck 150 49 106
      { lower := 1037, upper := 1182, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good006_checked :
    goodSegmentCheck 150 49 106
      { lower := 1183, upper := 1330, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good007_checked :
    goodSegmentCheck 150 49 106
      { lower := 1331, upper := 1476, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good008_checked :
    goodSegmentCheck 150 49 106
      { lower := 1477, upper := 1620, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good009_checked :
    goodSegmentCheck 150 49 106
      { lower := 1621, upper := 1770, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good010_checked :
    goodSegmentCheck 150 49 106
      { lower := 1771, upper := 1908, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good011_checked :
    goodSegmentCheck 150 49 106
      { lower := 1909, upper := 2056, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good012_checked :
    goodSegmentCheck 150 49 106
      { lower := 2057, upper := 2202, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good013_checked :
    goodSegmentCheck 150 49 106
      { lower := 2203, upper := 2352, witness := RowWitness.topPrime 2203 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good014_checked :
    goodSegmentCheck 150 49 106
      { lower := 2353, upper := 2500, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good015_checked :
    goodSegmentCheck 150 49 106
      { lower := 2501, upper := 2626, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good016_checked :
    goodSegmentCheck 150 49 106
      { lower := 2627, upper := 2770, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good017_checked :
    goodSegmentCheck 150 49 106
      { lower := 2771, upper := 2916, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good018_checked :
    goodSegmentCheck 150 49 106
      { lower := 2917, upper := 3066, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good019_checked :
    goodSegmentCheck 150 49 106
      { lower := 3067, upper := 3216, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good020_checked :
    goodSegmentCheck 150 49 106
      { lower := 3217, upper := 3366, witness := RowWitness.topPrime 3217 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good021_checked :
    goodSegmentCheck 150 49 106
      { lower := 3367, upper := 3510, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good022_checked :
    goodSegmentCheck 150 49 106
      { lower := 3511, upper := 3660, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good023_checked :
    goodSegmentCheck 150 49 106
      { lower := 3661, upper := 3808, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good024_checked :
    goodSegmentCheck 150 49 106
      { lower := 3809, upper := 3952, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good025_checked :
    goodSegmentCheck 150 49 106
      { lower := 3953, upper := 4096, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good026_checked :
    goodSegmentCheck 150 49 106
      { lower := 4097, upper := 4242, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good027_checked :
    goodSegmentCheck 150 49 106
      { lower := 4243, upper := 4392, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good028_checked :
    goodSegmentCheck 150 49 106
      { lower := 4393, upper := 4540, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good029_checked :
    goodSegmentCheck 150 49 106
      { lower := 4541, upper := 4672, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good030_checked :
    goodSegmentCheck 150 49 106
      { lower := 4673, upper := 4822, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good031_checked :
    goodSegmentCheck 150 49 106
      { lower := 4823, upper := 4966, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good032_checked :
    goodSegmentCheck 150 49 106
      { lower := 4967, upper := 5116, witness := RowWitness.topPrime 4967 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good033_checked :
    goodSegmentCheck 150 49 106
      { lower := 5117, upper := 5262, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good034_checked :
    goodSegmentCheck 150 49 106
      { lower := 5263, upper := 5410, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good035_checked :
    goodSegmentCheck 150 49 106
      { lower := 5411, upper := 5556, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good036_checked :
    goodSegmentCheck 150 49 106
      { lower := 5557, upper := 5706, witness := RowWitness.topPrime 5557 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good037_checked :
    goodSegmentCheck 150 49 106
      { lower := 5707, upper := 5850, witness := RowWitness.topPrime 5701 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good038_checked :
    goodSegmentCheck 150 49 106
      { lower := 5851, upper := 6000, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good039_checked :
    goodSegmentCheck 150 49 106
      { lower := 6001, upper := 6136, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good040_checked :
    goodSegmentCheck 150 49 106
      { lower := 6137, upper := 6282, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good041_checked :
    goodSegmentCheck 150 49 106
      { lower := 6283, upper := 6426, witness := RowWitness.topPrime 6277 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good042_checked :
    goodSegmentCheck 150 49 106
      { lower := 6427, upper := 6576, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good043_checked :
    goodSegmentCheck 150 49 106
      { lower := 6577, upper := 6726, witness := RowWitness.topPrime 6577 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good044_checked :
    goodSegmentCheck 150 49 106
      { lower := 6727, upper := 6868, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good045_checked :
    goodSegmentCheck 150 49 106
      { lower := 6869, upper := 7018, witness := RowWitness.topPrime 6869 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good046_checked :
    goodSegmentCheck 150 49 106
      { lower := 7019, upper := 7168, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good047_checked :
    goodSegmentCheck 150 49 106
      { lower := 7169, upper := 7308, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good048_checked :
    goodSegmentCheck 150 49 106
      { lower := 7309, upper := 7458, witness := RowWitness.topPrime 7309 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good049_checked :
    goodSegmentCheck 150 49 106
      { lower := 7459, upper := 7608, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good050_checked :
    goodSegmentCheck 150 49 106
      { lower := 7609, upper := 7756, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good051_checked :
    goodSegmentCheck 150 49 106
      { lower := 7757, upper := 7906, witness := RowWitness.topPrime 7757 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good052_checked :
    goodSegmentCheck 150 49 106
      { lower := 7907, upper := 8056, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good053_checked :
    goodSegmentCheck 150 49 106
      { lower := 8057, upper := 8202, witness := RowWitness.topPrime 8053 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good054_checked :
    goodSegmentCheck 150 49 106
      { lower := 8203, upper := 8340, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good055_checked :
    goodSegmentCheck 150 49 106
      { lower := 8341, upper := 8478, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good056_checked :
    goodSegmentCheck 150 49 106
      { lower := 8479, upper := 8616, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good057_checked :
    goodSegmentCheck 150 49 106
      { lower := 8617, upper := 8758, witness := RowWitness.topPrime 8609 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good058_checked :
    goodSegmentCheck 150 49 106
      { lower := 8759, upper := 8902, witness := RowWitness.topPrime 8753 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good059_checked :
    goodSegmentCheck 150 49 106
      { lower := 8903, upper := 9042, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good060_checked :
    goodSegmentCheck 150 49 106
      { lower := 9043, upper := 9192, witness := RowWitness.topPrime 9043 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good061_checked :
    goodSegmentCheck 150 49 106
      { lower := 9193, upper := 9336, witness := RowWitness.topPrime 9187 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good062_checked :
    goodSegmentCheck 150 49 106
      { lower := 9337, upper := 9486, witness := RowWitness.topPrime 9337 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good063_checked :
    goodSegmentCheck 150 49 106
      { lower := 9487, upper := 9628, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good064_checked :
    goodSegmentCheck 150 49 106
      { lower := 9629, upper := 9778, witness := RowWitness.topPrime 9629 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good065_checked :
    goodSegmentCheck 150 49 106
      { lower := 9779, upper := 9918, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good066_checked :
    goodSegmentCheck 150 49 106
      { lower := 9919, upper := 10056, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good067_checked :
    goodSegmentCheck 150 49 106
      { lower := 10057, upper := 10188, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good068_checked :
    goodSegmentCheck 150 49 106
      { lower := 10189, upper := 10330, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good069_checked :
    goodSegmentCheck 150 49 106
      { lower := 10331, upper := 10480, witness := RowWitness.topPrime 10331 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good070_checked :
    goodSegmentCheck 150 49 106
      { lower := 10481, upper := 10626, witness := RowWitness.topPrime 10477 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good071_checked :
    goodSegmentCheck 150 49 106
      { lower := 10627, upper := 10776, witness := RowWitness.topPrime 10627 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good072_checked :
    goodSegmentCheck 150 49 106
      { lower := 10777, upper := 10920, witness := RowWitness.topPrime 10771 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good073_checked :
    goodSegmentCheck 150 49 106
      { lower := 10921, upper := 11058, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good074_checked :
    goodSegmentCheck 150 49 106
      { lower := 11059, upper := 11208, witness := RowWitness.topPrime 11059 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good075_checked :
    goodSegmentCheck 150 49 106
      { lower := 11209, upper := 11346, witness := RowWitness.topPrime 11197 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good076_checked :
    goodSegmentCheck 150 49 106
      { lower := 11347, upper := 11478, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good077_checked :
    goodSegmentCheck 150 49 106
      { lower := 11479, upper := 11620, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good078_checked :
    goodSegmentCheck 150 49 106
      { lower := 11621, upper := 11770, witness := RowWitness.topPrime 11621 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good079_checked :
    goodSegmentCheck 150 49 106
      { lower := 11771, upper := 11892, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good080_checked :
    goodSegmentCheck 150 49 106
      { lower := 11893, upper := 12036, witness := RowWitness.topPrime 11887 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good081_checked :
    goodSegmentCheck 150 49 106
      { lower := 12037, upper := 12186, witness := RowWitness.topPrime 12037 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good082_checked :
    goodSegmentCheck 150 49 106
      { lower := 12187, upper := 12312, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good083_checked :
    goodSegmentCheck 150 49 106
      { lower := 12313, upper := 12450, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good084_checked :
    goodSegmentCheck 150 49 106
      { lower := 12451, upper := 12600, witness := RowWitness.topPrime 12451 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good085_checked :
    goodSegmentCheck 150 49 106
      { lower := 12601, upper := 12750, witness := RowWitness.topPrime 12601 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good086_checked :
    goodSegmentCheck 150 49 106
      { lower := 12751, upper := 12892, witness := RowWitness.topPrime 12743 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good087_checked :
    goodSegmentCheck 150 49 106
      { lower := 12893, upper := 13042, witness := RowWitness.topPrime 12893 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good088_checked :
    goodSegmentCheck 150 49 106
      { lower := 13043, upper := 13192, witness := RowWitness.topPrime 13043 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good089_checked :
    goodSegmentCheck 150 49 106
      { lower := 13193, upper := 13336, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good090_checked :
    goodSegmentCheck 150 49 106
      { lower := 13337, upper := 13486, witness := RowWitness.topPrime 13337 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good091_checked :
    goodSegmentCheck 150 49 106
      { lower := 13487, upper := 13636, witness := RowWitness.topPrime 13487 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good092_checked :
    goodSegmentCheck 150 49 106
      { lower := 13637, upper := 13782, witness := RowWitness.topPrime 13633 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good093_checked :
    goodSegmentCheck 150 49 106
      { lower := 13783, upper := 13930, witness := RowWitness.topPrime 13781 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good094_checked :
    goodSegmentCheck 150 49 106
      { lower := 13931, upper := 14080, witness := RowWitness.topPrime 13931 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good095_checked :
    goodSegmentCheck 150 49 106
      { lower := 14081, upper := 14230, witness := RowWitness.topPrime 14081 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good096_checked :
    goodSegmentCheck 150 49 106
      { lower := 14231, upper := 14370, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good097_checked :
    goodSegmentCheck 150 49 106
      { lower := 14371, upper := 14518, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good098_checked :
    goodSegmentCheck 150 49 106
      { lower := 14519, upper := 14668, witness := RowWitness.topPrime 14519 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good099_checked :
    goodSegmentCheck 150 49 106
      { lower := 14669, upper := 14818, witness := RowWitness.topPrime 14669 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good100_checked :
    goodSegmentCheck 150 49 106
      { lower := 14819, upper := 14962, witness := RowWitness.topPrime 14813 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good101_checked :
    goodSegmentCheck 150 49 106
      { lower := 14963, upper := 15106, witness := RowWitness.topPrime 14957 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good102_checked :
    goodSegmentCheck 150 49 106
      { lower := 15107, upper := 15256, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good103_checked :
    goodSegmentCheck 150 49 106
      { lower := 15257, upper := 15390, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good104_checked :
    goodSegmentCheck 150 49 106
      { lower := 15391, upper := 15540, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good105_checked :
    goodSegmentCheck 150 49 106
      { lower := 15541, upper := 15690, witness := RowWitness.topPrime 15541 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good106_checked :
    goodSegmentCheck 150 49 106
      { lower := 15691, upper := 15832, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good107_checked :
    goodSegmentCheck 150 49 106
      { lower := 15833, upper := 15972, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good108_checked :
    goodSegmentCheck 150 49 106
      { lower := 15973, upper := 16122, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good109_checked :
    goodSegmentCheck 150 49 106
      { lower := 16123, upper := 16260, witness := RowWitness.topPrime 16111 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good110_checked :
    goodSegmentCheck 150 49 106
      { lower := 16261, upper := 16402, witness := RowWitness.topPrime 16253 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good111_checked :
    goodSegmentCheck 150 49 106
      { lower := 16403, upper := 16530, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good112_checked :
    goodSegmentCheck 150 49 106
      { lower := 16531, upper := 16678, witness := RowWitness.topPrime 16529 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good113_checked :
    goodSegmentCheck 150 49 106
      { lower := 16679, upper := 16822, witness := RowWitness.topPrime 16673 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good114_checked :
    goodSegmentCheck 150 49 106
      { lower := 16823, upper := 16972, witness := RowWitness.topPrime 16823 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good115_checked :
    goodSegmentCheck 150 49 106
      { lower := 16973, upper := 17112, witness := RowWitness.topPrime 16963 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good116_checked :
    goodSegmentCheck 150 49 106
      { lower := 17113, upper := 17256, witness := RowWitness.topPrime 17107 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good117_checked :
    goodSegmentCheck 150 49 106
      { lower := 17257, upper := 17406, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good118_checked :
    goodSegmentCheck 150 49 106
      { lower := 17407, upper := 17550, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good119_checked :
    goodSegmentCheck 150 49 106
      { lower := 17551, upper := 17700, witness := RowWitness.topPrime 17551 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good120_checked :
    goodSegmentCheck 150 49 106
      { lower := 17701, upper := 17832, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good121_checked :
    goodSegmentCheck 150 49 106
      { lower := 17833, upper := 17976, witness := RowWitness.topPrime 17827 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good122_checked :
    goodSegmentCheck 150 49 106
      { lower := 17977, upper := 18126, witness := RowWitness.topPrime 17977 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good123_checked :
    goodSegmentCheck 150 49 106
      { lower := 18127, upper := 18276, witness := RowWitness.topPrime 18127 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good124_checked :
    goodSegmentCheck 150 49 106
      { lower := 18277, upper := 18418, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good125_checked :
    goodSegmentCheck 150 49 106
      { lower := 18419, upper := 18562, witness := RowWitness.topPrime 18413 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good126_checked :
    goodSegmentCheck 150 49 106
      { lower := 18563, upper := 18702, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good127_checked :
    goodSegmentCheck 150 49 106
      { lower := 18703, upper := 18850, witness := RowWitness.topPrime 18701 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good128_checked :
    goodSegmentCheck 150 49 106
      { lower := 18851, upper := 18988, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good129_checked :
    goodSegmentCheck 150 49 106
      { lower := 18989, upper := 19128, witness := RowWitness.topPrime 18979 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good130_checked :
    goodSegmentCheck 150 49 106
      { lower := 19129, upper := 19270, witness := RowWitness.topPrime 19121 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good131_checked :
    goodSegmentCheck 150 49 106
      { lower := 19271, upper := 19416, witness := RowWitness.topPrime 19267 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good132_checked :
    goodSegmentCheck 150 49 106
      { lower := 19417, upper := 19566, witness := RowWitness.topPrime 19417 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good133_checked :
    goodSegmentCheck 150 49 106
      { lower := 19567, upper := 19708, witness := RowWitness.topPrime 19559 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good134_checked :
    goodSegmentCheck 150 49 106
      { lower := 19709, upper := 19858, witness := RowWitness.topPrime 19709 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good135_checked :
    goodSegmentCheck 150 49 106
      { lower := 19859, upper := 20002, witness := RowWitness.topPrime 19853 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good136_checked :
    goodSegmentCheck 150 49 106
      { lower := 20003, upper := 20146, witness := RowWitness.topPrime 19997 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good137_checked :
    goodSegmentCheck 150 49 106
      { lower := 20147, upper := 20296, witness := RowWitness.topPrime 20147 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good138_checked :
    goodSegmentCheck 150 49 106
      { lower := 20297, upper := 20446, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good139_checked :
    goodSegmentCheck 150 49 106
      { lower := 20447, upper := 20592, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good140_checked :
    goodSegmentCheck 150 49 106
      { lower := 20593, upper := 20742, witness := RowWitness.topPrime 20593 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good141_checked :
    goodSegmentCheck 150 49 106
      { lower := 20743, upper := 20892, witness := RowWitness.topPrime 20743 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good142_checked :
    goodSegmentCheck 150 49 106
      { lower := 20893, upper := 21036, witness := RowWitness.topPrime 20887 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good143_checked :
    goodSegmentCheck 150 49 106
      { lower := 21037, upper := 21180, witness := RowWitness.topPrime 21031 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good144_checked :
    goodSegmentCheck 150 49 106
      { lower := 21181, upper := 21328, witness := RowWitness.topPrime 21179 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good145_checked :
    goodSegmentCheck 150 49 106
      { lower := 21329, upper := 21472, witness := RowWitness.topPrime 21323 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good146_checked :
    goodSegmentCheck 150 49 106
      { lower := 21473, upper := 21616, witness := RowWitness.topPrime 21467 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good147_checked :
    goodSegmentCheck 150 49 106
      { lower := 21617, upper := 21766, witness := RowWitness.topPrime 21617 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good148_checked :
    goodSegmentCheck 150 49 106
      { lower := 21767, upper := 21916, witness := RowWitness.topPrime 21767 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good149_checked :
    goodSegmentCheck 150 49 106
      { lower := 21917, upper := 22060, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good150_checked :
    goodSegmentCheck 150 49 106
      { lower := 22061, upper := 22200, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good151_checked :
    goodSegmentCheck 150 49 106
      { lower := 22201, upper := 22342, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good152_checked :
    goodSegmentCheck 150 49 106
      { lower := 22343, upper := 22350, witness := RowWitness.topPrime 22343 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good153_checked :
    goodSegmentCheck 150 49 106
      { lower := 22445, upper := 22590, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good154_checked :
    goodSegmentCheck 150 49 106
      { lower := 22591, upper := 22594, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good155_checked :
    goodSegmentCheck 150 49 106
      { lower := 23763, upper := 23910, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good156_checked :
    goodSegmentCheck 150 49 106
      { lower := 23911, upper := 23911, witness := RowWitness.topPrime 23911 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good157_checked :
    goodSegmentCheck 150 49 106
      { lower := 24037, upper := 24159, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good158_checked :
    goodSegmentCheck 150 49 106
      { lower := 24167, upper := 24186, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good159_checked :
    goodSegmentCheck 150 49 106
      { lower := 24299, upper := 24316, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good160_checked :
    goodSegmentCheck 150 49 106
      { lower := 24334, upper := 24478, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good161_checked :
    goodSegmentCheck 150 49 106
      { lower := 24479, upper := 24516, witness := RowWitness.topPrime 24473 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good162_checked :
    goodSegmentCheck 150 49 106
      { lower := 24576, upper := 24714, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good163_checked :
    goodSegmentCheck 150 49 106
      { lower := 25215, upper := 25338, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good164_checked :
    goodSegmentCheck 150 49 106
      { lower := 25339, upper := 25364, witness := RowWitness.topPrime 25339 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good165_checked :
    goodSegmentCheck 150 49 106
      { lower := 26364, upper := 26393, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good166_checked :
    goodSegmentCheck 150 49 106
      { lower := 26411, upper := 26556, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good167_checked :
    goodSegmentCheck 150 49 106
      { lower := 26557, upper := 26560, witness := RowWitness.topPrime 26557 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good168_checked :
    goodSegmentCheck 150 49 106
      { lower := 26645, upper := 26657, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good169_checked :
    goodSegmentCheck 150 49 106
      { lower := 27556, upper := 27585, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good170_checked :
    goodSegmentCheck 150 49 106
      { lower := 27848, upper := 27884, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good171_checked :
    goodSegmentCheck 150 49 106
      { lower := 28227, upper := 28239, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good172_checked :
    goodSegmentCheck 150 49 106
      { lower := 28672, upper := 28710, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good173_checked :
    goodSegmentCheck 150 49 106
      { lower := 28717, upper := 28860, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good174_checked :
    goodSegmentCheck 150 49 106
      { lower := 28861, upper := 28866, witness := RowWitness.topPrime 28859 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good175_checked :
    goodSegmentCheck 150 49 106
      { lower := 29791, upper := 29917, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good176_checked :
    goodSegmentCheck 150 49 106
      { lower := 30899, upper := 30907, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good177_checked :
    goodSegmentCheck 150 49 106
      { lower := 30926, upper := 31048, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good178_checked :
    goodSegmentCheck 150 49 106
      { lower := 31213, upper := 31342, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good179_checked :
    goodSegmentCheck 150 49 106
      { lower := 31343, upper := 31362, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good180_checked :
    goodSegmentCheck 150 49 106
      { lower := 31423, upper := 31478, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good181_checked :
    goodSegmentCheck 150 49 106
      { lower := 31827, upper := 31833, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good182_checked :
    goodSegmentCheck 150 49 106
      { lower := 31974, upper := 31976, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good183_checked :
    goodSegmentCheck 150 49 106
      { lower := 32805, upper := 32917, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good184_checked :
    goodSegmentCheck 150 49 106
      { lower := 33614, upper := 33638, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good185_checked :
    goodSegmentCheck 150 49 106
      { lower := 33708, upper := 33763, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good186_checked :
    goodSegmentCheck 150 49 106
      { lower := 34322, upper := 34468, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good187_checked :
    goodSegmentCheck 150 49 106
      { lower := 34469, upper := 34540, witness := RowWitness.topPrime 34469 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good188_checked :
    goodSegmentCheck 150 49 106
      { lower := 36015, upper := 36061, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good189_checked :
    goodSegmentCheck 150 49 106
      { lower := 36517, upper := 36646, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good190_checked :
    goodSegmentCheck 150 49 106
      { lower := 36647, upper := 36650, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good191_checked :
    goodSegmentCheck 150 49 106
      { lower := 37303, upper := 37359, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good192_checked :
    goodSegmentCheck 150 49 106
      { lower := 37446, upper := 37452, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good193_checked :
    goodSegmentCheck 150 49 106
      { lower := 37538, upper := 37595, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good194_checked :
    goodSegmentCheck 150 49 106
      { lower := 37636, upper := 37687, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good195_checked :
    goodSegmentCheck 150 49 106
      { lower := 38307, upper := 38440, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good196_checked :
    goodSegmentCheck 150 49 106
      { lower := 39326, upper := 39472, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good197_checked :
    goodSegmentCheck 150 49 106
      { lower := 39473, upper := 39475, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good198_checked :
    goodSegmentCheck 150 49 106
      { lower := 40401, upper := 40477, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good199_checked :
    goodSegmentCheck 150 49 106
      { lower := 40931, upper := 40953, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good200_checked :
    goodSegmentCheck 150 49 106
      { lower := 40960, upper := 41080, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good201_checked :
    goodSegmentCheck 150 49 106
      { lower := 47526, upper := 47670, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good202_checked :
    goodSegmentCheck 150 49 106
      { lower := 47671, upper := 47673, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good203_checked :
    goodSegmentCheck 150 49 106
      { lower := 48013, upper := 48110, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good204_checked :
    goodSegmentCheck 150 49 106
      { lower := 48778, upper := 48817, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good205_checked :
    goodSegmentCheck 150 49 106
      { lower := 49152, upper := 49279, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good206_checked :
    goodSegmentCheck 150 49 106
      { lower := 50421, upper := 50559, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good207_checked :
    goodSegmentCheck 150 49 106
      { lower := 51076, upper := 51154, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good208_checked :
    goodSegmentCheck 150 49 106
      { lower := 55451, upper := 55590, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good209_checked :
    goodSegmentCheck 150 49 106
      { lower := 55591, upper := 55596, witness := RowWitness.topPrime 55589 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good210_checked :
    goodSegmentCheck 150 49 106
      { lower := 56307, upper := 56318, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good211_checked :
    goodSegmentCheck 150 49 106
      { lower := 56454, upper := 56456, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good212_checked :
    goodSegmentCheck 150 49 106
      { lower := 57245, upper := 57271, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good213_checked :
    goodSegmentCheck 150 49 106
      { lower := 58619, upper := 58713, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good214_checked :
    goodSegmentCheck 150 49 106
      { lower := 68644, upper := 68788, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good215_checked :
    goodSegmentCheck 150 49 106
      { lower := 68789, upper := 68800, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good216_checked :
    goodSegmentCheck 150 49 106
      { lower := 68921, upper := 69039, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good217_checked :
    goodSegmentCheck 150 49 106
      { lower := 71289, upper := 71436, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good218_checked :
    goodSegmentCheck 150 49 106
      { lower := 71437, upper := 71438, witness := RowWitness.topPrime 71437 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good219_checked :
    goodSegmentCheck 150 49 106
      { lower := 73205, upper := 73316, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good220_checked :
    goodSegmentCheck 150 49 106
      { lower := 85805, upper := 85832, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good221_checked :
    goodSegmentCheck 150 49 106
      { lower := 89383, upper := 89522, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good222_checked :
    goodSegmentCheck 150 49 106
      { lower := 103041, upper := 103115, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row150_good223_checked :
    goodSegmentCheck 150 49 106
      { lower := 148955, upper := 149026, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good224_checked :
    goodSegmentCheck 150 49 106
      { lower := 154568, upper := 154598, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good224_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_goods_checked :
    row150.goods.all (goodSegmentCheck row150.height.i row150.height.r row150.height.s) = true := by
  change row150_goods.all (goodSegmentCheck 150 49 106) = true
  simp only [row150_goods, List.all_cons, List.all_nil,
    row150_good000_checked,
    row150_good001_checked,
    row150_good002_checked,
    row150_good003_checked,
    row150_good004_checked,
    row150_good005_checked,
    row150_good006_checked,
    row150_good007_checked,
    row150_good008_checked,
    row150_good009_checked,
    row150_good010_checked,
    row150_good011_checked,
    row150_good012_checked,
    row150_good013_checked,
    row150_good014_checked,
    row150_good015_checked,
    row150_good016_checked,
    row150_good017_checked,
    row150_good018_checked,
    row150_good019_checked,
    row150_good020_checked,
    row150_good021_checked,
    row150_good022_checked,
    row150_good023_checked,
    row150_good024_checked,
    row150_good025_checked,
    row150_good026_checked,
    row150_good027_checked,
    row150_good028_checked,
    row150_good029_checked,
    row150_good030_checked,
    row150_good031_checked,
    row150_good032_checked,
    row150_good033_checked,
    row150_good034_checked,
    row150_good035_checked,
    row150_good036_checked,
    row150_good037_checked,
    row150_good038_checked,
    row150_good039_checked,
    row150_good040_checked,
    row150_good041_checked,
    row150_good042_checked,
    row150_good043_checked,
    row150_good044_checked,
    row150_good045_checked,
    row150_good046_checked,
    row150_good047_checked,
    row150_good048_checked,
    row150_good049_checked,
    row150_good050_checked,
    row150_good051_checked,
    row150_good052_checked,
    row150_good053_checked,
    row150_good054_checked,
    row150_good055_checked,
    row150_good056_checked,
    row150_good057_checked,
    row150_good058_checked,
    row150_good059_checked,
    row150_good060_checked,
    row150_good061_checked,
    row150_good062_checked,
    row150_good063_checked,
    row150_good064_checked,
    row150_good065_checked,
    row150_good066_checked,
    row150_good067_checked,
    row150_good068_checked,
    row150_good069_checked,
    row150_good070_checked,
    row150_good071_checked,
    row150_good072_checked,
    row150_good073_checked,
    row150_good074_checked,
    row150_good075_checked,
    row150_good076_checked,
    row150_good077_checked,
    row150_good078_checked,
    row150_good079_checked,
    row150_good080_checked,
    row150_good081_checked,
    row150_good082_checked,
    row150_good083_checked,
    row150_good084_checked,
    row150_good085_checked,
    row150_good086_checked,
    row150_good087_checked,
    row150_good088_checked,
    row150_good089_checked,
    row150_good090_checked,
    row150_good091_checked,
    row150_good092_checked,
    row150_good093_checked,
    row150_good094_checked,
    row150_good095_checked,
    row150_good096_checked,
    row150_good097_checked,
    row150_good098_checked,
    row150_good099_checked,
    row150_good100_checked,
    row150_good101_checked,
    row150_good102_checked,
    row150_good103_checked,
    row150_good104_checked,
    row150_good105_checked,
    row150_good106_checked,
    row150_good107_checked,
    row150_good108_checked,
    row150_good109_checked,
    row150_good110_checked,
    row150_good111_checked,
    row150_good112_checked,
    row150_good113_checked,
    row150_good114_checked,
    row150_good115_checked,
    row150_good116_checked,
    row150_good117_checked,
    row150_good118_checked,
    row150_good119_checked,
    row150_good120_checked,
    row150_good121_checked,
    row150_good122_checked,
    row150_good123_checked,
    row150_good124_checked,
    row150_good125_checked,
    row150_good126_checked,
    row150_good127_checked,
    row150_good128_checked,
    row150_good129_checked,
    row150_good130_checked,
    row150_good131_checked,
    row150_good132_checked,
    row150_good133_checked,
    row150_good134_checked,
    row150_good135_checked,
    row150_good136_checked,
    row150_good137_checked,
    row150_good138_checked,
    row150_good139_checked,
    row150_good140_checked,
    row150_good141_checked,
    row150_good142_checked,
    row150_good143_checked,
    row150_good144_checked,
    row150_good145_checked,
    row150_good146_checked,
    row150_good147_checked,
    row150_good148_checked,
    row150_good149_checked,
    row150_good150_checked,
    row150_good151_checked,
    row150_good152_checked,
    row150_good153_checked,
    row150_good154_checked,
    row150_good155_checked,
    row150_good156_checked,
    row150_good157_checked,
    row150_good158_checked,
    row150_good159_checked,
    row150_good160_checked,
    row150_good161_checked,
    row150_good162_checked,
    row150_good163_checked,
    row150_good164_checked,
    row150_good165_checked,
    row150_good166_checked,
    row150_good167_checked,
    row150_good168_checked,
    row150_good169_checked,
    row150_good170_checked,
    row150_good171_checked,
    row150_good172_checked,
    row150_good173_checked,
    row150_good174_checked,
    row150_good175_checked,
    row150_good176_checked,
    row150_good177_checked,
    row150_good178_checked,
    row150_good179_checked,
    row150_good180_checked,
    row150_good181_checked,
    row150_good182_checked,
    row150_good183_checked,
    row150_good184_checked,
    row150_good185_checked,
    row150_good186_checked,
    row150_good187_checked,
    row150_good188_checked,
    row150_good189_checked,
    row150_good190_checked,
    row150_good191_checked,
    row150_good192_checked,
    row150_good193_checked,
    row150_good194_checked,
    row150_good195_checked,
    row150_good196_checked,
    row150_good197_checked,
    row150_good198_checked,
    row150_good199_checked,
    row150_good200_checked,
    row150_good201_checked,
    row150_good202_checked,
    row150_good203_checked,
    row150_good204_checked,
    row150_good205_checked,
    row150_good206_checked,
    row150_good207_checked,
    row150_good208_checked,
    row150_good209_checked,
    row150_good210_checked,
    row150_good211_checked,
    row150_good212_checked,
    row150_good213_checked,
    row150_good214_checked,
    row150_good215_checked,
    row150_good216_checked,
    row150_good217_checked,
    row150_good218_checked,
    row150_good219_checked,
    row150_good220_checked,
    row150_good221_checked,
    row150_good222_checked,
    row150_good223_checked,
    row150_good224_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_registered :
    decide (row150.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row150_small_checked :
    coverCheck (2 * row150.height.i + 2) (row150.height.i * (row150.height.i - 1) - 1)
      (row150.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row150_layerCover_checked :
    coverCheck (row150.height.i * (row150.height.i - 1)) (row150.height.n0 - 1)
      (row150.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row150_bounds : List NatInterval :=
  [(302, 442), (443, 592), (593, 742), (743, 892), (893, 1036), (1037, 1182), (1183, 1330), (1331, 1476), (1477, 1620), (1621, 1770), (1771, 1908), (1909, 2056), (2057, 2202), (2203, 2352), (2353, 2500), (2501, 2626), (2627, 2770), (2771, 2916), (2917, 3066), (3067, 3216), (3217, 3366), (3367, 3510), (3511, 3660), (3661, 3808), (3809, 3952), (3953, 4096), (4097, 4242), (4243, 4392), (4393, 4540), (4541, 4672), (4673, 4822), (4823, 4966), (4967, 5116), (5117, 5262), (5263, 5410), (5411, 5556), (5557, 5706), (5707, 5850), (5851, 6000), (6001, 6136), (6137, 6282), (6283, 6426), (6427, 6576), (6577, 6726), (6727, 6868), (6869, 7018), (7019, 7168), (7169, 7308), (7309, 7458), (7459, 7608), (7609, 7756), (7757, 7906), (7907, 8056), (8057, 8202), (8203, 8340), (8341, 8478), (8479, 8616), (8617, 8758), (8759, 8902), (8903, 9042), (9043, 9192), (9193, 9336), (9337, 9486), (9487, 9628), (9629, 9778), (9779, 9918), (9919, 10056), (10057, 10188), (10189, 10330), (10331, 10480), (10481, 10626), (10627, 10776), (10777, 10920), (10921, 11058), (11059, 11208), (11209, 11346), (11347, 11478), (11479, 11620), (11621, 11770), (11771, 11892), (11893, 12036), (12037, 12186), (12187, 12312), (12313, 12450), (12451, 12600), (12601, 12750), (12751, 12892), (12893, 13042), (13043, 13192), (13193, 13336), (13337, 13486), (13487, 13636), (13637, 13782), (13783, 13930), (13931, 14080), (14081, 14230), (14231, 14370), (14371, 14518), (14519, 14668), (14669, 14818), (14819, 14962), (14963, 15106), (15107, 15256), (15257, 15390), (15391, 15540), (15541, 15690), (15691, 15832), (15833, 15972), (15973, 16122), (16123, 16260), (16261, 16402), (16403, 16530), (16531, 16678), (16679, 16822), (16823, 16972), (16973, 17112), (17113, 17256), (17257, 17406), (17407, 17550), (17551, 17700), (17701, 17832), (17833, 17976), (17977, 18126), (18127, 18276), (18277, 18418), (18419, 18562), (18563, 18702), (18703, 18850), (18851, 18988), (18989, 19128), (19129, 19270), (19271, 19416), (19417, 19566), (19567, 19708), (19709, 19858), (19859, 20002), (20003, 20146), (20147, 20296), (20297, 20446), (20447, 20592), (20593, 20742), (20743, 20892), (20893, 21036), (21037, 21180), (21181, 21328), (21329, 21472), (21473, 21616), (21617, 21766), (21767, 21916), (21917, 22060), (22061, 22200), (22201, 22342), (22343, 22350), (22445, 22590), (22591, 22594), (23763, 23910), (23911, 23911), (24037, 24159), (24167, 24186), (24299, 24316), (24334, 24478), (24479, 24516), (24576, 24714), (25215, 25338), (25339, 25364), (26364, 26393), (26411, 26556), (26557, 26560), (26645, 26657), (27556, 27585), (27848, 27884), (28227, 28239), (28672, 28710), (28717, 28860), (28861, 28866), (29791, 29917), (30899, 30907), (30926, 31048), (31213, 31342), (31343, 31362), (31423, 31478), (31827, 31833), (31974, 31976), (32805, 32917), (33614, 33638), (33708, 33763), (34322, 34468), (34469, 34540), (36015, 36061), (36517, 36646), (36647, 36650), (37303, 37359), (37446, 37452), (37538, 37595), (37636, 37687), (38307, 38440), (39326, 39472), (39473, 39475), (40401, 40477), (40931, 40953), (40960, 41080), (47526, 47670), (47671, 47673), (48013, 48110), (48778, 48817), (49152, 49279), (50421, 50559), (51076, 51154), (55451, 55590), (55591, 55596), (56307, 56318), (56454, 56456), (57245, 57271), (58619, 58713), (68644, 68788), (68789, 68800), (68921, 69039), (71289, 71436), (71437, 71438), (73205, 73316), (85805, 85832), (89383, 89522), (103041, 103115), (148955, 149026), (154568, 154598)]

theorem row150_bounds_eq : row150.goods.map goodSegmentBounds = row150_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row150_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24725), (2, 28672, 28821), (2, 24576, 24725), (2, 32768, 32917), (2, 40960, 41109), (2, 32768, 32917), (2, 32768, 32917), (3, 26244, 26393), (3, 32805, 32954), (3, 39366, 39515), (7, 24010, 24159), (7, 26411, 26560), (7, 28812, 28961), (7, 31213, 31362), (7, 33614, 33763), (7, 36015, 36164), (7, 33614, 33763), (11, 29282, 29431), (11, 43923, 44072), (13, 24167, 24316), (13, 26364, 26513), (13, 28561, 28710), (13, 30758, 30907), (13, 32955, 33104), (13, 28561, 28710), (17, 24565, 24714), (17, 29478, 29627), (17, 34391, 34540), (17, 39304, 39453), (17, 44217, 44366), (19, 27436, 27585), (19, 34295, 34444), (19, 41154, 41303), (23, 24334, 24483), (23, 36501, 36650), (29, 24389, 24538), (31, 29791, 29940), (41, 23534, 23683), (41, 25215, 25364), (43, 24037, 24186), (43, 25886, 26035), (43, 27735, 27884), (47, 24299, 24448), (47, 26508, 26657), (47, 28717, 28866), (47, 30926, 31075), (47, 33135, 33284), (53, 22472, 22621), (53, 25281, 25430), (53, 28090, 28239), (53, 30899, 31048), (53, 33708, 33857), (53, 36517, 36666), (53, 39326, 39475), (53, 42135, 42284), (59, 24367, 24516), (59, 27848, 27997), (59, 31329, 31478), (59, 34810, 34959), (59, 38291, 38440), (59, 41772, 41921), (61, 22350, 22475), (61, 26047, 26196), (61, 29768, 29917), (61, 33489, 33638), (61, 37210, 37359), (61, 40931, 41080), (61, 44652, 44699), (67, 22445, 22594), (67, 26934, 27083), (67, 31423, 31572), (67, 35912, 36061), (67, 40401, 40550), (71, 25205, 25354), (71, 30246, 30395), (71, 35287, 35436), (71, 40328, 40477), (73, 26645, 26794), (73, 31974, 32123), (73, 37303, 37452), (73, 42632, 42781), (79, 24964, 25113), (79, 31205, 31354), (79, 37446, 37595), (79, 43687, 43836), (83, 27556, 27705), (83, 34445, 34594), (83, 41334, 41483), (89, 23763, 23912), (89, 31684, 31833), (89, 39605, 39754), (97, 28227, 28376), (97, 37636, 37785), (101, 30603, 30752), (101, 40804, 40953), (103, 31827, 31976), (103, 42436, 42585), (107, 22898, 23047), (107, 34347, 34496), (109, 23762, 23911), (109, 35643, 35792), (113, 25538, 25687), (113, 38307, 38456), (127, 32258, 32407), (131, 34322, 34471), (137, 37538, 37687), (139, 38642, 38791), (149, 22350, 22350), (149, 44402, 44551)]

def row150_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24725), (2, 28672, 28821), (2, 24576, 24725), (2, 32768, 32917), (2, 40960, 41109), (2, 32768, 32917), (2, 32768, 32917), (3, 26244, 26393), (3, 32805, 32954), (3, 39366, 39515), (7, 24010, 24159), (7, 26411, 26560), (7, 28812, 28961), (7, 31213, 31362), (7, 33614, 33763), (7, 36015, 36164)]

def row150_layer000_block001 : List ColouredInterval :=
  [(7, 33614, 33763), (11, 29282, 29431), (11, 43923, 44072), (13, 24167, 24316), (13, 26364, 26513), (13, 28561, 28710), (13, 30758, 30907), (13, 32955, 33104), (13, 28561, 28710), (17, 24565, 24714), (17, 29478, 29627), (17, 34391, 34540), (17, 39304, 39453), (17, 44217, 44366), (19, 27436, 27585), (19, 34295, 34444)]

def row150_layer000_block002 : List ColouredInterval :=
  [(19, 41154, 41303), (23, 24334, 24483), (23, 36501, 36650), (29, 24389, 24538), (31, 29791, 29940), (41, 23534, 23683), (41, 25215, 25364), (43, 24037, 24186), (43, 25886, 26035), (43, 27735, 27884), (47, 24299, 24448), (47, 26508, 26657), (47, 28717, 28866), (47, 30926, 31075), (47, 33135, 33284), (53, 22472, 22621)]

def row150_layer000_block003 : List ColouredInterval :=
  [(53, 25281, 25430), (53, 28090, 28239), (53, 30899, 31048), (53, 33708, 33857), (53, 36517, 36666), (53, 39326, 39475), (53, 42135, 42284), (59, 24367, 24516), (59, 27848, 27997), (59, 31329, 31478), (59, 34810, 34959), (59, 38291, 38440), (59, 41772, 41921), (61, 22350, 22475), (61, 26047, 26196), (61, 29768, 29917)]

def row150_layer000_block004 : List ColouredInterval :=
  [(61, 33489, 33638), (61, 37210, 37359), (61, 40931, 41080), (61, 44652, 44699), (67, 22445, 22594), (67, 26934, 27083), (67, 31423, 31572), (67, 35912, 36061), (67, 40401, 40550), (71, 25205, 25354), (71, 30246, 30395), (71, 35287, 35436), (71, 40328, 40477), (73, 26645, 26794), (73, 31974, 32123), (73, 37303, 37452)]

def row150_layer000_block005 : List ColouredInterval :=
  [(73, 42632, 42781), (79, 24964, 25113), (79, 31205, 31354), (79, 37446, 37595), (79, 43687, 43836), (83, 27556, 27705), (83, 34445, 34594), (83, 41334, 41483), (89, 23763, 23912), (89, 31684, 31833), (89, 39605, 39754), (97, 28227, 28376), (97, 37636, 37785), (101, 30603, 30752), (101, 40804, 40953), (103, 31827, 31976)]

def row150_layer000_block006 : List ColouredInterval :=
  [(103, 42436, 42585), (107, 22898, 23047), (107, 34347, 34496), (109, 23762, 23911), (109, 35643, 35792), (113, 25538, 25687), (113, 38307, 38456), (127, 32258, 32407), (131, 34322, 34471), (137, 37538, 37687), (139, 38642, 38791), (149, 22350, 22350), (149, 44402, 44551)]

def row150_layer000_chunks : List (List ColouredInterval) :=
  [row150_layer000_block000, row150_layer000_block001, row150_layer000_block002, row150_layer000_block003, row150_layer000_block004, row150_layer000_block005, row150_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_arithmetic : LayerArithmeticValid row150.height { lower := 22350, upper := 44700, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_enumeration :
    activePowerIntervalList 150 15 22350 44700 = row150_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_pairs000 :
    row150_layer000_block000.all (fun I => row150_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_pairs001 :
    row150_layer000_block001.all (fun I => row150_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_pairs002 :
    row150_layer000_block002.all (fun I => row150_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_pairs003 :
    row150_layer000_block003.all (fun I => row150_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_pairs004 :
    row150_layer000_block004.all (fun I => row150_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_pairs005 :
    row150_layer000_block005.all (fun I => row150_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_pairs006 :
    row150_layer000_block006.all (fun I => row150_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_chunks_eq : row150_layer000_chunks.flatten = row150_layer000_intervals := by
  rfl

theorem row150_layer000_pairs : pairCoverCheck row150_layer000_intervals row150_bounds = true := by
  apply pairCoverCheck_of_chunks row150_layer000_chunks_eq
  intro block hblock
  simp only [row150_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row150_layer000_pairs000
  · exact row150_layer000_pairs001
  · exact row150_layer000_pairs002
  · exact row150_layer000_pairs003
  · exact row150_layer000_pairs004
  · exact row150_layer000_pairs005
  · exact row150_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer000_checked :
    coverLayerCheck row150.height row150.goods { lower := 22350, upper := 44700, M := 15 } = true := by
  exact coverLayerCheck_of_parts row150_layer000_arithmetic row150_layer000_enumeration row150_bounds_eq row150_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row150_layer001_intervals : List ColouredInterval :=
  [(2, 49152, 49301), (2, 65536, 65685), (2, 81920, 82069), (2, 65536, 65685), (2, 65536, 65685), (3, 59049, 59198), (3, 59049, 59198), (7, 50421, 50570), (7, 67228, 67377), (7, 84035, 84184), (11, 58564, 58713), (11, 73205, 73354), (11, 87846, 87995), (13, 57122, 57271), (13, 85683, 85832), (17, 49130, 49279), (17, 54043, 54192), (17, 83521, 83670), (19, 48013, 48162), (19, 54872, 55021), (19, 61731, 61880), (19, 68590, 68739), (19, 75449, 75598), (23, 48668, 48817), (23, 60835, 60984), (23, 73002, 73151), (23, 85169, 85318), (29, 48778, 48927), (29, 73167, 73316), (31, 59582, 59731), (31, 89373, 89399), (37, 50653, 50802), (41, 68921, 69070), (43, 79507, 79656), (67, 44890, 45039), (67, 49379, 49528), (71, 45369, 45518), (71, 50410, 50559), (71, 55451, 55600), (73, 47961, 48110), (73, 53290, 53439), (73, 58619, 58768), (79, 49928, 50077), (79, 56169, 56318), (79, 62410, 62559), (79, 68651, 68800), (83, 48223, 48372), (83, 55112, 55261), (83, 62001, 62150), (83, 68890, 69039), (83, 75779, 75928), (89, 47526, 47675), (89, 55447, 55596), (89, 63368, 63517), (89, 71289, 71438), (89, 79210, 79359), (89, 87131, 87280), (97, 47045, 47194), (97, 56454, 56603), (97, 65863, 66012), (97, 75272, 75421), (97, 84681, 84830), (101, 51005, 51154), (101, 61206, 61355), (101, 71407, 71556), (101, 81608, 81757), (103, 53045, 53194), (103, 63654, 63803), (103, 74263, 74412), (103, 84872, 85021), (107, 45796, 45945), (107, 57245, 57394), (107, 68694, 68843), (107, 80143, 80292), (109, 47524, 47673), (109, 59405, 59554), (109, 71286, 71435), (109, 83167, 83316), (113, 51076, 51225), (113, 63845, 63994), (113, 76614, 76763), (113, 89383, 89399), (127, 48387, 48536), (127, 64516, 64665), (127, 80645, 80794), (131, 51483, 51632), (131, 68644, 68793), (131, 85805, 85954), (137, 56307, 56456), (137, 75076, 75225), (139, 57963, 58112), (139, 77284, 77433), (149, 66603, 66752), (149, 88804, 88953)]

def row150_layer001_block000 : List ColouredInterval :=
  [(2, 49152, 49301), (2, 65536, 65685), (2, 81920, 82069), (2, 65536, 65685), (2, 65536, 65685), (3, 59049, 59198), (3, 59049, 59198), (7, 50421, 50570), (7, 67228, 67377), (7, 84035, 84184), (11, 58564, 58713), (11, 73205, 73354), (11, 87846, 87995), (13, 57122, 57271), (13, 85683, 85832), (17, 49130, 49279)]

def row150_layer001_block001 : List ColouredInterval :=
  [(17, 54043, 54192), (17, 83521, 83670), (19, 48013, 48162), (19, 54872, 55021), (19, 61731, 61880), (19, 68590, 68739), (19, 75449, 75598), (23, 48668, 48817), (23, 60835, 60984), (23, 73002, 73151), (23, 85169, 85318), (29, 48778, 48927), (29, 73167, 73316), (31, 59582, 59731), (31, 89373, 89399), (37, 50653, 50802)]

def row150_layer001_block002 : List ColouredInterval :=
  [(41, 68921, 69070), (43, 79507, 79656), (67, 44890, 45039), (67, 49379, 49528), (71, 45369, 45518), (71, 50410, 50559), (71, 55451, 55600), (73, 47961, 48110), (73, 53290, 53439), (73, 58619, 58768), (79, 49928, 50077), (79, 56169, 56318), (79, 62410, 62559), (79, 68651, 68800), (83, 48223, 48372), (83, 55112, 55261)]

def row150_layer001_block003 : List ColouredInterval :=
  [(83, 62001, 62150), (83, 68890, 69039), (83, 75779, 75928), (89, 47526, 47675), (89, 55447, 55596), (89, 63368, 63517), (89, 71289, 71438), (89, 79210, 79359), (89, 87131, 87280), (97, 47045, 47194), (97, 56454, 56603), (97, 65863, 66012), (97, 75272, 75421), (97, 84681, 84830), (101, 51005, 51154), (101, 61206, 61355)]

def row150_layer001_block004 : List ColouredInterval :=
  [(101, 71407, 71556), (101, 81608, 81757), (103, 53045, 53194), (103, 63654, 63803), (103, 74263, 74412), (103, 84872, 85021), (107, 45796, 45945), (107, 57245, 57394), (107, 68694, 68843), (107, 80143, 80292), (109, 47524, 47673), (109, 59405, 59554), (109, 71286, 71435), (109, 83167, 83316), (113, 51076, 51225), (113, 63845, 63994)]

def row150_layer001_block005 : List ColouredInterval :=
  [(113, 76614, 76763), (113, 89383, 89399), (127, 48387, 48536), (127, 64516, 64665), (127, 80645, 80794), (131, 51483, 51632), (131, 68644, 68793), (131, 85805, 85954), (137, 56307, 56456), (137, 75076, 75225), (139, 57963, 58112), (139, 77284, 77433), (149, 66603, 66752), (149, 88804, 88953)]

def row150_layer001_chunks : List (List ColouredInterval) :=
  [row150_layer001_block000, row150_layer001_block001, row150_layer001_block002, row150_layer001_block003, row150_layer001_block004, row150_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_intervals
