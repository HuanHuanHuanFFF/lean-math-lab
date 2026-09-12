import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row172_height : HeightCertificateDatum := { i := 172, r := 57, s := 122, n0Power10 := 7 }

def row172_goods : List GoodSegment := [
  { lower := 346, upper := 508, witness := RowWitness.topPrime 337 },
  { lower := 509, upper := 680, witness := RowWitness.topPrime 509 },
  { lower := 681, upper := 848, witness := RowWitness.topPrime 677 },
  { lower := 849, upper := 1010, witness := RowWitness.topPrime 839 },
  { lower := 1011, upper := 1180, witness := RowWitness.topPrime 1009 },
  { lower := 1181, upper := 1352, witness := RowWitness.topPrime 1181 },
  { lower := 1353, upper := 1498, witness := RowWitness.topPrime 1327 },
  { lower := 1499, upper := 1670, witness := RowWitness.topPrime 1499 },
  { lower := 1671, upper := 1840, witness := RowWitness.topPrime 1669 },
  { lower := 1841, upper := 2002, witness := RowWitness.topPrime 1831 },
  { lower := 2003, upper := 2174, witness := RowWitness.topPrime 2003 },
  { lower := 2175, upper := 2332, witness := RowWitness.topPrime 2161 },
  { lower := 2333, upper := 2504, witness := RowWitness.topPrime 2333 },
  { lower := 2505, upper := 2674, witness := RowWitness.topPrime 2503 },
  { lower := 2675, upper := 2842, witness := RowWitness.topPrime 2671 },
  { lower := 2843, upper := 3014, witness := RowWitness.topPrime 2843 },
  { lower := 3015, upper := 3182, witness := RowWitness.topPrime 3011 },
  { lower := 3183, upper := 3352, witness := RowWitness.topPrime 3181 },
  { lower := 3353, upper := 3518, witness := RowWitness.topPrime 3347 },
  { lower := 3519, upper := 3688, witness := RowWitness.topPrime 3517 },
  { lower := 3689, upper := 3848, witness := RowWitness.topPrime 3677 },
  { lower := 3849, upper := 4018, witness := RowWitness.topPrime 3847 },
  { lower := 4019, upper := 4190, witness := RowWitness.topPrime 4019 },
  { lower := 4191, upper := 4348, witness := RowWitness.topPrime 4177 },
  { lower := 4349, upper := 4520, witness := RowWitness.topPrime 4349 },
  { lower := 4521, upper := 4690, witness := RowWitness.topPrime 4519 },
  { lower := 4691, upper := 4862, witness := RowWitness.topPrime 4691 },
  { lower := 4863, upper := 5032, witness := RowWitness.topPrime 4861 },
  { lower := 5033, upper := 5194, witness := RowWitness.topPrime 5023 },
  { lower := 5195, upper := 5360, witness := RowWitness.topPrime 5189 },
  { lower := 5361, upper := 5522, witness := RowWitness.topPrime 5351 },
  { lower := 5523, upper := 5692, witness := RowWitness.topPrime 5521 },
  { lower := 5693, upper := 5864, witness := RowWitness.topPrime 5693 },
  { lower := 5865, upper := 6032, witness := RowWitness.topPrime 5861 },
  { lower := 6033, upper := 6200, witness := RowWitness.topPrime 6029 },
  { lower := 6201, upper := 6370, witness := RowWitness.topPrime 6199 },
  { lower := 6371, upper := 6538, witness := RowWitness.topPrime 6367 },
  { lower := 6539, upper := 6700, witness := RowWitness.topPrime 6529 },
  { lower := 6701, upper := 6872, witness := RowWitness.topPrime 6701 },
  { lower := 6873, upper := 7042, witness := RowWitness.topPrime 6871 },
  { lower := 7043, upper := 7214, witness := RowWitness.topPrime 7043 },
  { lower := 7215, upper := 7384, witness := RowWitness.topPrime 7213 },
  { lower := 7385, upper := 7540, witness := RowWitness.topPrime 7369 },
  { lower := 7541, upper := 7712, witness := RowWitness.topPrime 7541 },
  { lower := 7713, upper := 7874, witness := RowWitness.topPrime 7703 },
  { lower := 7875, upper := 8044, witness := RowWitness.topPrime 7873 },
  { lower := 8045, upper := 8210, witness := RowWitness.topPrime 8039 },
  { lower := 8211, upper := 8380, witness := RowWitness.topPrime 8209 },
  { lower := 8381, upper := 8548, witness := RowWitness.topPrime 8377 },
  { lower := 8549, upper := 8714, witness := RowWitness.topPrime 8543 },
  { lower := 8715, upper := 8884, witness := RowWitness.topPrime 8713 },
  { lower := 8885, upper := 9038, witness := RowWitness.topPrime 8867 },
  { lower := 9039, upper := 9200, witness := RowWitness.topPrime 9029 },
  { lower := 9201, upper := 9370, witness := RowWitness.topPrime 9199 },
  { lower := 9371, upper := 9542, witness := RowWitness.topPrime 9371 },
  { lower := 9543, upper := 9710, witness := RowWitness.topPrime 9539 },
  { lower := 9711, upper := 9868, witness := RowWitness.topPrime 9697 },
  { lower := 9869, upper := 10030, witness := RowWitness.topPrime 9859 },
  { lower := 10031, upper := 10180, witness := RowWitness.topPrime 10009 },
  { lower := 10181, upper := 10352, witness := RowWitness.topPrime 10181 },
  { lower := 10353, upper := 10514, witness := RowWitness.topPrime 10343 },
  { lower := 10515, upper := 10684, witness := RowWitness.topPrime 10513 },
  { lower := 10685, upper := 10838, witness := RowWitness.topPrime 10667 },
  { lower := 10839, upper := 11008, witness := RowWitness.topPrime 10837 },
  { lower := 11009, upper := 11174, witness := RowWitness.topPrime 11003 },
  { lower := 11175, upper := 11344, witness := RowWitness.topPrime 11173 },
  { lower := 11345, upper := 11500, witness := RowWitness.topPrime 11329 },
  { lower := 11501, upper := 11668, witness := RowWitness.topPrime 11497 },
  { lower := 11669, upper := 11828, witness := RowWitness.topPrime 11657 },
  { lower := 11829, upper := 11998, witness := RowWitness.topPrime 11827 },
  { lower := 11999, upper := 12158, witness := RowWitness.topPrime 11987 },
  { lower := 12159, upper := 12328, witness := RowWitness.topPrime 12157 },
  { lower := 12329, upper := 12500, witness := RowWitness.topPrime 12329 },
  { lower := 12501, upper := 12668, witness := RowWitness.topPrime 12497 },
  { lower := 12669, upper := 12830, witness := RowWitness.topPrime 12659 },
  { lower := 12831, upper := 13000, witness := RowWitness.topPrime 12829 },
  { lower := 13001, upper := 13172, witness := RowWitness.topPrime 13001 },
  { lower := 13173, upper := 13342, witness := RowWitness.topPrime 13171 },
  { lower := 13343, upper := 13510, witness := RowWitness.topPrime 13339 },
  { lower := 13511, upper := 13670, witness := RowWitness.topPrime 13499 },
  { lower := 13671, upper := 13840, witness := RowWitness.topPrime 13669 },
  { lower := 13841, upper := 14012, witness := RowWitness.topPrime 13841 },
  { lower := 14013, upper := 14182, witness := RowWitness.topPrime 14011 },
  { lower := 14183, upper := 14348, witness := RowWitness.topPrime 14177 },
  { lower := 14349, upper := 14518, witness := RowWitness.topPrime 14347 },
  { lower := 14519, upper := 14690, witness := RowWitness.topPrime 14519 },
  { lower := 14691, upper := 14854, witness := RowWitness.topPrime 14683 },
  { lower := 14855, upper := 15022, witness := RowWitness.topPrime 14851 },
  { lower := 15023, upper := 15188, witness := RowWitness.topPrime 15017 },
  { lower := 15189, upper := 15358, witness := RowWitness.topPrime 15187 },
  { lower := 15359, upper := 15530, witness := RowWitness.topPrime 15359 },
  { lower := 15531, upper := 15698, witness := RowWitness.topPrime 15527 },
  { lower := 15699, upper := 15854, witness := RowWitness.topPrime 15683 },
  { lower := 15855, upper := 15994, witness := RowWitness.topPrime 15823 },
  { lower := 15995, upper := 16162, witness := RowWitness.topPrime 15991 },
  { lower := 16163, upper := 16312, witness := RowWitness.topPrime 16141 },
  { lower := 16313, upper := 16472, witness := RowWitness.topPrime 16301 },
  { lower := 16473, upper := 16624, witness := RowWitness.topPrime 16453 },
  { lower := 16625, upper := 16790, witness := RowWitness.topPrime 16619 },
  { lower := 16791, upper := 16958, witness := RowWitness.topPrime 16787 },
  { lower := 16959, upper := 17114, witness := RowWitness.topPrime 16943 },
  { lower := 17115, upper := 17278, witness := RowWitness.topPrime 17107 },
  { lower := 17279, upper := 17428, witness := RowWitness.topPrime 17257 },
  { lower := 17429, upper := 17590, witness := RowWitness.topPrime 17419 },
  { lower := 17591, upper := 17752, witness := RowWitness.topPrime 17581 },
  { lower := 17753, upper := 17920, witness := RowWitness.topPrime 17749 },
  { lower := 17921, upper := 18092, witness := RowWitness.topPrime 17921 },
  { lower := 18093, upper := 18260, witness := RowWitness.topPrime 18089 },
  { lower := 18261, upper := 18428, witness := RowWitness.topPrime 18257 },
  { lower := 18429, upper := 18598, witness := RowWitness.topPrime 18427 },
  { lower := 18599, upper := 18764, witness := RowWitness.topPrime 18593 },
  { lower := 18765, upper := 18928, witness := RowWitness.topPrime 18757 },
  { lower := 18929, upper := 19090, witness := RowWitness.topPrime 18919 },
  { lower := 19091, upper := 19258, witness := RowWitness.topPrime 19087 },
  { lower := 19259, upper := 19430, witness := RowWitness.topPrime 19259 },
  { lower := 19431, upper := 19600, witness := RowWitness.topPrime 19429 },
  { lower := 19601, upper := 19768, witness := RowWitness.topPrime 19597 },
  { lower := 19769, upper := 19934, witness := RowWitness.topPrime 19763 },
  { lower := 19935, upper := 20098, witness := RowWitness.topPrime 19927 },
  { lower := 20099, upper := 20260, witness := RowWitness.topPrime 20089 },
  { lower := 20261, upper := 20432, witness := RowWitness.topPrime 20261 },
  { lower := 20433, upper := 20602, witness := RowWitness.topPrime 20431 },
  { lower := 20603, upper := 20770, witness := RowWitness.topPrime 20599 },
  { lower := 20771, upper := 20942, witness := RowWitness.topPrime 20771 },
  { lower := 20943, upper := 21110, witness := RowWitness.topPrime 20939 },
  { lower := 21111, upper := 21278, witness := RowWitness.topPrime 21107 },
  { lower := 21279, upper := 21448, witness := RowWitness.topPrime 21277 },
  { lower := 21449, upper := 21604, witness := RowWitness.topPrime 21433 },
  { lower := 21605, upper := 21772, witness := RowWitness.topPrime 21601 },
  { lower := 21773, upper := 21944, witness := RowWitness.topPrime 21773 },
  { lower := 21945, upper := 22114, witness := RowWitness.topPrime 21943 },
  { lower := 22115, upper := 22282, witness := RowWitness.topPrime 22111 },
  { lower := 22283, upper := 22454, witness := RowWitness.topPrime 22283 },
  { lower := 22455, upper := 22624, witness := RowWitness.topPrime 22453 },
  { lower := 22625, upper := 22792, witness := RowWitness.topPrime 22621 },
  { lower := 22793, upper := 22958, witness := RowWitness.topPrime 22787 },
  { lower := 22959, upper := 23114, witness := RowWitness.topPrime 22943 },
  { lower := 23115, upper := 23270, witness := RowWitness.topPrime 23099 },
  { lower := 23271, upper := 23440, witness := RowWitness.topPrime 23269 },
  { lower := 23441, upper := 23602, witness := RowWitness.topPrime 23431 },
  { lower := 23603, upper := 23774, witness := RowWitness.topPrime 23603 },
  { lower := 23775, upper := 23944, witness := RowWitness.topPrime 23773 },
  { lower := 23945, upper := 24100, witness := RowWitness.topPrime 23929 },
  { lower := 24101, upper := 24268, witness := RowWitness.topPrime 24097 },
  { lower := 24269, upper := 24422, witness := RowWitness.topPrime 24251 },
  { lower := 24423, upper := 24592, witness := RowWitness.topPrime 24421 },
  { lower := 24593, upper := 24764, witness := RowWitness.topPrime 24593 },
  { lower := 24765, upper := 24934, witness := RowWitness.topPrime 24763 },
  { lower := 24935, upper := 25094, witness := RowWitness.topPrime 24923 },
  { lower := 25095, upper := 25258, witness := RowWitness.topPrime 25087 },
  { lower := 25259, upper := 25424, witness := RowWitness.topPrime 25253 },
  { lower := 25425, upper := 25594, witness := RowWitness.topPrime 25423 },
  { lower := 25595, upper := 25760, witness := RowWitness.topPrime 25589 },
  { lower := 25761, upper := 25930, witness := RowWitness.topPrime 25759 },
  { lower := 25931, upper := 26102, witness := RowWitness.topPrime 25931 },
  { lower := 26103, upper := 26270, witness := RowWitness.topPrime 26099 },
  { lower := 26271, upper := 26438, witness := RowWitness.topPrime 26267 },
  { lower := 26439, upper := 26608, witness := RowWitness.topPrime 26437 },
  { lower := 26609, upper := 26768, witness := RowWitness.topPrime 26597 },
  { lower := 26769, upper := 26930, witness := RowWitness.topPrime 26759 },
  { lower := 26931, upper := 27098, witness := RowWitness.topPrime 26927 },
  { lower := 27099, upper := 27262, witness := RowWitness.topPrime 27091 },
  { lower := 27263, upper := 27430, witness := RowWitness.topPrime 27259 },
  { lower := 27431, upper := 27602, witness := RowWitness.topPrime 27431 },
  { lower := 27603, upper := 27754, witness := RowWitness.topPrime 27583 },
  { lower := 27755, upper := 27922, witness := RowWitness.topPrime 27751 },
  { lower := 27923, upper := 28090, witness := RowWitness.topPrime 27919 },
  { lower := 28091, upper := 28258, witness := RowWitness.topPrime 28087 },
  { lower := 28259, upper := 28400, witness := RowWitness.topPrime 28229 },
  { lower := 28401, upper := 28564, witness := RowWitness.topPrime 28393 },
  { lower := 28565, upper := 28730, witness := RowWitness.topPrime 28559 },
  { lower := 28731, upper := 28900, witness := RowWitness.topPrime 28729 },
  { lower := 28901, upper := 29072, witness := RowWitness.topPrime 28901 },
  { lower := 29073, upper := 29234, witness := RowWitness.topPrime 29063 },
  { lower := 29235, upper := 29402, witness := RowWitness.topPrime 29231 },
  { lower := 29403, upper := 29411, witness := RowWitness.topPrime 29401 },
  { lower := 29791, upper := 29939, witness := RowWitness.topPrime 29789 },
  { lower := 31213, upper := 31364, witness := RowWitness.topPrime 31193 },
  { lower := 31365, upper := 31421, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31500, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31855, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31998, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32939, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33660, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33785, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34490, witness := RowWitness.topPrime 34319 },
  { lower := 34491, upper := 34562, witness := RowWitness.topPrime 34487 },
  { lower := 36517, upper := 36668, witness := RowWitness.topPrime 36497 },
  { lower := 36669, upper := 36672, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37381, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37474, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37664, witness := RowWitness.topPrime 37493 },
  { lower := 37665, upper := 37709, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38462, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39475, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40499, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40975, witness := RowWitness.topPrime 40927 },
  { lower := 45369, upper := 45424, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45967, witness := RowWitness.topPrime 45893 },
  { lower := 47045, upper := 47046, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47692, witness := RowWitness.topPrime 47521 },
  { lower := 47693, upper := 47695, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48132, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48542, witness := RowWitness.topPrime 48371 },
  { lower := 48543, upper := 48544, witness := RowWitness.topPrime 48541 },
  { lower := 48778, upper := 48839, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49310, witness := RowWitness.topPrime 49139 },
  { lower := 49311, upper := 49323, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49469, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50581, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51176, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53216, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53309, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55612, witness := RowWitness.topPrime 55441 },
  { lower := 55613, upper := 55618, witness := RowWitness.topPrime 55609 },
  { lower := 56307, upper := 56340, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56478, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57293, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58735, witness := RowWitness.topPrime 58613 },
  { lower := 68694, upper := 68815, witness := RowWitness.topPrime 68687 },
  { lower := 71289, upper := 71458, witness := RowWitness.topPrime 71287 },
  { lower := 71459, upper := 71460, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73173, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73338, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83692, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85854, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89544, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93921, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96776, witness := RowWitness.topPrime 96769 },
  { lower := 103041, upper := 103137, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109546, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137952, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149048, witness := RowWitness.topPrime 148949 }
]

def row172_layers : List CoverLayer := [
  { lower := 29412, upper := 58824, M := 13 },
  { lower := 58824, upper := 117648, M := 9 },
  { lower := 117648, upper := 235296, M := 7 },
  { lower := 235296, upper := 470592, M := 5 },
  { lower := 470592, upper := 941184, M := 4 },
  { lower := 941184, upper := 1882368, M := 3 },
  { lower := 1882368, upper := 3764736, M := 2 },
  { lower := 3764736, upper := 7529472, M := 2 },
  { lower := 7529472, upper := 10000000, M := 1 }
]

def row172 : FiniteCoverRow := {
  height := row172_height,
  goods := row172_goods,
  layers := row172_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good000_checked :
    goodSegmentCheck 172 57 122
      { lower := 346, upper := 508, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good001_checked :
    goodSegmentCheck 172 57 122
      { lower := 509, upper := 680, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good002_checked :
    goodSegmentCheck 172 57 122
      { lower := 681, upper := 848, witness := RowWitness.topPrime 677 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good003_checked :
    goodSegmentCheck 172 57 122
      { lower := 849, upper := 1010, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good004_checked :
    goodSegmentCheck 172 57 122
      { lower := 1011, upper := 1180, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good005_checked :
    goodSegmentCheck 172 57 122
      { lower := 1181, upper := 1352, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good006_checked :
    goodSegmentCheck 172 57 122
      { lower := 1353, upper := 1498, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good007_checked :
    goodSegmentCheck 172 57 122
      { lower := 1499, upper := 1670, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good008_checked :
    goodSegmentCheck 172 57 122
      { lower := 1671, upper := 1840, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good009_checked :
    goodSegmentCheck 172 57 122
      { lower := 1841, upper := 2002, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good010_checked :
    goodSegmentCheck 172 57 122
      { lower := 2003, upper := 2174, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good011_checked :
    goodSegmentCheck 172 57 122
      { lower := 2175, upper := 2332, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good012_checked :
    goodSegmentCheck 172 57 122
      { lower := 2333, upper := 2504, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good013_checked :
    goodSegmentCheck 172 57 122
      { lower := 2505, upper := 2674, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good014_checked :
    goodSegmentCheck 172 57 122
      { lower := 2675, upper := 2842, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good015_checked :
    goodSegmentCheck 172 57 122
      { lower := 2843, upper := 3014, witness := RowWitness.topPrime 2843 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good016_checked :
    goodSegmentCheck 172 57 122
      { lower := 3015, upper := 3182, witness := RowWitness.topPrime 3011 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good017_checked :
    goodSegmentCheck 172 57 122
      { lower := 3183, upper := 3352, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good018_checked :
    goodSegmentCheck 172 57 122
      { lower := 3353, upper := 3518, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good019_checked :
    goodSegmentCheck 172 57 122
      { lower := 3519, upper := 3688, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good020_checked :
    goodSegmentCheck 172 57 122
      { lower := 3689, upper := 3848, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good021_checked :
    goodSegmentCheck 172 57 122
      { lower := 3849, upper := 4018, witness := RowWitness.topPrime 3847 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good022_checked :
    goodSegmentCheck 172 57 122
      { lower := 4019, upper := 4190, witness := RowWitness.topPrime 4019 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good023_checked :
    goodSegmentCheck 172 57 122
      { lower := 4191, upper := 4348, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good024_checked :
    goodSegmentCheck 172 57 122
      { lower := 4349, upper := 4520, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good025_checked :
    goodSegmentCheck 172 57 122
      { lower := 4521, upper := 4690, witness := RowWitness.topPrime 4519 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good026_checked :
    goodSegmentCheck 172 57 122
      { lower := 4691, upper := 4862, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good027_checked :
    goodSegmentCheck 172 57 122
      { lower := 4863, upper := 5032, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good028_checked :
    goodSegmentCheck 172 57 122
      { lower := 5033, upper := 5194, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good029_checked :
    goodSegmentCheck 172 57 122
      { lower := 5195, upper := 5360, witness := RowWitness.topPrime 5189 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good030_checked :
    goodSegmentCheck 172 57 122
      { lower := 5361, upper := 5522, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good031_checked :
    goodSegmentCheck 172 57 122
      { lower := 5523, upper := 5692, witness := RowWitness.topPrime 5521 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good032_checked :
    goodSegmentCheck 172 57 122
      { lower := 5693, upper := 5864, witness := RowWitness.topPrime 5693 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good033_checked :
    goodSegmentCheck 172 57 122
      { lower := 5865, upper := 6032, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good034_checked :
    goodSegmentCheck 172 57 122
      { lower := 6033, upper := 6200, witness := RowWitness.topPrime 6029 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good035_checked :
    goodSegmentCheck 172 57 122
      { lower := 6201, upper := 6370, witness := RowWitness.topPrime 6199 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good036_checked :
    goodSegmentCheck 172 57 122
      { lower := 6371, upper := 6538, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good037_checked :
    goodSegmentCheck 172 57 122
      { lower := 6539, upper := 6700, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good038_checked :
    goodSegmentCheck 172 57 122
      { lower := 6701, upper := 6872, witness := RowWitness.topPrime 6701 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good039_checked :
    goodSegmentCheck 172 57 122
      { lower := 6873, upper := 7042, witness := RowWitness.topPrime 6871 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good040_checked :
    goodSegmentCheck 172 57 122
      { lower := 7043, upper := 7214, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good041_checked :
    goodSegmentCheck 172 57 122
      { lower := 7215, upper := 7384, witness := RowWitness.topPrime 7213 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good042_checked :
    goodSegmentCheck 172 57 122
      { lower := 7385, upper := 7540, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good043_checked :
    goodSegmentCheck 172 57 122
      { lower := 7541, upper := 7712, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good044_checked :
    goodSegmentCheck 172 57 122
      { lower := 7713, upper := 7874, witness := RowWitness.topPrime 7703 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good045_checked :
    goodSegmentCheck 172 57 122
      { lower := 7875, upper := 8044, witness := RowWitness.topPrime 7873 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good046_checked :
    goodSegmentCheck 172 57 122
      { lower := 8045, upper := 8210, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good047_checked :
    goodSegmentCheck 172 57 122
      { lower := 8211, upper := 8380, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good048_checked :
    goodSegmentCheck 172 57 122
      { lower := 8381, upper := 8548, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good049_checked :
    goodSegmentCheck 172 57 122
      { lower := 8549, upper := 8714, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good050_checked :
    goodSegmentCheck 172 57 122
      { lower := 8715, upper := 8884, witness := RowWitness.topPrime 8713 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good051_checked :
    goodSegmentCheck 172 57 122
      { lower := 8885, upper := 9038, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good052_checked :
    goodSegmentCheck 172 57 122
      { lower := 9039, upper := 9200, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good053_checked :
    goodSegmentCheck 172 57 122
      { lower := 9201, upper := 9370, witness := RowWitness.topPrime 9199 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good054_checked :
    goodSegmentCheck 172 57 122
      { lower := 9371, upper := 9542, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good055_checked :
    goodSegmentCheck 172 57 122
      { lower := 9543, upper := 9710, witness := RowWitness.topPrime 9539 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good056_checked :
    goodSegmentCheck 172 57 122
      { lower := 9711, upper := 9868, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good057_checked :
    goodSegmentCheck 172 57 122
      { lower := 9869, upper := 10030, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good058_checked :
    goodSegmentCheck 172 57 122
      { lower := 10031, upper := 10180, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good059_checked :
    goodSegmentCheck 172 57 122
      { lower := 10181, upper := 10352, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good060_checked :
    goodSegmentCheck 172 57 122
      { lower := 10353, upper := 10514, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good061_checked :
    goodSegmentCheck 172 57 122
      { lower := 10515, upper := 10684, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good062_checked :
    goodSegmentCheck 172 57 122
      { lower := 10685, upper := 10838, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good063_checked :
    goodSegmentCheck 172 57 122
      { lower := 10839, upper := 11008, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good064_checked :
    goodSegmentCheck 172 57 122
      { lower := 11009, upper := 11174, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good065_checked :
    goodSegmentCheck 172 57 122
      { lower := 11175, upper := 11344, witness := RowWitness.topPrime 11173 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good066_checked :
    goodSegmentCheck 172 57 122
      { lower := 11345, upper := 11500, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good067_checked :
    goodSegmentCheck 172 57 122
      { lower := 11501, upper := 11668, witness := RowWitness.topPrime 11497 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good068_checked :
    goodSegmentCheck 172 57 122
      { lower := 11669, upper := 11828, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good069_checked :
    goodSegmentCheck 172 57 122
      { lower := 11829, upper := 11998, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good070_checked :
    goodSegmentCheck 172 57 122
      { lower := 11999, upper := 12158, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good071_checked :
    goodSegmentCheck 172 57 122
      { lower := 12159, upper := 12328, witness := RowWitness.topPrime 12157 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good072_checked :
    goodSegmentCheck 172 57 122
      { lower := 12329, upper := 12500, witness := RowWitness.topPrime 12329 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good073_checked :
    goodSegmentCheck 172 57 122
      { lower := 12501, upper := 12668, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good074_checked :
    goodSegmentCheck 172 57 122
      { lower := 12669, upper := 12830, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good075_checked :
    goodSegmentCheck 172 57 122
      { lower := 12831, upper := 13000, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good076_checked :
    goodSegmentCheck 172 57 122
      { lower := 13001, upper := 13172, witness := RowWitness.topPrime 13001 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good077_checked :
    goodSegmentCheck 172 57 122
      { lower := 13173, upper := 13342, witness := RowWitness.topPrime 13171 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good078_checked :
    goodSegmentCheck 172 57 122
      { lower := 13343, upper := 13510, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good079_checked :
    goodSegmentCheck 172 57 122
      { lower := 13511, upper := 13670, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good080_checked :
    goodSegmentCheck 172 57 122
      { lower := 13671, upper := 13840, witness := RowWitness.topPrime 13669 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good081_checked :
    goodSegmentCheck 172 57 122
      { lower := 13841, upper := 14012, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good082_checked :
    goodSegmentCheck 172 57 122
      { lower := 14013, upper := 14182, witness := RowWitness.topPrime 14011 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good083_checked :
    goodSegmentCheck 172 57 122
      { lower := 14183, upper := 14348, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good084_checked :
    goodSegmentCheck 172 57 122
      { lower := 14349, upper := 14518, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good085_checked :
    goodSegmentCheck 172 57 122
      { lower := 14519, upper := 14690, witness := RowWitness.topPrime 14519 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good086_checked :
    goodSegmentCheck 172 57 122
      { lower := 14691, upper := 14854, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good087_checked :
    goodSegmentCheck 172 57 122
      { lower := 14855, upper := 15022, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good088_checked :
    goodSegmentCheck 172 57 122
      { lower := 15023, upper := 15188, witness := RowWitness.topPrime 15017 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good089_checked :
    goodSegmentCheck 172 57 122
      { lower := 15189, upper := 15358, witness := RowWitness.topPrime 15187 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good090_checked :
    goodSegmentCheck 172 57 122
      { lower := 15359, upper := 15530, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good091_checked :
    goodSegmentCheck 172 57 122
      { lower := 15531, upper := 15698, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good092_checked :
    goodSegmentCheck 172 57 122
      { lower := 15699, upper := 15854, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good093_checked :
    goodSegmentCheck 172 57 122
      { lower := 15855, upper := 15994, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good094_checked :
    goodSegmentCheck 172 57 122
      { lower := 15995, upper := 16162, witness := RowWitness.topPrime 15991 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good095_checked :
    goodSegmentCheck 172 57 122
      { lower := 16163, upper := 16312, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good096_checked :
    goodSegmentCheck 172 57 122
      { lower := 16313, upper := 16472, witness := RowWitness.topPrime 16301 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good097_checked :
    goodSegmentCheck 172 57 122
      { lower := 16473, upper := 16624, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good098_checked :
    goodSegmentCheck 172 57 122
      { lower := 16625, upper := 16790, witness := RowWitness.topPrime 16619 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good099_checked :
    goodSegmentCheck 172 57 122
      { lower := 16791, upper := 16958, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good100_checked :
    goodSegmentCheck 172 57 122
      { lower := 16959, upper := 17114, witness := RowWitness.topPrime 16943 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good101_checked :
    goodSegmentCheck 172 57 122
      { lower := 17115, upper := 17278, witness := RowWitness.topPrime 17107 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good102_checked :
    goodSegmentCheck 172 57 122
      { lower := 17279, upper := 17428, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good103_checked :
    goodSegmentCheck 172 57 122
      { lower := 17429, upper := 17590, witness := RowWitness.topPrime 17419 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good104_checked :
    goodSegmentCheck 172 57 122
      { lower := 17591, upper := 17752, witness := RowWitness.topPrime 17581 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good105_checked :
    goodSegmentCheck 172 57 122
      { lower := 17753, upper := 17920, witness := RowWitness.topPrime 17749 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good106_checked :
    goodSegmentCheck 172 57 122
      { lower := 17921, upper := 18092, witness := RowWitness.topPrime 17921 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good107_checked :
    goodSegmentCheck 172 57 122
      { lower := 18093, upper := 18260, witness := RowWitness.topPrime 18089 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good108_checked :
    goodSegmentCheck 172 57 122
      { lower := 18261, upper := 18428, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good109_checked :
    goodSegmentCheck 172 57 122
      { lower := 18429, upper := 18598, witness := RowWitness.topPrime 18427 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good110_checked :
    goodSegmentCheck 172 57 122
      { lower := 18599, upper := 18764, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good111_checked :
    goodSegmentCheck 172 57 122
      { lower := 18765, upper := 18928, witness := RowWitness.topPrime 18757 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good112_checked :
    goodSegmentCheck 172 57 122
      { lower := 18929, upper := 19090, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good113_checked :
    goodSegmentCheck 172 57 122
      { lower := 19091, upper := 19258, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good114_checked :
    goodSegmentCheck 172 57 122
      { lower := 19259, upper := 19430, witness := RowWitness.topPrime 19259 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good115_checked :
    goodSegmentCheck 172 57 122
      { lower := 19431, upper := 19600, witness := RowWitness.topPrime 19429 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good116_checked :
    goodSegmentCheck 172 57 122
      { lower := 19601, upper := 19768, witness := RowWitness.topPrime 19597 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good117_checked :
    goodSegmentCheck 172 57 122
      { lower := 19769, upper := 19934, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good118_checked :
    goodSegmentCheck 172 57 122
      { lower := 19935, upper := 20098, witness := RowWitness.topPrime 19927 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good119_checked :
    goodSegmentCheck 172 57 122
      { lower := 20099, upper := 20260, witness := RowWitness.topPrime 20089 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good120_checked :
    goodSegmentCheck 172 57 122
      { lower := 20261, upper := 20432, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good121_checked :
    goodSegmentCheck 172 57 122
      { lower := 20433, upper := 20602, witness := RowWitness.topPrime 20431 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good122_checked :
    goodSegmentCheck 172 57 122
      { lower := 20603, upper := 20770, witness := RowWitness.topPrime 20599 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good123_checked :
    goodSegmentCheck 172 57 122
      { lower := 20771, upper := 20942, witness := RowWitness.topPrime 20771 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good124_checked :
    goodSegmentCheck 172 57 122
      { lower := 20943, upper := 21110, witness := RowWitness.topPrime 20939 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good125_checked :
    goodSegmentCheck 172 57 122
      { lower := 21111, upper := 21278, witness := RowWitness.topPrime 21107 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good126_checked :
    goodSegmentCheck 172 57 122
      { lower := 21279, upper := 21448, witness := RowWitness.topPrime 21277 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good127_checked :
    goodSegmentCheck 172 57 122
      { lower := 21449, upper := 21604, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good128_checked :
    goodSegmentCheck 172 57 122
      { lower := 21605, upper := 21772, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good129_checked :
    goodSegmentCheck 172 57 122
      { lower := 21773, upper := 21944, witness := RowWitness.topPrime 21773 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good130_checked :
    goodSegmentCheck 172 57 122
      { lower := 21945, upper := 22114, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good131_checked :
    goodSegmentCheck 172 57 122
      { lower := 22115, upper := 22282, witness := RowWitness.topPrime 22111 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good132_checked :
    goodSegmentCheck 172 57 122
      { lower := 22283, upper := 22454, witness := RowWitness.topPrime 22283 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good133_checked :
    goodSegmentCheck 172 57 122
      { lower := 22455, upper := 22624, witness := RowWitness.topPrime 22453 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good134_checked :
    goodSegmentCheck 172 57 122
      { lower := 22625, upper := 22792, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good135_checked :
    goodSegmentCheck 172 57 122
      { lower := 22793, upper := 22958, witness := RowWitness.topPrime 22787 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good136_checked :
    goodSegmentCheck 172 57 122
      { lower := 22959, upper := 23114, witness := RowWitness.topPrime 22943 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good137_checked :
    goodSegmentCheck 172 57 122
      { lower := 23115, upper := 23270, witness := RowWitness.topPrime 23099 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good138_checked :
    goodSegmentCheck 172 57 122
      { lower := 23271, upper := 23440, witness := RowWitness.topPrime 23269 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good139_checked :
    goodSegmentCheck 172 57 122
      { lower := 23441, upper := 23602, witness := RowWitness.topPrime 23431 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good140_checked :
    goodSegmentCheck 172 57 122
      { lower := 23603, upper := 23774, witness := RowWitness.topPrime 23603 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good141_checked :
    goodSegmentCheck 172 57 122
      { lower := 23775, upper := 23944, witness := RowWitness.topPrime 23773 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good142_checked :
    goodSegmentCheck 172 57 122
      { lower := 23945, upper := 24100, witness := RowWitness.topPrime 23929 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good143_checked :
    goodSegmentCheck 172 57 122
      { lower := 24101, upper := 24268, witness := RowWitness.topPrime 24097 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good144_checked :
    goodSegmentCheck 172 57 122
      { lower := 24269, upper := 24422, witness := RowWitness.topPrime 24251 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good145_checked :
    goodSegmentCheck 172 57 122
      { lower := 24423, upper := 24592, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good146_checked :
    goodSegmentCheck 172 57 122
      { lower := 24593, upper := 24764, witness := RowWitness.topPrime 24593 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good147_checked :
    goodSegmentCheck 172 57 122
      { lower := 24765, upper := 24934, witness := RowWitness.topPrime 24763 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good148_checked :
    goodSegmentCheck 172 57 122
      { lower := 24935, upper := 25094, witness := RowWitness.topPrime 24923 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good149_checked :
    goodSegmentCheck 172 57 122
      { lower := 25095, upper := 25258, witness := RowWitness.topPrime 25087 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good150_checked :
    goodSegmentCheck 172 57 122
      { lower := 25259, upper := 25424, witness := RowWitness.topPrime 25253 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good151_checked :
    goodSegmentCheck 172 57 122
      { lower := 25425, upper := 25594, witness := RowWitness.topPrime 25423 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good152_checked :
    goodSegmentCheck 172 57 122
      { lower := 25595, upper := 25760, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good153_checked :
    goodSegmentCheck 172 57 122
      { lower := 25761, upper := 25930, witness := RowWitness.topPrime 25759 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good154_checked :
    goodSegmentCheck 172 57 122
      { lower := 25931, upper := 26102, witness := RowWitness.topPrime 25931 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good155_checked :
    goodSegmentCheck 172 57 122
      { lower := 26103, upper := 26270, witness := RowWitness.topPrime 26099 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good156_checked :
    goodSegmentCheck 172 57 122
      { lower := 26271, upper := 26438, witness := RowWitness.topPrime 26267 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good157_checked :
    goodSegmentCheck 172 57 122
      { lower := 26439, upper := 26608, witness := RowWitness.topPrime 26437 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good158_checked :
    goodSegmentCheck 172 57 122
      { lower := 26609, upper := 26768, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good159_checked :
    goodSegmentCheck 172 57 122
      { lower := 26769, upper := 26930, witness := RowWitness.topPrime 26759 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good160_checked :
    goodSegmentCheck 172 57 122
      { lower := 26931, upper := 27098, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good161_checked :
    goodSegmentCheck 172 57 122
      { lower := 27099, upper := 27262, witness := RowWitness.topPrime 27091 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good162_checked :
    goodSegmentCheck 172 57 122
      { lower := 27263, upper := 27430, witness := RowWitness.topPrime 27259 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good163_checked :
    goodSegmentCheck 172 57 122
      { lower := 27431, upper := 27602, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good164_checked :
    goodSegmentCheck 172 57 122
      { lower := 27603, upper := 27754, witness := RowWitness.topPrime 27583 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good165_checked :
    goodSegmentCheck 172 57 122
      { lower := 27755, upper := 27922, witness := RowWitness.topPrime 27751 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good166_checked :
    goodSegmentCheck 172 57 122
      { lower := 27923, upper := 28090, witness := RowWitness.topPrime 27919 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good167_checked :
    goodSegmentCheck 172 57 122
      { lower := 28091, upper := 28258, witness := RowWitness.topPrime 28087 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good168_checked :
    goodSegmentCheck 172 57 122
      { lower := 28259, upper := 28400, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good169_checked :
    goodSegmentCheck 172 57 122
      { lower := 28401, upper := 28564, witness := RowWitness.topPrime 28393 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good170_checked :
    goodSegmentCheck 172 57 122
      { lower := 28565, upper := 28730, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good171_checked :
    goodSegmentCheck 172 57 122
      { lower := 28731, upper := 28900, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good172_checked :
    goodSegmentCheck 172 57 122
      { lower := 28901, upper := 29072, witness := RowWitness.topPrime 28901 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good173_checked :
    goodSegmentCheck 172 57 122
      { lower := 29073, upper := 29234, witness := RowWitness.topPrime 29063 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good174_checked :
    goodSegmentCheck 172 57 122
      { lower := 29235, upper := 29402, witness := RowWitness.topPrime 29231 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good175_checked :
    goodSegmentCheck 172 57 122
      { lower := 29403, upper := 29411, witness := RowWitness.topPrime 29401 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good176_checked :
    goodSegmentCheck 172 57 122
      { lower := 29791, upper := 29939, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good177_checked :
    goodSegmentCheck 172 57 122
      { lower := 31213, upper := 31364, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good178_checked :
    goodSegmentCheck 172 57 122
      { lower := 31365, upper := 31421, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good179_checked :
    goodSegmentCheck 172 57 122
      { lower := 31423, upper := 31500, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good180_checked :
    goodSegmentCheck 172 57 122
      { lower := 31827, upper := 31855, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good181_checked :
    goodSegmentCheck 172 57 122
      { lower := 31974, upper := 31998, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good182_checked :
    goodSegmentCheck 172 57 122
      { lower := 32805, upper := 32939, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good183_checked :
    goodSegmentCheck 172 57 122
      { lower := 33614, upper := 33660, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good184_checked :
    goodSegmentCheck 172 57 122
      { lower := 33708, upper := 33785, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good185_checked :
    goodSegmentCheck 172 57 122
      { lower := 34322, upper := 34490, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good186_checked :
    goodSegmentCheck 172 57 122
      { lower := 34491, upper := 34562, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good187_checked :
    goodSegmentCheck 172 57 122
      { lower := 36517, upper := 36668, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good188_checked :
    goodSegmentCheck 172 57 122
      { lower := 36669, upper := 36672, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good189_checked :
    goodSegmentCheck 172 57 122
      { lower := 37303, upper := 37381, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good190_checked :
    goodSegmentCheck 172 57 122
      { lower := 37446, upper := 37474, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good191_checked :
    goodSegmentCheck 172 57 122
      { lower := 37500, upper := 37664, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good192_checked :
    goodSegmentCheck 172 57 122
      { lower := 37665, upper := 37709, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good193_checked :
    goodSegmentCheck 172 57 122
      { lower := 38307, upper := 38462, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good194_checked :
    goodSegmentCheck 172 57 122
      { lower := 39366, upper := 39475, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good195_checked :
    goodSegmentCheck 172 57 122
      { lower := 40401, upper := 40499, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good196_checked :
    goodSegmentCheck 172 57 122
      { lower := 40931, upper := 40975, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good197_checked :
    goodSegmentCheck 172 57 122
      { lower := 45369, upper := 45424, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good198_checked :
    goodSegmentCheck 172 57 122
      { lower := 45927, upper := 45967, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good199_checked :
    goodSegmentCheck 172 57 122
      { lower := 47045, upper := 47046, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good200_checked :
    goodSegmentCheck 172 57 122
      { lower := 47526, upper := 47692, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good201_checked :
    goodSegmentCheck 172 57 122
      { lower := 47693, upper := 47695, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good202_checked :
    goodSegmentCheck 172 57 122
      { lower := 48013, upper := 48132, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good203_checked :
    goodSegmentCheck 172 57 122
      { lower := 48373, upper := 48542, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good204_checked :
    goodSegmentCheck 172 57 122
      { lower := 48543, upper := 48544, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good205_checked :
    goodSegmentCheck 172 57 122
      { lower := 48778, upper := 48839, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good206_checked :
    goodSegmentCheck 172 57 122
      { lower := 49152, upper := 49310, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good207_checked :
    goodSegmentCheck 172 57 122
      { lower := 49311, upper := 49323, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good208_checked :
    goodSegmentCheck 172 57 122
      { lower := 49379, upper := 49469, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good209_checked :
    goodSegmentCheck 172 57 122
      { lower := 50421, upper := 50581, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good210_checked :
    goodSegmentCheck 172 57 122
      { lower := 51076, upper := 51176, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good211_checked :
    goodSegmentCheck 172 57 122
      { lower := 53138, upper := 53216, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good212_checked :
    goodSegmentCheck 172 57 122
      { lower := 53290, upper := 53309, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good213_checked :
    goodSegmentCheck 172 57 122
      { lower := 55451, upper := 55612, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good214_checked :
    goodSegmentCheck 172 57 122
      { lower := 55613, upper := 55618, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good215_checked :
    goodSegmentCheck 172 57 122
      { lower := 56307, upper := 56340, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good216_checked :
    goodSegmentCheck 172 57 122
      { lower := 56454, upper := 56478, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good217_checked :
    goodSegmentCheck 172 57 122
      { lower := 57245, upper := 57293, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good218_checked :
    goodSegmentCheck 172 57 122
      { lower := 58619, upper := 58735, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good219_checked :
    goodSegmentCheck 172 57 122
      { lower := 68694, upper := 68815, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good220_checked :
    goodSegmentCheck 172 57 122
      { lower := 71289, upper := 71458, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good221_checked :
    goodSegmentCheck 172 57 122
      { lower := 71459, upper := 71460, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good222_checked :
    goodSegmentCheck 172 57 122
      { lower := 73167, upper := 73173, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good223_checked :
    goodSegmentCheck 172 57 122
      { lower := 73205, upper := 73338, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_good224_checked :
    goodSegmentCheck 172 57 122
      { lower := 83667, upper := 83692, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good225_checked :
    goodSegmentCheck 172 57 122
      { lower := 85805, upper := 85854, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good226_checked :
    goodSegmentCheck 172 57 122
      { lower := 89383, upper := 89544, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good227_checked :
    goodSegmentCheck 172 57 122
      { lower := 93845, upper := 93921, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good228_checked :
    goodSegmentCheck 172 57 122
      { lower := 96774, upper := 96776, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good229_checked :
    goodSegmentCheck 172 57 122
      { lower := 103041, upper := 103137, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good230_checked :
    goodSegmentCheck 172 57 122
      { lower := 109503, upper := 109546, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good231_checked :
    goodSegmentCheck 172 57 122
      { lower := 137842, upper := 137952, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row172_good232_checked :
    goodSegmentCheck 172 57 122
      { lower := 148955, upper := 149048, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 172) (r := 57) (s := 122) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_good232_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_goods_checked :
    row172.goods.all (goodSegmentCheck row172.height.i row172.height.r row172.height.s) = true := by
  change row172_goods.all (goodSegmentCheck 172 57 122) = true
  simp only [row172_goods, List.all_cons, List.all_nil,
    row172_good000_checked,
    row172_good001_checked,
    row172_good002_checked,
    row172_good003_checked,
    row172_good004_checked,
    row172_good005_checked,
    row172_good006_checked,
    row172_good007_checked,
    row172_good008_checked,
    row172_good009_checked,
    row172_good010_checked,
    row172_good011_checked,
    row172_good012_checked,
    row172_good013_checked,
    row172_good014_checked,
    row172_good015_checked,
    row172_good016_checked,
    row172_good017_checked,
    row172_good018_checked,
    row172_good019_checked,
    row172_good020_checked,
    row172_good021_checked,
    row172_good022_checked,
    row172_good023_checked,
    row172_good024_checked,
    row172_good025_checked,
    row172_good026_checked,
    row172_good027_checked,
    row172_good028_checked,
    row172_good029_checked,
    row172_good030_checked,
    row172_good031_checked,
    row172_good032_checked,
    row172_good033_checked,
    row172_good034_checked,
    row172_good035_checked,
    row172_good036_checked,
    row172_good037_checked,
    row172_good038_checked,
    row172_good039_checked,
    row172_good040_checked,
    row172_good041_checked,
    row172_good042_checked,
    row172_good043_checked,
    row172_good044_checked,
    row172_good045_checked,
    row172_good046_checked,
    row172_good047_checked,
    row172_good048_checked,
    row172_good049_checked,
    row172_good050_checked,
    row172_good051_checked,
    row172_good052_checked,
    row172_good053_checked,
    row172_good054_checked,
    row172_good055_checked,
    row172_good056_checked,
    row172_good057_checked,
    row172_good058_checked,
    row172_good059_checked,
    row172_good060_checked,
    row172_good061_checked,
    row172_good062_checked,
    row172_good063_checked,
    row172_good064_checked,
    row172_good065_checked,
    row172_good066_checked,
    row172_good067_checked,
    row172_good068_checked,
    row172_good069_checked,
    row172_good070_checked,
    row172_good071_checked,
    row172_good072_checked,
    row172_good073_checked,
    row172_good074_checked,
    row172_good075_checked,
    row172_good076_checked,
    row172_good077_checked,
    row172_good078_checked,
    row172_good079_checked,
    row172_good080_checked,
    row172_good081_checked,
    row172_good082_checked,
    row172_good083_checked,
    row172_good084_checked,
    row172_good085_checked,
    row172_good086_checked,
    row172_good087_checked,
    row172_good088_checked,
    row172_good089_checked,
    row172_good090_checked,
    row172_good091_checked,
    row172_good092_checked,
    row172_good093_checked,
    row172_good094_checked,
    row172_good095_checked,
    row172_good096_checked,
    row172_good097_checked,
    row172_good098_checked,
    row172_good099_checked,
    row172_good100_checked,
    row172_good101_checked,
    row172_good102_checked,
    row172_good103_checked,
    row172_good104_checked,
    row172_good105_checked,
    row172_good106_checked,
    row172_good107_checked,
    row172_good108_checked,
    row172_good109_checked,
    row172_good110_checked,
    row172_good111_checked,
    row172_good112_checked,
    row172_good113_checked,
    row172_good114_checked,
    row172_good115_checked,
    row172_good116_checked,
    row172_good117_checked,
    row172_good118_checked,
    row172_good119_checked,
    row172_good120_checked,
    row172_good121_checked,
    row172_good122_checked,
    row172_good123_checked,
    row172_good124_checked,
    row172_good125_checked,
    row172_good126_checked,
    row172_good127_checked,
    row172_good128_checked,
    row172_good129_checked,
    row172_good130_checked,
    row172_good131_checked,
    row172_good132_checked,
    row172_good133_checked,
    row172_good134_checked,
    row172_good135_checked,
    row172_good136_checked,
    row172_good137_checked,
    row172_good138_checked,
    row172_good139_checked,
    row172_good140_checked,
    row172_good141_checked,
    row172_good142_checked,
    row172_good143_checked,
    row172_good144_checked,
    row172_good145_checked,
    row172_good146_checked,
    row172_good147_checked,
    row172_good148_checked,
    row172_good149_checked,
    row172_good150_checked,
    row172_good151_checked,
    row172_good152_checked,
    row172_good153_checked,
    row172_good154_checked,
    row172_good155_checked,
    row172_good156_checked,
    row172_good157_checked,
    row172_good158_checked,
    row172_good159_checked,
    row172_good160_checked,
    row172_good161_checked,
    row172_good162_checked,
    row172_good163_checked,
    row172_good164_checked,
    row172_good165_checked,
    row172_good166_checked,
    row172_good167_checked,
    row172_good168_checked,
    row172_good169_checked,
    row172_good170_checked,
    row172_good171_checked,
    row172_good172_checked,
    row172_good173_checked,
    row172_good174_checked,
    row172_good175_checked,
    row172_good176_checked,
    row172_good177_checked,
    row172_good178_checked,
    row172_good179_checked,
    row172_good180_checked,
    row172_good181_checked,
    row172_good182_checked,
    row172_good183_checked,
    row172_good184_checked,
    row172_good185_checked,
    row172_good186_checked,
    row172_good187_checked,
    row172_good188_checked,
    row172_good189_checked,
    row172_good190_checked,
    row172_good191_checked,
    row172_good192_checked,
    row172_good193_checked,
    row172_good194_checked,
    row172_good195_checked,
    row172_good196_checked,
    row172_good197_checked,
    row172_good198_checked,
    row172_good199_checked,
    row172_good200_checked,
    row172_good201_checked,
    row172_good202_checked,
    row172_good203_checked,
    row172_good204_checked,
    row172_good205_checked,
    row172_good206_checked,
    row172_good207_checked,
    row172_good208_checked,
    row172_good209_checked,
    row172_good210_checked,
    row172_good211_checked,
    row172_good212_checked,
    row172_good213_checked,
    row172_good214_checked,
    row172_good215_checked,
    row172_good216_checked,
    row172_good217_checked,
    row172_good218_checked,
    row172_good219_checked,
    row172_good220_checked,
    row172_good221_checked,
    row172_good222_checked,
    row172_good223_checked,
    row172_good224_checked,
    row172_good225_checked,
    row172_good226_checked,
    row172_good227_checked,
    row172_good228_checked,
    row172_good229_checked,
    row172_good230_checked,
    row172_good231_checked,
    row172_good232_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_registered :
    decide (row172.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row172_small_checked :
    coverCheck (2 * row172.height.i + 2) (row172.height.i * (row172.height.i - 1) - 1)
      (row172.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row172_layerCover_checked :
    coverCheck (row172.height.i * (row172.height.i - 1)) (row172.height.n0 - 1)
      (row172.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row172_bounds : List NatInterval :=
  [(346, 508), (509, 680), (681, 848), (849, 1010), (1011, 1180), (1181, 1352), (1353, 1498), (1499, 1670), (1671, 1840), (1841, 2002), (2003, 2174), (2175, 2332), (2333, 2504), (2505, 2674), (2675, 2842), (2843, 3014), (3015, 3182), (3183, 3352), (3353, 3518), (3519, 3688), (3689, 3848), (3849, 4018), (4019, 4190), (4191, 4348), (4349, 4520), (4521, 4690), (4691, 4862), (4863, 5032), (5033, 5194), (5195, 5360), (5361, 5522), (5523, 5692), (5693, 5864), (5865, 6032), (6033, 6200), (6201, 6370), (6371, 6538), (6539, 6700), (6701, 6872), (6873, 7042), (7043, 7214), (7215, 7384), (7385, 7540), (7541, 7712), (7713, 7874), (7875, 8044), (8045, 8210), (8211, 8380), (8381, 8548), (8549, 8714), (8715, 8884), (8885, 9038), (9039, 9200), (9201, 9370), (9371, 9542), (9543, 9710), (9711, 9868), (9869, 10030), (10031, 10180), (10181, 10352), (10353, 10514), (10515, 10684), (10685, 10838), (10839, 11008), (11009, 11174), (11175, 11344), (11345, 11500), (11501, 11668), (11669, 11828), (11829, 11998), (11999, 12158), (12159, 12328), (12329, 12500), (12501, 12668), (12669, 12830), (12831, 13000), (13001, 13172), (13173, 13342), (13343, 13510), (13511, 13670), (13671, 13840), (13841, 14012), (14013, 14182), (14183, 14348), (14349, 14518), (14519, 14690), (14691, 14854), (14855, 15022), (15023, 15188), (15189, 15358), (15359, 15530), (15531, 15698), (15699, 15854), (15855, 15994), (15995, 16162), (16163, 16312), (16313, 16472), (16473, 16624), (16625, 16790), (16791, 16958), (16959, 17114), (17115, 17278), (17279, 17428), (17429, 17590), (17591, 17752), (17753, 17920), (17921, 18092), (18093, 18260), (18261, 18428), (18429, 18598), (18599, 18764), (18765, 18928), (18929, 19090), (19091, 19258), (19259, 19430), (19431, 19600), (19601, 19768), (19769, 19934), (19935, 20098), (20099, 20260), (20261, 20432), (20433, 20602), (20603, 20770), (20771, 20942), (20943, 21110), (21111, 21278), (21279, 21448), (21449, 21604), (21605, 21772), (21773, 21944), (21945, 22114), (22115, 22282), (22283, 22454), (22455, 22624), (22625, 22792), (22793, 22958), (22959, 23114), (23115, 23270), (23271, 23440), (23441, 23602), (23603, 23774), (23775, 23944), (23945, 24100), (24101, 24268), (24269, 24422), (24423, 24592), (24593, 24764), (24765, 24934), (24935, 25094), (25095, 25258), (25259, 25424), (25425, 25594), (25595, 25760), (25761, 25930), (25931, 26102), (26103, 26270), (26271, 26438), (26439, 26608), (26609, 26768), (26769, 26930), (26931, 27098), (27099, 27262), (27263, 27430), (27431, 27602), (27603, 27754), (27755, 27922), (27923, 28090), (28091, 28258), (28259, 28400), (28401, 28564), (28565, 28730), (28731, 28900), (28901, 29072), (29073, 29234), (29235, 29402), (29403, 29411), (29791, 29939), (31213, 31364), (31365, 31421), (31423, 31500), (31827, 31855), (31974, 31998), (32805, 32939), (33614, 33660), (33708, 33785), (34322, 34490), (34491, 34562), (36517, 36668), (36669, 36672), (37303, 37381), (37446, 37474), (37500, 37664), (37665, 37709), (38307, 38462), (39366, 39475), (40401, 40499), (40931, 40975), (45369, 45424), (45927, 45967), (47045, 47046), (47526, 47692), (47693, 47695), (48013, 48132), (48373, 48542), (48543, 48544), (48778, 48839), (49152, 49310), (49311, 49323), (49379, 49469), (50421, 50581), (51076, 51176), (53138, 53216), (53290, 53309), (55451, 55612), (55613, 55618), (56307, 56340), (56454, 56478), (57245, 57293), (58619, 58735), (68694, 68815), (71289, 71458), (71459, 71460), (73167, 73173), (73205, 73338), (83667, 83692), (85805, 85854), (89383, 89544), (93845, 93921), (96774, 96776), (103041, 103137), (109503, 109546), (137842, 137952), (148955, 149048)]

theorem row172_bounds_eq : row172.goods.map goodSegmentBounds = row172_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row172_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32939), (2, 49152, 49323), (2, 32768, 32939), (3, 32805, 32976), (3, 39366, 39537), (3, 45927, 46098), (3, 52488, 52659), (3, 39366, 39537), (5, 31250, 31421), (5, 34375, 34546), (5, 37500, 37671), (5, 40625, 40796), (5, 31250, 31421), (5, 46875, 47046), (7, 31213, 31384), (7, 33614, 33785), (7, 50421, 50592), (11, 29412, 29453), (11, 43923, 44094), (11, 58564, 58735), (13, 57122, 57293), (17, 29478, 29649), (17, 34391, 34562), (17, 39304, 39475), (17, 44217, 44388), (17, 49130, 49301), (17, 54043, 54214), (19, 34295, 34466), (19, 41154, 41325), (19, 48013, 48184), (19, 54872, 55043), (23, 36501, 36672), (23, 48668, 48839), (29, 48778, 48949), (31, 29791, 29962), (37, 50653, 50824), (53, 30899, 31070), (53, 33708, 33879), (53, 36517, 36688), (59, 31329, 31500), (59, 34810, 34981), (59, 38291, 38462), (59, 41772, 41943), (59, 45253, 45424), (61, 29768, 29939), (61, 33489, 33660), (61, 37210, 37381), (61, 40931, 41102), (61, 44652, 44823), (61, 48373, 48544), (67, 31423, 31594), (67, 35912, 36083), (67, 40401, 40572), (67, 44890, 45061), (67, 49379, 49550), (67, 53868, 54039), (67, 58357, 58528), (71, 30246, 30417), (71, 35287, 35458), (71, 40328, 40499), (71, 45369, 45540), (71, 50410, 50581), (71, 55451, 55622), (73, 31974, 32145), (73, 37303, 37474), (73, 42632, 42803), (73, 47961, 48132), (73, 53290, 53461), (73, 58619, 58790), (79, 31205, 31376), (79, 37446, 37617), (79, 43687, 43858), (79, 49928, 50099), (79, 56169, 56340), (83, 34445, 34616), (83, 41334, 41505), (83, 48223, 48394), (83, 55112, 55283), (89, 31684, 31855), (89, 39605, 39776), (89, 47526, 47697), (89, 55447, 55618), (97, 37636, 37807), (97, 47045, 47216), (97, 56454, 56625), (101, 30603, 30774), (101, 40804, 40975), (101, 51005, 51176), (103, 31827, 31998), (103, 42436, 42607), (103, 53045, 53216), (107, 34347, 34518), (107, 45796, 45967), (107, 57245, 57416), (109, 35643, 35814), (109, 47524, 47695), (113, 38307, 38478), (113, 51076, 51247), (127, 32258, 32429), (127, 48387, 48558), (131, 34322, 34493), (131, 51483, 51654), (137, 37538, 37709), (137, 56307, 56478), (139, 38642, 38813), (139, 57963, 58134), (149, 44402, 44573), (151, 45602, 45773), (157, 49298, 49469), (163, 53138, 53309), (167, 55778, 55949)]

def row172_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32939), (2, 49152, 49323), (2, 32768, 32939), (3, 32805, 32976), (3, 39366, 39537), (3, 45927, 46098), (3, 52488, 52659), (3, 39366, 39537), (5, 31250, 31421), (5, 34375, 34546), (5, 37500, 37671), (5, 40625, 40796), (5, 31250, 31421), (5, 46875, 47046), (7, 31213, 31384), (7, 33614, 33785)]

def row172_layer000_block001 : List ColouredInterval :=
  [(7, 50421, 50592), (11, 29412, 29453), (11, 43923, 44094), (11, 58564, 58735), (13, 57122, 57293), (17, 29478, 29649), (17, 34391, 34562), (17, 39304, 39475), (17, 44217, 44388), (17, 49130, 49301), (17, 54043, 54214), (19, 34295, 34466), (19, 41154, 41325), (19, 48013, 48184), (19, 54872, 55043), (23, 36501, 36672)]

def row172_layer000_block002 : List ColouredInterval :=
  [(23, 48668, 48839), (29, 48778, 48949), (31, 29791, 29962), (37, 50653, 50824), (53, 30899, 31070), (53, 33708, 33879), (53, 36517, 36688), (59, 31329, 31500), (59, 34810, 34981), (59, 38291, 38462), (59, 41772, 41943), (59, 45253, 45424), (61, 29768, 29939), (61, 33489, 33660), (61, 37210, 37381), (61, 40931, 41102)]

def row172_layer000_block003 : List ColouredInterval :=
  [(61, 44652, 44823), (61, 48373, 48544), (67, 31423, 31594), (67, 35912, 36083), (67, 40401, 40572), (67, 44890, 45061), (67, 49379, 49550), (67, 53868, 54039), (67, 58357, 58528), (71, 30246, 30417), (71, 35287, 35458), (71, 40328, 40499), (71, 45369, 45540), (71, 50410, 50581), (71, 55451, 55622), (73, 31974, 32145)]

def row172_layer000_block004 : List ColouredInterval :=
  [(73, 37303, 37474), (73, 42632, 42803), (73, 47961, 48132), (73, 53290, 53461), (73, 58619, 58790), (79, 31205, 31376), (79, 37446, 37617), (79, 43687, 43858), (79, 49928, 50099), (79, 56169, 56340), (83, 34445, 34616), (83, 41334, 41505), (83, 48223, 48394), (83, 55112, 55283), (89, 31684, 31855), (89, 39605, 39776)]

def row172_layer000_block005 : List ColouredInterval :=
  [(89, 47526, 47697), (89, 55447, 55618), (97, 37636, 37807), (97, 47045, 47216), (97, 56454, 56625), (101, 30603, 30774), (101, 40804, 40975), (101, 51005, 51176), (103, 31827, 31998), (103, 42436, 42607), (103, 53045, 53216), (107, 34347, 34518), (107, 45796, 45967), (107, 57245, 57416), (109, 35643, 35814), (109, 47524, 47695)]

def row172_layer000_block006 : List ColouredInterval :=
  [(113, 38307, 38478), (113, 51076, 51247), (127, 32258, 32429), (127, 48387, 48558), (131, 34322, 34493), (131, 51483, 51654), (137, 37538, 37709), (137, 56307, 56478), (139, 38642, 38813), (139, 57963, 58134), (149, 44402, 44573), (151, 45602, 45773), (157, 49298, 49469), (163, 53138, 53309), (167, 55778, 55949)]

def row172_layer000_chunks : List (List ColouredInterval) :=
  [row172_layer000_block000, row172_layer000_block001, row172_layer000_block002, row172_layer000_block003, row172_layer000_block004, row172_layer000_block005, row172_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_arithmetic : LayerArithmeticValid row172.height { lower := 29412, upper := 58824, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_enumeration :
    activePowerIntervalList 172 13 29412 58824 = row172_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_pairs000 :
    row172_layer000_block000.all (fun I => row172_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_pairs001 :
    row172_layer000_block001.all (fun I => row172_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_pairs002 :
    row172_layer000_block002.all (fun I => row172_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_pairs003 :
    row172_layer000_block003.all (fun I => row172_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_pairs004 :
    row172_layer000_block004.all (fun I => row172_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_pairs005 :
    row172_layer000_block005.all (fun I => row172_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_pairs006 :
    row172_layer000_block006.all (fun I => row172_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_chunks_eq : row172_layer000_chunks.flatten = row172_layer000_intervals := by
  rfl

theorem row172_layer000_pairs : pairCoverCheck row172_layer000_intervals row172_bounds = true := by
  apply pairCoverCheck_of_chunks row172_layer000_chunks_eq
  intro block hblock
  simp only [row172_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row172_layer000_pairs000
  · exact row172_layer000_pairs001
  · exact row172_layer000_pairs002
  · exact row172_layer000_pairs003
  · exact row172_layer000_pairs004
  · exact row172_layer000_pairs005
  · exact row172_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer000_checked :
    coverLayerCheck row172.height row172.goods { lower := 29412, upper := 58824, M := 13 } = true := by
  exact coverLayerCheck_of_parts row172_layer000_arithmetic row172_layer000_enumeration row172_bounds_eq row172_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row172_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65707), (2, 65536, 65707), (3, 59049, 59220), (3, 59049, 59220), (3, 78732, 78903), (3, 98415, 98586), (3, 59049, 59220), (5, 62500, 62671), (5, 78125, 78296), (5, 93750, 93921), (5, 109375, 109546), (5, 78125, 78296), (7, 67228, 67399), (7, 84035, 84206), (7, 100842, 101013), (11, 73205, 73376), (11, 87846, 88017), (11, 102487, 102658), (11, 117128, 117299), (13, 85683, 85854), (13, 114244, 114415), (17, 83521, 83692), (19, 61731, 61902), (23, 60835, 61006), (23, 73002, 73173), (23, 85169, 85340), (23, 97336, 97507), (23, 109503, 109674), (29, 73167, 73338), (29, 97556, 97727), (31, 59582, 59753), (31, 89373, 89544), (37, 101306, 101477), (41, 68921, 69092), (47, 103823, 103994), (83, 62001, 62172), (89, 63368, 63539), (89, 71289, 71460), (97, 65863, 66034), (97, 75272, 75443), (97, 84681, 84852), (101, 61206, 61377), (101, 71407, 71578), (101, 81608, 81779), (101, 91809, 91980), (103, 63654, 63825), (103, 74263, 74434), (103, 84872, 85043), (103, 95481, 95652), (107, 68694, 68865), (107, 80143, 80314), (107, 91592, 91763), (107, 103041, 103212), (109, 59405, 59576), (109, 71286, 71457), (109, 83167, 83338), (109, 95048, 95219), (109, 106929, 107100), (113, 63845, 64016), (113, 76614, 76785), (113, 89383, 89554), (113, 102152, 102323), (113, 114921, 115092), (127, 64516, 64687), (127, 80645, 80816), (127, 96774, 96945), (127, 112903, 113074), (131, 68644, 68815), (131, 85805, 85976), (131, 102966, 103137), (137, 75076, 75247), (137, 93845, 94016), (137, 112614, 112785), (139, 77284, 77455), (139, 96605, 96776), (139, 115926, 116097), (149, 66603, 66774), (149, 88804, 88975), (149, 111005, 111176), (151, 68403, 68574), (151, 91204, 91375), (151, 114005, 114176), (157, 73947, 74118), (157, 98596, 98767), (163, 79707, 79878), (163, 106276, 106447), (167, 83667, 83838), (167, 111556, 111727)]

def row172_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65707), (2, 65536, 65707), (3, 59049, 59220), (3, 59049, 59220), (3, 78732, 78903), (3, 98415, 98586), (3, 59049, 59220), (5, 62500, 62671), (5, 78125, 78296), (5, 93750, 93921), (5, 109375, 109546), (5, 78125, 78296), (7, 67228, 67399), (7, 84035, 84206), (7, 100842, 101013), (11, 73205, 73376)]

def row172_layer001_block001 : List ColouredInterval :=
  [(11, 87846, 88017), (11, 102487, 102658), (11, 117128, 117299), (13, 85683, 85854), (13, 114244, 114415), (17, 83521, 83692), (19, 61731, 61902), (23, 60835, 61006), (23, 73002, 73173), (23, 85169, 85340), (23, 97336, 97507), (23, 109503, 109674), (29, 73167, 73338), (29, 97556, 97727), (31, 59582, 59753), (31, 89373, 89544)]

def row172_layer001_block002 : List ColouredInterval :=
  [(37, 101306, 101477), (41, 68921, 69092), (47, 103823, 103994), (83, 62001, 62172), (89, 63368, 63539), (89, 71289, 71460), (97, 65863, 66034), (97, 75272, 75443), (97, 84681, 84852), (101, 61206, 61377), (101, 71407, 71578), (101, 81608, 81779), (101, 91809, 91980), (103, 63654, 63825), (103, 74263, 74434), (103, 84872, 85043)]

def row172_layer001_block003 : List ColouredInterval :=
  [(103, 95481, 95652), (107, 68694, 68865), (107, 80143, 80314), (107, 91592, 91763), (107, 103041, 103212), (109, 59405, 59576), (109, 71286, 71457), (109, 83167, 83338), (109, 95048, 95219), (109, 106929, 107100), (113, 63845, 64016), (113, 76614, 76785), (113, 89383, 89554), (113, 102152, 102323), (113, 114921, 115092), (127, 64516, 64687)]

def row172_layer001_block004 : List ColouredInterval :=
  [(127, 80645, 80816), (127, 96774, 96945), (127, 112903, 113074), (131, 68644, 68815), (131, 85805, 85976), (131, 102966, 103137), (137, 75076, 75247), (137, 93845, 94016), (137, 112614, 112785), (139, 77284, 77455), (139, 96605, 96776), (139, 115926, 116097), (149, 66603, 66774), (149, 88804, 88975), (149, 111005, 111176), (151, 68403, 68574)]

def row172_layer001_block005 : List ColouredInterval :=
  [(151, 91204, 91375), (151, 114005, 114176), (157, 73947, 74118), (157, 98596, 98767), (163, 79707, 79878), (163, 106276, 106447), (167, 83667, 83838), (167, 111556, 111727)]

def row172_layer001_chunks : List (List ColouredInterval) :=
  [row172_layer001_block000, row172_layer001_block001, row172_layer001_block002, row172_layer001_block003, row172_layer001_block004, row172_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_intervals
