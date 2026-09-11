import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row151_height : HeightCertificateDatum := { i := 151, r := 50, s := 107, n0Power10 := 7 }

def row151_goods : List GoodSegment := [
  { lower := 304, upper := 443, witness := RowWitness.topPrime 293 },
  { lower := 444, upper := 593, witness := RowWitness.topPrime 443 },
  { lower := 594, upper := 743, witness := RowWitness.topPrime 593 },
  { lower := 744, upper := 893, witness := RowWitness.topPrime 743 },
  { lower := 894, upper := 1037, witness := RowWitness.topPrime 887 },
  { lower := 1038, upper := 1183, witness := RowWitness.topPrime 1033 },
  { lower := 1184, upper := 1331, witness := RowWitness.topPrime 1181 },
  { lower := 1332, upper := 1477, witness := RowWitness.topPrime 1327 },
  { lower := 1478, upper := 1621, witness := RowWitness.topPrime 1471 },
  { lower := 1622, upper := 1771, witness := RowWitness.topPrime 1621 },
  { lower := 1772, upper := 1909, witness := RowWitness.topPrime 1759 },
  { lower := 1910, upper := 2057, witness := RowWitness.topPrime 1907 },
  { lower := 2058, upper := 2203, witness := RowWitness.topPrime 2053 },
  { lower := 2204, upper := 2353, witness := RowWitness.topPrime 2203 },
  { lower := 2354, upper := 2501, witness := RowWitness.topPrime 2351 },
  { lower := 2502, upper := 2627, witness := RowWitness.topPrime 2477 },
  { lower := 2628, upper := 2771, witness := RowWitness.topPrime 2621 },
  { lower := 2772, upper := 2917, witness := RowWitness.topPrime 2767 },
  { lower := 2918, upper := 3067, witness := RowWitness.topPrime 2917 },
  { lower := 3068, upper := 3217, witness := RowWitness.topPrime 3067 },
  { lower := 3218, upper := 3367, witness := RowWitness.topPrime 3217 },
  { lower := 3368, upper := 3511, witness := RowWitness.topPrime 3361 },
  { lower := 3512, upper := 3661, witness := RowWitness.topPrime 3511 },
  { lower := 3662, upper := 3809, witness := RowWitness.topPrime 3659 },
  { lower := 3810, upper := 3953, witness := RowWitness.topPrime 3803 },
  { lower := 3954, upper := 4097, witness := RowWitness.topPrime 3947 },
  { lower := 4098, upper := 4243, witness := RowWitness.topPrime 4093 },
  { lower := 4244, upper := 4393, witness := RowWitness.topPrime 4243 },
  { lower := 4394, upper := 4541, witness := RowWitness.topPrime 4391 },
  { lower := 4542, upper := 4673, witness := RowWitness.topPrime 4523 },
  { lower := 4674, upper := 4823, witness := RowWitness.topPrime 4673 },
  { lower := 4824, upper := 4967, witness := RowWitness.topPrime 4817 },
  { lower := 4968, upper := 5117, witness := RowWitness.topPrime 4967 },
  { lower := 5118, upper := 5263, witness := RowWitness.topPrime 5113 },
  { lower := 5264, upper := 5411, witness := RowWitness.topPrime 5261 },
  { lower := 5412, upper := 5557, witness := RowWitness.topPrime 5407 },
  { lower := 5558, upper := 5707, witness := RowWitness.topPrime 5557 },
  { lower := 5708, upper := 5851, witness := RowWitness.topPrime 5701 },
  { lower := 5852, upper := 6001, witness := RowWitness.topPrime 5851 },
  { lower := 6002, upper := 6137, witness := RowWitness.topPrime 5987 },
  { lower := 6138, upper := 6283, witness := RowWitness.topPrime 6133 },
  { lower := 6284, upper := 6427, witness := RowWitness.topPrime 6277 },
  { lower := 6428, upper := 6577, witness := RowWitness.topPrime 6427 },
  { lower := 6578, upper := 6727, witness := RowWitness.topPrime 6577 },
  { lower := 6728, upper := 6869, witness := RowWitness.topPrime 6719 },
  { lower := 6870, upper := 7019, witness := RowWitness.topPrime 6869 },
  { lower := 7020, upper := 7169, witness := RowWitness.topPrime 7019 },
  { lower := 7170, upper := 7309, witness := RowWitness.topPrime 7159 },
  { lower := 7310, upper := 7459, witness := RowWitness.topPrime 7309 },
  { lower := 7460, upper := 7609, witness := RowWitness.topPrime 7459 },
  { lower := 7610, upper := 7757, witness := RowWitness.topPrime 7607 },
  { lower := 7758, upper := 7907, witness := RowWitness.topPrime 7757 },
  { lower := 7908, upper := 8057, witness := RowWitness.topPrime 7907 },
  { lower := 8058, upper := 8203, witness := RowWitness.topPrime 8053 },
  { lower := 8204, upper := 8341, witness := RowWitness.topPrime 8191 },
  { lower := 8342, upper := 8479, witness := RowWitness.topPrime 8329 },
  { lower := 8480, upper := 8617, witness := RowWitness.topPrime 8467 },
  { lower := 8618, upper := 8759, witness := RowWitness.topPrime 8609 },
  { lower := 8760, upper := 8903, witness := RowWitness.topPrime 8753 },
  { lower := 8904, upper := 9043, witness := RowWitness.topPrime 8893 },
  { lower := 9044, upper := 9193, witness := RowWitness.topPrime 9043 },
  { lower := 9194, upper := 9337, witness := RowWitness.topPrime 9187 },
  { lower := 9338, upper := 9487, witness := RowWitness.topPrime 9337 },
  { lower := 9488, upper := 9629, witness := RowWitness.topPrime 9479 },
  { lower := 9630, upper := 9779, witness := RowWitness.topPrime 9629 },
  { lower := 9780, upper := 9919, witness := RowWitness.topPrime 9769 },
  { lower := 9920, upper := 10057, witness := RowWitness.topPrime 9907 },
  { lower := 10058, upper := 10189, witness := RowWitness.topPrime 10039 },
  { lower := 10190, upper := 10331, witness := RowWitness.topPrime 10181 },
  { lower := 10332, upper := 10481, witness := RowWitness.topPrime 10331 },
  { lower := 10482, upper := 10627, witness := RowWitness.topPrime 10477 },
  { lower := 10628, upper := 10777, witness := RowWitness.topPrime 10627 },
  { lower := 10778, upper := 10921, witness := RowWitness.topPrime 10771 },
  { lower := 10922, upper := 11059, witness := RowWitness.topPrime 10909 },
  { lower := 11060, upper := 11209, witness := RowWitness.topPrime 11059 },
  { lower := 11210, upper := 11347, witness := RowWitness.topPrime 11197 },
  { lower := 11348, upper := 11479, witness := RowWitness.topPrime 11329 },
  { lower := 11480, upper := 11621, witness := RowWitness.topPrime 11471 },
  { lower := 11622, upper := 11771, witness := RowWitness.topPrime 11621 },
  { lower := 11772, upper := 11893, witness := RowWitness.topPrime 11743 },
  { lower := 11894, upper := 12037, witness := RowWitness.topPrime 11887 },
  { lower := 12038, upper := 12187, witness := RowWitness.topPrime 12037 },
  { lower := 12188, upper := 12313, witness := RowWitness.topPrime 12163 },
  { lower := 12314, upper := 12451, witness := RowWitness.topPrime 12301 },
  { lower := 12452, upper := 12601, witness := RowWitness.topPrime 12451 },
  { lower := 12602, upper := 12751, witness := RowWitness.topPrime 12601 },
  { lower := 12752, upper := 12893, witness := RowWitness.topPrime 12743 },
  { lower := 12894, upper := 13043, witness := RowWitness.topPrime 12893 },
  { lower := 13044, upper := 13193, witness := RowWitness.topPrime 13043 },
  { lower := 13194, upper := 13337, witness := RowWitness.topPrime 13187 },
  { lower := 13338, upper := 13487, witness := RowWitness.topPrime 13337 },
  { lower := 13488, upper := 13637, witness := RowWitness.topPrime 13487 },
  { lower := 13638, upper := 13783, witness := RowWitness.topPrime 13633 },
  { lower := 13784, upper := 13931, witness := RowWitness.topPrime 13781 },
  { lower := 13932, upper := 14081, witness := RowWitness.topPrime 13931 },
  { lower := 14082, upper := 14231, witness := RowWitness.topPrime 14081 },
  { lower := 14232, upper := 14371, witness := RowWitness.topPrime 14221 },
  { lower := 14372, upper := 14519, witness := RowWitness.topPrime 14369 },
  { lower := 14520, upper := 14669, witness := RowWitness.topPrime 14519 },
  { lower := 14670, upper := 14819, witness := RowWitness.topPrime 14669 },
  { lower := 14820, upper := 14963, witness := RowWitness.topPrime 14813 },
  { lower := 14964, upper := 15107, witness := RowWitness.topPrime 14957 },
  { lower := 15108, upper := 15257, witness := RowWitness.topPrime 15107 },
  { lower := 15258, upper := 15391, witness := RowWitness.topPrime 15241 },
  { lower := 15392, upper := 15541, witness := RowWitness.topPrime 15391 },
  { lower := 15542, upper := 15691, witness := RowWitness.topPrime 15541 },
  { lower := 15692, upper := 15833, witness := RowWitness.topPrime 15683 },
  { lower := 15834, upper := 15973, witness := RowWitness.topPrime 15823 },
  { lower := 15974, upper := 16123, witness := RowWitness.topPrime 15973 },
  { lower := 16124, upper := 16261, witness := RowWitness.topPrime 16111 },
  { lower := 16262, upper := 16403, witness := RowWitness.topPrime 16253 },
  { lower := 16404, upper := 16531, witness := RowWitness.topPrime 16381 },
  { lower := 16532, upper := 16679, witness := RowWitness.topPrime 16529 },
  { lower := 16680, upper := 16823, witness := RowWitness.topPrime 16673 },
  { lower := 16824, upper := 16973, witness := RowWitness.topPrime 16823 },
  { lower := 16974, upper := 17113, witness := RowWitness.topPrime 16963 },
  { lower := 17114, upper := 17257, witness := RowWitness.topPrime 17107 },
  { lower := 17258, upper := 17407, witness := RowWitness.topPrime 17257 },
  { lower := 17408, upper := 17551, witness := RowWitness.topPrime 17401 },
  { lower := 17552, upper := 17701, witness := RowWitness.topPrime 17551 },
  { lower := 17702, upper := 17833, witness := RowWitness.topPrime 17683 },
  { lower := 17834, upper := 17977, witness := RowWitness.topPrime 17827 },
  { lower := 17978, upper := 18127, witness := RowWitness.topPrime 17977 },
  { lower := 18128, upper := 18277, witness := RowWitness.topPrime 18127 },
  { lower := 18278, upper := 18419, witness := RowWitness.topPrime 18269 },
  { lower := 18420, upper := 18563, witness := RowWitness.topPrime 18413 },
  { lower := 18564, upper := 18703, witness := RowWitness.topPrime 18553 },
  { lower := 18704, upper := 18851, witness := RowWitness.topPrime 18701 },
  { lower := 18852, upper := 18989, witness := RowWitness.topPrime 18839 },
  { lower := 18990, upper := 19129, witness := RowWitness.topPrime 18979 },
  { lower := 19130, upper := 19271, witness := RowWitness.topPrime 19121 },
  { lower := 19272, upper := 19417, witness := RowWitness.topPrime 19267 },
  { lower := 19418, upper := 19567, witness := RowWitness.topPrime 19417 },
  { lower := 19568, upper := 19709, witness := RowWitness.topPrime 19559 },
  { lower := 19710, upper := 19859, witness := RowWitness.topPrime 19709 },
  { lower := 19860, upper := 20003, witness := RowWitness.topPrime 19853 },
  { lower := 20004, upper := 20147, witness := RowWitness.topPrime 19997 },
  { lower := 20148, upper := 20297, witness := RowWitness.topPrime 20147 },
  { lower := 20298, upper := 20447, witness := RowWitness.topPrime 20297 },
  { lower := 20448, upper := 20593, witness := RowWitness.topPrime 20443 },
  { lower := 20594, upper := 20743, witness := RowWitness.topPrime 20593 },
  { lower := 20744, upper := 20893, witness := RowWitness.topPrime 20743 },
  { lower := 20894, upper := 21037, witness := RowWitness.topPrime 20887 },
  { lower := 21038, upper := 21181, witness := RowWitness.topPrime 21031 },
  { lower := 21182, upper := 21329, witness := RowWitness.topPrime 21179 },
  { lower := 21330, upper := 21473, witness := RowWitness.topPrime 21323 },
  { lower := 21474, upper := 21617, witness := RowWitness.topPrime 21467 },
  { lower := 21618, upper := 21767, witness := RowWitness.topPrime 21617 },
  { lower := 21768, upper := 21917, witness := RowWitness.topPrime 21767 },
  { lower := 21918, upper := 22061, witness := RowWitness.topPrime 21911 },
  { lower := 22062, upper := 22201, witness := RowWitness.topPrime 22051 },
  { lower := 22202, upper := 22343, witness := RowWitness.topPrime 22193 },
  { lower := 22344, upper := 22493, witness := RowWitness.topPrime 22343 },
  { lower := 22494, upper := 22633, witness := RowWitness.topPrime 22483 },
  { lower := 22634, upper := 22649, witness := RowWitness.topPrime 22621 },
  { lower := 23763, upper := 23911, witness := RowWitness.topPrime 23761 },
  { lower := 23912, upper := 23912, witness := RowWitness.topPrime 23911 },
  { lower := 24037, upper := 24179, witness := RowWitness.topPrime 24029 },
  { lower := 24180, upper := 24207, witness := RowWitness.topPrime 24179 },
  { lower := 24299, upper := 24317, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24479, witness := RowWitness.topPrime 24329 },
  { lower := 24480, upper := 24517, witness := RowWitness.topPrime 24473 },
  { lower := 24576, upper := 24715, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25114, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25355, witness := RowWitness.topPrime 25261 },
  { lower := 26364, upper := 26394, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26557, witness := RowWitness.topPrime 26407 },
  { lower := 26558, upper := 26561, witness := RowWitness.topPrime 26557 },
  { lower := 26624, upper := 26747, witness := RowWitness.topPrime 26597 },
  { lower := 26748, upper := 26774, witness := RowWitness.topPrime 26737 },
  { lower := 27556, upper := 27586, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28273, witness := RowWitness.topPrime 28123 },
  { lower := 28274, upper := 28275, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28581, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28711, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28861, witness := RowWitness.topPrime 28711 },
  { lower := 28862, upper := 28867, witness := RowWitness.topPrime 28859 },
  { lower := 29791, upper := 29918, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30743, witness := RowWitness.topPrime 30593 },
  { lower := 30744, upper := 30753, witness := RowWitness.topPrime 30727 },
  { lower := 30758, upper := 30768, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 30908, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31049, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31343, witness := RowWitness.topPrime 31193 },
  { lower := 31344, upper := 31400, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31479, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31834, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31977, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32918, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33639, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33764, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34469, witness := RowWitness.topPrime 34319 },
  { lower := 34470, upper := 34541, witness := RowWitness.topPrime 34469 },
  { lower := 36517, upper := 36647, witness := RowWitness.topPrime 36497 },
  { lower := 36648, upper := 36651, witness := RowWitness.topPrime 36643 },
  { lower := 37303, upper := 37360, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37453, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37643, witness := RowWitness.topPrime 37493 },
  { lower := 37644, upper := 37688, witness := RowWitness.topPrime 37643 },
  { lower := 38307, upper := 38441, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39473, witness := RowWitness.topPrime 39323 },
  { lower := 39474, upper := 39476, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40478, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40954, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41081, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43837, witness := RowWitness.topPrime 43721 },
  { lower := 45927, upper := 45946, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47671, witness := RowWitness.topPrime 47521 },
  { lower := 47672, upper := 47674, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48111, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48818, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49280, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50560, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51155, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55591, witness := RowWitness.topPrime 55441 },
  { lower := 55592, upper := 55597, witness := RowWitness.topPrime 55589 },
  { lower := 56307, upper := 56319, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56457, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57272, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57395, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58714, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62560, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65686, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68789, witness := RowWitness.topPrime 68639 },
  { lower := 68790, upper := 68801, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69040, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71437, witness := RowWitness.topPrime 71287 },
  { lower := 71438, upper := 71439, witness := RowWitness.topPrime 71437 },
  { lower := 73205, upper := 73317, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85833, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89523, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93900, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98454, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137931, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149027, witness := RowWitness.topPrime 148949 }
]

def row151_layers : List CoverLayer := [
  { lower := 22650, upper := 45300, M := 14 },
  { lower := 45300, upper := 90600, M := 11 },
  { lower := 90600, upper := 181200, M := 8 },
  { lower := 181200, upper := 362400, M := 6 },
  { lower := 362400, upper := 724800, M := 5 },
  { lower := 724800, upper := 1449600, M := 4 },
  { lower := 1449600, upper := 2899200, M := 3 },
  { lower := 2899200, upper := 5798400, M := 2 },
  { lower := 5798400, upper := 10000000, M := 2 }
]

def row151 : FiniteCoverRow := {
  height := row151_height,
  goods := row151_goods,
  layers := row151_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good000_checked :
    goodSegmentCheck 151 50 107
      { lower := 304, upper := 443, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good001_checked :
    goodSegmentCheck 151 50 107
      { lower := 444, upper := 593, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good002_checked :
    goodSegmentCheck 151 50 107
      { lower := 594, upper := 743, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good003_checked :
    goodSegmentCheck 151 50 107
      { lower := 744, upper := 893, witness := RowWitness.topPrime 743 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good004_checked :
    goodSegmentCheck 151 50 107
      { lower := 894, upper := 1037, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good005_checked :
    goodSegmentCheck 151 50 107
      { lower := 1038, upper := 1183, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good006_checked :
    goodSegmentCheck 151 50 107
      { lower := 1184, upper := 1331, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good007_checked :
    goodSegmentCheck 151 50 107
      { lower := 1332, upper := 1477, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good008_checked :
    goodSegmentCheck 151 50 107
      { lower := 1478, upper := 1621, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good009_checked :
    goodSegmentCheck 151 50 107
      { lower := 1622, upper := 1771, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good010_checked :
    goodSegmentCheck 151 50 107
      { lower := 1772, upper := 1909, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good011_checked :
    goodSegmentCheck 151 50 107
      { lower := 1910, upper := 2057, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good012_checked :
    goodSegmentCheck 151 50 107
      { lower := 2058, upper := 2203, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good013_checked :
    goodSegmentCheck 151 50 107
      { lower := 2204, upper := 2353, witness := RowWitness.topPrime 2203 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good014_checked :
    goodSegmentCheck 151 50 107
      { lower := 2354, upper := 2501, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good015_checked :
    goodSegmentCheck 151 50 107
      { lower := 2502, upper := 2627, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good016_checked :
    goodSegmentCheck 151 50 107
      { lower := 2628, upper := 2771, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good017_checked :
    goodSegmentCheck 151 50 107
      { lower := 2772, upper := 2917, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good018_checked :
    goodSegmentCheck 151 50 107
      { lower := 2918, upper := 3067, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good019_checked :
    goodSegmentCheck 151 50 107
      { lower := 3068, upper := 3217, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good020_checked :
    goodSegmentCheck 151 50 107
      { lower := 3218, upper := 3367, witness := RowWitness.topPrime 3217 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good021_checked :
    goodSegmentCheck 151 50 107
      { lower := 3368, upper := 3511, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good022_checked :
    goodSegmentCheck 151 50 107
      { lower := 3512, upper := 3661, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good023_checked :
    goodSegmentCheck 151 50 107
      { lower := 3662, upper := 3809, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good024_checked :
    goodSegmentCheck 151 50 107
      { lower := 3810, upper := 3953, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good025_checked :
    goodSegmentCheck 151 50 107
      { lower := 3954, upper := 4097, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good026_checked :
    goodSegmentCheck 151 50 107
      { lower := 4098, upper := 4243, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good027_checked :
    goodSegmentCheck 151 50 107
      { lower := 4244, upper := 4393, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good028_checked :
    goodSegmentCheck 151 50 107
      { lower := 4394, upper := 4541, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good029_checked :
    goodSegmentCheck 151 50 107
      { lower := 4542, upper := 4673, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good030_checked :
    goodSegmentCheck 151 50 107
      { lower := 4674, upper := 4823, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good031_checked :
    goodSegmentCheck 151 50 107
      { lower := 4824, upper := 4967, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good032_checked :
    goodSegmentCheck 151 50 107
      { lower := 4968, upper := 5117, witness := RowWitness.topPrime 4967 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good033_checked :
    goodSegmentCheck 151 50 107
      { lower := 5118, upper := 5263, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good034_checked :
    goodSegmentCheck 151 50 107
      { lower := 5264, upper := 5411, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good035_checked :
    goodSegmentCheck 151 50 107
      { lower := 5412, upper := 5557, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good036_checked :
    goodSegmentCheck 151 50 107
      { lower := 5558, upper := 5707, witness := RowWitness.topPrime 5557 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good037_checked :
    goodSegmentCheck 151 50 107
      { lower := 5708, upper := 5851, witness := RowWitness.topPrime 5701 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good038_checked :
    goodSegmentCheck 151 50 107
      { lower := 5852, upper := 6001, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good039_checked :
    goodSegmentCheck 151 50 107
      { lower := 6002, upper := 6137, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good040_checked :
    goodSegmentCheck 151 50 107
      { lower := 6138, upper := 6283, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good041_checked :
    goodSegmentCheck 151 50 107
      { lower := 6284, upper := 6427, witness := RowWitness.topPrime 6277 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good042_checked :
    goodSegmentCheck 151 50 107
      { lower := 6428, upper := 6577, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good043_checked :
    goodSegmentCheck 151 50 107
      { lower := 6578, upper := 6727, witness := RowWitness.topPrime 6577 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good044_checked :
    goodSegmentCheck 151 50 107
      { lower := 6728, upper := 6869, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good045_checked :
    goodSegmentCheck 151 50 107
      { lower := 6870, upper := 7019, witness := RowWitness.topPrime 6869 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good046_checked :
    goodSegmentCheck 151 50 107
      { lower := 7020, upper := 7169, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good047_checked :
    goodSegmentCheck 151 50 107
      { lower := 7170, upper := 7309, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good048_checked :
    goodSegmentCheck 151 50 107
      { lower := 7310, upper := 7459, witness := RowWitness.topPrime 7309 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good049_checked :
    goodSegmentCheck 151 50 107
      { lower := 7460, upper := 7609, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good050_checked :
    goodSegmentCheck 151 50 107
      { lower := 7610, upper := 7757, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good051_checked :
    goodSegmentCheck 151 50 107
      { lower := 7758, upper := 7907, witness := RowWitness.topPrime 7757 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good052_checked :
    goodSegmentCheck 151 50 107
      { lower := 7908, upper := 8057, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good053_checked :
    goodSegmentCheck 151 50 107
      { lower := 8058, upper := 8203, witness := RowWitness.topPrime 8053 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good054_checked :
    goodSegmentCheck 151 50 107
      { lower := 8204, upper := 8341, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good055_checked :
    goodSegmentCheck 151 50 107
      { lower := 8342, upper := 8479, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good056_checked :
    goodSegmentCheck 151 50 107
      { lower := 8480, upper := 8617, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good057_checked :
    goodSegmentCheck 151 50 107
      { lower := 8618, upper := 8759, witness := RowWitness.topPrime 8609 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good058_checked :
    goodSegmentCheck 151 50 107
      { lower := 8760, upper := 8903, witness := RowWitness.topPrime 8753 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good059_checked :
    goodSegmentCheck 151 50 107
      { lower := 8904, upper := 9043, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good060_checked :
    goodSegmentCheck 151 50 107
      { lower := 9044, upper := 9193, witness := RowWitness.topPrime 9043 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good061_checked :
    goodSegmentCheck 151 50 107
      { lower := 9194, upper := 9337, witness := RowWitness.topPrime 9187 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good062_checked :
    goodSegmentCheck 151 50 107
      { lower := 9338, upper := 9487, witness := RowWitness.topPrime 9337 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good063_checked :
    goodSegmentCheck 151 50 107
      { lower := 9488, upper := 9629, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good064_checked :
    goodSegmentCheck 151 50 107
      { lower := 9630, upper := 9779, witness := RowWitness.topPrime 9629 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good065_checked :
    goodSegmentCheck 151 50 107
      { lower := 9780, upper := 9919, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good066_checked :
    goodSegmentCheck 151 50 107
      { lower := 9920, upper := 10057, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good067_checked :
    goodSegmentCheck 151 50 107
      { lower := 10058, upper := 10189, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good068_checked :
    goodSegmentCheck 151 50 107
      { lower := 10190, upper := 10331, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good069_checked :
    goodSegmentCheck 151 50 107
      { lower := 10332, upper := 10481, witness := RowWitness.topPrime 10331 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good070_checked :
    goodSegmentCheck 151 50 107
      { lower := 10482, upper := 10627, witness := RowWitness.topPrime 10477 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good071_checked :
    goodSegmentCheck 151 50 107
      { lower := 10628, upper := 10777, witness := RowWitness.topPrime 10627 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good072_checked :
    goodSegmentCheck 151 50 107
      { lower := 10778, upper := 10921, witness := RowWitness.topPrime 10771 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good073_checked :
    goodSegmentCheck 151 50 107
      { lower := 10922, upper := 11059, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good074_checked :
    goodSegmentCheck 151 50 107
      { lower := 11060, upper := 11209, witness := RowWitness.topPrime 11059 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good075_checked :
    goodSegmentCheck 151 50 107
      { lower := 11210, upper := 11347, witness := RowWitness.topPrime 11197 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good076_checked :
    goodSegmentCheck 151 50 107
      { lower := 11348, upper := 11479, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good077_checked :
    goodSegmentCheck 151 50 107
      { lower := 11480, upper := 11621, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good078_checked :
    goodSegmentCheck 151 50 107
      { lower := 11622, upper := 11771, witness := RowWitness.topPrime 11621 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good079_checked :
    goodSegmentCheck 151 50 107
      { lower := 11772, upper := 11893, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good080_checked :
    goodSegmentCheck 151 50 107
      { lower := 11894, upper := 12037, witness := RowWitness.topPrime 11887 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good081_checked :
    goodSegmentCheck 151 50 107
      { lower := 12038, upper := 12187, witness := RowWitness.topPrime 12037 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good082_checked :
    goodSegmentCheck 151 50 107
      { lower := 12188, upper := 12313, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good083_checked :
    goodSegmentCheck 151 50 107
      { lower := 12314, upper := 12451, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good084_checked :
    goodSegmentCheck 151 50 107
      { lower := 12452, upper := 12601, witness := RowWitness.topPrime 12451 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good085_checked :
    goodSegmentCheck 151 50 107
      { lower := 12602, upper := 12751, witness := RowWitness.topPrime 12601 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good086_checked :
    goodSegmentCheck 151 50 107
      { lower := 12752, upper := 12893, witness := RowWitness.topPrime 12743 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good087_checked :
    goodSegmentCheck 151 50 107
      { lower := 12894, upper := 13043, witness := RowWitness.topPrime 12893 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good088_checked :
    goodSegmentCheck 151 50 107
      { lower := 13044, upper := 13193, witness := RowWitness.topPrime 13043 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good089_checked :
    goodSegmentCheck 151 50 107
      { lower := 13194, upper := 13337, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good090_checked :
    goodSegmentCheck 151 50 107
      { lower := 13338, upper := 13487, witness := RowWitness.topPrime 13337 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good091_checked :
    goodSegmentCheck 151 50 107
      { lower := 13488, upper := 13637, witness := RowWitness.topPrime 13487 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good092_checked :
    goodSegmentCheck 151 50 107
      { lower := 13638, upper := 13783, witness := RowWitness.topPrime 13633 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good093_checked :
    goodSegmentCheck 151 50 107
      { lower := 13784, upper := 13931, witness := RowWitness.topPrime 13781 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good094_checked :
    goodSegmentCheck 151 50 107
      { lower := 13932, upper := 14081, witness := RowWitness.topPrime 13931 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good095_checked :
    goodSegmentCheck 151 50 107
      { lower := 14082, upper := 14231, witness := RowWitness.topPrime 14081 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good096_checked :
    goodSegmentCheck 151 50 107
      { lower := 14232, upper := 14371, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good097_checked :
    goodSegmentCheck 151 50 107
      { lower := 14372, upper := 14519, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good098_checked :
    goodSegmentCheck 151 50 107
      { lower := 14520, upper := 14669, witness := RowWitness.topPrime 14519 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good099_checked :
    goodSegmentCheck 151 50 107
      { lower := 14670, upper := 14819, witness := RowWitness.topPrime 14669 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good100_checked :
    goodSegmentCheck 151 50 107
      { lower := 14820, upper := 14963, witness := RowWitness.topPrime 14813 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good101_checked :
    goodSegmentCheck 151 50 107
      { lower := 14964, upper := 15107, witness := RowWitness.topPrime 14957 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good102_checked :
    goodSegmentCheck 151 50 107
      { lower := 15108, upper := 15257, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good103_checked :
    goodSegmentCheck 151 50 107
      { lower := 15258, upper := 15391, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good104_checked :
    goodSegmentCheck 151 50 107
      { lower := 15392, upper := 15541, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good105_checked :
    goodSegmentCheck 151 50 107
      { lower := 15542, upper := 15691, witness := RowWitness.topPrime 15541 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good106_checked :
    goodSegmentCheck 151 50 107
      { lower := 15692, upper := 15833, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good107_checked :
    goodSegmentCheck 151 50 107
      { lower := 15834, upper := 15973, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good108_checked :
    goodSegmentCheck 151 50 107
      { lower := 15974, upper := 16123, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good109_checked :
    goodSegmentCheck 151 50 107
      { lower := 16124, upper := 16261, witness := RowWitness.topPrime 16111 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good110_checked :
    goodSegmentCheck 151 50 107
      { lower := 16262, upper := 16403, witness := RowWitness.topPrime 16253 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good111_checked :
    goodSegmentCheck 151 50 107
      { lower := 16404, upper := 16531, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good112_checked :
    goodSegmentCheck 151 50 107
      { lower := 16532, upper := 16679, witness := RowWitness.topPrime 16529 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good113_checked :
    goodSegmentCheck 151 50 107
      { lower := 16680, upper := 16823, witness := RowWitness.topPrime 16673 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good114_checked :
    goodSegmentCheck 151 50 107
      { lower := 16824, upper := 16973, witness := RowWitness.topPrime 16823 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good115_checked :
    goodSegmentCheck 151 50 107
      { lower := 16974, upper := 17113, witness := RowWitness.topPrime 16963 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good116_checked :
    goodSegmentCheck 151 50 107
      { lower := 17114, upper := 17257, witness := RowWitness.topPrime 17107 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good117_checked :
    goodSegmentCheck 151 50 107
      { lower := 17258, upper := 17407, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good118_checked :
    goodSegmentCheck 151 50 107
      { lower := 17408, upper := 17551, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good119_checked :
    goodSegmentCheck 151 50 107
      { lower := 17552, upper := 17701, witness := RowWitness.topPrime 17551 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good120_checked :
    goodSegmentCheck 151 50 107
      { lower := 17702, upper := 17833, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good121_checked :
    goodSegmentCheck 151 50 107
      { lower := 17834, upper := 17977, witness := RowWitness.topPrime 17827 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good122_checked :
    goodSegmentCheck 151 50 107
      { lower := 17978, upper := 18127, witness := RowWitness.topPrime 17977 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good123_checked :
    goodSegmentCheck 151 50 107
      { lower := 18128, upper := 18277, witness := RowWitness.topPrime 18127 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good124_checked :
    goodSegmentCheck 151 50 107
      { lower := 18278, upper := 18419, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good125_checked :
    goodSegmentCheck 151 50 107
      { lower := 18420, upper := 18563, witness := RowWitness.topPrime 18413 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good126_checked :
    goodSegmentCheck 151 50 107
      { lower := 18564, upper := 18703, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good127_checked :
    goodSegmentCheck 151 50 107
      { lower := 18704, upper := 18851, witness := RowWitness.topPrime 18701 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good128_checked :
    goodSegmentCheck 151 50 107
      { lower := 18852, upper := 18989, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good129_checked :
    goodSegmentCheck 151 50 107
      { lower := 18990, upper := 19129, witness := RowWitness.topPrime 18979 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good130_checked :
    goodSegmentCheck 151 50 107
      { lower := 19130, upper := 19271, witness := RowWitness.topPrime 19121 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good131_checked :
    goodSegmentCheck 151 50 107
      { lower := 19272, upper := 19417, witness := RowWitness.topPrime 19267 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good132_checked :
    goodSegmentCheck 151 50 107
      { lower := 19418, upper := 19567, witness := RowWitness.topPrime 19417 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good133_checked :
    goodSegmentCheck 151 50 107
      { lower := 19568, upper := 19709, witness := RowWitness.topPrime 19559 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good134_checked :
    goodSegmentCheck 151 50 107
      { lower := 19710, upper := 19859, witness := RowWitness.topPrime 19709 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good135_checked :
    goodSegmentCheck 151 50 107
      { lower := 19860, upper := 20003, witness := RowWitness.topPrime 19853 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good136_checked :
    goodSegmentCheck 151 50 107
      { lower := 20004, upper := 20147, witness := RowWitness.topPrime 19997 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good137_checked :
    goodSegmentCheck 151 50 107
      { lower := 20148, upper := 20297, witness := RowWitness.topPrime 20147 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good138_checked :
    goodSegmentCheck 151 50 107
      { lower := 20298, upper := 20447, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good139_checked :
    goodSegmentCheck 151 50 107
      { lower := 20448, upper := 20593, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good140_checked :
    goodSegmentCheck 151 50 107
      { lower := 20594, upper := 20743, witness := RowWitness.topPrime 20593 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good141_checked :
    goodSegmentCheck 151 50 107
      { lower := 20744, upper := 20893, witness := RowWitness.topPrime 20743 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good142_checked :
    goodSegmentCheck 151 50 107
      { lower := 20894, upper := 21037, witness := RowWitness.topPrime 20887 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good143_checked :
    goodSegmentCheck 151 50 107
      { lower := 21038, upper := 21181, witness := RowWitness.topPrime 21031 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good144_checked :
    goodSegmentCheck 151 50 107
      { lower := 21182, upper := 21329, witness := RowWitness.topPrime 21179 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good145_checked :
    goodSegmentCheck 151 50 107
      { lower := 21330, upper := 21473, witness := RowWitness.topPrime 21323 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good146_checked :
    goodSegmentCheck 151 50 107
      { lower := 21474, upper := 21617, witness := RowWitness.topPrime 21467 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good147_checked :
    goodSegmentCheck 151 50 107
      { lower := 21618, upper := 21767, witness := RowWitness.topPrime 21617 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good148_checked :
    goodSegmentCheck 151 50 107
      { lower := 21768, upper := 21917, witness := RowWitness.topPrime 21767 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good149_checked :
    goodSegmentCheck 151 50 107
      { lower := 21918, upper := 22061, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good150_checked :
    goodSegmentCheck 151 50 107
      { lower := 22062, upper := 22201, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good151_checked :
    goodSegmentCheck 151 50 107
      { lower := 22202, upper := 22343, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good152_checked :
    goodSegmentCheck 151 50 107
      { lower := 22344, upper := 22493, witness := RowWitness.topPrime 22343 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good153_checked :
    goodSegmentCheck 151 50 107
      { lower := 22494, upper := 22633, witness := RowWitness.topPrime 22483 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good154_checked :
    goodSegmentCheck 151 50 107
      { lower := 22634, upper := 22649, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good155_checked :
    goodSegmentCheck 151 50 107
      { lower := 23763, upper := 23911, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good156_checked :
    goodSegmentCheck 151 50 107
      { lower := 23912, upper := 23912, witness := RowWitness.topPrime 23911 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good157_checked :
    goodSegmentCheck 151 50 107
      { lower := 24037, upper := 24179, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good158_checked :
    goodSegmentCheck 151 50 107
      { lower := 24180, upper := 24207, witness := RowWitness.topPrime 24179 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good159_checked :
    goodSegmentCheck 151 50 107
      { lower := 24299, upper := 24317, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good160_checked :
    goodSegmentCheck 151 50 107
      { lower := 24334, upper := 24479, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good161_checked :
    goodSegmentCheck 151 50 107
      { lower := 24480, upper := 24517, witness := RowWitness.topPrime 24473 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good162_checked :
    goodSegmentCheck 151 50 107
      { lower := 24576, upper := 24715, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good163_checked :
    goodSegmentCheck 151 50 107
      { lower := 25000, upper := 25114, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good164_checked :
    goodSegmentCheck 151 50 107
      { lower := 25281, upper := 25355, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good165_checked :
    goodSegmentCheck 151 50 107
      { lower := 26364, upper := 26394, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good166_checked :
    goodSegmentCheck 151 50 107
      { lower := 26411, upper := 26557, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good167_checked :
    goodSegmentCheck 151 50 107
      { lower := 26558, upper := 26561, witness := RowWitness.topPrime 26557 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good168_checked :
    goodSegmentCheck 151 50 107
      { lower := 26624, upper := 26747, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good169_checked :
    goodSegmentCheck 151 50 107
      { lower := 26748, upper := 26774, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good170_checked :
    goodSegmentCheck 151 50 107
      { lower := 27556, upper := 27586, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good171_checked :
    goodSegmentCheck 151 50 107
      { lower := 28125, upper := 28273, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good172_checked :
    goodSegmentCheck 151 50 107
      { lower := 28274, upper := 28275, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good173_checked :
    goodSegmentCheck 151 50 107
      { lower := 28561, upper := 28581, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good174_checked :
    goodSegmentCheck 151 50 107
      { lower := 28672, upper := 28711, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good175_checked :
    goodSegmentCheck 151 50 107
      { lower := 28717, upper := 28861, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good176_checked :
    goodSegmentCheck 151 50 107
      { lower := 28862, upper := 28867, witness := RowWitness.topPrime 28859 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good177_checked :
    goodSegmentCheck 151 50 107
      { lower := 29791, upper := 29918, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good178_checked :
    goodSegmentCheck 151 50 107
      { lower := 30618, upper := 30743, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good179_checked :
    goodSegmentCheck 151 50 107
      { lower := 30744, upper := 30753, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good180_checked :
    goodSegmentCheck 151 50 107
      { lower := 30758, upper := 30768, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good181_checked :
    goodSegmentCheck 151 50 107
      { lower := 30899, upper := 30908, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good182_checked :
    goodSegmentCheck 151 50 107
      { lower := 30926, upper := 31049, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good183_checked :
    goodSegmentCheck 151 50 107
      { lower := 31213, upper := 31343, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good184_checked :
    goodSegmentCheck 151 50 107
      { lower := 31344, upper := 31400, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good185_checked :
    goodSegmentCheck 151 50 107
      { lower := 31423, upper := 31479, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good186_checked :
    goodSegmentCheck 151 50 107
      { lower := 31827, upper := 31834, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good187_checked :
    goodSegmentCheck 151 50 107
      { lower := 31974, upper := 31977, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good188_checked :
    goodSegmentCheck 151 50 107
      { lower := 32805, upper := 32918, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good189_checked :
    goodSegmentCheck 151 50 107
      { lower := 33614, upper := 33639, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good190_checked :
    goodSegmentCheck 151 50 107
      { lower := 33708, upper := 33764, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good191_checked :
    goodSegmentCheck 151 50 107
      { lower := 34322, upper := 34469, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good192_checked :
    goodSegmentCheck 151 50 107
      { lower := 34470, upper := 34541, witness := RowWitness.topPrime 34469 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good193_checked :
    goodSegmentCheck 151 50 107
      { lower := 36517, upper := 36647, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good194_checked :
    goodSegmentCheck 151 50 107
      { lower := 36648, upper := 36651, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good195_checked :
    goodSegmentCheck 151 50 107
      { lower := 37303, upper := 37360, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good196_checked :
    goodSegmentCheck 151 50 107
      { lower := 37446, upper := 37453, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good197_checked :
    goodSegmentCheck 151 50 107
      { lower := 37500, upper := 37643, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good198_checked :
    goodSegmentCheck 151 50 107
      { lower := 37644, upper := 37688, witness := RowWitness.topPrime 37643 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good199_checked :
    goodSegmentCheck 151 50 107
      { lower := 38307, upper := 38441, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good200_checked :
    goodSegmentCheck 151 50 107
      { lower := 39326, upper := 39473, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good201_checked :
    goodSegmentCheck 151 50 107
      { lower := 39474, upper := 39476, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good202_checked :
    goodSegmentCheck 151 50 107
      { lower := 40401, upper := 40478, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good203_checked :
    goodSegmentCheck 151 50 107
      { lower := 40931, upper := 40954, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good204_checked :
    goodSegmentCheck 151 50 107
      { lower := 40960, upper := 41081, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good205_checked :
    goodSegmentCheck 151 50 107
      { lower := 43750, upper := 43837, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good206_checked :
    goodSegmentCheck 151 50 107
      { lower := 45927, upper := 45946, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good207_checked :
    goodSegmentCheck 151 50 107
      { lower := 47526, upper := 47671, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good208_checked :
    goodSegmentCheck 151 50 107
      { lower := 47672, upper := 47674, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good209_checked :
    goodSegmentCheck 151 50 107
      { lower := 48013, upper := 48111, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good210_checked :
    goodSegmentCheck 151 50 107
      { lower := 48778, upper := 48818, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good211_checked :
    goodSegmentCheck 151 50 107
      { lower := 49152, upper := 49280, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good212_checked :
    goodSegmentCheck 151 50 107
      { lower := 50421, upper := 50560, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good213_checked :
    goodSegmentCheck 151 50 107
      { lower := 51076, upper := 51155, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good214_checked :
    goodSegmentCheck 151 50 107
      { lower := 55451, upper := 55591, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good215_checked :
    goodSegmentCheck 151 50 107
      { lower := 55592, upper := 55597, witness := RowWitness.topPrime 55589 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good216_checked :
    goodSegmentCheck 151 50 107
      { lower := 56307, upper := 56319, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good217_checked :
    goodSegmentCheck 151 50 107
      { lower := 56454, upper := 56457, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good218_checked :
    goodSegmentCheck 151 50 107
      { lower := 57245, upper := 57272, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good219_checked :
    goodSegmentCheck 151 50 107
      { lower := 57344, upper := 57395, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good220_checked :
    goodSegmentCheck 151 50 107
      { lower := 58619, upper := 58714, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good221_checked :
    goodSegmentCheck 151 50 107
      { lower := 62500, upper := 62560, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good222_checked :
    goodSegmentCheck 151 50 107
      { lower := 65610, upper := 65686, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good223_checked :
    goodSegmentCheck 151 50 107
      { lower := 68644, upper := 68789, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_good224_checked :
    goodSegmentCheck 151 50 107
      { lower := 68790, upper := 68801, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good225_checked :
    goodSegmentCheck 151 50 107
      { lower := 68921, upper := 69040, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good226_checked :
    goodSegmentCheck 151 50 107
      { lower := 71289, upper := 71437, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good227_checked :
    goodSegmentCheck 151 50 107
      { lower := 71438, upper := 71439, witness := RowWitness.topPrime 71437 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good228_checked :
    goodSegmentCheck 151 50 107
      { lower := 73205, upper := 73317, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good229_checked :
    goodSegmentCheck 151 50 107
      { lower := 85805, upper := 85833, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good230_checked :
    goodSegmentCheck 151 50 107
      { lower := 89383, upper := 89523, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good231_checked :
    goodSegmentCheck 151 50 107
      { lower := 93845, upper := 93900, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good232_checked :
    goodSegmentCheck 151 50 107
      { lower := 98415, upper := 98454, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good233_checked :
    goodSegmentCheck 151 50 107
      { lower := 137842, upper := 137931, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row151_good234_checked :
    goodSegmentCheck 151 50 107
      { lower := 148955, upper := 149027, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 151) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_good234_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_goods_checked :
    row151.goods.all (goodSegmentCheck row151.height.i row151.height.r row151.height.s) = true := by
  change row151_goods.all (goodSegmentCheck 151 50 107) = true
  simp only [row151_goods, List.all_cons, List.all_nil,
    row151_good000_checked,
    row151_good001_checked,
    row151_good002_checked,
    row151_good003_checked,
    row151_good004_checked,
    row151_good005_checked,
    row151_good006_checked,
    row151_good007_checked,
    row151_good008_checked,
    row151_good009_checked,
    row151_good010_checked,
    row151_good011_checked,
    row151_good012_checked,
    row151_good013_checked,
    row151_good014_checked,
    row151_good015_checked,
    row151_good016_checked,
    row151_good017_checked,
    row151_good018_checked,
    row151_good019_checked,
    row151_good020_checked,
    row151_good021_checked,
    row151_good022_checked,
    row151_good023_checked,
    row151_good024_checked,
    row151_good025_checked,
    row151_good026_checked,
    row151_good027_checked,
    row151_good028_checked,
    row151_good029_checked,
    row151_good030_checked,
    row151_good031_checked,
    row151_good032_checked,
    row151_good033_checked,
    row151_good034_checked,
    row151_good035_checked,
    row151_good036_checked,
    row151_good037_checked,
    row151_good038_checked,
    row151_good039_checked,
    row151_good040_checked,
    row151_good041_checked,
    row151_good042_checked,
    row151_good043_checked,
    row151_good044_checked,
    row151_good045_checked,
    row151_good046_checked,
    row151_good047_checked,
    row151_good048_checked,
    row151_good049_checked,
    row151_good050_checked,
    row151_good051_checked,
    row151_good052_checked,
    row151_good053_checked,
    row151_good054_checked,
    row151_good055_checked,
    row151_good056_checked,
    row151_good057_checked,
    row151_good058_checked,
    row151_good059_checked,
    row151_good060_checked,
    row151_good061_checked,
    row151_good062_checked,
    row151_good063_checked,
    row151_good064_checked,
    row151_good065_checked,
    row151_good066_checked,
    row151_good067_checked,
    row151_good068_checked,
    row151_good069_checked,
    row151_good070_checked,
    row151_good071_checked,
    row151_good072_checked,
    row151_good073_checked,
    row151_good074_checked,
    row151_good075_checked,
    row151_good076_checked,
    row151_good077_checked,
    row151_good078_checked,
    row151_good079_checked,
    row151_good080_checked,
    row151_good081_checked,
    row151_good082_checked,
    row151_good083_checked,
    row151_good084_checked,
    row151_good085_checked,
    row151_good086_checked,
    row151_good087_checked,
    row151_good088_checked,
    row151_good089_checked,
    row151_good090_checked,
    row151_good091_checked,
    row151_good092_checked,
    row151_good093_checked,
    row151_good094_checked,
    row151_good095_checked,
    row151_good096_checked,
    row151_good097_checked,
    row151_good098_checked,
    row151_good099_checked,
    row151_good100_checked,
    row151_good101_checked,
    row151_good102_checked,
    row151_good103_checked,
    row151_good104_checked,
    row151_good105_checked,
    row151_good106_checked,
    row151_good107_checked,
    row151_good108_checked,
    row151_good109_checked,
    row151_good110_checked,
    row151_good111_checked,
    row151_good112_checked,
    row151_good113_checked,
    row151_good114_checked,
    row151_good115_checked,
    row151_good116_checked,
    row151_good117_checked,
    row151_good118_checked,
    row151_good119_checked,
    row151_good120_checked,
    row151_good121_checked,
    row151_good122_checked,
    row151_good123_checked,
    row151_good124_checked,
    row151_good125_checked,
    row151_good126_checked,
    row151_good127_checked,
    row151_good128_checked,
    row151_good129_checked,
    row151_good130_checked,
    row151_good131_checked,
    row151_good132_checked,
    row151_good133_checked,
    row151_good134_checked,
    row151_good135_checked,
    row151_good136_checked,
    row151_good137_checked,
    row151_good138_checked,
    row151_good139_checked,
    row151_good140_checked,
    row151_good141_checked,
    row151_good142_checked,
    row151_good143_checked,
    row151_good144_checked,
    row151_good145_checked,
    row151_good146_checked,
    row151_good147_checked,
    row151_good148_checked,
    row151_good149_checked,
    row151_good150_checked,
    row151_good151_checked,
    row151_good152_checked,
    row151_good153_checked,
    row151_good154_checked,
    row151_good155_checked,
    row151_good156_checked,
    row151_good157_checked,
    row151_good158_checked,
    row151_good159_checked,
    row151_good160_checked,
    row151_good161_checked,
    row151_good162_checked,
    row151_good163_checked,
    row151_good164_checked,
    row151_good165_checked,
    row151_good166_checked,
    row151_good167_checked,
    row151_good168_checked,
    row151_good169_checked,
    row151_good170_checked,
    row151_good171_checked,
    row151_good172_checked,
    row151_good173_checked,
    row151_good174_checked,
    row151_good175_checked,
    row151_good176_checked,
    row151_good177_checked,
    row151_good178_checked,
    row151_good179_checked,
    row151_good180_checked,
    row151_good181_checked,
    row151_good182_checked,
    row151_good183_checked,
    row151_good184_checked,
    row151_good185_checked,
    row151_good186_checked,
    row151_good187_checked,
    row151_good188_checked,
    row151_good189_checked,
    row151_good190_checked,
    row151_good191_checked,
    row151_good192_checked,
    row151_good193_checked,
    row151_good194_checked,
    row151_good195_checked,
    row151_good196_checked,
    row151_good197_checked,
    row151_good198_checked,
    row151_good199_checked,
    row151_good200_checked,
    row151_good201_checked,
    row151_good202_checked,
    row151_good203_checked,
    row151_good204_checked,
    row151_good205_checked,
    row151_good206_checked,
    row151_good207_checked,
    row151_good208_checked,
    row151_good209_checked,
    row151_good210_checked,
    row151_good211_checked,
    row151_good212_checked,
    row151_good213_checked,
    row151_good214_checked,
    row151_good215_checked,
    row151_good216_checked,
    row151_good217_checked,
    row151_good218_checked,
    row151_good219_checked,
    row151_good220_checked,
    row151_good221_checked,
    row151_good222_checked,
    row151_good223_checked,
    row151_good224_checked,
    row151_good225_checked,
    row151_good226_checked,
    row151_good227_checked,
    row151_good228_checked,
    row151_good229_checked,
    row151_good230_checked,
    row151_good231_checked,
    row151_good232_checked,
    row151_good233_checked,
    row151_good234_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_registered :
    decide (row151.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row151_small_checked :
    coverCheck (2 * row151.height.i + 2) (row151.height.i * (row151.height.i - 1) - 1)
      (row151.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row151_layerCover_checked :
    coverCheck (row151.height.i * (row151.height.i - 1)) (row151.height.n0 - 1)
      (row151.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row151_bounds : List NatInterval :=
  [(304, 443), (444, 593), (594, 743), (744, 893), (894, 1037), (1038, 1183), (1184, 1331), (1332, 1477), (1478, 1621), (1622, 1771), (1772, 1909), (1910, 2057), (2058, 2203), (2204, 2353), (2354, 2501), (2502, 2627), (2628, 2771), (2772, 2917), (2918, 3067), (3068, 3217), (3218, 3367), (3368, 3511), (3512, 3661), (3662, 3809), (3810, 3953), (3954, 4097), (4098, 4243), (4244, 4393), (4394, 4541), (4542, 4673), (4674, 4823), (4824, 4967), (4968, 5117), (5118, 5263), (5264, 5411), (5412, 5557), (5558, 5707), (5708, 5851), (5852, 6001), (6002, 6137), (6138, 6283), (6284, 6427), (6428, 6577), (6578, 6727), (6728, 6869), (6870, 7019), (7020, 7169), (7170, 7309), (7310, 7459), (7460, 7609), (7610, 7757), (7758, 7907), (7908, 8057), (8058, 8203), (8204, 8341), (8342, 8479), (8480, 8617), (8618, 8759), (8760, 8903), (8904, 9043), (9044, 9193), (9194, 9337), (9338, 9487), (9488, 9629), (9630, 9779), (9780, 9919), (9920, 10057), (10058, 10189), (10190, 10331), (10332, 10481), (10482, 10627), (10628, 10777), (10778, 10921), (10922, 11059), (11060, 11209), (11210, 11347), (11348, 11479), (11480, 11621), (11622, 11771), (11772, 11893), (11894, 12037), (12038, 12187), (12188, 12313), (12314, 12451), (12452, 12601), (12602, 12751), (12752, 12893), (12894, 13043), (13044, 13193), (13194, 13337), (13338, 13487), (13488, 13637), (13638, 13783), (13784, 13931), (13932, 14081), (14082, 14231), (14232, 14371), (14372, 14519), (14520, 14669), (14670, 14819), (14820, 14963), (14964, 15107), (15108, 15257), (15258, 15391), (15392, 15541), (15542, 15691), (15692, 15833), (15834, 15973), (15974, 16123), (16124, 16261), (16262, 16403), (16404, 16531), (16532, 16679), (16680, 16823), (16824, 16973), (16974, 17113), (17114, 17257), (17258, 17407), (17408, 17551), (17552, 17701), (17702, 17833), (17834, 17977), (17978, 18127), (18128, 18277), (18278, 18419), (18420, 18563), (18564, 18703), (18704, 18851), (18852, 18989), (18990, 19129), (19130, 19271), (19272, 19417), (19418, 19567), (19568, 19709), (19710, 19859), (19860, 20003), (20004, 20147), (20148, 20297), (20298, 20447), (20448, 20593), (20594, 20743), (20744, 20893), (20894, 21037), (21038, 21181), (21182, 21329), (21330, 21473), (21474, 21617), (21618, 21767), (21768, 21917), (21918, 22061), (22062, 22201), (22202, 22343), (22344, 22493), (22494, 22633), (22634, 22649), (23763, 23911), (23912, 23912), (24037, 24179), (24180, 24207), (24299, 24317), (24334, 24479), (24480, 24517), (24576, 24715), (25000, 25114), (25281, 25355), (26364, 26394), (26411, 26557), (26558, 26561), (26624, 26747), (26748, 26774), (27556, 27586), (28125, 28273), (28274, 28275), (28561, 28581), (28672, 28711), (28717, 28861), (28862, 28867), (29791, 29918), (30618, 30743), (30744, 30753), (30758, 30768), (30899, 30908), (30926, 31049), (31213, 31343), (31344, 31400), (31423, 31479), (31827, 31834), (31974, 31977), (32805, 32918), (33614, 33639), (33708, 33764), (34322, 34469), (34470, 34541), (36517, 36647), (36648, 36651), (37303, 37360), (37446, 37453), (37500, 37643), (37644, 37688), (38307, 38441), (39326, 39473), (39474, 39476), (40401, 40478), (40931, 40954), (40960, 41081), (43750, 43837), (45927, 45946), (47526, 47671), (47672, 47674), (48013, 48111), (48778, 48818), (49152, 49280), (50421, 50560), (51076, 51155), (55451, 55591), (55592, 55597), (56307, 56319), (56454, 56457), (57245, 57272), (57344, 57395), (58619, 58714), (62500, 62560), (65610, 65686), (68644, 68789), (68790, 68801), (68921, 69040), (71289, 71437), (71438, 71439), (73205, 73317), (85805, 85833), (89383, 89523), (93845, 93900), (98415, 98454), (137842, 137931), (148955, 149027)]

theorem row151_bounds_eq : row151.goods.map goodSegmentBounds = row151_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row151_layer000_intervals : List ColouredInterval :=
  [(2, 22650, 22678), (2, 24576, 24726), (2, 26624, 26774), (2, 28672, 28822), (2, 24576, 24726), (2, 28672, 28822), (2, 32768, 32918), (2, 36864, 37014), (2, 40960, 41110), (2, 45056, 45206), (2, 24576, 24726), (2, 32768, 32918), (2, 40960, 41110), (2, 32768, 32918), (2, 32768, 32918), (3, 24057, 24207), (3, 26244, 26394), (3, 28431, 28581), (3, 30618, 30768), (3, 26244, 26394), (3, 32805, 32955), (3, 39366, 39516), (3, 39366, 39516), (5, 25000, 25150), (5, 28125, 28275), (5, 31250, 31400), (5, 34375, 34525), (5, 37500, 37650), (5, 40625, 40775), (5, 43750, 43900), (5, 31250, 31400), (7, 24010, 24160), (7, 26411, 26561), (7, 28812, 28962), (7, 31213, 31363), (7, 33614, 33764), (7, 33614, 33764), (11, 29282, 29432), (11, 43923, 44073), (13, 24167, 24317), (13, 26364, 26514), (13, 28561, 28711), (13, 30758, 30908), (13, 28561, 28711), (17, 24565, 24715), (17, 29478, 29628), (17, 34391, 34541), (17, 39304, 39454), (17, 44217, 44367), (19, 27436, 27586), (19, 34295, 34445), (19, 41154, 41304), (23, 24334, 24484), (23, 36501, 36651), (29, 24389, 24539), (31, 29791, 29941), (41, 23534, 23684), (43, 24037, 24187), (43, 25886, 26036), (47, 24299, 24449), (47, 26508, 26658), (47, 28717, 28867), (47, 30926, 31076), (53, 25281, 25431), (53, 28090, 28240), (53, 30899, 31049), (53, 33708, 33858), (53, 36517, 36667), (53, 39326, 39476), (59, 24367, 24517), (59, 27848, 27998), (59, 31329, 31479), (59, 34810, 34960), (59, 38291, 38441), (59, 41772, 41922), (59, 45253, 45299), (61, 26047, 26197), (61, 29768, 29918), (61, 33489, 33639), (61, 37210, 37360), (61, 40931, 41081), (61, 44652, 44802), (67, 26934, 27084), (67, 31423, 31573), (67, 35912, 36062), (67, 40401, 40551), (67, 44890, 45040), (71, 25205, 25355), (71, 30246, 30396), (71, 35287, 35437), (71, 40328, 40478), (73, 26645, 26795), (73, 31974, 32124), (73, 37303, 37453), (73, 42632, 42782), (79, 24964, 25114), (79, 31205, 31355), (79, 37446, 37596), (79, 43687, 43837), (83, 27556, 27706), (83, 34445, 34595), (83, 41334, 41484), (89, 23763, 23913), (89, 31684, 31834), (89, 39605, 39755), (97, 28227, 28377), (97, 37636, 37786), (101, 30603, 30753), (101, 40804, 40954), (103, 31827, 31977), (103, 42436, 42586), (107, 22898, 23048), (107, 34347, 34497), (109, 23762, 23912), (109, 35643, 35793), (113, 25538, 25688), (113, 38307, 38457), (127, 32258, 32408), (131, 34322, 34472), (137, 37538, 37688), (139, 38642, 38792), (149, 44402, 44552)]

def row151_layer000_block000 : List ColouredInterval :=
  [(2, 22650, 22678), (2, 24576, 24726), (2, 26624, 26774), (2, 28672, 28822), (2, 24576, 24726), (2, 28672, 28822), (2, 32768, 32918), (2, 36864, 37014), (2, 40960, 41110), (2, 45056, 45206), (2, 24576, 24726), (2, 32768, 32918), (2, 40960, 41110), (2, 32768, 32918), (2, 32768, 32918), (3, 24057, 24207)]

def row151_layer000_block001 : List ColouredInterval :=
  [(3, 26244, 26394), (3, 28431, 28581), (3, 30618, 30768), (3, 26244, 26394), (3, 32805, 32955), (3, 39366, 39516), (3, 39366, 39516), (5, 25000, 25150), (5, 28125, 28275), (5, 31250, 31400), (5, 34375, 34525), (5, 37500, 37650), (5, 40625, 40775), (5, 43750, 43900), (5, 31250, 31400), (7, 24010, 24160)]

def row151_layer000_block002 : List ColouredInterval :=
  [(7, 26411, 26561), (7, 28812, 28962), (7, 31213, 31363), (7, 33614, 33764), (7, 33614, 33764), (11, 29282, 29432), (11, 43923, 44073), (13, 24167, 24317), (13, 26364, 26514), (13, 28561, 28711), (13, 30758, 30908), (13, 28561, 28711), (17, 24565, 24715), (17, 29478, 29628), (17, 34391, 34541), (17, 39304, 39454)]

def row151_layer000_block003 : List ColouredInterval :=
  [(17, 44217, 44367), (19, 27436, 27586), (19, 34295, 34445), (19, 41154, 41304), (23, 24334, 24484), (23, 36501, 36651), (29, 24389, 24539), (31, 29791, 29941), (41, 23534, 23684), (43, 24037, 24187), (43, 25886, 26036), (47, 24299, 24449), (47, 26508, 26658), (47, 28717, 28867), (47, 30926, 31076), (53, 25281, 25431)]

def row151_layer000_block004 : List ColouredInterval :=
  [(53, 28090, 28240), (53, 30899, 31049), (53, 33708, 33858), (53, 36517, 36667), (53, 39326, 39476), (59, 24367, 24517), (59, 27848, 27998), (59, 31329, 31479), (59, 34810, 34960), (59, 38291, 38441), (59, 41772, 41922), (59, 45253, 45299), (61, 26047, 26197), (61, 29768, 29918), (61, 33489, 33639), (61, 37210, 37360)]

def row151_layer000_block005 : List ColouredInterval :=
  [(61, 40931, 41081), (61, 44652, 44802), (67, 26934, 27084), (67, 31423, 31573), (67, 35912, 36062), (67, 40401, 40551), (67, 44890, 45040), (71, 25205, 25355), (71, 30246, 30396), (71, 35287, 35437), (71, 40328, 40478), (73, 26645, 26795), (73, 31974, 32124), (73, 37303, 37453), (73, 42632, 42782), (79, 24964, 25114)]

def row151_layer000_block006 : List ColouredInterval :=
  [(79, 31205, 31355), (79, 37446, 37596), (79, 43687, 43837), (83, 27556, 27706), (83, 34445, 34595), (83, 41334, 41484), (89, 23763, 23913), (89, 31684, 31834), (89, 39605, 39755), (97, 28227, 28377), (97, 37636, 37786), (101, 30603, 30753), (101, 40804, 40954), (103, 31827, 31977), (103, 42436, 42586), (107, 22898, 23048)]

def row151_layer000_block007 : List ColouredInterval :=
  [(107, 34347, 34497), (109, 23762, 23912), (109, 35643, 35793), (113, 25538, 25688), (113, 38307, 38457), (127, 32258, 32408), (131, 34322, 34472), (137, 37538, 37688), (139, 38642, 38792), (149, 44402, 44552)]

def row151_layer000_chunks : List (List ColouredInterval) :=
  [row151_layer000_block000, row151_layer000_block001, row151_layer000_block002, row151_layer000_block003, row151_layer000_block004, row151_layer000_block005, row151_layer000_block006, row151_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_arithmetic : LayerArithmeticValid row151.height { lower := 22650, upper := 45300, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_enumeration :
    activePowerIntervalList 151 14 22650 45300 = row151_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_pairs000 :
    row151_layer000_block000.all (fun I => row151_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row151_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_pairs001 :
    row151_layer000_block001.all (fun I => row151_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row151_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_pairs002 :
    row151_layer000_block002.all (fun I => row151_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row151_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_pairs003 :
    row151_layer000_block003.all (fun I => row151_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row151_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_pairs004 :
    row151_layer000_block004.all (fun I => row151_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row151_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_pairs005 :
    row151_layer000_block005.all (fun I => row151_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row151_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_pairs006 :
    row151_layer000_block006.all (fun I => row151_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row151_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_pairs007 :
    row151_layer000_block007.all (fun I => row151_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row151_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_chunks_eq : row151_layer000_chunks.flatten = row151_layer000_intervals := by
  rfl

theorem row151_layer000_pairs : pairCoverCheck row151_layer000_intervals row151_bounds = true := by
  apply pairCoverCheck_of_chunks row151_layer000_chunks_eq
  intro block hblock
  simp only [row151_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row151_layer000_pairs000
  · exact row151_layer000_pairs001
  · exact row151_layer000_pairs002
  · exact row151_layer000_pairs003
  · exact row151_layer000_pairs004
  · exact row151_layer000_pairs005
  · exact row151_layer000_pairs006
  · exact row151_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer000_checked :
    coverLayerCheck row151.height row151.goods { lower := 22650, upper := 45300, M := 14 } = true := by
  exact coverLayerCheck_of_parts row151_layer000_arithmetic row151_layer000_enumeration row151_bounds_eq row151_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer000_checked
