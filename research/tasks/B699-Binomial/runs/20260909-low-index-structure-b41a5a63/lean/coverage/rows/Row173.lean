import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row173_height : HeightCertificateDatum := { i := 173, r := 57, s := 123, n0Power10 := 7 }

def row173_goods : List GoodSegment := [
  { lower := 348, upper := 519, witness := RowWitness.topPrime 347 },
  { lower := 520, upper := 681, witness := RowWitness.topPrime 509 },
  { lower := 682, upper := 849, witness := RowWitness.topPrime 677 },
  { lower := 850, upper := 1011, witness := RowWitness.topPrime 839 },
  { lower := 1012, upper := 1181, witness := RowWitness.topPrime 1009 },
  { lower := 1182, upper := 1353, witness := RowWitness.topPrime 1181 },
  { lower := 1354, upper := 1499, witness := RowWitness.topPrime 1327 },
  { lower := 1500, upper := 1671, witness := RowWitness.topPrime 1499 },
  { lower := 1672, upper := 1841, witness := RowWitness.topPrime 1669 },
  { lower := 1842, upper := 2003, witness := RowWitness.topPrime 1831 },
  { lower := 2004, upper := 2175, witness := RowWitness.topPrime 2003 },
  { lower := 2176, upper := 2333, witness := RowWitness.topPrime 2161 },
  { lower := 2334, upper := 2505, witness := RowWitness.topPrime 2333 },
  { lower := 2506, upper := 2675, witness := RowWitness.topPrime 2503 },
  { lower := 2676, upper := 2843, witness := RowWitness.topPrime 2671 },
  { lower := 2844, upper := 3015, witness := RowWitness.topPrime 2843 },
  { lower := 3016, upper := 3183, witness := RowWitness.topPrime 3011 },
  { lower := 3184, upper := 3353, witness := RowWitness.topPrime 3181 },
  { lower := 3354, upper := 3519, witness := RowWitness.topPrime 3347 },
  { lower := 3520, upper := 3689, witness := RowWitness.topPrime 3517 },
  { lower := 3690, upper := 3849, witness := RowWitness.topPrime 3677 },
  { lower := 3850, upper := 4019, witness := RowWitness.topPrime 3847 },
  { lower := 4020, upper := 4191, witness := RowWitness.topPrime 4019 },
  { lower := 4192, upper := 4349, witness := RowWitness.topPrime 4177 },
  { lower := 4350, upper := 4521, witness := RowWitness.topPrime 4349 },
  { lower := 4522, upper := 4691, witness := RowWitness.topPrime 4519 },
  { lower := 4692, upper := 4863, witness := RowWitness.topPrime 4691 },
  { lower := 4864, upper := 5033, witness := RowWitness.topPrime 4861 },
  { lower := 5034, upper := 5195, witness := RowWitness.topPrime 5023 },
  { lower := 5196, upper := 5361, witness := RowWitness.topPrime 5189 },
  { lower := 5362, upper := 5523, witness := RowWitness.topPrime 5351 },
  { lower := 5524, upper := 5693, witness := RowWitness.topPrime 5521 },
  { lower := 5694, upper := 5865, witness := RowWitness.topPrime 5693 },
  { lower := 5866, upper := 6033, witness := RowWitness.topPrime 5861 },
  { lower := 6034, upper := 6201, witness := RowWitness.topPrime 6029 },
  { lower := 6202, upper := 6371, witness := RowWitness.topPrime 6199 },
  { lower := 6372, upper := 6539, witness := RowWitness.topPrime 6367 },
  { lower := 6540, upper := 6701, witness := RowWitness.topPrime 6529 },
  { lower := 6702, upper := 6873, witness := RowWitness.topPrime 6701 },
  { lower := 6874, upper := 7043, witness := RowWitness.topPrime 6871 },
  { lower := 7044, upper := 7215, witness := RowWitness.topPrime 7043 },
  { lower := 7216, upper := 7385, witness := RowWitness.topPrime 7213 },
  { lower := 7386, upper := 7541, witness := RowWitness.topPrime 7369 },
  { lower := 7542, upper := 7713, witness := RowWitness.topPrime 7541 },
  { lower := 7714, upper := 7875, witness := RowWitness.topPrime 7703 },
  { lower := 7876, upper := 8045, witness := RowWitness.topPrime 7873 },
  { lower := 8046, upper := 8211, witness := RowWitness.topPrime 8039 },
  { lower := 8212, upper := 8381, witness := RowWitness.topPrime 8209 },
  { lower := 8382, upper := 8549, witness := RowWitness.topPrime 8377 },
  { lower := 8550, upper := 8715, witness := RowWitness.topPrime 8543 },
  { lower := 8716, upper := 8885, witness := RowWitness.topPrime 8713 },
  { lower := 8886, upper := 9039, witness := RowWitness.topPrime 8867 },
  { lower := 9040, upper := 9201, witness := RowWitness.topPrime 9029 },
  { lower := 9202, upper := 9371, witness := RowWitness.topPrime 9199 },
  { lower := 9372, upper := 9543, witness := RowWitness.topPrime 9371 },
  { lower := 9544, upper := 9711, witness := RowWitness.topPrime 9539 },
  { lower := 9712, upper := 9869, witness := RowWitness.topPrime 9697 },
  { lower := 9870, upper := 10031, witness := RowWitness.topPrime 9859 },
  { lower := 10032, upper := 10181, witness := RowWitness.topPrime 10009 },
  { lower := 10182, upper := 10353, witness := RowWitness.topPrime 10181 },
  { lower := 10354, upper := 10515, witness := RowWitness.topPrime 10343 },
  { lower := 10516, upper := 10685, witness := RowWitness.topPrime 10513 },
  { lower := 10686, upper := 10839, witness := RowWitness.topPrime 10667 },
  { lower := 10840, upper := 11009, witness := RowWitness.topPrime 10837 },
  { lower := 11010, upper := 11175, witness := RowWitness.topPrime 11003 },
  { lower := 11176, upper := 11345, witness := RowWitness.topPrime 11173 },
  { lower := 11346, upper := 11501, witness := RowWitness.topPrime 11329 },
  { lower := 11502, upper := 11669, witness := RowWitness.topPrime 11497 },
  { lower := 11670, upper := 11829, witness := RowWitness.topPrime 11657 },
  { lower := 11830, upper := 11999, witness := RowWitness.topPrime 11827 },
  { lower := 12000, upper := 12159, witness := RowWitness.topPrime 11987 },
  { lower := 12160, upper := 12329, witness := RowWitness.topPrime 12157 },
  { lower := 12330, upper := 12501, witness := RowWitness.topPrime 12329 },
  { lower := 12502, upper := 12669, witness := RowWitness.topPrime 12497 },
  { lower := 12670, upper := 12831, witness := RowWitness.topPrime 12659 },
  { lower := 12832, upper := 13001, witness := RowWitness.topPrime 12829 },
  { lower := 13002, upper := 13173, witness := RowWitness.topPrime 13001 },
  { lower := 13174, upper := 13343, witness := RowWitness.topPrime 13171 },
  { lower := 13344, upper := 13511, witness := RowWitness.topPrime 13339 },
  { lower := 13512, upper := 13671, witness := RowWitness.topPrime 13499 },
  { lower := 13672, upper := 13841, witness := RowWitness.topPrime 13669 },
  { lower := 13842, upper := 14013, witness := RowWitness.topPrime 13841 },
  { lower := 14014, upper := 14183, witness := RowWitness.topPrime 14011 },
  { lower := 14184, upper := 14349, witness := RowWitness.topPrime 14177 },
  { lower := 14350, upper := 14519, witness := RowWitness.topPrime 14347 },
  { lower := 14520, upper := 14691, witness := RowWitness.topPrime 14519 },
  { lower := 14692, upper := 14855, witness := RowWitness.topPrime 14683 },
  { lower := 14856, upper := 15023, witness := RowWitness.topPrime 14851 },
  { lower := 15024, upper := 15189, witness := RowWitness.topPrime 15017 },
  { lower := 15190, upper := 15359, witness := RowWitness.topPrime 15187 },
  { lower := 15360, upper := 15531, witness := RowWitness.topPrime 15359 },
  { lower := 15532, upper := 15699, witness := RowWitness.topPrime 15527 },
  { lower := 15700, upper := 15855, witness := RowWitness.topPrime 15683 },
  { lower := 15856, upper := 15995, witness := RowWitness.topPrime 15823 },
  { lower := 15996, upper := 16163, witness := RowWitness.topPrime 15991 },
  { lower := 16164, upper := 16313, witness := RowWitness.topPrime 16141 },
  { lower := 16314, upper := 16473, witness := RowWitness.topPrime 16301 },
  { lower := 16474, upper := 16625, witness := RowWitness.topPrime 16453 },
  { lower := 16626, upper := 16791, witness := RowWitness.topPrime 16619 },
  { lower := 16792, upper := 16959, witness := RowWitness.topPrime 16787 },
  { lower := 16960, upper := 17115, witness := RowWitness.topPrime 16943 },
  { lower := 17116, upper := 17279, witness := RowWitness.topPrime 17107 },
  { lower := 17280, upper := 17429, witness := RowWitness.topPrime 17257 },
  { lower := 17430, upper := 17591, witness := RowWitness.topPrime 17419 },
  { lower := 17592, upper := 17753, witness := RowWitness.topPrime 17581 },
  { lower := 17754, upper := 17921, witness := RowWitness.topPrime 17749 },
  { lower := 17922, upper := 18093, witness := RowWitness.topPrime 17921 },
  { lower := 18094, upper := 18261, witness := RowWitness.topPrime 18089 },
  { lower := 18262, upper := 18429, witness := RowWitness.topPrime 18257 },
  { lower := 18430, upper := 18599, witness := RowWitness.topPrime 18427 },
  { lower := 18600, upper := 18765, witness := RowWitness.topPrime 18593 },
  { lower := 18766, upper := 18929, witness := RowWitness.topPrime 18757 },
  { lower := 18930, upper := 19091, witness := RowWitness.topPrime 18919 },
  { lower := 19092, upper := 19259, witness := RowWitness.topPrime 19087 },
  { lower := 19260, upper := 19431, witness := RowWitness.topPrime 19259 },
  { lower := 19432, upper := 19601, witness := RowWitness.topPrime 19429 },
  { lower := 19602, upper := 19769, witness := RowWitness.topPrime 19597 },
  { lower := 19770, upper := 19935, witness := RowWitness.topPrime 19763 },
  { lower := 19936, upper := 20099, witness := RowWitness.topPrime 19927 },
  { lower := 20100, upper := 20261, witness := RowWitness.topPrime 20089 },
  { lower := 20262, upper := 20433, witness := RowWitness.topPrime 20261 },
  { lower := 20434, upper := 20603, witness := RowWitness.topPrime 20431 },
  { lower := 20604, upper := 20771, witness := RowWitness.topPrime 20599 },
  { lower := 20772, upper := 20943, witness := RowWitness.topPrime 20771 },
  { lower := 20944, upper := 21111, witness := RowWitness.topPrime 20939 },
  { lower := 21112, upper := 21279, witness := RowWitness.topPrime 21107 },
  { lower := 21280, upper := 21449, witness := RowWitness.topPrime 21277 },
  { lower := 21450, upper := 21605, witness := RowWitness.topPrime 21433 },
  { lower := 21606, upper := 21773, witness := RowWitness.topPrime 21601 },
  { lower := 21774, upper := 21945, witness := RowWitness.topPrime 21773 },
  { lower := 21946, upper := 22115, witness := RowWitness.topPrime 21943 },
  { lower := 22116, upper := 22283, witness := RowWitness.topPrime 22111 },
  { lower := 22284, upper := 22455, witness := RowWitness.topPrime 22283 },
  { lower := 22456, upper := 22625, witness := RowWitness.topPrime 22453 },
  { lower := 22626, upper := 22793, witness := RowWitness.topPrime 22621 },
  { lower := 22794, upper := 22959, witness := RowWitness.topPrime 22787 },
  { lower := 22960, upper := 23115, witness := RowWitness.topPrime 22943 },
  { lower := 23116, upper := 23271, witness := RowWitness.topPrime 23099 },
  { lower := 23272, upper := 23441, witness := RowWitness.topPrime 23269 },
  { lower := 23442, upper := 23603, witness := RowWitness.topPrime 23431 },
  { lower := 23604, upper := 23775, witness := RowWitness.topPrime 23603 },
  { lower := 23776, upper := 23945, witness := RowWitness.topPrime 23773 },
  { lower := 23946, upper := 24101, witness := RowWitness.topPrime 23929 },
  { lower := 24102, upper := 24269, witness := RowWitness.topPrime 24097 },
  { lower := 24270, upper := 24423, witness := RowWitness.topPrime 24251 },
  { lower := 24424, upper := 24593, witness := RowWitness.topPrime 24421 },
  { lower := 24594, upper := 24765, witness := RowWitness.topPrime 24593 },
  { lower := 24766, upper := 24935, witness := RowWitness.topPrime 24763 },
  { lower := 24936, upper := 25095, witness := RowWitness.topPrime 24923 },
  { lower := 25096, upper := 25259, witness := RowWitness.topPrime 25087 },
  { lower := 25260, upper := 25425, witness := RowWitness.topPrime 25253 },
  { lower := 25426, upper := 25595, witness := RowWitness.topPrime 25423 },
  { lower := 25596, upper := 25761, witness := RowWitness.topPrime 25589 },
  { lower := 25762, upper := 25931, witness := RowWitness.topPrime 25759 },
  { lower := 25932, upper := 26103, witness := RowWitness.topPrime 25931 },
  { lower := 26104, upper := 26271, witness := RowWitness.topPrime 26099 },
  { lower := 26272, upper := 26439, witness := RowWitness.topPrime 26267 },
  { lower := 26440, upper := 26609, witness := RowWitness.topPrime 26437 },
  { lower := 26610, upper := 26769, witness := RowWitness.topPrime 26597 },
  { lower := 26770, upper := 26931, witness := RowWitness.topPrime 26759 },
  { lower := 26932, upper := 27099, witness := RowWitness.topPrime 26927 },
  { lower := 27100, upper := 27263, witness := RowWitness.topPrime 27091 },
  { lower := 27264, upper := 27431, witness := RowWitness.topPrime 27259 },
  { lower := 27432, upper := 27603, witness := RowWitness.topPrime 27431 },
  { lower := 27604, upper := 27755, witness := RowWitness.topPrime 27583 },
  { lower := 27756, upper := 27923, witness := RowWitness.topPrime 27751 },
  { lower := 27924, upper := 28091, witness := RowWitness.topPrime 27919 },
  { lower := 28092, upper := 28259, witness := RowWitness.topPrime 28087 },
  { lower := 28260, upper := 28401, witness := RowWitness.topPrime 28229 },
  { lower := 28402, upper := 28565, witness := RowWitness.topPrime 28393 },
  { lower := 28566, upper := 28731, witness := RowWitness.topPrime 28559 },
  { lower := 28732, upper := 28901, witness := RowWitness.topPrime 28729 },
  { lower := 28902, upper := 29073, witness := RowWitness.topPrime 28901 },
  { lower := 29074, upper := 29235, witness := RowWitness.topPrime 29063 },
  { lower := 29236, upper := 29403, witness := RowWitness.topPrime 29231 },
  { lower := 29404, upper := 29573, witness := RowWitness.topPrime 29401 },
  { lower := 29574, upper := 29745, witness := RowWitness.topPrime 29573 },
  { lower := 29746, upper := 29755, witness := RowWitness.topPrime 29741 },
  { lower := 29791, upper := 29940, witness := RowWitness.topPrime 29789 },
  { lower := 31250, upper := 31421, witness := RowWitness.topPrime 31249 },
  { lower := 31422, upper := 31501, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31856, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31999, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32940, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33661, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33786, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34491, witness := RowWitness.topPrime 34319 },
  { lower := 34492, upper := 34563, witness := RowWitness.topPrime 34487 },
  { lower := 37303, upper := 37382, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37475, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37665, witness := RowWitness.topPrime 37493 },
  { lower := 37666, upper := 37710, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38463, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39476, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40500, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41099, witness := RowWitness.topPrime 40927 },
  { lower := 41100, upper := 41103, witness := RowWitness.topPrime 41081 },
  { lower := 45056, upper := 45062, witness := RowWitness.topPrime 45053 },
  { lower := 45927, upper := 45968, witness := RowWitness.topPrime 45893 },
  { lower := 47045, upper := 47047, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47693, witness := RowWitness.topPrime 47521 },
  { lower := 47694, upper := 47696, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48133, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48395, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48840, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49311, witness := RowWitness.topPrime 49139 },
  { lower := 49312, upper := 49324, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49470, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50582, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51177, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53217, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53310, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55613, witness := RowWitness.topPrime 55441 },
  { lower := 55614, upper := 55619, witness := RowWitness.topPrime 55609 },
  { lower := 56307, upper := 56341, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56479, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57294, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57417, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58736, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59128, witness := RowWitness.topPrime 59029 },
  { lower := 68694, upper := 68816, witness := RowWitness.topPrime 68687 },
  { lower := 71289, upper := 71459, witness := RowWitness.topPrime 71287 },
  { lower := 71460, upper := 71461, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73174, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73339, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83693, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85855, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89545, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93922, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96777, witness := RowWitness.topPrime 96769 },
  { lower := 98415, upper := 98476, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103138, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109547, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137953, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149049, witness := RowWitness.topPrime 148949 }
]

def row173_layers : List CoverLayer := [
  { lower := 29756, upper := 59512, M := 12 },
  { lower := 59512, upper := 119024, M := 9 },
  { lower := 119024, upper := 238048, M := 7 },
  { lower := 238048, upper := 476096, M := 5 },
  { lower := 476096, upper := 952192, M := 4 },
  { lower := 952192, upper := 1904384, M := 3 },
  { lower := 1904384, upper := 3808768, M := 2 },
  { lower := 3808768, upper := 7617536, M := 2 },
  { lower := 7617536, upper := 10000000, M := 1 }
]

def row173 : FiniteCoverRow := {
  height := row173_height,
  goods := row173_goods,
  layers := row173_layers
}

theorem row173_registered :
    decide (row173.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row173_goods_checked :
    row173.goods.all (goodSegmentCheck row173.height.i row173.height.r row173.height.s) = true := by
  decide +kernel

theorem row173_small_checked :
    coverCheck (2 * row173.height.i + 2) (row173.height.i * (row173.height.i - 1) - 1)
      (row173.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row173_layerCover_checked :
    coverCheck (row173.height.i * (row173.height.i - 1)) (row173.height.n0 - 1)
      (row173.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row173_layer000_checked :
    coverLayerCheck row173.height row173.goods { lower := 29756, upper := 59512, M := 12 } = true := by
  decide +kernel

theorem row173_layer001_checked :
    coverLayerCheck row173.height row173.goods { lower := 59512, upper := 119024, M := 9 } = true := by
  decide +kernel

theorem row173_layer002_checked :
    coverLayerCheck row173.height row173.goods { lower := 119024, upper := 238048, M := 7 } = true := by
  decide +kernel

theorem row173_layer003_checked :
    coverLayerCheck row173.height row173.goods { lower := 238048, upper := 476096, M := 5 } = true := by
  decide +kernel

theorem row173_layer004_checked :
    coverLayerCheck row173.height row173.goods { lower := 476096, upper := 952192, M := 4 } = true := by
  decide +kernel

theorem row173_layer005_checked :
    coverLayerCheck row173.height row173.goods { lower := 952192, upper := 1904384, M := 3 } = true := by
  decide +kernel

theorem row173_layer006_checked :
    coverLayerCheck row173.height row173.goods { lower := 1904384, upper := 3808768, M := 2 } = true := by
  decide +kernel

theorem row173_layer007_checked :
    coverLayerCheck row173.height row173.goods { lower := 3808768, upper := 7617536, M := 2 } = true := by
  decide +kernel

theorem row173_layer008_checked :
    coverLayerCheck row173.height row173.goods { lower := 7617536, upper := 10000000, M := 1 } = true := by
  decide +kernel

theorem row173_layers_checked :
    row173.layers.all (coverLayerCheck row173.height row173.goods) = true := by
  change List.all [
    { lower := 29756, upper := 59512, M := 12 },
    { lower := 59512, upper := 119024, M := 9 },
    { lower := 119024, upper := 238048, M := 7 },
    { lower := 238048, upper := 476096, M := 5 },
    { lower := 476096, upper := 952192, M := 4 },
    { lower := 952192, upper := 1904384, M := 3 },
    { lower := 1904384, upper := 3808768, M := 2 },
    { lower := 3808768, upper := 7617536, M := 2 },
    { lower := 7617536, upper := 10000000, M := 1 }
  ] (coverLayerCheck row173.height row173.goods) = true
  simp only [List.all_cons, List.all_nil,
    row173_layer000_checked,
    row173_layer001_checked,
    row173_layer002_checked,
    row173_layer003_checked,
    row173_layer004_checked,
    row173_layer005_checked,
    row173_layer006_checked,
    row173_layer007_checked,
    row173_layer008_checked,
    Bool.true_and]

theorem row173_checked : finiteCoverRowCheck row173 = true := by
  simp only [finiteCoverRowCheck, row173_registered, row173_goods_checked,
    row173_small_checked, row173_layerCover_checked, row173_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row173_checked

end B699LowIndex
