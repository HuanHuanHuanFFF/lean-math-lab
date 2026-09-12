import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good000_checked :
    goodSegmentCheck 173 57 123
      { lower := 348, upper := 519, witness := RowWitness.topPrime 347 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good001_checked :
    goodSegmentCheck 173 57 123
      { lower := 520, upper := 681, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good002_checked :
    goodSegmentCheck 173 57 123
      { lower := 682, upper := 849, witness := RowWitness.topPrime 677 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good003_checked :
    goodSegmentCheck 173 57 123
      { lower := 850, upper := 1011, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good004_checked :
    goodSegmentCheck 173 57 123
      { lower := 1012, upper := 1181, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good005_checked :
    goodSegmentCheck 173 57 123
      { lower := 1182, upper := 1353, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good006_checked :
    goodSegmentCheck 173 57 123
      { lower := 1354, upper := 1499, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good007_checked :
    goodSegmentCheck 173 57 123
      { lower := 1500, upper := 1671, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good008_checked :
    goodSegmentCheck 173 57 123
      { lower := 1672, upper := 1841, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good009_checked :
    goodSegmentCheck 173 57 123
      { lower := 1842, upper := 2003, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good010_checked :
    goodSegmentCheck 173 57 123
      { lower := 2004, upper := 2175, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good011_checked :
    goodSegmentCheck 173 57 123
      { lower := 2176, upper := 2333, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good012_checked :
    goodSegmentCheck 173 57 123
      { lower := 2334, upper := 2505, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good013_checked :
    goodSegmentCheck 173 57 123
      { lower := 2506, upper := 2675, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good014_checked :
    goodSegmentCheck 173 57 123
      { lower := 2676, upper := 2843, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good015_checked :
    goodSegmentCheck 173 57 123
      { lower := 2844, upper := 3015, witness := RowWitness.topPrime 2843 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good016_checked :
    goodSegmentCheck 173 57 123
      { lower := 3016, upper := 3183, witness := RowWitness.topPrime 3011 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good017_checked :
    goodSegmentCheck 173 57 123
      { lower := 3184, upper := 3353, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good018_checked :
    goodSegmentCheck 173 57 123
      { lower := 3354, upper := 3519, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good019_checked :
    goodSegmentCheck 173 57 123
      { lower := 3520, upper := 3689, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good020_checked :
    goodSegmentCheck 173 57 123
      { lower := 3690, upper := 3849, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good021_checked :
    goodSegmentCheck 173 57 123
      { lower := 3850, upper := 4019, witness := RowWitness.topPrime 3847 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good022_checked :
    goodSegmentCheck 173 57 123
      { lower := 4020, upper := 4191, witness := RowWitness.topPrime 4019 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good023_checked :
    goodSegmentCheck 173 57 123
      { lower := 4192, upper := 4349, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good024_checked :
    goodSegmentCheck 173 57 123
      { lower := 4350, upper := 4521, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good025_checked :
    goodSegmentCheck 173 57 123
      { lower := 4522, upper := 4691, witness := RowWitness.topPrime 4519 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good026_checked :
    goodSegmentCheck 173 57 123
      { lower := 4692, upper := 4863, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good027_checked :
    goodSegmentCheck 173 57 123
      { lower := 4864, upper := 5033, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good028_checked :
    goodSegmentCheck 173 57 123
      { lower := 5034, upper := 5195, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good029_checked :
    goodSegmentCheck 173 57 123
      { lower := 5196, upper := 5361, witness := RowWitness.topPrime 5189 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good030_checked :
    goodSegmentCheck 173 57 123
      { lower := 5362, upper := 5523, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good031_checked :
    goodSegmentCheck 173 57 123
      { lower := 5524, upper := 5693, witness := RowWitness.topPrime 5521 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good032_checked :
    goodSegmentCheck 173 57 123
      { lower := 5694, upper := 5865, witness := RowWitness.topPrime 5693 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good033_checked :
    goodSegmentCheck 173 57 123
      { lower := 5866, upper := 6033, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good034_checked :
    goodSegmentCheck 173 57 123
      { lower := 6034, upper := 6201, witness := RowWitness.topPrime 6029 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good035_checked :
    goodSegmentCheck 173 57 123
      { lower := 6202, upper := 6371, witness := RowWitness.topPrime 6199 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good036_checked :
    goodSegmentCheck 173 57 123
      { lower := 6372, upper := 6539, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good037_checked :
    goodSegmentCheck 173 57 123
      { lower := 6540, upper := 6701, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good038_checked :
    goodSegmentCheck 173 57 123
      { lower := 6702, upper := 6873, witness := RowWitness.topPrime 6701 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good039_checked :
    goodSegmentCheck 173 57 123
      { lower := 6874, upper := 7043, witness := RowWitness.topPrime 6871 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good040_checked :
    goodSegmentCheck 173 57 123
      { lower := 7044, upper := 7215, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good041_checked :
    goodSegmentCheck 173 57 123
      { lower := 7216, upper := 7385, witness := RowWitness.topPrime 7213 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good042_checked :
    goodSegmentCheck 173 57 123
      { lower := 7386, upper := 7541, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good043_checked :
    goodSegmentCheck 173 57 123
      { lower := 7542, upper := 7713, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good044_checked :
    goodSegmentCheck 173 57 123
      { lower := 7714, upper := 7875, witness := RowWitness.topPrime 7703 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good045_checked :
    goodSegmentCheck 173 57 123
      { lower := 7876, upper := 8045, witness := RowWitness.topPrime 7873 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good046_checked :
    goodSegmentCheck 173 57 123
      { lower := 8046, upper := 8211, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good047_checked :
    goodSegmentCheck 173 57 123
      { lower := 8212, upper := 8381, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good048_checked :
    goodSegmentCheck 173 57 123
      { lower := 8382, upper := 8549, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good049_checked :
    goodSegmentCheck 173 57 123
      { lower := 8550, upper := 8715, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good050_checked :
    goodSegmentCheck 173 57 123
      { lower := 8716, upper := 8885, witness := RowWitness.topPrime 8713 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good051_checked :
    goodSegmentCheck 173 57 123
      { lower := 8886, upper := 9039, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good052_checked :
    goodSegmentCheck 173 57 123
      { lower := 9040, upper := 9201, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good053_checked :
    goodSegmentCheck 173 57 123
      { lower := 9202, upper := 9371, witness := RowWitness.topPrime 9199 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good054_checked :
    goodSegmentCheck 173 57 123
      { lower := 9372, upper := 9543, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good055_checked :
    goodSegmentCheck 173 57 123
      { lower := 9544, upper := 9711, witness := RowWitness.topPrime 9539 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good056_checked :
    goodSegmentCheck 173 57 123
      { lower := 9712, upper := 9869, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good057_checked :
    goodSegmentCheck 173 57 123
      { lower := 9870, upper := 10031, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good058_checked :
    goodSegmentCheck 173 57 123
      { lower := 10032, upper := 10181, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good059_checked :
    goodSegmentCheck 173 57 123
      { lower := 10182, upper := 10353, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good060_checked :
    goodSegmentCheck 173 57 123
      { lower := 10354, upper := 10515, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good061_checked :
    goodSegmentCheck 173 57 123
      { lower := 10516, upper := 10685, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good062_checked :
    goodSegmentCheck 173 57 123
      { lower := 10686, upper := 10839, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good063_checked :
    goodSegmentCheck 173 57 123
      { lower := 10840, upper := 11009, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good064_checked :
    goodSegmentCheck 173 57 123
      { lower := 11010, upper := 11175, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good065_checked :
    goodSegmentCheck 173 57 123
      { lower := 11176, upper := 11345, witness := RowWitness.topPrime 11173 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good066_checked :
    goodSegmentCheck 173 57 123
      { lower := 11346, upper := 11501, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good067_checked :
    goodSegmentCheck 173 57 123
      { lower := 11502, upper := 11669, witness := RowWitness.topPrime 11497 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good068_checked :
    goodSegmentCheck 173 57 123
      { lower := 11670, upper := 11829, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good069_checked :
    goodSegmentCheck 173 57 123
      { lower := 11830, upper := 11999, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good070_checked :
    goodSegmentCheck 173 57 123
      { lower := 12000, upper := 12159, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good071_checked :
    goodSegmentCheck 173 57 123
      { lower := 12160, upper := 12329, witness := RowWitness.topPrime 12157 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good072_checked :
    goodSegmentCheck 173 57 123
      { lower := 12330, upper := 12501, witness := RowWitness.topPrime 12329 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good073_checked :
    goodSegmentCheck 173 57 123
      { lower := 12502, upper := 12669, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good074_checked :
    goodSegmentCheck 173 57 123
      { lower := 12670, upper := 12831, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good075_checked :
    goodSegmentCheck 173 57 123
      { lower := 12832, upper := 13001, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good076_checked :
    goodSegmentCheck 173 57 123
      { lower := 13002, upper := 13173, witness := RowWitness.topPrime 13001 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good077_checked :
    goodSegmentCheck 173 57 123
      { lower := 13174, upper := 13343, witness := RowWitness.topPrime 13171 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good078_checked :
    goodSegmentCheck 173 57 123
      { lower := 13344, upper := 13511, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good079_checked :
    goodSegmentCheck 173 57 123
      { lower := 13512, upper := 13671, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good080_checked :
    goodSegmentCheck 173 57 123
      { lower := 13672, upper := 13841, witness := RowWitness.topPrime 13669 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good081_checked :
    goodSegmentCheck 173 57 123
      { lower := 13842, upper := 14013, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good082_checked :
    goodSegmentCheck 173 57 123
      { lower := 14014, upper := 14183, witness := RowWitness.topPrime 14011 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good083_checked :
    goodSegmentCheck 173 57 123
      { lower := 14184, upper := 14349, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good084_checked :
    goodSegmentCheck 173 57 123
      { lower := 14350, upper := 14519, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good085_checked :
    goodSegmentCheck 173 57 123
      { lower := 14520, upper := 14691, witness := RowWitness.topPrime 14519 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good086_checked :
    goodSegmentCheck 173 57 123
      { lower := 14692, upper := 14855, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good087_checked :
    goodSegmentCheck 173 57 123
      { lower := 14856, upper := 15023, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good088_checked :
    goodSegmentCheck 173 57 123
      { lower := 15024, upper := 15189, witness := RowWitness.topPrime 15017 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good089_checked :
    goodSegmentCheck 173 57 123
      { lower := 15190, upper := 15359, witness := RowWitness.topPrime 15187 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good090_checked :
    goodSegmentCheck 173 57 123
      { lower := 15360, upper := 15531, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good091_checked :
    goodSegmentCheck 173 57 123
      { lower := 15532, upper := 15699, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good092_checked :
    goodSegmentCheck 173 57 123
      { lower := 15700, upper := 15855, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good093_checked :
    goodSegmentCheck 173 57 123
      { lower := 15856, upper := 15995, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good094_checked :
    goodSegmentCheck 173 57 123
      { lower := 15996, upper := 16163, witness := RowWitness.topPrime 15991 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good095_checked :
    goodSegmentCheck 173 57 123
      { lower := 16164, upper := 16313, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good096_checked :
    goodSegmentCheck 173 57 123
      { lower := 16314, upper := 16473, witness := RowWitness.topPrime 16301 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good097_checked :
    goodSegmentCheck 173 57 123
      { lower := 16474, upper := 16625, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good098_checked :
    goodSegmentCheck 173 57 123
      { lower := 16626, upper := 16791, witness := RowWitness.topPrime 16619 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good099_checked :
    goodSegmentCheck 173 57 123
      { lower := 16792, upper := 16959, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good100_checked :
    goodSegmentCheck 173 57 123
      { lower := 16960, upper := 17115, witness := RowWitness.topPrime 16943 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good101_checked :
    goodSegmentCheck 173 57 123
      { lower := 17116, upper := 17279, witness := RowWitness.topPrime 17107 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good102_checked :
    goodSegmentCheck 173 57 123
      { lower := 17280, upper := 17429, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good103_checked :
    goodSegmentCheck 173 57 123
      { lower := 17430, upper := 17591, witness := RowWitness.topPrime 17419 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good104_checked :
    goodSegmentCheck 173 57 123
      { lower := 17592, upper := 17753, witness := RowWitness.topPrime 17581 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good105_checked :
    goodSegmentCheck 173 57 123
      { lower := 17754, upper := 17921, witness := RowWitness.topPrime 17749 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good106_checked :
    goodSegmentCheck 173 57 123
      { lower := 17922, upper := 18093, witness := RowWitness.topPrime 17921 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good107_checked :
    goodSegmentCheck 173 57 123
      { lower := 18094, upper := 18261, witness := RowWitness.topPrime 18089 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good108_checked :
    goodSegmentCheck 173 57 123
      { lower := 18262, upper := 18429, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good109_checked :
    goodSegmentCheck 173 57 123
      { lower := 18430, upper := 18599, witness := RowWitness.topPrime 18427 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good110_checked :
    goodSegmentCheck 173 57 123
      { lower := 18600, upper := 18765, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good111_checked :
    goodSegmentCheck 173 57 123
      { lower := 18766, upper := 18929, witness := RowWitness.topPrime 18757 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good112_checked :
    goodSegmentCheck 173 57 123
      { lower := 18930, upper := 19091, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good113_checked :
    goodSegmentCheck 173 57 123
      { lower := 19092, upper := 19259, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good114_checked :
    goodSegmentCheck 173 57 123
      { lower := 19260, upper := 19431, witness := RowWitness.topPrime 19259 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good115_checked :
    goodSegmentCheck 173 57 123
      { lower := 19432, upper := 19601, witness := RowWitness.topPrime 19429 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good116_checked :
    goodSegmentCheck 173 57 123
      { lower := 19602, upper := 19769, witness := RowWitness.topPrime 19597 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good117_checked :
    goodSegmentCheck 173 57 123
      { lower := 19770, upper := 19935, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good118_checked :
    goodSegmentCheck 173 57 123
      { lower := 19936, upper := 20099, witness := RowWitness.topPrime 19927 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good119_checked :
    goodSegmentCheck 173 57 123
      { lower := 20100, upper := 20261, witness := RowWitness.topPrime 20089 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good120_checked :
    goodSegmentCheck 173 57 123
      { lower := 20262, upper := 20433, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good121_checked :
    goodSegmentCheck 173 57 123
      { lower := 20434, upper := 20603, witness := RowWitness.topPrime 20431 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good122_checked :
    goodSegmentCheck 173 57 123
      { lower := 20604, upper := 20771, witness := RowWitness.topPrime 20599 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good123_checked :
    goodSegmentCheck 173 57 123
      { lower := 20772, upper := 20943, witness := RowWitness.topPrime 20771 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good124_checked :
    goodSegmentCheck 173 57 123
      { lower := 20944, upper := 21111, witness := RowWitness.topPrime 20939 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good125_checked :
    goodSegmentCheck 173 57 123
      { lower := 21112, upper := 21279, witness := RowWitness.topPrime 21107 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good126_checked :
    goodSegmentCheck 173 57 123
      { lower := 21280, upper := 21449, witness := RowWitness.topPrime 21277 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good127_checked :
    goodSegmentCheck 173 57 123
      { lower := 21450, upper := 21605, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good128_checked :
    goodSegmentCheck 173 57 123
      { lower := 21606, upper := 21773, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good129_checked :
    goodSegmentCheck 173 57 123
      { lower := 21774, upper := 21945, witness := RowWitness.topPrime 21773 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good130_checked :
    goodSegmentCheck 173 57 123
      { lower := 21946, upper := 22115, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good131_checked :
    goodSegmentCheck 173 57 123
      { lower := 22116, upper := 22283, witness := RowWitness.topPrime 22111 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good132_checked :
    goodSegmentCheck 173 57 123
      { lower := 22284, upper := 22455, witness := RowWitness.topPrime 22283 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good133_checked :
    goodSegmentCheck 173 57 123
      { lower := 22456, upper := 22625, witness := RowWitness.topPrime 22453 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good134_checked :
    goodSegmentCheck 173 57 123
      { lower := 22626, upper := 22793, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good135_checked :
    goodSegmentCheck 173 57 123
      { lower := 22794, upper := 22959, witness := RowWitness.topPrime 22787 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good136_checked :
    goodSegmentCheck 173 57 123
      { lower := 22960, upper := 23115, witness := RowWitness.topPrime 22943 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good137_checked :
    goodSegmentCheck 173 57 123
      { lower := 23116, upper := 23271, witness := RowWitness.topPrime 23099 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good138_checked :
    goodSegmentCheck 173 57 123
      { lower := 23272, upper := 23441, witness := RowWitness.topPrime 23269 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good139_checked :
    goodSegmentCheck 173 57 123
      { lower := 23442, upper := 23603, witness := RowWitness.topPrime 23431 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good140_checked :
    goodSegmentCheck 173 57 123
      { lower := 23604, upper := 23775, witness := RowWitness.topPrime 23603 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good141_checked :
    goodSegmentCheck 173 57 123
      { lower := 23776, upper := 23945, witness := RowWitness.topPrime 23773 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good142_checked :
    goodSegmentCheck 173 57 123
      { lower := 23946, upper := 24101, witness := RowWitness.topPrime 23929 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good143_checked :
    goodSegmentCheck 173 57 123
      { lower := 24102, upper := 24269, witness := RowWitness.topPrime 24097 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good144_checked :
    goodSegmentCheck 173 57 123
      { lower := 24270, upper := 24423, witness := RowWitness.topPrime 24251 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good145_checked :
    goodSegmentCheck 173 57 123
      { lower := 24424, upper := 24593, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good146_checked :
    goodSegmentCheck 173 57 123
      { lower := 24594, upper := 24765, witness := RowWitness.topPrime 24593 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good147_checked :
    goodSegmentCheck 173 57 123
      { lower := 24766, upper := 24935, witness := RowWitness.topPrime 24763 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good148_checked :
    goodSegmentCheck 173 57 123
      { lower := 24936, upper := 25095, witness := RowWitness.topPrime 24923 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good149_checked :
    goodSegmentCheck 173 57 123
      { lower := 25096, upper := 25259, witness := RowWitness.topPrime 25087 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good150_checked :
    goodSegmentCheck 173 57 123
      { lower := 25260, upper := 25425, witness := RowWitness.topPrime 25253 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good151_checked :
    goodSegmentCheck 173 57 123
      { lower := 25426, upper := 25595, witness := RowWitness.topPrime 25423 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good152_checked :
    goodSegmentCheck 173 57 123
      { lower := 25596, upper := 25761, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good153_checked :
    goodSegmentCheck 173 57 123
      { lower := 25762, upper := 25931, witness := RowWitness.topPrime 25759 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good154_checked :
    goodSegmentCheck 173 57 123
      { lower := 25932, upper := 26103, witness := RowWitness.topPrime 25931 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good155_checked :
    goodSegmentCheck 173 57 123
      { lower := 26104, upper := 26271, witness := RowWitness.topPrime 26099 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good156_checked :
    goodSegmentCheck 173 57 123
      { lower := 26272, upper := 26439, witness := RowWitness.topPrime 26267 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good157_checked :
    goodSegmentCheck 173 57 123
      { lower := 26440, upper := 26609, witness := RowWitness.topPrime 26437 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good158_checked :
    goodSegmentCheck 173 57 123
      { lower := 26610, upper := 26769, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good159_checked :
    goodSegmentCheck 173 57 123
      { lower := 26770, upper := 26931, witness := RowWitness.topPrime 26759 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good160_checked :
    goodSegmentCheck 173 57 123
      { lower := 26932, upper := 27099, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good161_checked :
    goodSegmentCheck 173 57 123
      { lower := 27100, upper := 27263, witness := RowWitness.topPrime 27091 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good162_checked :
    goodSegmentCheck 173 57 123
      { lower := 27264, upper := 27431, witness := RowWitness.topPrime 27259 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good163_checked :
    goodSegmentCheck 173 57 123
      { lower := 27432, upper := 27603, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good164_checked :
    goodSegmentCheck 173 57 123
      { lower := 27604, upper := 27755, witness := RowWitness.topPrime 27583 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good165_checked :
    goodSegmentCheck 173 57 123
      { lower := 27756, upper := 27923, witness := RowWitness.topPrime 27751 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good166_checked :
    goodSegmentCheck 173 57 123
      { lower := 27924, upper := 28091, witness := RowWitness.topPrime 27919 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good167_checked :
    goodSegmentCheck 173 57 123
      { lower := 28092, upper := 28259, witness := RowWitness.topPrime 28087 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good168_checked :
    goodSegmentCheck 173 57 123
      { lower := 28260, upper := 28401, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good169_checked :
    goodSegmentCheck 173 57 123
      { lower := 28402, upper := 28565, witness := RowWitness.topPrime 28393 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good170_checked :
    goodSegmentCheck 173 57 123
      { lower := 28566, upper := 28731, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good171_checked :
    goodSegmentCheck 173 57 123
      { lower := 28732, upper := 28901, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good172_checked :
    goodSegmentCheck 173 57 123
      { lower := 28902, upper := 29073, witness := RowWitness.topPrime 28901 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good173_checked :
    goodSegmentCheck 173 57 123
      { lower := 29074, upper := 29235, witness := RowWitness.topPrime 29063 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good174_checked :
    goodSegmentCheck 173 57 123
      { lower := 29236, upper := 29403, witness := RowWitness.topPrime 29231 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good175_checked :
    goodSegmentCheck 173 57 123
      { lower := 29404, upper := 29573, witness := RowWitness.topPrime 29401 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good176_checked :
    goodSegmentCheck 173 57 123
      { lower := 29574, upper := 29745, witness := RowWitness.topPrime 29573 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good177_checked :
    goodSegmentCheck 173 57 123
      { lower := 29746, upper := 29755, witness := RowWitness.topPrime 29741 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good178_checked :
    goodSegmentCheck 173 57 123
      { lower := 29791, upper := 29940, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good179_checked :
    goodSegmentCheck 173 57 123
      { lower := 31250, upper := 31421, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good180_checked :
    goodSegmentCheck 173 57 123
      { lower := 31422, upper := 31501, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good181_checked :
    goodSegmentCheck 173 57 123
      { lower := 31827, upper := 31856, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good182_checked :
    goodSegmentCheck 173 57 123
      { lower := 31974, upper := 31999, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good183_checked :
    goodSegmentCheck 173 57 123
      { lower := 32805, upper := 32940, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good184_checked :
    goodSegmentCheck 173 57 123
      { lower := 33614, upper := 33661, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good185_checked :
    goodSegmentCheck 173 57 123
      { lower := 33708, upper := 33786, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good186_checked :
    goodSegmentCheck 173 57 123
      { lower := 34322, upper := 34491, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good187_checked :
    goodSegmentCheck 173 57 123
      { lower := 34492, upper := 34563, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good188_checked :
    goodSegmentCheck 173 57 123
      { lower := 37303, upper := 37382, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good189_checked :
    goodSegmentCheck 173 57 123
      { lower := 37446, upper := 37475, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good190_checked :
    goodSegmentCheck 173 57 123
      { lower := 37500, upper := 37665, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good191_checked :
    goodSegmentCheck 173 57 123
      { lower := 37666, upper := 37710, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good192_checked :
    goodSegmentCheck 173 57 123
      { lower := 38307, upper := 38463, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good193_checked :
    goodSegmentCheck 173 57 123
      { lower := 39366, upper := 39476, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good194_checked :
    goodSegmentCheck 173 57 123
      { lower := 40401, upper := 40500, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good195_checked :
    goodSegmentCheck 173 57 123
      { lower := 40931, upper := 41099, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good196_checked :
    goodSegmentCheck 173 57 123
      { lower := 41100, upper := 41103, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good197_checked :
    goodSegmentCheck 173 57 123
      { lower := 45056, upper := 45062, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good198_checked :
    goodSegmentCheck 173 57 123
      { lower := 45927, upper := 45968, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good199_checked :
    goodSegmentCheck 173 57 123
      { lower := 47045, upper := 47047, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good200_checked :
    goodSegmentCheck 173 57 123
      { lower := 47526, upper := 47693, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good201_checked :
    goodSegmentCheck 173 57 123
      { lower := 47694, upper := 47696, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good202_checked :
    goodSegmentCheck 173 57 123
      { lower := 48013, upper := 48133, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good203_checked :
    goodSegmentCheck 173 57 123
      { lower := 48387, upper := 48395, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good204_checked :
    goodSegmentCheck 173 57 123
      { lower := 48778, upper := 48840, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good205_checked :
    goodSegmentCheck 173 57 123
      { lower := 49152, upper := 49311, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good206_checked :
    goodSegmentCheck 173 57 123
      { lower := 49312, upper := 49324, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good207_checked :
    goodSegmentCheck 173 57 123
      { lower := 49379, upper := 49470, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good208_checked :
    goodSegmentCheck 173 57 123
      { lower := 50421, upper := 50582, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good209_checked :
    goodSegmentCheck 173 57 123
      { lower := 51076, upper := 51177, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good210_checked :
    goodSegmentCheck 173 57 123
      { lower := 53138, upper := 53217, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good211_checked :
    goodSegmentCheck 173 57 123
      { lower := 53290, upper := 53310, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good212_checked :
    goodSegmentCheck 173 57 123
      { lower := 55451, upper := 55613, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good213_checked :
    goodSegmentCheck 173 57 123
      { lower := 55614, upper := 55619, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good214_checked :
    goodSegmentCheck 173 57 123
      { lower := 56307, upper := 56341, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good215_checked :
    goodSegmentCheck 173 57 123
      { lower := 56454, upper := 56479, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good216_checked :
    goodSegmentCheck 173 57 123
      { lower := 57245, upper := 57294, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good217_checked :
    goodSegmentCheck 173 57 123
      { lower := 57344, upper := 57417, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good218_checked :
    goodSegmentCheck 173 57 123
      { lower := 58619, upper := 58736, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good219_checked :
    goodSegmentCheck 173 57 123
      { lower := 59049, upper := 59128, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good220_checked :
    goodSegmentCheck 173 57 123
      { lower := 68694, upper := 68816, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good221_checked :
    goodSegmentCheck 173 57 123
      { lower := 71289, upper := 71459, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good222_checked :
    goodSegmentCheck 173 57 123
      { lower := 71460, upper := 71461, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good223_checked :
    goodSegmentCheck 173 57 123
      { lower := 73167, upper := 73174, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_good224_checked :
    goodSegmentCheck 173 57 123
      { lower := 73205, upper := 73339, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good225_checked :
    goodSegmentCheck 173 57 123
      { lower := 83667, upper := 83693, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good226_checked :
    goodSegmentCheck 173 57 123
      { lower := 85805, upper := 85855, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good227_checked :
    goodSegmentCheck 173 57 123
      { lower := 89383, upper := 89545, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good228_checked :
    goodSegmentCheck 173 57 123
      { lower := 93845, upper := 93922, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good229_checked :
    goodSegmentCheck 173 57 123
      { lower := 96774, upper := 96777, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good230_checked :
    goodSegmentCheck 173 57 123
      { lower := 98415, upper := 98476, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good231_checked :
    goodSegmentCheck 173 57 123
      { lower := 103041, upper := 103138, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good232_checked :
    goodSegmentCheck 173 57 123
      { lower := 109503, upper := 109547, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good233_checked :
    goodSegmentCheck 173 57 123
      { lower := 137842, upper := 137953, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row173_good234_checked :
    goodSegmentCheck 173 57 123
      { lower := 148955, upper := 149049, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 173) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_good234_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_goods_checked :
    row173.goods.all (goodSegmentCheck row173.height.i row173.height.r row173.height.s) = true := by
  change row173_goods.all (goodSegmentCheck 173 57 123) = true
  simp only [row173_goods, List.all_cons, List.all_nil,
    row173_good000_checked,
    row173_good001_checked,
    row173_good002_checked,
    row173_good003_checked,
    row173_good004_checked,
    row173_good005_checked,
    row173_good006_checked,
    row173_good007_checked,
    row173_good008_checked,
    row173_good009_checked,
    row173_good010_checked,
    row173_good011_checked,
    row173_good012_checked,
    row173_good013_checked,
    row173_good014_checked,
    row173_good015_checked,
    row173_good016_checked,
    row173_good017_checked,
    row173_good018_checked,
    row173_good019_checked,
    row173_good020_checked,
    row173_good021_checked,
    row173_good022_checked,
    row173_good023_checked,
    row173_good024_checked,
    row173_good025_checked,
    row173_good026_checked,
    row173_good027_checked,
    row173_good028_checked,
    row173_good029_checked,
    row173_good030_checked,
    row173_good031_checked,
    row173_good032_checked,
    row173_good033_checked,
    row173_good034_checked,
    row173_good035_checked,
    row173_good036_checked,
    row173_good037_checked,
    row173_good038_checked,
    row173_good039_checked,
    row173_good040_checked,
    row173_good041_checked,
    row173_good042_checked,
    row173_good043_checked,
    row173_good044_checked,
    row173_good045_checked,
    row173_good046_checked,
    row173_good047_checked,
    row173_good048_checked,
    row173_good049_checked,
    row173_good050_checked,
    row173_good051_checked,
    row173_good052_checked,
    row173_good053_checked,
    row173_good054_checked,
    row173_good055_checked,
    row173_good056_checked,
    row173_good057_checked,
    row173_good058_checked,
    row173_good059_checked,
    row173_good060_checked,
    row173_good061_checked,
    row173_good062_checked,
    row173_good063_checked,
    row173_good064_checked,
    row173_good065_checked,
    row173_good066_checked,
    row173_good067_checked,
    row173_good068_checked,
    row173_good069_checked,
    row173_good070_checked,
    row173_good071_checked,
    row173_good072_checked,
    row173_good073_checked,
    row173_good074_checked,
    row173_good075_checked,
    row173_good076_checked,
    row173_good077_checked,
    row173_good078_checked,
    row173_good079_checked,
    row173_good080_checked,
    row173_good081_checked,
    row173_good082_checked,
    row173_good083_checked,
    row173_good084_checked,
    row173_good085_checked,
    row173_good086_checked,
    row173_good087_checked,
    row173_good088_checked,
    row173_good089_checked,
    row173_good090_checked,
    row173_good091_checked,
    row173_good092_checked,
    row173_good093_checked,
    row173_good094_checked,
    row173_good095_checked,
    row173_good096_checked,
    row173_good097_checked,
    row173_good098_checked,
    row173_good099_checked,
    row173_good100_checked,
    row173_good101_checked,
    row173_good102_checked,
    row173_good103_checked,
    row173_good104_checked,
    row173_good105_checked,
    row173_good106_checked,
    row173_good107_checked,
    row173_good108_checked,
    row173_good109_checked,
    row173_good110_checked,
    row173_good111_checked,
    row173_good112_checked,
    row173_good113_checked,
    row173_good114_checked,
    row173_good115_checked,
    row173_good116_checked,
    row173_good117_checked,
    row173_good118_checked,
    row173_good119_checked,
    row173_good120_checked,
    row173_good121_checked,
    row173_good122_checked,
    row173_good123_checked,
    row173_good124_checked,
    row173_good125_checked,
    row173_good126_checked,
    row173_good127_checked,
    row173_good128_checked,
    row173_good129_checked,
    row173_good130_checked,
    row173_good131_checked,
    row173_good132_checked,
    row173_good133_checked,
    row173_good134_checked,
    row173_good135_checked,
    row173_good136_checked,
    row173_good137_checked,
    row173_good138_checked,
    row173_good139_checked,
    row173_good140_checked,
    row173_good141_checked,
    row173_good142_checked,
    row173_good143_checked,
    row173_good144_checked,
    row173_good145_checked,
    row173_good146_checked,
    row173_good147_checked,
    row173_good148_checked,
    row173_good149_checked,
    row173_good150_checked,
    row173_good151_checked,
    row173_good152_checked,
    row173_good153_checked,
    row173_good154_checked,
    row173_good155_checked,
    row173_good156_checked,
    row173_good157_checked,
    row173_good158_checked,
    row173_good159_checked,
    row173_good160_checked,
    row173_good161_checked,
    row173_good162_checked,
    row173_good163_checked,
    row173_good164_checked,
    row173_good165_checked,
    row173_good166_checked,
    row173_good167_checked,
    row173_good168_checked,
    row173_good169_checked,
    row173_good170_checked,
    row173_good171_checked,
    row173_good172_checked,
    row173_good173_checked,
    row173_good174_checked,
    row173_good175_checked,
    row173_good176_checked,
    row173_good177_checked,
    row173_good178_checked,
    row173_good179_checked,
    row173_good180_checked,
    row173_good181_checked,
    row173_good182_checked,
    row173_good183_checked,
    row173_good184_checked,
    row173_good185_checked,
    row173_good186_checked,
    row173_good187_checked,
    row173_good188_checked,
    row173_good189_checked,
    row173_good190_checked,
    row173_good191_checked,
    row173_good192_checked,
    row173_good193_checked,
    row173_good194_checked,
    row173_good195_checked,
    row173_good196_checked,
    row173_good197_checked,
    row173_good198_checked,
    row173_good199_checked,
    row173_good200_checked,
    row173_good201_checked,
    row173_good202_checked,
    row173_good203_checked,
    row173_good204_checked,
    row173_good205_checked,
    row173_good206_checked,
    row173_good207_checked,
    row173_good208_checked,
    row173_good209_checked,
    row173_good210_checked,
    row173_good211_checked,
    row173_good212_checked,
    row173_good213_checked,
    row173_good214_checked,
    row173_good215_checked,
    row173_good216_checked,
    row173_good217_checked,
    row173_good218_checked,
    row173_good219_checked,
    row173_good220_checked,
    row173_good221_checked,
    row173_good222_checked,
    row173_good223_checked,
    row173_good224_checked,
    row173_good225_checked,
    row173_good226_checked,
    row173_good227_checked,
    row173_good228_checked,
    row173_good229_checked,
    row173_good230_checked,
    row173_good231_checked,
    row173_good232_checked,
    row173_good233_checked,
    row173_good234_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_registered :
    decide (row173.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row173_small_checked :
    coverCheck (2 * row173.height.i + 2) (row173.height.i * (row173.height.i - 1) - 1)
      (row173.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row173_layerCover_checked :
    coverCheck (row173.height.i * (row173.height.i - 1)) (row173.height.n0 - 1)
      (row173.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row173_bounds : List NatInterval :=
  [(348, 519), (520, 681), (682, 849), (850, 1011), (1012, 1181), (1182, 1353), (1354, 1499), (1500, 1671), (1672, 1841), (1842, 2003), (2004, 2175), (2176, 2333), (2334, 2505), (2506, 2675), (2676, 2843), (2844, 3015), (3016, 3183), (3184, 3353), (3354, 3519), (3520, 3689), (3690, 3849), (3850, 4019), (4020, 4191), (4192, 4349), (4350, 4521), (4522, 4691), (4692, 4863), (4864, 5033), (5034, 5195), (5196, 5361), (5362, 5523), (5524, 5693), (5694, 5865), (5866, 6033), (6034, 6201), (6202, 6371), (6372, 6539), (6540, 6701), (6702, 6873), (6874, 7043), (7044, 7215), (7216, 7385), (7386, 7541), (7542, 7713), (7714, 7875), (7876, 8045), (8046, 8211), (8212, 8381), (8382, 8549), (8550, 8715), (8716, 8885), (8886, 9039), (9040, 9201), (9202, 9371), (9372, 9543), (9544, 9711), (9712, 9869), (9870, 10031), (10032, 10181), (10182, 10353), (10354, 10515), (10516, 10685), (10686, 10839), (10840, 11009), (11010, 11175), (11176, 11345), (11346, 11501), (11502, 11669), (11670, 11829), (11830, 11999), (12000, 12159), (12160, 12329), (12330, 12501), (12502, 12669), (12670, 12831), (12832, 13001), (13002, 13173), (13174, 13343), (13344, 13511), (13512, 13671), (13672, 13841), (13842, 14013), (14014, 14183), (14184, 14349), (14350, 14519), (14520, 14691), (14692, 14855), (14856, 15023), (15024, 15189), (15190, 15359), (15360, 15531), (15532, 15699), (15700, 15855), (15856, 15995), (15996, 16163), (16164, 16313), (16314, 16473), (16474, 16625), (16626, 16791), (16792, 16959), (16960, 17115), (17116, 17279), (17280, 17429), (17430, 17591), (17592, 17753), (17754, 17921), (17922, 18093), (18094, 18261), (18262, 18429), (18430, 18599), (18600, 18765), (18766, 18929), (18930, 19091), (19092, 19259), (19260, 19431), (19432, 19601), (19602, 19769), (19770, 19935), (19936, 20099), (20100, 20261), (20262, 20433), (20434, 20603), (20604, 20771), (20772, 20943), (20944, 21111), (21112, 21279), (21280, 21449), (21450, 21605), (21606, 21773), (21774, 21945), (21946, 22115), (22116, 22283), (22284, 22455), (22456, 22625), (22626, 22793), (22794, 22959), (22960, 23115), (23116, 23271), (23272, 23441), (23442, 23603), (23604, 23775), (23776, 23945), (23946, 24101), (24102, 24269), (24270, 24423), (24424, 24593), (24594, 24765), (24766, 24935), (24936, 25095), (25096, 25259), (25260, 25425), (25426, 25595), (25596, 25761), (25762, 25931), (25932, 26103), (26104, 26271), (26272, 26439), (26440, 26609), (26610, 26769), (26770, 26931), (26932, 27099), (27100, 27263), (27264, 27431), (27432, 27603), (27604, 27755), (27756, 27923), (27924, 28091), (28092, 28259), (28260, 28401), (28402, 28565), (28566, 28731), (28732, 28901), (28902, 29073), (29074, 29235), (29236, 29403), (29404, 29573), (29574, 29745), (29746, 29755), (29791, 29940), (31250, 31421), (31422, 31501), (31827, 31856), (31974, 31999), (32805, 32940), (33614, 33661), (33708, 33786), (34322, 34491), (34492, 34563), (37303, 37382), (37446, 37475), (37500, 37665), (37666, 37710), (38307, 38463), (39366, 39476), (40401, 40500), (40931, 41099), (41100, 41103), (45056, 45062), (45927, 45968), (47045, 47047), (47526, 47693), (47694, 47696), (48013, 48133), (48387, 48395), (48778, 48840), (49152, 49311), (49312, 49324), (49379, 49470), (50421, 50582), (51076, 51177), (53138, 53217), (53290, 53310), (55451, 55613), (55614, 55619), (56307, 56341), (56454, 56479), (57245, 57294), (57344, 57417), (58619, 58736), (59049, 59128), (68694, 68816), (71289, 71459), (71460, 71461), (73167, 73174), (73205, 73339), (83667, 83693), (85805, 85855), (89383, 89545), (93845, 93922), (96774, 96777), (98415, 98476), (103041, 103138), (109503, 109547), (137842, 137953), (148955, 149049)]

theorem row173_bounds_eq : row173.goods.map goodSegmentBounds = row173_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row173_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32940), (2, 36864, 37036), (2, 40960, 41132), (2, 45056, 45228), (2, 49152, 49324), (2, 32768, 32940), (2, 40960, 41132), (2, 49152, 49324), (2, 57344, 57516), (2, 32768, 32940), (2, 49152, 49324), (2, 32768, 32940), (3, 32805, 32977), (3, 39366, 39538), (3, 45927, 46099), (3, 52488, 52660), (3, 59049, 59221), (3, 39366, 39538), (3, 59049, 59221), (3, 59049, 59221), (5, 31250, 31422), (5, 34375, 34547), (5, 37500, 37672), (5, 31250, 31422), (5, 46875, 47047), (7, 33614, 33786), (7, 50421, 50593), (11, 43923, 44095), (11, 58564, 58736), (13, 57122, 57294), (17, 34391, 34563), (17, 39304, 39476), (17, 44217, 44389), (17, 49130, 49302), (17, 54043, 54215), (17, 58956, 59128), (19, 34295, 34467), (19, 41154, 41326), (19, 48013, 48185), (19, 54872, 55044), (23, 36501, 36673), (23, 48668, 48840), (29, 48778, 48950), (31, 29791, 29963), (37, 50653, 50825), (53, 30899, 31071), (53, 33708, 33880), (59, 31329, 31501), (59, 34810, 34982), (59, 38291, 38463), (59, 41772, 41944), (61, 29768, 29940), (61, 33489, 33661), (61, 37210, 37382), (61, 40931, 41103), (61, 44652, 44824), (67, 31423, 31595), (67, 35912, 36084), (67, 40401, 40573), (67, 44890, 45062), (67, 49379, 49551), (67, 53868, 54040), (71, 30246, 30418), (71, 35287, 35459), (71, 40328, 40500), (71, 45369, 45541), (71, 50410, 50582), (71, 55451, 55623), (73, 31974, 32146), (73, 37303, 37475), (73, 42632, 42804), (73, 47961, 48133), (73, 53290, 53462), (73, 58619, 58791), (79, 31205, 31377), (79, 37446, 37618), (79, 43687, 43859), (79, 49928, 50100), (79, 56169, 56341), (83, 34445, 34617), (83, 41334, 41506), (83, 48223, 48395), (83, 55112, 55284), (89, 31684, 31856), (89, 39605, 39777), (89, 47526, 47698), (89, 55447, 55619), (97, 37636, 37808), (97, 47045, 47217), (97, 56454, 56626), (101, 30603, 30775), (101, 40804, 40976), (101, 51005, 51177), (103, 31827, 31999), (103, 42436, 42608), (103, 53045, 53217), (107, 34347, 34519), (107, 45796, 45968), (107, 57245, 57417), (109, 35643, 35815), (109, 47524, 47696), (109, 59405, 59511), (113, 38307, 38479), (113, 51076, 51248), (127, 32258, 32430), (127, 48387, 48559), (131, 34322, 34494), (131, 51483, 51655), (137, 37538, 37710), (137, 56307, 56479), (139, 38642, 38814), (139, 57963, 58135), (149, 44402, 44574), (151, 45602, 45774), (157, 49298, 49470), (163, 53138, 53310), (167, 55778, 55950)]

def row173_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32940), (2, 36864, 37036), (2, 40960, 41132), (2, 45056, 45228), (2, 49152, 49324), (2, 32768, 32940), (2, 40960, 41132), (2, 49152, 49324), (2, 57344, 57516), (2, 32768, 32940), (2, 49152, 49324), (2, 32768, 32940), (3, 32805, 32977), (3, 39366, 39538), (3, 45927, 46099), (3, 52488, 52660)]

def row173_layer000_block001 : List ColouredInterval :=
  [(3, 59049, 59221), (3, 39366, 39538), (3, 59049, 59221), (3, 59049, 59221), (5, 31250, 31422), (5, 34375, 34547), (5, 37500, 37672), (5, 31250, 31422), (5, 46875, 47047), (7, 33614, 33786), (7, 50421, 50593), (11, 43923, 44095), (11, 58564, 58736), (13, 57122, 57294), (17, 34391, 34563), (17, 39304, 39476)]

def row173_layer000_block002 : List ColouredInterval :=
  [(17, 44217, 44389), (17, 49130, 49302), (17, 54043, 54215), (17, 58956, 59128), (19, 34295, 34467), (19, 41154, 41326), (19, 48013, 48185), (19, 54872, 55044), (23, 36501, 36673), (23, 48668, 48840), (29, 48778, 48950), (31, 29791, 29963), (37, 50653, 50825), (53, 30899, 31071), (53, 33708, 33880), (59, 31329, 31501)]

def row173_layer000_block003 : List ColouredInterval :=
  [(59, 34810, 34982), (59, 38291, 38463), (59, 41772, 41944), (61, 29768, 29940), (61, 33489, 33661), (61, 37210, 37382), (61, 40931, 41103), (61, 44652, 44824), (67, 31423, 31595), (67, 35912, 36084), (67, 40401, 40573), (67, 44890, 45062), (67, 49379, 49551), (67, 53868, 54040), (71, 30246, 30418), (71, 35287, 35459)]

def row173_layer000_block004 : List ColouredInterval :=
  [(71, 40328, 40500), (71, 45369, 45541), (71, 50410, 50582), (71, 55451, 55623), (73, 31974, 32146), (73, 37303, 37475), (73, 42632, 42804), (73, 47961, 48133), (73, 53290, 53462), (73, 58619, 58791), (79, 31205, 31377), (79, 37446, 37618), (79, 43687, 43859), (79, 49928, 50100), (79, 56169, 56341), (83, 34445, 34617)]

def row173_layer000_block005 : List ColouredInterval :=
  [(83, 41334, 41506), (83, 48223, 48395), (83, 55112, 55284), (89, 31684, 31856), (89, 39605, 39777), (89, 47526, 47698), (89, 55447, 55619), (97, 37636, 37808), (97, 47045, 47217), (97, 56454, 56626), (101, 30603, 30775), (101, 40804, 40976), (101, 51005, 51177), (103, 31827, 31999), (103, 42436, 42608), (103, 53045, 53217)]

def row173_layer000_block006 : List ColouredInterval :=
  [(107, 34347, 34519), (107, 45796, 45968), (107, 57245, 57417), (109, 35643, 35815), (109, 47524, 47696), (109, 59405, 59511), (113, 38307, 38479), (113, 51076, 51248), (127, 32258, 32430), (127, 48387, 48559), (131, 34322, 34494), (131, 51483, 51655), (137, 37538, 37710), (137, 56307, 56479), (139, 38642, 38814), (139, 57963, 58135)]

def row173_layer000_block007 : List ColouredInterval :=
  [(149, 44402, 44574), (151, 45602, 45774), (157, 49298, 49470), (163, 53138, 53310), (167, 55778, 55950)]

def row173_layer000_chunks : List (List ColouredInterval) :=
  [row173_layer000_block000, row173_layer000_block001, row173_layer000_block002, row173_layer000_block003, row173_layer000_block004, row173_layer000_block005, row173_layer000_block006, row173_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_arithmetic : LayerArithmeticValid row173.height { lower := 29756, upper := 59512, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_enumeration :
    activePowerIntervalList 173 12 29756 59512 = row173_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_pairs000 :
    row173_layer000_block000.all (fun I => row173_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row173_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_pairs001 :
    row173_layer000_block001.all (fun I => row173_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row173_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_pairs002 :
    row173_layer000_block002.all (fun I => row173_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row173_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_pairs003 :
    row173_layer000_block003.all (fun I => row173_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row173_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_pairs004 :
    row173_layer000_block004.all (fun I => row173_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row173_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_pairs005 :
    row173_layer000_block005.all (fun I => row173_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row173_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_pairs006 :
    row173_layer000_block006.all (fun I => row173_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row173_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_pairs007 :
    row173_layer000_block007.all (fun I => row173_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row173_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_chunks_eq : row173_layer000_chunks.flatten = row173_layer000_intervals := by
  rfl

theorem row173_layer000_pairs : pairCoverCheck row173_layer000_intervals row173_bounds = true := by
  apply pairCoverCheck_of_chunks row173_layer000_chunks_eq
  intro block hblock
  simp only [row173_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row173_layer000_pairs000
  · exact row173_layer000_pairs001
  · exact row173_layer000_pairs002
  · exact row173_layer000_pairs003
  · exact row173_layer000_pairs004
  · exact row173_layer000_pairs005
  · exact row173_layer000_pairs006
  · exact row173_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer000_checked :
    coverLayerCheck row173.height row173.goods { lower := 29756, upper := 59512, M := 12 } = true := by
  exact coverLayerCheck_of_parts row173_layer000_arithmetic row173_layer000_enumeration row173_bounds_eq row173_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer000_checked
