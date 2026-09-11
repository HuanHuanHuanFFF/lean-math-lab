import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row162_height : HeightCertificateDatum := { i := 162, r := 53, s := 115, n0Power10 := 7 }

def row162_goods : List GoodSegment := [
  { lower := 326, upper := 478, witness := RowWitness.topPrime 317 },
  { lower := 479, upper := 640, witness := RowWitness.topPrime 479 },
  { lower := 641, upper := 802, witness := RowWitness.topPrime 641 },
  { lower := 803, upper := 958, witness := RowWitness.topPrime 797 },
  { lower := 959, upper := 1114, witness := RowWitness.topPrime 953 },
  { lower := 1115, upper := 1270, witness := RowWitness.topPrime 1109 },
  { lower := 1271, upper := 1420, witness := RowWitness.topPrime 1259 },
  { lower := 1421, upper := 1570, witness := RowWitness.topPrime 1409 },
  { lower := 1571, upper := 1732, witness := RowWitness.topPrime 1571 },
  { lower := 1733, upper := 1894, witness := RowWitness.topPrime 1733 },
  { lower := 1895, upper := 2050, witness := RowWitness.topPrime 1889 },
  { lower := 2051, upper := 2200, witness := RowWitness.topPrime 2039 },
  { lower := 2201, upper := 2340, witness := RowWitness.topPrime 2179 },
  { lower := 2341, upper := 2502, witness := RowWitness.topPrime 2341 },
  { lower := 2503, upper := 2664, witness := RowWitness.topPrime 2503 },
  { lower := 2665, upper := 2824, witness := RowWitness.topPrime 2663 },
  { lower := 2825, upper := 2980, witness := RowWitness.topPrime 2819 },
  { lower := 2981, upper := 3132, witness := RowWitness.topPrime 2971 },
  { lower := 3133, upper := 3282, witness := RowWitness.topPrime 3121 },
  { lower := 3283, upper := 3432, witness := RowWitness.topPrime 3271 },
  { lower := 3433, upper := 3594, witness := RowWitness.topPrime 3433 },
  { lower := 3595, upper := 3754, witness := RowWitness.topPrime 3593 },
  { lower := 3755, upper := 3900, witness := RowWitness.topPrime 3739 },
  { lower := 3901, upper := 4050, witness := RowWitness.topPrime 3889 },
  { lower := 4051, upper := 4212, witness := RowWitness.topPrime 4051 },
  { lower := 4213, upper := 4372, witness := RowWitness.topPrime 4211 },
  { lower := 4373, upper := 4534, witness := RowWitness.topPrime 4373 },
  { lower := 4535, upper := 4684, witness := RowWitness.topPrime 4523 },
  { lower := 4685, upper := 4840, witness := RowWitness.topPrime 4679 },
  { lower := 4841, upper := 4992, witness := RowWitness.topPrime 4831 },
  { lower := 4993, upper := 5154, witness := RowWitness.topPrime 4993 },
  { lower := 5155, upper := 5314, witness := RowWitness.topPrime 5153 },
  { lower := 5315, upper := 5470, witness := RowWitness.topPrime 5309 },
  { lower := 5471, upper := 5632, witness := RowWitness.topPrime 5471 },
  { lower := 5633, upper := 5784, witness := RowWitness.topPrime 5623 },
  { lower := 5785, upper := 5944, witness := RowWitness.topPrime 5783 },
  { lower := 5945, upper := 6100, witness := RowWitness.topPrime 5939 },
  { lower := 6101, upper := 6262, witness := RowWitness.topPrime 6101 },
  { lower := 6263, upper := 6424, witness := RowWitness.topPrime 6263 },
  { lower := 6425, upper := 6582, witness := RowWitness.topPrime 6421 },
  { lower := 6583, upper := 6742, witness := RowWitness.topPrime 6581 },
  { lower := 6743, upper := 6898, witness := RowWitness.topPrime 6737 },
  { lower := 6899, upper := 7060, witness := RowWitness.topPrime 6899 },
  { lower := 7061, upper := 7218, witness := RowWitness.topPrime 7057 },
  { lower := 7219, upper := 7380, witness := RowWitness.topPrime 7219 },
  { lower := 7381, upper := 7530, witness := RowWitness.topPrime 7369 },
  { lower := 7531, upper := 7690, witness := RowWitness.topPrime 7529 },
  { lower := 7691, upper := 7852, witness := RowWitness.topPrime 7691 },
  { lower := 7853, upper := 8014, witness := RowWitness.topPrime 7853 },
  { lower := 8015, upper := 8172, witness := RowWitness.topPrime 8011 },
  { lower := 8173, upper := 8332, witness := RowWitness.topPrime 8171 },
  { lower := 8333, upper := 8490, witness := RowWitness.topPrime 8329 },
  { lower := 8491, upper := 8628, witness := RowWitness.topPrime 8467 },
  { lower := 8629, upper := 8790, witness := RowWitness.topPrime 8629 },
  { lower := 8791, upper := 8944, witness := RowWitness.topPrime 8783 },
  { lower := 8945, upper := 9102, witness := RowWitness.topPrime 8941 },
  { lower := 9103, upper := 9264, witness := RowWitness.topPrime 9103 },
  { lower := 9265, upper := 9418, witness := RowWitness.topPrime 9257 },
  { lower := 9419, upper := 9580, witness := RowWitness.topPrime 9419 },
  { lower := 9581, upper := 9712, witness := RowWitness.topPrime 9551 },
  { lower := 9713, upper := 9858, witness := RowWitness.topPrime 9697 },
  { lower := 9859, upper := 10020, witness := RowWitness.topPrime 9859 },
  { lower := 10021, upper := 10170, witness := RowWitness.topPrime 10009 },
  { lower := 10171, upper := 10330, witness := RowWitness.topPrime 10169 },
  { lower := 10331, upper := 10492, witness := RowWitness.topPrime 10331 },
  { lower := 10493, upper := 10648, witness := RowWitness.topPrime 10487 },
  { lower := 10649, upper := 10800, witness := RowWitness.topPrime 10639 },
  { lower := 10801, upper := 10960, witness := RowWitness.topPrime 10799 },
  { lower := 10961, upper := 11118, witness := RowWitness.topPrime 10957 },
  { lower := 11119, upper := 11280, witness := RowWitness.topPrime 11119 },
  { lower := 11281, upper := 11440, witness := RowWitness.topPrime 11279 },
  { lower := 11441, upper := 11598, witness := RowWitness.topPrime 11437 },
  { lower := 11599, upper := 11758, witness := RowWitness.topPrime 11597 },
  { lower := 11759, upper := 11904, witness := RowWitness.topPrime 11743 },
  { lower := 11905, upper := 12064, witness := RowWitness.topPrime 11903 },
  { lower := 12065, upper := 12210, witness := RowWitness.topPrime 12049 },
  { lower := 12211, upper := 12372, witness := RowWitness.topPrime 12211 },
  { lower := 12373, upper := 12534, witness := RowWitness.topPrime 12373 },
  { lower := 12535, upper := 12688, witness := RowWitness.topPrime 12527 },
  { lower := 12689, upper := 12850, witness := RowWitness.topPrime 12689 },
  { lower := 12851, upper := 13002, witness := RowWitness.topPrime 12841 },
  { lower := 13003, upper := 13164, witness := RowWitness.topPrime 13003 },
  { lower := 13165, upper := 13324, witness := RowWitness.topPrime 13163 },
  { lower := 13325, upper := 13474, witness := RowWitness.topPrime 13313 },
  { lower := 13475, upper := 13630, witness := RowWitness.topPrime 13469 },
  { lower := 13631, upper := 13788, witness := RowWitness.topPrime 13627 },
  { lower := 13789, upper := 13950, witness := RowWitness.topPrime 13789 },
  { lower := 13951, upper := 14094, witness := RowWitness.topPrime 13933 },
  { lower := 14095, upper := 14248, witness := RowWitness.topPrime 14087 },
  { lower := 14249, upper := 14410, witness := RowWitness.topPrime 14249 },
  { lower := 14411, upper := 14572, witness := RowWitness.topPrime 14411 },
  { lower := 14573, upper := 14724, witness := RowWitness.topPrime 14563 },
  { lower := 14725, upper := 14884, witness := RowWitness.topPrime 14723 },
  { lower := 14885, upper := 15040, witness := RowWitness.topPrime 14879 },
  { lower := 15041, upper := 15192, witness := RowWitness.topPrime 15031 },
  { lower := 15193, upper := 15354, witness := RowWitness.topPrime 15193 },
  { lower := 15355, upper := 15510, witness := RowWitness.topPrime 15349 },
  { lower := 15511, upper := 15672, witness := RowWitness.topPrime 15511 },
  { lower := 15673, upper := 15832, witness := RowWitness.topPrime 15671 },
  { lower := 15833, upper := 15984, witness := RowWitness.topPrime 15823 },
  { lower := 15985, upper := 16134, witness := RowWitness.topPrime 15973 },
  { lower := 16135, upper := 16288, witness := RowWitness.topPrime 16127 },
  { lower := 16289, upper := 16434, witness := RowWitness.topPrime 16273 },
  { lower := 16435, upper := 16594, witness := RowWitness.topPrime 16433 },
  { lower := 16595, upper := 16734, witness := RowWitness.topPrime 16573 },
  { lower := 16735, upper := 16890, witness := RowWitness.topPrime 16729 },
  { lower := 16891, upper := 17050, witness := RowWitness.topPrime 16889 },
  { lower := 17051, upper := 17208, witness := RowWitness.topPrime 17047 },
  { lower := 17209, upper := 17370, witness := RowWitness.topPrime 17209 },
  { lower := 17371, upper := 17520, witness := RowWitness.topPrime 17359 },
  { lower := 17521, upper := 17680, witness := RowWitness.topPrime 17519 },
  { lower := 17681, upper := 17842, witness := RowWitness.topPrime 17681 },
  { lower := 17843, upper := 18000, witness := RowWitness.topPrime 17839 },
  { lower := 18001, upper := 18150, witness := RowWitness.topPrime 17989 },
  { lower := 18151, upper := 18310, witness := RowWitness.topPrime 18149 },
  { lower := 18311, upper := 18472, witness := RowWitness.topPrime 18311 },
  { lower := 18473, upper := 18622, witness := RowWitness.topPrime 18461 },
  { lower := 18623, upper := 18778, witness := RowWitness.topPrime 18617 },
  { lower := 18779, upper := 18934, witness := RowWitness.topPrime 18773 },
  { lower := 18935, upper := 19080, witness := RowWitness.topPrime 18919 },
  { lower := 19081, upper := 19242, witness := RowWitness.topPrime 19081 },
  { lower := 19243, upper := 19398, witness := RowWitness.topPrime 19237 },
  { lower := 19399, upper := 19552, witness := RowWitness.topPrime 19391 },
  { lower := 19553, upper := 19714, witness := RowWitness.topPrime 19553 },
  { lower := 19715, upper := 19870, witness := RowWitness.topPrime 19709 },
  { lower := 19871, upper := 20028, witness := RowWitness.topPrime 19867 },
  { lower := 20029, upper := 20190, witness := RowWitness.topPrime 20029 },
  { lower := 20191, upper := 20344, witness := RowWitness.topPrime 20183 },
  { lower := 20345, upper := 20502, witness := RowWitness.topPrime 20341 },
  { lower := 20503, upper := 20644, witness := RowWitness.topPrime 20483 },
  { lower := 20645, upper := 20802, witness := RowWitness.topPrime 20641 },
  { lower := 20803, upper := 20950, witness := RowWitness.topPrime 20789 },
  { lower := 20951, upper := 21108, witness := RowWitness.topPrime 20947 },
  { lower := 21109, upper := 21268, witness := RowWitness.topPrime 21107 },
  { lower := 21269, upper := 21430, witness := RowWitness.topPrime 21269 },
  { lower := 21431, upper := 21580, witness := RowWitness.topPrime 21419 },
  { lower := 21581, upper := 21738, witness := RowWitness.topPrime 21577 },
  { lower := 21739, upper := 21900, witness := RowWitness.topPrime 21739 },
  { lower := 21901, upper := 22054, witness := RowWitness.topPrime 21893 },
  { lower := 22055, upper := 22212, witness := RowWitness.topPrime 22051 },
  { lower := 22213, upper := 22354, witness := RowWitness.topPrime 22193 },
  { lower := 22355, upper := 22510, witness := RowWitness.topPrime 22349 },
  { lower := 22511, upper := 22672, witness := RowWitness.topPrime 22511 },
  { lower := 22673, upper := 22830, witness := RowWitness.topPrime 22669 },
  { lower := 22831, upper := 22978, witness := RowWitness.topPrime 22817 },
  { lower := 22979, upper := 23134, witness := RowWitness.topPrime 22973 },
  { lower := 23135, upper := 23292, witness := RowWitness.topPrime 23131 },
  { lower := 23293, upper := 23454, witness := RowWitness.topPrime 23293 },
  { lower := 23455, upper := 23608, witness := RowWitness.topPrime 23447 },
  { lower := 23609, upper := 23770, witness := RowWitness.topPrime 23609 },
  { lower := 23771, upper := 23928, witness := RowWitness.topPrime 23767 },
  { lower := 23929, upper := 24090, witness := RowWitness.topPrime 23929 },
  { lower := 24091, upper := 24252, witness := RowWitness.topPrime 24091 },
  { lower := 24253, upper := 24412, witness := RowWitness.topPrime 24251 },
  { lower := 24413, upper := 24574, witness := RowWitness.topPrime 24413 },
  { lower := 24575, upper := 24732, witness := RowWitness.topPrime 24571 },
  { lower := 24733, upper := 24894, witness := RowWitness.topPrime 24733 },
  { lower := 24895, upper := 25050, witness := RowWitness.topPrime 24889 },
  { lower := 25051, upper := 25198, witness := RowWitness.topPrime 25037 },
  { lower := 25199, upper := 25350, witness := RowWitness.topPrime 25189 },
  { lower := 25351, upper := 25510, witness := RowWitness.topPrime 25349 },
  { lower := 25511, upper := 25632, witness := RowWitness.topPrime 25471 },
  { lower := 25633, upper := 25794, witness := RowWitness.topPrime 25633 },
  { lower := 25795, upper := 25954, witness := RowWitness.topPrime 25793 },
  { lower := 25955, upper := 26081, witness := RowWitness.topPrime 25951 },
  { lower := 26411, upper := 26568, witness := RowWitness.topPrime 26407 },
  { lower := 26569, upper := 26572, witness := RowWitness.topPrime 26561 },
  { lower := 26645, upper := 26669, witness := RowWitness.topPrime 26641 },
  { lower := 27556, upper := 27597, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28284, witness := RowWitness.topPrime 28123 },
  { lower := 28285, upper := 28286, witness := RowWitness.topPrime 28283 },
  { lower := 28717, upper := 28722, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28878, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29929, witness := RowWitness.topPrime 29789 },
  { lower := 31213, upper := 31354, witness := RowWitness.topPrime 31193 },
  { lower := 31355, upper := 31411, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31490, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31845, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31988, witness := RowWitness.topPrime 31973 },
  { lower := 33614, upper := 33650, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33775, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34480, witness := RowWitness.topPrime 34319 },
  { lower := 34481, upper := 34552, witness := RowWitness.topPrime 34471 },
  { lower := 36517, upper := 36658, witness := RowWitness.topPrime 36497 },
  { lower := 36659, upper := 36662, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37371, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37464, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37654, witness := RowWitness.topPrime 37493 },
  { lower := 37655, upper := 37699, witness := RowWitness.topPrime 37649 },
  { lower := 38307, upper := 38452, witness := RowWitness.topPrime 38303 },
  { lower := 40401, upper := 40489, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41088, witness := RowWitness.topPrime 40927 },
  { lower := 41089, upper := 41092, witness := RowWitness.topPrime 41081 },
  { lower := 45369, upper := 45414, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47682, witness := RowWitness.topPrime 47521 },
  { lower := 47683, upper := 47685, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48122, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48384, witness := RowWitness.topPrime 48371 },
  { lower := 48387, upper := 48534, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48829, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49291, witness := RowWitness.topPrime 49139 },
  { lower := 49298, upper := 49313, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49459, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50571, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51166, witness := RowWitness.topPrime 51071 },
  { lower := 56307, upper := 56330, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56468, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57283, witness := RowWitness.topPrime 57241 },
  { lower := 62500, upper := 62571, witness := RowWitness.topPrime 62497 },
  { lower := 68644, upper := 68800, witness := RowWitness.topPrime 68639 },
  { lower := 68801, upper := 68805, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69051, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71448, witness := RowWitness.topPrime 71287 },
  { lower := 71449, upper := 71450, witness := RowWitness.topPrime 71443 },
  { lower := 73205, upper := 73328, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85844, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89534, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93911, witness := RowWitness.topPrime 93827 },
  { lower := 102152, upper := 102171, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103127, witness := RowWitness.topPrime 103007 },
  { lower := 148955, upper := 149038, witness := RowWitness.topPrime 148949 }
]

def row162_layers : List CoverLayer := [
  { lower := 26082, upper := 52164, M := 13 },
  { lower := 52164, upper := 104328, M := 10 },
  { lower := 104328, upper := 208656, M := 7 },
  { lower := 208656, upper := 417312, M := 5 },
  { lower := 417312, upper := 834624, M := 4 },
  { lower := 834624, upper := 1669248, M := 3 },
  { lower := 1669248, upper := 3338496, M := 2 },
  { lower := 3338496, upper := 6676992, M := 2 },
  { lower := 6676992, upper := 10000000, M := 2 }
]

def row162 : FiniteCoverRow := {
  height := row162_height,
  goods := row162_goods,
  layers := row162_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good000_checked :
    goodSegmentCheck 162 53 115
      { lower := 326, upper := 478, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good001_checked :
    goodSegmentCheck 162 53 115
      { lower := 479, upper := 640, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good002_checked :
    goodSegmentCheck 162 53 115
      { lower := 641, upper := 802, witness := RowWitness.topPrime 641 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good003_checked :
    goodSegmentCheck 162 53 115
      { lower := 803, upper := 958, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good004_checked :
    goodSegmentCheck 162 53 115
      { lower := 959, upper := 1114, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good005_checked :
    goodSegmentCheck 162 53 115
      { lower := 1115, upper := 1270, witness := RowWitness.topPrime 1109 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good006_checked :
    goodSegmentCheck 162 53 115
      { lower := 1271, upper := 1420, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good007_checked :
    goodSegmentCheck 162 53 115
      { lower := 1421, upper := 1570, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good008_checked :
    goodSegmentCheck 162 53 115
      { lower := 1571, upper := 1732, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good009_checked :
    goodSegmentCheck 162 53 115
      { lower := 1733, upper := 1894, witness := RowWitness.topPrime 1733 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good010_checked :
    goodSegmentCheck 162 53 115
      { lower := 1895, upper := 2050, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good011_checked :
    goodSegmentCheck 162 53 115
      { lower := 2051, upper := 2200, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good012_checked :
    goodSegmentCheck 162 53 115
      { lower := 2201, upper := 2340, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good013_checked :
    goodSegmentCheck 162 53 115
      { lower := 2341, upper := 2502, witness := RowWitness.topPrime 2341 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good014_checked :
    goodSegmentCheck 162 53 115
      { lower := 2503, upper := 2664, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good015_checked :
    goodSegmentCheck 162 53 115
      { lower := 2665, upper := 2824, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good016_checked :
    goodSegmentCheck 162 53 115
      { lower := 2825, upper := 2980, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good017_checked :
    goodSegmentCheck 162 53 115
      { lower := 2981, upper := 3132, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good018_checked :
    goodSegmentCheck 162 53 115
      { lower := 3133, upper := 3282, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good019_checked :
    goodSegmentCheck 162 53 115
      { lower := 3283, upper := 3432, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good020_checked :
    goodSegmentCheck 162 53 115
      { lower := 3433, upper := 3594, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good021_checked :
    goodSegmentCheck 162 53 115
      { lower := 3595, upper := 3754, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good022_checked :
    goodSegmentCheck 162 53 115
      { lower := 3755, upper := 3900, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good023_checked :
    goodSegmentCheck 162 53 115
      { lower := 3901, upper := 4050, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good024_checked :
    goodSegmentCheck 162 53 115
      { lower := 4051, upper := 4212, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good025_checked :
    goodSegmentCheck 162 53 115
      { lower := 4213, upper := 4372, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good026_checked :
    goodSegmentCheck 162 53 115
      { lower := 4373, upper := 4534, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good027_checked :
    goodSegmentCheck 162 53 115
      { lower := 4535, upper := 4684, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good028_checked :
    goodSegmentCheck 162 53 115
      { lower := 4685, upper := 4840, witness := RowWitness.topPrime 4679 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good029_checked :
    goodSegmentCheck 162 53 115
      { lower := 4841, upper := 4992, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good030_checked :
    goodSegmentCheck 162 53 115
      { lower := 4993, upper := 5154, witness := RowWitness.topPrime 4993 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good031_checked :
    goodSegmentCheck 162 53 115
      { lower := 5155, upper := 5314, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good032_checked :
    goodSegmentCheck 162 53 115
      { lower := 5315, upper := 5470, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good033_checked :
    goodSegmentCheck 162 53 115
      { lower := 5471, upper := 5632, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good034_checked :
    goodSegmentCheck 162 53 115
      { lower := 5633, upper := 5784, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good035_checked :
    goodSegmentCheck 162 53 115
      { lower := 5785, upper := 5944, witness := RowWitness.topPrime 5783 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good036_checked :
    goodSegmentCheck 162 53 115
      { lower := 5945, upper := 6100, witness := RowWitness.topPrime 5939 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good037_checked :
    goodSegmentCheck 162 53 115
      { lower := 6101, upper := 6262, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good038_checked :
    goodSegmentCheck 162 53 115
      { lower := 6263, upper := 6424, witness := RowWitness.topPrime 6263 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good039_checked :
    goodSegmentCheck 162 53 115
      { lower := 6425, upper := 6582, witness := RowWitness.topPrime 6421 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good040_checked :
    goodSegmentCheck 162 53 115
      { lower := 6583, upper := 6742, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good041_checked :
    goodSegmentCheck 162 53 115
      { lower := 6743, upper := 6898, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good042_checked :
    goodSegmentCheck 162 53 115
      { lower := 6899, upper := 7060, witness := RowWitness.topPrime 6899 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good043_checked :
    goodSegmentCheck 162 53 115
      { lower := 7061, upper := 7218, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good044_checked :
    goodSegmentCheck 162 53 115
      { lower := 7219, upper := 7380, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good045_checked :
    goodSegmentCheck 162 53 115
      { lower := 7381, upper := 7530, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good046_checked :
    goodSegmentCheck 162 53 115
      { lower := 7531, upper := 7690, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good047_checked :
    goodSegmentCheck 162 53 115
      { lower := 7691, upper := 7852, witness := RowWitness.topPrime 7691 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good048_checked :
    goodSegmentCheck 162 53 115
      { lower := 7853, upper := 8014, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good049_checked :
    goodSegmentCheck 162 53 115
      { lower := 8015, upper := 8172, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good050_checked :
    goodSegmentCheck 162 53 115
      { lower := 8173, upper := 8332, witness := RowWitness.topPrime 8171 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good051_checked :
    goodSegmentCheck 162 53 115
      { lower := 8333, upper := 8490, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good052_checked :
    goodSegmentCheck 162 53 115
      { lower := 8491, upper := 8628, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good053_checked :
    goodSegmentCheck 162 53 115
      { lower := 8629, upper := 8790, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good054_checked :
    goodSegmentCheck 162 53 115
      { lower := 8791, upper := 8944, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good055_checked :
    goodSegmentCheck 162 53 115
      { lower := 8945, upper := 9102, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good056_checked :
    goodSegmentCheck 162 53 115
      { lower := 9103, upper := 9264, witness := RowWitness.topPrime 9103 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good057_checked :
    goodSegmentCheck 162 53 115
      { lower := 9265, upper := 9418, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good058_checked :
    goodSegmentCheck 162 53 115
      { lower := 9419, upper := 9580, witness := RowWitness.topPrime 9419 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good059_checked :
    goodSegmentCheck 162 53 115
      { lower := 9581, upper := 9712, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good060_checked :
    goodSegmentCheck 162 53 115
      { lower := 9713, upper := 9858, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good061_checked :
    goodSegmentCheck 162 53 115
      { lower := 9859, upper := 10020, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good062_checked :
    goodSegmentCheck 162 53 115
      { lower := 10021, upper := 10170, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good063_checked :
    goodSegmentCheck 162 53 115
      { lower := 10171, upper := 10330, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good064_checked :
    goodSegmentCheck 162 53 115
      { lower := 10331, upper := 10492, witness := RowWitness.topPrime 10331 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good065_checked :
    goodSegmentCheck 162 53 115
      { lower := 10493, upper := 10648, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good066_checked :
    goodSegmentCheck 162 53 115
      { lower := 10649, upper := 10800, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good067_checked :
    goodSegmentCheck 162 53 115
      { lower := 10801, upper := 10960, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good068_checked :
    goodSegmentCheck 162 53 115
      { lower := 10961, upper := 11118, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good069_checked :
    goodSegmentCheck 162 53 115
      { lower := 11119, upper := 11280, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good070_checked :
    goodSegmentCheck 162 53 115
      { lower := 11281, upper := 11440, witness := RowWitness.topPrime 11279 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good071_checked :
    goodSegmentCheck 162 53 115
      { lower := 11441, upper := 11598, witness := RowWitness.topPrime 11437 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good072_checked :
    goodSegmentCheck 162 53 115
      { lower := 11599, upper := 11758, witness := RowWitness.topPrime 11597 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good073_checked :
    goodSegmentCheck 162 53 115
      { lower := 11759, upper := 11904, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good074_checked :
    goodSegmentCheck 162 53 115
      { lower := 11905, upper := 12064, witness := RowWitness.topPrime 11903 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good075_checked :
    goodSegmentCheck 162 53 115
      { lower := 12065, upper := 12210, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good076_checked :
    goodSegmentCheck 162 53 115
      { lower := 12211, upper := 12372, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good077_checked :
    goodSegmentCheck 162 53 115
      { lower := 12373, upper := 12534, witness := RowWitness.topPrime 12373 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good078_checked :
    goodSegmentCheck 162 53 115
      { lower := 12535, upper := 12688, witness := RowWitness.topPrime 12527 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good079_checked :
    goodSegmentCheck 162 53 115
      { lower := 12689, upper := 12850, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good080_checked :
    goodSegmentCheck 162 53 115
      { lower := 12851, upper := 13002, witness := RowWitness.topPrime 12841 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good081_checked :
    goodSegmentCheck 162 53 115
      { lower := 13003, upper := 13164, witness := RowWitness.topPrime 13003 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good082_checked :
    goodSegmentCheck 162 53 115
      { lower := 13165, upper := 13324, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good083_checked :
    goodSegmentCheck 162 53 115
      { lower := 13325, upper := 13474, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good084_checked :
    goodSegmentCheck 162 53 115
      { lower := 13475, upper := 13630, witness := RowWitness.topPrime 13469 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good085_checked :
    goodSegmentCheck 162 53 115
      { lower := 13631, upper := 13788, witness := RowWitness.topPrime 13627 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good086_checked :
    goodSegmentCheck 162 53 115
      { lower := 13789, upper := 13950, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good087_checked :
    goodSegmentCheck 162 53 115
      { lower := 13951, upper := 14094, witness := RowWitness.topPrime 13933 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good088_checked :
    goodSegmentCheck 162 53 115
      { lower := 14095, upper := 14248, witness := RowWitness.topPrime 14087 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good089_checked :
    goodSegmentCheck 162 53 115
      { lower := 14249, upper := 14410, witness := RowWitness.topPrime 14249 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good090_checked :
    goodSegmentCheck 162 53 115
      { lower := 14411, upper := 14572, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good091_checked :
    goodSegmentCheck 162 53 115
      { lower := 14573, upper := 14724, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good092_checked :
    goodSegmentCheck 162 53 115
      { lower := 14725, upper := 14884, witness := RowWitness.topPrime 14723 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good093_checked :
    goodSegmentCheck 162 53 115
      { lower := 14885, upper := 15040, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good094_checked :
    goodSegmentCheck 162 53 115
      { lower := 15041, upper := 15192, witness := RowWitness.topPrime 15031 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good095_checked :
    goodSegmentCheck 162 53 115
      { lower := 15193, upper := 15354, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good096_checked :
    goodSegmentCheck 162 53 115
      { lower := 15355, upper := 15510, witness := RowWitness.topPrime 15349 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good097_checked :
    goodSegmentCheck 162 53 115
      { lower := 15511, upper := 15672, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good098_checked :
    goodSegmentCheck 162 53 115
      { lower := 15673, upper := 15832, witness := RowWitness.topPrime 15671 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good099_checked :
    goodSegmentCheck 162 53 115
      { lower := 15833, upper := 15984, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good100_checked :
    goodSegmentCheck 162 53 115
      { lower := 15985, upper := 16134, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good101_checked :
    goodSegmentCheck 162 53 115
      { lower := 16135, upper := 16288, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good102_checked :
    goodSegmentCheck 162 53 115
      { lower := 16289, upper := 16434, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good103_checked :
    goodSegmentCheck 162 53 115
      { lower := 16435, upper := 16594, witness := RowWitness.topPrime 16433 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good104_checked :
    goodSegmentCheck 162 53 115
      { lower := 16595, upper := 16734, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good105_checked :
    goodSegmentCheck 162 53 115
      { lower := 16735, upper := 16890, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good106_checked :
    goodSegmentCheck 162 53 115
      { lower := 16891, upper := 17050, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good107_checked :
    goodSegmentCheck 162 53 115
      { lower := 17051, upper := 17208, witness := RowWitness.topPrime 17047 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good108_checked :
    goodSegmentCheck 162 53 115
      { lower := 17209, upper := 17370, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good109_checked :
    goodSegmentCheck 162 53 115
      { lower := 17371, upper := 17520, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good110_checked :
    goodSegmentCheck 162 53 115
      { lower := 17521, upper := 17680, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good111_checked :
    goodSegmentCheck 162 53 115
      { lower := 17681, upper := 17842, witness := RowWitness.topPrime 17681 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good112_checked :
    goodSegmentCheck 162 53 115
      { lower := 17843, upper := 18000, witness := RowWitness.topPrime 17839 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good113_checked :
    goodSegmentCheck 162 53 115
      { lower := 18001, upper := 18150, witness := RowWitness.topPrime 17989 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good114_checked :
    goodSegmentCheck 162 53 115
      { lower := 18151, upper := 18310, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good115_checked :
    goodSegmentCheck 162 53 115
      { lower := 18311, upper := 18472, witness := RowWitness.topPrime 18311 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good116_checked :
    goodSegmentCheck 162 53 115
      { lower := 18473, upper := 18622, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good117_checked :
    goodSegmentCheck 162 53 115
      { lower := 18623, upper := 18778, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good118_checked :
    goodSegmentCheck 162 53 115
      { lower := 18779, upper := 18934, witness := RowWitness.topPrime 18773 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good119_checked :
    goodSegmentCheck 162 53 115
      { lower := 18935, upper := 19080, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good120_checked :
    goodSegmentCheck 162 53 115
      { lower := 19081, upper := 19242, witness := RowWitness.topPrime 19081 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good121_checked :
    goodSegmentCheck 162 53 115
      { lower := 19243, upper := 19398, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good122_checked :
    goodSegmentCheck 162 53 115
      { lower := 19399, upper := 19552, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good123_checked :
    goodSegmentCheck 162 53 115
      { lower := 19553, upper := 19714, witness := RowWitness.topPrime 19553 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good124_checked :
    goodSegmentCheck 162 53 115
      { lower := 19715, upper := 19870, witness := RowWitness.topPrime 19709 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good125_checked :
    goodSegmentCheck 162 53 115
      { lower := 19871, upper := 20028, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good126_checked :
    goodSegmentCheck 162 53 115
      { lower := 20029, upper := 20190, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good127_checked :
    goodSegmentCheck 162 53 115
      { lower := 20191, upper := 20344, witness := RowWitness.topPrime 20183 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good128_checked :
    goodSegmentCheck 162 53 115
      { lower := 20345, upper := 20502, witness := RowWitness.topPrime 20341 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good129_checked :
    goodSegmentCheck 162 53 115
      { lower := 20503, upper := 20644, witness := RowWitness.topPrime 20483 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good130_checked :
    goodSegmentCheck 162 53 115
      { lower := 20645, upper := 20802, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good131_checked :
    goodSegmentCheck 162 53 115
      { lower := 20803, upper := 20950, witness := RowWitness.topPrime 20789 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good132_checked :
    goodSegmentCheck 162 53 115
      { lower := 20951, upper := 21108, witness := RowWitness.topPrime 20947 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good133_checked :
    goodSegmentCheck 162 53 115
      { lower := 21109, upper := 21268, witness := RowWitness.topPrime 21107 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good134_checked :
    goodSegmentCheck 162 53 115
      { lower := 21269, upper := 21430, witness := RowWitness.topPrime 21269 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good135_checked :
    goodSegmentCheck 162 53 115
      { lower := 21431, upper := 21580, witness := RowWitness.topPrime 21419 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good136_checked :
    goodSegmentCheck 162 53 115
      { lower := 21581, upper := 21738, witness := RowWitness.topPrime 21577 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good137_checked :
    goodSegmentCheck 162 53 115
      { lower := 21739, upper := 21900, witness := RowWitness.topPrime 21739 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good138_checked :
    goodSegmentCheck 162 53 115
      { lower := 21901, upper := 22054, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good139_checked :
    goodSegmentCheck 162 53 115
      { lower := 22055, upper := 22212, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good140_checked :
    goodSegmentCheck 162 53 115
      { lower := 22213, upper := 22354, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good141_checked :
    goodSegmentCheck 162 53 115
      { lower := 22355, upper := 22510, witness := RowWitness.topPrime 22349 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good142_checked :
    goodSegmentCheck 162 53 115
      { lower := 22511, upper := 22672, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good143_checked :
    goodSegmentCheck 162 53 115
      { lower := 22673, upper := 22830, witness := RowWitness.topPrime 22669 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good144_checked :
    goodSegmentCheck 162 53 115
      { lower := 22831, upper := 22978, witness := RowWitness.topPrime 22817 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good145_checked :
    goodSegmentCheck 162 53 115
      { lower := 22979, upper := 23134, witness := RowWitness.topPrime 22973 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good146_checked :
    goodSegmentCheck 162 53 115
      { lower := 23135, upper := 23292, witness := RowWitness.topPrime 23131 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good147_checked :
    goodSegmentCheck 162 53 115
      { lower := 23293, upper := 23454, witness := RowWitness.topPrime 23293 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good148_checked :
    goodSegmentCheck 162 53 115
      { lower := 23455, upper := 23608, witness := RowWitness.topPrime 23447 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good149_checked :
    goodSegmentCheck 162 53 115
      { lower := 23609, upper := 23770, witness := RowWitness.topPrime 23609 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good150_checked :
    goodSegmentCheck 162 53 115
      { lower := 23771, upper := 23928, witness := RowWitness.topPrime 23767 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good151_checked :
    goodSegmentCheck 162 53 115
      { lower := 23929, upper := 24090, witness := RowWitness.topPrime 23929 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good152_checked :
    goodSegmentCheck 162 53 115
      { lower := 24091, upper := 24252, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good153_checked :
    goodSegmentCheck 162 53 115
      { lower := 24253, upper := 24412, witness := RowWitness.topPrime 24251 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good154_checked :
    goodSegmentCheck 162 53 115
      { lower := 24413, upper := 24574, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good155_checked :
    goodSegmentCheck 162 53 115
      { lower := 24575, upper := 24732, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good156_checked :
    goodSegmentCheck 162 53 115
      { lower := 24733, upper := 24894, witness := RowWitness.topPrime 24733 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good157_checked :
    goodSegmentCheck 162 53 115
      { lower := 24895, upper := 25050, witness := RowWitness.topPrime 24889 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good158_checked :
    goodSegmentCheck 162 53 115
      { lower := 25051, upper := 25198, witness := RowWitness.topPrime 25037 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good159_checked :
    goodSegmentCheck 162 53 115
      { lower := 25199, upper := 25350, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good160_checked :
    goodSegmentCheck 162 53 115
      { lower := 25351, upper := 25510, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good161_checked :
    goodSegmentCheck 162 53 115
      { lower := 25511, upper := 25632, witness := RowWitness.topPrime 25471 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good162_checked :
    goodSegmentCheck 162 53 115
      { lower := 25633, upper := 25794, witness := RowWitness.topPrime 25633 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good163_checked :
    goodSegmentCheck 162 53 115
      { lower := 25795, upper := 25954, witness := RowWitness.topPrime 25793 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good164_checked :
    goodSegmentCheck 162 53 115
      { lower := 25955, upper := 26081, witness := RowWitness.topPrime 25951 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good165_checked :
    goodSegmentCheck 162 53 115
      { lower := 26411, upper := 26568, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good166_checked :
    goodSegmentCheck 162 53 115
      { lower := 26569, upper := 26572, witness := RowWitness.topPrime 26561 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good167_checked :
    goodSegmentCheck 162 53 115
      { lower := 26645, upper := 26669, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good168_checked :
    goodSegmentCheck 162 53 115
      { lower := 27556, upper := 27597, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good169_checked :
    goodSegmentCheck 162 53 115
      { lower := 28125, upper := 28284, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good170_checked :
    goodSegmentCheck 162 53 115
      { lower := 28285, upper := 28286, witness := RowWitness.topPrime 28283 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good171_checked :
    goodSegmentCheck 162 53 115
      { lower := 28717, upper := 28722, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good172_checked :
    goodSegmentCheck 162 53 115
      { lower := 28812, upper := 28878, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good173_checked :
    goodSegmentCheck 162 53 115
      { lower := 29791, upper := 29929, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good174_checked :
    goodSegmentCheck 162 53 115
      { lower := 31213, upper := 31354, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good175_checked :
    goodSegmentCheck 162 53 115
      { lower := 31355, upper := 31411, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good176_checked :
    goodSegmentCheck 162 53 115
      { lower := 31423, upper := 31490, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good177_checked :
    goodSegmentCheck 162 53 115
      { lower := 31827, upper := 31845, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good178_checked :
    goodSegmentCheck 162 53 115
      { lower := 31974, upper := 31988, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good179_checked :
    goodSegmentCheck 162 53 115
      { lower := 33614, upper := 33650, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good180_checked :
    goodSegmentCheck 162 53 115
      { lower := 33708, upper := 33775, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good181_checked :
    goodSegmentCheck 162 53 115
      { lower := 34322, upper := 34480, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good182_checked :
    goodSegmentCheck 162 53 115
      { lower := 34481, upper := 34552, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good183_checked :
    goodSegmentCheck 162 53 115
      { lower := 36517, upper := 36658, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good184_checked :
    goodSegmentCheck 162 53 115
      { lower := 36659, upper := 36662, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good185_checked :
    goodSegmentCheck 162 53 115
      { lower := 37303, upper := 37371, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good186_checked :
    goodSegmentCheck 162 53 115
      { lower := 37446, upper := 37464, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good187_checked :
    goodSegmentCheck 162 53 115
      { lower := 37500, upper := 37654, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good188_checked :
    goodSegmentCheck 162 53 115
      { lower := 37655, upper := 37699, witness := RowWitness.topPrime 37649 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good189_checked :
    goodSegmentCheck 162 53 115
      { lower := 38307, upper := 38452, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good190_checked :
    goodSegmentCheck 162 53 115
      { lower := 40401, upper := 40489, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good191_checked :
    goodSegmentCheck 162 53 115
      { lower := 40931, upper := 41088, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good192_checked :
    goodSegmentCheck 162 53 115
      { lower := 41089, upper := 41092, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good193_checked :
    goodSegmentCheck 162 53 115
      { lower := 45369, upper := 45414, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good194_checked :
    goodSegmentCheck 162 53 115
      { lower := 47526, upper := 47682, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good195_checked :
    goodSegmentCheck 162 53 115
      { lower := 47683, upper := 47685, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good196_checked :
    goodSegmentCheck 162 53 115
      { lower := 48013, upper := 48122, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good197_checked :
    goodSegmentCheck 162 53 115
      { lower := 48373, upper := 48384, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good198_checked :
    goodSegmentCheck 162 53 115
      { lower := 48387, upper := 48534, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good199_checked :
    goodSegmentCheck 162 53 115
      { lower := 48778, upper := 48829, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good200_checked :
    goodSegmentCheck 162 53 115
      { lower := 49152, upper := 49291, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good201_checked :
    goodSegmentCheck 162 53 115
      { lower := 49298, upper := 49313, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good202_checked :
    goodSegmentCheck 162 53 115
      { lower := 49379, upper := 49459, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good203_checked :
    goodSegmentCheck 162 53 115
      { lower := 50421, upper := 50571, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good204_checked :
    goodSegmentCheck 162 53 115
      { lower := 51076, upper := 51166, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good205_checked :
    goodSegmentCheck 162 53 115
      { lower := 56307, upper := 56330, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good206_checked :
    goodSegmentCheck 162 53 115
      { lower := 56454, upper := 56468, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good207_checked :
    goodSegmentCheck 162 53 115
      { lower := 57245, upper := 57283, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_good208_checked :
    goodSegmentCheck 162 53 115
      { lower := 62500, upper := 62571, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good209_checked :
    goodSegmentCheck 162 53 115
      { lower := 68644, upper := 68800, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good210_checked :
    goodSegmentCheck 162 53 115
      { lower := 68801, upper := 68805, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good211_checked :
    goodSegmentCheck 162 53 115
      { lower := 68921, upper := 69051, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good212_checked :
    goodSegmentCheck 162 53 115
      { lower := 71289, upper := 71448, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good213_checked :
    goodSegmentCheck 162 53 115
      { lower := 71449, upper := 71450, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good214_checked :
    goodSegmentCheck 162 53 115
      { lower := 73205, upper := 73328, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good215_checked :
    goodSegmentCheck 162 53 115
      { lower := 85805, upper := 85844, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good216_checked :
    goodSegmentCheck 162 53 115
      { lower := 89383, upper := 89534, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good217_checked :
    goodSegmentCheck 162 53 115
      { lower := 93845, upper := 93911, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good218_checked :
    goodSegmentCheck 162 53 115
      { lower := 102152, upper := 102171, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good219_checked :
    goodSegmentCheck 162 53 115
      { lower := 103041, upper := 103127, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row162_good220_checked :
    goodSegmentCheck 162 53 115
      { lower := 148955, upper := 149038, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 162) (r := 53) (s := 115) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_good220_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_goods_checked :
    row162.goods.all (goodSegmentCheck row162.height.i row162.height.r row162.height.s) = true := by
  change row162_goods.all (goodSegmentCheck 162 53 115) = true
  simp only [row162_goods, List.all_cons, List.all_nil,
    row162_good000_checked,
    row162_good001_checked,
    row162_good002_checked,
    row162_good003_checked,
    row162_good004_checked,
    row162_good005_checked,
    row162_good006_checked,
    row162_good007_checked,
    row162_good008_checked,
    row162_good009_checked,
    row162_good010_checked,
    row162_good011_checked,
    row162_good012_checked,
    row162_good013_checked,
    row162_good014_checked,
    row162_good015_checked,
    row162_good016_checked,
    row162_good017_checked,
    row162_good018_checked,
    row162_good019_checked,
    row162_good020_checked,
    row162_good021_checked,
    row162_good022_checked,
    row162_good023_checked,
    row162_good024_checked,
    row162_good025_checked,
    row162_good026_checked,
    row162_good027_checked,
    row162_good028_checked,
    row162_good029_checked,
    row162_good030_checked,
    row162_good031_checked,
    row162_good032_checked,
    row162_good033_checked,
    row162_good034_checked,
    row162_good035_checked,
    row162_good036_checked,
    row162_good037_checked,
    row162_good038_checked,
    row162_good039_checked,
    row162_good040_checked,
    row162_good041_checked,
    row162_good042_checked,
    row162_good043_checked,
    row162_good044_checked,
    row162_good045_checked,
    row162_good046_checked,
    row162_good047_checked,
    row162_good048_checked,
    row162_good049_checked,
    row162_good050_checked,
    row162_good051_checked,
    row162_good052_checked,
    row162_good053_checked,
    row162_good054_checked,
    row162_good055_checked,
    row162_good056_checked,
    row162_good057_checked,
    row162_good058_checked,
    row162_good059_checked,
    row162_good060_checked,
    row162_good061_checked,
    row162_good062_checked,
    row162_good063_checked,
    row162_good064_checked,
    row162_good065_checked,
    row162_good066_checked,
    row162_good067_checked,
    row162_good068_checked,
    row162_good069_checked,
    row162_good070_checked,
    row162_good071_checked,
    row162_good072_checked,
    row162_good073_checked,
    row162_good074_checked,
    row162_good075_checked,
    row162_good076_checked,
    row162_good077_checked,
    row162_good078_checked,
    row162_good079_checked,
    row162_good080_checked,
    row162_good081_checked,
    row162_good082_checked,
    row162_good083_checked,
    row162_good084_checked,
    row162_good085_checked,
    row162_good086_checked,
    row162_good087_checked,
    row162_good088_checked,
    row162_good089_checked,
    row162_good090_checked,
    row162_good091_checked,
    row162_good092_checked,
    row162_good093_checked,
    row162_good094_checked,
    row162_good095_checked,
    row162_good096_checked,
    row162_good097_checked,
    row162_good098_checked,
    row162_good099_checked,
    row162_good100_checked,
    row162_good101_checked,
    row162_good102_checked,
    row162_good103_checked,
    row162_good104_checked,
    row162_good105_checked,
    row162_good106_checked,
    row162_good107_checked,
    row162_good108_checked,
    row162_good109_checked,
    row162_good110_checked,
    row162_good111_checked,
    row162_good112_checked,
    row162_good113_checked,
    row162_good114_checked,
    row162_good115_checked,
    row162_good116_checked,
    row162_good117_checked,
    row162_good118_checked,
    row162_good119_checked,
    row162_good120_checked,
    row162_good121_checked,
    row162_good122_checked,
    row162_good123_checked,
    row162_good124_checked,
    row162_good125_checked,
    row162_good126_checked,
    row162_good127_checked,
    row162_good128_checked,
    row162_good129_checked,
    row162_good130_checked,
    row162_good131_checked,
    row162_good132_checked,
    row162_good133_checked,
    row162_good134_checked,
    row162_good135_checked,
    row162_good136_checked,
    row162_good137_checked,
    row162_good138_checked,
    row162_good139_checked,
    row162_good140_checked,
    row162_good141_checked,
    row162_good142_checked,
    row162_good143_checked,
    row162_good144_checked,
    row162_good145_checked,
    row162_good146_checked,
    row162_good147_checked,
    row162_good148_checked,
    row162_good149_checked,
    row162_good150_checked,
    row162_good151_checked,
    row162_good152_checked,
    row162_good153_checked,
    row162_good154_checked,
    row162_good155_checked,
    row162_good156_checked,
    row162_good157_checked,
    row162_good158_checked,
    row162_good159_checked,
    row162_good160_checked,
    row162_good161_checked,
    row162_good162_checked,
    row162_good163_checked,
    row162_good164_checked,
    row162_good165_checked,
    row162_good166_checked,
    row162_good167_checked,
    row162_good168_checked,
    row162_good169_checked,
    row162_good170_checked,
    row162_good171_checked,
    row162_good172_checked,
    row162_good173_checked,
    row162_good174_checked,
    row162_good175_checked,
    row162_good176_checked,
    row162_good177_checked,
    row162_good178_checked,
    row162_good179_checked,
    row162_good180_checked,
    row162_good181_checked,
    row162_good182_checked,
    row162_good183_checked,
    row162_good184_checked,
    row162_good185_checked,
    row162_good186_checked,
    row162_good187_checked,
    row162_good188_checked,
    row162_good189_checked,
    row162_good190_checked,
    row162_good191_checked,
    row162_good192_checked,
    row162_good193_checked,
    row162_good194_checked,
    row162_good195_checked,
    row162_good196_checked,
    row162_good197_checked,
    row162_good198_checked,
    row162_good199_checked,
    row162_good200_checked,
    row162_good201_checked,
    row162_good202_checked,
    row162_good203_checked,
    row162_good204_checked,
    row162_good205_checked,
    row162_good206_checked,
    row162_good207_checked,
    row162_good208_checked,
    row162_good209_checked,
    row162_good210_checked,
    row162_good211_checked,
    row162_good212_checked,
    row162_good213_checked,
    row162_good214_checked,
    row162_good215_checked,
    row162_good216_checked,
    row162_good217_checked,
    row162_good218_checked,
    row162_good219_checked,
    row162_good220_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_registered :
    decide (row162.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row162_small_checked :
    coverCheck (2 * row162.height.i + 2) (row162.height.i * (row162.height.i - 1) - 1)
      (row162.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row162_layerCover_checked :
    coverCheck (row162.height.i * (row162.height.i - 1)) (row162.height.n0 - 1)
      (row162.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row162_bounds : List NatInterval :=
  [(326, 478), (479, 640), (641, 802), (803, 958), (959, 1114), (1115, 1270), (1271, 1420), (1421, 1570), (1571, 1732), (1733, 1894), (1895, 2050), (2051, 2200), (2201, 2340), (2341, 2502), (2503, 2664), (2665, 2824), (2825, 2980), (2981, 3132), (3133, 3282), (3283, 3432), (3433, 3594), (3595, 3754), (3755, 3900), (3901, 4050), (4051, 4212), (4213, 4372), (4373, 4534), (4535, 4684), (4685, 4840), (4841, 4992), (4993, 5154), (5155, 5314), (5315, 5470), (5471, 5632), (5633, 5784), (5785, 5944), (5945, 6100), (6101, 6262), (6263, 6424), (6425, 6582), (6583, 6742), (6743, 6898), (6899, 7060), (7061, 7218), (7219, 7380), (7381, 7530), (7531, 7690), (7691, 7852), (7853, 8014), (8015, 8172), (8173, 8332), (8333, 8490), (8491, 8628), (8629, 8790), (8791, 8944), (8945, 9102), (9103, 9264), (9265, 9418), (9419, 9580), (9581, 9712), (9713, 9858), (9859, 10020), (10021, 10170), (10171, 10330), (10331, 10492), (10493, 10648), (10649, 10800), (10801, 10960), (10961, 11118), (11119, 11280), (11281, 11440), (11441, 11598), (11599, 11758), (11759, 11904), (11905, 12064), (12065, 12210), (12211, 12372), (12373, 12534), (12535, 12688), (12689, 12850), (12851, 13002), (13003, 13164), (13165, 13324), (13325, 13474), (13475, 13630), (13631, 13788), (13789, 13950), (13951, 14094), (14095, 14248), (14249, 14410), (14411, 14572), (14573, 14724), (14725, 14884), (14885, 15040), (15041, 15192), (15193, 15354), (15355, 15510), (15511, 15672), (15673, 15832), (15833, 15984), (15985, 16134), (16135, 16288), (16289, 16434), (16435, 16594), (16595, 16734), (16735, 16890), (16891, 17050), (17051, 17208), (17209, 17370), (17371, 17520), (17521, 17680), (17681, 17842), (17843, 18000), (18001, 18150), (18151, 18310), (18311, 18472), (18473, 18622), (18623, 18778), (18779, 18934), (18935, 19080), (19081, 19242), (19243, 19398), (19399, 19552), (19553, 19714), (19715, 19870), (19871, 20028), (20029, 20190), (20191, 20344), (20345, 20502), (20503, 20644), (20645, 20802), (20803, 20950), (20951, 21108), (21109, 21268), (21269, 21430), (21431, 21580), (21581, 21738), (21739, 21900), (21901, 22054), (22055, 22212), (22213, 22354), (22355, 22510), (22511, 22672), (22673, 22830), (22831, 22978), (22979, 23134), (23135, 23292), (23293, 23454), (23455, 23608), (23609, 23770), (23771, 23928), (23929, 24090), (24091, 24252), (24253, 24412), (24413, 24574), (24575, 24732), (24733, 24894), (24895, 25050), (25051, 25198), (25199, 25350), (25351, 25510), (25511, 25632), (25633, 25794), (25795, 25954), (25955, 26081), (26411, 26568), (26569, 26572), (26645, 26669), (27556, 27597), (28125, 28284), (28285, 28286), (28717, 28722), (28812, 28878), (29791, 29929), (31213, 31354), (31355, 31411), (31423, 31490), (31827, 31845), (31974, 31988), (33614, 33650), (33708, 33775), (34322, 34480), (34481, 34552), (36517, 36658), (36659, 36662), (37303, 37371), (37446, 37464), (37500, 37654), (37655, 37699), (38307, 38452), (40401, 40489), (40931, 41088), (41089, 41092), (45369, 45414), (47526, 47682), (47683, 47685), (48013, 48122), (48373, 48384), (48387, 48534), (48778, 48829), (49152, 49291), (49298, 49313), (49379, 49459), (50421, 50571), (51076, 51166), (56307, 56330), (56454, 56468), (57245, 57283), (62500, 62571), (68644, 68800), (68801, 68805), (68921, 69051), (71289, 71448), (71449, 71450), (73205, 73328), (85805, 85844), (89383, 89534), (93845, 93911), (102152, 102171), (103041, 103127), (148955, 149038)]

theorem row162_bounds_eq : row162.goods.map goodSegmentBounds = row162_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row162_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32929), (2, 40960, 41121), (2, 49152, 49313), (2, 32768, 32929), (2, 49152, 49313), (2, 32768, 32929), (5, 28125, 28286), (5, 31250, 31411), (5, 34375, 34536), (5, 37500, 37661), (5, 40625, 40786), (5, 31250, 31411), (5, 46875, 47036), (7, 26411, 26572), (7, 28812, 28973), (7, 31213, 31374), (7, 33614, 33775), (7, 50421, 50582), (11, 29282, 29443), (11, 43923, 44084), (13, 26364, 26525), (13, 28561, 28722), (13, 28561, 28722), (17, 29478, 29639), (17, 34391, 34552), (17, 39304, 39465), (17, 44217, 44378), (17, 49130, 49291), (19, 27436, 27597), (19, 34295, 34456), (19, 41154, 41315), (19, 48013, 48174), (23, 36501, 36662), (23, 48668, 48829), (29, 48778, 48939), (31, 29791, 29952), (37, 50653, 50814), (47, 26508, 26669), (47, 28717, 28878), (53, 28090, 28251), (53, 30899, 31060), (53, 33708, 33869), (53, 36517, 36678), (59, 27848, 28009), (59, 31329, 31490), (59, 34810, 34971), (59, 38291, 38452), (59, 41772, 41933), (59, 45253, 45414), (61, 26082, 26208), (61, 29768, 29929), (61, 33489, 33650), (61, 37210, 37371), (61, 40931, 41092), (61, 44652, 44813), (61, 48373, 48534), (67, 26934, 27095), (67, 31423, 31584), (67, 35912, 36073), (67, 40401, 40562), (67, 44890, 45051), (67, 49379, 49540), (71, 30246, 30407), (71, 35287, 35448), (71, 40328, 40489), (71, 45369, 45530), (71, 50410, 50571), (73, 26645, 26806), (73, 31974, 32135), (73, 37303, 37464), (73, 42632, 42793), (73, 47961, 48122), (79, 31205, 31366), (79, 37446, 37607), (79, 43687, 43848), (79, 49928, 50089), (83, 27556, 27717), (83, 34445, 34606), (83, 41334, 41495), (83, 48223, 48384), (89, 31684, 31845), (89, 39605, 39766), (89, 47526, 47687), (97, 28227, 28388), (97, 37636, 37797), (97, 47045, 47206), (101, 30603, 30764), (101, 40804, 40965), (101, 51005, 51166), (103, 31827, 31988), (103, 42436, 42597), (107, 34347, 34508), (107, 45796, 45957), (109, 35643, 35804), (109, 47524, 47685), (113, 38307, 38468), (113, 51076, 51237), (127, 32258, 32419), (127, 48387, 48548), (131, 34322, 34483), (131, 51483, 51644), (137, 37538, 37699), (139, 38642, 38803), (149, 44402, 44563), (151, 45602, 45763), (157, 49298, 49459)]

def row162_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32929), (2, 40960, 41121), (2, 49152, 49313), (2, 32768, 32929), (2, 49152, 49313), (2, 32768, 32929), (5, 28125, 28286), (5, 31250, 31411), (5, 34375, 34536), (5, 37500, 37661), (5, 40625, 40786), (5, 31250, 31411), (5, 46875, 47036), (7, 26411, 26572), (7, 28812, 28973), (7, 31213, 31374)]

def row162_layer000_block001 : List ColouredInterval :=
  [(7, 33614, 33775), (7, 50421, 50582), (11, 29282, 29443), (11, 43923, 44084), (13, 26364, 26525), (13, 28561, 28722), (13, 28561, 28722), (17, 29478, 29639), (17, 34391, 34552), (17, 39304, 39465), (17, 44217, 44378), (17, 49130, 49291), (19, 27436, 27597), (19, 34295, 34456), (19, 41154, 41315), (19, 48013, 48174)]

def row162_layer000_block002 : List ColouredInterval :=
  [(23, 36501, 36662), (23, 48668, 48829), (29, 48778, 48939), (31, 29791, 29952), (37, 50653, 50814), (47, 26508, 26669), (47, 28717, 28878), (53, 28090, 28251), (53, 30899, 31060), (53, 33708, 33869), (53, 36517, 36678), (59, 27848, 28009), (59, 31329, 31490), (59, 34810, 34971), (59, 38291, 38452), (59, 41772, 41933)]

def row162_layer000_block003 : List ColouredInterval :=
  [(59, 45253, 45414), (61, 26082, 26208), (61, 29768, 29929), (61, 33489, 33650), (61, 37210, 37371), (61, 40931, 41092), (61, 44652, 44813), (61, 48373, 48534), (67, 26934, 27095), (67, 31423, 31584), (67, 35912, 36073), (67, 40401, 40562), (67, 44890, 45051), (67, 49379, 49540), (71, 30246, 30407), (71, 35287, 35448)]

def row162_layer000_block004 : List ColouredInterval :=
  [(71, 40328, 40489), (71, 45369, 45530), (71, 50410, 50571), (73, 26645, 26806), (73, 31974, 32135), (73, 37303, 37464), (73, 42632, 42793), (73, 47961, 48122), (79, 31205, 31366), (79, 37446, 37607), (79, 43687, 43848), (79, 49928, 50089), (83, 27556, 27717), (83, 34445, 34606), (83, 41334, 41495), (83, 48223, 48384)]

def row162_layer000_block005 : List ColouredInterval :=
  [(89, 31684, 31845), (89, 39605, 39766), (89, 47526, 47687), (97, 28227, 28388), (97, 37636, 37797), (97, 47045, 47206), (101, 30603, 30764), (101, 40804, 40965), (101, 51005, 51166), (103, 31827, 31988), (103, 42436, 42597), (107, 34347, 34508), (107, 45796, 45957), (109, 35643, 35804), (109, 47524, 47685), (113, 38307, 38468)]

def row162_layer000_block006 : List ColouredInterval :=
  [(113, 51076, 51237), (127, 32258, 32419), (127, 48387, 48548), (131, 34322, 34483), (131, 51483, 51644), (137, 37538, 37699), (139, 38642, 38803), (149, 44402, 44563), (151, 45602, 45763), (157, 49298, 49459)]

def row162_layer000_chunks : List (List ColouredInterval) :=
  [row162_layer000_block000, row162_layer000_block001, row162_layer000_block002, row162_layer000_block003, row162_layer000_block004, row162_layer000_block005, row162_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_arithmetic : LayerArithmeticValid row162.height { lower := 26082, upper := 52164, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_enumeration :
    activePowerIntervalList 162 13 26082 52164 = row162_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_pairs000 :
    row162_layer000_block000.all (fun I => row162_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_pairs001 :
    row162_layer000_block001.all (fun I => row162_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_pairs002 :
    row162_layer000_block002.all (fun I => row162_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_pairs003 :
    row162_layer000_block003.all (fun I => row162_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_pairs004 :
    row162_layer000_block004.all (fun I => row162_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_pairs005 :
    row162_layer000_block005.all (fun I => row162_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_pairs006 :
    row162_layer000_block006.all (fun I => row162_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_chunks_eq : row162_layer000_chunks.flatten = row162_layer000_intervals := by
  rfl

theorem row162_layer000_pairs : pairCoverCheck row162_layer000_intervals row162_bounds = true := by
  apply pairCoverCheck_of_chunks row162_layer000_chunks_eq
  intro block hblock
  simp only [row162_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row162_layer000_pairs000
  · exact row162_layer000_pairs001
  · exact row162_layer000_pairs002
  · exact row162_layer000_pairs003
  · exact row162_layer000_pairs004
  · exact row162_layer000_pairs005
  · exact row162_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer000_checked :
    coverLayerCheck row162.height row162.goods { lower := 26082, upper := 52164, M := 13 } = true := by
  exact coverLayerCheck_of_parts row162_layer000_arithmetic row162_layer000_enumeration row162_bounds_eq row162_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row162_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65697), (2, 81920, 82081), (2, 65536, 65697), (2, 98304, 98465), (2, 65536, 65697), (5, 62500, 62661), (5, 78125, 78286), (5, 93750, 93911), (5, 78125, 78286), (7, 67228, 67389), (7, 84035, 84196), (7, 100842, 101003), (11, 58564, 58725), (11, 73205, 73366), (11, 87846, 88007), (11, 102487, 102648), (13, 57122, 57283), (13, 85683, 85844), (17, 83521, 83682), (19, 54872, 55033), (19, 61731, 61892), (19, 68590, 68751), (23, 60835, 60996), (23, 73002, 73163), (23, 85169, 85330), (23, 97336, 97497), (29, 73167, 73328), (29, 97556, 97717), (31, 59582, 59743), (31, 89373, 89534), (37, 101306, 101467), (41, 68921, 69082), (43, 79507, 79668), (47, 103823, 103984), (73, 53290, 53451), (79, 56169, 56330), (79, 62410, 62571), (83, 55112, 55273), (83, 62001, 62162), (83, 68890, 69051), (89, 55447, 55608), (89, 63368, 63529), (89, 71289, 71450), (89, 79210, 79371), (97, 56454, 56615), (97, 65863, 66024), (97, 75272, 75433), (97, 84681, 84842), (97, 94090, 94251), (101, 61206, 61367), (101, 71407, 71568), (101, 81608, 81769), (101, 91809, 91970), (101, 102010, 102171), (103, 53045, 53206), (103, 63654, 63815), (103, 74263, 74424), (103, 84872, 85033), (103, 95481, 95642), (107, 57245, 57406), (107, 68694, 68855), (107, 80143, 80304), (107, 91592, 91753), (107, 103041, 103202), (109, 59405, 59566), (109, 71286, 71447), (109, 83167, 83328), (109, 95048, 95209), (113, 63845, 64006), (113, 76614, 76775), (113, 89383, 89544), (113, 102152, 102313), (127, 64516, 64677), (127, 80645, 80806), (127, 96774, 96935), (131, 68644, 68805), (131, 85805, 85966), (131, 102966, 103127), (137, 56307, 56468), (137, 75076, 75237), (137, 93845, 94006), (139, 57963, 58124), (139, 77284, 77445), (139, 96605, 96766), (149, 66603, 66764), (149, 88804, 88965), (151, 68403, 68564), (151, 91204, 91365), (157, 73947, 74108), (157, 98596, 98757)]

def row162_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65697), (2, 81920, 82081), (2, 65536, 65697), (2, 98304, 98465), (2, 65536, 65697), (5, 62500, 62661), (5, 78125, 78286), (5, 93750, 93911), (5, 78125, 78286), (7, 67228, 67389), (7, 84035, 84196), (7, 100842, 101003), (11, 58564, 58725), (11, 73205, 73366), (11, 87846, 88007), (11, 102487, 102648)]

def row162_layer001_block001 : List ColouredInterval :=
  [(13, 57122, 57283), (13, 85683, 85844), (17, 83521, 83682), (19, 54872, 55033), (19, 61731, 61892), (19, 68590, 68751), (23, 60835, 60996), (23, 73002, 73163), (23, 85169, 85330), (23, 97336, 97497), (29, 73167, 73328), (29, 97556, 97717), (31, 59582, 59743), (31, 89373, 89534), (37, 101306, 101467), (41, 68921, 69082)]

def row162_layer001_block002 : List ColouredInterval :=
  [(43, 79507, 79668), (47, 103823, 103984), (73, 53290, 53451), (79, 56169, 56330), (79, 62410, 62571), (83, 55112, 55273), (83, 62001, 62162), (83, 68890, 69051), (89, 55447, 55608), (89, 63368, 63529), (89, 71289, 71450), (89, 79210, 79371), (97, 56454, 56615), (97, 65863, 66024), (97, 75272, 75433), (97, 84681, 84842)]

def row162_layer001_block003 : List ColouredInterval :=
  [(97, 94090, 94251), (101, 61206, 61367), (101, 71407, 71568), (101, 81608, 81769), (101, 91809, 91970), (101, 102010, 102171), (103, 53045, 53206), (103, 63654, 63815), (103, 74263, 74424), (103, 84872, 85033), (103, 95481, 95642), (107, 57245, 57406), (107, 68694, 68855), (107, 80143, 80304), (107, 91592, 91753), (107, 103041, 103202)]

def row162_layer001_block004 : List ColouredInterval :=
  [(109, 59405, 59566), (109, 71286, 71447), (109, 83167, 83328), (109, 95048, 95209), (113, 63845, 64006), (113, 76614, 76775), (113, 89383, 89544), (113, 102152, 102313), (127, 64516, 64677), (127, 80645, 80806), (127, 96774, 96935), (131, 68644, 68805), (131, 85805, 85966), (131, 102966, 103127), (137, 56307, 56468), (137, 75076, 75237)]

def row162_layer001_block005 : List ColouredInterval :=
  [(137, 93845, 94006), (139, 57963, 58124), (139, 77284, 77445), (139, 96605, 96766), (149, 66603, 66764), (149, 88804, 88965), (151, 68403, 68564), (151, 91204, 91365), (157, 73947, 74108), (157, 98596, 98757)]

def row162_layer001_chunks : List (List ColouredInterval) :=
  [row162_layer001_block000, row162_layer001_block001, row162_layer001_block002, row162_layer001_block003, row162_layer001_block004, row162_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_arithmetic : LayerArithmeticValid row162.height { lower := 52164, upper := 104328, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_arithmetic
