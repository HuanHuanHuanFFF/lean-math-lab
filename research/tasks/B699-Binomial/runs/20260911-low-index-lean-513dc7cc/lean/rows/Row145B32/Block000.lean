import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row145_height : HeightCertificateDatum := { i := 145, r := 48, s := 102, n0Power10 := 8 }

def row145_goods : List GoodSegment := [
  { lower := 292, upper := 427, witness := RowWitness.topPrime 283 },
  { lower := 428, upper := 565, witness := RowWitness.topPrime 421 },
  { lower := 566, upper := 707, witness := RowWitness.topPrime 563 },
  { lower := 708, upper := 845, witness := RowWitness.topPrime 701 },
  { lower := 846, upper := 983, witness := RowWitness.topPrime 839 },
  { lower := 984, upper := 1127, witness := RowWitness.topPrime 983 },
  { lower := 1128, upper := 1267, witness := RowWitness.topPrime 1123 },
  { lower := 1268, upper := 1403, witness := RowWitness.topPrime 1259 },
  { lower := 1404, upper := 1543, witness := RowWitness.topPrime 1399 },
  { lower := 1544, upper := 1687, witness := RowWitness.topPrime 1543 },
  { lower := 1688, upper := 1813, witness := RowWitness.topPrime 1669 },
  { lower := 1814, upper := 1955, witness := RowWitness.topPrime 1811 },
  { lower := 1956, upper := 2095, witness := RowWitness.topPrime 1951 },
  { lower := 2096, upper := 2233, witness := RowWitness.topPrime 2089 },
  { lower := 2234, upper := 2365, witness := RowWitness.topPrime 2221 },
  { lower := 2366, upper := 2501, witness := RowWitness.topPrime 2357 },
  { lower := 2502, upper := 2621, witness := RowWitness.topPrime 2477 },
  { lower := 2622, upper := 2765, witness := RowWitness.topPrime 2621 },
  { lower := 2766, upper := 2897, witness := RowWitness.topPrime 2753 },
  { lower := 2898, upper := 3041, witness := RowWitness.topPrime 2897 },
  { lower := 3042, upper := 3185, witness := RowWitness.topPrime 3041 },
  { lower := 3186, upper := 3325, witness := RowWitness.topPrime 3181 },
  { lower := 3326, upper := 3467, witness := RowWitness.topPrime 3323 },
  { lower := 3468, upper := 3611, witness := RowWitness.topPrime 3467 },
  { lower := 3612, upper := 3751, witness := RowWitness.topPrime 3607 },
  { lower := 3752, upper := 3883, witness := RowWitness.topPrime 3739 },
  { lower := 3884, upper := 4025, witness := RowWitness.topPrime 3881 },
  { lower := 4026, upper := 4165, witness := RowWitness.topPrime 4021 },
  { lower := 4166, upper := 4303, witness := RowWitness.topPrime 4159 },
  { lower := 4304, upper := 4441, witness := RowWitness.topPrime 4297 },
  { lower := 4442, upper := 4585, witness := RowWitness.topPrime 4441 },
  { lower := 4586, upper := 4727, witness := RowWitness.topPrime 4583 },
  { lower := 4728, upper := 4867, witness := RowWitness.topPrime 4723 },
  { lower := 4868, upper := 5005, witness := RowWitness.topPrime 4861 },
  { lower := 5006, upper := 5147, witness := RowWitness.topPrime 5003 },
  { lower := 5148, upper := 5291, witness := RowWitness.topPrime 5147 },
  { lower := 5292, upper := 5425, witness := RowWitness.topPrime 5281 },
  { lower := 5426, upper := 5563, witness := RowWitness.topPrime 5419 },
  { lower := 5564, upper := 5707, witness := RowWitness.topPrime 5563 },
  { lower := 5708, upper := 5845, witness := RowWitness.topPrime 5701 },
  { lower := 5846, upper := 5987, witness := RowWitness.topPrime 5843 },
  { lower := 5988, upper := 6131, witness := RowWitness.topPrime 5987 },
  { lower := 6132, upper := 6275, witness := RowWitness.topPrime 6131 },
  { lower := 6276, upper := 6415, witness := RowWitness.topPrime 6271 },
  { lower := 6416, upper := 6541, witness := RowWitness.topPrime 6397 },
  { lower := 6542, upper := 6673, witness := RowWitness.topPrime 6529 },
  { lower := 6674, upper := 6817, witness := RowWitness.topPrime 6673 },
  { lower := 6818, upper := 6947, witness := RowWitness.topPrime 6803 },
  { lower := 6948, upper := 7091, witness := RowWitness.topPrime 6947 },
  { lower := 7092, upper := 7223, witness := RowWitness.topPrime 7079 },
  { lower := 7224, upper := 7363, witness := RowWitness.topPrime 7219 },
  { lower := 7364, upper := 7495, witness := RowWitness.topPrime 7351 },
  { lower := 7496, upper := 7633, witness := RowWitness.topPrime 7489 },
  { lower := 7634, upper := 7765, witness := RowWitness.topPrime 7621 },
  { lower := 7766, upper := 7903, witness := RowWitness.topPrime 7759 },
  { lower := 7904, upper := 8045, witness := RowWitness.topPrime 7901 },
  { lower := 8046, upper := 8183, witness := RowWitness.topPrime 8039 },
  { lower := 8184, upper := 8323, witness := RowWitness.topPrime 8179 },
  { lower := 8324, upper := 8461, witness := RowWitness.topPrime 8317 },
  { lower := 8462, upper := 8605, witness := RowWitness.topPrime 8461 },
  { lower := 8606, upper := 8743, witness := RowWitness.topPrime 8599 },
  { lower := 8744, upper := 8885, witness := RowWitness.topPrime 8741 },
  { lower := 8886, upper := 9011, witness := RowWitness.topPrime 8867 },
  { lower := 9012, upper := 9155, witness := RowWitness.topPrime 9011 },
  { lower := 9156, upper := 9295, witness := RowWitness.topPrime 9151 },
  { lower := 9296, upper := 9437, witness := RowWitness.topPrime 9293 },
  { lower := 9438, upper := 9581, witness := RowWitness.topPrime 9437 },
  { lower := 9582, upper := 9695, witness := RowWitness.topPrime 9551 },
  { lower := 9696, upper := 9833, witness := RowWitness.topPrime 9689 },
  { lower := 9834, upper := 9977, witness := RowWitness.topPrime 9833 },
  { lower := 9978, upper := 10117, witness := RowWitness.topPrime 9973 },
  { lower := 10118, upper := 10255, witness := RowWitness.topPrime 10111 },
  { lower := 10256, upper := 10397, witness := RowWitness.topPrime 10253 },
  { lower := 10398, upper := 10535, witness := RowWitness.topPrime 10391 },
  { lower := 10536, upper := 10675, witness := RowWitness.topPrime 10531 },
  { lower := 10676, upper := 10811, witness := RowWitness.topPrime 10667 },
  { lower := 10812, upper := 10943, witness := RowWitness.topPrime 10799 },
  { lower := 10944, upper := 11083, witness := RowWitness.topPrime 10939 },
  { lower := 11084, upper := 11227, witness := RowWitness.topPrime 11083 },
  { lower := 11228, upper := 11357, witness := RowWitness.topPrime 11213 },
  { lower := 11358, upper := 11497, witness := RowWitness.topPrime 11353 },
  { lower := 11498, upper := 11641, witness := RowWitness.topPrime 11497 },
  { lower := 11642, upper := 11777, witness := RowWitness.topPrime 11633 },
  { lower := 11778, upper := 11921, witness := RowWitness.topPrime 11777 },
  { lower := 11922, upper := 12053, witness := RowWitness.topPrime 11909 },
  { lower := 12054, upper := 12193, witness := RowWitness.topPrime 12049 },
  { lower := 12194, upper := 12307, witness := RowWitness.topPrime 12163 },
  { lower := 12308, upper := 12445, witness := RowWitness.topPrime 12301 },
  { lower := 12446, upper := 12581, witness := RowWitness.topPrime 12437 },
  { lower := 12582, upper := 12721, witness := RowWitness.topPrime 12577 },
  { lower := 12722, upper := 12865, witness := RowWitness.topPrime 12721 },
  { lower := 12866, upper := 12997, witness := RowWitness.topPrime 12853 },
  { lower := 12998, upper := 13127, witness := RowWitness.topPrime 12983 },
  { lower := 13128, upper := 13271, witness := RowWitness.topPrime 13127 },
  { lower := 13272, upper := 13411, witness := RowWitness.topPrime 13267 },
  { lower := 13412, upper := 13555, witness := RowWitness.topPrime 13411 },
  { lower := 13556, upper := 13697, witness := RowWitness.topPrime 13553 },
  { lower := 13698, upper := 13841, witness := RowWitness.topPrime 13697 },
  { lower := 13842, upper := 13985, witness := RowWitness.topPrime 13841 },
  { lower := 13986, upper := 14111, witness := RowWitness.topPrime 13967 },
  { lower := 14112, upper := 14251, witness := RowWitness.topPrime 14107 },
  { lower := 14252, upper := 14395, witness := RowWitness.topPrime 14251 },
  { lower := 14396, upper := 14533, witness := RowWitness.topPrime 14389 },
  { lower := 14534, upper := 14677, witness := RowWitness.topPrime 14533 },
  { lower := 14678, upper := 14813, witness := RowWitness.topPrime 14669 },
  { lower := 14814, upper := 14957, witness := RowWitness.topPrime 14813 },
  { lower := 14958, upper := 15101, witness := RowWitness.topPrime 14957 },
  { lower := 15102, upper := 15245, witness := RowWitness.topPrime 15101 },
  { lower := 15246, upper := 15385, witness := RowWitness.topPrime 15241 },
  { lower := 15386, upper := 15527, witness := RowWitness.topPrime 15383 },
  { lower := 15528, upper := 15671, witness := RowWitness.topPrime 15527 },
  { lower := 15672, upper := 15815, witness := RowWitness.topPrime 15671 },
  { lower := 15816, upper := 15953, witness := RowWitness.topPrime 15809 },
  { lower := 15954, upper := 16081, witness := RowWitness.topPrime 15937 },
  { lower := 16082, upper := 16217, witness := RowWitness.topPrime 16073 },
  { lower := 16218, upper := 16361, witness := RowWitness.topPrime 16217 },
  { lower := 16362, upper := 16505, witness := RowWitness.topPrime 16361 },
  { lower := 16506, upper := 16637, witness := RowWitness.topPrime 16493 },
  { lower := 16638, upper := 16777, witness := RowWitness.topPrime 16633 },
  { lower := 16778, upper := 16907, witness := RowWitness.topPrime 16763 },
  { lower := 16908, upper := 17047, witness := RowWitness.topPrime 16903 },
  { lower := 17048, upper := 17191, witness := RowWitness.topPrime 17047 },
  { lower := 17192, upper := 17335, witness := RowWitness.topPrime 17191 },
  { lower := 17336, upper := 17477, witness := RowWitness.topPrime 17333 },
  { lower := 17478, upper := 17621, witness := RowWitness.topPrime 17477 },
  { lower := 17622, upper := 17753, witness := RowWitness.topPrime 17609 },
  { lower := 17754, upper := 17893, witness := RowWitness.topPrime 17749 },
  { lower := 17894, upper := 18035, witness := RowWitness.topPrime 17891 },
  { lower := 18036, upper := 18157, witness := RowWitness.topPrime 18013 },
  { lower := 18158, upper := 18293, witness := RowWitness.topPrime 18149 },
  { lower := 18294, upper := 18433, witness := RowWitness.topPrime 18289 },
  { lower := 18434, upper := 18577, witness := RowWitness.topPrime 18433 },
  { lower := 18578, upper := 18697, witness := RowWitness.topPrime 18553 },
  { lower := 18698, upper := 18835, witness := RowWitness.topPrime 18691 },
  { lower := 18836, upper := 18947, witness := RowWitness.topPrime 18803 },
  { lower := 18948, upper := 19091, witness := RowWitness.topPrime 18947 },
  { lower := 19092, upper := 19231, witness := RowWitness.topPrime 19087 },
  { lower := 19232, upper := 19375, witness := RowWitness.topPrime 19231 },
  { lower := 19376, upper := 19517, witness := RowWitness.topPrime 19373 },
  { lower := 19518, upper := 19651, witness := RowWitness.topPrime 19507 },
  { lower := 19652, upper := 19753, witness := RowWitness.topPrime 19609 },
  { lower := 19754, upper := 19897, witness := RowWitness.topPrime 19753 },
  { lower := 19898, upper := 20035, witness := RowWitness.topPrime 19891 },
  { lower := 20036, upper := 20173, witness := RowWitness.topPrime 20029 },
  { lower := 20174, upper := 20317, witness := RowWitness.topPrime 20173 },
  { lower := 20318, upper := 20441, witness := RowWitness.topPrime 20297 },
  { lower := 20442, upper := 20585, witness := RowWitness.topPrime 20441 },
  { lower := 20586, upper := 20707, witness := RowWitness.topPrime 20563 },
  { lower := 20708, upper := 20851, witness := RowWitness.topPrime 20707 },
  { lower := 20852, upper := 20879, witness := RowWitness.topPrime 20849 },
  { lower := 21316, upper := 21362, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 22007, witness := RowWitness.topPrime 21863 },
  { lower := 22008, upper := 22014, witness := RowWitness.topPrime 22003 },
  { lower := 22090, upper := 22114, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22234, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22332, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22470, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22613, witness := RowWitness.topPrime 22469 },
  { lower := 22614, upper := 22616, witness := RowWitness.topPrime 22613 },
  { lower := 23763, upper := 23905, witness := RowWitness.topPrime 23761 },
  { lower := 23906, upper := 23906, witness := RowWitness.topPrime 23899 },
  { lower := 24037, upper := 24173, witness := RowWitness.topPrime 24029 },
  { lower := 24174, upper := 24201, witness := RowWitness.topPrime 24169 },
  { lower := 24299, upper := 24311, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24473, witness := RowWitness.topPrime 24329 },
  { lower := 24474, upper := 24478, witness := RowWitness.topPrime 24473 },
  { lower := 24576, upper := 24709, witness := RowWitness.topPrime 24571 },
  { lower := 25215, upper := 25333, witness := RowWitness.topPrime 25189 },
  { lower := 25334, upper := 25359, witness := RowWitness.topPrime 25321 },
  { lower := 26364, upper := 26388, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26551, witness := RowWitness.topPrime 26407 },
  { lower := 26552, upper := 26555, witness := RowWitness.topPrime 26539 },
  { lower := 26624, upper := 26741, witness := RowWitness.topPrime 26597 },
  { lower := 26742, upper := 26768, witness := RowWitness.topPrime 26737 },
  { lower := 27556, upper := 27580, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27879, witness := RowWitness.topPrime 27847 },
  { lower := 28227, upper := 28234, witness := RowWitness.topPrime 28219 },
  { lower := 28561, upper := 28575, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28705, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28855, witness := RowWitness.topPrime 28711 },
  { lower := 28856, upper := 28861, witness := RowWitness.topPrime 28843 },
  { lower := 29791, upper := 29912, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30737, witness := RowWitness.topPrime 30593 },
  { lower := 30738, upper := 30864, witness := RowWitness.topPrime 30727 },
  { lower := 30899, upper := 30902, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31043, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31337, witness := RowWitness.topPrime 31193 },
  { lower := 31338, upper := 31394, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31473, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31828, witness := RowWitness.topPrime 31817 },
  { lower := 32805, upper := 32912, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33633, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33758, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34463, witness := RowWitness.topPrime 34319 },
  { lower := 34464, upper := 34535, witness := RowWitness.topPrime 34457 },
  { lower := 36015, upper := 36056, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36641, witness := RowWitness.topPrime 36497 },
  { lower := 36642, upper := 36645, witness := RowWitness.topPrime 36637 },
  { lower := 37303, upper := 37354, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37447, witness := RowWitness.topPrime 37441 },
  { lower := 37538, upper := 37590, witness := RowWitness.topPrime 37537 },
  { lower := 37636, upper := 37682, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38435, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39467, witness := RowWitness.topPrime 39323 },
  { lower := 39468, upper := 39470, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40472, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40948, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41075, witness := RowWitness.topPrime 40949 },
  { lower := 45927, upper := 45940, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47665, witness := RowWitness.topPrime 47521 },
  { lower := 47666, upper := 47668, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48105, witness := RowWitness.topPrime 47981 },
  { lower := 49152, upper := 49274, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50554, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51149, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55585, witness := RowWitness.topPrime 55441 },
  { lower := 55586, upper := 55591, witness := RowWitness.topPrime 55579 },
  { lower := 56307, upper := 56313, witness := RowWitness.topPrime 56299 },
  { lower := 57245, upper := 57266, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57389, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58708, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59100, witness := RowWitness.topPrime 59029 },
  { lower := 63948, upper := 63989, witness := RowWitness.topPrime 63929 },
  { lower := 65610, upper := 65680, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68783, witness := RowWitness.topPrime 68639 },
  { lower := 68784, upper := 68795, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69034, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71431, witness := RowWitness.topPrime 71287 },
  { lower := 71432, upper := 71433, witness := RowWitness.topPrime 71429 },
  { lower := 85805, upper := 85827, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89517, witness := RowWitness.topPrime 89381 },
  { lower := 98415, upper := 98448, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103110, witness := RowWitness.topPrime 103007 },
  { lower := 137842, upper := 137925, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149021, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154593, witness := RowWitness.topPrime 154543 }
]

def row145_layers : List CoverLayer := [
  { lower := 20880, upper := 41760, M := 15 },
  { lower := 41760, upper := 83520, M := 12 },
  { lower := 83520, upper := 167040, M := 9 },
  { lower := 167040, upper := 334080, M := 7 },
  { lower := 334080, upper := 668160, M := 5 },
  { lower := 668160, upper := 1336320, M := 4 },
  { lower := 1336320, upper := 2672640, M := 3 },
  { lower := 2672640, upper := 5345280, M := 2 },
  { lower := 5345280, upper := 10690560, M := 2 },
  { lower := 10690560, upper := 21381120, M := 2 },
  { lower := 21381120, upper := 42762240, M := 1 },
  { lower := 42762240, upper := 85524480, M := 1 },
  { lower := 85524480, upper := 100000000, M := 1 }
]

def row145 : FiniteCoverRow := {
  height := row145_height,
  goods := row145_goods,
  layers := row145_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good000_checked :
    goodSegmentCheck 145 48 102
      { lower := 292, upper := 427, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good001_checked :
    goodSegmentCheck 145 48 102
      { lower := 428, upper := 565, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good002_checked :
    goodSegmentCheck 145 48 102
      { lower := 566, upper := 707, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good003_checked :
    goodSegmentCheck 145 48 102
      { lower := 708, upper := 845, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good004_checked :
    goodSegmentCheck 145 48 102
      { lower := 846, upper := 983, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good005_checked :
    goodSegmentCheck 145 48 102
      { lower := 984, upper := 1127, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good006_checked :
    goodSegmentCheck 145 48 102
      { lower := 1128, upper := 1267, witness := RowWitness.topPrime 1123 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good007_checked :
    goodSegmentCheck 145 48 102
      { lower := 1268, upper := 1403, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good008_checked :
    goodSegmentCheck 145 48 102
      { lower := 1404, upper := 1543, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good009_checked :
    goodSegmentCheck 145 48 102
      { lower := 1544, upper := 1687, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good010_checked :
    goodSegmentCheck 145 48 102
      { lower := 1688, upper := 1813, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good011_checked :
    goodSegmentCheck 145 48 102
      { lower := 1814, upper := 1955, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good012_checked :
    goodSegmentCheck 145 48 102
      { lower := 1956, upper := 2095, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good013_checked :
    goodSegmentCheck 145 48 102
      { lower := 2096, upper := 2233, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good014_checked :
    goodSegmentCheck 145 48 102
      { lower := 2234, upper := 2365, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good015_checked :
    goodSegmentCheck 145 48 102
      { lower := 2366, upper := 2501, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good016_checked :
    goodSegmentCheck 145 48 102
      { lower := 2502, upper := 2621, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good017_checked :
    goodSegmentCheck 145 48 102
      { lower := 2622, upper := 2765, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good018_checked :
    goodSegmentCheck 145 48 102
      { lower := 2766, upper := 2897, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good019_checked :
    goodSegmentCheck 145 48 102
      { lower := 2898, upper := 3041, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good020_checked :
    goodSegmentCheck 145 48 102
      { lower := 3042, upper := 3185, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good021_checked :
    goodSegmentCheck 145 48 102
      { lower := 3186, upper := 3325, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good022_checked :
    goodSegmentCheck 145 48 102
      { lower := 3326, upper := 3467, witness := RowWitness.topPrime 3323 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good023_checked :
    goodSegmentCheck 145 48 102
      { lower := 3468, upper := 3611, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good024_checked :
    goodSegmentCheck 145 48 102
      { lower := 3612, upper := 3751, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good025_checked :
    goodSegmentCheck 145 48 102
      { lower := 3752, upper := 3883, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good026_checked :
    goodSegmentCheck 145 48 102
      { lower := 3884, upper := 4025, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good027_checked :
    goodSegmentCheck 145 48 102
      { lower := 4026, upper := 4165, witness := RowWitness.topPrime 4021 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good028_checked :
    goodSegmentCheck 145 48 102
      { lower := 4166, upper := 4303, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good029_checked :
    goodSegmentCheck 145 48 102
      { lower := 4304, upper := 4441, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good030_checked :
    goodSegmentCheck 145 48 102
      { lower := 4442, upper := 4585, witness := RowWitness.topPrime 4441 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good031_checked :
    goodSegmentCheck 145 48 102
      { lower := 4586, upper := 4727, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good032_checked :
    goodSegmentCheck 145 48 102
      { lower := 4728, upper := 4867, witness := RowWitness.topPrime 4723 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good033_checked :
    goodSegmentCheck 145 48 102
      { lower := 4868, upper := 5005, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good034_checked :
    goodSegmentCheck 145 48 102
      { lower := 5006, upper := 5147, witness := RowWitness.topPrime 5003 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good035_checked :
    goodSegmentCheck 145 48 102
      { lower := 5148, upper := 5291, witness := RowWitness.topPrime 5147 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good036_checked :
    goodSegmentCheck 145 48 102
      { lower := 5292, upper := 5425, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good037_checked :
    goodSegmentCheck 145 48 102
      { lower := 5426, upper := 5563, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good038_checked :
    goodSegmentCheck 145 48 102
      { lower := 5564, upper := 5707, witness := RowWitness.topPrime 5563 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good039_checked :
    goodSegmentCheck 145 48 102
      { lower := 5708, upper := 5845, witness := RowWitness.topPrime 5701 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good040_checked :
    goodSegmentCheck 145 48 102
      { lower := 5846, upper := 5987, witness := RowWitness.topPrime 5843 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good041_checked :
    goodSegmentCheck 145 48 102
      { lower := 5988, upper := 6131, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good042_checked :
    goodSegmentCheck 145 48 102
      { lower := 6132, upper := 6275, witness := RowWitness.topPrime 6131 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good043_checked :
    goodSegmentCheck 145 48 102
      { lower := 6276, upper := 6415, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good044_checked :
    goodSegmentCheck 145 48 102
      { lower := 6416, upper := 6541, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good045_checked :
    goodSegmentCheck 145 48 102
      { lower := 6542, upper := 6673, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good046_checked :
    goodSegmentCheck 145 48 102
      { lower := 6674, upper := 6817, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good047_checked :
    goodSegmentCheck 145 48 102
      { lower := 6818, upper := 6947, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good048_checked :
    goodSegmentCheck 145 48 102
      { lower := 6948, upper := 7091, witness := RowWitness.topPrime 6947 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good049_checked :
    goodSegmentCheck 145 48 102
      { lower := 7092, upper := 7223, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good050_checked :
    goodSegmentCheck 145 48 102
      { lower := 7224, upper := 7363, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good051_checked :
    goodSegmentCheck 145 48 102
      { lower := 7364, upper := 7495, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good052_checked :
    goodSegmentCheck 145 48 102
      { lower := 7496, upper := 7633, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good053_checked :
    goodSegmentCheck 145 48 102
      { lower := 7634, upper := 7765, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good054_checked :
    goodSegmentCheck 145 48 102
      { lower := 7766, upper := 7903, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good055_checked :
    goodSegmentCheck 145 48 102
      { lower := 7904, upper := 8045, witness := RowWitness.topPrime 7901 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good056_checked :
    goodSegmentCheck 145 48 102
      { lower := 8046, upper := 8183, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good057_checked :
    goodSegmentCheck 145 48 102
      { lower := 8184, upper := 8323, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good058_checked :
    goodSegmentCheck 145 48 102
      { lower := 8324, upper := 8461, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good059_checked :
    goodSegmentCheck 145 48 102
      { lower := 8462, upper := 8605, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good060_checked :
    goodSegmentCheck 145 48 102
      { lower := 8606, upper := 8743, witness := RowWitness.topPrime 8599 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good061_checked :
    goodSegmentCheck 145 48 102
      { lower := 8744, upper := 8885, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good062_checked :
    goodSegmentCheck 145 48 102
      { lower := 8886, upper := 9011, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good063_checked :
    goodSegmentCheck 145 48 102
      { lower := 9012, upper := 9155, witness := RowWitness.topPrime 9011 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good064_checked :
    goodSegmentCheck 145 48 102
      { lower := 9156, upper := 9295, witness := RowWitness.topPrime 9151 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good065_checked :
    goodSegmentCheck 145 48 102
      { lower := 9296, upper := 9437, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good066_checked :
    goodSegmentCheck 145 48 102
      { lower := 9438, upper := 9581, witness := RowWitness.topPrime 9437 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good067_checked :
    goodSegmentCheck 145 48 102
      { lower := 9582, upper := 9695, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good068_checked :
    goodSegmentCheck 145 48 102
      { lower := 9696, upper := 9833, witness := RowWitness.topPrime 9689 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good069_checked :
    goodSegmentCheck 145 48 102
      { lower := 9834, upper := 9977, witness := RowWitness.topPrime 9833 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good070_checked :
    goodSegmentCheck 145 48 102
      { lower := 9978, upper := 10117, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good071_checked :
    goodSegmentCheck 145 48 102
      { lower := 10118, upper := 10255, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good072_checked :
    goodSegmentCheck 145 48 102
      { lower := 10256, upper := 10397, witness := RowWitness.topPrime 10253 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good073_checked :
    goodSegmentCheck 145 48 102
      { lower := 10398, upper := 10535, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good074_checked :
    goodSegmentCheck 145 48 102
      { lower := 10536, upper := 10675, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good075_checked :
    goodSegmentCheck 145 48 102
      { lower := 10676, upper := 10811, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good076_checked :
    goodSegmentCheck 145 48 102
      { lower := 10812, upper := 10943, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good077_checked :
    goodSegmentCheck 145 48 102
      { lower := 10944, upper := 11083, witness := RowWitness.topPrime 10939 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good078_checked :
    goodSegmentCheck 145 48 102
      { lower := 11084, upper := 11227, witness := RowWitness.topPrime 11083 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good079_checked :
    goodSegmentCheck 145 48 102
      { lower := 11228, upper := 11357, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good080_checked :
    goodSegmentCheck 145 48 102
      { lower := 11358, upper := 11497, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good081_checked :
    goodSegmentCheck 145 48 102
      { lower := 11498, upper := 11641, witness := RowWitness.topPrime 11497 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good082_checked :
    goodSegmentCheck 145 48 102
      { lower := 11642, upper := 11777, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good083_checked :
    goodSegmentCheck 145 48 102
      { lower := 11778, upper := 11921, witness := RowWitness.topPrime 11777 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good084_checked :
    goodSegmentCheck 145 48 102
      { lower := 11922, upper := 12053, witness := RowWitness.topPrime 11909 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good085_checked :
    goodSegmentCheck 145 48 102
      { lower := 12054, upper := 12193, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good086_checked :
    goodSegmentCheck 145 48 102
      { lower := 12194, upper := 12307, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good087_checked :
    goodSegmentCheck 145 48 102
      { lower := 12308, upper := 12445, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good088_checked :
    goodSegmentCheck 145 48 102
      { lower := 12446, upper := 12581, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good089_checked :
    goodSegmentCheck 145 48 102
      { lower := 12582, upper := 12721, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good090_checked :
    goodSegmentCheck 145 48 102
      { lower := 12722, upper := 12865, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good091_checked :
    goodSegmentCheck 145 48 102
      { lower := 12866, upper := 12997, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good092_checked :
    goodSegmentCheck 145 48 102
      { lower := 12998, upper := 13127, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good093_checked :
    goodSegmentCheck 145 48 102
      { lower := 13128, upper := 13271, witness := RowWitness.topPrime 13127 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good094_checked :
    goodSegmentCheck 145 48 102
      { lower := 13272, upper := 13411, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good095_checked :
    goodSegmentCheck 145 48 102
      { lower := 13412, upper := 13555, witness := RowWitness.topPrime 13411 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good096_checked :
    goodSegmentCheck 145 48 102
      { lower := 13556, upper := 13697, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good097_checked :
    goodSegmentCheck 145 48 102
      { lower := 13698, upper := 13841, witness := RowWitness.topPrime 13697 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good098_checked :
    goodSegmentCheck 145 48 102
      { lower := 13842, upper := 13985, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good099_checked :
    goodSegmentCheck 145 48 102
      { lower := 13986, upper := 14111, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good100_checked :
    goodSegmentCheck 145 48 102
      { lower := 14112, upper := 14251, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good101_checked :
    goodSegmentCheck 145 48 102
      { lower := 14252, upper := 14395, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good102_checked :
    goodSegmentCheck 145 48 102
      { lower := 14396, upper := 14533, witness := RowWitness.topPrime 14389 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good103_checked :
    goodSegmentCheck 145 48 102
      { lower := 14534, upper := 14677, witness := RowWitness.topPrime 14533 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good104_checked :
    goodSegmentCheck 145 48 102
      { lower := 14678, upper := 14813, witness := RowWitness.topPrime 14669 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good105_checked :
    goodSegmentCheck 145 48 102
      { lower := 14814, upper := 14957, witness := RowWitness.topPrime 14813 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good106_checked :
    goodSegmentCheck 145 48 102
      { lower := 14958, upper := 15101, witness := RowWitness.topPrime 14957 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good107_checked :
    goodSegmentCheck 145 48 102
      { lower := 15102, upper := 15245, witness := RowWitness.topPrime 15101 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good108_checked :
    goodSegmentCheck 145 48 102
      { lower := 15246, upper := 15385, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good109_checked :
    goodSegmentCheck 145 48 102
      { lower := 15386, upper := 15527, witness := RowWitness.topPrime 15383 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good110_checked :
    goodSegmentCheck 145 48 102
      { lower := 15528, upper := 15671, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good111_checked :
    goodSegmentCheck 145 48 102
      { lower := 15672, upper := 15815, witness := RowWitness.topPrime 15671 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good112_checked :
    goodSegmentCheck 145 48 102
      { lower := 15816, upper := 15953, witness := RowWitness.topPrime 15809 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good113_checked :
    goodSegmentCheck 145 48 102
      { lower := 15954, upper := 16081, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good114_checked :
    goodSegmentCheck 145 48 102
      { lower := 16082, upper := 16217, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good115_checked :
    goodSegmentCheck 145 48 102
      { lower := 16218, upper := 16361, witness := RowWitness.topPrime 16217 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good116_checked :
    goodSegmentCheck 145 48 102
      { lower := 16362, upper := 16505, witness := RowWitness.topPrime 16361 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good117_checked :
    goodSegmentCheck 145 48 102
      { lower := 16506, upper := 16637, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good118_checked :
    goodSegmentCheck 145 48 102
      { lower := 16638, upper := 16777, witness := RowWitness.topPrime 16633 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good119_checked :
    goodSegmentCheck 145 48 102
      { lower := 16778, upper := 16907, witness := RowWitness.topPrime 16763 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good120_checked :
    goodSegmentCheck 145 48 102
      { lower := 16908, upper := 17047, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good121_checked :
    goodSegmentCheck 145 48 102
      { lower := 17048, upper := 17191, witness := RowWitness.topPrime 17047 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good122_checked :
    goodSegmentCheck 145 48 102
      { lower := 17192, upper := 17335, witness := RowWitness.topPrime 17191 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good123_checked :
    goodSegmentCheck 145 48 102
      { lower := 17336, upper := 17477, witness := RowWitness.topPrime 17333 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good124_checked :
    goodSegmentCheck 145 48 102
      { lower := 17478, upper := 17621, witness := RowWitness.topPrime 17477 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good125_checked :
    goodSegmentCheck 145 48 102
      { lower := 17622, upper := 17753, witness := RowWitness.topPrime 17609 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good126_checked :
    goodSegmentCheck 145 48 102
      { lower := 17754, upper := 17893, witness := RowWitness.topPrime 17749 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good127_checked :
    goodSegmentCheck 145 48 102
      { lower := 17894, upper := 18035, witness := RowWitness.topPrime 17891 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good128_checked :
    goodSegmentCheck 145 48 102
      { lower := 18036, upper := 18157, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good129_checked :
    goodSegmentCheck 145 48 102
      { lower := 18158, upper := 18293, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good130_checked :
    goodSegmentCheck 145 48 102
      { lower := 18294, upper := 18433, witness := RowWitness.topPrime 18289 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good131_checked :
    goodSegmentCheck 145 48 102
      { lower := 18434, upper := 18577, witness := RowWitness.topPrime 18433 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good132_checked :
    goodSegmentCheck 145 48 102
      { lower := 18578, upper := 18697, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good133_checked :
    goodSegmentCheck 145 48 102
      { lower := 18698, upper := 18835, witness := RowWitness.topPrime 18691 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good134_checked :
    goodSegmentCheck 145 48 102
      { lower := 18836, upper := 18947, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good135_checked :
    goodSegmentCheck 145 48 102
      { lower := 18948, upper := 19091, witness := RowWitness.topPrime 18947 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good136_checked :
    goodSegmentCheck 145 48 102
      { lower := 19092, upper := 19231, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good137_checked :
    goodSegmentCheck 145 48 102
      { lower := 19232, upper := 19375, witness := RowWitness.topPrime 19231 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good138_checked :
    goodSegmentCheck 145 48 102
      { lower := 19376, upper := 19517, witness := RowWitness.topPrime 19373 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good139_checked :
    goodSegmentCheck 145 48 102
      { lower := 19518, upper := 19651, witness := RowWitness.topPrime 19507 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good140_checked :
    goodSegmentCheck 145 48 102
      { lower := 19652, upper := 19753, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good141_checked :
    goodSegmentCheck 145 48 102
      { lower := 19754, upper := 19897, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good142_checked :
    goodSegmentCheck 145 48 102
      { lower := 19898, upper := 20035, witness := RowWitness.topPrime 19891 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good143_checked :
    goodSegmentCheck 145 48 102
      { lower := 20036, upper := 20173, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good144_checked :
    goodSegmentCheck 145 48 102
      { lower := 20174, upper := 20317, witness := RowWitness.topPrime 20173 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good145_checked :
    goodSegmentCheck 145 48 102
      { lower := 20318, upper := 20441, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good146_checked :
    goodSegmentCheck 145 48 102
      { lower := 20442, upper := 20585, witness := RowWitness.topPrime 20441 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good147_checked :
    goodSegmentCheck 145 48 102
      { lower := 20586, upper := 20707, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good148_checked :
    goodSegmentCheck 145 48 102
      { lower := 20708, upper := 20851, witness := RowWitness.topPrime 20707 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good149_checked :
    goodSegmentCheck 145 48 102
      { lower := 20852, upper := 20879, witness := RowWitness.topPrime 20849 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good150_checked :
    goodSegmentCheck 145 48 102
      { lower := 21316, upper := 21362, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good151_checked :
    goodSegmentCheck 145 48 102
      { lower := 21870, upper := 22007, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good152_checked :
    goodSegmentCheck 145 48 102
      { lower := 22008, upper := 22014, witness := RowWitness.topPrime 22003 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good153_checked :
    goodSegmentCheck 145 48 102
      { lower := 22090, upper := 22114, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good154_checked :
    goodSegmentCheck 145 48 102
      { lower := 22188, upper := 22234, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good155_checked :
    goodSegmentCheck 145 48 102
      { lower := 22326, upper := 22332, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good156_checked :
    goodSegmentCheck 145 48 102
      { lower := 22445, upper := 22470, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good157_checked :
    goodSegmentCheck 145 48 102
      { lower := 22472, upper := 22613, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good158_checked :
    goodSegmentCheck 145 48 102
      { lower := 22614, upper := 22616, witness := RowWitness.topPrime 22613 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good159_checked :
    goodSegmentCheck 145 48 102
      { lower := 23763, upper := 23905, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good160_checked :
    goodSegmentCheck 145 48 102
      { lower := 23906, upper := 23906, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good161_checked :
    goodSegmentCheck 145 48 102
      { lower := 24037, upper := 24173, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good162_checked :
    goodSegmentCheck 145 48 102
      { lower := 24174, upper := 24201, witness := RowWitness.topPrime 24169 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good163_checked :
    goodSegmentCheck 145 48 102
      { lower := 24299, upper := 24311, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good164_checked :
    goodSegmentCheck 145 48 102
      { lower := 24334, upper := 24473, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good165_checked :
    goodSegmentCheck 145 48 102
      { lower := 24474, upper := 24478, witness := RowWitness.topPrime 24473 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good166_checked :
    goodSegmentCheck 145 48 102
      { lower := 24576, upper := 24709, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good167_checked :
    goodSegmentCheck 145 48 102
      { lower := 25215, upper := 25333, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good168_checked :
    goodSegmentCheck 145 48 102
      { lower := 25334, upper := 25359, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good169_checked :
    goodSegmentCheck 145 48 102
      { lower := 26364, upper := 26388, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good170_checked :
    goodSegmentCheck 145 48 102
      { lower := 26411, upper := 26551, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good171_checked :
    goodSegmentCheck 145 48 102
      { lower := 26552, upper := 26555, witness := RowWitness.topPrime 26539 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good172_checked :
    goodSegmentCheck 145 48 102
      { lower := 26624, upper := 26741, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good173_checked :
    goodSegmentCheck 145 48 102
      { lower := 26742, upper := 26768, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good174_checked :
    goodSegmentCheck 145 48 102
      { lower := 27556, upper := 27580, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good175_checked :
    goodSegmentCheck 145 48 102
      { lower := 27848, upper := 27879, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good176_checked :
    goodSegmentCheck 145 48 102
      { lower := 28227, upper := 28234, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good177_checked :
    goodSegmentCheck 145 48 102
      { lower := 28561, upper := 28575, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good178_checked :
    goodSegmentCheck 145 48 102
      { lower := 28672, upper := 28705, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good179_checked :
    goodSegmentCheck 145 48 102
      { lower := 28717, upper := 28855, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good180_checked :
    goodSegmentCheck 145 48 102
      { lower := 28856, upper := 28861, witness := RowWitness.topPrime 28843 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good181_checked :
    goodSegmentCheck 145 48 102
      { lower := 29791, upper := 29912, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good182_checked :
    goodSegmentCheck 145 48 102
      { lower := 30618, upper := 30737, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good183_checked :
    goodSegmentCheck 145 48 102
      { lower := 30738, upper := 30864, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good184_checked :
    goodSegmentCheck 145 48 102
      { lower := 30899, upper := 30902, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good185_checked :
    goodSegmentCheck 145 48 102
      { lower := 30926, upper := 31043, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good186_checked :
    goodSegmentCheck 145 48 102
      { lower := 31213, upper := 31337, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good187_checked :
    goodSegmentCheck 145 48 102
      { lower := 31338, upper := 31394, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good188_checked :
    goodSegmentCheck 145 48 102
      { lower := 31423, upper := 31473, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good189_checked :
    goodSegmentCheck 145 48 102
      { lower := 31827, upper := 31828, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good190_checked :
    goodSegmentCheck 145 48 102
      { lower := 32805, upper := 32912, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good191_checked :
    goodSegmentCheck 145 48 102
      { lower := 33614, upper := 33633, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good192_checked :
    goodSegmentCheck 145 48 102
      { lower := 33708, upper := 33758, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good193_checked :
    goodSegmentCheck 145 48 102
      { lower := 34322, upper := 34463, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good194_checked :
    goodSegmentCheck 145 48 102
      { lower := 34464, upper := 34535, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good195_checked :
    goodSegmentCheck 145 48 102
      { lower := 36015, upper := 36056, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good196_checked :
    goodSegmentCheck 145 48 102
      { lower := 36517, upper := 36641, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good197_checked :
    goodSegmentCheck 145 48 102
      { lower := 36642, upper := 36645, witness := RowWitness.topPrime 36637 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good198_checked :
    goodSegmentCheck 145 48 102
      { lower := 37303, upper := 37354, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good199_checked :
    goodSegmentCheck 145 48 102
      { lower := 37446, upper := 37447, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good200_checked :
    goodSegmentCheck 145 48 102
      { lower := 37538, upper := 37590, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good201_checked :
    goodSegmentCheck 145 48 102
      { lower := 37636, upper := 37682, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good202_checked :
    goodSegmentCheck 145 48 102
      { lower := 38307, upper := 38435, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good203_checked :
    goodSegmentCheck 145 48 102
      { lower := 39326, upper := 39467, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good204_checked :
    goodSegmentCheck 145 48 102
      { lower := 39468, upper := 39470, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good205_checked :
    goodSegmentCheck 145 48 102
      { lower := 40401, upper := 40472, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good206_checked :
    goodSegmentCheck 145 48 102
      { lower := 40931, upper := 40948, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good207_checked :
    goodSegmentCheck 145 48 102
      { lower := 40960, upper := 41075, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good208_checked :
    goodSegmentCheck 145 48 102
      { lower := 45927, upper := 45940, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good209_checked :
    goodSegmentCheck 145 48 102
      { lower := 47526, upper := 47665, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good210_checked :
    goodSegmentCheck 145 48 102
      { lower := 47666, upper := 47668, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good211_checked :
    goodSegmentCheck 145 48 102
      { lower := 48013, upper := 48105, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good212_checked :
    goodSegmentCheck 145 48 102
      { lower := 49152, upper := 49274, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good213_checked :
    goodSegmentCheck 145 48 102
      { lower := 50421, upper := 50554, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good214_checked :
    goodSegmentCheck 145 48 102
      { lower := 51076, upper := 51149, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good215_checked :
    goodSegmentCheck 145 48 102
      { lower := 55451, upper := 55585, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good216_checked :
    goodSegmentCheck 145 48 102
      { lower := 55586, upper := 55591, witness := RowWitness.topPrime 55579 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good217_checked :
    goodSegmentCheck 145 48 102
      { lower := 56307, upper := 56313, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good218_checked :
    goodSegmentCheck 145 48 102
      { lower := 57245, upper := 57266, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good219_checked :
    goodSegmentCheck 145 48 102
      { lower := 57344, upper := 57389, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good220_checked :
    goodSegmentCheck 145 48 102
      { lower := 58619, upper := 58708, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good221_checked :
    goodSegmentCheck 145 48 102
      { lower := 59049, upper := 59100, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good222_checked :
    goodSegmentCheck 145 48 102
      { lower := 63948, upper := 63989, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good223_checked :
    goodSegmentCheck 145 48 102
      { lower := 65610, upper := 65680, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_good224_checked :
    goodSegmentCheck 145 48 102
      { lower := 68644, upper := 68783, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good225_checked :
    goodSegmentCheck 145 48 102
      { lower := 68784, upper := 68795, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good226_checked :
    goodSegmentCheck 145 48 102
      { lower := 68921, upper := 69034, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good227_checked :
    goodSegmentCheck 145 48 102
      { lower := 71289, upper := 71431, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good228_checked :
    goodSegmentCheck 145 48 102
      { lower := 71432, upper := 71433, witness := RowWitness.topPrime 71429 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good229_checked :
    goodSegmentCheck 145 48 102
      { lower := 85805, upper := 85827, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good230_checked :
    goodSegmentCheck 145 48 102
      { lower := 89383, upper := 89517, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good231_checked :
    goodSegmentCheck 145 48 102
      { lower := 98415, upper := 98448, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good232_checked :
    goodSegmentCheck 145 48 102
      { lower := 103041, upper := 103110, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good233_checked :
    goodSegmentCheck 145 48 102
      { lower := 137842, upper := 137925, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good234_checked :
    goodSegmentCheck 145 48 102
      { lower := 148955, upper := 149021, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row145_good235_checked :
    goodSegmentCheck 145 48 102
      { lower := 154568, upper := 154593, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 145) (r := 48) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_good235_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_goods_checked :
    row145.goods.all (goodSegmentCheck row145.height.i row145.height.r row145.height.s) = true := by
  change row145_goods.all (goodSegmentCheck 145 48 102) = true
  simp only [row145_goods, List.all_cons, List.all_nil,
    row145_good000_checked,
    row145_good001_checked,
    row145_good002_checked,
    row145_good003_checked,
    row145_good004_checked,
    row145_good005_checked,
    row145_good006_checked,
    row145_good007_checked,
    row145_good008_checked,
    row145_good009_checked,
    row145_good010_checked,
    row145_good011_checked,
    row145_good012_checked,
    row145_good013_checked,
    row145_good014_checked,
    row145_good015_checked,
    row145_good016_checked,
    row145_good017_checked,
    row145_good018_checked,
    row145_good019_checked,
    row145_good020_checked,
    row145_good021_checked,
    row145_good022_checked,
    row145_good023_checked,
    row145_good024_checked,
    row145_good025_checked,
    row145_good026_checked,
    row145_good027_checked,
    row145_good028_checked,
    row145_good029_checked,
    row145_good030_checked,
    row145_good031_checked,
    row145_good032_checked,
    row145_good033_checked,
    row145_good034_checked,
    row145_good035_checked,
    row145_good036_checked,
    row145_good037_checked,
    row145_good038_checked,
    row145_good039_checked,
    row145_good040_checked,
    row145_good041_checked,
    row145_good042_checked,
    row145_good043_checked,
    row145_good044_checked,
    row145_good045_checked,
    row145_good046_checked,
    row145_good047_checked,
    row145_good048_checked,
    row145_good049_checked,
    row145_good050_checked,
    row145_good051_checked,
    row145_good052_checked,
    row145_good053_checked,
    row145_good054_checked,
    row145_good055_checked,
    row145_good056_checked,
    row145_good057_checked,
    row145_good058_checked,
    row145_good059_checked,
    row145_good060_checked,
    row145_good061_checked,
    row145_good062_checked,
    row145_good063_checked,
    row145_good064_checked,
    row145_good065_checked,
    row145_good066_checked,
    row145_good067_checked,
    row145_good068_checked,
    row145_good069_checked,
    row145_good070_checked,
    row145_good071_checked,
    row145_good072_checked,
    row145_good073_checked,
    row145_good074_checked,
    row145_good075_checked,
    row145_good076_checked,
    row145_good077_checked,
    row145_good078_checked,
    row145_good079_checked,
    row145_good080_checked,
    row145_good081_checked,
    row145_good082_checked,
    row145_good083_checked,
    row145_good084_checked,
    row145_good085_checked,
    row145_good086_checked,
    row145_good087_checked,
    row145_good088_checked,
    row145_good089_checked,
    row145_good090_checked,
    row145_good091_checked,
    row145_good092_checked,
    row145_good093_checked,
    row145_good094_checked,
    row145_good095_checked,
    row145_good096_checked,
    row145_good097_checked,
    row145_good098_checked,
    row145_good099_checked,
    row145_good100_checked,
    row145_good101_checked,
    row145_good102_checked,
    row145_good103_checked,
    row145_good104_checked,
    row145_good105_checked,
    row145_good106_checked,
    row145_good107_checked,
    row145_good108_checked,
    row145_good109_checked,
    row145_good110_checked,
    row145_good111_checked,
    row145_good112_checked,
    row145_good113_checked,
    row145_good114_checked,
    row145_good115_checked,
    row145_good116_checked,
    row145_good117_checked,
    row145_good118_checked,
    row145_good119_checked,
    row145_good120_checked,
    row145_good121_checked,
    row145_good122_checked,
    row145_good123_checked,
    row145_good124_checked,
    row145_good125_checked,
    row145_good126_checked,
    row145_good127_checked,
    row145_good128_checked,
    row145_good129_checked,
    row145_good130_checked,
    row145_good131_checked,
    row145_good132_checked,
    row145_good133_checked,
    row145_good134_checked,
    row145_good135_checked,
    row145_good136_checked,
    row145_good137_checked,
    row145_good138_checked,
    row145_good139_checked,
    row145_good140_checked,
    row145_good141_checked,
    row145_good142_checked,
    row145_good143_checked,
    row145_good144_checked,
    row145_good145_checked,
    row145_good146_checked,
    row145_good147_checked,
    row145_good148_checked,
    row145_good149_checked,
    row145_good150_checked,
    row145_good151_checked,
    row145_good152_checked,
    row145_good153_checked,
    row145_good154_checked,
    row145_good155_checked,
    row145_good156_checked,
    row145_good157_checked,
    row145_good158_checked,
    row145_good159_checked,
    row145_good160_checked,
    row145_good161_checked,
    row145_good162_checked,
    row145_good163_checked,
    row145_good164_checked,
    row145_good165_checked,
    row145_good166_checked,
    row145_good167_checked,
    row145_good168_checked,
    row145_good169_checked,
    row145_good170_checked,
    row145_good171_checked,
    row145_good172_checked,
    row145_good173_checked,
    row145_good174_checked,
    row145_good175_checked,
    row145_good176_checked,
    row145_good177_checked,
    row145_good178_checked,
    row145_good179_checked,
    row145_good180_checked,
    row145_good181_checked,
    row145_good182_checked,
    row145_good183_checked,
    row145_good184_checked,
    row145_good185_checked,
    row145_good186_checked,
    row145_good187_checked,
    row145_good188_checked,
    row145_good189_checked,
    row145_good190_checked,
    row145_good191_checked,
    row145_good192_checked,
    row145_good193_checked,
    row145_good194_checked,
    row145_good195_checked,
    row145_good196_checked,
    row145_good197_checked,
    row145_good198_checked,
    row145_good199_checked,
    row145_good200_checked,
    row145_good201_checked,
    row145_good202_checked,
    row145_good203_checked,
    row145_good204_checked,
    row145_good205_checked,
    row145_good206_checked,
    row145_good207_checked,
    row145_good208_checked,
    row145_good209_checked,
    row145_good210_checked,
    row145_good211_checked,
    row145_good212_checked,
    row145_good213_checked,
    row145_good214_checked,
    row145_good215_checked,
    row145_good216_checked,
    row145_good217_checked,
    row145_good218_checked,
    row145_good219_checked,
    row145_good220_checked,
    row145_good221_checked,
    row145_good222_checked,
    row145_good223_checked,
    row145_good224_checked,
    row145_good225_checked,
    row145_good226_checked,
    row145_good227_checked,
    row145_good228_checked,
    row145_good229_checked,
    row145_good230_checked,
    row145_good231_checked,
    row145_good232_checked,
    row145_good233_checked,
    row145_good234_checked,
    row145_good235_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_registered :
    decide (row145.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row145_small_checked :
    coverCheck (2 * row145.height.i + 2) (row145.height.i * (row145.height.i - 1) - 1)
      (row145.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row145_layerCover_checked :
    coverCheck (row145.height.i * (row145.height.i - 1)) (row145.height.n0 - 1)
      (row145.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row145_bounds : List NatInterval :=
  [(292, 427), (428, 565), (566, 707), (708, 845), (846, 983), (984, 1127), (1128, 1267), (1268, 1403), (1404, 1543), (1544, 1687), (1688, 1813), (1814, 1955), (1956, 2095), (2096, 2233), (2234, 2365), (2366, 2501), (2502, 2621), (2622, 2765), (2766, 2897), (2898, 3041), (3042, 3185), (3186, 3325), (3326, 3467), (3468, 3611), (3612, 3751), (3752, 3883), (3884, 4025), (4026, 4165), (4166, 4303), (4304, 4441), (4442, 4585), (4586, 4727), (4728, 4867), (4868, 5005), (5006, 5147), (5148, 5291), (5292, 5425), (5426, 5563), (5564, 5707), (5708, 5845), (5846, 5987), (5988, 6131), (6132, 6275), (6276, 6415), (6416, 6541), (6542, 6673), (6674, 6817), (6818, 6947), (6948, 7091), (7092, 7223), (7224, 7363), (7364, 7495), (7496, 7633), (7634, 7765), (7766, 7903), (7904, 8045), (8046, 8183), (8184, 8323), (8324, 8461), (8462, 8605), (8606, 8743), (8744, 8885), (8886, 9011), (9012, 9155), (9156, 9295), (9296, 9437), (9438, 9581), (9582, 9695), (9696, 9833), (9834, 9977), (9978, 10117), (10118, 10255), (10256, 10397), (10398, 10535), (10536, 10675), (10676, 10811), (10812, 10943), (10944, 11083), (11084, 11227), (11228, 11357), (11358, 11497), (11498, 11641), (11642, 11777), (11778, 11921), (11922, 12053), (12054, 12193), (12194, 12307), (12308, 12445), (12446, 12581), (12582, 12721), (12722, 12865), (12866, 12997), (12998, 13127), (13128, 13271), (13272, 13411), (13412, 13555), (13556, 13697), (13698, 13841), (13842, 13985), (13986, 14111), (14112, 14251), (14252, 14395), (14396, 14533), (14534, 14677), (14678, 14813), (14814, 14957), (14958, 15101), (15102, 15245), (15246, 15385), (15386, 15527), (15528, 15671), (15672, 15815), (15816, 15953), (15954, 16081), (16082, 16217), (16218, 16361), (16362, 16505), (16506, 16637), (16638, 16777), (16778, 16907), (16908, 17047), (17048, 17191), (17192, 17335), (17336, 17477), (17478, 17621), (17622, 17753), (17754, 17893), (17894, 18035), (18036, 18157), (18158, 18293), (18294, 18433), (18434, 18577), (18578, 18697), (18698, 18835), (18836, 18947), (18948, 19091), (19092, 19231), (19232, 19375), (19376, 19517), (19518, 19651), (19652, 19753), (19754, 19897), (19898, 20035), (20036, 20173), (20174, 20317), (20318, 20441), (20442, 20585), (20586, 20707), (20708, 20851), (20852, 20879), (21316, 21362), (21870, 22007), (22008, 22014), (22090, 22114), (22188, 22234), (22326, 22332), (22445, 22470), (22472, 22613), (22614, 22616), (23763, 23905), (23906, 23906), (24037, 24173), (24174, 24201), (24299, 24311), (24334, 24473), (24474, 24478), (24576, 24709), (25215, 25333), (25334, 25359), (26364, 26388), (26411, 26551), (26552, 26555), (26624, 26741), (26742, 26768), (27556, 27580), (27848, 27879), (28227, 28234), (28561, 28575), (28672, 28705), (28717, 28855), (28856, 28861), (29791, 29912), (30618, 30737), (30738, 30864), (30899, 30902), (30926, 31043), (31213, 31337), (31338, 31394), (31423, 31473), (31827, 31828), (32805, 32912), (33614, 33633), (33708, 33758), (34322, 34463), (34464, 34535), (36015, 36056), (36517, 36641), (36642, 36645), (37303, 37354), (37446, 37447), (37538, 37590), (37636, 37682), (38307, 38435), (39326, 39467), (39468, 39470), (40401, 40472), (40931, 40948), (40960, 41075), (45927, 45940), (47526, 47665), (47666, 47668), (48013, 48105), (49152, 49274), (50421, 50554), (51076, 51149), (55451, 55585), (55586, 55591), (56307, 56313), (57245, 57266), (57344, 57389), (58619, 58708), (59049, 59100), (63948, 63989), (65610, 65680), (68644, 68783), (68784, 68795), (68921, 69034), (71289, 71431), (71432, 71433), (85805, 85827), (89383, 89517), (98415, 98448), (103041, 103110), (137842, 137925), (148955, 149021), (154568, 154593)]

theorem row145_bounds_eq : row145.goods.map goodSegmentBounds = row145_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row145_layer000_intervals : List ColouredInterval :=
  [(2, 22528, 22672), (2, 24576, 24720), (2, 26624, 26768), (2, 28672, 28816), (2, 30720, 30864), (2, 24576, 24720), (2, 28672, 28816), (2, 32768, 32912), (2, 36864, 37008), (2, 40960, 41104), (2, 24576, 24720), (2, 32768, 32912), (2, 40960, 41104), (2, 32768, 32912), (2, 32768, 32912), (3, 21870, 22014), (3, 24057, 24201), (3, 26244, 26388), (3, 28431, 28575), (3, 30618, 30762), (3, 32805, 32949), (3, 26244, 26388), (3, 32805, 32949), (3, 39366, 39510), (3, 39366, 39510), (5, 31250, 31394), (7, 21609, 21753), (7, 24010, 24154), (7, 26411, 26555), (7, 28812, 28956), (7, 31213, 31357), (7, 33614, 33758), (7, 36015, 36159), (7, 33614, 33758), (11, 29282, 29426), (13, 21970, 22114), (13, 24167, 24311), (13, 26364, 26508), (13, 28561, 28705), (13, 30758, 30902), (13, 32955, 33099), (13, 28561, 28705), (17, 24565, 24709), (17, 29478, 29622), (17, 34391, 34535), (17, 39304, 39448), (19, 27436, 27580), (19, 34295, 34439), (19, 41154, 41298), (23, 24334, 24478), (23, 36501, 36645), (31, 29791, 29935), (41, 21853, 21997), (41, 23534, 23678), (41, 25215, 25359), (43, 22188, 22332), (43, 24037, 24181), (43, 25886, 26030), (43, 27735, 27879), (47, 22090, 22234), (47, 24299, 24443), (47, 26508, 26652), (47, 28717, 28861), (47, 30926, 31070), (47, 33135, 33279), (53, 22472, 22616), (53, 25281, 25425), (53, 28090, 28234), (53, 30899, 31043), (53, 33708, 33852), (53, 36517, 36661), (53, 39326, 39470), (59, 20886, 21030), (59, 24367, 24511), (59, 27848, 27992), (59, 31329, 31473), (59, 34810, 34954), (59, 38291, 38435), (61, 22326, 22470), (61, 26047, 26191), (61, 29768, 29912), (61, 33489, 33633), (61, 37210, 37354), (61, 40931, 41075), (67, 22445, 22589), (67, 26934, 27078), (67, 31423, 31567), (67, 35912, 36056), (67, 40401, 40545), (71, 25205, 25349), (71, 30246, 30390), (71, 35287, 35431), (71, 40328, 40472), (73, 21316, 21460), (73, 26645, 26789), (73, 31974, 32118), (73, 37303, 37447), (79, 24964, 25108), (79, 31205, 31349), (79, 37446, 37590), (83, 27556, 27700), (83, 34445, 34589), (83, 41334, 41478), (89, 23763, 23907), (89, 31684, 31828), (89, 39605, 39749), (97, 28227, 28371), (97, 37636, 37780), (101, 30603, 30747), (101, 40804, 40948), (103, 21218, 21362), (103, 31827, 31971), (107, 22898, 23042), (107, 34347, 34491), (109, 23762, 23906), (109, 35643, 35787), (113, 25538, 25682), (113, 38307, 38451), (127, 32258, 32402), (131, 34322, 34466), (137, 37538, 37682), (139, 38642, 38786)]

def row145_layer000_block000 : List ColouredInterval :=
  [(2, 22528, 22672), (2, 24576, 24720), (2, 26624, 26768), (2, 28672, 28816), (2, 30720, 30864), (2, 24576, 24720), (2, 28672, 28816), (2, 32768, 32912), (2, 36864, 37008), (2, 40960, 41104), (2, 24576, 24720), (2, 32768, 32912), (2, 40960, 41104), (2, 32768, 32912), (2, 32768, 32912), (3, 21870, 22014)]

def row145_layer000_block001 : List ColouredInterval :=
  [(3, 24057, 24201), (3, 26244, 26388), (3, 28431, 28575), (3, 30618, 30762), (3, 32805, 32949), (3, 26244, 26388), (3, 32805, 32949), (3, 39366, 39510), (3, 39366, 39510), (5, 31250, 31394), (7, 21609, 21753), (7, 24010, 24154), (7, 26411, 26555), (7, 28812, 28956), (7, 31213, 31357), (7, 33614, 33758)]

def row145_layer000_block002 : List ColouredInterval :=
  [(7, 36015, 36159), (7, 33614, 33758), (11, 29282, 29426), (13, 21970, 22114), (13, 24167, 24311), (13, 26364, 26508), (13, 28561, 28705), (13, 30758, 30902), (13, 32955, 33099), (13, 28561, 28705), (17, 24565, 24709), (17, 29478, 29622), (17, 34391, 34535), (17, 39304, 39448), (19, 27436, 27580), (19, 34295, 34439)]

def row145_layer000_block003 : List ColouredInterval :=
  [(19, 41154, 41298), (23, 24334, 24478), (23, 36501, 36645), (31, 29791, 29935), (41, 21853, 21997), (41, 23534, 23678), (41, 25215, 25359), (43, 22188, 22332), (43, 24037, 24181), (43, 25886, 26030), (43, 27735, 27879), (47, 22090, 22234), (47, 24299, 24443), (47, 26508, 26652), (47, 28717, 28861), (47, 30926, 31070)]

def row145_layer000_block004 : List ColouredInterval :=
  [(47, 33135, 33279), (53, 22472, 22616), (53, 25281, 25425), (53, 28090, 28234), (53, 30899, 31043), (53, 33708, 33852), (53, 36517, 36661), (53, 39326, 39470), (59, 20886, 21030), (59, 24367, 24511), (59, 27848, 27992), (59, 31329, 31473), (59, 34810, 34954), (59, 38291, 38435), (61, 22326, 22470), (61, 26047, 26191)]

def row145_layer000_block005 : List ColouredInterval :=
  [(61, 29768, 29912), (61, 33489, 33633), (61, 37210, 37354), (61, 40931, 41075), (67, 22445, 22589), (67, 26934, 27078), (67, 31423, 31567), (67, 35912, 36056), (67, 40401, 40545), (71, 25205, 25349), (71, 30246, 30390), (71, 35287, 35431), (71, 40328, 40472), (73, 21316, 21460), (73, 26645, 26789), (73, 31974, 32118)]

def row145_layer000_block006 : List ColouredInterval :=
  [(73, 37303, 37447), (79, 24964, 25108), (79, 31205, 31349), (79, 37446, 37590), (83, 27556, 27700), (83, 34445, 34589), (83, 41334, 41478), (89, 23763, 23907), (89, 31684, 31828), (89, 39605, 39749), (97, 28227, 28371), (97, 37636, 37780), (101, 30603, 30747), (101, 40804, 40948), (103, 21218, 21362), (103, 31827, 31971)]

def row145_layer000_block007 : List ColouredInterval :=
  [(107, 22898, 23042), (107, 34347, 34491), (109, 23762, 23906), (109, 35643, 35787), (113, 25538, 25682), (113, 38307, 38451), (127, 32258, 32402), (131, 34322, 34466), (137, 37538, 37682), (139, 38642, 38786)]

def row145_layer000_chunks : List (List ColouredInterval) :=
  [row145_layer000_block000, row145_layer000_block001, row145_layer000_block002, row145_layer000_block003, row145_layer000_block004, row145_layer000_block005, row145_layer000_block006, row145_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_arithmetic : LayerArithmeticValid row145.height { lower := 20880, upper := 41760, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_enumeration :
    activePowerIntervalList 145 15 20880 41760 = row145_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_pairs000 :
    row145_layer000_block000.all (fun I => row145_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row145_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_pairs001 :
    row145_layer000_block001.all (fun I => row145_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row145_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_pairs002 :
    row145_layer000_block002.all (fun I => row145_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row145_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_pairs003 :
    row145_layer000_block003.all (fun I => row145_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row145_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_pairs004 :
    row145_layer000_block004.all (fun I => row145_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row145_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_pairs005 :
    row145_layer000_block005.all (fun I => row145_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row145_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_pairs006 :
    row145_layer000_block006.all (fun I => row145_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row145_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_pairs007 :
    row145_layer000_block007.all (fun I => row145_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row145_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_chunks_eq : row145_layer000_chunks.flatten = row145_layer000_intervals := by
  rfl

theorem row145_layer000_pairs : pairCoverCheck row145_layer000_intervals row145_bounds = true := by
  apply pairCoverCheck_of_chunks row145_layer000_chunks_eq
  intro block hblock
  simp only [row145_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row145_layer000_pairs000
  · exact row145_layer000_pairs001
  · exact row145_layer000_pairs002
  · exact row145_layer000_pairs003
  · exact row145_layer000_pairs004
  · exact row145_layer000_pairs005
  · exact row145_layer000_pairs006
  · exact row145_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer000_checked :
    coverLayerCheck row145.height row145.goods { lower := 20880, upper := 41760, M := 15 } = true := by
  exact coverLayerCheck_of_parts row145_layer000_arithmetic row145_layer000_enumeration row145_bounds_eq row145_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer000_checked
