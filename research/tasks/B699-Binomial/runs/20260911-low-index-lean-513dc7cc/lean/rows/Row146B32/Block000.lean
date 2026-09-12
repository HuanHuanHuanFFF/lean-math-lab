import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row146_height : HeightCertificateDatum := { i := 146, r := 48, s := 103, n0Power10 := 7 }

def row146_goods : List GoodSegment := [
  { lower := 294, upper := 438, witness := RowWitness.topPrime 293 },
  { lower := 439, upper := 584, witness := RowWitness.topPrime 439 },
  { lower := 585, upper := 722, witness := RowWitness.topPrime 577 },
  { lower := 723, upper := 864, witness := RowWitness.topPrime 719 },
  { lower := 865, upper := 1008, witness := RowWitness.topPrime 863 },
  { lower := 1009, upper := 1154, witness := RowWitness.topPrime 1009 },
  { lower := 1155, upper := 1298, witness := RowWitness.topPrime 1153 },
  { lower := 1299, upper := 1442, witness := RowWitness.topPrime 1297 },
  { lower := 1443, upper := 1584, witness := RowWitness.topPrime 1439 },
  { lower := 1585, upper := 1728, witness := RowWitness.topPrime 1583 },
  { lower := 1729, upper := 1868, witness := RowWitness.topPrime 1723 },
  { lower := 1869, upper := 2012, witness := RowWitness.topPrime 1867 },
  { lower := 2013, upper := 2156, witness := RowWitness.topPrime 2011 },
  { lower := 2157, upper := 2298, witness := RowWitness.topPrime 2153 },
  { lower := 2299, upper := 2442, witness := RowWitness.topPrime 2297 },
  { lower := 2443, upper := 2586, witness := RowWitness.topPrime 2441 },
  { lower := 2587, upper := 2724, witness := RowWitness.topPrime 2579 },
  { lower := 2725, upper := 2864, witness := RowWitness.topPrime 2719 },
  { lower := 2865, upper := 3006, witness := RowWitness.topPrime 2861 },
  { lower := 3007, upper := 3146, witness := RowWitness.topPrime 3001 },
  { lower := 3147, upper := 3282, witness := RowWitness.topPrime 3137 },
  { lower := 3283, upper := 3416, witness := RowWitness.topPrime 3271 },
  { lower := 3417, upper := 3558, witness := RowWitness.topPrime 3413 },
  { lower := 3559, upper := 3704, witness := RowWitness.topPrime 3559 },
  { lower := 3705, upper := 3846, witness := RowWitness.topPrime 3701 },
  { lower := 3847, upper := 3992, witness := RowWitness.topPrime 3847 },
  { lower := 3993, upper := 4134, witness := RowWitness.topPrime 3989 },
  { lower := 4135, upper := 4278, witness := RowWitness.topPrime 4133 },
  { lower := 4279, upper := 4418, witness := RowWitness.topPrime 4273 },
  { lower := 4419, upper := 4554, witness := RowWitness.topPrime 4409 },
  { lower := 4555, upper := 4694, witness := RowWitness.topPrime 4549 },
  { lower := 4695, upper := 4836, witness := RowWitness.topPrime 4691 },
  { lower := 4837, upper := 4976, witness := RowWitness.topPrime 4831 },
  { lower := 4977, upper := 5118, witness := RowWitness.topPrime 4973 },
  { lower := 5119, upper := 5264, witness := RowWitness.topPrime 5119 },
  { lower := 5265, upper := 5406, witness := RowWitness.topPrime 5261 },
  { lower := 5407, upper := 5552, witness := RowWitness.topPrime 5407 },
  { lower := 5553, upper := 5676, witness := RowWitness.topPrime 5531 },
  { lower := 5677, upper := 5814, witness := RowWitness.topPrime 5669 },
  { lower := 5815, upper := 5958, witness := RowWitness.topPrime 5813 },
  { lower := 5959, upper := 6098, witness := RowWitness.topPrime 5953 },
  { lower := 6099, upper := 6236, witness := RowWitness.topPrime 6091 },
  { lower := 6237, upper := 6374, witness := RowWitness.topPrime 6229 },
  { lower := 6375, upper := 6518, witness := RowWitness.topPrime 6373 },
  { lower := 6519, upper := 6636, witness := RowWitness.topPrime 6491 },
  { lower := 6637, upper := 6782, witness := RowWitness.topPrime 6637 },
  { lower := 6783, upper := 6926, witness := RowWitness.topPrime 6781 },
  { lower := 6927, upper := 7062, witness := RowWitness.topPrime 6917 },
  { lower := 7063, upper := 7202, witness := RowWitness.topPrime 7057 },
  { lower := 7203, upper := 7338, witness := RowWitness.topPrime 7193 },
  { lower := 7339, upper := 7478, witness := RowWitness.topPrime 7333 },
  { lower := 7479, upper := 7622, witness := RowWitness.topPrime 7477 },
  { lower := 7623, upper := 7766, witness := RowWitness.topPrime 7621 },
  { lower := 7767, upper := 7904, witness := RowWitness.topPrime 7759 },
  { lower := 7905, upper := 8046, witness := RowWitness.topPrime 7901 },
  { lower := 8047, upper := 8184, witness := RowWitness.topPrime 8039 },
  { lower := 8185, upper := 8324, witness := RowWitness.topPrime 8179 },
  { lower := 8325, upper := 8462, witness := RowWitness.topPrime 8317 },
  { lower := 8463, upper := 8606, witness := RowWitness.topPrime 8461 },
  { lower := 8607, upper := 8744, witness := RowWitness.topPrime 8599 },
  { lower := 8745, upper := 8886, witness := RowWitness.topPrime 8741 },
  { lower := 8887, upper := 9032, witness := RowWitness.topPrime 8887 },
  { lower := 9033, upper := 9174, witness := RowWitness.topPrime 9029 },
  { lower := 9175, upper := 9318, witness := RowWitness.topPrime 9173 },
  { lower := 9319, upper := 9464, witness := RowWitness.topPrime 9319 },
  { lower := 9465, upper := 9608, witness := RowWitness.topPrime 9463 },
  { lower := 9609, upper := 9746, witness := RowWitness.topPrime 9601 },
  { lower := 9747, upper := 9888, witness := RowWitness.topPrime 9743 },
  { lower := 9889, upper := 10032, witness := RowWitness.topPrime 9887 },
  { lower := 10033, upper := 10154, witness := RowWitness.topPrime 10009 },
  { lower := 10155, upper := 10296, witness := RowWitness.topPrime 10151 },
  { lower := 10297, upper := 10434, witness := RowWitness.topPrime 10289 },
  { lower := 10435, upper := 10578, witness := RowWitness.topPrime 10433 },
  { lower := 10579, upper := 10712, witness := RowWitness.topPrime 10567 },
  { lower := 10713, upper := 10856, witness := RowWitness.topPrime 10711 },
  { lower := 10857, upper := 10998, witness := RowWitness.topPrime 10853 },
  { lower := 10999, upper := 11138, witness := RowWitness.topPrime 10993 },
  { lower := 11139, upper := 11276, witness := RowWitness.topPrime 11131 },
  { lower := 11277, upper := 11418, witness := RowWitness.topPrime 11273 },
  { lower := 11419, upper := 11556, witness := RowWitness.topPrime 11411 },
  { lower := 11557, upper := 11696, witness := RowWitness.topPrime 11551 },
  { lower := 11697, upper := 11834, witness := RowWitness.topPrime 11689 },
  { lower := 11835, upper := 11978, witness := RowWitness.topPrime 11833 },
  { lower := 11979, upper := 12116, witness := RowWitness.topPrime 11971 },
  { lower := 12117, upper := 12258, witness := RowWitness.topPrime 12113 },
  { lower := 12259, upper := 12398, witness := RowWitness.topPrime 12253 },
  { lower := 12399, upper := 12536, witness := RowWitness.topPrime 12391 },
  { lower := 12537, upper := 12672, witness := RowWitness.topPrime 12527 },
  { lower := 12673, upper := 12816, witness := RowWitness.topPrime 12671 },
  { lower := 12817, upper := 12954, witness := RowWitness.topPrime 12809 },
  { lower := 12955, upper := 13098, witness := RowWitness.topPrime 12953 },
  { lower := 13099, upper := 13244, witness := RowWitness.topPrime 13099 },
  { lower := 13245, upper := 13386, witness := RowWitness.topPrime 13241 },
  { lower := 13387, upper := 13526, witness := RowWitness.topPrime 13381 },
  { lower := 13527, upper := 13668, witness := RowWitness.topPrime 13523 },
  { lower := 13669, upper := 13814, witness := RowWitness.topPrime 13669 },
  { lower := 13815, upper := 13952, witness := RowWitness.topPrime 13807 },
  { lower := 13953, upper := 14078, witness := RowWitness.topPrime 13933 },
  { lower := 14079, upper := 14216, witness := RowWitness.topPrime 14071 },
  { lower := 14217, upper := 14352, witness := RowWitness.topPrime 14207 },
  { lower := 14353, upper := 14492, witness := RowWitness.topPrime 14347 },
  { lower := 14493, upper := 14634, witness := RowWitness.topPrime 14489 },
  { lower := 14635, upper := 14778, witness := RowWitness.topPrime 14633 },
  { lower := 14779, upper := 14924, witness := RowWitness.topPrime 14779 },
  { lower := 14925, upper := 15068, witness := RowWitness.topPrime 14923 },
  { lower := 15069, upper := 15206, witness := RowWitness.topPrime 15061 },
  { lower := 15207, upper := 15344, witness := RowWitness.topPrime 15199 },
  { lower := 15345, upper := 15476, witness := RowWitness.topPrime 15331 },
  { lower := 15477, upper := 15618, witness := RowWitness.topPrime 15473 },
  { lower := 15619, upper := 15764, witness := RowWitness.topPrime 15619 },
  { lower := 15765, upper := 15906, witness := RowWitness.topPrime 15761 },
  { lower := 15907, upper := 16052, witness := RowWitness.topPrime 15907 },
  { lower := 16053, upper := 16178, witness := RowWitness.topPrime 16033 },
  { lower := 16179, upper := 16286, witness := RowWitness.topPrime 16141 },
  { lower := 16287, upper := 16418, witness := RowWitness.topPrime 16273 },
  { lower := 16419, upper := 16562, witness := RowWitness.topPrime 16417 },
  { lower := 16563, upper := 16706, witness := RowWitness.topPrime 16561 },
  { lower := 16707, upper := 16848, witness := RowWitness.topPrime 16703 },
  { lower := 16849, upper := 16988, witness := RowWitness.topPrime 16843 },
  { lower := 16989, upper := 17132, witness := RowWitness.topPrime 16987 },
  { lower := 17133, upper := 17268, witness := RowWitness.topPrime 17123 },
  { lower := 17269, upper := 17402, witness := RowWitness.topPrime 17257 },
  { lower := 17403, upper := 17546, witness := RowWitness.topPrime 17401 },
  { lower := 17547, upper := 17684, witness := RowWitness.topPrime 17539 },
  { lower := 17685, upper := 17828, witness := RowWitness.topPrime 17683 },
  { lower := 17829, upper := 17972, witness := RowWitness.topPrime 17827 },
  { lower := 17973, upper := 18116, witness := RowWitness.topPrime 17971 },
  { lower := 18117, upper := 18242, witness := RowWitness.topPrime 18097 },
  { lower := 18243, upper := 18378, witness := RowWitness.topPrime 18233 },
  { lower := 18379, upper := 18524, witness := RowWitness.topPrime 18379 },
  { lower := 18525, upper := 18668, witness := RowWitness.topPrime 18523 },
  { lower := 18669, upper := 18806, witness := RowWitness.topPrime 18661 },
  { lower := 18807, upper := 18948, witness := RowWitness.topPrime 18803 },
  { lower := 18949, upper := 19092, witness := RowWitness.topPrime 18947 },
  { lower := 19093, upper := 19232, witness := RowWitness.topPrime 19087 },
  { lower := 19233, upper := 19376, witness := RowWitness.topPrime 19231 },
  { lower := 19377, upper := 19518, witness := RowWitness.topPrime 19373 },
  { lower := 19519, upper := 19652, witness := RowWitness.topPrime 19507 },
  { lower := 19653, upper := 19754, witness := RowWitness.topPrime 19609 },
  { lower := 19755, upper := 19898, witness := RowWitness.topPrime 19753 },
  { lower := 19899, upper := 20036, witness := RowWitness.topPrime 19891 },
  { lower := 20037, upper := 20174, witness := RowWitness.topPrime 20029 },
  { lower := 20175, upper := 20318, witness := RowWitness.topPrime 20173 },
  { lower := 20319, upper := 20442, witness := RowWitness.topPrime 20297 },
  { lower := 20443, upper := 20588, witness := RowWitness.topPrime 20443 },
  { lower := 20589, upper := 20708, witness := RowWitness.topPrime 20563 },
  { lower := 20709, upper := 20852, witness := RowWitness.topPrime 20707 },
  { lower := 20853, upper := 20994, witness := RowWitness.topPrime 20849 },
  { lower := 20995, upper := 21128, witness := RowWitness.topPrime 20983 },
  { lower := 21129, upper := 21169, witness := RowWitness.topPrime 21121 },
  { lower := 21870, upper := 22008, witness := RowWitness.topPrime 21863 },
  { lower := 22009, upper := 22020, witness := RowWitness.topPrime 22003 },
  { lower := 22090, upper := 22115, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22235, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22333, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22586, witness := RowWitness.topPrime 22441 },
  { lower := 22587, upper := 22590, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23906, witness := RowWitness.topPrime 23761 },
  { lower := 23907, upper := 23907, witness := RowWitness.topPrime 23899 },
  { lower := 24037, upper := 24174, witness := RowWitness.topPrime 24029 },
  { lower := 24175, upper := 24202, witness := RowWitness.topPrime 24169 },
  { lower := 24299, upper := 24312, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24474, witness := RowWitness.topPrime 24329 },
  { lower := 24475, upper := 24512, witness := RowWitness.topPrime 24473 },
  { lower := 24576, upper := 24710, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25109, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25334, witness := RowWitness.topPrime 25189 },
  { lower := 25335, upper := 25360, witness := RowWitness.topPrime 25321 },
  { lower := 26364, upper := 26389, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26552, witness := RowWitness.topPrime 26407 },
  { lower := 26553, upper := 26556, witness := RowWitness.topPrime 26539 },
  { lower := 27556, upper := 27581, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27880, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28268, witness := RowWitness.topPrime 28123 },
  { lower := 28269, upper := 28270, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28576, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28706, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28856, witness := RowWitness.topPrime 28711 },
  { lower := 28857, upper := 28862, witness := RowWitness.topPrime 28843 },
  { lower := 29791, upper := 29913, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30738, witness := RowWitness.topPrime 30593 },
  { lower := 30739, upper := 30748, witness := RowWitness.topPrime 30727 },
  { lower := 30758, upper := 30763, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 30903, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31044, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31338, witness := RowWitness.topPrime 31193 },
  { lower := 31339, upper := 31395, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31474, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31829, witness := RowWitness.topPrime 31817 },
  { lower := 32805, upper := 32913, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33634, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33759, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34464, witness := RowWitness.topPrime 34319 },
  { lower := 34465, upper := 34536, witness := RowWitness.topPrime 34457 },
  { lower := 36015, upper := 36057, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36642, witness := RowWitness.topPrime 36497 },
  { lower := 36643, upper := 36646, witness := RowWitness.topPrime 36643 },
  { lower := 37500, upper := 37638, witness := RowWitness.topPrime 37493 },
  { lower := 37639, upper := 37683, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38436, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39468, witness := RowWitness.topPrime 39323 },
  { lower := 39469, upper := 39471, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40473, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40949, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41076, witness := RowWitness.topPrime 40949 },
  { lower := 45927, upper := 45941, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47666, witness := RowWitness.topPrime 47521 },
  { lower := 47667, upper := 47669, witness := RowWitness.topPrime 47659 },
  { lower := 48778, upper := 48813, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49275, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50555, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51150, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55586, witness := RowWitness.topPrime 55441 },
  { lower := 55587, upper := 55592, witness := RowWitness.topPrime 55579 },
  { lower := 56307, upper := 56314, witness := RowWitness.topPrime 56299 },
  { lower := 57245, upper := 57267, witness := RowWitness.topPrime 57241 },
  { lower := 62500, upper := 62555, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65681, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68784, witness := RowWitness.topPrime 68639 },
  { lower := 68785, upper := 68796, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69035, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71432, witness := RowWitness.topPrime 71287 },
  { lower := 71433, upper := 71434, witness := RowWitness.topPrime 71429 },
  { lower := 73205, upper := 73312, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85828, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89518, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93895, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98449, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137926, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149022, witness := RowWitness.topPrime 148949 }
]

def row146_layers : List CoverLayer := [
  { lower := 21170, upper := 42340, M := 15 },
  { lower := 42340, upper := 84680, M := 11 },
  { lower := 84680, upper := 169360, M := 8 },
  { lower := 169360, upper := 338720, M := 6 },
  { lower := 338720, upper := 677440, M := 5 },
  { lower := 677440, upper := 1354880, M := 4 },
  { lower := 1354880, upper := 2709760, M := 3 },
  { lower := 2709760, upper := 5419520, M := 2 },
  { lower := 5419520, upper := 10000000, M := 2 }
]

def row146 : FiniteCoverRow := {
  height := row146_height,
  goods := row146_goods,
  layers := row146_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good000_checked :
    goodSegmentCheck 146 48 103
      { lower := 294, upper := 438, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good001_checked :
    goodSegmentCheck 146 48 103
      { lower := 439, upper := 584, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good002_checked :
    goodSegmentCheck 146 48 103
      { lower := 585, upper := 722, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good003_checked :
    goodSegmentCheck 146 48 103
      { lower := 723, upper := 864, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good004_checked :
    goodSegmentCheck 146 48 103
      { lower := 865, upper := 1008, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good005_checked :
    goodSegmentCheck 146 48 103
      { lower := 1009, upper := 1154, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good006_checked :
    goodSegmentCheck 146 48 103
      { lower := 1155, upper := 1298, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good007_checked :
    goodSegmentCheck 146 48 103
      { lower := 1299, upper := 1442, witness := RowWitness.topPrime 1297 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good008_checked :
    goodSegmentCheck 146 48 103
      { lower := 1443, upper := 1584, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good009_checked :
    goodSegmentCheck 146 48 103
      { lower := 1585, upper := 1728, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good010_checked :
    goodSegmentCheck 146 48 103
      { lower := 1729, upper := 1868, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good011_checked :
    goodSegmentCheck 146 48 103
      { lower := 1869, upper := 2012, witness := RowWitness.topPrime 1867 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good012_checked :
    goodSegmentCheck 146 48 103
      { lower := 2013, upper := 2156, witness := RowWitness.topPrime 2011 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good013_checked :
    goodSegmentCheck 146 48 103
      { lower := 2157, upper := 2298, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good014_checked :
    goodSegmentCheck 146 48 103
      { lower := 2299, upper := 2442, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good015_checked :
    goodSegmentCheck 146 48 103
      { lower := 2443, upper := 2586, witness := RowWitness.topPrime 2441 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good016_checked :
    goodSegmentCheck 146 48 103
      { lower := 2587, upper := 2724, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good017_checked :
    goodSegmentCheck 146 48 103
      { lower := 2725, upper := 2864, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good018_checked :
    goodSegmentCheck 146 48 103
      { lower := 2865, upper := 3006, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good019_checked :
    goodSegmentCheck 146 48 103
      { lower := 3007, upper := 3146, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good020_checked :
    goodSegmentCheck 146 48 103
      { lower := 3147, upper := 3282, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good021_checked :
    goodSegmentCheck 146 48 103
      { lower := 3283, upper := 3416, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good022_checked :
    goodSegmentCheck 146 48 103
      { lower := 3417, upper := 3558, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good023_checked :
    goodSegmentCheck 146 48 103
      { lower := 3559, upper := 3704, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good024_checked :
    goodSegmentCheck 146 48 103
      { lower := 3705, upper := 3846, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good025_checked :
    goodSegmentCheck 146 48 103
      { lower := 3847, upper := 3992, witness := RowWitness.topPrime 3847 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good026_checked :
    goodSegmentCheck 146 48 103
      { lower := 3993, upper := 4134, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good027_checked :
    goodSegmentCheck 146 48 103
      { lower := 4135, upper := 4278, witness := RowWitness.topPrime 4133 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good028_checked :
    goodSegmentCheck 146 48 103
      { lower := 4279, upper := 4418, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good029_checked :
    goodSegmentCheck 146 48 103
      { lower := 4419, upper := 4554, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good030_checked :
    goodSegmentCheck 146 48 103
      { lower := 4555, upper := 4694, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good031_checked :
    goodSegmentCheck 146 48 103
      { lower := 4695, upper := 4836, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good032_checked :
    goodSegmentCheck 146 48 103
      { lower := 4837, upper := 4976, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good033_checked :
    goodSegmentCheck 146 48 103
      { lower := 4977, upper := 5118, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good034_checked :
    goodSegmentCheck 146 48 103
      { lower := 5119, upper := 5264, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good035_checked :
    goodSegmentCheck 146 48 103
      { lower := 5265, upper := 5406, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good036_checked :
    goodSegmentCheck 146 48 103
      { lower := 5407, upper := 5552, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good037_checked :
    goodSegmentCheck 146 48 103
      { lower := 5553, upper := 5676, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good038_checked :
    goodSegmentCheck 146 48 103
      { lower := 5677, upper := 5814, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good039_checked :
    goodSegmentCheck 146 48 103
      { lower := 5815, upper := 5958, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good040_checked :
    goodSegmentCheck 146 48 103
      { lower := 5959, upper := 6098, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good041_checked :
    goodSegmentCheck 146 48 103
      { lower := 6099, upper := 6236, witness := RowWitness.topPrime 6091 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good042_checked :
    goodSegmentCheck 146 48 103
      { lower := 6237, upper := 6374, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good043_checked :
    goodSegmentCheck 146 48 103
      { lower := 6375, upper := 6518, witness := RowWitness.topPrime 6373 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good044_checked :
    goodSegmentCheck 146 48 103
      { lower := 6519, upper := 6636, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good045_checked :
    goodSegmentCheck 146 48 103
      { lower := 6637, upper := 6782, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good046_checked :
    goodSegmentCheck 146 48 103
      { lower := 6783, upper := 6926, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good047_checked :
    goodSegmentCheck 146 48 103
      { lower := 6927, upper := 7062, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good048_checked :
    goodSegmentCheck 146 48 103
      { lower := 7063, upper := 7202, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good049_checked :
    goodSegmentCheck 146 48 103
      { lower := 7203, upper := 7338, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good050_checked :
    goodSegmentCheck 146 48 103
      { lower := 7339, upper := 7478, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good051_checked :
    goodSegmentCheck 146 48 103
      { lower := 7479, upper := 7622, witness := RowWitness.topPrime 7477 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good052_checked :
    goodSegmentCheck 146 48 103
      { lower := 7623, upper := 7766, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good053_checked :
    goodSegmentCheck 146 48 103
      { lower := 7767, upper := 7904, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good054_checked :
    goodSegmentCheck 146 48 103
      { lower := 7905, upper := 8046, witness := RowWitness.topPrime 7901 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good055_checked :
    goodSegmentCheck 146 48 103
      { lower := 8047, upper := 8184, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good056_checked :
    goodSegmentCheck 146 48 103
      { lower := 8185, upper := 8324, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good057_checked :
    goodSegmentCheck 146 48 103
      { lower := 8325, upper := 8462, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good058_checked :
    goodSegmentCheck 146 48 103
      { lower := 8463, upper := 8606, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good059_checked :
    goodSegmentCheck 146 48 103
      { lower := 8607, upper := 8744, witness := RowWitness.topPrime 8599 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good060_checked :
    goodSegmentCheck 146 48 103
      { lower := 8745, upper := 8886, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good061_checked :
    goodSegmentCheck 146 48 103
      { lower := 8887, upper := 9032, witness := RowWitness.topPrime 8887 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good062_checked :
    goodSegmentCheck 146 48 103
      { lower := 9033, upper := 9174, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good063_checked :
    goodSegmentCheck 146 48 103
      { lower := 9175, upper := 9318, witness := RowWitness.topPrime 9173 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good064_checked :
    goodSegmentCheck 146 48 103
      { lower := 9319, upper := 9464, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good065_checked :
    goodSegmentCheck 146 48 103
      { lower := 9465, upper := 9608, witness := RowWitness.topPrime 9463 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good066_checked :
    goodSegmentCheck 146 48 103
      { lower := 9609, upper := 9746, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good067_checked :
    goodSegmentCheck 146 48 103
      { lower := 9747, upper := 9888, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good068_checked :
    goodSegmentCheck 146 48 103
      { lower := 9889, upper := 10032, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good069_checked :
    goodSegmentCheck 146 48 103
      { lower := 10033, upper := 10154, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good070_checked :
    goodSegmentCheck 146 48 103
      { lower := 10155, upper := 10296, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good071_checked :
    goodSegmentCheck 146 48 103
      { lower := 10297, upper := 10434, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good072_checked :
    goodSegmentCheck 146 48 103
      { lower := 10435, upper := 10578, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good073_checked :
    goodSegmentCheck 146 48 103
      { lower := 10579, upper := 10712, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good074_checked :
    goodSegmentCheck 146 48 103
      { lower := 10713, upper := 10856, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good075_checked :
    goodSegmentCheck 146 48 103
      { lower := 10857, upper := 10998, witness := RowWitness.topPrime 10853 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good076_checked :
    goodSegmentCheck 146 48 103
      { lower := 10999, upper := 11138, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good077_checked :
    goodSegmentCheck 146 48 103
      { lower := 11139, upper := 11276, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good078_checked :
    goodSegmentCheck 146 48 103
      { lower := 11277, upper := 11418, witness := RowWitness.topPrime 11273 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good079_checked :
    goodSegmentCheck 146 48 103
      { lower := 11419, upper := 11556, witness := RowWitness.topPrime 11411 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good080_checked :
    goodSegmentCheck 146 48 103
      { lower := 11557, upper := 11696, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good081_checked :
    goodSegmentCheck 146 48 103
      { lower := 11697, upper := 11834, witness := RowWitness.topPrime 11689 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good082_checked :
    goodSegmentCheck 146 48 103
      { lower := 11835, upper := 11978, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good083_checked :
    goodSegmentCheck 146 48 103
      { lower := 11979, upper := 12116, witness := RowWitness.topPrime 11971 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good084_checked :
    goodSegmentCheck 146 48 103
      { lower := 12117, upper := 12258, witness := RowWitness.topPrime 12113 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good085_checked :
    goodSegmentCheck 146 48 103
      { lower := 12259, upper := 12398, witness := RowWitness.topPrime 12253 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good086_checked :
    goodSegmentCheck 146 48 103
      { lower := 12399, upper := 12536, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good087_checked :
    goodSegmentCheck 146 48 103
      { lower := 12537, upper := 12672, witness := RowWitness.topPrime 12527 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good088_checked :
    goodSegmentCheck 146 48 103
      { lower := 12673, upper := 12816, witness := RowWitness.topPrime 12671 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good089_checked :
    goodSegmentCheck 146 48 103
      { lower := 12817, upper := 12954, witness := RowWitness.topPrime 12809 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good090_checked :
    goodSegmentCheck 146 48 103
      { lower := 12955, upper := 13098, witness := RowWitness.topPrime 12953 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good091_checked :
    goodSegmentCheck 146 48 103
      { lower := 13099, upper := 13244, witness := RowWitness.topPrime 13099 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good092_checked :
    goodSegmentCheck 146 48 103
      { lower := 13245, upper := 13386, witness := RowWitness.topPrime 13241 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good093_checked :
    goodSegmentCheck 146 48 103
      { lower := 13387, upper := 13526, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good094_checked :
    goodSegmentCheck 146 48 103
      { lower := 13527, upper := 13668, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good095_checked :
    goodSegmentCheck 146 48 103
      { lower := 13669, upper := 13814, witness := RowWitness.topPrime 13669 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good096_checked :
    goodSegmentCheck 146 48 103
      { lower := 13815, upper := 13952, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good097_checked :
    goodSegmentCheck 146 48 103
      { lower := 13953, upper := 14078, witness := RowWitness.topPrime 13933 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good098_checked :
    goodSegmentCheck 146 48 103
      { lower := 14079, upper := 14216, witness := RowWitness.topPrime 14071 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good099_checked :
    goodSegmentCheck 146 48 103
      { lower := 14217, upper := 14352, witness := RowWitness.topPrime 14207 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good100_checked :
    goodSegmentCheck 146 48 103
      { lower := 14353, upper := 14492, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good101_checked :
    goodSegmentCheck 146 48 103
      { lower := 14493, upper := 14634, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good102_checked :
    goodSegmentCheck 146 48 103
      { lower := 14635, upper := 14778, witness := RowWitness.topPrime 14633 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good103_checked :
    goodSegmentCheck 146 48 103
      { lower := 14779, upper := 14924, witness := RowWitness.topPrime 14779 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good104_checked :
    goodSegmentCheck 146 48 103
      { lower := 14925, upper := 15068, witness := RowWitness.topPrime 14923 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good105_checked :
    goodSegmentCheck 146 48 103
      { lower := 15069, upper := 15206, witness := RowWitness.topPrime 15061 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good106_checked :
    goodSegmentCheck 146 48 103
      { lower := 15207, upper := 15344, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good107_checked :
    goodSegmentCheck 146 48 103
      { lower := 15345, upper := 15476, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good108_checked :
    goodSegmentCheck 146 48 103
      { lower := 15477, upper := 15618, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good109_checked :
    goodSegmentCheck 146 48 103
      { lower := 15619, upper := 15764, witness := RowWitness.topPrime 15619 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good110_checked :
    goodSegmentCheck 146 48 103
      { lower := 15765, upper := 15906, witness := RowWitness.topPrime 15761 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good111_checked :
    goodSegmentCheck 146 48 103
      { lower := 15907, upper := 16052, witness := RowWitness.topPrime 15907 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good112_checked :
    goodSegmentCheck 146 48 103
      { lower := 16053, upper := 16178, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good113_checked :
    goodSegmentCheck 146 48 103
      { lower := 16179, upper := 16286, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good114_checked :
    goodSegmentCheck 146 48 103
      { lower := 16287, upper := 16418, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good115_checked :
    goodSegmentCheck 146 48 103
      { lower := 16419, upper := 16562, witness := RowWitness.topPrime 16417 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good116_checked :
    goodSegmentCheck 146 48 103
      { lower := 16563, upper := 16706, witness := RowWitness.topPrime 16561 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good117_checked :
    goodSegmentCheck 146 48 103
      { lower := 16707, upper := 16848, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good118_checked :
    goodSegmentCheck 146 48 103
      { lower := 16849, upper := 16988, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good119_checked :
    goodSegmentCheck 146 48 103
      { lower := 16989, upper := 17132, witness := RowWitness.topPrime 16987 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good120_checked :
    goodSegmentCheck 146 48 103
      { lower := 17133, upper := 17268, witness := RowWitness.topPrime 17123 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good121_checked :
    goodSegmentCheck 146 48 103
      { lower := 17269, upper := 17402, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good122_checked :
    goodSegmentCheck 146 48 103
      { lower := 17403, upper := 17546, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good123_checked :
    goodSegmentCheck 146 48 103
      { lower := 17547, upper := 17684, witness := RowWitness.topPrime 17539 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good124_checked :
    goodSegmentCheck 146 48 103
      { lower := 17685, upper := 17828, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good125_checked :
    goodSegmentCheck 146 48 103
      { lower := 17829, upper := 17972, witness := RowWitness.topPrime 17827 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good126_checked :
    goodSegmentCheck 146 48 103
      { lower := 17973, upper := 18116, witness := RowWitness.topPrime 17971 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good127_checked :
    goodSegmentCheck 146 48 103
      { lower := 18117, upper := 18242, witness := RowWitness.topPrime 18097 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good128_checked :
    goodSegmentCheck 146 48 103
      { lower := 18243, upper := 18378, witness := RowWitness.topPrime 18233 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good129_checked :
    goodSegmentCheck 146 48 103
      { lower := 18379, upper := 18524, witness := RowWitness.topPrime 18379 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good130_checked :
    goodSegmentCheck 146 48 103
      { lower := 18525, upper := 18668, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good131_checked :
    goodSegmentCheck 146 48 103
      { lower := 18669, upper := 18806, witness := RowWitness.topPrime 18661 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good132_checked :
    goodSegmentCheck 146 48 103
      { lower := 18807, upper := 18948, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good133_checked :
    goodSegmentCheck 146 48 103
      { lower := 18949, upper := 19092, witness := RowWitness.topPrime 18947 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good134_checked :
    goodSegmentCheck 146 48 103
      { lower := 19093, upper := 19232, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good135_checked :
    goodSegmentCheck 146 48 103
      { lower := 19233, upper := 19376, witness := RowWitness.topPrime 19231 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good136_checked :
    goodSegmentCheck 146 48 103
      { lower := 19377, upper := 19518, witness := RowWitness.topPrime 19373 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good137_checked :
    goodSegmentCheck 146 48 103
      { lower := 19519, upper := 19652, witness := RowWitness.topPrime 19507 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good138_checked :
    goodSegmentCheck 146 48 103
      { lower := 19653, upper := 19754, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good139_checked :
    goodSegmentCheck 146 48 103
      { lower := 19755, upper := 19898, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good140_checked :
    goodSegmentCheck 146 48 103
      { lower := 19899, upper := 20036, witness := RowWitness.topPrime 19891 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good141_checked :
    goodSegmentCheck 146 48 103
      { lower := 20037, upper := 20174, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good142_checked :
    goodSegmentCheck 146 48 103
      { lower := 20175, upper := 20318, witness := RowWitness.topPrime 20173 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good143_checked :
    goodSegmentCheck 146 48 103
      { lower := 20319, upper := 20442, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good144_checked :
    goodSegmentCheck 146 48 103
      { lower := 20443, upper := 20588, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good145_checked :
    goodSegmentCheck 146 48 103
      { lower := 20589, upper := 20708, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good146_checked :
    goodSegmentCheck 146 48 103
      { lower := 20709, upper := 20852, witness := RowWitness.topPrime 20707 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good147_checked :
    goodSegmentCheck 146 48 103
      { lower := 20853, upper := 20994, witness := RowWitness.topPrime 20849 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good148_checked :
    goodSegmentCheck 146 48 103
      { lower := 20995, upper := 21128, witness := RowWitness.topPrime 20983 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good149_checked :
    goodSegmentCheck 146 48 103
      { lower := 21129, upper := 21169, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good150_checked :
    goodSegmentCheck 146 48 103
      { lower := 21870, upper := 22008, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good151_checked :
    goodSegmentCheck 146 48 103
      { lower := 22009, upper := 22020, witness := RowWitness.topPrime 22003 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good152_checked :
    goodSegmentCheck 146 48 103
      { lower := 22090, upper := 22115, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good153_checked :
    goodSegmentCheck 146 48 103
      { lower := 22188, upper := 22235, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good154_checked :
    goodSegmentCheck 146 48 103
      { lower := 22326, upper := 22333, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good155_checked :
    goodSegmentCheck 146 48 103
      { lower := 22445, upper := 22586, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good156_checked :
    goodSegmentCheck 146 48 103
      { lower := 22587, upper := 22590, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good157_checked :
    goodSegmentCheck 146 48 103
      { lower := 23763, upper := 23906, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good158_checked :
    goodSegmentCheck 146 48 103
      { lower := 23907, upper := 23907, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good159_checked :
    goodSegmentCheck 146 48 103
      { lower := 24037, upper := 24174, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good160_checked :
    goodSegmentCheck 146 48 103
      { lower := 24175, upper := 24202, witness := RowWitness.topPrime 24169 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good161_checked :
    goodSegmentCheck 146 48 103
      { lower := 24299, upper := 24312, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good162_checked :
    goodSegmentCheck 146 48 103
      { lower := 24334, upper := 24474, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good163_checked :
    goodSegmentCheck 146 48 103
      { lower := 24475, upper := 24512, witness := RowWitness.topPrime 24473 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good164_checked :
    goodSegmentCheck 146 48 103
      { lower := 24576, upper := 24710, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good165_checked :
    goodSegmentCheck 146 48 103
      { lower := 25000, upper := 25109, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good166_checked :
    goodSegmentCheck 146 48 103
      { lower := 25215, upper := 25334, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good167_checked :
    goodSegmentCheck 146 48 103
      { lower := 25335, upper := 25360, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good168_checked :
    goodSegmentCheck 146 48 103
      { lower := 26364, upper := 26389, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good169_checked :
    goodSegmentCheck 146 48 103
      { lower := 26411, upper := 26552, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good170_checked :
    goodSegmentCheck 146 48 103
      { lower := 26553, upper := 26556, witness := RowWitness.topPrime 26539 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good171_checked :
    goodSegmentCheck 146 48 103
      { lower := 27556, upper := 27581, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good172_checked :
    goodSegmentCheck 146 48 103
      { lower := 27848, upper := 27880, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good173_checked :
    goodSegmentCheck 146 48 103
      { lower := 28125, upper := 28268, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good174_checked :
    goodSegmentCheck 146 48 103
      { lower := 28269, upper := 28270, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good175_checked :
    goodSegmentCheck 146 48 103
      { lower := 28561, upper := 28576, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good176_checked :
    goodSegmentCheck 146 48 103
      { lower := 28672, upper := 28706, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good177_checked :
    goodSegmentCheck 146 48 103
      { lower := 28717, upper := 28856, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good178_checked :
    goodSegmentCheck 146 48 103
      { lower := 28857, upper := 28862, witness := RowWitness.topPrime 28843 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good179_checked :
    goodSegmentCheck 146 48 103
      { lower := 29791, upper := 29913, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good180_checked :
    goodSegmentCheck 146 48 103
      { lower := 30618, upper := 30738, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good181_checked :
    goodSegmentCheck 146 48 103
      { lower := 30739, upper := 30748, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good182_checked :
    goodSegmentCheck 146 48 103
      { lower := 30758, upper := 30763, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good183_checked :
    goodSegmentCheck 146 48 103
      { lower := 30899, upper := 30903, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good184_checked :
    goodSegmentCheck 146 48 103
      { lower := 30926, upper := 31044, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good185_checked :
    goodSegmentCheck 146 48 103
      { lower := 31213, upper := 31338, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good186_checked :
    goodSegmentCheck 146 48 103
      { lower := 31339, upper := 31395, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good187_checked :
    goodSegmentCheck 146 48 103
      { lower := 31423, upper := 31474, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good188_checked :
    goodSegmentCheck 146 48 103
      { lower := 31827, upper := 31829, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good189_checked :
    goodSegmentCheck 146 48 103
      { lower := 32805, upper := 32913, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good190_checked :
    goodSegmentCheck 146 48 103
      { lower := 33614, upper := 33634, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good191_checked :
    goodSegmentCheck 146 48 103
      { lower := 33708, upper := 33759, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good192_checked :
    goodSegmentCheck 146 48 103
      { lower := 34322, upper := 34464, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good193_checked :
    goodSegmentCheck 146 48 103
      { lower := 34465, upper := 34536, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good194_checked :
    goodSegmentCheck 146 48 103
      { lower := 36015, upper := 36057, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good195_checked :
    goodSegmentCheck 146 48 103
      { lower := 36517, upper := 36642, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good196_checked :
    goodSegmentCheck 146 48 103
      { lower := 36643, upper := 36646, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good197_checked :
    goodSegmentCheck 146 48 103
      { lower := 37500, upper := 37638, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good198_checked :
    goodSegmentCheck 146 48 103
      { lower := 37639, upper := 37683, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good199_checked :
    goodSegmentCheck 146 48 103
      { lower := 38307, upper := 38436, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good200_checked :
    goodSegmentCheck 146 48 103
      { lower := 39326, upper := 39468, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good201_checked :
    goodSegmentCheck 146 48 103
      { lower := 39469, upper := 39471, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good202_checked :
    goodSegmentCheck 146 48 103
      { lower := 40401, upper := 40473, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good203_checked :
    goodSegmentCheck 146 48 103
      { lower := 40931, upper := 40949, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good204_checked :
    goodSegmentCheck 146 48 103
      { lower := 40960, upper := 41076, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good205_checked :
    goodSegmentCheck 146 48 103
      { lower := 45927, upper := 45941, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good206_checked :
    goodSegmentCheck 146 48 103
      { lower := 47526, upper := 47666, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good207_checked :
    goodSegmentCheck 146 48 103
      { lower := 47667, upper := 47669, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good208_checked :
    goodSegmentCheck 146 48 103
      { lower := 48778, upper := 48813, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good209_checked :
    goodSegmentCheck 146 48 103
      { lower := 49152, upper := 49275, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good210_checked :
    goodSegmentCheck 146 48 103
      { lower := 50421, upper := 50555, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good211_checked :
    goodSegmentCheck 146 48 103
      { lower := 51076, upper := 51150, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good212_checked :
    goodSegmentCheck 146 48 103
      { lower := 55451, upper := 55586, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good213_checked :
    goodSegmentCheck 146 48 103
      { lower := 55587, upper := 55592, witness := RowWitness.topPrime 55579 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good214_checked :
    goodSegmentCheck 146 48 103
      { lower := 56307, upper := 56314, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good215_checked :
    goodSegmentCheck 146 48 103
      { lower := 57245, upper := 57267, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good216_checked :
    goodSegmentCheck 146 48 103
      { lower := 62500, upper := 62555, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good217_checked :
    goodSegmentCheck 146 48 103
      { lower := 65610, upper := 65681, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good218_checked :
    goodSegmentCheck 146 48 103
      { lower := 68644, upper := 68784, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good219_checked :
    goodSegmentCheck 146 48 103
      { lower := 68785, upper := 68796, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good220_checked :
    goodSegmentCheck 146 48 103
      { lower := 68921, upper := 69035, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good221_checked :
    goodSegmentCheck 146 48 103
      { lower := 71289, upper := 71432, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good222_checked :
    goodSegmentCheck 146 48 103
      { lower := 71433, upper := 71434, witness := RowWitness.topPrime 71429 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good223_checked :
    goodSegmentCheck 146 48 103
      { lower := 73205, upper := 73312, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_good224_checked :
    goodSegmentCheck 146 48 103
      { lower := 85805, upper := 85828, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good225_checked :
    goodSegmentCheck 146 48 103
      { lower := 89383, upper := 89518, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good226_checked :
    goodSegmentCheck 146 48 103
      { lower := 93845, upper := 93895, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good227_checked :
    goodSegmentCheck 146 48 103
      { lower := 98415, upper := 98449, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good228_checked :
    goodSegmentCheck 146 48 103
      { lower := 137842, upper := 137926, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row146_good229_checked :
    goodSegmentCheck 146 48 103
      { lower := 148955, upper := 149022, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 146) (r := 48) (s := 103) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_good229_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_goods_checked :
    row146.goods.all (goodSegmentCheck row146.height.i row146.height.r row146.height.s) = true := by
  change row146_goods.all (goodSegmentCheck 146 48 103) = true
  simp only [row146_goods, List.all_cons, List.all_nil,
    row146_good000_checked,
    row146_good001_checked,
    row146_good002_checked,
    row146_good003_checked,
    row146_good004_checked,
    row146_good005_checked,
    row146_good006_checked,
    row146_good007_checked,
    row146_good008_checked,
    row146_good009_checked,
    row146_good010_checked,
    row146_good011_checked,
    row146_good012_checked,
    row146_good013_checked,
    row146_good014_checked,
    row146_good015_checked,
    row146_good016_checked,
    row146_good017_checked,
    row146_good018_checked,
    row146_good019_checked,
    row146_good020_checked,
    row146_good021_checked,
    row146_good022_checked,
    row146_good023_checked,
    row146_good024_checked,
    row146_good025_checked,
    row146_good026_checked,
    row146_good027_checked,
    row146_good028_checked,
    row146_good029_checked,
    row146_good030_checked,
    row146_good031_checked,
    row146_good032_checked,
    row146_good033_checked,
    row146_good034_checked,
    row146_good035_checked,
    row146_good036_checked,
    row146_good037_checked,
    row146_good038_checked,
    row146_good039_checked,
    row146_good040_checked,
    row146_good041_checked,
    row146_good042_checked,
    row146_good043_checked,
    row146_good044_checked,
    row146_good045_checked,
    row146_good046_checked,
    row146_good047_checked,
    row146_good048_checked,
    row146_good049_checked,
    row146_good050_checked,
    row146_good051_checked,
    row146_good052_checked,
    row146_good053_checked,
    row146_good054_checked,
    row146_good055_checked,
    row146_good056_checked,
    row146_good057_checked,
    row146_good058_checked,
    row146_good059_checked,
    row146_good060_checked,
    row146_good061_checked,
    row146_good062_checked,
    row146_good063_checked,
    row146_good064_checked,
    row146_good065_checked,
    row146_good066_checked,
    row146_good067_checked,
    row146_good068_checked,
    row146_good069_checked,
    row146_good070_checked,
    row146_good071_checked,
    row146_good072_checked,
    row146_good073_checked,
    row146_good074_checked,
    row146_good075_checked,
    row146_good076_checked,
    row146_good077_checked,
    row146_good078_checked,
    row146_good079_checked,
    row146_good080_checked,
    row146_good081_checked,
    row146_good082_checked,
    row146_good083_checked,
    row146_good084_checked,
    row146_good085_checked,
    row146_good086_checked,
    row146_good087_checked,
    row146_good088_checked,
    row146_good089_checked,
    row146_good090_checked,
    row146_good091_checked,
    row146_good092_checked,
    row146_good093_checked,
    row146_good094_checked,
    row146_good095_checked,
    row146_good096_checked,
    row146_good097_checked,
    row146_good098_checked,
    row146_good099_checked,
    row146_good100_checked,
    row146_good101_checked,
    row146_good102_checked,
    row146_good103_checked,
    row146_good104_checked,
    row146_good105_checked,
    row146_good106_checked,
    row146_good107_checked,
    row146_good108_checked,
    row146_good109_checked,
    row146_good110_checked,
    row146_good111_checked,
    row146_good112_checked,
    row146_good113_checked,
    row146_good114_checked,
    row146_good115_checked,
    row146_good116_checked,
    row146_good117_checked,
    row146_good118_checked,
    row146_good119_checked,
    row146_good120_checked,
    row146_good121_checked,
    row146_good122_checked,
    row146_good123_checked,
    row146_good124_checked,
    row146_good125_checked,
    row146_good126_checked,
    row146_good127_checked,
    row146_good128_checked,
    row146_good129_checked,
    row146_good130_checked,
    row146_good131_checked,
    row146_good132_checked,
    row146_good133_checked,
    row146_good134_checked,
    row146_good135_checked,
    row146_good136_checked,
    row146_good137_checked,
    row146_good138_checked,
    row146_good139_checked,
    row146_good140_checked,
    row146_good141_checked,
    row146_good142_checked,
    row146_good143_checked,
    row146_good144_checked,
    row146_good145_checked,
    row146_good146_checked,
    row146_good147_checked,
    row146_good148_checked,
    row146_good149_checked,
    row146_good150_checked,
    row146_good151_checked,
    row146_good152_checked,
    row146_good153_checked,
    row146_good154_checked,
    row146_good155_checked,
    row146_good156_checked,
    row146_good157_checked,
    row146_good158_checked,
    row146_good159_checked,
    row146_good160_checked,
    row146_good161_checked,
    row146_good162_checked,
    row146_good163_checked,
    row146_good164_checked,
    row146_good165_checked,
    row146_good166_checked,
    row146_good167_checked,
    row146_good168_checked,
    row146_good169_checked,
    row146_good170_checked,
    row146_good171_checked,
    row146_good172_checked,
    row146_good173_checked,
    row146_good174_checked,
    row146_good175_checked,
    row146_good176_checked,
    row146_good177_checked,
    row146_good178_checked,
    row146_good179_checked,
    row146_good180_checked,
    row146_good181_checked,
    row146_good182_checked,
    row146_good183_checked,
    row146_good184_checked,
    row146_good185_checked,
    row146_good186_checked,
    row146_good187_checked,
    row146_good188_checked,
    row146_good189_checked,
    row146_good190_checked,
    row146_good191_checked,
    row146_good192_checked,
    row146_good193_checked,
    row146_good194_checked,
    row146_good195_checked,
    row146_good196_checked,
    row146_good197_checked,
    row146_good198_checked,
    row146_good199_checked,
    row146_good200_checked,
    row146_good201_checked,
    row146_good202_checked,
    row146_good203_checked,
    row146_good204_checked,
    row146_good205_checked,
    row146_good206_checked,
    row146_good207_checked,
    row146_good208_checked,
    row146_good209_checked,
    row146_good210_checked,
    row146_good211_checked,
    row146_good212_checked,
    row146_good213_checked,
    row146_good214_checked,
    row146_good215_checked,
    row146_good216_checked,
    row146_good217_checked,
    row146_good218_checked,
    row146_good219_checked,
    row146_good220_checked,
    row146_good221_checked,
    row146_good222_checked,
    row146_good223_checked,
    row146_good224_checked,
    row146_good225_checked,
    row146_good226_checked,
    row146_good227_checked,
    row146_good228_checked,
    row146_good229_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_registered :
    decide (row146.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row146_small_checked :
    coverCheck (2 * row146.height.i + 2) (row146.height.i * (row146.height.i - 1) - 1)
      (row146.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row146_layerCover_checked :
    coverCheck (row146.height.i * (row146.height.i - 1)) (row146.height.n0 - 1)
      (row146.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row146_bounds : List NatInterval :=
  [(294, 438), (439, 584), (585, 722), (723, 864), (865, 1008), (1009, 1154), (1155, 1298), (1299, 1442), (1443, 1584), (1585, 1728), (1729, 1868), (1869, 2012), (2013, 2156), (2157, 2298), (2299, 2442), (2443, 2586), (2587, 2724), (2725, 2864), (2865, 3006), (3007, 3146), (3147, 3282), (3283, 3416), (3417, 3558), (3559, 3704), (3705, 3846), (3847, 3992), (3993, 4134), (4135, 4278), (4279, 4418), (4419, 4554), (4555, 4694), (4695, 4836), (4837, 4976), (4977, 5118), (5119, 5264), (5265, 5406), (5407, 5552), (5553, 5676), (5677, 5814), (5815, 5958), (5959, 6098), (6099, 6236), (6237, 6374), (6375, 6518), (6519, 6636), (6637, 6782), (6783, 6926), (6927, 7062), (7063, 7202), (7203, 7338), (7339, 7478), (7479, 7622), (7623, 7766), (7767, 7904), (7905, 8046), (8047, 8184), (8185, 8324), (8325, 8462), (8463, 8606), (8607, 8744), (8745, 8886), (8887, 9032), (9033, 9174), (9175, 9318), (9319, 9464), (9465, 9608), (9609, 9746), (9747, 9888), (9889, 10032), (10033, 10154), (10155, 10296), (10297, 10434), (10435, 10578), (10579, 10712), (10713, 10856), (10857, 10998), (10999, 11138), (11139, 11276), (11277, 11418), (11419, 11556), (11557, 11696), (11697, 11834), (11835, 11978), (11979, 12116), (12117, 12258), (12259, 12398), (12399, 12536), (12537, 12672), (12673, 12816), (12817, 12954), (12955, 13098), (13099, 13244), (13245, 13386), (13387, 13526), (13527, 13668), (13669, 13814), (13815, 13952), (13953, 14078), (14079, 14216), (14217, 14352), (14353, 14492), (14493, 14634), (14635, 14778), (14779, 14924), (14925, 15068), (15069, 15206), (15207, 15344), (15345, 15476), (15477, 15618), (15619, 15764), (15765, 15906), (15907, 16052), (16053, 16178), (16179, 16286), (16287, 16418), (16419, 16562), (16563, 16706), (16707, 16848), (16849, 16988), (16989, 17132), (17133, 17268), (17269, 17402), (17403, 17546), (17547, 17684), (17685, 17828), (17829, 17972), (17973, 18116), (18117, 18242), (18243, 18378), (18379, 18524), (18525, 18668), (18669, 18806), (18807, 18948), (18949, 19092), (19093, 19232), (19233, 19376), (19377, 19518), (19519, 19652), (19653, 19754), (19755, 19898), (19899, 20036), (20037, 20174), (20175, 20318), (20319, 20442), (20443, 20588), (20589, 20708), (20709, 20852), (20853, 20994), (20995, 21128), (21129, 21169), (21870, 22008), (22009, 22020), (22090, 22115), (22188, 22235), (22326, 22333), (22445, 22586), (22587, 22590), (23763, 23906), (23907, 23907), (24037, 24174), (24175, 24202), (24299, 24312), (24334, 24474), (24475, 24512), (24576, 24710), (25000, 25109), (25215, 25334), (25335, 25360), (26364, 26389), (26411, 26552), (26553, 26556), (27556, 27581), (27848, 27880), (28125, 28268), (28269, 28270), (28561, 28576), (28672, 28706), (28717, 28856), (28857, 28862), (29791, 29913), (30618, 30738), (30739, 30748), (30758, 30763), (30899, 30903), (30926, 31044), (31213, 31338), (31339, 31395), (31423, 31474), (31827, 31829), (32805, 32913), (33614, 33634), (33708, 33759), (34322, 34464), (34465, 34536), (36015, 36057), (36517, 36642), (36643, 36646), (37500, 37638), (37639, 37683), (38307, 38436), (39326, 39468), (39469, 39471), (40401, 40473), (40931, 40949), (40960, 41076), (45927, 45941), (47526, 47666), (47667, 47669), (48778, 48813), (49152, 49275), (50421, 50555), (51076, 51150), (55451, 55586), (55587, 55592), (56307, 56314), (57245, 57267), (62500, 62555), (65610, 65681), (68644, 68784), (68785, 68796), (68921, 69035), (71289, 71432), (71433, 71434), (73205, 73312), (85805, 85828), (89383, 89518), (93845, 93895), (98415, 98449), (137842, 137926), (148955, 149022)]

theorem row146_bounds_eq : row146.goods.map goodSegmentBounds = row146_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row146_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24721), (2, 28672, 28817), (2, 24576, 24721), (2, 32768, 32913), (2, 40960, 41105), (2, 32768, 32913), (2, 32768, 32913), (3, 21870, 22015), (3, 24057, 24202), (3, 26244, 26389), (3, 28431, 28576), (3, 30618, 30763), (3, 32805, 32950), (3, 26244, 26389), (3, 32805, 32950), (3, 39366, 39511), (3, 39366, 39511), (5, 21875, 22020), (5, 25000, 25145), (5, 28125, 28270), (5, 31250, 31395), (5, 34375, 34520), (5, 37500, 37645), (5, 40625, 40770), (5, 31250, 31395), (7, 21609, 21754), (7, 24010, 24155), (7, 26411, 26556), (7, 28812, 28957), (7, 31213, 31358), (7, 33614, 33759), (7, 36015, 36160), (7, 33614, 33759), (11, 29282, 29427), (13, 21970, 22115), (13, 24167, 24312), (13, 26364, 26509), (13, 28561, 28706), (13, 30758, 30903), (13, 32955, 33100), (13, 28561, 28706), (17, 24565, 24710), (17, 29478, 29623), (17, 34391, 34536), (17, 39304, 39449), (19, 27436, 27581), (19, 34295, 34440), (19, 41154, 41299), (23, 24334, 24479), (23, 36501, 36646), (29, 24389, 24534), (31, 29791, 29936), (41, 21853, 21998), (41, 23534, 23679), (41, 25215, 25360), (43, 22188, 22333), (43, 24037, 24182), (43, 25886, 26031), (43, 27735, 27880), (47, 22090, 22235), (47, 24299, 24444), (47, 26508, 26653), (47, 28717, 28862), (47, 30926, 31071), (47, 33135, 33280), (53, 22472, 22617), (53, 25281, 25426), (53, 28090, 28235), (53, 30899, 31044), (53, 33708, 33853), (53, 36517, 36662), (53, 39326, 39471), (53, 42135, 42280), (59, 24367, 24512), (59, 27848, 27993), (59, 31329, 31474), (59, 34810, 34955), (59, 38291, 38436), (59, 41772, 41917), (61, 22326, 22471), (61, 26047, 26192), (61, 29768, 29913), (61, 33489, 33634), (61, 37210, 37355), (61, 40931, 41076), (67, 22445, 22590), (67, 26934, 27079), (67, 31423, 31568), (67, 35912, 36057), (67, 40401, 40546), (71, 25205, 25350), (71, 30246, 30391), (71, 35287, 35432), (71, 40328, 40473), (79, 24964, 25109), (79, 31205, 31350), (79, 37446, 37591), (83, 27556, 27701), (83, 34445, 34590), (83, 41334, 41479), (89, 23763, 23908), (89, 31684, 31829), (89, 39605, 39750), (97, 28227, 28372), (97, 37636, 37781), (101, 30603, 30748), (101, 40804, 40949), (103, 21218, 21363), (103, 31827, 31972), (107, 22898, 23043), (107, 34347, 34492), (109, 23762, 23907), (109, 35643, 35788), (113, 25538, 25683), (113, 38307, 38452), (127, 32258, 32403), (131, 34322, 34467), (137, 37538, 37683), (139, 38642, 38787)]

def row146_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24721), (2, 28672, 28817), (2, 24576, 24721), (2, 32768, 32913), (2, 40960, 41105), (2, 32768, 32913), (2, 32768, 32913), (3, 21870, 22015), (3, 24057, 24202), (3, 26244, 26389), (3, 28431, 28576), (3, 30618, 30763), (3, 32805, 32950), (3, 26244, 26389), (3, 32805, 32950), (3, 39366, 39511)]

def row146_layer000_block001 : List ColouredInterval :=
  [(3, 39366, 39511), (5, 21875, 22020), (5, 25000, 25145), (5, 28125, 28270), (5, 31250, 31395), (5, 34375, 34520), (5, 37500, 37645), (5, 40625, 40770), (5, 31250, 31395), (7, 21609, 21754), (7, 24010, 24155), (7, 26411, 26556), (7, 28812, 28957), (7, 31213, 31358), (7, 33614, 33759), (7, 36015, 36160)]

def row146_layer000_block002 : List ColouredInterval :=
  [(7, 33614, 33759), (11, 29282, 29427), (13, 21970, 22115), (13, 24167, 24312), (13, 26364, 26509), (13, 28561, 28706), (13, 30758, 30903), (13, 32955, 33100), (13, 28561, 28706), (17, 24565, 24710), (17, 29478, 29623), (17, 34391, 34536), (17, 39304, 39449), (19, 27436, 27581), (19, 34295, 34440), (19, 41154, 41299)]

def row146_layer000_block003 : List ColouredInterval :=
  [(23, 24334, 24479), (23, 36501, 36646), (29, 24389, 24534), (31, 29791, 29936), (41, 21853, 21998), (41, 23534, 23679), (41, 25215, 25360), (43, 22188, 22333), (43, 24037, 24182), (43, 25886, 26031), (43, 27735, 27880), (47, 22090, 22235), (47, 24299, 24444), (47, 26508, 26653), (47, 28717, 28862), (47, 30926, 31071)]

def row146_layer000_block004 : List ColouredInterval :=
  [(47, 33135, 33280), (53, 22472, 22617), (53, 25281, 25426), (53, 28090, 28235), (53, 30899, 31044), (53, 33708, 33853), (53, 36517, 36662), (53, 39326, 39471), (53, 42135, 42280), (59, 24367, 24512), (59, 27848, 27993), (59, 31329, 31474), (59, 34810, 34955), (59, 38291, 38436), (59, 41772, 41917), (61, 22326, 22471)]

def row146_layer000_block005 : List ColouredInterval :=
  [(61, 26047, 26192), (61, 29768, 29913), (61, 33489, 33634), (61, 37210, 37355), (61, 40931, 41076), (67, 22445, 22590), (67, 26934, 27079), (67, 31423, 31568), (67, 35912, 36057), (67, 40401, 40546), (71, 25205, 25350), (71, 30246, 30391), (71, 35287, 35432), (71, 40328, 40473), (79, 24964, 25109), (79, 31205, 31350)]

def row146_layer000_block006 : List ColouredInterval :=
  [(79, 37446, 37591), (83, 27556, 27701), (83, 34445, 34590), (83, 41334, 41479), (89, 23763, 23908), (89, 31684, 31829), (89, 39605, 39750), (97, 28227, 28372), (97, 37636, 37781), (101, 30603, 30748), (101, 40804, 40949), (103, 21218, 21363), (103, 31827, 31972), (107, 22898, 23043), (107, 34347, 34492), (109, 23762, 23907)]

def row146_layer000_block007 : List ColouredInterval :=
  [(109, 35643, 35788), (113, 25538, 25683), (113, 38307, 38452), (127, 32258, 32403), (131, 34322, 34467), (137, 37538, 37683), (139, 38642, 38787)]

def row146_layer000_chunks : List (List ColouredInterval) :=
  [row146_layer000_block000, row146_layer000_block001, row146_layer000_block002, row146_layer000_block003, row146_layer000_block004, row146_layer000_block005, row146_layer000_block006, row146_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_arithmetic : LayerArithmeticValid row146.height { lower := 21170, upper := 42340, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_enumeration :
    activePowerIntervalList 146 15 21170 42340 = row146_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_pairs000 :
    row146_layer000_block000.all (fun I => row146_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row146_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_pairs001 :
    row146_layer000_block001.all (fun I => row146_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row146_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_pairs002 :
    row146_layer000_block002.all (fun I => row146_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row146_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_pairs003 :
    row146_layer000_block003.all (fun I => row146_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row146_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_pairs004 :
    row146_layer000_block004.all (fun I => row146_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row146_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_pairs005 :
    row146_layer000_block005.all (fun I => row146_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row146_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_pairs006 :
    row146_layer000_block006.all (fun I => row146_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row146_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_pairs007 :
    row146_layer000_block007.all (fun I => row146_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row146_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_chunks_eq : row146_layer000_chunks.flatten = row146_layer000_intervals := by
  rfl

theorem row146_layer000_pairs : pairCoverCheck row146_layer000_intervals row146_bounds = true := by
  apply pairCoverCheck_of_chunks row146_layer000_chunks_eq
  intro block hblock
  simp only [row146_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row146_layer000_pairs000
  · exact row146_layer000_pairs001
  · exact row146_layer000_pairs002
  · exact row146_layer000_pairs003
  · exact row146_layer000_pairs004
  · exact row146_layer000_pairs005
  · exact row146_layer000_pairs006
  · exact row146_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer000_checked :
    coverLayerCheck row146.height row146.goods { lower := 21170, upper := 42340, M := 15 } = true := by
  exact coverLayerCheck_of_parts row146_layer000_arithmetic row146_layer000_enumeration row146_bounds_eq row146_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer000_checked
