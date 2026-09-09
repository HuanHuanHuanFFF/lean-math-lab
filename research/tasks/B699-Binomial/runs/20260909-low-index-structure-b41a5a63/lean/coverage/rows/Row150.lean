import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row150_registered :
    decide (row150.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row150_goods_checked :
    row150.goods.all (goodSegmentCheck row150.height.i row150.height.r row150.height.s) = true := by
  decide +kernel

theorem row150_small_checked :
    coverCheck (2 * row150.height.i + 2) (row150.height.i * (row150.height.i - 1) - 1)
      (row150.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row150_layerCover_checked :
    coverCheck (row150.height.i * (row150.height.i - 1)) (row150.height.n0 - 1)
      (row150.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row150_layer000_checked :
    coverLayerCheck row150.height row150.goods { lower := 22350, upper := 44700, M := 15 } = true := by
  decide +kernel

theorem row150_layer001_checked :
    coverLayerCheck row150.height row150.goods { lower := 44700, upper := 89400, M := 11 } = true := by
  decide +kernel

theorem row150_layer002_checked :
    coverLayerCheck row150.height row150.goods { lower := 89400, upper := 178800, M := 9 } = true := by
  decide +kernel

theorem row150_layer003_checked :
    coverLayerCheck row150.height row150.goods { lower := 178800, upper := 357600, M := 6 } = true := by
  decide +kernel

theorem row150_layer004_checked :
    coverLayerCheck row150.height row150.goods { lower := 357600, upper := 715200, M := 5 } = true := by
  decide +kernel

theorem row150_layer005_checked :
    coverLayerCheck row150.height row150.goods { lower := 715200, upper := 1430400, M := 4 } = true := by
  decide +kernel

theorem row150_layer006_checked :
    coverLayerCheck row150.height row150.goods { lower := 1430400, upper := 2860800, M := 3 } = true := by
  decide +kernel

theorem row150_layer007_checked :
    coverLayerCheck row150.height row150.goods { lower := 2860800, upper := 5721600, M := 2 } = true := by
  decide +kernel

theorem row150_layer008_checked :
    coverLayerCheck row150.height row150.goods { lower := 5721600, upper := 11443200, M := 2 } = true := by
  decide +kernel

theorem row150_layer009_checked :
    coverLayerCheck row150.height row150.goods { lower := 11443200, upper := 22886400, M := 2 } = true := by
  decide +kernel

theorem row150_layer010_checked :
    coverLayerCheck row150.height row150.goods { lower := 22886400, upper := 45772800, M := 1 } = true := by
  decide +kernel

theorem row150_layer011_checked :
    coverLayerCheck row150.height row150.goods { lower := 45772800, upper := 91545600, M := 1 } = true := by
  decide +kernel

theorem row150_layer012_checked :
    coverLayerCheck row150.height row150.goods { lower := 91545600, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row150_layers_checked :
    row150.layers.all (coverLayerCheck row150.height row150.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row150.height row150.goods) = true
  simp only [List.all_cons, List.all_nil,
    row150_layer000_checked,
    row150_layer001_checked,
    row150_layer002_checked,
    row150_layer003_checked,
    row150_layer004_checked,
    row150_layer005_checked,
    row150_layer006_checked,
    row150_layer007_checked,
    row150_layer008_checked,
    row150_layer009_checked,
    row150_layer010_checked,
    row150_layer011_checked,
    row150_layer012_checked,
    Bool.true_and]

theorem row150_checked : finiteCoverRowCheck row150 = true := by
  simp only [finiteCoverRowCheck, row150_registered, row150_goods_checked,
    row150_small_checked, row150_layerCover_checked, row150_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row150_checked

end B699LowIndex
