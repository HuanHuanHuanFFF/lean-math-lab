import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_height : HeightCertificateDatum := { i := 52, r := 17, s := 35, n0Power10 := 14 }

def row052_goods : List GoodSegment := [
  { lower := 106, upper := 154, witness := RowWitness.topPrime 103 },
  { lower := 155, upper := 202, witness := RowWitness.topPrime 151 },
  { lower := 203, upper := 250, witness := RowWitness.topPrime 199 },
  { lower := 251, upper := 302, witness := RowWitness.topPrime 251 },
  { lower := 303, upper := 344, witness := RowWitness.topPrime 293 },
  { lower := 345, upper := 388, witness := RowWitness.topPrime 337 },
  { lower := 389, upper := 440, witness := RowWitness.topPrime 389 },
  { lower := 441, upper := 490, witness := RowWitness.topPrime 439 },
  { lower := 491, upper := 542, witness := RowWitness.topPrime 491 },
  { lower := 543, upper := 592, witness := RowWitness.topPrime 541 },
  { lower := 593, upper := 644, witness := RowWitness.topPrime 593 },
  { lower := 645, upper := 694, witness := RowWitness.topPrime 643 },
  { lower := 695, upper := 742, witness := RowWitness.topPrime 691 },
  { lower := 743, upper := 794, witness := RowWitness.topPrime 743 },
  { lower := 795, upper := 838, witness := RowWitness.topPrime 787 },
  { lower := 839, upper := 890, witness := RowWitness.topPrime 839 },
  { lower := 891, upper := 938, witness := RowWitness.topPrime 887 },
  { lower := 939, upper := 988, witness := RowWitness.topPrime 937 },
  { lower := 989, upper := 1034, witness := RowWitness.topPrime 983 },
  { lower := 1035, upper := 1084, witness := RowWitness.topPrime 1033 },
  { lower := 1085, upper := 1120, witness := RowWitness.topPrime 1069 },
  { lower := 1121, upper := 1168, witness := RowWitness.topPrime 1117 },
  { lower := 1169, upper := 1214, witness := RowWitness.topPrime 1163 },
  { lower := 1215, upper := 1264, witness := RowWitness.topPrime 1213 },
  { lower := 1265, upper := 1310, witness := RowWitness.topPrime 1259 },
  { lower := 1311, upper := 1358, witness := RowWitness.topPrime 1307 },
  { lower := 1359, upper := 1378, witness := RowWitness.topPrime 1327 },
  { lower := 1379, upper := 1424, witness := RowWitness.topPrime 1373 },
  { lower := 1425, upper := 1474, witness := RowWitness.topPrime 1423 },
  { lower := 1475, upper := 1522, witness := RowWitness.topPrime 1471 },
  { lower := 1523, upper := 1574, witness := RowWitness.topPrime 1523 },
  { lower := 1575, upper := 1622, witness := RowWitness.topPrime 1571 },
  { lower := 1623, upper := 1672, witness := RowWitness.topPrime 1621 },
  { lower := 1673, upper := 1720, witness := RowWitness.topPrime 1669 },
  { lower := 1721, upper := 1772, witness := RowWitness.topPrime 1721 },
  { lower := 1773, upper := 1810, witness := RowWitness.topPrime 1759 },
  { lower := 1811, upper := 1862, witness := RowWitness.topPrime 1811 },
  { lower := 1863, upper := 1912, witness := RowWitness.topPrime 1861 },
  { lower := 1913, upper := 1964, witness := RowWitness.topPrime 1913 },
  { lower := 1965, upper := 2002, witness := RowWitness.topPrime 1951 },
  { lower := 2003, upper := 2054, witness := RowWitness.topPrime 2003 },
  { lower := 2055, upper := 2104, witness := RowWitness.topPrime 2053 },
  { lower := 2105, upper := 2150, witness := RowWitness.topPrime 2099 },
  { lower := 2151, upper := 2194, witness := RowWitness.topPrime 2143 },
  { lower := 2195, upper := 2230, witness := RowWitness.topPrime 2179 },
  { lower := 2231, upper := 2272, witness := RowWitness.topPrime 2221 },
  { lower := 2273, upper := 2324, witness := RowWitness.topPrime 2273 },
  { lower := 2325, upper := 2362, witness := RowWitness.topPrime 2311 },
  { lower := 2363, upper := 2408, witness := RowWitness.topPrime 2357 },
  { lower := 2409, upper := 2450, witness := RowWitness.topPrime 2399 },
  { lower := 2451, upper := 2498, witness := RowWitness.topPrime 2447 },
  { lower := 2499, upper := 2528, witness := RowWitness.topPrime 2477 },
  { lower := 2529, upper := 2572, witness := RowWitness.topPrime 2521 },
  { lower := 2573, upper := 2608, witness := RowWitness.topPrime 2557 },
  { lower := 2609, upper := 2660, witness := RowWitness.topPrime 2609 },
  { lower := 2661, upper := 2710, witness := RowWitness.topPrime 2659 },
  { lower := 2711, upper := 2713, witness := RowWitness.topPrime 2711 },
  { lower := 2744, upper := 2792, witness := RowWitness.topPrime 2741 },
  { lower := 2793, upper := 2801, witness := RowWitness.topPrime 2791 },
  { lower := 2883, upper := 2930, witness := RowWitness.topPrime 2879 },
  { lower := 2931, upper := 2955, witness := RowWitness.topPrime 2927 },
  { lower := 3025, upper := 3051, witness := RowWitness.topPrime 3023 },
  { lower := 3072, upper := 3076, witness := RowWitness.topPrime 3067 },
  { lower := 3087, upper := 3123, witness := RowWitness.topPrime 3083 },
  { lower := 3125, upper := 3138, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3188, witness := RowWitness.topPrime 3137 },
  { lower := 3189, upper := 3225, witness := RowWitness.topPrime 3187 },
  { lower := 3250, upper := 3280, witness := RowWitness.topPrime 3229 },
  { lower := 3281, upper := 3301, witness := RowWitness.topPrime 3271 },
  { lower := 3364, upper := 3412, witness := RowWitness.topPrime 3361 },
  { lower := 3413, upper := 3453, witness := RowWitness.topPrime 3413 },
  { lower := 3468, upper := 3481, witness := RowWitness.topPrime 3467 },
  { lower := 3500, upper := 3550, witness := RowWitness.topPrime 3499 },
  { lower := 3551, upper := 3551, witness := RowWitness.topPrime 3547 },
  { lower := 3610, upper := 3658, witness := RowWitness.topPrime 3607 },
  { lower := 3659, upper := 3681, witness := RowWitness.topPrime 3659 },
  { lower := 3703, upper := 3752, witness := RowWitness.topPrime 3701 },
  { lower := 3753, upper := 3790, witness := RowWitness.topPrime 3739 },
  { lower := 3791, upper := 3808, witness := RowWitness.topPrime 3779 },
  { lower := 3872, upper := 3914, witness := RowWitness.topPrime 3863 },
  { lower := 3915, upper := 3926, witness := RowWitness.topPrime 3911 },
  { lower := 3993, upper := 4040, witness := RowWitness.topPrime 3989 },
  { lower := 4041, upper := 4044, witness := RowWitness.topPrime 4027 },
  { lower := 4046, upper := 4051, witness := RowWitness.topPrime 4027 },
  { lower := 4096, upper := 4097, witness := RowWitness.topPrime 4093 },
  { lower := 4107, upper := 4150, witness := RowWitness.topPrime 4099 },
  { lower := 4151, upper := 4167, witness := RowWitness.topPrime 4139 },
  { lower := 4232, upper := 4256, witness := RowWitness.topPrime 4231 },
  { lower := 4335, upper := 4378, witness := RowWitness.topPrime 4327 },
  { lower := 4379, upper := 4424, witness := RowWitness.topPrime 4373 },
  { lower := 4425, upper := 4445, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4469, witness := RowWitness.topPrime 4457 },
  { lower := 4624, upper := 4668, witness := RowWitness.topPrime 4621 },
  { lower := 4802, upper := 4852, witness := RowWitness.topPrime 4801 },
  { lower := 4853, upper := 4853, witness := RowWitness.topPrime 4831 },
  { lower := 5043, upper := 5090, witness := RowWitness.topPrime 5039 },
  { lower := 5091, upper := 5097, witness := RowWitness.topPrime 5087 },
  { lower := 5103, upper := 5105, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5170, witness := RowWitness.topPrime 5119 },
  { lower := 5171, upper := 5171, witness := RowWitness.topPrime 5171 },
  { lower := 5324, upper := 5341, witness := RowWitness.topPrime 5323 },
  { lower := 5346, upper := 5375, witness := RowWitness.topPrime 5333 },
  { lower := 5488, upper := 5534, witness := RowWitness.topPrime 5483 },
  { lower := 5535, upper := 5539, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5598, witness := RowWitness.topPrime 5581 },
  { lower := 5625, upper := 5640, witness := RowWitness.topPrime 5623 },
  { lower := 5776, upper := 5800, witness := RowWitness.topPrime 5749 },
  { lower := 5801, upper := 5852, witness := RowWitness.topPrime 5801 },
  { lower := 5853, upper := 5882, witness := RowWitness.topPrime 5851 },
  { lower := 6075, upper := 6120, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6194, witness := RowWitness.topPrime 6143 },
  { lower := 6195, upper := 6195, witness := RowWitness.topPrime 6173 },
  { lower := 6348, upper := 6394, witness := RowWitness.topPrime 6343 },
  { lower := 6395, upper := 6399, witness := RowWitness.topPrime 6389 },
  { lower := 6517, upper := 6542, witness := RowWitness.topPrime 6491 },
  { lower := 6543, upper := 6549, witness := RowWitness.topPrime 6529 },
  { lower := 6561, upper := 6568, witness := RowWitness.topPrime 6553 },
  { lower := 6647, upper := 6688, witness := RowWitness.topPrime 6637 },
  { lower := 6689, upper := 6698, witness := RowWitness.topPrime 6689 },
  { lower := 6727, upper := 6770, witness := RowWitness.topPrime 6719 },
  { lower := 6771, upper := 6778, witness := RowWitness.topPrime 6763 },
  { lower := 6845, upper := 6855, witness := RowWitness.topPrime 6841 },
  { lower := 6859, upper := 6908, witness := RowWitness.topPrime 6857 },
  { lower := 6909, upper := 6926, witness := RowWitness.topPrime 6907 },
  { lower := 7203, upper := 7244, witness := RowWitness.topPrime 7193 },
  { lower := 7245, upper := 7271, witness := RowWitness.topPrime 7243 },
  { lower := 7406, upper := 7444, witness := RowWitness.topPrime 7393 },
  { lower := 7445, upper := 7447, witness := RowWitness.topPrime 7433 },
  { lower := 7514, upper := 7558, witness := RowWitness.topPrime 7507 },
  { lower := 7559, upper := 7565, witness := RowWitness.topPrime 7559 },
  { lower := 7569, upper := 7612, witness := RowWitness.topPrime 7561 },
  { lower := 7613, upper := 7620, witness := RowWitness.topPrime 7607 },
  { lower := 7935, upper := 7940, witness := RowWitness.topPrime 7933 },
  { lower := 7942, upper := 7988, witness := RowWitness.topPrime 7937 },
  { lower := 7989, upper := 7993, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8037, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8143, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8260, witness := RowWitness.topPrime 8209 },
  { lower := 8261, upper := 8265, witness := RowWitness.topPrime 8243 },
  { lower := 8405, upper := 8440, witness := RowWitness.topPrime 8389 },
  { lower := 8441, upper := 8456, witness := RowWitness.topPrime 8431 },
  { lower := 8664, upper := 8700, witness := RowWitness.topPrime 8663 },
  { lower := 8750, upper := 8798, witness := RowWitness.topPrime 8747 },
  { lower := 8799, upper := 8799, witness := RowWitness.topPrime 8783 },
  { lower := 9025, upper := 9044, witness := RowWitness.topPrime 9013 },
  { lower := 9251, upper := 9292, witness := RowWitness.topPrime 9241 },
  { lower := 9293, upper := 9302, witness := RowWitness.topPrime 9293 },
  { lower := 9386, upper := 9426, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9528, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9652, witness := RowWitness.topPrime 9601 },
  { lower := 9653, upper := 9655, witness := RowWitness.topPrime 9649 },
  { lower := 10051, upper := 10051, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10130, witness := RowWitness.topPrime 10079 },
  { lower := 10131, upper := 10143, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10257, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10618, witness := RowWitness.topPrime 10567 },
  { lower := 10619, upper := 10622, witness := RowWitness.topPrime 10613 },
  { lower := 10625, upper := 10631, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10676, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10960, witness := RowWitness.topPrime 10909 },
  { lower := 10961, upper := 10986, witness := RowWitness.topPrime 10957 },
  { lower := 11094, upper := 11096, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11144, witness := RowWitness.topPrime 11093 },
  { lower := 11145, upper := 11145, witness := RowWitness.topPrime 11131 },
  { lower := 11664, upper := 11689, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11794, witness := RowWitness.topPrime 11743 },
  { lower := 11795, upper := 11818, witness := RowWitness.topPrime 11789 },
  { lower := 12005, upper := 12030, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12339, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12544, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13172, witness := RowWitness.topPrime 13121 },
  { lower := 13173, upper := 13173, witness := RowWitness.topPrime 13171 },
  { lower := 13254, upper := 13276, witness := RowWitness.topPrime 13249 },
  { lower := 13454, upper := 13502, witness := RowWitness.topPrime 13451 },
  { lower := 13503, upper := 13505, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13741, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13780, witness := RowWitness.topPrime 13729 },
  { lower := 13781, upper := 13801, witness := RowWitness.topPrime 13781 },
  { lower := 14406, upper := 14452, witness := RowWitness.topPrime 14401 },
  { lower := 14453, upper := 14457, witness := RowWitness.topPrime 14449 },
  { lower := 15138, upper := 15180, witness := RowWitness.topPrime 15137 },
  { lower := 15979, upper := 16023, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16388, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16435, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16838, witness := RowWitness.topPrime 16787 },
  { lower := 16839, upper := 16861, witness := RowWitness.topPrime 16831 },
  { lower := 17303, upper := 17349, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17712, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18276, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18532, witness := RowWitness.topPrime 18481 },
  { lower := 18533, upper := 18542, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19217, witness := RowWitness.topPrime 19207 },
  { lower := 19220, upper := 19259, witness := RowWitness.topPrime 19219 },
  { lower := 19683, upper := 19703, witness := RowWitness.topPrime 19681 },
  { lower := 20181, upper := 20228, witness := RowWitness.topPrime 20177 },
  { lower := 20229, upper := 20232, witness := RowWitness.topPrime 20219 },
  { lower := 20577, upper := 20586, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21914, witness := RowWitness.topPrime 21863 },
  { lower := 21915, upper := 21926, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22141, witness := RowWitness.topPrime 22093 },
  { lower := 24037, upper := 24080, witness := RowWitness.topPrime 24029 },
  { lower := 24081, upper := 24088, witness := RowWitness.topPrime 24077 },
  { lower := 24334, upper := 24350, witness := RowWitness.topPrime 24329 },
  { lower := 24576, upper := 24616, witness := RowWitness.topPrime 24571 },
  { lower := 28577, upper := 28612, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28768, witness := RowWitness.topPrime 28729 },
  { lower := 30618, upper := 30644, witness := RowWitness.topPrime 30593 },
  { lower := 30645, upper := 30664, witness := RowWitness.topPrime 30643 },
  { lower := 31250, upper := 31264, witness := RowWitness.topPrime 31249 },
  { lower := 31944, upper := 31958, witness := RowWitness.topPrime 31907 },
  { lower := 31959, upper := 31990, witness := RowWitness.topPrime 31957 },
  { lower := 32805, upper := 32819, witness := RowWitness.topPrime 32803 },
  { lower := 32856, upper := 32856, witness := RowWitness.topPrime 32843 },
  { lower := 33620, upper := 33665, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34426, witness := RowWitness.topPrime 34381 },
  { lower := 35344, upper := 35352, witness := RowWitness.topPrime 35339 },
  { lower := 36982, upper := 37030, witness := RowWitness.topPrime 36979 },
  { lower := 37031, upper := 37031, witness := RowWitness.topPrime 37021 },
  { lower := 43750, upper := 43772, witness := RowWitness.topPrime 43721 },
  { lower := 43773, upper := 43791, witness := RowWitness.topPrime 43759 },
  { lower := 44217, upper := 44231, witness := RowWitness.topPrime 44207 },
  { lower := 48020, upper := 48064, witness := RowWitness.topPrime 48017 },
  { lower := 49152, upper := 49181, witness := RowWitness.topPrime 49139 },
  { lower := 65625, upper := 65661, witness := RowWitness.topPrime 65617 },
  { lower := 68782, upper := 68801, witness := RowWitness.topPrime 68777 },
  { lower := 73205, upper := 73218, witness := RowWitness.topPrime 73189 },
  { lower := 98304, upper := 98311, witness := RowWitness.topPrime 98299 }
]

def row052_layers : List CoverLayer := [
  { lower := 2652, upper := 5304, M := 32 },
  { lower := 5304, upper := 10608, M := 29 },
  { lower := 10608, upper := 21216, M := 26 },
  { lower := 21216, upper := 42432, M := 24 },
  { lower := 42432, upper := 84864, M := 22 },
  { lower := 84864, upper := 169728, M := 20 },
  { lower := 169728, upper := 339456, M := 18 },
  { lower := 339456, upper := 678912, M := 16 },
  { lower := 678912, upper := 1357824, M := 15 },
  { lower := 1357824, upper := 2715648, M := 13 },
  { lower := 2715648, upper := 5431296, M := 12 },
  { lower := 5431296, upper := 10862592, M := 11 },
  { lower := 10862592, upper := 21725184, M := 10 },
  { lower := 21725184, upper := 43450368, M := 9 },
  { lower := 43450368, upper := 86900736, M := 8 },
  { lower := 86900736, upper := 173801472, M := 8 },
  { lower := 173801472, upper := 347602944, M := 7 },
  { lower := 347602944, upper := 695205888, M := 6 },
  { lower := 695205888, upper := 1390411776, M := 6 },
  { lower := 1390411776, upper := 2780823552, M := 5 },
  { lower := 2780823552, upper := 5561647104, M := 5 },
  { lower := 5561647104, upper := 11123294208, M := 4 },
  { lower := 11123294208, upper := 22246588416, M := 4 },
  { lower := 22246588416, upper := 44493176832, M := 4 },
  { lower := 44493176832, upper := 88986353664, M := 3 },
  { lower := 88986353664, upper := 177972707328, M := 3 },
  { lower := 177972707328, upper := 355945414656, M := 3 },
  { lower := 355945414656, upper := 711890829312, M := 3 },
  { lower := 711890829312, upper := 1423781658624, M := 2 },
  { lower := 1423781658624, upper := 2847563317248, M := 2 },
  { lower := 2847563317248, upper := 5695126634496, M := 2 },
  { lower := 5695126634496, upper := 11390253268992, M := 2 },
  { lower := 11390253268992, upper := 22780506537984, M := 2 },
  { lower := 22780506537984, upper := 45561013075968, M := 2 },
  { lower := 45561013075968, upper := 91122026151936, M := 2 },
  { lower := 91122026151936, upper := 100000000000000, M := 1 }
]

def row052 : FiniteCoverRow := {
  height := row052_height,
  goods := row052_goods,
  layers := row052_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good000_checked :
    goodSegmentCheck 52 17 35
      { lower := 106, upper := 154, witness := RowWitness.topPrime 103 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good001_checked :
    goodSegmentCheck 52 17 35
      { lower := 155, upper := 202, witness := RowWitness.topPrime 151 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good002_checked :
    goodSegmentCheck 52 17 35
      { lower := 203, upper := 250, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good003_checked :
    goodSegmentCheck 52 17 35
      { lower := 251, upper := 302, witness := RowWitness.topPrime 251 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good004_checked :
    goodSegmentCheck 52 17 35
      { lower := 303, upper := 344, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good005_checked :
    goodSegmentCheck 52 17 35
      { lower := 345, upper := 388, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good006_checked :
    goodSegmentCheck 52 17 35
      { lower := 389, upper := 440, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good007_checked :
    goodSegmentCheck 52 17 35
      { lower := 441, upper := 490, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good008_checked :
    goodSegmentCheck 52 17 35
      { lower := 491, upper := 542, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good009_checked :
    goodSegmentCheck 52 17 35
      { lower := 543, upper := 592, witness := RowWitness.topPrime 541 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good010_checked :
    goodSegmentCheck 52 17 35
      { lower := 593, upper := 644, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good011_checked :
    goodSegmentCheck 52 17 35
      { lower := 645, upper := 694, witness := RowWitness.topPrime 643 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good012_checked :
    goodSegmentCheck 52 17 35
      { lower := 695, upper := 742, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good013_checked :
    goodSegmentCheck 52 17 35
      { lower := 743, upper := 794, witness := RowWitness.topPrime 743 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good014_checked :
    goodSegmentCheck 52 17 35
      { lower := 795, upper := 838, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good015_checked :
    goodSegmentCheck 52 17 35
      { lower := 839, upper := 890, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good016_checked :
    goodSegmentCheck 52 17 35
      { lower := 891, upper := 938, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good017_checked :
    goodSegmentCheck 52 17 35
      { lower := 939, upper := 988, witness := RowWitness.topPrime 937 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good018_checked :
    goodSegmentCheck 52 17 35
      { lower := 989, upper := 1034, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good019_checked :
    goodSegmentCheck 52 17 35
      { lower := 1035, upper := 1084, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good020_checked :
    goodSegmentCheck 52 17 35
      { lower := 1085, upper := 1120, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good021_checked :
    goodSegmentCheck 52 17 35
      { lower := 1121, upper := 1168, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good022_checked :
    goodSegmentCheck 52 17 35
      { lower := 1169, upper := 1214, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good023_checked :
    goodSegmentCheck 52 17 35
      { lower := 1215, upper := 1264, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good024_checked :
    goodSegmentCheck 52 17 35
      { lower := 1265, upper := 1310, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good025_checked :
    goodSegmentCheck 52 17 35
      { lower := 1311, upper := 1358, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good026_checked :
    goodSegmentCheck 52 17 35
      { lower := 1359, upper := 1378, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good027_checked :
    goodSegmentCheck 52 17 35
      { lower := 1379, upper := 1424, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good028_checked :
    goodSegmentCheck 52 17 35
      { lower := 1425, upper := 1474, witness := RowWitness.topPrime 1423 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good029_checked :
    goodSegmentCheck 52 17 35
      { lower := 1475, upper := 1522, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good030_checked :
    goodSegmentCheck 52 17 35
      { lower := 1523, upper := 1574, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good031_checked :
    goodSegmentCheck 52 17 35
      { lower := 1575, upper := 1622, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good032_checked :
    goodSegmentCheck 52 17 35
      { lower := 1623, upper := 1672, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good033_checked :
    goodSegmentCheck 52 17 35
      { lower := 1673, upper := 1720, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good034_checked :
    goodSegmentCheck 52 17 35
      { lower := 1721, upper := 1772, witness := RowWitness.topPrime 1721 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good035_checked :
    goodSegmentCheck 52 17 35
      { lower := 1773, upper := 1810, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good036_checked :
    goodSegmentCheck 52 17 35
      { lower := 1811, upper := 1862, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good037_checked :
    goodSegmentCheck 52 17 35
      { lower := 1863, upper := 1912, witness := RowWitness.topPrime 1861 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good038_checked :
    goodSegmentCheck 52 17 35
      { lower := 1913, upper := 1964, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good039_checked :
    goodSegmentCheck 52 17 35
      { lower := 1965, upper := 2002, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good040_checked :
    goodSegmentCheck 52 17 35
      { lower := 2003, upper := 2054, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good041_checked :
    goodSegmentCheck 52 17 35
      { lower := 2055, upper := 2104, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good042_checked :
    goodSegmentCheck 52 17 35
      { lower := 2105, upper := 2150, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good043_checked :
    goodSegmentCheck 52 17 35
      { lower := 2151, upper := 2194, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good044_checked :
    goodSegmentCheck 52 17 35
      { lower := 2195, upper := 2230, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good045_checked :
    goodSegmentCheck 52 17 35
      { lower := 2231, upper := 2272, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good046_checked :
    goodSegmentCheck 52 17 35
      { lower := 2273, upper := 2324, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good047_checked :
    goodSegmentCheck 52 17 35
      { lower := 2325, upper := 2362, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good048_checked :
    goodSegmentCheck 52 17 35
      { lower := 2363, upper := 2408, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good049_checked :
    goodSegmentCheck 52 17 35
      { lower := 2409, upper := 2450, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good050_checked :
    goodSegmentCheck 52 17 35
      { lower := 2451, upper := 2498, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good051_checked :
    goodSegmentCheck 52 17 35
      { lower := 2499, upper := 2528, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good052_checked :
    goodSegmentCheck 52 17 35
      { lower := 2529, upper := 2572, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good053_checked :
    goodSegmentCheck 52 17 35
      { lower := 2573, upper := 2608, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good054_checked :
    goodSegmentCheck 52 17 35
      { lower := 2609, upper := 2660, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good055_checked :
    goodSegmentCheck 52 17 35
      { lower := 2661, upper := 2710, witness := RowWitness.topPrime 2659 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good056_checked :
    goodSegmentCheck 52 17 35
      { lower := 2711, upper := 2713, witness := RowWitness.topPrime 2711 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good057_checked :
    goodSegmentCheck 52 17 35
      { lower := 2744, upper := 2792, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good058_checked :
    goodSegmentCheck 52 17 35
      { lower := 2793, upper := 2801, witness := RowWitness.topPrime 2791 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good059_checked :
    goodSegmentCheck 52 17 35
      { lower := 2883, upper := 2930, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good060_checked :
    goodSegmentCheck 52 17 35
      { lower := 2931, upper := 2955, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good061_checked :
    goodSegmentCheck 52 17 35
      { lower := 3025, upper := 3051, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good062_checked :
    goodSegmentCheck 52 17 35
      { lower := 3072, upper := 3076, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good063_checked :
    goodSegmentCheck 52 17 35
      { lower := 3087, upper := 3123, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good064_checked :
    goodSegmentCheck 52 17 35
      { lower := 3125, upper := 3138, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good065_checked :
    goodSegmentCheck 52 17 35
      { lower := 3146, upper := 3188, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good066_checked :
    goodSegmentCheck 52 17 35
      { lower := 3189, upper := 3225, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good067_checked :
    goodSegmentCheck 52 17 35
      { lower := 3250, upper := 3280, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good068_checked :
    goodSegmentCheck 52 17 35
      { lower := 3281, upper := 3301, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good069_checked :
    goodSegmentCheck 52 17 35
      { lower := 3364, upper := 3412, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good070_checked :
    goodSegmentCheck 52 17 35
      { lower := 3413, upper := 3453, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good071_checked :
    goodSegmentCheck 52 17 35
      { lower := 3468, upper := 3481, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good072_checked :
    goodSegmentCheck 52 17 35
      { lower := 3500, upper := 3550, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good073_checked :
    goodSegmentCheck 52 17 35
      { lower := 3551, upper := 3551, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good074_checked :
    goodSegmentCheck 52 17 35
      { lower := 3610, upper := 3658, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good075_checked :
    goodSegmentCheck 52 17 35
      { lower := 3659, upper := 3681, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good076_checked :
    goodSegmentCheck 52 17 35
      { lower := 3703, upper := 3752, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good077_checked :
    goodSegmentCheck 52 17 35
      { lower := 3753, upper := 3790, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good078_checked :
    goodSegmentCheck 52 17 35
      { lower := 3791, upper := 3808, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good079_checked :
    goodSegmentCheck 52 17 35
      { lower := 3872, upper := 3914, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good080_checked :
    goodSegmentCheck 52 17 35
      { lower := 3915, upper := 3926, witness := RowWitness.topPrime 3911 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good081_checked :
    goodSegmentCheck 52 17 35
      { lower := 3993, upper := 4040, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good082_checked :
    goodSegmentCheck 52 17 35
      { lower := 4041, upper := 4044, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good083_checked :
    goodSegmentCheck 52 17 35
      { lower := 4046, upper := 4051, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good084_checked :
    goodSegmentCheck 52 17 35
      { lower := 4096, upper := 4097, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good085_checked :
    goodSegmentCheck 52 17 35
      { lower := 4107, upper := 4150, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good086_checked :
    goodSegmentCheck 52 17 35
      { lower := 4151, upper := 4167, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good087_checked :
    goodSegmentCheck 52 17 35
      { lower := 4232, upper := 4256, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good088_checked :
    goodSegmentCheck 52 17 35
      { lower := 4335, upper := 4378, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good089_checked :
    goodSegmentCheck 52 17 35
      { lower := 4379, upper := 4424, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good090_checked :
    goodSegmentCheck 52 17 35
      { lower := 4425, upper := 4445, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good091_checked :
    goodSegmentCheck 52 17 35
      { lower := 4459, upper := 4469, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good092_checked :
    goodSegmentCheck 52 17 35
      { lower := 4624, upper := 4668, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good093_checked :
    goodSegmentCheck 52 17 35
      { lower := 4802, upper := 4852, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good094_checked :
    goodSegmentCheck 52 17 35
      { lower := 4853, upper := 4853, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good095_checked :
    goodSegmentCheck 52 17 35
      { lower := 5043, upper := 5090, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good096_checked :
    goodSegmentCheck 52 17 35
      { lower := 5091, upper := 5097, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good097_checked :
    goodSegmentCheck 52 17 35
      { lower := 5103, upper := 5105, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good098_checked :
    goodSegmentCheck 52 17 35
      { lower := 5120, upper := 5170, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good099_checked :
    goodSegmentCheck 52 17 35
      { lower := 5171, upper := 5171, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good100_checked :
    goodSegmentCheck 52 17 35
      { lower := 5324, upper := 5341, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good101_checked :
    goodSegmentCheck 52 17 35
      { lower := 5346, upper := 5375, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good102_checked :
    goodSegmentCheck 52 17 35
      { lower := 5488, upper := 5534, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good103_checked :
    goodSegmentCheck 52 17 35
      { lower := 5535, upper := 5539, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good104_checked :
    goodSegmentCheck 52 17 35
      { lower := 5589, upper := 5598, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good105_checked :
    goodSegmentCheck 52 17 35
      { lower := 5625, upper := 5640, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good106_checked :
    goodSegmentCheck 52 17 35
      { lower := 5776, upper := 5800, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good107_checked :
    goodSegmentCheck 52 17 35
      { lower := 5801, upper := 5852, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good108_checked :
    goodSegmentCheck 52 17 35
      { lower := 5853, upper := 5882, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good109_checked :
    goodSegmentCheck 52 17 35
      { lower := 6075, upper := 6120, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good110_checked :
    goodSegmentCheck 52 17 35
      { lower := 6144, upper := 6194, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good111_checked :
    goodSegmentCheck 52 17 35
      { lower := 6195, upper := 6195, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good112_checked :
    goodSegmentCheck 52 17 35
      { lower := 6348, upper := 6394, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good113_checked :
    goodSegmentCheck 52 17 35
      { lower := 6395, upper := 6399, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good114_checked :
    goodSegmentCheck 52 17 35
      { lower := 6517, upper := 6542, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good115_checked :
    goodSegmentCheck 52 17 35
      { lower := 6543, upper := 6549, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good116_checked :
    goodSegmentCheck 52 17 35
      { lower := 6561, upper := 6568, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good117_checked :
    goodSegmentCheck 52 17 35
      { lower := 6647, upper := 6688, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good118_checked :
    goodSegmentCheck 52 17 35
      { lower := 6689, upper := 6698, witness := RowWitness.topPrime 6689 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good119_checked :
    goodSegmentCheck 52 17 35
      { lower := 6727, upper := 6770, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good120_checked :
    goodSegmentCheck 52 17 35
      { lower := 6771, upper := 6778, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good121_checked :
    goodSegmentCheck 52 17 35
      { lower := 6845, upper := 6855, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good122_checked :
    goodSegmentCheck 52 17 35
      { lower := 6859, upper := 6908, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good123_checked :
    goodSegmentCheck 52 17 35
      { lower := 6909, upper := 6926, witness := RowWitness.topPrime 6907 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good124_checked :
    goodSegmentCheck 52 17 35
      { lower := 7203, upper := 7244, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good125_checked :
    goodSegmentCheck 52 17 35
      { lower := 7245, upper := 7271, witness := RowWitness.topPrime 7243 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good126_checked :
    goodSegmentCheck 52 17 35
      { lower := 7406, upper := 7444, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good127_checked :
    goodSegmentCheck 52 17 35
      { lower := 7445, upper := 7447, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good128_checked :
    goodSegmentCheck 52 17 35
      { lower := 7514, upper := 7558, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good129_checked :
    goodSegmentCheck 52 17 35
      { lower := 7559, upper := 7565, witness := RowWitness.topPrime 7559 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good130_checked :
    goodSegmentCheck 52 17 35
      { lower := 7569, upper := 7612, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good131_checked :
    goodSegmentCheck 52 17 35
      { lower := 7613, upper := 7620, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good132_checked :
    goodSegmentCheck 52 17 35
      { lower := 7935, upper := 7940, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good133_checked :
    goodSegmentCheck 52 17 35
      { lower := 7942, upper := 7988, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good134_checked :
    goodSegmentCheck 52 17 35
      { lower := 7989, upper := 7993, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good135_checked :
    goodSegmentCheck 52 17 35
      { lower := 8019, upper := 8037, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good136_checked :
    goodSegmentCheck 52 17 35
      { lower := 8125, upper := 8143, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good137_checked :
    goodSegmentCheck 52 17 35
      { lower := 8214, upper := 8260, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good138_checked :
    goodSegmentCheck 52 17 35
      { lower := 8261, upper := 8265, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good139_checked :
    goodSegmentCheck 52 17 35
      { lower := 8405, upper := 8440, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good140_checked :
    goodSegmentCheck 52 17 35
      { lower := 8441, upper := 8456, witness := RowWitness.topPrime 8431 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good141_checked :
    goodSegmentCheck 52 17 35
      { lower := 8664, upper := 8700, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good142_checked :
    goodSegmentCheck 52 17 35
      { lower := 8750, upper := 8798, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good143_checked :
    goodSegmentCheck 52 17 35
      { lower := 8799, upper := 8799, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good144_checked :
    goodSegmentCheck 52 17 35
      { lower := 9025, upper := 9044, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good145_checked :
    goodSegmentCheck 52 17 35
      { lower := 9251, upper := 9292, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good146_checked :
    goodSegmentCheck 52 17 35
      { lower := 9293, upper := 9302, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good147_checked :
    goodSegmentCheck 52 17 35
      { lower := 9386, upper := 9426, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good148_checked :
    goodSegmentCheck 52 17 35
      { lower := 9522, upper := 9528, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good149_checked :
    goodSegmentCheck 52 17 35
      { lower := 9604, upper := 9652, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good150_checked :
    goodSegmentCheck 52 17 35
      { lower := 9653, upper := 9655, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good151_checked :
    goodSegmentCheck 52 17 35
      { lower := 10051, upper := 10051, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good152_checked :
    goodSegmentCheck 52 17 35
      { lower := 10086, upper := 10130, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good153_checked :
    goodSegmentCheck 52 17 35
      { lower := 10131, upper := 10143, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good154_checked :
    goodSegmentCheck 52 17 35
      { lower := 10240, upper := 10257, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good155_checked :
    goodSegmentCheck 52 17 35
      { lower := 10580, upper := 10618, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good156_checked :
    goodSegmentCheck 52 17 35
      { lower := 10619, upper := 10622, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good157_checked :
    goodSegmentCheck 52 17 35
      { lower := 10625, upper := 10631, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good158_checked :
    goodSegmentCheck 52 17 35
      { lower := 10648, upper := 10676, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good159_checked :
    goodSegmentCheck 52 17 35
      { lower := 10935, upper := 10960, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good160_checked :
    goodSegmentCheck 52 17 35
      { lower := 10961, upper := 10986, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good161_checked :
    goodSegmentCheck 52 17 35
      { lower := 11094, upper := 11096, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good162_checked :
    goodSegmentCheck 52 17 35
      { lower := 11109, upper := 11144, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good163_checked :
    goodSegmentCheck 52 17 35
      { lower := 11145, upper := 11145, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good164_checked :
    goodSegmentCheck 52 17 35
      { lower := 11664, upper := 11689, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good165_checked :
    goodSegmentCheck 52 17 35
      { lower := 11774, upper := 11794, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good166_checked :
    goodSegmentCheck 52 17 35
      { lower := 11795, upper := 11818, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good167_checked :
    goodSegmentCheck 52 17 35
      { lower := 12005, upper := 12030, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good168_checked :
    goodSegmentCheck 52 17 35
      { lower := 12321, upper := 12339, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good169_checked :
    goodSegmentCheck 52 17 35
      { lower := 12500, upper := 12544, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good170_checked :
    goodSegmentCheck 52 17 35
      { lower := 13125, upper := 13172, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good171_checked :
    goodSegmentCheck 52 17 35
      { lower := 13173, upper := 13173, witness := RowWitness.topPrime 13171 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good172_checked :
    goodSegmentCheck 52 17 35
      { lower := 13254, upper := 13276, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good173_checked :
    goodSegmentCheck 52 17 35
      { lower := 13454, upper := 13502, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good174_checked :
    goodSegmentCheck 52 17 35
      { lower := 13503, upper := 13505, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good175_checked :
    goodSegmentCheck 52 17 35
      { lower := 13718, upper := 13741, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good176_checked :
    goodSegmentCheck 52 17 35
      { lower := 13750, upper := 13780, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good177_checked :
    goodSegmentCheck 52 17 35
      { lower := 13781, upper := 13801, witness := RowWitness.topPrime 13781 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good178_checked :
    goodSegmentCheck 52 17 35
      { lower := 14406, upper := 14452, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good179_checked :
    goodSegmentCheck 52 17 35
      { lower := 14453, upper := 14457, witness := RowWitness.topPrime 14449 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good180_checked :
    goodSegmentCheck 52 17 35
      { lower := 15138, upper := 15180, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good181_checked :
    goodSegmentCheck 52 17 35
      { lower := 15979, upper := 16023, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good182_checked :
    goodSegmentCheck 52 17 35
      { lower := 16384, upper := 16388, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good183_checked :
    goodSegmentCheck 52 17 35
      { lower := 16428, upper := 16435, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good184_checked :
    goodSegmentCheck 52 17 35
      { lower := 16807, upper := 16838, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good185_checked :
    goodSegmentCheck 52 17 35
      { lower := 16839, upper := 16861, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good186_checked :
    goodSegmentCheck 52 17 35
      { lower := 17303, upper := 17349, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good187_checked :
    goodSegmentCheck 52 17 35
      { lower := 17672, upper := 17712, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good188_checked :
    goodSegmentCheck 52 17 35
      { lower := 18259, upper := 18276, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good189_checked :
    goodSegmentCheck 52 17 35
      { lower := 18491, upper := 18532, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good190_checked :
    goodSegmentCheck 52 17 35
      { lower := 18533, upper := 18542, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good191_checked :
    goodSegmentCheck 52 17 35
      { lower := 19208, upper := 19217, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good192_checked :
    goodSegmentCheck 52 17 35
      { lower := 19220, upper := 19259, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good193_checked :
    goodSegmentCheck 52 17 35
      { lower := 19683, upper := 19703, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good194_checked :
    goodSegmentCheck 52 17 35
      { lower := 20181, upper := 20228, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good195_checked :
    goodSegmentCheck 52 17 35
      { lower := 20229, upper := 20232, witness := RowWitness.topPrime 20219 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good196_checked :
    goodSegmentCheck 52 17 35
      { lower := 20577, upper := 20586, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good197_checked :
    goodSegmentCheck 52 17 35
      { lower := 21870, upper := 21914, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good198_checked :
    goodSegmentCheck 52 17 35
      { lower := 21915, upper := 21926, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good199_checked :
    goodSegmentCheck 52 17 35
      { lower := 22103, upper := 22141, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good200_checked :
    goodSegmentCheck 52 17 35
      { lower := 24037, upper := 24080, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good201_checked :
    goodSegmentCheck 52 17 35
      { lower := 24081, upper := 24088, witness := RowWitness.topPrime 24077 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good202_checked :
    goodSegmentCheck 52 17 35
      { lower := 24334, upper := 24350, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good203_checked :
    goodSegmentCheck 52 17 35
      { lower := 24576, upper := 24616, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good204_checked :
    goodSegmentCheck 52 17 35
      { lower := 28577, upper := 28612, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good205_checked :
    goodSegmentCheck 52 17 35
      { lower := 28749, upper := 28768, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good206_checked :
    goodSegmentCheck 52 17 35
      { lower := 30618, upper := 30644, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good207_checked :
    goodSegmentCheck 52 17 35
      { lower := 30645, upper := 30664, witness := RowWitness.topPrime 30643 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good208_checked :
    goodSegmentCheck 52 17 35
      { lower := 31250, upper := 31264, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good209_checked :
    goodSegmentCheck 52 17 35
      { lower := 31944, upper := 31958, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good210_checked :
    goodSegmentCheck 52 17 35
      { lower := 31959, upper := 31990, witness := RowWitness.topPrime 31957 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good211_checked :
    goodSegmentCheck 52 17 35
      { lower := 32805, upper := 32819, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good212_checked :
    goodSegmentCheck 52 17 35
      { lower := 32856, upper := 32856, witness := RowWitness.topPrime 32843 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good213_checked :
    goodSegmentCheck 52 17 35
      { lower := 33620, upper := 33665, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good214_checked :
    goodSegmentCheck 52 17 35
      { lower := 34391, upper := 34426, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good215_checked :
    goodSegmentCheck 52 17 35
      { lower := 35344, upper := 35352, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good216_checked :
    goodSegmentCheck 52 17 35
      { lower := 36982, upper := 37030, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good217_checked :
    goodSegmentCheck 52 17 35
      { lower := 37031, upper := 37031, witness := RowWitness.topPrime 37021 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good218_checked :
    goodSegmentCheck 52 17 35
      { lower := 43750, upper := 43772, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good219_checked :
    goodSegmentCheck 52 17 35
      { lower := 43773, upper := 43791, witness := RowWitness.topPrime 43759 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good220_checked :
    goodSegmentCheck 52 17 35
      { lower := 44217, upper := 44231, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good221_checked :
    goodSegmentCheck 52 17 35
      { lower := 48020, upper := 48064, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good222_checked :
    goodSegmentCheck 52 17 35
      { lower := 49152, upper := 49181, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good223_checked :
    goodSegmentCheck 52 17 35
      { lower := 65625, upper := 65661, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good224_checked :
    goodSegmentCheck 52 17 35
      { lower := 68782, upper := 68801, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good225_checked :
    goodSegmentCheck 52 17 35
      { lower := 73205, upper := 73218, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good226_checked :
    goodSegmentCheck 52 17 35
      { lower := 98304, upper := 98311, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good226_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_goods_checked :
    row052.goods.all (goodSegmentCheck row052.height.i row052.height.r row052.height.s) = true := by
  change row052_goods.all (goodSegmentCheck 52 17 35) = true
  simp only [row052_goods, List.all_cons, List.all_nil,
    row052_good000_checked,
    row052_good001_checked,
    row052_good002_checked,
    row052_good003_checked,
    row052_good004_checked,
    row052_good005_checked,
    row052_good006_checked,
    row052_good007_checked,
    row052_good008_checked,
    row052_good009_checked,
    row052_good010_checked,
    row052_good011_checked,
    row052_good012_checked,
    row052_good013_checked,
    row052_good014_checked,
    row052_good015_checked,
    row052_good016_checked,
    row052_good017_checked,
    row052_good018_checked,
    row052_good019_checked,
    row052_good020_checked,
    row052_good021_checked,
    row052_good022_checked,
    row052_good023_checked,
    row052_good024_checked,
    row052_good025_checked,
    row052_good026_checked,
    row052_good027_checked,
    row052_good028_checked,
    row052_good029_checked,
    row052_good030_checked,
    row052_good031_checked,
    row052_good032_checked,
    row052_good033_checked,
    row052_good034_checked,
    row052_good035_checked,
    row052_good036_checked,
    row052_good037_checked,
    row052_good038_checked,
    row052_good039_checked,
    row052_good040_checked,
    row052_good041_checked,
    row052_good042_checked,
    row052_good043_checked,
    row052_good044_checked,
    row052_good045_checked,
    row052_good046_checked,
    row052_good047_checked,
    row052_good048_checked,
    row052_good049_checked,
    row052_good050_checked,
    row052_good051_checked,
    row052_good052_checked,
    row052_good053_checked,
    row052_good054_checked,
    row052_good055_checked,
    row052_good056_checked,
    row052_good057_checked,
    row052_good058_checked,
    row052_good059_checked,
    row052_good060_checked,
    row052_good061_checked,
    row052_good062_checked,
    row052_good063_checked,
    row052_good064_checked,
    row052_good065_checked,
    row052_good066_checked,
    row052_good067_checked,
    row052_good068_checked,
    row052_good069_checked,
    row052_good070_checked,
    row052_good071_checked,
    row052_good072_checked,
    row052_good073_checked,
    row052_good074_checked,
    row052_good075_checked,
    row052_good076_checked,
    row052_good077_checked,
    row052_good078_checked,
    row052_good079_checked,
    row052_good080_checked,
    row052_good081_checked,
    row052_good082_checked,
    row052_good083_checked,
    row052_good084_checked,
    row052_good085_checked,
    row052_good086_checked,
    row052_good087_checked,
    row052_good088_checked,
    row052_good089_checked,
    row052_good090_checked,
    row052_good091_checked,
    row052_good092_checked,
    row052_good093_checked,
    row052_good094_checked,
    row052_good095_checked,
    row052_good096_checked,
    row052_good097_checked,
    row052_good098_checked,
    row052_good099_checked,
    row052_good100_checked,
    row052_good101_checked,
    row052_good102_checked,
    row052_good103_checked,
    row052_good104_checked,
    row052_good105_checked,
    row052_good106_checked,
    row052_good107_checked,
    row052_good108_checked,
    row052_good109_checked,
    row052_good110_checked,
    row052_good111_checked,
    row052_good112_checked,
    row052_good113_checked,
    row052_good114_checked,
    row052_good115_checked,
    row052_good116_checked,
    row052_good117_checked,
    row052_good118_checked,
    row052_good119_checked,
    row052_good120_checked,
    row052_good121_checked,
    row052_good122_checked,
    row052_good123_checked,
    row052_good124_checked,
    row052_good125_checked,
    row052_good126_checked,
    row052_good127_checked,
    row052_good128_checked,
    row052_good129_checked,
    row052_good130_checked,
    row052_good131_checked,
    row052_good132_checked,
    row052_good133_checked,
    row052_good134_checked,
    row052_good135_checked,
    row052_good136_checked,
    row052_good137_checked,
    row052_good138_checked,
    row052_good139_checked,
    row052_good140_checked,
    row052_good141_checked,
    row052_good142_checked,
    row052_good143_checked,
    row052_good144_checked,
    row052_good145_checked,
    row052_good146_checked,
    row052_good147_checked,
    row052_good148_checked,
    row052_good149_checked,
    row052_good150_checked,
    row052_good151_checked,
    row052_good152_checked,
    row052_good153_checked,
    row052_good154_checked,
    row052_good155_checked,
    row052_good156_checked,
    row052_good157_checked,
    row052_good158_checked,
    row052_good159_checked,
    row052_good160_checked,
    row052_good161_checked,
    row052_good162_checked,
    row052_good163_checked,
    row052_good164_checked,
    row052_good165_checked,
    row052_good166_checked,
    row052_good167_checked,
    row052_good168_checked,
    row052_good169_checked,
    row052_good170_checked,
    row052_good171_checked,
    row052_good172_checked,
    row052_good173_checked,
    row052_good174_checked,
    row052_good175_checked,
    row052_good176_checked,
    row052_good177_checked,
    row052_good178_checked,
    row052_good179_checked,
    row052_good180_checked,
    row052_good181_checked,
    row052_good182_checked,
    row052_good183_checked,
    row052_good184_checked,
    row052_good185_checked,
    row052_good186_checked,
    row052_good187_checked,
    row052_good188_checked,
    row052_good189_checked,
    row052_good190_checked,
    row052_good191_checked,
    row052_good192_checked,
    row052_good193_checked,
    row052_good194_checked,
    row052_good195_checked,
    row052_good196_checked,
    row052_good197_checked,
    row052_good198_checked,
    row052_good199_checked,
    row052_good200_checked,
    row052_good201_checked,
    row052_good202_checked,
    row052_good203_checked,
    row052_good204_checked,
    row052_good205_checked,
    row052_good206_checked,
    row052_good207_checked,
    row052_good208_checked,
    row052_good209_checked,
    row052_good210_checked,
    row052_good211_checked,
    row052_good212_checked,
    row052_good213_checked,
    row052_good214_checked,
    row052_good215_checked,
    row052_good216_checked,
    row052_good217_checked,
    row052_good218_checked,
    row052_good219_checked,
    row052_good220_checked,
    row052_good221_checked,
    row052_good222_checked,
    row052_good223_checked,
    row052_good224_checked,
    row052_good225_checked,
    row052_good226_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_registered :
    decide (row052.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row052_small_checked :
    coverCheck (2 * row052.height.i + 2) (row052.height.i * (row052.height.i - 1) - 1)
      (row052.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row052_layerCover_checked :
    coverCheck (row052.height.i * (row052.height.i - 1)) (row052.height.n0 - 1)
      (row052.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_bounds : List NatInterval :=
  [(106, 154), (155, 202), (203, 250), (251, 302), (303, 344), (345, 388), (389, 440), (441, 490), (491, 542), (543, 592), (593, 644), (645, 694), (695, 742), (743, 794), (795, 838), (839, 890), (891, 938), (939, 988), (989, 1034), (1035, 1084), (1085, 1120), (1121, 1168), (1169, 1214), (1215, 1264), (1265, 1310), (1311, 1358), (1359, 1378), (1379, 1424), (1425, 1474), (1475, 1522), (1523, 1574), (1575, 1622), (1623, 1672), (1673, 1720), (1721, 1772), (1773, 1810), (1811, 1862), (1863, 1912), (1913, 1964), (1965, 2002), (2003, 2054), (2055, 2104), (2105, 2150), (2151, 2194), (2195, 2230), (2231, 2272), (2273, 2324), (2325, 2362), (2363, 2408), (2409, 2450), (2451, 2498), (2499, 2528), (2529, 2572), (2573, 2608), (2609, 2660), (2661, 2710), (2711, 2713), (2744, 2792), (2793, 2801), (2883, 2930), (2931, 2955), (3025, 3051), (3072, 3076), (3087, 3123), (3125, 3138), (3146, 3188), (3189, 3225), (3250, 3280), (3281, 3301), (3364, 3412), (3413, 3453), (3468, 3481), (3500, 3550), (3551, 3551), (3610, 3658), (3659, 3681), (3703, 3752), (3753, 3790), (3791, 3808), (3872, 3914), (3915, 3926), (3993, 4040), (4041, 4044), (4046, 4051), (4096, 4097), (4107, 4150), (4151, 4167), (4232, 4256), (4335, 4378), (4379, 4424), (4425, 4445), (4459, 4469), (4624, 4668), (4802, 4852), (4853, 4853), (5043, 5090), (5091, 5097), (5103, 5105), (5120, 5170), (5171, 5171), (5324, 5341), (5346, 5375), (5488, 5534), (5535, 5539), (5589, 5598), (5625, 5640), (5776, 5800), (5801, 5852), (5853, 5882), (6075, 6120), (6144, 6194), (6195, 6195), (6348, 6394), (6395, 6399), (6517, 6542), (6543, 6549), (6561, 6568), (6647, 6688), (6689, 6698), (6727, 6770), (6771, 6778), (6845, 6855), (6859, 6908), (6909, 6926), (7203, 7244), (7245, 7271), (7406, 7444), (7445, 7447), (7514, 7558), (7559, 7565), (7569, 7612), (7613, 7620), (7935, 7940), (7942, 7988), (7989, 7993), (8019, 8037), (8125, 8143), (8214, 8260), (8261, 8265), (8405, 8440), (8441, 8456), (8664, 8700), (8750, 8798), (8799, 8799), (9025, 9044), (9251, 9292), (9293, 9302), (9386, 9426), (9522, 9528), (9604, 9652), (9653, 9655), (10051, 10051), (10086, 10130), (10131, 10143), (10240, 10257), (10580, 10618), (10619, 10622), (10625, 10631), (10648, 10676), (10935, 10960), (10961, 10986), (11094, 11096), (11109, 11144), (11145, 11145), (11664, 11689), (11774, 11794), (11795, 11818), (12005, 12030), (12321, 12339), (12500, 12544), (13125, 13172), (13173, 13173), (13254, 13276), (13454, 13502), (13503, 13505), (13718, 13741), (13750, 13780), (13781, 13801), (14406, 14452), (14453, 14457), (15138, 15180), (15979, 16023), (16384, 16388), (16428, 16435), (16807, 16838), (16839, 16861), (17303, 17349), (17672, 17712), (18259, 18276), (18491, 18532), (18533, 18542), (19208, 19217), (19220, 19259), (19683, 19703), (20181, 20228), (20229, 20232), (20577, 20586), (21870, 21914), (21915, 21926), (22103, 22141), (24037, 24080), (24081, 24088), (24334, 24350), (24576, 24616), (28577, 28612), (28749, 28768), (30618, 30644), (30645, 30664), (31250, 31264), (31944, 31958), (31959, 31990), (32805, 32819), (32856, 32856), (33620, 33665), (34391, 34426), (35344, 35352), (36982, 37030), (37031, 37031), (43750, 43772), (43773, 43791), (44217, 44231), (48020, 48064), (49152, 49181), (65625, 65661), (68782, 68801), (73205, 73218), (98304, 98311)]

theorem row052_bounds_eq : row052.goods.map goodSegmentBounds = row052_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_layer000_intervals : List ColouredInterval :=
  [(2, 3072, 3123), (2, 3584, 3635), (2, 4096, 4147), (2, 3072, 3123), (2, 4096, 4147), (2, 5120, 5171), (2, 4096, 4147), (2, 4096, 4147), (3, 2673, 2724), (3, 2916, 2967), (3, 3159, 3210), (3, 3402, 3453), (3, 3645, 3696), (3, 3888, 3939), (3, 4131, 4182), (3, 4374, 4425), (3, 4617, 4668), (3, 4860, 4911), (3, 5103, 5154), (3, 2916, 2967), (3, 3645, 3696), (3, 4374, 4425), (3, 5103, 5154), (3, 4374, 4425), (5, 2652, 2676), (5, 2750, 2801), (5, 2875, 2926), (5, 3000, 3051), (5, 3125, 3176), (5, 3250, 3301), (5, 3375, 3426), (5, 3500, 3551), (5, 3625, 3676), (5, 3750, 3801), (5, 3875, 3926), (5, 4000, 4051), (5, 3125, 3176), (5, 3750, 3801), (5, 4375, 4426), (5, 5000, 5051), (5, 3125, 3176), (7, 2744, 2795), (7, 3087, 3138), (7, 3430, 3481), (7, 3773, 3824), (7, 4116, 4167), (7, 4459, 4510), (7, 4802, 4853), (7, 5145, 5196), (7, 4802, 4853), (11, 2662, 2713), (11, 2783, 2834), (11, 2904, 2955), (11, 3025, 3076), (11, 3146, 3197), (11, 3267, 3318), (11, 3388, 3439), (11, 3509, 3560), (11, 3630, 3681), (11, 3751, 3802), (11, 3872, 3923), (11, 2662, 2713), (11, 3993, 4044), (13, 4394, 4445), (17, 2652, 2652), (17, 2890, 2941), (17, 3179, 3230), (17, 3468, 3519), (17, 3757, 3808), (17, 4046, 4097), (17, 4335, 4386), (17, 4624, 4675), (17, 4913, 4964), (17, 5202, 5253), (17, 4913, 4964), (19, 2888, 2939), (19, 3249, 3300), (19, 3610, 3661), (19, 3971, 4022), (19, 4332, 4383), (19, 4693, 4744), (19, 5054, 5105), (23, 2652, 2696), (23, 3174, 3225), (23, 3703, 3754), (23, 4232, 4283), (23, 4761, 4812), (23, 5290, 5303), (29, 3364, 3415), (29, 4205, 4256), (29, 5046, 5097), (31, 2883, 2934), (31, 3844, 3895), (31, 4805, 4856), (37, 2738, 2789), (37, 4107, 4158), (41, 3362, 3413), (41, 5043, 5094), (43, 3698, 3749), (47, 4418, 4469)]

def row052_layer000_block000 : List ColouredInterval :=
  [(2, 3072, 3123), (2, 3584, 3635), (2, 4096, 4147), (2, 3072, 3123), (2, 4096, 4147), (2, 5120, 5171), (2, 4096, 4147), (2, 4096, 4147), (3, 2673, 2724), (3, 2916, 2967), (3, 3159, 3210), (3, 3402, 3453), (3, 3645, 3696), (3, 3888, 3939), (3, 4131, 4182), (3, 4374, 4425)]

def row052_layer000_block001 : List ColouredInterval :=
  [(3, 4617, 4668), (3, 4860, 4911), (3, 5103, 5154), (3, 2916, 2967), (3, 3645, 3696), (3, 4374, 4425), (3, 5103, 5154), (3, 4374, 4425), (5, 2652, 2676), (5, 2750, 2801), (5, 2875, 2926), (5, 3000, 3051), (5, 3125, 3176), (5, 3250, 3301), (5, 3375, 3426), (5, 3500, 3551)]

def row052_layer000_block002 : List ColouredInterval :=
  [(5, 3625, 3676), (5, 3750, 3801), (5, 3875, 3926), (5, 4000, 4051), (5, 3125, 3176), (5, 3750, 3801), (5, 4375, 4426), (5, 5000, 5051), (5, 3125, 3176), (7, 2744, 2795), (7, 3087, 3138), (7, 3430, 3481), (7, 3773, 3824), (7, 4116, 4167), (7, 4459, 4510), (7, 4802, 4853)]

def row052_layer000_block003 : List ColouredInterval :=
  [(7, 5145, 5196), (7, 4802, 4853), (11, 2662, 2713), (11, 2783, 2834), (11, 2904, 2955), (11, 3025, 3076), (11, 3146, 3197), (11, 3267, 3318), (11, 3388, 3439), (11, 3509, 3560), (11, 3630, 3681), (11, 3751, 3802), (11, 3872, 3923), (11, 2662, 2713), (11, 3993, 4044), (13, 4394, 4445)]

def row052_layer000_block004 : List ColouredInterval :=
  [(17, 2652, 2652), (17, 2890, 2941), (17, 3179, 3230), (17, 3468, 3519), (17, 3757, 3808), (17, 4046, 4097), (17, 4335, 4386), (17, 4624, 4675), (17, 4913, 4964), (17, 5202, 5253), (17, 4913, 4964), (19, 2888, 2939), (19, 3249, 3300), (19, 3610, 3661), (19, 3971, 4022), (19, 4332, 4383)]

def row052_layer000_block005 : List ColouredInterval :=
  [(19, 4693, 4744), (19, 5054, 5105), (23, 2652, 2696), (23, 3174, 3225), (23, 3703, 3754), (23, 4232, 4283), (23, 4761, 4812), (23, 5290, 5303), (29, 3364, 3415), (29, 4205, 4256), (29, 5046, 5097), (31, 2883, 2934), (31, 3844, 3895), (31, 4805, 4856), (37, 2738, 2789), (37, 4107, 4158)]

def row052_layer000_block006 : List ColouredInterval :=
  [(41, 3362, 3413), (41, 5043, 5094), (43, 3698, 3749), (47, 4418, 4469)]

def row052_layer000_chunks : List (List ColouredInterval) :=
  [row052_layer000_block000, row052_layer000_block001, row052_layer000_block002, row052_layer000_block003, row052_layer000_block004, row052_layer000_block005, row052_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_arithmetic : LayerArithmeticValid row052.height { lower := 2652, upper := 5304, M := 32 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_enumeration :
    activePowerIntervalList 52 32 2652 5304 = row052_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_pairs000 :
    row052_layer000_block000.all (fun I => row052_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_pairs001 :
    row052_layer000_block001.all (fun I => row052_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_pairs002 :
    row052_layer000_block002.all (fun I => row052_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_pairs003 :
    row052_layer000_block003.all (fun I => row052_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_pairs004 :
    row052_layer000_block004.all (fun I => row052_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_pairs005 :
    row052_layer000_block005.all (fun I => row052_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_pairs006 :
    row052_layer000_block006.all (fun I => row052_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_chunks_eq : row052_layer000_chunks.flatten = row052_layer000_intervals := by
  rfl

theorem row052_layer000_pairs : pairCoverCheck row052_layer000_intervals row052_bounds = true := by
  apply pairCoverCheck_of_chunks row052_layer000_chunks_eq
  intro block hblock
  simp only [row052_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row052_layer000_pairs000
  · exact row052_layer000_pairs001
  · exact row052_layer000_pairs002
  · exact row052_layer000_pairs003
  · exact row052_layer000_pairs004
  · exact row052_layer000_pairs005
  · exact row052_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer000_checked :
    coverLayerCheck row052.height row052.goods { lower := 2652, upper := 5304, M := 32 } = true := by
  exact coverLayerCheck_of_parts row052_layer000_arithmetic row052_layer000_enumeration row052_bounds_eq row052_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_layer001_intervals : List ColouredInterval :=
  [(2, 6144, 6195), (2, 7168, 7219), (2, 6144, 6195), (2, 8192, 8243), (2, 10240, 10291), (2, 8192, 8243), (2, 8192, 8243), (3, 5346, 5397), (3, 5589, 5640), (3, 5832, 5883), (3, 6075, 6126), (3, 6318, 6369), (3, 6561, 6612), (3, 6804, 6855), (3, 7047, 7098), (3, 5832, 5883), (3, 6561, 6612), (3, 7290, 7341), (3, 8019, 8070), (3, 8748, 8799), (3, 9477, 9528), (3, 10206, 10257), (3, 6561, 6612), (3, 8748, 8799), (3, 6561, 6612), (5, 5625, 5676), (5, 6250, 6301), (5, 6875, 6926), (5, 7500, 7551), (5, 8125, 8176), (5, 8750, 8801), (5, 9375, 9426), (5, 10000, 10051), (5, 6250, 6301), (5, 9375, 9426), (7, 5488, 5539), (7, 5831, 5882), (7, 6174, 6225), (7, 6517, 6568), (7, 6860, 6911), (7, 7203, 7254), (7, 7546, 7597), (7, 7889, 7940), (7, 8232, 8283), (7, 8575, 8626), (7, 8918, 8969), (7, 9261, 9312), (7, 9604, 9655), (7, 9947, 9998), (7, 7203, 7254), (7, 9604, 9655), (11, 5324, 5375), (11, 6655, 6706), (11, 7986, 8037), (11, 9317, 9368), (17, 5491, 5542), (17, 5780, 5831), (17, 6069, 6120), (17, 6358, 6409), (17, 6647, 6698), (17, 6936, 6987), (17, 7225, 7276), (17, 7514, 7565), (17, 7803, 7854), (17, 8092, 8143), (17, 8381, 8432), (17, 9826, 9877), (19, 5415, 5466), (19, 5776, 5827), (19, 6137, 6188), (19, 6498, 6549), (19, 6859, 6910), (19, 7220, 7271), (19, 7581, 7632), (19, 7942, 7993), (19, 8303, 8354), (19, 8664, 8715), (19, 9025, 9076), (19, 9386, 9437), (19, 9747, 9798), (19, 10108, 10159), (19, 10469, 10520), (19, 6859, 6910), (23, 5304, 5341), (23, 5819, 5870), (23, 6348, 6399), (23, 6877, 6928), (23, 7406, 7457), (23, 7935, 7986), (23, 8464, 8515), (23, 8993, 9044), (23, 9522, 9573), (23, 10051, 10102), (23, 10580, 10607), (29, 5887, 5938), (29, 6728, 6779), (29, 7569, 7620), (29, 8410, 8461), (29, 9251, 9302), (29, 10092, 10143), (31, 5766, 5817), (31, 6727, 6778), (31, 7688, 7739), (31, 8649, 8700), (31, 9610, 9661), (31, 10571, 10607), (37, 5476, 5527), (37, 6845, 6896), (37, 8214, 8265), (37, 9583, 9634), (41, 6724, 6775), (41, 8405, 8456), (41, 10086, 10137), (43, 5547, 5598), (43, 7396, 7447), (43, 9245, 9296), (47, 6627, 6678), (47, 8836, 8887)]

def row052_layer001_block000 : List ColouredInterval :=
  [(2, 6144, 6195), (2, 7168, 7219), (2, 6144, 6195), (2, 8192, 8243), (2, 10240, 10291), (2, 8192, 8243), (2, 8192, 8243), (3, 5346, 5397), (3, 5589, 5640), (3, 5832, 5883), (3, 6075, 6126), (3, 6318, 6369), (3, 6561, 6612), (3, 6804, 6855), (3, 7047, 7098), (3, 5832, 5883)]

def row052_layer001_block001 : List ColouredInterval :=
  [(3, 6561, 6612), (3, 7290, 7341), (3, 8019, 8070), (3, 8748, 8799), (3, 9477, 9528), (3, 10206, 10257), (3, 6561, 6612), (3, 8748, 8799), (3, 6561, 6612), (5, 5625, 5676), (5, 6250, 6301), (5, 6875, 6926), (5, 7500, 7551), (5, 8125, 8176), (5, 8750, 8801), (5, 9375, 9426)]

def row052_layer001_block002 : List ColouredInterval :=
  [(5, 10000, 10051), (5, 6250, 6301), (5, 9375, 9426), (7, 5488, 5539), (7, 5831, 5882), (7, 6174, 6225), (7, 6517, 6568), (7, 6860, 6911), (7, 7203, 7254), (7, 7546, 7597), (7, 7889, 7940), (7, 8232, 8283), (7, 8575, 8626), (7, 8918, 8969), (7, 9261, 9312), (7, 9604, 9655)]

def row052_layer001_block003 : List ColouredInterval :=
  [(7, 9947, 9998), (7, 7203, 7254), (7, 9604, 9655), (11, 5324, 5375), (11, 6655, 6706), (11, 7986, 8037), (11, 9317, 9368), (17, 5491, 5542), (17, 5780, 5831), (17, 6069, 6120), (17, 6358, 6409), (17, 6647, 6698), (17, 6936, 6987), (17, 7225, 7276), (17, 7514, 7565), (17, 7803, 7854)]

def row052_layer001_block004 : List ColouredInterval :=
  [(17, 8092, 8143), (17, 8381, 8432), (17, 9826, 9877), (19, 5415, 5466), (19, 5776, 5827), (19, 6137, 6188), (19, 6498, 6549), (19, 6859, 6910), (19, 7220, 7271), (19, 7581, 7632), (19, 7942, 7993), (19, 8303, 8354), (19, 8664, 8715), (19, 9025, 9076), (19, 9386, 9437), (19, 9747, 9798)]

def row052_layer001_block005 : List ColouredInterval :=
  [(19, 10108, 10159), (19, 10469, 10520), (19, 6859, 6910), (23, 5304, 5341), (23, 5819, 5870), (23, 6348, 6399), (23, 6877, 6928), (23, 7406, 7457), (23, 7935, 7986), (23, 8464, 8515), (23, 8993, 9044), (23, 9522, 9573), (23, 10051, 10102), (23, 10580, 10607), (29, 5887, 5938), (29, 6728, 6779)]

def row052_layer001_block006 : List ColouredInterval :=
  [(29, 7569, 7620), (29, 8410, 8461), (29, 9251, 9302), (29, 10092, 10143), (31, 5766, 5817), (31, 6727, 6778), (31, 7688, 7739), (31, 8649, 8700), (31, 9610, 9661), (31, 10571, 10607), (37, 5476, 5527), (37, 6845, 6896), (37, 8214, 8265), (37, 9583, 9634), (41, 6724, 6775), (41, 8405, 8456)]

def row052_layer001_block007 : List ColouredInterval :=
  [(41, 10086, 10137), (43, 5547, 5598), (43, 7396, 7447), (43, 9245, 9296), (47, 6627, 6678), (47, 8836, 8887)]

def row052_layer001_chunks : List (List ColouredInterval) :=
  [row052_layer001_block000, row052_layer001_block001, row052_layer001_block002, row052_layer001_block003, row052_layer001_block004, row052_layer001_block005, row052_layer001_block006, row052_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_arithmetic : LayerArithmeticValid row052.height { lower := 5304, upper := 10608, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_enumeration :
    activePowerIntervalList 52 29 5304 10608 = row052_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_pairs000 :
    row052_layer001_block000.all (fun I => row052_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_pairs001 :
    row052_layer001_block001.all (fun I => row052_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_pairs002 :
    row052_layer001_block002.all (fun I => row052_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_pairs003 :
    row052_layer001_block003.all (fun I => row052_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_pairs004 :
    row052_layer001_block004.all (fun I => row052_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_pairs005 :
    row052_layer001_block005.all (fun I => row052_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_pairs006 :
    row052_layer001_block006.all (fun I => row052_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_pairs007 :
    row052_layer001_block007.all (fun I => row052_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_chunks_eq : row052_layer001_chunks.flatten = row052_layer001_intervals := by
  rfl

theorem row052_layer001_pairs : pairCoverCheck row052_layer001_intervals row052_bounds = true := by
  apply pairCoverCheck_of_chunks row052_layer001_chunks_eq
  intro block hblock
  simp only [row052_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row052_layer001_pairs000
  · exact row052_layer001_pairs001
  · exact row052_layer001_pairs002
  · exact row052_layer001_pairs003
  · exact row052_layer001_pairs004
  · exact row052_layer001_pairs005
  · exact row052_layer001_pairs006
  · exact row052_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer001_checked :
    coverLayerCheck row052.height row052.goods { lower := 5304, upper := 10608, M := 29 } = true := by
  exact coverLayerCheck_of_parts row052_layer001_arithmetic row052_layer001_enumeration row052_bounds_eq row052_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_layer002_intervals : List ColouredInterval :=
  [(2, 12288, 12339), (2, 12288, 12339), (2, 16384, 16435), (2, 20480, 20531), (2, 16384, 16435), (2, 16384, 16435), (3, 10935, 10986), (3, 11664, 11715), (3, 12393, 12444), (3, 13122, 13173), (3, 13851, 13902), (3, 14580, 14631), (3, 15309, 15360), (3, 16038, 16089), (3, 16767, 16818), (3, 17496, 17547), (3, 18225, 18276), (3, 18954, 19005), (3, 10935, 10986), (3, 13122, 13173), (3, 15309, 15360), (3, 17496, 17547), (3, 19683, 19734), (3, 13122, 13173), (3, 19683, 19734), (3, 19683, 19734), (5, 10625, 10676), (5, 11250, 11301), (5, 11875, 11926), (5, 12500, 12551), (5, 13125, 13176), (5, 13750, 13801), (5, 14375, 14426), (5, 15000, 15051), (5, 15625, 15676), (5, 16250, 16301), (5, 12500, 12551), (5, 15625, 15676), (5, 18750, 18801), (5, 15625, 15676), (7, 12005, 12056), (7, 14406, 14457), (7, 16807, 16858), (7, 19208, 19259), (7, 16807, 16858), (11, 10648, 10699), (11, 11979, 12030), (11, 13310, 13361), (11, 14641, 14692), (11, 15972, 16023), (11, 17303, 17354), (11, 18634, 18685), (11, 19965, 20016), (11, 14641, 14692), (17, 14739, 14790), (17, 19652, 19703), (19, 13718, 13769), (19, 20577, 20628), (23, 10608, 10631), (23, 11109, 11160), (23, 11638, 11689), (23, 12167, 12218), (23, 12696, 12747), (23, 13225, 13276), (23, 13754, 13805), (23, 12167, 12218), (29, 10933, 10984), (29, 11774, 11825), (29, 12615, 12666), (29, 13456, 13507), (29, 14297, 14348), (29, 15138, 15189), (29, 15979, 16030), (29, 16820, 16871), (29, 17661, 17712), (29, 18502, 18553), (29, 19343, 19394), (29, 20184, 20235), (29, 21025, 21076), (31, 10608, 10622), (31, 11532, 11583), (31, 12493, 12544), (31, 13454, 13505), (31, 14415, 14466), (31, 15376, 15427), (31, 16337, 16388), (31, 17298, 17349), (31, 18259, 18310), (31, 19220, 19271), (31, 20181, 20232), (31, 21142, 21193), (37, 10952, 11003), (37, 12321, 12372), (37, 13690, 13741), (37, 15059, 15110), (37, 16428, 16479), (37, 17797, 17848), (37, 19166, 19217), (37, 20535, 20586), (41, 11767, 11818), (41, 13448, 13499), (41, 15129, 15180), (41, 16810, 16861), (41, 18491, 18542), (41, 20172, 20223), (43, 11094, 11145), (43, 12943, 12994), (43, 14792, 14843), (43, 16641, 16692), (43, 18490, 18541), (43, 20339, 20390), (47, 11045, 11096), (47, 13254, 13305), (47, 15463, 15514), (47, 17672, 17723), (47, 19881, 19932)]

def row052_layer002_block000 : List ColouredInterval :=
  [(2, 12288, 12339), (2, 12288, 12339), (2, 16384, 16435), (2, 20480, 20531), (2, 16384, 16435), (2, 16384, 16435), (3, 10935, 10986), (3, 11664, 11715), (3, 12393, 12444), (3, 13122, 13173), (3, 13851, 13902), (3, 14580, 14631), (3, 15309, 15360), (3, 16038, 16089), (3, 16767, 16818), (3, 17496, 17547)]

def row052_layer002_block001 : List ColouredInterval :=
  [(3, 18225, 18276), (3, 18954, 19005), (3, 10935, 10986), (3, 13122, 13173), (3, 15309, 15360), (3, 17496, 17547), (3, 19683, 19734), (3, 13122, 13173), (3, 19683, 19734), (3, 19683, 19734), (5, 10625, 10676), (5, 11250, 11301), (5, 11875, 11926), (5, 12500, 12551), (5, 13125, 13176), (5, 13750, 13801)]

def row052_layer002_block002 : List ColouredInterval :=
  [(5, 14375, 14426), (5, 15000, 15051), (5, 15625, 15676), (5, 16250, 16301), (5, 12500, 12551), (5, 15625, 15676), (5, 18750, 18801), (5, 15625, 15676), (7, 12005, 12056), (7, 14406, 14457), (7, 16807, 16858), (7, 19208, 19259), (7, 16807, 16858), (11, 10648, 10699), (11, 11979, 12030), (11, 13310, 13361)]

def row052_layer002_block003 : List ColouredInterval :=
  [(11, 14641, 14692), (11, 15972, 16023), (11, 17303, 17354), (11, 18634, 18685), (11, 19965, 20016), (11, 14641, 14692), (17, 14739, 14790), (17, 19652, 19703), (19, 13718, 13769), (19, 20577, 20628), (23, 10608, 10631), (23, 11109, 11160), (23, 11638, 11689), (23, 12167, 12218), (23, 12696, 12747), (23, 13225, 13276)]

def row052_layer002_block004 : List ColouredInterval :=
  [(23, 13754, 13805), (23, 12167, 12218), (29, 10933, 10984), (29, 11774, 11825), (29, 12615, 12666), (29, 13456, 13507), (29, 14297, 14348), (29, 15138, 15189), (29, 15979, 16030), (29, 16820, 16871), (29, 17661, 17712), (29, 18502, 18553), (29, 19343, 19394), (29, 20184, 20235), (29, 21025, 21076), (31, 10608, 10622)]

def row052_layer002_block005 : List ColouredInterval :=
  [(31, 11532, 11583), (31, 12493, 12544), (31, 13454, 13505), (31, 14415, 14466), (31, 15376, 15427), (31, 16337, 16388), (31, 17298, 17349), (31, 18259, 18310), (31, 19220, 19271), (31, 20181, 20232), (31, 21142, 21193), (37, 10952, 11003), (37, 12321, 12372), (37, 13690, 13741), (37, 15059, 15110), (37, 16428, 16479)]

def row052_layer002_block006 : List ColouredInterval :=
  [(37, 17797, 17848), (37, 19166, 19217), (37, 20535, 20586), (41, 11767, 11818), (41, 13448, 13499), (41, 15129, 15180), (41, 16810, 16861), (41, 18491, 18542), (41, 20172, 20223), (43, 11094, 11145), (43, 12943, 12994), (43, 14792, 14843), (43, 16641, 16692), (43, 18490, 18541), (43, 20339, 20390), (47, 11045, 11096)]

def row052_layer002_block007 : List ColouredInterval :=
  [(47, 13254, 13305), (47, 15463, 15514), (47, 17672, 17723), (47, 19881, 19932)]

def row052_layer002_chunks : List (List ColouredInterval) :=
  [row052_layer002_block000, row052_layer002_block001, row052_layer002_block002, row052_layer002_block003, row052_layer002_block004, row052_layer002_block005, row052_layer002_block006, row052_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_arithmetic : LayerArithmeticValid row052.height { lower := 10608, upper := 21216, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_enumeration :
    activePowerIntervalList 52 26 10608 21216 = row052_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_pairs000 :
    row052_layer002_block000.all (fun I => row052_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_pairs001 :
    row052_layer002_block001.all (fun I => row052_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_pairs002 :
    row052_layer002_block002.all (fun I => row052_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_pairs003 :
    row052_layer002_block003.all (fun I => row052_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_pairs004 :
    row052_layer002_block004.all (fun I => row052_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_pairs005 :
    row052_layer002_block005.all (fun I => row052_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_pairs006 :
    row052_layer002_block006.all (fun I => row052_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_pairs007 :
    row052_layer002_block007.all (fun I => row052_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_chunks_eq : row052_layer002_chunks.flatten = row052_layer002_intervals := by
  rfl

theorem row052_layer002_pairs : pairCoverCheck row052_layer002_intervals row052_bounds = true := by
  apply pairCoverCheck_of_chunks row052_layer002_chunks_eq
  intro block hblock
  simp only [row052_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row052_layer002_pairs000
  · exact row052_layer002_pairs001
  · exact row052_layer002_pairs002
  · exact row052_layer002_pairs003
  · exact row052_layer002_pairs004
  · exact row052_layer002_pairs005
  · exact row052_layer002_pairs006
  · exact row052_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer002_checked :
    coverLayerCheck row052.height row052.goods { lower := 10608, upper := 21216, M := 26 } = true := by
  exact coverLayerCheck_of_parts row052_layer002_arithmetic row052_layer002_enumeration row052_bounds_eq row052_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_layer003_intervals : List ColouredInterval :=
  [(2, 24576, 24627), (2, 24576, 24627), (2, 32768, 32819), (2, 40960, 41011), (2, 32768, 32819), (2, 32768, 32819), (3, 21870, 21921), (3, 24057, 24108), (3, 26244, 26295), (3, 28431, 28482), (3, 30618, 30669), (3, 32805, 32856), (3, 34992, 35043), (3, 37179, 37230), (3, 39366, 39417), (3, 41553, 41604), (3, 26244, 26295), (3, 32805, 32856), (3, 39366, 39417), (3, 39366, 39417), (5, 21875, 21926), (5, 25000, 25051), (5, 28125, 28176), (5, 31250, 31301), (5, 34375, 34426), (5, 37500, 37551), (5, 40625, 40676), (5, 31250, 31301), (7, 21609, 21660), (7, 24010, 24061), (7, 26411, 26462), (7, 28812, 28863), (7, 31213, 31264), (7, 33614, 33665), (7, 36015, 36066), (7, 38416, 38467), (7, 40817, 40868), (7, 33614, 33665), (11, 21296, 21347), (11, 22627, 22678), (11, 23958, 24009), (11, 25289, 25340), (11, 26620, 26671), (11, 27951, 28002), (11, 29282, 29333), (11, 30613, 30664), (11, 31944, 31995), (11, 29282, 29333), (13, 28561, 28612), (17, 24565, 24616), (17, 29478, 29529), (17, 34391, 34442), (17, 39304, 39355), (19, 27436, 27487), (19, 34295, 34346), (19, 41154, 41205), (23, 24334, 24385), (23, 36501, 36552), (29, 24389, 24440), (31, 22103, 22154), (31, 23064, 23115), (31, 29791, 29842), (37, 21904, 21955), (37, 23273, 23324), (37, 24642, 24693), (37, 26011, 26062), (37, 27380, 27431), (37, 28749, 28800), (37, 30118, 30169), (37, 31487, 31538), (37, 32856, 32907), (41, 21853, 21904), (41, 23534, 23585), (41, 25215, 25266), (41, 26896, 26947), (41, 28577, 28628), (41, 30258, 30309), (41, 31939, 31990), (41, 33620, 33671), (41, 35301, 35352), (41, 36982, 37033), (41, 38663, 38714), (41, 40344, 40395), (43, 22188, 22239), (43, 24037, 24088), (43, 25886, 25937), (43, 27735, 27786), (43, 29584, 29635), (43, 31433, 31484), (43, 33282, 33333), (43, 35131, 35182), (43, 36980, 37031), (43, 38829, 38880), (43, 40678, 40729), (47, 22090, 22141), (47, 24299, 24350), (47, 26508, 26559), (47, 28717, 28768), (47, 30926, 30977), (47, 33135, 33186), (47, 35344, 35395), (47, 37553, 37604), (47, 39762, 39813), (47, 41971, 42022)]

def row052_layer003_block000 : List ColouredInterval :=
  [(2, 24576, 24627), (2, 24576, 24627), (2, 32768, 32819), (2, 40960, 41011), (2, 32768, 32819), (2, 32768, 32819), (3, 21870, 21921), (3, 24057, 24108), (3, 26244, 26295), (3, 28431, 28482), (3, 30618, 30669), (3, 32805, 32856), (3, 34992, 35043), (3, 37179, 37230), (3, 39366, 39417), (3, 41553, 41604)]

def row052_layer003_block001 : List ColouredInterval :=
  [(3, 26244, 26295), (3, 32805, 32856), (3, 39366, 39417), (3, 39366, 39417), (5, 21875, 21926), (5, 25000, 25051), (5, 28125, 28176), (5, 31250, 31301), (5, 34375, 34426), (5, 37500, 37551), (5, 40625, 40676), (5, 31250, 31301), (7, 21609, 21660), (7, 24010, 24061), (7, 26411, 26462), (7, 28812, 28863)]

def row052_layer003_block002 : List ColouredInterval :=
  [(7, 31213, 31264), (7, 33614, 33665), (7, 36015, 36066), (7, 38416, 38467), (7, 40817, 40868), (7, 33614, 33665), (11, 21296, 21347), (11, 22627, 22678), (11, 23958, 24009), (11, 25289, 25340), (11, 26620, 26671), (11, 27951, 28002), (11, 29282, 29333), (11, 30613, 30664), (11, 31944, 31995), (11, 29282, 29333)]

def row052_layer003_block003 : List ColouredInterval :=
  [(13, 28561, 28612), (17, 24565, 24616), (17, 29478, 29529), (17, 34391, 34442), (17, 39304, 39355), (19, 27436, 27487), (19, 34295, 34346), (19, 41154, 41205), (23, 24334, 24385), (23, 36501, 36552), (29, 24389, 24440), (31, 22103, 22154), (31, 23064, 23115), (31, 29791, 29842), (37, 21904, 21955), (37, 23273, 23324)]

def row052_layer003_block004 : List ColouredInterval :=
  [(37, 24642, 24693), (37, 26011, 26062), (37, 27380, 27431), (37, 28749, 28800), (37, 30118, 30169), (37, 31487, 31538), (37, 32856, 32907), (41, 21853, 21904), (41, 23534, 23585), (41, 25215, 25266), (41, 26896, 26947), (41, 28577, 28628), (41, 30258, 30309), (41, 31939, 31990), (41, 33620, 33671), (41, 35301, 35352)]

def row052_layer003_block005 : List ColouredInterval :=
  [(41, 36982, 37033), (41, 38663, 38714), (41, 40344, 40395), (43, 22188, 22239), (43, 24037, 24088), (43, 25886, 25937), (43, 27735, 27786), (43, 29584, 29635), (43, 31433, 31484), (43, 33282, 33333), (43, 35131, 35182), (43, 36980, 37031), (43, 38829, 38880), (43, 40678, 40729), (47, 22090, 22141), (47, 24299, 24350)]

def row052_layer003_block006 : List ColouredInterval :=
  [(47, 26508, 26559), (47, 28717, 28768), (47, 30926, 30977), (47, 33135, 33186), (47, 35344, 35395), (47, 37553, 37604), (47, 39762, 39813), (47, 41971, 42022)]

def row052_layer003_chunks : List (List ColouredInterval) :=
  [row052_layer003_block000, row052_layer003_block001, row052_layer003_block002, row052_layer003_block003, row052_layer003_block004, row052_layer003_block005, row052_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_arithmetic : LayerArithmeticValid row052.height { lower := 21216, upper := 42432, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_enumeration :
    activePowerIntervalList 52 24 21216 42432 = row052_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_pairs000 :
    row052_layer003_block000.all (fun I => row052_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_pairs001 :
    row052_layer003_block001.all (fun I => row052_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_pairs002 :
    row052_layer003_block002.all (fun I => row052_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_pairs003 :
    row052_layer003_block003.all (fun I => row052_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_pairs003
