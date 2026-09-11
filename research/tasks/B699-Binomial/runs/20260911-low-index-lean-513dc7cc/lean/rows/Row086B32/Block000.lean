import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row086_height : HeightCertificateDatum := { i := 86, r := 28, s := 59, n0Power10 := 10 }

def row086_goods : List GoodSegment := [
  { lower := 174, upper := 258, witness := RowWitness.topPrime 173 },
  { lower := 259, upper := 342, witness := RowWitness.topPrime 257 },
  { lower := 343, upper := 422, witness := RowWitness.topPrime 337 },
  { lower := 423, upper := 506, witness := RowWitness.topPrime 421 },
  { lower := 507, upper := 588, witness := RowWitness.topPrime 503 },
  { lower := 589, upper := 672, witness := RowWitness.topPrime 587 },
  { lower := 673, upper := 758, witness := RowWitness.topPrime 673 },
  { lower := 759, upper := 842, witness := RowWitness.topPrime 757 },
  { lower := 843, upper := 924, witness := RowWitness.topPrime 839 },
  { lower := 925, upper := 1004, witness := RowWitness.topPrime 919 },
  { lower := 1005, upper := 1082, witness := RowWitness.topPrime 997 },
  { lower := 1083, upper := 1154, witness := RowWitness.topPrime 1069 },
  { lower := 1155, upper := 1238, witness := RowWitness.topPrime 1153 },
  { lower := 1239, upper := 1322, witness := RowWitness.topPrime 1237 },
  { lower := 1323, upper := 1406, witness := RowWitness.topPrime 1321 },
  { lower := 1407, upper := 1484, witness := RowWitness.topPrime 1399 },
  { lower := 1485, upper := 1568, witness := RowWitness.topPrime 1483 },
  { lower := 1569, upper := 1652, witness := RowWitness.topPrime 1567 },
  { lower := 1653, upper := 1722, witness := RowWitness.topPrime 1637 },
  { lower := 1723, upper := 1808, witness := RowWitness.topPrime 1723 },
  { lower := 1809, upper := 1886, witness := RowWitness.topPrime 1801 },
  { lower := 1887, upper := 1964, witness := RowWitness.topPrime 1879 },
  { lower := 1965, upper := 2036, witness := RowWitness.topPrime 1951 },
  { lower := 2037, upper := 2114, witness := RowWitness.topPrime 2029 },
  { lower := 2115, upper := 2198, witness := RowWitness.topPrime 2113 },
  { lower := 2199, upper := 2264, witness := RowWitness.topPrime 2179 },
  { lower := 2265, upper := 2336, witness := RowWitness.topPrime 2251 },
  { lower := 2337, upper := 2418, witness := RowWitness.topPrime 2333 },
  { lower := 2419, upper := 2502, witness := RowWitness.topPrime 2417 },
  { lower := 2503, upper := 2588, witness := RowWitness.topPrime 2503 },
  { lower := 2589, upper := 2664, witness := RowWitness.topPrime 2579 },
  { lower := 2665, upper := 2748, witness := RowWitness.topPrime 2663 },
  { lower := 2749, upper := 2834, witness := RowWitness.topPrime 2749 },
  { lower := 2835, upper := 2918, witness := RowWitness.topPrime 2833 },
  { lower := 2919, upper := 3002, witness := RowWitness.topPrime 2917 },
  { lower := 3003, upper := 3086, witness := RowWitness.topPrime 3001 },
  { lower := 3087, upper := 3168, witness := RowWitness.topPrime 3083 },
  { lower := 3169, upper := 3254, witness := RowWitness.topPrime 3169 },
  { lower := 3255, upper := 3338, witness := RowWitness.topPrime 3253 },
  { lower := 3339, upper := 3416, witness := RowWitness.topPrime 3331 },
  { lower := 3417, upper := 3498, witness := RowWitness.topPrime 3413 },
  { lower := 3499, upper := 3584, witness := RowWitness.topPrime 3499 },
  { lower := 3585, upper := 3668, witness := RowWitness.topPrime 3583 },
  { lower := 3669, upper := 3744, witness := RowWitness.topPrime 3659 },
  { lower := 3745, upper := 3824, witness := RowWitness.topPrime 3739 },
  { lower := 3825, upper := 3908, witness := RowWitness.topPrime 3823 },
  { lower := 3909, upper := 3992, witness := RowWitness.topPrime 3907 },
  { lower := 3993, upper := 4074, witness := RowWitness.topPrime 3989 },
  { lower := 4075, upper := 4158, witness := RowWitness.topPrime 4073 },
  { lower := 4159, upper := 4244, witness := RowWitness.topPrime 4159 },
  { lower := 4245, upper := 4328, witness := RowWitness.topPrime 4243 },
  { lower := 4329, upper := 4412, witness := RowWitness.topPrime 4327 },
  { lower := 4413, upper := 4494, witness := RowWitness.topPrime 4409 },
  { lower := 4495, upper := 4578, witness := RowWitness.topPrime 4493 },
  { lower := 4579, upper := 4652, witness := RowWitness.topPrime 4567 },
  { lower := 4653, upper := 4736, witness := RowWitness.topPrime 4651 },
  { lower := 4737, upper := 4818, witness := RowWitness.topPrime 4733 },
  { lower := 4819, upper := 4902, witness := RowWitness.topPrime 4817 },
  { lower := 4903, upper := 4988, witness := RowWitness.topPrime 4903 },
  { lower := 4989, upper := 5072, witness := RowWitness.topPrime 4987 },
  { lower := 5073, upper := 5144, witness := RowWitness.topPrime 5059 },
  { lower := 5145, upper := 5204, witness := RowWitness.topPrime 5119 },
  { lower := 5205, upper := 5282, witness := RowWitness.topPrime 5197 },
  { lower := 5283, upper := 5366, witness := RowWitness.topPrime 5281 },
  { lower := 5367, upper := 5436, witness := RowWitness.topPrime 5351 },
  { lower := 5437, upper := 5522, witness := RowWitness.topPrime 5437 },
  { lower := 5523, upper := 5606, witness := RowWitness.topPrime 5521 },
  { lower := 5607, upper := 5676, witness := RowWitness.topPrime 5591 },
  { lower := 5677, upper := 5754, witness := RowWitness.topPrime 5669 },
  { lower := 5755, upper := 5834, witness := RowWitness.topPrime 5749 },
  { lower := 5835, upper := 5912, witness := RowWitness.topPrime 5827 },
  { lower := 5913, upper := 5988, witness := RowWitness.topPrime 5903 },
  { lower := 5989, upper := 6072, witness := RowWitness.topPrime 5987 },
  { lower := 6073, upper := 6158, witness := RowWitness.topPrime 6073 },
  { lower := 6159, upper := 6236, witness := RowWitness.topPrime 6151 },
  { lower := 6237, upper := 6314, witness := RowWitness.topPrime 6229 },
  { lower := 6315, upper := 6396, witness := RowWitness.topPrime 6311 },
  { lower := 6397, upper := 6482, witness := RowWitness.topPrime 6397 },
  { lower := 6483, upper := 6566, witness := RowWitness.topPrime 6481 },
  { lower := 6567, upper := 6648, witness := RowWitness.topPrime 6563 },
  { lower := 6649, upper := 6722, witness := RowWitness.topPrime 6637 },
  { lower := 6723, upper := 6804, witness := RowWitness.topPrime 6719 },
  { lower := 6805, upper := 6888, witness := RowWitness.topPrime 6803 },
  { lower := 6889, upper := 6968, witness := RowWitness.topPrime 6883 },
  { lower := 6969, upper := 7052, witness := RowWitness.topPrime 6967 },
  { lower := 7053, upper := 7128, witness := RowWitness.topPrime 7043 },
  { lower := 7129, upper := 7214, witness := RowWitness.topPrime 7129 },
  { lower := 7215, upper := 7298, witness := RowWitness.topPrime 7213 },
  { lower := 7299, upper := 7310, witness := RowWitness.topPrime 7297 },
  { lower := 7442, upper := 7491, witness := RowWitness.topPrime 7433 },
  { lower := 7500, upper := 7584, witness := RowWitness.topPrime 7499 },
  { lower := 7585, upper := 7654, witness := RowWitness.topPrime 7583 },
  { lower := 7935, upper := 8018, witness := RowWitness.topPrime 7933 },
  { lower := 8019, upper := 8071, witness := RowWitness.topPrime 8017 },
  { lower := 8092, upper := 8104, witness := RowWitness.topPrime 8089 },
  { lower := 8125, upper := 8177, witness := RowWitness.topPrime 8123 },
  { lower := 8192, upper := 8210, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8294, witness := RowWitness.topPrime 8209 },
  { lower := 8295, upper := 8299, witness := RowWitness.topPrime 8293 },
  { lower := 8303, upper := 8317, witness := RowWitness.topPrime 8297 },
  { lower := 8410, upper := 8474, witness := RowWitness.topPrime 8389 },
  { lower := 8475, upper := 8512, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8660, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8734, witness := RowWitness.topPrime 8663 },
  { lower := 8748, upper := 8832, witness := RowWitness.topPrime 8747 },
  { lower := 8833, upper := 8873, witness := RowWitness.topPrime 8831 },
  { lower := 8918, upper := 8921, witness := RowWitness.topPrime 8893 },
  { lower := 8978, upper := 9056, witness := RowWitness.topPrime 8971 },
  { lower := 9057, upper := 9078, witness := RowWitness.topPrime 9049 },
  { lower := 9251, upper := 9326, witness := RowWitness.topPrime 9241 },
  { lower := 9327, upper := 9346, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9456, witness := RowWitness.topPrime 9371 },
  { lower := 9457, upper := 9460, witness := RowWitness.topPrime 9439 },
  { lower := 9522, upper := 9562, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9636, witness := RowWitness.topPrime 9551 },
  { lower := 9637, upper := 9689, witness := RowWitness.topPrime 9631 },
  { lower := 9826, upper := 9832, witness := RowWitness.topPrime 9817 },
  { lower := 10051, upper := 10124, witness := RowWitness.topPrime 10039 },
  { lower := 10125, upper := 10177, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10291, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10652, witness := RowWitness.topPrime 10567 },
  { lower := 10653, upper := 10733, witness := RowWitness.topPrime 10651 },
  { lower := 10935, upper := 10994, witness := RowWitness.topPrime 10909 },
  { lower := 10995, upper := 11037, witness := RowWitness.topPrime 10993 },
  { lower := 11045, upper := 11070, witness := RowWitness.topPrime 11027 },
  { lower := 11109, upper := 11130, witness := RowWitness.topPrime 11093 },
  { lower := 11163, upper := 11194, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11248, witness := RowWitness.topPrime 11213 },
  { lower := 11250, upper := 11328, witness := RowWitness.topPrime 11243 },
  { lower := 11329, upper := 11335, witness := RowWitness.topPrime 11329 },
  { lower := 11664, upper := 11723, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11828, witness := RowWitness.topPrime 11743 },
  { lower := 11829, upper := 11852, witness := RowWitness.topPrime 11827 },
  { lower := 12005, upper := 12064, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12373, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12406, witness := RowWitness.topPrime 12391 },
  { lower := 12493, upper := 12576, witness := RowWitness.topPrime 12491 },
  { lower := 12577, upper := 12578, witness := RowWitness.topPrime 12577 },
  { lower := 12696, upper := 12700, witness := RowWitness.topPrime 12689 },
  { lower := 13125, upper := 13206, witness := RowWitness.topPrime 13121 },
  { lower := 13207, upper := 13210, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13304, witness := RowWitness.topPrime 13219 },
  { lower := 13305, upper := 13382, witness := RowWitness.topPrime 13297 },
  { lower := 13383, upper := 13395, witness := RowWitness.topPrime 13381 },
  { lower := 13454, upper := 13536, witness := RowWitness.topPrime 13451 },
  { lower := 13537, upper := 13541, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13796, witness := RowWitness.topPrime 13711 },
  { lower := 13797, upper := 13839, witness := RowWitness.topPrime 13789 },
  { lower := 13851, upper := 13863, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13936, witness := RowWitness.topPrime 13921 },
  { lower := 14297, upper := 14378, witness := RowWitness.topPrime 14293 },
  { lower := 14379, upper := 14454, witness := RowWitness.topPrime 14369 },
  { lower := 14455, upper := 14491, witness := RowWitness.topPrime 14449 },
  { lower := 14641, upper := 14665, witness := RowWitness.topPrime 14639 },
  { lower := 15059, upper := 15085, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15206, witness := RowWitness.topPrime 15121 },
  { lower := 15207, upper := 15214, witness := RowWitness.topPrime 15199 },
  { lower := 15376, upper := 15458, witness := RowWitness.topPrime 15373 },
  { lower := 15459, upper := 15461, witness := RowWitness.topPrime 15451 },
  { lower := 15463, upper := 15464, witness := RowWitness.topPrime 15461 },
  { lower := 15979, upper := 16058, witness := RowWitness.topPrime 15973 },
  { lower := 16059, upper := 16072, witness := RowWitness.topPrime 16057 },
  { lower := 16384, upper := 16422, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16469, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16872, witness := RowWitness.topPrime 16787 },
  { lower := 16873, upper := 16905, witness := RowWitness.topPrime 16871 },
  { lower := 17303, upper := 17383, witness := RowWitness.topPrime 17299 },
  { lower := 17576, upper := 17581, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17661, witness := RowWitness.topPrime 17659 },
  { lower := 17672, upper := 17746, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18566, witness := RowWitness.topPrime 18481 },
  { lower := 18567, upper := 18576, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18690, witness := RowWitness.topPrime 18617 },
  { lower := 18750, upper := 18808, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19292, witness := RowWitness.topPrime 19207 },
  { lower := 19293, upper := 19293, witness := RowWitness.topPrime 19289 },
  { lower := 19663, upper := 19746, witness := RowWitness.topPrime 19661 },
  { lower := 19747, upper := 19748, witness := RowWitness.topPrime 19739 },
  { lower := 19965, upper := 19966, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20246, witness := RowWitness.topPrime 20161 },
  { lower := 20247, upper := 20266, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20565, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20620, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21381, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21948, witness := RowWitness.topPrime 21863 },
  { lower := 21949, upper := 21960, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21989, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22175, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22554, witness := RowWitness.topPrime 22469 },
  { lower := 22555, upper := 22557, witness := RowWitness.topPrime 22549 },
  { lower := 24010, upper := 24043, witness := RowWitness.topPrime 24007 },
  { lower := 24057, upper := 24095, witness := RowWitness.topPrime 24049 },
  { lower := 24334, upper := 24414, witness := RowWitness.topPrime 24329 },
  { lower := 24415, upper := 24452, witness := RowWitness.topPrime 24413 },
  { lower := 24576, upper := 24656, witness := RowWitness.topPrime 24571 },
  { lower := 24657, upper := 24661, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25049, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25274, witness := RowWitness.topPrime 25189 },
  { lower := 25275, upper := 25346, witness := RowWitness.topPrime 25261 },
  { lower := 25347, upper := 25366, witness := RowWitness.topPrime 25343 },
  { lower := 26047, upper := 26096, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26449, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26705, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26981, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27465, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28175, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28646, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28796, witness := RowWitness.topPrime 28711 },
  { lower := 28797, upper := 28802, witness := RowWitness.topPrime 28793 },
  { lower := 28812, upper := 28834, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29853, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30331, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 30984, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31278, witness := RowWitness.topPrime 31193 },
  { lower := 31279, upper := 31298, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31335, witness := RowWitness.topPrime 31327 },
  { lower := 31974, upper := 32024, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32853, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33699, witness := RowWitness.topPrime 33619 },
  { lower := 34375, upper := 34380, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34466, witness := RowWitness.topPrime 34381 },
  { lower := 34467, upper := 34476, witness := RowWitness.topPrime 34457 },
  { lower := 35344, upper := 35372, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36582, witness := RowWitness.topPrime 36497 },
  { lower := 36583, upper := 36586, witness := RowWitness.topPrime 36583 },
  { lower := 37210, upper := 37264, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37388, witness := RowWitness.topPrime 37339 },
  { lower := 37500, upper := 37531, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37585, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39408, witness := RowWitness.topPrime 39323 },
  { lower := 39409, upper := 39411, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40413, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41016, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41828, witness := RowWitness.topPrime 41771 },
  { lower := 43740, upper := 43806, witness := RowWitness.topPrime 43721 },
  { lower := 43807, upper := 43825, witness := RowWitness.topPrime 43801 },
  { lower := 43940, upper := 44008, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44265, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44975, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48066, witness := RowWitness.topPrime 47981 },
  { lower := 48067, upper := 48098, witness := RowWitness.topPrime 48049 },
  { lower := 48734, upper := 48753, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48819, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49215, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50013, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50495, witness := RowWitness.topPrime 50417 },
  { lower := 53371, upper := 53375, witness := RowWitness.topPrime 53359 },
  { lower := 56180, upper := 56264, witness := RowWitness.topPrime 56179 },
  { lower := 56265, upper := 56265, witness := RowWitness.topPrime 56263 },
  { lower := 58619, upper := 58649, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59621, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63954, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65606, witness := RowWitness.topPrime 65521 },
  { lower := 65607, upper := 65621, witness := RowWitness.topPrime 65599 },
  { lower := 68651, upper := 68675, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68975, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73252, witness := RowWitness.topPrime 73189 },
  { lower := 85293, upper := 85344, witness := RowWitness.topPrime 85259 },
  { lower := 85345, upper := 85349, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85768, witness := RowWitness.topPrime 85691 },
  { lower := 137842, upper := 137866, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146419, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148962, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327765, witness := RowWitness.topPrime 327689 }
]

def row086_layers : List CoverLayer := [
  { lower := 7310, upper := 14620, M := 28 },
  { lower := 14620, upper := 29240, M := 24 },
  { lower := 29240, upper := 58480, M := 20 },
  { lower := 58480, upper := 116960, M := 17 },
  { lower := 116960, upper := 233920, M := 15 },
  { lower := 233920, upper := 467840, M := 13 },
  { lower := 467840, upper := 935680, M := 11 },
  { lower := 935680, upper := 1871360, M := 9 },
  { lower := 1871360, upper := 3742720, M := 8 },
  { lower := 3742720, upper := 7485440, M := 7 },
  { lower := 7485440, upper := 14970880, M := 6 },
  { lower := 14970880, upper := 29941760, M := 5 },
  { lower := 29941760, upper := 59883520, M := 4 },
  { lower := 59883520, upper := 119767040, M := 4 },
  { lower := 119767040, upper := 239534080, M := 3 },
  { lower := 239534080, upper := 479068160, M := 3 },
  { lower := 479068160, upper := 958136320, M := 2 },
  { lower := 958136320, upper := 1916272640, M := 2 },
  { lower := 1916272640, upper := 3832545280, M := 2 },
  { lower := 3832545280, upper := 7665090560, M := 2 },
  { lower := 7665090560, upper := 10000000000, M := 1 }
]

def row086 : FiniteCoverRow := {
  height := row086_height,
  goods := row086_goods,
  layers := row086_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good000_checked :
    goodSegmentCheck 86 28 59
      { lower := 174, upper := 258, witness := RowWitness.topPrime 173 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good001_checked :
    goodSegmentCheck 86 28 59
      { lower := 259, upper := 342, witness := RowWitness.topPrime 257 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good002_checked :
    goodSegmentCheck 86 28 59
      { lower := 343, upper := 422, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good003_checked :
    goodSegmentCheck 86 28 59
      { lower := 423, upper := 506, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good004_checked :
    goodSegmentCheck 86 28 59
      { lower := 507, upper := 588, witness := RowWitness.topPrime 503 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good005_checked :
    goodSegmentCheck 86 28 59
      { lower := 589, upper := 672, witness := RowWitness.topPrime 587 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good006_checked :
    goodSegmentCheck 86 28 59
      { lower := 673, upper := 758, witness := RowWitness.topPrime 673 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good007_checked :
    goodSegmentCheck 86 28 59
      { lower := 759, upper := 842, witness := RowWitness.topPrime 757 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good008_checked :
    goodSegmentCheck 86 28 59
      { lower := 843, upper := 924, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good009_checked :
    goodSegmentCheck 86 28 59
      { lower := 925, upper := 1004, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good010_checked :
    goodSegmentCheck 86 28 59
      { lower := 1005, upper := 1082, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good011_checked :
    goodSegmentCheck 86 28 59
      { lower := 1083, upper := 1154, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good012_checked :
    goodSegmentCheck 86 28 59
      { lower := 1155, upper := 1238, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good013_checked :
    goodSegmentCheck 86 28 59
      { lower := 1239, upper := 1322, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good014_checked :
    goodSegmentCheck 86 28 59
      { lower := 1323, upper := 1406, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good015_checked :
    goodSegmentCheck 86 28 59
      { lower := 1407, upper := 1484, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good016_checked :
    goodSegmentCheck 86 28 59
      { lower := 1485, upper := 1568, witness := RowWitness.topPrime 1483 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good017_checked :
    goodSegmentCheck 86 28 59
      { lower := 1569, upper := 1652, witness := RowWitness.topPrime 1567 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good018_checked :
    goodSegmentCheck 86 28 59
      { lower := 1653, upper := 1722, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good019_checked :
    goodSegmentCheck 86 28 59
      { lower := 1723, upper := 1808, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good020_checked :
    goodSegmentCheck 86 28 59
      { lower := 1809, upper := 1886, witness := RowWitness.topPrime 1801 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good021_checked :
    goodSegmentCheck 86 28 59
      { lower := 1887, upper := 1964, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good022_checked :
    goodSegmentCheck 86 28 59
      { lower := 1965, upper := 2036, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good023_checked :
    goodSegmentCheck 86 28 59
      { lower := 2037, upper := 2114, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good024_checked :
    goodSegmentCheck 86 28 59
      { lower := 2115, upper := 2198, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good025_checked :
    goodSegmentCheck 86 28 59
      { lower := 2199, upper := 2264, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good026_checked :
    goodSegmentCheck 86 28 59
      { lower := 2265, upper := 2336, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good027_checked :
    goodSegmentCheck 86 28 59
      { lower := 2337, upper := 2418, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good028_checked :
    goodSegmentCheck 86 28 59
      { lower := 2419, upper := 2502, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good029_checked :
    goodSegmentCheck 86 28 59
      { lower := 2503, upper := 2588, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good030_checked :
    goodSegmentCheck 86 28 59
      { lower := 2589, upper := 2664, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good031_checked :
    goodSegmentCheck 86 28 59
      { lower := 2665, upper := 2748, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good032_checked :
    goodSegmentCheck 86 28 59
      { lower := 2749, upper := 2834, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good033_checked :
    goodSegmentCheck 86 28 59
      { lower := 2835, upper := 2918, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good034_checked :
    goodSegmentCheck 86 28 59
      { lower := 2919, upper := 3002, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good035_checked :
    goodSegmentCheck 86 28 59
      { lower := 3003, upper := 3086, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good036_checked :
    goodSegmentCheck 86 28 59
      { lower := 3087, upper := 3168, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good037_checked :
    goodSegmentCheck 86 28 59
      { lower := 3169, upper := 3254, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good038_checked :
    goodSegmentCheck 86 28 59
      { lower := 3255, upper := 3338, witness := RowWitness.topPrime 3253 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good039_checked :
    goodSegmentCheck 86 28 59
      { lower := 3339, upper := 3416, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good040_checked :
    goodSegmentCheck 86 28 59
      { lower := 3417, upper := 3498, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good041_checked :
    goodSegmentCheck 86 28 59
      { lower := 3499, upper := 3584, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good042_checked :
    goodSegmentCheck 86 28 59
      { lower := 3585, upper := 3668, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good043_checked :
    goodSegmentCheck 86 28 59
      { lower := 3669, upper := 3744, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good044_checked :
    goodSegmentCheck 86 28 59
      { lower := 3745, upper := 3824, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good045_checked :
    goodSegmentCheck 86 28 59
      { lower := 3825, upper := 3908, witness := RowWitness.topPrime 3823 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good046_checked :
    goodSegmentCheck 86 28 59
      { lower := 3909, upper := 3992, witness := RowWitness.topPrime 3907 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good047_checked :
    goodSegmentCheck 86 28 59
      { lower := 3993, upper := 4074, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good048_checked :
    goodSegmentCheck 86 28 59
      { lower := 4075, upper := 4158, witness := RowWitness.topPrime 4073 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good049_checked :
    goodSegmentCheck 86 28 59
      { lower := 4159, upper := 4244, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good050_checked :
    goodSegmentCheck 86 28 59
      { lower := 4245, upper := 4328, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good051_checked :
    goodSegmentCheck 86 28 59
      { lower := 4329, upper := 4412, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good052_checked :
    goodSegmentCheck 86 28 59
      { lower := 4413, upper := 4494, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good053_checked :
    goodSegmentCheck 86 28 59
      { lower := 4495, upper := 4578, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good054_checked :
    goodSegmentCheck 86 28 59
      { lower := 4579, upper := 4652, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good055_checked :
    goodSegmentCheck 86 28 59
      { lower := 4653, upper := 4736, witness := RowWitness.topPrime 4651 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good056_checked :
    goodSegmentCheck 86 28 59
      { lower := 4737, upper := 4818, witness := RowWitness.topPrime 4733 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good057_checked :
    goodSegmentCheck 86 28 59
      { lower := 4819, upper := 4902, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good058_checked :
    goodSegmentCheck 86 28 59
      { lower := 4903, upper := 4988, witness := RowWitness.topPrime 4903 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good059_checked :
    goodSegmentCheck 86 28 59
      { lower := 4989, upper := 5072, witness := RowWitness.topPrime 4987 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good060_checked :
    goodSegmentCheck 86 28 59
      { lower := 5073, upper := 5144, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good061_checked :
    goodSegmentCheck 86 28 59
      { lower := 5145, upper := 5204, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good062_checked :
    goodSegmentCheck 86 28 59
      { lower := 5205, upper := 5282, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good063_checked :
    goodSegmentCheck 86 28 59
      { lower := 5283, upper := 5366, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good064_checked :
    goodSegmentCheck 86 28 59
      { lower := 5367, upper := 5436, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good065_checked :
    goodSegmentCheck 86 28 59
      { lower := 5437, upper := 5522, witness := RowWitness.topPrime 5437 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good066_checked :
    goodSegmentCheck 86 28 59
      { lower := 5523, upper := 5606, witness := RowWitness.topPrime 5521 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good067_checked :
    goodSegmentCheck 86 28 59
      { lower := 5607, upper := 5676, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good068_checked :
    goodSegmentCheck 86 28 59
      { lower := 5677, upper := 5754, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good069_checked :
    goodSegmentCheck 86 28 59
      { lower := 5755, upper := 5834, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good070_checked :
    goodSegmentCheck 86 28 59
      { lower := 5835, upper := 5912, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good071_checked :
    goodSegmentCheck 86 28 59
      { lower := 5913, upper := 5988, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good072_checked :
    goodSegmentCheck 86 28 59
      { lower := 5989, upper := 6072, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good073_checked :
    goodSegmentCheck 86 28 59
      { lower := 6073, upper := 6158, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good074_checked :
    goodSegmentCheck 86 28 59
      { lower := 6159, upper := 6236, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good075_checked :
    goodSegmentCheck 86 28 59
      { lower := 6237, upper := 6314, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good076_checked :
    goodSegmentCheck 86 28 59
      { lower := 6315, upper := 6396, witness := RowWitness.topPrime 6311 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good077_checked :
    goodSegmentCheck 86 28 59
      { lower := 6397, upper := 6482, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good078_checked :
    goodSegmentCheck 86 28 59
      { lower := 6483, upper := 6566, witness := RowWitness.topPrime 6481 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good079_checked :
    goodSegmentCheck 86 28 59
      { lower := 6567, upper := 6648, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good080_checked :
    goodSegmentCheck 86 28 59
      { lower := 6649, upper := 6722, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good081_checked :
    goodSegmentCheck 86 28 59
      { lower := 6723, upper := 6804, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good082_checked :
    goodSegmentCheck 86 28 59
      { lower := 6805, upper := 6888, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good083_checked :
    goodSegmentCheck 86 28 59
      { lower := 6889, upper := 6968, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good084_checked :
    goodSegmentCheck 86 28 59
      { lower := 6969, upper := 7052, witness := RowWitness.topPrime 6967 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good085_checked :
    goodSegmentCheck 86 28 59
      { lower := 7053, upper := 7128, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good086_checked :
    goodSegmentCheck 86 28 59
      { lower := 7129, upper := 7214, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good087_checked :
    goodSegmentCheck 86 28 59
      { lower := 7215, upper := 7298, witness := RowWitness.topPrime 7213 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good088_checked :
    goodSegmentCheck 86 28 59
      { lower := 7299, upper := 7310, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good089_checked :
    goodSegmentCheck 86 28 59
      { lower := 7442, upper := 7491, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good090_checked :
    goodSegmentCheck 86 28 59
      { lower := 7500, upper := 7584, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good091_checked :
    goodSegmentCheck 86 28 59
      { lower := 7585, upper := 7654, witness := RowWitness.topPrime 7583 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good092_checked :
    goodSegmentCheck 86 28 59
      { lower := 7935, upper := 8018, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good093_checked :
    goodSegmentCheck 86 28 59
      { lower := 8019, upper := 8071, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good094_checked :
    goodSegmentCheck 86 28 59
      { lower := 8092, upper := 8104, witness := RowWitness.topPrime 8089 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good095_checked :
    goodSegmentCheck 86 28 59
      { lower := 8125, upper := 8177, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good096_checked :
    goodSegmentCheck 86 28 59
      { lower := 8192, upper := 8210, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good097_checked :
    goodSegmentCheck 86 28 59
      { lower := 8214, upper := 8294, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good098_checked :
    goodSegmentCheck 86 28 59
      { lower := 8295, upper := 8299, witness := RowWitness.topPrime 8293 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good099_checked :
    goodSegmentCheck 86 28 59
      { lower := 8303, upper := 8317, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good100_checked :
    goodSegmentCheck 86 28 59
      { lower := 8410, upper := 8474, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good101_checked :
    goodSegmentCheck 86 28 59
      { lower := 8475, upper := 8512, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good102_checked :
    goodSegmentCheck 86 28 59
      { lower := 8649, upper := 8660, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good103_checked :
    goodSegmentCheck 86 28 59
      { lower := 8664, upper := 8734, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good104_checked :
    goodSegmentCheck 86 28 59
      { lower := 8748, upper := 8832, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good105_checked :
    goodSegmentCheck 86 28 59
      { lower := 8833, upper := 8873, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good106_checked :
    goodSegmentCheck 86 28 59
      { lower := 8918, upper := 8921, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good107_checked :
    goodSegmentCheck 86 28 59
      { lower := 8978, upper := 9056, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good108_checked :
    goodSegmentCheck 86 28 59
      { lower := 9057, upper := 9078, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good109_checked :
    goodSegmentCheck 86 28 59
      { lower := 9251, upper := 9326, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good110_checked :
    goodSegmentCheck 86 28 59
      { lower := 9327, upper := 9346, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good111_checked :
    goodSegmentCheck 86 28 59
      { lower := 9375, upper := 9456, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good112_checked :
    goodSegmentCheck 86 28 59
      { lower := 9457, upper := 9460, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good113_checked :
    goodSegmentCheck 86 28 59
      { lower := 9522, upper := 9562, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good114_checked :
    goodSegmentCheck 86 28 59
      { lower := 9583, upper := 9636, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good115_checked :
    goodSegmentCheck 86 28 59
      { lower := 9637, upper := 9689, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good116_checked :
    goodSegmentCheck 86 28 59
      { lower := 9826, upper := 9832, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good117_checked :
    goodSegmentCheck 86 28 59
      { lower := 10051, upper := 10124, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good118_checked :
    goodSegmentCheck 86 28 59
      { lower := 10125, upper := 10177, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good119_checked :
    goodSegmentCheck 86 28 59
      { lower := 10240, upper := 10291, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good120_checked :
    goodSegmentCheck 86 28 59
      { lower := 10580, upper := 10652, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good121_checked :
    goodSegmentCheck 86 28 59
      { lower := 10653, upper := 10733, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good122_checked :
    goodSegmentCheck 86 28 59
      { lower := 10935, upper := 10994, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good123_checked :
    goodSegmentCheck 86 28 59
      { lower := 10995, upper := 11037, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good124_checked :
    goodSegmentCheck 86 28 59
      { lower := 11045, upper := 11070, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good125_checked :
    goodSegmentCheck 86 28 59
      { lower := 11109, upper := 11130, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good126_checked :
    goodSegmentCheck 86 28 59
      { lower := 11163, upper := 11194, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good127_checked :
    goodSegmentCheck 86 28 59
      { lower := 11236, upper := 11248, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good128_checked :
    goodSegmentCheck 86 28 59
      { lower := 11250, upper := 11328, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good129_checked :
    goodSegmentCheck 86 28 59
      { lower := 11329, upper := 11335, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good130_checked :
    goodSegmentCheck 86 28 59
      { lower := 11664, upper := 11723, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good131_checked :
    goodSegmentCheck 86 28 59
      { lower := 11774, upper := 11828, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good132_checked :
    goodSegmentCheck 86 28 59
      { lower := 11829, upper := 11852, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good133_checked :
    goodSegmentCheck 86 28 59
      { lower := 12005, upper := 12064, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good134_checked :
    goodSegmentCheck 86 28 59
      { lower := 12321, upper := 12373, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good135_checked :
    goodSegmentCheck 86 28 59
      { lower := 12393, upper := 12406, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good136_checked :
    goodSegmentCheck 86 28 59
      { lower := 12493, upper := 12576, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good137_checked :
    goodSegmentCheck 86 28 59
      { lower := 12577, upper := 12578, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good138_checked :
    goodSegmentCheck 86 28 59
      { lower := 12696, upper := 12700, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good139_checked :
    goodSegmentCheck 86 28 59
      { lower := 13125, upper := 13206, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good140_checked :
    goodSegmentCheck 86 28 59
      { lower := 13207, upper := 13210, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good141_checked :
    goodSegmentCheck 86 28 59
      { lower := 13225, upper := 13304, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good142_checked :
    goodSegmentCheck 86 28 59
      { lower := 13305, upper := 13382, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good143_checked :
    goodSegmentCheck 86 28 59
      { lower := 13383, upper := 13395, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good144_checked :
    goodSegmentCheck 86 28 59
      { lower := 13454, upper := 13536, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good145_checked :
    goodSegmentCheck 86 28 59
      { lower := 13537, upper := 13541, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good146_checked :
    goodSegmentCheck 86 28 59
      { lower := 13718, upper := 13796, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good147_checked :
    goodSegmentCheck 86 28 59
      { lower := 13797, upper := 13839, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good148_checked :
    goodSegmentCheck 86 28 59
      { lower := 13851, upper := 13863, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good149_checked :
    goodSegmentCheck 86 28 59
      { lower := 13924, upper := 13936, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good150_checked :
    goodSegmentCheck 86 28 59
      { lower := 14297, upper := 14378, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good151_checked :
    goodSegmentCheck 86 28 59
      { lower := 14379, upper := 14454, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good152_checked :
    goodSegmentCheck 86 28 59
      { lower := 14455, upper := 14491, witness := RowWitness.topPrime 14449 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good153_checked :
    goodSegmentCheck 86 28 59
      { lower := 14641, upper := 14665, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good154_checked :
    goodSegmentCheck 86 28 59
      { lower := 15059, upper := 15085, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good155_checked :
    goodSegmentCheck 86 28 59
      { lower := 15123, upper := 15206, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good156_checked :
    goodSegmentCheck 86 28 59
      { lower := 15207, upper := 15214, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good157_checked :
    goodSegmentCheck 86 28 59
      { lower := 15376, upper := 15458, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good158_checked :
    goodSegmentCheck 86 28 59
      { lower := 15459, upper := 15461, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good159_checked :
    goodSegmentCheck 86 28 59
      { lower := 15463, upper := 15464, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good160_checked :
    goodSegmentCheck 86 28 59
      { lower := 15979, upper := 16058, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good161_checked :
    goodSegmentCheck 86 28 59
      { lower := 16059, upper := 16072, witness := RowWitness.topPrime 16057 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good162_checked :
    goodSegmentCheck 86 28 59
      { lower := 16384, upper := 16422, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good163_checked :
    goodSegmentCheck 86 28 59
      { lower := 16428, upper := 16469, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good164_checked :
    goodSegmentCheck 86 28 59
      { lower := 16807, upper := 16872, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good165_checked :
    goodSegmentCheck 86 28 59
      { lower := 16873, upper := 16905, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good166_checked :
    goodSegmentCheck 86 28 59
      { lower := 17303, upper := 17383, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good167_checked :
    goodSegmentCheck 86 28 59
      { lower := 17576, upper := 17581, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good168_checked :
    goodSegmentCheck 86 28 59
      { lower := 17661, upper := 17661, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good169_checked :
    goodSegmentCheck 86 28 59
      { lower := 17672, upper := 17746, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good170_checked :
    goodSegmentCheck 86 28 59
      { lower := 18491, upper := 18566, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good171_checked :
    goodSegmentCheck 86 28 59
      { lower := 18567, upper := 18576, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good172_checked :
    goodSegmentCheck 86 28 59
      { lower := 18634, upper := 18690, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good173_checked :
    goodSegmentCheck 86 28 59
      { lower := 18750, upper := 18808, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good174_checked :
    goodSegmentCheck 86 28 59
      { lower := 19208, upper := 19292, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good175_checked :
    goodSegmentCheck 86 28 59
      { lower := 19293, upper := 19293, witness := RowWitness.topPrime 19289 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good176_checked :
    goodSegmentCheck 86 28 59
      { lower := 19663, upper := 19746, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good177_checked :
    goodSegmentCheck 86 28 59
      { lower := 19747, upper := 19748, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good178_checked :
    goodSegmentCheck 86 28 59
      { lower := 19965, upper := 19966, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good179_checked :
    goodSegmentCheck 86 28 59
      { lower := 20172, upper := 20246, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good180_checked :
    goodSegmentCheck 86 28 59
      { lower := 20247, upper := 20266, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good181_checked :
    goodSegmentCheck 86 28 59
      { lower := 20535, upper := 20565, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good182_checked :
    goodSegmentCheck 86 28 59
      { lower := 20577, upper := 20620, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good183_checked :
    goodSegmentCheck 86 28 59
      { lower := 21316, upper := 21381, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good184_checked :
    goodSegmentCheck 86 28 59
      { lower := 21870, upper := 21948, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good185_checked :
    goodSegmentCheck 86 28 59
      { lower := 21949, upper := 21960, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good186_checked :
    goodSegmentCheck 86 28 59
      { lower := 21970, upper := 21989, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good187_checked :
    goodSegmentCheck 86 28 59
      { lower := 22103, upper := 22175, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good188_checked :
    goodSegmentCheck 86 28 59
      { lower := 22472, upper := 22554, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good189_checked :
    goodSegmentCheck 86 28 59
      { lower := 22555, upper := 22557, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good190_checked :
    goodSegmentCheck 86 28 59
      { lower := 24010, upper := 24043, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good191_checked :
    goodSegmentCheck 86 28 59
      { lower := 24057, upper := 24095, witness := RowWitness.topPrime 24049 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good192_checked :
    goodSegmentCheck 86 28 59
      { lower := 24334, upper := 24414, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good193_checked :
    goodSegmentCheck 86 28 59
      { lower := 24415, upper := 24452, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good194_checked :
    goodSegmentCheck 86 28 59
      { lower := 24576, upper := 24656, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good195_checked :
    goodSegmentCheck 86 28 59
      { lower := 24657, upper := 24661, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good196_checked :
    goodSegmentCheck 86 28 59
      { lower := 25000, upper := 25049, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good197_checked :
    goodSegmentCheck 86 28 59
      { lower := 25215, upper := 25274, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good198_checked :
    goodSegmentCheck 86 28 59
      { lower := 25275, upper := 25346, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good199_checked :
    goodSegmentCheck 86 28 59
      { lower := 25347, upper := 25366, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good200_checked :
    goodSegmentCheck 86 28 59
      { lower := 26047, upper := 26096, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good201_checked :
    goodSegmentCheck 86 28 59
      { lower := 26411, upper := 26449, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good202_checked :
    goodSegmentCheck 86 28 59
      { lower := 26645, upper := 26705, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good203_checked :
    goodSegmentCheck 86 28 59
      { lower := 26934, upper := 26981, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good204_checked :
    goodSegmentCheck 86 28 59
      { lower := 27436, upper := 27465, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good205_checked :
    goodSegmentCheck 86 28 59
      { lower := 28125, upper := 28175, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good206_checked :
    goodSegmentCheck 86 28 59
      { lower := 28577, upper := 28646, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good207_checked :
    goodSegmentCheck 86 28 59
      { lower := 28717, upper := 28796, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good208_checked :
    goodSegmentCheck 86 28 59
      { lower := 28797, upper := 28802, witness := RowWitness.topPrime 28793 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good209_checked :
    goodSegmentCheck 86 28 59
      { lower := 28812, upper := 28834, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good210_checked :
    goodSegmentCheck 86 28 59
      { lower := 29791, upper := 29853, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good211_checked :
    goodSegmentCheck 86 28 59
      { lower := 30258, upper := 30331, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good212_checked :
    goodSegmentCheck 86 28 59
      { lower := 30926, upper := 30984, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good213_checked :
    goodSegmentCheck 86 28 59
      { lower := 31213, upper := 31278, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good214_checked :
    goodSegmentCheck 86 28 59
      { lower := 31279, upper := 31298, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good215_checked :
    goodSegmentCheck 86 28 59
      { lower := 31329, upper := 31335, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good216_checked :
    goodSegmentCheck 86 28 59
      { lower := 31974, upper := 32024, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good217_checked :
    goodSegmentCheck 86 28 59
      { lower := 32805, upper := 32853, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good218_checked :
    goodSegmentCheck 86 28 59
      { lower := 33620, upper := 33699, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good219_checked :
    goodSegmentCheck 86 28 59
      { lower := 34375, upper := 34380, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good220_checked :
    goodSegmentCheck 86 28 59
      { lower := 34391, upper := 34466, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good221_checked :
    goodSegmentCheck 86 28 59
      { lower := 34467, upper := 34476, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good222_checked :
    goodSegmentCheck 86 28 59
      { lower := 35344, upper := 35372, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good223_checked :
    goodSegmentCheck 86 28 59
      { lower := 36517, upper := 36582, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good224_checked :
    goodSegmentCheck 86 28 59
      { lower := 36583, upper := 36586, witness := RowWitness.topPrime 36583 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good225_checked :
    goodSegmentCheck 86 28 59
      { lower := 37210, upper := 37264, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good226_checked :
    goodSegmentCheck 86 28 59
      { lower := 37349, upper := 37388, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good227_checked :
    goodSegmentCheck 86 28 59
      { lower := 37500, upper := 37531, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good228_checked :
    goodSegmentCheck 86 28 59
      { lower := 37553, upper := 37585, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good229_checked :
    goodSegmentCheck 86 28 59
      { lower := 39326, upper := 39408, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good230_checked :
    goodSegmentCheck 86 28 59
      { lower := 39409, upper := 39411, witness := RowWitness.topPrime 39409 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good231_checked :
    goodSegmentCheck 86 28 59
      { lower := 40401, upper := 40413, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good232_checked :
    goodSegmentCheck 86 28 59
      { lower := 40960, upper := 41016, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good233_checked :
    goodSegmentCheck 86 28 59
      { lower := 41772, upper := 41828, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good234_checked :
    goodSegmentCheck 86 28 59
      { lower := 43740, upper := 43806, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good235_checked :
    goodSegmentCheck 86 28 59
      { lower := 43807, upper := 43825, witness := RowWitness.topPrime 43801 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good236_checked :
    goodSegmentCheck 86 28 59
      { lower := 43940, upper := 44008, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good237_checked :
    goodSegmentCheck 86 28 59
      { lower := 44217, upper := 44265, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good238_checked :
    goodSegmentCheck 86 28 59
      { lower := 44944, upper := 44975, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good239_checked :
    goodSegmentCheck 86 28 59
      { lower := 48013, upper := 48066, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good240_checked :
    goodSegmentCheck 86 28 59
      { lower := 48067, upper := 48098, witness := RowWitness.topPrime 48049 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good241_checked :
    goodSegmentCheck 86 28 59
      { lower := 48734, upper := 48753, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good242_checked :
    goodSegmentCheck 86 28 59
      { lower := 48778, upper := 48819, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good243_checked :
    goodSegmentCheck 86 28 59
      { lower := 49152, upper := 49215, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good244_checked :
    goodSegmentCheck 86 28 59
      { lower := 50000, upper := 50013, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good245_checked :
    goodSegmentCheck 86 28 59
      { lower := 50421, upper := 50495, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good246_checked :
    goodSegmentCheck 86 28 59
      { lower := 53371, upper := 53375, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good247_checked :
    goodSegmentCheck 86 28 59
      { lower := 56180, upper := 56264, witness := RowWitness.topPrime 56179 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good248_checked :
    goodSegmentCheck 86 28 59
      { lower := 56265, upper := 56265, witness := RowWitness.topPrime 56263 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good249_checked :
    goodSegmentCheck 86 28 59
      { lower := 58619, upper := 58649, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good250_checked :
    goodSegmentCheck 86 28 59
      { lower := 59582, upper := 59621, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good251_checked :
    goodSegmentCheck 86 28 59
      { lower := 63948, upper := 63954, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good252_checked :
    goodSegmentCheck 86 28 59
      { lower := 65536, upper := 65606, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good253_checked :
    goodSegmentCheck 86 28 59
      { lower := 65607, upper := 65621, witness := RowWitness.topPrime 65599 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good254_checked :
    goodSegmentCheck 86 28 59
      { lower := 68651, upper := 68675, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good255_checked :
    goodSegmentCheck 86 28 59
      { lower := 68921, upper := 68975, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good256_checked :
    goodSegmentCheck 86 28 59
      { lower := 73205, upper := 73252, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good257_checked :
    goodSegmentCheck 86 28 59
      { lower := 85293, upper := 85344, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good258_checked :
    goodSegmentCheck 86 28 59
      { lower := 85345, upper := 85349, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good259_checked :
    goodSegmentCheck 86 28 59
      { lower := 85697, upper := 85768, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good260_checked :
    goodSegmentCheck 86 28 59
      { lower := 137842, upper := 137866, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good261_checked :
    goodSegmentCheck 86 28 59
      { lower := 146410, upper := 146419, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good262_checked :
    goodSegmentCheck 86 28 59
      { lower := 148955, upper := 148962, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good263_checked :
    goodSegmentCheck 86 28 59
      { lower := 327701, upper := 327765, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good263_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_goods_checked :
    row086.goods.all (goodSegmentCheck row086.height.i row086.height.r row086.height.s) = true := by
  change row086_goods.all (goodSegmentCheck 86 28 59) = true
  simp only [row086_goods, List.all_cons, List.all_nil,
    row086_good000_checked,
    row086_good001_checked,
    row086_good002_checked,
    row086_good003_checked,
    row086_good004_checked,
    row086_good005_checked,
    row086_good006_checked,
    row086_good007_checked,
    row086_good008_checked,
    row086_good009_checked,
    row086_good010_checked,
    row086_good011_checked,
    row086_good012_checked,
    row086_good013_checked,
    row086_good014_checked,
    row086_good015_checked,
    row086_good016_checked,
    row086_good017_checked,
    row086_good018_checked,
    row086_good019_checked,
    row086_good020_checked,
    row086_good021_checked,
    row086_good022_checked,
    row086_good023_checked,
    row086_good024_checked,
    row086_good025_checked,
    row086_good026_checked,
    row086_good027_checked,
    row086_good028_checked,
    row086_good029_checked,
    row086_good030_checked,
    row086_good031_checked,
    row086_good032_checked,
    row086_good033_checked,
    row086_good034_checked,
    row086_good035_checked,
    row086_good036_checked,
    row086_good037_checked,
    row086_good038_checked,
    row086_good039_checked,
    row086_good040_checked,
    row086_good041_checked,
    row086_good042_checked,
    row086_good043_checked,
    row086_good044_checked,
    row086_good045_checked,
    row086_good046_checked,
    row086_good047_checked,
    row086_good048_checked,
    row086_good049_checked,
    row086_good050_checked,
    row086_good051_checked,
    row086_good052_checked,
    row086_good053_checked,
    row086_good054_checked,
    row086_good055_checked,
    row086_good056_checked,
    row086_good057_checked,
    row086_good058_checked,
    row086_good059_checked,
    row086_good060_checked,
    row086_good061_checked,
    row086_good062_checked,
    row086_good063_checked,
    row086_good064_checked,
    row086_good065_checked,
    row086_good066_checked,
    row086_good067_checked,
    row086_good068_checked,
    row086_good069_checked,
    row086_good070_checked,
    row086_good071_checked,
    row086_good072_checked,
    row086_good073_checked,
    row086_good074_checked,
    row086_good075_checked,
    row086_good076_checked,
    row086_good077_checked,
    row086_good078_checked,
    row086_good079_checked,
    row086_good080_checked,
    row086_good081_checked,
    row086_good082_checked,
    row086_good083_checked,
    row086_good084_checked,
    row086_good085_checked,
    row086_good086_checked,
    row086_good087_checked,
    row086_good088_checked,
    row086_good089_checked,
    row086_good090_checked,
    row086_good091_checked,
    row086_good092_checked,
    row086_good093_checked,
    row086_good094_checked,
    row086_good095_checked,
    row086_good096_checked,
    row086_good097_checked,
    row086_good098_checked,
    row086_good099_checked,
    row086_good100_checked,
    row086_good101_checked,
    row086_good102_checked,
    row086_good103_checked,
    row086_good104_checked,
    row086_good105_checked,
    row086_good106_checked,
    row086_good107_checked,
    row086_good108_checked,
    row086_good109_checked,
    row086_good110_checked,
    row086_good111_checked,
    row086_good112_checked,
    row086_good113_checked,
    row086_good114_checked,
    row086_good115_checked,
    row086_good116_checked,
    row086_good117_checked,
    row086_good118_checked,
    row086_good119_checked,
    row086_good120_checked,
    row086_good121_checked,
    row086_good122_checked,
    row086_good123_checked,
    row086_good124_checked,
    row086_good125_checked,
    row086_good126_checked,
    row086_good127_checked,
    row086_good128_checked,
    row086_good129_checked,
    row086_good130_checked,
    row086_good131_checked,
    row086_good132_checked,
    row086_good133_checked,
    row086_good134_checked,
    row086_good135_checked,
    row086_good136_checked,
    row086_good137_checked,
    row086_good138_checked,
    row086_good139_checked,
    row086_good140_checked,
    row086_good141_checked,
    row086_good142_checked,
    row086_good143_checked,
    row086_good144_checked,
    row086_good145_checked,
    row086_good146_checked,
    row086_good147_checked,
    row086_good148_checked,
    row086_good149_checked,
    row086_good150_checked,
    row086_good151_checked,
    row086_good152_checked,
    row086_good153_checked,
    row086_good154_checked,
    row086_good155_checked,
    row086_good156_checked,
    row086_good157_checked,
    row086_good158_checked,
    row086_good159_checked,
    row086_good160_checked,
    row086_good161_checked,
    row086_good162_checked,
    row086_good163_checked,
    row086_good164_checked,
    row086_good165_checked,
    row086_good166_checked,
    row086_good167_checked,
    row086_good168_checked,
    row086_good169_checked,
    row086_good170_checked,
    row086_good171_checked,
    row086_good172_checked,
    row086_good173_checked,
    row086_good174_checked,
    row086_good175_checked,
    row086_good176_checked,
    row086_good177_checked,
    row086_good178_checked,
    row086_good179_checked,
    row086_good180_checked,
    row086_good181_checked,
    row086_good182_checked,
    row086_good183_checked,
    row086_good184_checked,
    row086_good185_checked,
    row086_good186_checked,
    row086_good187_checked,
    row086_good188_checked,
    row086_good189_checked,
    row086_good190_checked,
    row086_good191_checked,
    row086_good192_checked,
    row086_good193_checked,
    row086_good194_checked,
    row086_good195_checked,
    row086_good196_checked,
    row086_good197_checked,
    row086_good198_checked,
    row086_good199_checked,
    row086_good200_checked,
    row086_good201_checked,
    row086_good202_checked,
    row086_good203_checked,
    row086_good204_checked,
    row086_good205_checked,
    row086_good206_checked,
    row086_good207_checked,
    row086_good208_checked,
    row086_good209_checked,
    row086_good210_checked,
    row086_good211_checked,
    row086_good212_checked,
    row086_good213_checked,
    row086_good214_checked,
    row086_good215_checked,
    row086_good216_checked,
    row086_good217_checked,
    row086_good218_checked,
    row086_good219_checked,
    row086_good220_checked,
    row086_good221_checked,
    row086_good222_checked,
    row086_good223_checked,
    row086_good224_checked,
    row086_good225_checked,
    row086_good226_checked,
    row086_good227_checked,
    row086_good228_checked,
    row086_good229_checked,
    row086_good230_checked,
    row086_good231_checked,
    row086_good232_checked,
    row086_good233_checked,
    row086_good234_checked,
    row086_good235_checked,
    row086_good236_checked,
    row086_good237_checked,
    row086_good238_checked,
    row086_good239_checked,
    row086_good240_checked,
    row086_good241_checked,
    row086_good242_checked,
    row086_good243_checked,
    row086_good244_checked,
    row086_good245_checked,
    row086_good246_checked,
    row086_good247_checked,
    row086_good248_checked,
    row086_good249_checked,
    row086_good250_checked,
    row086_good251_checked,
    row086_good252_checked,
    row086_good253_checked,
    row086_good254_checked,
    row086_good255_checked,
    row086_good256_checked,
    row086_good257_checked,
    row086_good258_checked,
    row086_good259_checked,
    row086_good260_checked,
    row086_good261_checked,
    row086_good262_checked,
    row086_good263_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_registered :
    decide (row086.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row086_small_checked :
    coverCheck (2 * row086.height.i + 2) (row086.height.i * (row086.height.i - 1) - 1)
      (row086.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row086_layerCover_checked :
    coverCheck (row086.height.i * (row086.height.i - 1)) (row086.height.n0 - 1)
      (row086.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row086_bounds : List NatInterval :=
  [(174, 258), (259, 342), (343, 422), (423, 506), (507, 588), (589, 672), (673, 758), (759, 842), (843, 924), (925, 1004), (1005, 1082), (1083, 1154), (1155, 1238), (1239, 1322), (1323, 1406), (1407, 1484), (1485, 1568), (1569, 1652), (1653, 1722), (1723, 1808), (1809, 1886), (1887, 1964), (1965, 2036), (2037, 2114), (2115, 2198), (2199, 2264), (2265, 2336), (2337, 2418), (2419, 2502), (2503, 2588), (2589, 2664), (2665, 2748), (2749, 2834), (2835, 2918), (2919, 3002), (3003, 3086), (3087, 3168), (3169, 3254), (3255, 3338), (3339, 3416), (3417, 3498), (3499, 3584), (3585, 3668), (3669, 3744), (3745, 3824), (3825, 3908), (3909, 3992), (3993, 4074), (4075, 4158), (4159, 4244), (4245, 4328), (4329, 4412), (4413, 4494), (4495, 4578), (4579, 4652), (4653, 4736), (4737, 4818), (4819, 4902), (4903, 4988), (4989, 5072), (5073, 5144), (5145, 5204), (5205, 5282), (5283, 5366), (5367, 5436), (5437, 5522), (5523, 5606), (5607, 5676), (5677, 5754), (5755, 5834), (5835, 5912), (5913, 5988), (5989, 6072), (6073, 6158), (6159, 6236), (6237, 6314), (6315, 6396), (6397, 6482), (6483, 6566), (6567, 6648), (6649, 6722), (6723, 6804), (6805, 6888), (6889, 6968), (6969, 7052), (7053, 7128), (7129, 7214), (7215, 7298), (7299, 7310), (7442, 7491), (7500, 7584), (7585, 7654), (7935, 8018), (8019, 8071), (8092, 8104), (8125, 8177), (8192, 8210), (8214, 8294), (8295, 8299), (8303, 8317), (8410, 8474), (8475, 8512), (8649, 8660), (8664, 8734), (8748, 8832), (8833, 8873), (8918, 8921), (8978, 9056), (9057, 9078), (9251, 9326), (9327, 9346), (9375, 9456), (9457, 9460), (9522, 9562), (9583, 9636), (9637, 9689), (9826, 9832), (10051, 10124), (10125, 10177), (10240, 10291), (10580, 10652), (10653, 10733), (10935, 10994), (10995, 11037), (11045, 11070), (11109, 11130), (11163, 11194), (11236, 11248), (11250, 11328), (11329, 11335), (11664, 11723), (11774, 11828), (11829, 11852), (12005, 12064), (12321, 12373), (12393, 12406), (12493, 12576), (12577, 12578), (12696, 12700), (13125, 13206), (13207, 13210), (13225, 13304), (13305, 13382), (13383, 13395), (13454, 13536), (13537, 13541), (13718, 13796), (13797, 13839), (13851, 13863), (13924, 13936), (14297, 14378), (14379, 14454), (14455, 14491), (14641, 14665), (15059, 15085), (15123, 15206), (15207, 15214), (15376, 15458), (15459, 15461), (15463, 15464), (15979, 16058), (16059, 16072), (16384, 16422), (16428, 16469), (16807, 16872), (16873, 16905), (17303, 17383), (17576, 17581), (17661, 17661), (17672, 17746), (18491, 18566), (18567, 18576), (18634, 18690), (18750, 18808), (19208, 19292), (19293, 19293), (19663, 19746), (19747, 19748), (19965, 19966), (20172, 20246), (20247, 20266), (20535, 20565), (20577, 20620), (21316, 21381), (21870, 21948), (21949, 21960), (21970, 21989), (22103, 22175), (22472, 22554), (22555, 22557), (24010, 24043), (24057, 24095), (24334, 24414), (24415, 24452), (24576, 24656), (24657, 24661), (25000, 25049), (25215, 25274), (25275, 25346), (25347, 25366), (26047, 26096), (26411, 26449), (26645, 26705), (26934, 26981), (27436, 27465), (28125, 28175), (28577, 28646), (28717, 28796), (28797, 28802), (28812, 28834), (29791, 29853), (30258, 30331), (30926, 30984), (31213, 31278), (31279, 31298), (31329, 31335), (31974, 32024), (32805, 32853), (33620, 33699), (34375, 34380), (34391, 34466), (34467, 34476), (35344, 35372), (36517, 36582), (36583, 36586), (37210, 37264), (37349, 37388), (37500, 37531), (37553, 37585), (39326, 39408), (39409, 39411), (40401, 40413), (40960, 41016), (41772, 41828), (43740, 43806), (43807, 43825), (43940, 44008), (44217, 44265), (44944, 44975), (48013, 48066), (48067, 48098), (48734, 48753), (48778, 48819), (49152, 49215), (50000, 50013), (50421, 50495), (53371, 53375), (56180, 56264), (56265, 56265), (58619, 58649), (59582, 59621), (63948, 63954), (65536, 65606), (65607, 65621), (68651, 68675), (68921, 68975), (73205, 73252), (85293, 85344), (85345, 85349), (85697, 85768), (137842, 137866), (146410, 146419), (148955, 148962), (327701, 327765)]

theorem row086_bounds_eq : row086.goods.map goodSegmentBounds = row086_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row086_layer000_intervals : List ColouredInterval :=
  [(2, 8192, 8277), (2, 9216, 9301), (2, 10240, 10325), (2, 11264, 11349), (2, 12288, 12373), (2, 13312, 13397), (2, 14336, 14421), (2, 8192, 8277), (2, 10240, 10325), (2, 12288, 12373), (2, 14336, 14421), (2, 8192, 8277), (2, 12288, 12373), (2, 8192, 8277), (3, 7310, 7375), (3, 8019, 8104), (3, 8748, 8833), (3, 9477, 9562), (3, 10206, 10291), (3, 10935, 11020), (3, 11664, 11749), (3, 12393, 12478), (3, 13122, 13207), (3, 13851, 13936), (3, 14580, 14619), (3, 8748, 8833), (3, 10935, 11020), (3, 13122, 13207), (3, 13122, 13207), (5, 7500, 7585), (5, 8125, 8210), (5, 8750, 8835), (5, 9375, 9460), (5, 10000, 10085), (5, 10625, 10710), (5, 11250, 11335), (5, 11875, 11960), (5, 12500, 12585), (5, 13125, 13210), (5, 13750, 13835), (5, 14375, 14460), (5, 9375, 9460), (5, 12500, 12585), (7, 7546, 7631), (7, 7889, 7974), (7, 8232, 8317), (7, 8575, 8660), (7, 8918, 9003), (7, 9261, 9346), (7, 9604, 9689), (7, 9604, 9689), (7, 12005, 12090), (7, 14406, 14491), (11, 7986, 8071), (11, 9317, 9402), (11, 10648, 10733), (11, 11979, 12064), (11, 13310, 13395), (13, 8788, 8873), (13, 10985, 11070), (13, 13182, 13267), (17, 7310, 7310), (17, 7514, 7599), (17, 7803, 7888), (17, 8092, 8177), (17, 9826, 9911), (19, 7581, 7666), (19, 7942, 8027), (19, 8303, 8388), (19, 8664, 8749), (19, 9025, 9110), (19, 9386, 9471), (19, 9747, 9832), (19, 10108, 10193), (19, 13718, 13803), (23, 7406, 7491), (23, 7935, 8020), (23, 8464, 8549), (23, 8993, 9078), (23, 9522, 9607), (23, 10051, 10136), (23, 10580, 10665), (23, 11109, 11194), (23, 11638, 11723), (23, 12167, 12252), (23, 12696, 12781), (23, 13225, 13310), (23, 13754, 13839), (23, 14283, 14368), (23, 12167, 12252), (29, 7569, 7654), (29, 8410, 8495), (29, 9251, 9336), (29, 10092, 10177), (29, 10933, 11018), (29, 11774, 11859), (29, 12615, 12700), (29, 13456, 13541), (29, 14297, 14382), (31, 7688, 7773), (31, 8649, 8734), (31, 9610, 9695), (31, 10571, 10656), (31, 11532, 11617), (31, 12493, 12578), (31, 13454, 13539), (31, 14415, 14500), (37, 8214, 8299), (37, 9583, 9668), (37, 10952, 11037), (37, 12321, 12406), (37, 13690, 13775), (41, 8405, 8490), (41, 10086, 10171), (41, 11767, 11852), (41, 13448, 13533), (47, 8836, 8921), (47, 11045, 11130), (47, 13254, 13339), (53, 8427, 8512), (53, 11236, 11321), (53, 14045, 14130), (59, 10443, 10528), (59, 13924, 14009), (61, 7442, 7527), (61, 11163, 11248), (67, 8978, 9063), (67, 13467, 13552), (71, 10082, 10167), (73, 10658, 10743), (79, 12482, 12567), (83, 13778, 13863)]

def row086_layer000_block000 : List ColouredInterval :=
  [(2, 8192, 8277), (2, 9216, 9301), (2, 10240, 10325), (2, 11264, 11349), (2, 12288, 12373), (2, 13312, 13397), (2, 14336, 14421), (2, 8192, 8277), (2, 10240, 10325), (2, 12288, 12373), (2, 14336, 14421), (2, 8192, 8277), (2, 12288, 12373), (2, 8192, 8277), (3, 7310, 7375)]

def row086_layer000_block001 : List ColouredInterval :=
  [(3, 8019, 8104), (3, 8748, 8833), (3, 9477, 9562), (3, 10206, 10291), (3, 10935, 11020), (3, 11664, 11749), (3, 12393, 12478), (3, 13122, 13207), (3, 13851, 13936), (3, 14580, 14619), (3, 8748, 8833), (3, 10935, 11020), (3, 13122, 13207), (3, 13122, 13207), (5, 7500, 7585)]

def row086_layer000_block002 : List ColouredInterval :=
  [(5, 8125, 8210), (5, 8750, 8835), (5, 9375, 9460), (5, 10000, 10085), (5, 10625, 10710), (5, 11250, 11335), (5, 11875, 11960), (5, 12500, 12585), (5, 13125, 13210), (5, 13750, 13835), (5, 14375, 14460), (5, 9375, 9460), (5, 12500, 12585), (7, 7546, 7631), (7, 7889, 7974)]

def row086_layer000_block003 : List ColouredInterval :=
  [(7, 8232, 8317), (7, 8575, 8660), (7, 8918, 9003), (7, 9261, 9346), (7, 9604, 9689), (7, 9604, 9689), (7, 12005, 12090), (7, 14406, 14491), (11, 7986, 8071), (11, 9317, 9402), (11, 10648, 10733), (11, 11979, 12064), (11, 13310, 13395), (13, 8788, 8873), (13, 10985, 11070)]

def row086_layer000_block004 : List ColouredInterval :=
  [(13, 13182, 13267), (17, 7310, 7310), (17, 7514, 7599), (17, 7803, 7888), (17, 8092, 8177), (17, 9826, 9911), (19, 7581, 7666), (19, 7942, 8027), (19, 8303, 8388), (19, 8664, 8749), (19, 9025, 9110), (19, 9386, 9471), (19, 9747, 9832), (19, 10108, 10193), (19, 13718, 13803)]

def row086_layer000_block005 : List ColouredInterval :=
  [(23, 7406, 7491), (23, 7935, 8020), (23, 8464, 8549), (23, 8993, 9078), (23, 9522, 9607), (23, 10051, 10136), (23, 10580, 10665), (23, 11109, 11194), (23, 11638, 11723), (23, 12167, 12252), (23, 12696, 12781), (23, 13225, 13310), (23, 13754, 13839), (23, 14283, 14368), (23, 12167, 12252)]

def row086_layer000_block006 : List ColouredInterval :=
  [(29, 7569, 7654), (29, 8410, 8495), (29, 9251, 9336), (29, 10092, 10177), (29, 10933, 11018), (29, 11774, 11859), (29, 12615, 12700), (29, 13456, 13541), (29, 14297, 14382), (31, 7688, 7773), (31, 8649, 8734), (31, 9610, 9695), (31, 10571, 10656), (31, 11532, 11617), (31, 12493, 12578)]

def row086_layer000_block007 : List ColouredInterval :=
  [(31, 13454, 13539), (31, 14415, 14500), (37, 8214, 8299), (37, 9583, 9668), (37, 10952, 11037), (37, 12321, 12406), (37, 13690, 13775), (41, 8405, 8490), (41, 10086, 10171), (41, 11767, 11852), (41, 13448, 13533), (47, 8836, 8921), (47, 11045, 11130), (47, 13254, 13339), (53, 8427, 8512)]

def row086_layer000_block008 : List ColouredInterval :=
  [(53, 11236, 11321), (53, 14045, 14130), (59, 10443, 10528), (59, 13924, 14009), (61, 7442, 7527), (61, 11163, 11248), (67, 8978, 9063), (67, 13467, 13552), (71, 10082, 10167), (73, 10658, 10743), (79, 12482, 12567), (83, 13778, 13863)]

def row086_layer000_chunks : List (List ColouredInterval) :=
  [row086_layer000_block000, row086_layer000_block001, row086_layer000_block002, row086_layer000_block003, row086_layer000_block004, row086_layer000_block005, row086_layer000_block006, row086_layer000_block007, row086_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_arithmetic : LayerArithmeticValid row086.height { lower := 7310, upper := 14620, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_enumeration :
    activePowerIntervalList 86 28 7310 14620 = row086_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_pairs000 :
    row086_layer000_block000.all (fun I => row086_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_pairs001 :
    row086_layer000_block001.all (fun I => row086_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_pairs002 :
    row086_layer000_block002.all (fun I => row086_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_pairs003 :
    row086_layer000_block003.all (fun I => row086_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_pairs004 :
    row086_layer000_block004.all (fun I => row086_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_pairs005 :
    row086_layer000_block005.all (fun I => row086_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_pairs006 :
    row086_layer000_block006.all (fun I => row086_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_pairs007 :
    row086_layer000_block007.all (fun I => row086_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs007
