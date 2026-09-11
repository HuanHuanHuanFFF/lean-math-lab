import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_height : HeightCertificateDatum := { i := 63, r := 20, s := 43, n0Power10 := 14 }

def row063_goods : List GoodSegment := [
  { lower := 128, upper := 189, witness := RowWitness.topPrime 127 },
  { lower := 190, upper := 243, witness := RowWitness.topPrime 181 },
  { lower := 244, upper := 303, witness := RowWitness.topPrime 241 },
  { lower := 304, upper := 355, witness := RowWitness.topPrime 293 },
  { lower := 356, upper := 415, witness := RowWitness.topPrime 353 },
  { lower := 416, upper := 471, witness := RowWitness.topPrime 409 },
  { lower := 472, upper := 529, witness := RowWitness.topPrime 467 },
  { lower := 530, upper := 585, witness := RowWitness.topPrime 523 },
  { lower := 586, upper := 639, witness := RowWitness.topPrime 577 },
  { lower := 640, upper := 693, witness := RowWitness.topPrime 631 },
  { lower := 694, upper := 753, witness := RowWitness.topPrime 691 },
  { lower := 754, upper := 813, witness := RowWitness.topPrime 751 },
  { lower := 814, upper := 873, witness := RowWitness.topPrime 811 },
  { lower := 874, upper := 925, witness := RowWitness.topPrime 863 },
  { lower := 926, upper := 981, witness := RowWitness.topPrime 919 },
  { lower := 982, upper := 1039, witness := RowWitness.topPrime 977 },
  { lower := 1040, upper := 1101, witness := RowWitness.topPrime 1039 },
  { lower := 1102, upper := 1159, witness := RowWitness.topPrime 1097 },
  { lower := 1160, upper := 1215, witness := RowWitness.topPrime 1153 },
  { lower := 1216, upper := 1275, witness := RowWitness.topPrime 1213 },
  { lower := 1276, upper := 1321, witness := RowWitness.topPrime 1259 },
  { lower := 1322, upper := 1383, witness := RowWitness.topPrime 1321 },
  { lower := 1384, upper := 1443, witness := RowWitness.topPrime 1381 },
  { lower := 1444, upper := 1501, witness := RowWitness.topPrime 1439 },
  { lower := 1502, upper := 1561, witness := RowWitness.topPrime 1499 },
  { lower := 1562, upper := 1621, witness := RowWitness.topPrime 1559 },
  { lower := 1622, upper := 1683, witness := RowWitness.topPrime 1621 },
  { lower := 1684, upper := 1731, witness := RowWitness.topPrime 1669 },
  { lower := 1732, upper := 1785, witness := RowWitness.topPrime 1723 },
  { lower := 1786, upper := 1845, witness := RowWitness.topPrime 1783 },
  { lower := 1846, upper := 1893, witness := RowWitness.topPrime 1831 },
  { lower := 1894, upper := 1951, witness := RowWitness.topPrime 1889 },
  { lower := 1952, upper := 2013, witness := RowWitness.topPrime 1951 },
  { lower := 2014, upper := 2073, witness := RowWitness.topPrime 2011 },
  { lower := 2074, upper := 2131, witness := RowWitness.topPrime 2069 },
  { lower := 2132, upper := 2193, witness := RowWitness.topPrime 2131 },
  { lower := 2194, upper := 2241, witness := RowWitness.topPrime 2179 },
  { lower := 2242, upper := 2301, witness := RowWitness.topPrime 2239 },
  { lower := 2302, upper := 2359, witness := RowWitness.topPrime 2297 },
  { lower := 2360, upper := 2419, witness := RowWitness.topPrime 2357 },
  { lower := 2420, upper := 2479, witness := RowWitness.topPrime 2417 },
  { lower := 2480, upper := 2539, witness := RowWitness.topPrime 2477 },
  { lower := 2540, upper := 2601, witness := RowWitness.topPrime 2539 },
  { lower := 2602, upper := 2655, witness := RowWitness.topPrime 2593 },
  { lower := 2656, upper := 2709, witness := RowWitness.topPrime 2647 },
  { lower := 2710, upper := 2769, witness := RowWitness.topPrime 2707 },
  { lower := 2770, upper := 2829, witness := RowWitness.topPrime 2767 },
  { lower := 2830, upper := 2881, witness := RowWitness.topPrime 2819 },
  { lower := 2882, upper := 2941, witness := RowWitness.topPrime 2879 },
  { lower := 2942, upper := 3001, witness := RowWitness.topPrime 2939 },
  { lower := 3002, upper := 3063, witness := RowWitness.topPrime 3001 },
  { lower := 3064, upper := 3123, witness := RowWitness.topPrime 3061 },
  { lower := 3124, upper := 3183, witness := RowWitness.topPrime 3121 },
  { lower := 3184, upper := 3243, witness := RowWitness.topPrime 3181 },
  { lower := 3244, upper := 3291, witness := RowWitness.topPrime 3229 },
  { lower := 3292, upper := 3333, witness := RowWitness.topPrime 3271 },
  { lower := 3334, upper := 3393, witness := RowWitness.topPrime 3331 },
  { lower := 3394, upper := 3453, witness := RowWitness.topPrime 3391 },
  { lower := 3454, upper := 3511, witness := RowWitness.topPrime 3449 },
  { lower := 3512, upper := 3573, witness := RowWitness.topPrime 3511 },
  { lower := 3574, upper := 3633, witness := RowWitness.topPrime 3571 },
  { lower := 3634, upper := 3693, witness := RowWitness.topPrime 3631 },
  { lower := 3694, upper := 3753, witness := RowWitness.topPrime 3691 },
  { lower := 3754, upper := 3801, witness := RowWitness.topPrime 3739 },
  { lower := 3802, upper := 3859, witness := RowWitness.topPrime 3797 },
  { lower := 3860, upper := 3915, witness := RowWitness.topPrime 3853 },
  { lower := 3916, upper := 3937, witness := RowWitness.topPrime 3911 },
  { lower := 3971, upper := 4029, witness := RowWitness.topPrime 3967 },
  { lower := 4030, upper := 4089, witness := RowWitness.topPrime 4027 },
  { lower := 4090, upper := 4141, witness := RowWitness.topPrime 4079 },
  { lower := 4142, upper := 4169, witness := RowWitness.topPrime 4139 },
  { lower := 4224, upper := 4281, witness := RowWitness.topPrime 4219 },
  { lower := 4282, upper := 4287, witness := RowWitness.topPrime 4273 },
  { lower := 4335, upper := 4389, witness := RowWitness.topPrime 4327 },
  { lower := 4390, upper := 4435, witness := RowWitness.topPrime 4373 },
  { lower := 4436, upper := 4456, witness := RowWitness.topPrime 4423 },
  { lower := 4608, upper := 4665, witness := RowWitness.topPrime 4603 },
  { lower := 4666, upper := 4670, witness := RowWitness.topPrime 4663 },
  { lower := 4732, upper := 4755, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4794, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4863, witness := RowWitness.topPrime 4801 },
  { lower := 4864, upper := 4867, witness := RowWitness.topPrime 4861 },
  { lower := 4901, upper := 4951, witness := RowWitness.topPrime 4889 },
  { lower := 4952, upper := 4963, witness := RowWitness.topPrime 4951 },
  { lower := 5043, upper := 5101, witness := RowWitness.topPrime 5039 },
  { lower := 5102, upper := 5116, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5132, witness := RowWitness.topPrime 5119 },
  { lower := 5239, upper := 5264, witness := RowWitness.topPrime 5237 },
  { lower := 5290, upper := 5301, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5352, witness := RowWitness.topPrime 5323 },
  { lower := 5376, upper := 5386, witness := RowWitness.topPrime 5351 },
  { lower := 5408, upper := 5469, witness := RowWitness.topPrime 5407 },
  { lower := 5470, upper := 5470, witness := RowWitness.topPrime 5449 },
  { lower := 5476, upper := 5477, witness := RowWitness.topPrime 5471 },
  { lower := 5491, upper := 5538, witness := RowWitness.topPrime 5483 },
  { lower := 5547, upper := 5553, witness := RowWitness.topPrime 5531 },
  { lower := 5577, upper := 5609, witness := RowWitness.topPrime 5573 },
  { lower := 5618, upper := 5653, witness := RowWitness.topPrime 5591 },
  { lower := 5654, upper := 5687, witness := RowWitness.topPrime 5653 },
  { lower := 5776, upper := 5811, witness := RowWitness.topPrime 5749 },
  { lower := 5812, upper := 5842, witness := RowWitness.topPrime 5807 },
  { lower := 5888, upper := 5943, witness := RowWitness.topPrime 5881 },
  { lower := 5944, upper := 5949, witness := RowWitness.topPrime 5939 },
  { lower := 6144, upper := 6199, witness := RowWitness.topPrime 6143 },
  { lower := 6358, upper := 6415, witness := RowWitness.topPrime 6353 },
  { lower := 6416, upper := 6420, witness := RowWitness.topPrime 6397 },
  { lower := 6591, upper := 6623, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6681, witness := RowWitness.topPrime 6619 },
  { lower := 6682, upper := 6717, witness := RowWitness.topPrime 6679 },
  { lower := 6727, upper := 6781, witness := RowWitness.topPrime 6719 },
  { lower := 6782, upper := 6789, witness := RowWitness.topPrime 6781 },
  { lower := 6859, upper := 6919, witness := RowWitness.topPrime 6857 },
  { lower := 6920, upper := 6979, witness := RowWitness.topPrime 6917 },
  { lower := 6980, upper := 6998, witness := RowWitness.topPrime 6977 },
  { lower := 7203, upper := 7255, witness := RowWitness.topPrime 7193 },
  { lower := 7256, upper := 7282, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7455, witness := RowWitness.topPrime 7393 },
  { lower := 7456, upper := 7486, witness := RowWitness.topPrime 7451 },
  { lower := 7500, upper := 7504, witness := RowWitness.topPrime 7499 },
  { lower := 7514, upper := 7562, witness := RowWitness.topPrime 7507 },
  { lower := 7569, upper := 7576, witness := RowWitness.topPrime 7561 },
  { lower := 7581, upper := 7631, witness := RowWitness.topPrime 7577 },
  { lower := 7688, upper := 7742, witness := RowWitness.topPrime 7687 },
  { lower := 7942, upper := 7999, witness := RowWitness.topPrime 7937 },
  { lower := 8000, upper := 8004, witness := RowWitness.topPrime 7993 },
  { lower := 8125, upper := 8154, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8254, witness := RowWitness.topPrime 8209 },
  { lower := 8405, upper := 8451, witness := RowWitness.topPrime 8389 },
  { lower := 8452, upper := 8489, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8725, witness := RowWitness.topPrime 8663 },
  { lower := 8726, upper := 8732, witness := RowWitness.topPrime 8719 },
  { lower := 8750, upper := 8766, witness := RowWitness.topPrime 8747 },
  { lower := 8788, upper := 8812, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8850, witness := RowWitness.topPrime 8831 },
  { lower := 9025, upper := 9055, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9303, witness := RowWitness.topPrime 9241 },
  { lower := 9304, upper := 9307, witness := RowWitness.topPrime 9293 },
  { lower := 9375, upper := 9379, witness := RowWitness.topPrime 9371 },
  { lower := 9386, upper := 9437, witness := RowWitness.topPrime 9377 },
  { lower := 9583, upper := 9584, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9663, witness := RowWitness.topPrime 9601 },
  { lower := 9664, upper := 9666, witness := RowWitness.topPrime 9661 },
  { lower := 9747, upper := 9790, witness := RowWitness.topPrime 9743 },
  { lower := 10051, upper := 10062, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10141, witness := RowWitness.topPrime 10079 },
  { lower := 10142, upper := 10154, witness := RowWitness.topPrime 10141 },
  { lower := 10469, upper := 10505, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10629, witness := RowWitness.topPrime 10567 },
  { lower := 10630, upper := 10642, witness := RowWitness.topPrime 10627 },
  { lower := 10648, upper := 10687, witness := RowWitness.topPrime 10639 },
  { lower := 10952, upper := 11011, witness := RowWitness.topPrime 10949 },
  { lower := 11012, upper := 11014, witness := RowWitness.topPrime 11003 },
  { lower := 11045, upper := 11047, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11107, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11155, witness := RowWitness.topPrime 11093 },
  { lower := 11156, upper := 11156, witness := RowWitness.topPrime 11149 },
  { lower := 11163, upper := 11171, witness := RowWitness.topPrime 11161 },
  { lower := 11250, upper := 11305, witness := RowWitness.topPrime 11243 },
  { lower := 11306, upper := 11312, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11805, witness := RowWitness.topPrime 11743 },
  { lower := 11806, upper := 11836, witness := RowWitness.topPrime 11801 },
  { lower := 12321, upper := 12350, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12555, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13183, witness := RowWitness.topPrime 13121 },
  { lower := 13184, upper := 13187, witness := RowWitness.topPrime 13183 },
  { lower := 13225, upper := 13244, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13287, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13371, witness := RowWitness.topPrime 13309 },
  { lower := 13372, upper := 13372, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13513, witness := RowWitness.topPrime 13451 },
  { lower := 13514, upper := 13516, witness := RowWitness.topPrime 13513 },
  { lower := 13718, upper := 13773, witness := RowWitness.topPrime 13711 },
  { lower := 13774, upper := 13812, witness := RowWitness.topPrime 13763 },
  { lower := 14297, upper := 14355, witness := RowWitness.topPrime 14293 },
  { lower := 14356, upper := 14359, witness := RowWitness.topPrime 14347 },
  { lower := 14375, upper := 14398, witness := RowWitness.topPrime 14369 },
  { lower := 14415, upper := 14437, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14801, witness := RowWitness.topPrime 14783 },
  { lower := 14812, upper := 14859, witness := RowWitness.topPrime 14797 },
  { lower := 14860, upper := 14874, witness := RowWitness.topPrime 14851 },
  { lower := 14884, upper := 14910, witness := RowWitness.topPrime 14879 },
  { lower := 15059, upper := 15062, witness := RowWitness.topPrime 15053 },
  { lower := 15138, upper := 15191, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15421, witness := RowWitness.topPrime 15359 },
  { lower := 15422, upper := 15438, witness := RowWitness.topPrime 15413 },
  { lower := 15979, upper := 16034, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16399, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16446, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16849, witness := RowWitness.topPrime 16787 },
  { lower := 16850, upper := 16905, witness := RowWitness.topPrime 16843 },
  { lower := 16906, upper := 16916, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17360, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17463, witness := RowWitness.topPrime 17401 },
  { lower := 17464, upper := 17467, witness := RowWitness.topPrime 17449 },
  { lower := 17672, upper := 17723, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18543, witness := RowWitness.topPrime 18481 },
  { lower := 18544, upper := 18553, witness := RowWitness.topPrime 18541 },
  { lower := 18634, upper := 18667, witness := RowWitness.topPrime 18617 },
  { lower := 19220, upper := 19228, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19723, witness := RowWitness.topPrime 19661 },
  { lower := 19724, upper := 19725, witness := RowWitness.topPrime 19717 },
  { lower := 20181, upper := 20239, witness := RowWitness.topPrime 20177 },
  { lower := 20240, upper := 20243, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20542, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20597, witness := RowWitness.topPrime 20563 },
  { lower := 21866, upper := 21925, witness := RowWitness.topPrime 21863 },
  { lower := 21926, upper := 21937, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22152, witness := RowWitness.topPrime 22093 },
  { lower := 22528, upper := 22534, witness := RowWitness.topPrime 22511 },
  { lower := 23552, upper := 23596, witness := RowWitness.topPrime 23549 },
  { lower := 24037, upper := 24087, witness := RowWitness.topPrime 24029 },
  { lower := 24334, upper := 24361, witness := RowWitness.topPrime 24329 },
  { lower := 24367, upper := 24421, witness := RowWitness.topPrime 24359 },
  { lower := 24422, upper := 24429, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24627, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25048, witness := RowWitness.topPrime 24989 },
  { lower := 25289, upper := 25323, witness := RowWitness.topPrime 25261 },
  { lower := 25324, upper := 25343, witness := RowWitness.topPrime 25321 },
  { lower := 25947, upper := 25948, witness := RowWitness.topPrime 25943 },
  { lower := 26047, upper := 26073, witness := RowWitness.topPrime 26041 },
  { lower := 26624, upper := 26659, witness := RowWitness.topPrime 26597 },
  { lower := 26660, upper := 26682, witness := RowWitness.topPrime 26647 },
  { lower := 27436, upper := 27442, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28152, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28623, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28734, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28779, witness := RowWitness.topPrime 28729 },
  { lower := 29791, upper := 29830, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30782, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30961, witness := RowWitness.topPrime 30911 },
  { lower := 31487, upper := 31495, witness := RowWitness.topPrime 31481 },
  { lower := 31944, upper := 31969, witness := RowWitness.topPrime 31907 },
  { lower := 31970, upper := 32001, witness := RowWitness.topPrime 31963 },
  { lower := 33620, upper := 33676, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34437, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34869, witness := RowWitness.topPrime 34807 },
  { lower := 34870, upper := 34872, witness := RowWitness.topPrime 34849 },
  { lower := 35152, upper := 35193, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35363, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36559, witness := RowWitness.topPrime 36497 },
  { lower := 36560, upper := 36563, witness := RowWitness.topPrime 36559 },
  { lower := 36982, upper := 37041, witness := RowWitness.topPrime 36979 },
  { lower := 37042, upper := 37042, witness := RowWitness.topPrime 37039 },
  { lower := 37553, upper := 37562, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39385, witness := RowWitness.topPrime 39323 },
  { lower := 39386, upper := 39388, witness := RowWitness.topPrime 39383 },
  { lower := 40678, upper := 40687, witness := RowWitness.topPrime 40639 },
  { lower := 40960, upper := 40993, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41805, witness := RowWitness.topPrime 41771 },
  { lower := 43940, upper := 43985, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44242, witness := RowWitness.topPrime 44207 },
  { lower := 48373, upper := 48396, witness := RowWitness.topPrime 48371 },
  { lower := 48778, upper := 48796, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49192, witness := RowWitness.topPrime 49139 },
  { lower := 50562, upper := 50593, witness := RowWitness.topPrime 50551 },
  { lower := 58989, upper := 59018, witness := RowWitness.topPrime 58979 },
  { lower := 59049, upper := 59051, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59598, witness := RowWitness.topPrime 59581 },
  { lower := 68782, upper := 68812, witness := RowWitness.topPrime 68777 },
  { lower := 69632, upper := 69682, witness := RowWitness.topPrime 69623 },
  { lower := 73205, upper := 73229, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73757, witness := RowWitness.topPrime 73727 },
  { lower := 78141, upper := 78187, witness := RowWitness.topPrime 78139 },
  { lower := 81920, upper := 81924, witness := RowWitness.topPrime 81919 },
  { lower := 98304, upper := 98322, witness := RowWitness.topPrime 98299 },
  { lower := 327701, upper := 327742, witness := RowWitness.topPrime 327689 }
]

def row063_layers : List CoverLayer := [
  { lower := 3906, upper := 7812, M := 33 },
  { lower := 7812, upper := 15624, M := 30 },
  { lower := 15624, upper := 31248, M := 27 },
  { lower := 31248, upper := 62496, M := 24 },
  { lower := 62496, upper := 124992, M := 22 },
  { lower := 124992, upper := 249984, M := 20 },
  { lower := 249984, upper := 499968, M := 18 },
  { lower := 499968, upper := 999936, M := 16 },
  { lower := 999936, upper := 1999872, M := 14 },
  { lower := 1999872, upper := 3999744, M := 13 },
  { lower := 3999744, upper := 7999488, M := 12 },
  { lower := 7999488, upper := 15998976, M := 11 },
  { lower := 15998976, upper := 31997952, M := 10 },
  { lower := 31997952, upper := 63995904, M := 9 },
  { lower := 63995904, upper := 127991808, M := 8 },
  { lower := 127991808, upper := 255983616, M := 7 },
  { lower := 255983616, upper := 511967232, M := 6 },
  { lower := 511967232, upper := 1023934464, M := 6 },
  { lower := 1023934464, upper := 2047868928, M := 5 },
  { lower := 2047868928, upper := 4095737856, M := 5 },
  { lower := 4095737856, upper := 8191475712, M := 4 },
  { lower := 8191475712, upper := 16382951424, M := 4 },
  { lower := 16382951424, upper := 32765902848, M := 4 },
  { lower := 32765902848, upper := 65531805696, M := 3 },
  { lower := 65531805696, upper := 131063611392, M := 3 },
  { lower := 131063611392, upper := 262127222784, M := 3 },
  { lower := 262127222784, upper := 524254445568, M := 2 },
  { lower := 524254445568, upper := 1048508891136, M := 2 },
  { lower := 1048508891136, upper := 2097017782272, M := 2 },
  { lower := 2097017782272, upper := 4194035564544, M := 2 },
  { lower := 4194035564544, upper := 8388071129088, M := 2 },
  { lower := 8388071129088, upper := 16776142258176, M := 2 },
  { lower := 16776142258176, upper := 33552284516352, M := 2 },
  { lower := 33552284516352, upper := 67104569032704, M := 1 },
  { lower := 67104569032704, upper := 100000000000000, M := 1 }
]

def row063 : FiniteCoverRow := {
  height := row063_height,
  goods := row063_goods,
  layers := row063_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good000_checked :
    goodSegmentCheck 63 20 43
      { lower := 128, upper := 189, witness := RowWitness.topPrime 127 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good001_checked :
    goodSegmentCheck 63 20 43
      { lower := 190, upper := 243, witness := RowWitness.topPrime 181 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good002_checked :
    goodSegmentCheck 63 20 43
      { lower := 244, upper := 303, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good003_checked :
    goodSegmentCheck 63 20 43
      { lower := 304, upper := 355, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good004_checked :
    goodSegmentCheck 63 20 43
      { lower := 356, upper := 415, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good005_checked :
    goodSegmentCheck 63 20 43
      { lower := 416, upper := 471, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good006_checked :
    goodSegmentCheck 63 20 43
      { lower := 472, upper := 529, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good007_checked :
    goodSegmentCheck 63 20 43
      { lower := 530, upper := 585, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good008_checked :
    goodSegmentCheck 63 20 43
      { lower := 586, upper := 639, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good009_checked :
    goodSegmentCheck 63 20 43
      { lower := 640, upper := 693, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good010_checked :
    goodSegmentCheck 63 20 43
      { lower := 694, upper := 753, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good011_checked :
    goodSegmentCheck 63 20 43
      { lower := 754, upper := 813, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good012_checked :
    goodSegmentCheck 63 20 43
      { lower := 814, upper := 873, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good013_checked :
    goodSegmentCheck 63 20 43
      { lower := 874, upper := 925, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good014_checked :
    goodSegmentCheck 63 20 43
      { lower := 926, upper := 981, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good015_checked :
    goodSegmentCheck 63 20 43
      { lower := 982, upper := 1039, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good016_checked :
    goodSegmentCheck 63 20 43
      { lower := 1040, upper := 1101, witness := RowWitness.topPrime 1039 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good017_checked :
    goodSegmentCheck 63 20 43
      { lower := 1102, upper := 1159, witness := RowWitness.topPrime 1097 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good018_checked :
    goodSegmentCheck 63 20 43
      { lower := 1160, upper := 1215, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good019_checked :
    goodSegmentCheck 63 20 43
      { lower := 1216, upper := 1275, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good020_checked :
    goodSegmentCheck 63 20 43
      { lower := 1276, upper := 1321, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good021_checked :
    goodSegmentCheck 63 20 43
      { lower := 1322, upper := 1383, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good022_checked :
    goodSegmentCheck 63 20 43
      { lower := 1384, upper := 1443, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good023_checked :
    goodSegmentCheck 63 20 43
      { lower := 1444, upper := 1501, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good024_checked :
    goodSegmentCheck 63 20 43
      { lower := 1502, upper := 1561, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good025_checked :
    goodSegmentCheck 63 20 43
      { lower := 1562, upper := 1621, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good026_checked :
    goodSegmentCheck 63 20 43
      { lower := 1622, upper := 1683, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good027_checked :
    goodSegmentCheck 63 20 43
      { lower := 1684, upper := 1731, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good028_checked :
    goodSegmentCheck 63 20 43
      { lower := 1732, upper := 1785, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good029_checked :
    goodSegmentCheck 63 20 43
      { lower := 1786, upper := 1845, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good030_checked :
    goodSegmentCheck 63 20 43
      { lower := 1846, upper := 1893, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good031_checked :
    goodSegmentCheck 63 20 43
      { lower := 1894, upper := 1951, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good032_checked :
    goodSegmentCheck 63 20 43
      { lower := 1952, upper := 2013, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good033_checked :
    goodSegmentCheck 63 20 43
      { lower := 2014, upper := 2073, witness := RowWitness.topPrime 2011 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good034_checked :
    goodSegmentCheck 63 20 43
      { lower := 2074, upper := 2131, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good035_checked :
    goodSegmentCheck 63 20 43
      { lower := 2132, upper := 2193, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good036_checked :
    goodSegmentCheck 63 20 43
      { lower := 2194, upper := 2241, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good037_checked :
    goodSegmentCheck 63 20 43
      { lower := 2242, upper := 2301, witness := RowWitness.topPrime 2239 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good038_checked :
    goodSegmentCheck 63 20 43
      { lower := 2302, upper := 2359, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good039_checked :
    goodSegmentCheck 63 20 43
      { lower := 2360, upper := 2419, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good040_checked :
    goodSegmentCheck 63 20 43
      { lower := 2420, upper := 2479, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good041_checked :
    goodSegmentCheck 63 20 43
      { lower := 2480, upper := 2539, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good042_checked :
    goodSegmentCheck 63 20 43
      { lower := 2540, upper := 2601, witness := RowWitness.topPrime 2539 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good043_checked :
    goodSegmentCheck 63 20 43
      { lower := 2602, upper := 2655, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good044_checked :
    goodSegmentCheck 63 20 43
      { lower := 2656, upper := 2709, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good045_checked :
    goodSegmentCheck 63 20 43
      { lower := 2710, upper := 2769, witness := RowWitness.topPrime 2707 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good046_checked :
    goodSegmentCheck 63 20 43
      { lower := 2770, upper := 2829, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good047_checked :
    goodSegmentCheck 63 20 43
      { lower := 2830, upper := 2881, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good048_checked :
    goodSegmentCheck 63 20 43
      { lower := 2882, upper := 2941, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good049_checked :
    goodSegmentCheck 63 20 43
      { lower := 2942, upper := 3001, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good050_checked :
    goodSegmentCheck 63 20 43
      { lower := 3002, upper := 3063, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good051_checked :
    goodSegmentCheck 63 20 43
      { lower := 3064, upper := 3123, witness := RowWitness.topPrime 3061 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good052_checked :
    goodSegmentCheck 63 20 43
      { lower := 3124, upper := 3183, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good053_checked :
    goodSegmentCheck 63 20 43
      { lower := 3184, upper := 3243, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good054_checked :
    goodSegmentCheck 63 20 43
      { lower := 3244, upper := 3291, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good055_checked :
    goodSegmentCheck 63 20 43
      { lower := 3292, upper := 3333, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good056_checked :
    goodSegmentCheck 63 20 43
      { lower := 3334, upper := 3393, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good057_checked :
    goodSegmentCheck 63 20 43
      { lower := 3394, upper := 3453, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good058_checked :
    goodSegmentCheck 63 20 43
      { lower := 3454, upper := 3511, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good059_checked :
    goodSegmentCheck 63 20 43
      { lower := 3512, upper := 3573, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good060_checked :
    goodSegmentCheck 63 20 43
      { lower := 3574, upper := 3633, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good061_checked :
    goodSegmentCheck 63 20 43
      { lower := 3634, upper := 3693, witness := RowWitness.topPrime 3631 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good062_checked :
    goodSegmentCheck 63 20 43
      { lower := 3694, upper := 3753, witness := RowWitness.topPrime 3691 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good063_checked :
    goodSegmentCheck 63 20 43
      { lower := 3754, upper := 3801, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good064_checked :
    goodSegmentCheck 63 20 43
      { lower := 3802, upper := 3859, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good065_checked :
    goodSegmentCheck 63 20 43
      { lower := 3860, upper := 3915, witness := RowWitness.topPrime 3853 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good066_checked :
    goodSegmentCheck 63 20 43
      { lower := 3916, upper := 3937, witness := RowWitness.topPrime 3911 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good067_checked :
    goodSegmentCheck 63 20 43
      { lower := 3971, upper := 4029, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good068_checked :
    goodSegmentCheck 63 20 43
      { lower := 4030, upper := 4089, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good069_checked :
    goodSegmentCheck 63 20 43
      { lower := 4090, upper := 4141, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good070_checked :
    goodSegmentCheck 63 20 43
      { lower := 4142, upper := 4169, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good071_checked :
    goodSegmentCheck 63 20 43
      { lower := 4224, upper := 4281, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good072_checked :
    goodSegmentCheck 63 20 43
      { lower := 4282, upper := 4287, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good073_checked :
    goodSegmentCheck 63 20 43
      { lower := 4335, upper := 4389, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good074_checked :
    goodSegmentCheck 63 20 43
      { lower := 4390, upper := 4435, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good075_checked :
    goodSegmentCheck 63 20 43
      { lower := 4436, upper := 4456, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good076_checked :
    goodSegmentCheck 63 20 43
      { lower := 4608, upper := 4665, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good077_checked :
    goodSegmentCheck 63 20 43
      { lower := 4666, upper := 4670, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good078_checked :
    goodSegmentCheck 63 20 43
      { lower := 4732, upper := 4755, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good079_checked :
    goodSegmentCheck 63 20 43
      { lower := 4761, upper := 4794, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good080_checked :
    goodSegmentCheck 63 20 43
      { lower := 4802, upper := 4863, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good081_checked :
    goodSegmentCheck 63 20 43
      { lower := 4864, upper := 4867, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good082_checked :
    goodSegmentCheck 63 20 43
      { lower := 4901, upper := 4951, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good083_checked :
    goodSegmentCheck 63 20 43
      { lower := 4952, upper := 4963, witness := RowWitness.topPrime 4951 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good084_checked :
    goodSegmentCheck 63 20 43
      { lower := 5043, upper := 5101, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good085_checked :
    goodSegmentCheck 63 20 43
      { lower := 5102, upper := 5116, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good086_checked :
    goodSegmentCheck 63 20 43
      { lower := 5120, upper := 5132, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good087_checked :
    goodSegmentCheck 63 20 43
      { lower := 5239, upper := 5264, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good088_checked :
    goodSegmentCheck 63 20 43
      { lower := 5290, upper := 5301, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good089_checked :
    goodSegmentCheck 63 20 43
      { lower := 5324, upper := 5352, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good090_checked :
    goodSegmentCheck 63 20 43
      { lower := 5376, upper := 5386, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good091_checked :
    goodSegmentCheck 63 20 43
      { lower := 5408, upper := 5469, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good092_checked :
    goodSegmentCheck 63 20 43
      { lower := 5470, upper := 5470, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good093_checked :
    goodSegmentCheck 63 20 43
      { lower := 5476, upper := 5477, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good094_checked :
    goodSegmentCheck 63 20 43
      { lower := 5491, upper := 5538, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good095_checked :
    goodSegmentCheck 63 20 43
      { lower := 5547, upper := 5553, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good096_checked :
    goodSegmentCheck 63 20 43
      { lower := 5577, upper := 5609, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good097_checked :
    goodSegmentCheck 63 20 43
      { lower := 5618, upper := 5653, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good098_checked :
    goodSegmentCheck 63 20 43
      { lower := 5654, upper := 5687, witness := RowWitness.topPrime 5653 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good099_checked :
    goodSegmentCheck 63 20 43
      { lower := 5776, upper := 5811, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good100_checked :
    goodSegmentCheck 63 20 43
      { lower := 5812, upper := 5842, witness := RowWitness.topPrime 5807 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good101_checked :
    goodSegmentCheck 63 20 43
      { lower := 5888, upper := 5943, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good102_checked :
    goodSegmentCheck 63 20 43
      { lower := 5944, upper := 5949, witness := RowWitness.topPrime 5939 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good103_checked :
    goodSegmentCheck 63 20 43
      { lower := 6144, upper := 6199, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good104_checked :
    goodSegmentCheck 63 20 43
      { lower := 6358, upper := 6415, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good105_checked :
    goodSegmentCheck 63 20 43
      { lower := 6416, upper := 6420, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good106_checked :
    goodSegmentCheck 63 20 43
      { lower := 6591, upper := 6623, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good107_checked :
    goodSegmentCheck 63 20 43
      { lower := 6627, upper := 6681, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good108_checked :
    goodSegmentCheck 63 20 43
      { lower := 6682, upper := 6717, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good109_checked :
    goodSegmentCheck 63 20 43
      { lower := 6727, upper := 6781, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good110_checked :
    goodSegmentCheck 63 20 43
      { lower := 6782, upper := 6789, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good111_checked :
    goodSegmentCheck 63 20 43
      { lower := 6859, upper := 6919, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good112_checked :
    goodSegmentCheck 63 20 43
      { lower := 6920, upper := 6979, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good113_checked :
    goodSegmentCheck 63 20 43
      { lower := 6980, upper := 6998, witness := RowWitness.topPrime 6977 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good114_checked :
    goodSegmentCheck 63 20 43
      { lower := 7203, upper := 7255, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good115_checked :
    goodSegmentCheck 63 20 43
      { lower := 7256, upper := 7282, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good116_checked :
    goodSegmentCheck 63 20 43
      { lower := 7406, upper := 7455, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good117_checked :
    goodSegmentCheck 63 20 43
      { lower := 7456, upper := 7486, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good118_checked :
    goodSegmentCheck 63 20 43
      { lower := 7500, upper := 7504, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good119_checked :
    goodSegmentCheck 63 20 43
      { lower := 7514, upper := 7562, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good120_checked :
    goodSegmentCheck 63 20 43
      { lower := 7569, upper := 7576, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good121_checked :
    goodSegmentCheck 63 20 43
      { lower := 7581, upper := 7631, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good122_checked :
    goodSegmentCheck 63 20 43
      { lower := 7688, upper := 7742, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good123_checked :
    goodSegmentCheck 63 20 43
      { lower := 7942, upper := 7999, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good124_checked :
    goodSegmentCheck 63 20 43
      { lower := 8000, upper := 8004, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good125_checked :
    goodSegmentCheck 63 20 43
      { lower := 8125, upper := 8154, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good126_checked :
    goodSegmentCheck 63 20 43
      { lower := 8214, upper := 8254, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good127_checked :
    goodSegmentCheck 63 20 43
      { lower := 8405, upper := 8451, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good128_checked :
    goodSegmentCheck 63 20 43
      { lower := 8452, upper := 8489, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good129_checked :
    goodSegmentCheck 63 20 43
      { lower := 8664, upper := 8725, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good130_checked :
    goodSegmentCheck 63 20 43
      { lower := 8726, upper := 8732, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good131_checked :
    goodSegmentCheck 63 20 43
      { lower := 8750, upper := 8766, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good132_checked :
    goodSegmentCheck 63 20 43
      { lower := 8788, upper := 8812, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good133_checked :
    goodSegmentCheck 63 20 43
      { lower := 8836, upper := 8850, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good134_checked :
    goodSegmentCheck 63 20 43
      { lower := 9025, upper := 9055, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good135_checked :
    goodSegmentCheck 63 20 43
      { lower := 9245, upper := 9303, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good136_checked :
    goodSegmentCheck 63 20 43
      { lower := 9304, upper := 9307, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good137_checked :
    goodSegmentCheck 63 20 43
      { lower := 9375, upper := 9379, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good138_checked :
    goodSegmentCheck 63 20 43
      { lower := 9386, upper := 9437, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good139_checked :
    goodSegmentCheck 63 20 43
      { lower := 9583, upper := 9584, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good140_checked :
    goodSegmentCheck 63 20 43
      { lower := 9604, upper := 9663, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good141_checked :
    goodSegmentCheck 63 20 43
      { lower := 9664, upper := 9666, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good142_checked :
    goodSegmentCheck 63 20 43
      { lower := 9747, upper := 9790, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good143_checked :
    goodSegmentCheck 63 20 43
      { lower := 10051, upper := 10062, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good144_checked :
    goodSegmentCheck 63 20 43
      { lower := 10086, upper := 10141, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good145_checked :
    goodSegmentCheck 63 20 43
      { lower := 10142, upper := 10154, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good146_checked :
    goodSegmentCheck 63 20 43
      { lower := 10469, upper := 10505, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good147_checked :
    goodSegmentCheck 63 20 43
      { lower := 10580, upper := 10629, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good148_checked :
    goodSegmentCheck 63 20 43
      { lower := 10630, upper := 10642, witness := RowWitness.topPrime 10627 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good149_checked :
    goodSegmentCheck 63 20 43
      { lower := 10648, upper := 10687, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good150_checked :
    goodSegmentCheck 63 20 43
      { lower := 10952, upper := 11011, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good151_checked :
    goodSegmentCheck 63 20 43
      { lower := 11012, upper := 11014, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good152_checked :
    goodSegmentCheck 63 20 43
      { lower := 11045, upper := 11047, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good153_checked :
    goodSegmentCheck 63 20 43
      { lower := 11094, upper := 11107, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good154_checked :
    goodSegmentCheck 63 20 43
      { lower := 11109, upper := 11155, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good155_checked :
    goodSegmentCheck 63 20 43
      { lower := 11156, upper := 11156, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good156_checked :
    goodSegmentCheck 63 20 43
      { lower := 11163, upper := 11171, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good157_checked :
    goodSegmentCheck 63 20 43
      { lower := 11250, upper := 11305, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good158_checked :
    goodSegmentCheck 63 20 43
      { lower := 11306, upper := 11312, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good159_checked :
    goodSegmentCheck 63 20 43
      { lower := 11774, upper := 11805, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good160_checked :
    goodSegmentCheck 63 20 43
      { lower := 11806, upper := 11836, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good161_checked :
    goodSegmentCheck 63 20 43
      { lower := 12321, upper := 12350, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good162_checked :
    goodSegmentCheck 63 20 43
      { lower := 12500, upper := 12555, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good163_checked :
    goodSegmentCheck 63 20 43
      { lower := 13125, upper := 13183, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good164_checked :
    goodSegmentCheck 63 20 43
      { lower := 13184, upper := 13187, witness := RowWitness.topPrime 13183 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good165_checked :
    goodSegmentCheck 63 20 43
      { lower := 13225, upper := 13244, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good166_checked :
    goodSegmentCheck 63 20 43
      { lower := 13254, upper := 13287, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good167_checked :
    goodSegmentCheck 63 20 43
      { lower := 13310, upper := 13371, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good168_checked :
    goodSegmentCheck 63 20 43
      { lower := 13372, upper := 13372, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good169_checked :
    goodSegmentCheck 63 20 43
      { lower := 13454, upper := 13513, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good170_checked :
    goodSegmentCheck 63 20 43
      { lower := 13514, upper := 13516, witness := RowWitness.topPrime 13513 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good171_checked :
    goodSegmentCheck 63 20 43
      { lower := 13718, upper := 13773, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good172_checked :
    goodSegmentCheck 63 20 43
      { lower := 13774, upper := 13812, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good173_checked :
    goodSegmentCheck 63 20 43
      { lower := 14297, upper := 14355, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good174_checked :
    goodSegmentCheck 63 20 43
      { lower := 14356, upper := 14359, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good175_checked :
    goodSegmentCheck 63 20 43
      { lower := 14375, upper := 14398, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good176_checked :
    goodSegmentCheck 63 20 43
      { lower := 14415, upper := 14437, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good177_checked :
    goodSegmentCheck 63 20 43
      { lower := 14792, upper := 14801, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good178_checked :
    goodSegmentCheck 63 20 43
      { lower := 14812, upper := 14859, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good179_checked :
    goodSegmentCheck 63 20 43
      { lower := 14860, upper := 14874, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good180_checked :
    goodSegmentCheck 63 20 43
      { lower := 14884, upper := 14910, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good181_checked :
    goodSegmentCheck 63 20 43
      { lower := 15059, upper := 15062, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good182_checked :
    goodSegmentCheck 63 20 43
      { lower := 15138, upper := 15191, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good183_checked :
    goodSegmentCheck 63 20 43
      { lower := 15360, upper := 15421, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good184_checked :
    goodSegmentCheck 63 20 43
      { lower := 15422, upper := 15438, witness := RowWitness.topPrime 15413 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good185_checked :
    goodSegmentCheck 63 20 43
      { lower := 15979, upper := 16034, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good186_checked :
    goodSegmentCheck 63 20 43
      { lower := 16384, upper := 16399, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good187_checked :
    goodSegmentCheck 63 20 43
      { lower := 16428, upper := 16446, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good188_checked :
    goodSegmentCheck 63 20 43
      { lower := 16810, upper := 16849, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good189_checked :
    goodSegmentCheck 63 20 43
      { lower := 16850, upper := 16905, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good190_checked :
    goodSegmentCheck 63 20 43
      { lower := 16906, upper := 16916, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good191_checked :
    goodSegmentCheck 63 20 43
      { lower := 17303, upper := 17360, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good192_checked :
    goodSegmentCheck 63 20 43
      { lower := 17408, upper := 17463, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good193_checked :
    goodSegmentCheck 63 20 43
      { lower := 17464, upper := 17467, witness := RowWitness.topPrime 17449 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good194_checked :
    goodSegmentCheck 63 20 43
      { lower := 17672, upper := 17723, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good195_checked :
    goodSegmentCheck 63 20 43
      { lower := 18490, upper := 18543, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good196_checked :
    goodSegmentCheck 63 20 43
      { lower := 18544, upper := 18553, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good197_checked :
    goodSegmentCheck 63 20 43
      { lower := 18634, upper := 18667, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good198_checked :
    goodSegmentCheck 63 20 43
      { lower := 19220, upper := 19228, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good199_checked :
    goodSegmentCheck 63 20 43
      { lower := 19663, upper := 19723, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good200_checked :
    goodSegmentCheck 63 20 43
      { lower := 19724, upper := 19725, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good201_checked :
    goodSegmentCheck 63 20 43
      { lower := 20181, upper := 20239, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good202_checked :
    goodSegmentCheck 63 20 43
      { lower := 20240, upper := 20243, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good203_checked :
    goodSegmentCheck 63 20 43
      { lower := 20535, upper := 20542, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good204_checked :
    goodSegmentCheck 63 20 43
      { lower := 20577, upper := 20597, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good205_checked :
    goodSegmentCheck 63 20 43
      { lower := 21866, upper := 21925, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good206_checked :
    goodSegmentCheck 63 20 43
      { lower := 21926, upper := 21937, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good207_checked :
    goodSegmentCheck 63 20 43
      { lower := 22103, upper := 22152, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good208_checked :
    goodSegmentCheck 63 20 43
      { lower := 22528, upper := 22534, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good209_checked :
    goodSegmentCheck 63 20 43
      { lower := 23552, upper := 23596, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good210_checked :
    goodSegmentCheck 63 20 43
      { lower := 24037, upper := 24087, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good211_checked :
    goodSegmentCheck 63 20 43
      { lower := 24334, upper := 24361, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good212_checked :
    goodSegmentCheck 63 20 43
      { lower := 24367, upper := 24421, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good213_checked :
    goodSegmentCheck 63 20 43
      { lower := 24422, upper := 24429, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good214_checked :
    goodSegmentCheck 63 20 43
      { lower := 24576, upper := 24627, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good215_checked :
    goodSegmentCheck 63 20 43
      { lower := 25000, upper := 25048, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good216_checked :
    goodSegmentCheck 63 20 43
      { lower := 25289, upper := 25323, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good217_checked :
    goodSegmentCheck 63 20 43
      { lower := 25324, upper := 25343, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good218_checked :
    goodSegmentCheck 63 20 43
      { lower := 25947, upper := 25948, witness := RowWitness.topPrime 25943 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good219_checked :
    goodSegmentCheck 63 20 43
      { lower := 26047, upper := 26073, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good220_checked :
    goodSegmentCheck 63 20 43
      { lower := 26624, upper := 26659, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good221_checked :
    goodSegmentCheck 63 20 43
      { lower := 26660, upper := 26682, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good222_checked :
    goodSegmentCheck 63 20 43
      { lower := 27436, upper := 27442, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good223_checked :
    goodSegmentCheck 63 20 43
      { lower := 28125, upper := 28152, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good224_checked :
    goodSegmentCheck 63 20 43
      { lower := 28577, upper := 28623, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good225_checked :
    goodSegmentCheck 63 20 43
      { lower := 28717, upper := 28734, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good226_checked :
    goodSegmentCheck 63 20 43
      { lower := 28749, upper := 28779, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good227_checked :
    goodSegmentCheck 63 20 43
      { lower := 29791, upper := 29830, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good228_checked :
    goodSegmentCheck 63 20 43
      { lower := 30758, upper := 30782, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good229_checked :
    goodSegmentCheck 63 20 43
      { lower := 30926, upper := 30961, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good230_checked :
    goodSegmentCheck 63 20 43
      { lower := 31487, upper := 31495, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good231_checked :
    goodSegmentCheck 63 20 43
      { lower := 31944, upper := 31969, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good232_checked :
    goodSegmentCheck 63 20 43
      { lower := 31970, upper := 32001, witness := RowWitness.topPrime 31963 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good233_checked :
    goodSegmentCheck 63 20 43
      { lower := 33620, upper := 33676, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good234_checked :
    goodSegmentCheck 63 20 43
      { lower := 34391, upper := 34437, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good235_checked :
    goodSegmentCheck 63 20 43
      { lower := 34816, upper := 34869, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good236_checked :
    goodSegmentCheck 63 20 43
      { lower := 34870, upper := 34872, witness := RowWitness.topPrime 34849 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good237_checked :
    goodSegmentCheck 63 20 43
      { lower := 35152, upper := 35193, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good238_checked :
    goodSegmentCheck 63 20 43
      { lower := 35344, upper := 35363, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good239_checked :
    goodSegmentCheck 63 20 43
      { lower := 36517, upper := 36559, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good240_checked :
    goodSegmentCheck 63 20 43
      { lower := 36560, upper := 36563, witness := RowWitness.topPrime 36559 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good241_checked :
    goodSegmentCheck 63 20 43
      { lower := 36982, upper := 37041, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good242_checked :
    goodSegmentCheck 63 20 43
      { lower := 37042, upper := 37042, witness := RowWitness.topPrime 37039 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good243_checked :
    goodSegmentCheck 63 20 43
      { lower := 37553, upper := 37562, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good244_checked :
    goodSegmentCheck 63 20 43
      { lower := 39326, upper := 39385, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good245_checked :
    goodSegmentCheck 63 20 43
      { lower := 39386, upper := 39388, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good246_checked :
    goodSegmentCheck 63 20 43
      { lower := 40678, upper := 40687, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good247_checked :
    goodSegmentCheck 63 20 43
      { lower := 40960, upper := 40993, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good248_checked :
    goodSegmentCheck 63 20 43
      { lower := 41772, upper := 41805, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good249_checked :
    goodSegmentCheck 63 20 43
      { lower := 43940, upper := 43985, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good250_checked :
    goodSegmentCheck 63 20 43
      { lower := 44217, upper := 44242, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good251_checked :
    goodSegmentCheck 63 20 43
      { lower := 48373, upper := 48396, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good252_checked :
    goodSegmentCheck 63 20 43
      { lower := 48778, upper := 48796, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good253_checked :
    goodSegmentCheck 63 20 43
      { lower := 49152, upper := 49192, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good254_checked :
    goodSegmentCheck 63 20 43
      { lower := 50562, upper := 50593, witness := RowWitness.topPrime 50551 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good255_checked :
    goodSegmentCheck 63 20 43
      { lower := 58989, upper := 59018, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_good256_checked :
    goodSegmentCheck 63 20 43
      { lower := 59049, upper := 59051, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good257_checked :
    goodSegmentCheck 63 20 43
      { lower := 59582, upper := 59598, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good258_checked :
    goodSegmentCheck 63 20 43
      { lower := 68782, upper := 68812, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good259_checked :
    goodSegmentCheck 63 20 43
      { lower := 69632, upper := 69682, witness := RowWitness.topPrime 69623 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good260_checked :
    goodSegmentCheck 63 20 43
      { lower := 73205, upper := 73229, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good261_checked :
    goodSegmentCheck 63 20 43
      { lower := 73728, upper := 73757, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good262_checked :
    goodSegmentCheck 63 20 43
      { lower := 78141, upper := 78187, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good263_checked :
    goodSegmentCheck 63 20 43
      { lower := 81920, upper := 81924, witness := RowWitness.topPrime 81919 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good264_checked :
    goodSegmentCheck 63 20 43
      { lower := 98304, upper := 98322, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row063_good265_checked :
    goodSegmentCheck 63 20 43
      { lower := 327701, upper := 327742, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 63) (r := 20) (s := 43) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_good265_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_goods_checked :
    row063.goods.all (goodSegmentCheck row063.height.i row063.height.r row063.height.s) = true := by
  change row063_goods.all (goodSegmentCheck 63 20 43) = true
  simp only [row063_goods, List.all_cons, List.all_nil,
    row063_good000_checked,
    row063_good001_checked,
    row063_good002_checked,
    row063_good003_checked,
    row063_good004_checked,
    row063_good005_checked,
    row063_good006_checked,
    row063_good007_checked,
    row063_good008_checked,
    row063_good009_checked,
    row063_good010_checked,
    row063_good011_checked,
    row063_good012_checked,
    row063_good013_checked,
    row063_good014_checked,
    row063_good015_checked,
    row063_good016_checked,
    row063_good017_checked,
    row063_good018_checked,
    row063_good019_checked,
    row063_good020_checked,
    row063_good021_checked,
    row063_good022_checked,
    row063_good023_checked,
    row063_good024_checked,
    row063_good025_checked,
    row063_good026_checked,
    row063_good027_checked,
    row063_good028_checked,
    row063_good029_checked,
    row063_good030_checked,
    row063_good031_checked,
    row063_good032_checked,
    row063_good033_checked,
    row063_good034_checked,
    row063_good035_checked,
    row063_good036_checked,
    row063_good037_checked,
    row063_good038_checked,
    row063_good039_checked,
    row063_good040_checked,
    row063_good041_checked,
    row063_good042_checked,
    row063_good043_checked,
    row063_good044_checked,
    row063_good045_checked,
    row063_good046_checked,
    row063_good047_checked,
    row063_good048_checked,
    row063_good049_checked,
    row063_good050_checked,
    row063_good051_checked,
    row063_good052_checked,
    row063_good053_checked,
    row063_good054_checked,
    row063_good055_checked,
    row063_good056_checked,
    row063_good057_checked,
    row063_good058_checked,
    row063_good059_checked,
    row063_good060_checked,
    row063_good061_checked,
    row063_good062_checked,
    row063_good063_checked,
    row063_good064_checked,
    row063_good065_checked,
    row063_good066_checked,
    row063_good067_checked,
    row063_good068_checked,
    row063_good069_checked,
    row063_good070_checked,
    row063_good071_checked,
    row063_good072_checked,
    row063_good073_checked,
    row063_good074_checked,
    row063_good075_checked,
    row063_good076_checked,
    row063_good077_checked,
    row063_good078_checked,
    row063_good079_checked,
    row063_good080_checked,
    row063_good081_checked,
    row063_good082_checked,
    row063_good083_checked,
    row063_good084_checked,
    row063_good085_checked,
    row063_good086_checked,
    row063_good087_checked,
    row063_good088_checked,
    row063_good089_checked,
    row063_good090_checked,
    row063_good091_checked,
    row063_good092_checked,
    row063_good093_checked,
    row063_good094_checked,
    row063_good095_checked,
    row063_good096_checked,
    row063_good097_checked,
    row063_good098_checked,
    row063_good099_checked,
    row063_good100_checked,
    row063_good101_checked,
    row063_good102_checked,
    row063_good103_checked,
    row063_good104_checked,
    row063_good105_checked,
    row063_good106_checked,
    row063_good107_checked,
    row063_good108_checked,
    row063_good109_checked,
    row063_good110_checked,
    row063_good111_checked,
    row063_good112_checked,
    row063_good113_checked,
    row063_good114_checked,
    row063_good115_checked,
    row063_good116_checked,
    row063_good117_checked,
    row063_good118_checked,
    row063_good119_checked,
    row063_good120_checked,
    row063_good121_checked,
    row063_good122_checked,
    row063_good123_checked,
    row063_good124_checked,
    row063_good125_checked,
    row063_good126_checked,
    row063_good127_checked,
    row063_good128_checked,
    row063_good129_checked,
    row063_good130_checked,
    row063_good131_checked,
    row063_good132_checked,
    row063_good133_checked,
    row063_good134_checked,
    row063_good135_checked,
    row063_good136_checked,
    row063_good137_checked,
    row063_good138_checked,
    row063_good139_checked,
    row063_good140_checked,
    row063_good141_checked,
    row063_good142_checked,
    row063_good143_checked,
    row063_good144_checked,
    row063_good145_checked,
    row063_good146_checked,
    row063_good147_checked,
    row063_good148_checked,
    row063_good149_checked,
    row063_good150_checked,
    row063_good151_checked,
    row063_good152_checked,
    row063_good153_checked,
    row063_good154_checked,
    row063_good155_checked,
    row063_good156_checked,
    row063_good157_checked,
    row063_good158_checked,
    row063_good159_checked,
    row063_good160_checked,
    row063_good161_checked,
    row063_good162_checked,
    row063_good163_checked,
    row063_good164_checked,
    row063_good165_checked,
    row063_good166_checked,
    row063_good167_checked,
    row063_good168_checked,
    row063_good169_checked,
    row063_good170_checked,
    row063_good171_checked,
    row063_good172_checked,
    row063_good173_checked,
    row063_good174_checked,
    row063_good175_checked,
    row063_good176_checked,
    row063_good177_checked,
    row063_good178_checked,
    row063_good179_checked,
    row063_good180_checked,
    row063_good181_checked,
    row063_good182_checked,
    row063_good183_checked,
    row063_good184_checked,
    row063_good185_checked,
    row063_good186_checked,
    row063_good187_checked,
    row063_good188_checked,
    row063_good189_checked,
    row063_good190_checked,
    row063_good191_checked,
    row063_good192_checked,
    row063_good193_checked,
    row063_good194_checked,
    row063_good195_checked,
    row063_good196_checked,
    row063_good197_checked,
    row063_good198_checked,
    row063_good199_checked,
    row063_good200_checked,
    row063_good201_checked,
    row063_good202_checked,
    row063_good203_checked,
    row063_good204_checked,
    row063_good205_checked,
    row063_good206_checked,
    row063_good207_checked,
    row063_good208_checked,
    row063_good209_checked,
    row063_good210_checked,
    row063_good211_checked,
    row063_good212_checked,
    row063_good213_checked,
    row063_good214_checked,
    row063_good215_checked,
    row063_good216_checked,
    row063_good217_checked,
    row063_good218_checked,
    row063_good219_checked,
    row063_good220_checked,
    row063_good221_checked,
    row063_good222_checked,
    row063_good223_checked,
    row063_good224_checked,
    row063_good225_checked,
    row063_good226_checked,
    row063_good227_checked,
    row063_good228_checked,
    row063_good229_checked,
    row063_good230_checked,
    row063_good231_checked,
    row063_good232_checked,
    row063_good233_checked,
    row063_good234_checked,
    row063_good235_checked,
    row063_good236_checked,
    row063_good237_checked,
    row063_good238_checked,
    row063_good239_checked,
    row063_good240_checked,
    row063_good241_checked,
    row063_good242_checked,
    row063_good243_checked,
    row063_good244_checked,
    row063_good245_checked,
    row063_good246_checked,
    row063_good247_checked,
    row063_good248_checked,
    row063_good249_checked,
    row063_good250_checked,
    row063_good251_checked,
    row063_good252_checked,
    row063_good253_checked,
    row063_good254_checked,
    row063_good255_checked,
    row063_good256_checked,
    row063_good257_checked,
    row063_good258_checked,
    row063_good259_checked,
    row063_good260_checked,
    row063_good261_checked,
    row063_good262_checked,
    row063_good263_checked,
    row063_good264_checked,
    row063_good265_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_registered :
    decide (row063.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row063_small_checked :
    coverCheck (2 * row063.height.i + 2) (row063.height.i * (row063.height.i - 1) - 1)
      (row063.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row063_layerCover_checked :
    coverCheck (row063.height.i * (row063.height.i - 1)) (row063.height.n0 - 1)
      (row063.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_bounds : List NatInterval :=
  [(128, 189), (190, 243), (244, 303), (304, 355), (356, 415), (416, 471), (472, 529), (530, 585), (586, 639), (640, 693), (694, 753), (754, 813), (814, 873), (874, 925), (926, 981), (982, 1039), (1040, 1101), (1102, 1159), (1160, 1215), (1216, 1275), (1276, 1321), (1322, 1383), (1384, 1443), (1444, 1501), (1502, 1561), (1562, 1621), (1622, 1683), (1684, 1731), (1732, 1785), (1786, 1845), (1846, 1893), (1894, 1951), (1952, 2013), (2014, 2073), (2074, 2131), (2132, 2193), (2194, 2241), (2242, 2301), (2302, 2359), (2360, 2419), (2420, 2479), (2480, 2539), (2540, 2601), (2602, 2655), (2656, 2709), (2710, 2769), (2770, 2829), (2830, 2881), (2882, 2941), (2942, 3001), (3002, 3063), (3064, 3123), (3124, 3183), (3184, 3243), (3244, 3291), (3292, 3333), (3334, 3393), (3394, 3453), (3454, 3511), (3512, 3573), (3574, 3633), (3634, 3693), (3694, 3753), (3754, 3801), (3802, 3859), (3860, 3915), (3916, 3937), (3971, 4029), (4030, 4089), (4090, 4141), (4142, 4169), (4224, 4281), (4282, 4287), (4335, 4389), (4390, 4435), (4436, 4456), (4608, 4665), (4666, 4670), (4732, 4755), (4761, 4794), (4802, 4863), (4864, 4867), (4901, 4951), (4952, 4963), (5043, 5101), (5102, 5116), (5120, 5132), (5239, 5264), (5290, 5301), (5324, 5352), (5376, 5386), (5408, 5469), (5470, 5470), (5476, 5477), (5491, 5538), (5547, 5553), (5577, 5609), (5618, 5653), (5654, 5687), (5776, 5811), (5812, 5842), (5888, 5943), (5944, 5949), (6144, 6199), (6358, 6415), (6416, 6420), (6591, 6623), (6627, 6681), (6682, 6717), (6727, 6781), (6782, 6789), (6859, 6919), (6920, 6979), (6980, 6998), (7203, 7255), (7256, 7282), (7406, 7455), (7456, 7486), (7500, 7504), (7514, 7562), (7569, 7576), (7581, 7631), (7688, 7742), (7942, 7999), (8000, 8004), (8125, 8154), (8214, 8254), (8405, 8451), (8452, 8489), (8664, 8725), (8726, 8732), (8750, 8766), (8788, 8812), (8836, 8850), (9025, 9055), (9245, 9303), (9304, 9307), (9375, 9379), (9386, 9437), (9583, 9584), (9604, 9663), (9664, 9666), (9747, 9790), (10051, 10062), (10086, 10141), (10142, 10154), (10469, 10505), (10580, 10629), (10630, 10642), (10648, 10687), (10952, 11011), (11012, 11014), (11045, 11047), (11094, 11107), (11109, 11155), (11156, 11156), (11163, 11171), (11250, 11305), (11306, 11312), (11774, 11805), (11806, 11836), (12321, 12350), (12500, 12555), (13125, 13183), (13184, 13187), (13225, 13244), (13254, 13287), (13310, 13371), (13372, 13372), (13454, 13513), (13514, 13516), (13718, 13773), (13774, 13812), (14297, 14355), (14356, 14359), (14375, 14398), (14415, 14437), (14792, 14801), (14812, 14859), (14860, 14874), (14884, 14910), (15059, 15062), (15138, 15191), (15360, 15421), (15422, 15438), (15979, 16034), (16384, 16399), (16428, 16446), (16810, 16849), (16850, 16905), (16906, 16916), (17303, 17360), (17408, 17463), (17464, 17467), (17672, 17723), (18490, 18543), (18544, 18553), (18634, 18667), (19220, 19228), (19663, 19723), (19724, 19725), (20181, 20239), (20240, 20243), (20535, 20542), (20577, 20597), (21866, 21925), (21926, 21937), (22103, 22152), (22528, 22534), (23552, 23596), (24037, 24087), (24334, 24361), (24367, 24421), (24422, 24429), (24576, 24627), (25000, 25048), (25289, 25323), (25324, 25343), (25947, 25948), (26047, 26073), (26624, 26659), (26660, 26682), (27436, 27442), (28125, 28152), (28577, 28623), (28717, 28734), (28749, 28779), (29791, 29830), (30758, 30782), (30926, 30961), (31487, 31495), (31944, 31969), (31970, 32001), (33620, 33676), (34391, 34437), (34816, 34869), (34870, 34872), (35152, 35193), (35344, 35363), (36517, 36559), (36560, 36563), (36982, 37041), (37042, 37042), (37553, 37562), (39326, 39385), (39386, 39388), (40678, 40687), (40960, 40993), (41772, 41805), (43940, 43985), (44217, 44242), (48373, 48396), (48778, 48796), (49152, 49192), (50562, 50593), (58989, 59018), (59049, 59051), (59582, 59598), (68782, 68812), (69632, 69682), (73205, 73229), (73728, 73757), (78141, 78187), (81920, 81924), (98304, 98322), (327701, 327742)]

theorem row063_bounds_eq : row063.goods.map goodSegmentBounds = row063_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_layer000_intervals : List ColouredInterval :=
  [(2, 3968, 4030), (2, 4096, 4158), (2, 4224, 4286), (2, 4096, 4158), (2, 4352, 4414), (2, 4608, 4670), (2, 4864, 4926), (2, 5120, 5182), (2, 5376, 5438), (2, 5632, 5694), (2, 5888, 5950), (2, 6144, 6206), (2, 6400, 6462), (2, 6656, 6718), (2, 6912, 6974), (2, 7168, 7230), (2, 7424, 7486), (2, 7680, 7742), (2, 4096, 4158), (2, 4608, 4670), (2, 5120, 5182), (2, 5632, 5694), (2, 6144, 6206), (2, 6656, 6718), (2, 7168, 7230), (2, 7680, 7742), (2, 4096, 4158), (2, 5120, 5182), (2, 6144, 6206), (2, 7168, 7230), (2, 4096, 4158), (2, 6144, 6206), (2, 4096, 4158), (3, 4374, 4436), (3, 6561, 6623), (3, 6561, 6623), (5, 3906, 3937), (5, 4000, 4062), (5, 4125, 4187), (5, 4375, 4437), (5, 5000, 5062), (5, 5625, 5687), (5, 6250, 6312), (5, 6875, 6937), (5, 7500, 7562), (5, 6250, 6312), (7, 4802, 4864), (7, 7203, 7265), (11, 3906, 3934), (11, 3993, 4055), (11, 3993, 4055), (11, 5324, 5386), (11, 6655, 6717), (13, 3906, 3949), (13, 4056, 4118), (13, 4225, 4287), (13, 4394, 4456), (13, 4563, 4625), (13, 4732, 4794), (13, 4901, 4963), (13, 5070, 5132), (13, 5239, 5301), (13, 5408, 5470), (13, 5577, 5639), (13, 4394, 4456), (13, 6591, 6653), (17, 4046, 4108), (17, 4335, 4397), (17, 4624, 4686), (17, 4913, 4975), (17, 5202, 5264), (17, 5491, 5553), (17, 5780, 5842), (17, 6069, 6131), (17, 6358, 6420), (17, 6647, 6709), (17, 6936, 6998), (17, 7225, 7287), (17, 7514, 7576), (17, 7803, 7811), (17, 4913, 4975), (19, 3971, 4033), (19, 4332, 4394), (19, 4693, 4755), (19, 5054, 5116), (19, 5415, 5477), (19, 5776, 5838), (19, 6137, 6199), (19, 6498, 6560), (19, 6859, 6921), (19, 7220, 7282), (19, 7581, 7643), (19, 6859, 6921), (23, 4232, 4294), (23, 4761, 4823), (23, 5290, 5352), (23, 5819, 5881), (23, 6348, 6410), (23, 6877, 6939), (23, 7406, 7468), (29, 4205, 4267), (29, 5046, 5108), (29, 5887, 5949), (29, 6728, 6790), (29, 7569, 7631), (31, 3906, 3906), (31, 4805, 4867), (31, 5766, 5828), (31, 6727, 6789), (31, 7688, 7750), (37, 4107, 4169), (37, 5476, 5538), (37, 6845, 6907), (41, 5043, 5105), (41, 6724, 6786), (43, 5547, 5609), (43, 7396, 7458), (47, 4418, 4480), (47, 6627, 6689), (53, 5618, 5680), (59, 6962, 7024), (61, 7442, 7504)]

def row063_layer000_block000 : List ColouredInterval :=
  [(2, 3968, 4030), (2, 4096, 4158), (2, 4224, 4286), (2, 4096, 4158), (2, 4352, 4414), (2, 4608, 4670), (2, 4864, 4926), (2, 5120, 5182), (2, 5376, 5438), (2, 5632, 5694), (2, 5888, 5950), (2, 6144, 6206), (2, 6400, 6462), (2, 6656, 6718), (2, 6912, 6974), (2, 7168, 7230)]

def row063_layer000_block001 : List ColouredInterval :=
  [(2, 7424, 7486), (2, 7680, 7742), (2, 4096, 4158), (2, 4608, 4670), (2, 5120, 5182), (2, 5632, 5694), (2, 6144, 6206), (2, 6656, 6718), (2, 7168, 7230), (2, 7680, 7742), (2, 4096, 4158), (2, 5120, 5182), (2, 6144, 6206), (2, 7168, 7230), (2, 4096, 4158), (2, 6144, 6206)]

def row063_layer000_block002 : List ColouredInterval :=
  [(2, 4096, 4158), (3, 4374, 4436), (3, 6561, 6623), (3, 6561, 6623), (5, 3906, 3937), (5, 4000, 4062), (5, 4125, 4187), (5, 4375, 4437), (5, 5000, 5062), (5, 5625, 5687), (5, 6250, 6312), (5, 6875, 6937), (5, 7500, 7562), (5, 6250, 6312), (7, 4802, 4864), (7, 7203, 7265)]

def row063_layer000_block003 : List ColouredInterval :=
  [(11, 3906, 3934), (11, 3993, 4055), (11, 3993, 4055), (11, 5324, 5386), (11, 6655, 6717), (13, 3906, 3949), (13, 4056, 4118), (13, 4225, 4287), (13, 4394, 4456), (13, 4563, 4625), (13, 4732, 4794), (13, 4901, 4963), (13, 5070, 5132), (13, 5239, 5301), (13, 5408, 5470), (13, 5577, 5639)]

def row063_layer000_block004 : List ColouredInterval :=
  [(13, 4394, 4456), (13, 6591, 6653), (17, 4046, 4108), (17, 4335, 4397), (17, 4624, 4686), (17, 4913, 4975), (17, 5202, 5264), (17, 5491, 5553), (17, 5780, 5842), (17, 6069, 6131), (17, 6358, 6420), (17, 6647, 6709), (17, 6936, 6998), (17, 7225, 7287), (17, 7514, 7576), (17, 7803, 7811)]

def row063_layer000_block005 : List ColouredInterval :=
  [(17, 4913, 4975), (19, 3971, 4033), (19, 4332, 4394), (19, 4693, 4755), (19, 5054, 5116), (19, 5415, 5477), (19, 5776, 5838), (19, 6137, 6199), (19, 6498, 6560), (19, 6859, 6921), (19, 7220, 7282), (19, 7581, 7643), (19, 6859, 6921), (23, 4232, 4294), (23, 4761, 4823), (23, 5290, 5352)]

def row063_layer000_block006 : List ColouredInterval :=
  [(23, 5819, 5881), (23, 6348, 6410), (23, 6877, 6939), (23, 7406, 7468), (29, 4205, 4267), (29, 5046, 5108), (29, 5887, 5949), (29, 6728, 6790), (29, 7569, 7631), (31, 3906, 3906), (31, 4805, 4867), (31, 5766, 5828), (31, 6727, 6789), (31, 7688, 7750), (37, 4107, 4169), (37, 5476, 5538)]

def row063_layer000_block007 : List ColouredInterval :=
  [(37, 6845, 6907), (41, 5043, 5105), (41, 6724, 6786), (43, 5547, 5609), (43, 7396, 7458), (47, 4418, 4480), (47, 6627, 6689), (53, 5618, 5680), (59, 6962, 7024), (61, 7442, 7504)]

def row063_layer000_chunks : List (List ColouredInterval) :=
  [row063_layer000_block000, row063_layer000_block001, row063_layer000_block002, row063_layer000_block003, row063_layer000_block004, row063_layer000_block005, row063_layer000_block006, row063_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_arithmetic : LayerArithmeticValid row063.height { lower := 3906, upper := 7812, M := 33 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_enumeration :
    activePowerIntervalList 63 33 3906 7812 = row063_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_pairs000 :
    row063_layer000_block000.all (fun I => row063_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_pairs001 :
    row063_layer000_block001.all (fun I => row063_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_pairs002 :
    row063_layer000_block002.all (fun I => row063_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_pairs003 :
    row063_layer000_block003.all (fun I => row063_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_pairs004 :
    row063_layer000_block004.all (fun I => row063_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_pairs005 :
    row063_layer000_block005.all (fun I => row063_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_pairs006 :
    row063_layer000_block006.all (fun I => row063_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_pairs007 :
    row063_layer000_block007.all (fun I => row063_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_chunks_eq : row063_layer000_chunks.flatten = row063_layer000_intervals := by
  rfl

theorem row063_layer000_pairs : pairCoverCheck row063_layer000_intervals row063_bounds = true := by
  apply pairCoverCheck_of_chunks row063_layer000_chunks_eq
  intro block hblock
  simp only [row063_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row063_layer000_pairs000
  · exact row063_layer000_pairs001
  · exact row063_layer000_pairs002
  · exact row063_layer000_pairs003
  · exact row063_layer000_pairs004
  · exact row063_layer000_pairs005
  · exact row063_layer000_pairs006
  · exact row063_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer000_checked :
    coverLayerCheck row063.height row063.goods { lower := 3906, upper := 7812, M := 33 } = true := by
  exact coverLayerCheck_of_parts row063_layer000_arithmetic row063_layer000_enumeration row063_bounds_eq row063_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_layer001_intervals : List ColouredInterval :=
  [(2, 8192, 8254), (2, 8704, 8766), (2, 9216, 9278), (2, 9728, 9790), (2, 10240, 10302), (2, 10752, 10814), (2, 11264, 11326), (2, 11776, 11838), (2, 12288, 12350), (2, 12800, 12862), (2, 13312, 13374), (2, 13824, 13886), (2, 14336, 14398), (2, 14848, 14910), (2, 15360, 15422), (2, 8192, 8254), (2, 9216, 9278), (2, 10240, 10302), (2, 11264, 11326), (2, 12288, 12350), (2, 13312, 13374), (2, 14336, 14398), (2, 15360, 15422), (2, 8192, 8254), (2, 10240, 10302), (2, 12288, 12350), (2, 14336, 14398), (2, 8192, 8254), (2, 12288, 12350), (2, 8192, 8254), (3, 13122, 13184), (5, 8125, 8187), (5, 8750, 8812), (5, 9375, 9437), (5, 10000, 10062), (5, 10625, 10687), (5, 11250, 11312), (5, 11875, 11937), (5, 12500, 12562), (5, 13125, 13187), (5, 13750, 13812), (5, 14375, 14437), (5, 15000, 15062), (5, 9375, 9437), (5, 12500, 12562), (7, 9604, 9666), (11, 7986, 8048), (11, 9317, 9379), (11, 10648, 10710), (11, 11979, 12041), (11, 13310, 13372), (11, 14641, 14703), (11, 14641, 14703), (13, 8788, 8850), (13, 10985, 11047), (13, 13182, 13244), (13, 15379, 15441), (17, 7812, 7865), (17, 8092, 8154), (17, 8381, 8443), (17, 8670, 8732), (17, 9826, 9888), (17, 14739, 14801), (19, 7942, 8004), (19, 8303, 8365), (19, 8664, 8726), (19, 9025, 9087), (19, 9386, 9448), (19, 9747, 9809), (19, 10108, 10170), (19, 10469, 10531), (19, 10830, 10892), (19, 13718, 13780), (23, 7935, 7997), (23, 8464, 8526), (23, 8993, 9055), (23, 9522, 9584), (23, 10051, 10113), (23, 10580, 10642), (23, 11109, 11171), (23, 11638, 11700), (23, 12167, 12229), (23, 12696, 12758), (23, 13225, 13287), (23, 13754, 13816), (23, 14283, 14345), (23, 14812, 14874), (23, 15341, 15403), (23, 12167, 12229), (29, 8410, 8472), (29, 9251, 9313), (29, 10092, 10154), (29, 10933, 10995), (29, 11774, 11836), (29, 12615, 12677), (29, 13456, 13518), (29, 14297, 14359), (29, 15138, 15200), (31, 8649, 8711), (31, 9610, 9672), (31, 10571, 10633), (31, 11532, 11594), (31, 12493, 12555), (31, 13454, 13516), (31, 14415, 14477), (31, 15376, 15438), (37, 8214, 8276), (37, 9583, 9645), (37, 10952, 11014), (37, 12321, 12383), (37, 13690, 13752), (37, 15059, 15121), (41, 8405, 8467), (41, 10086, 10148), (41, 11767, 11829), (41, 13448, 13510), (41, 15129, 15191), (43, 9245, 9307), (43, 11094, 11156), (43, 12943, 13005), (43, 14792, 14854), (47, 8836, 8898), (47, 11045, 11107), (47, 13254, 13316), (47, 15463, 15525), (53, 8427, 8489), (53, 11236, 11298), (53, 14045, 14107), (59, 10443, 10505), (59, 13924, 13986), (61, 11163, 11225), (61, 14884, 14946)]

def row063_layer001_block000 : List ColouredInterval :=
  [(2, 8192, 8254), (2, 8704, 8766), (2, 9216, 9278), (2, 9728, 9790), (2, 10240, 10302), (2, 10752, 10814), (2, 11264, 11326), (2, 11776, 11838), (2, 12288, 12350), (2, 12800, 12862), (2, 13312, 13374), (2, 13824, 13886), (2, 14336, 14398), (2, 14848, 14910), (2, 15360, 15422)]

def row063_layer001_block001 : List ColouredInterval :=
  [(2, 8192, 8254), (2, 9216, 9278), (2, 10240, 10302), (2, 11264, 11326), (2, 12288, 12350), (2, 13312, 13374), (2, 14336, 14398), (2, 15360, 15422), (2, 8192, 8254), (2, 10240, 10302), (2, 12288, 12350), (2, 14336, 14398), (2, 8192, 8254), (2, 12288, 12350), (2, 8192, 8254)]

def row063_layer001_block002 : List ColouredInterval :=
  [(3, 13122, 13184), (5, 8125, 8187), (5, 8750, 8812), (5, 9375, 9437), (5, 10000, 10062), (5, 10625, 10687), (5, 11250, 11312), (5, 11875, 11937), (5, 12500, 12562), (5, 13125, 13187), (5, 13750, 13812), (5, 14375, 14437), (5, 15000, 15062), (5, 9375, 9437), (5, 12500, 12562)]

def row063_layer001_block003 : List ColouredInterval :=
  [(7, 9604, 9666), (11, 7986, 8048), (11, 9317, 9379), (11, 10648, 10710), (11, 11979, 12041), (11, 13310, 13372), (11, 14641, 14703), (11, 14641, 14703), (13, 8788, 8850), (13, 10985, 11047), (13, 13182, 13244), (13, 15379, 15441), (17, 7812, 7865), (17, 8092, 8154), (17, 8381, 8443)]

def row063_layer001_block004 : List ColouredInterval :=
  [(17, 8670, 8732), (17, 9826, 9888), (17, 14739, 14801), (19, 7942, 8004), (19, 8303, 8365), (19, 8664, 8726), (19, 9025, 9087), (19, 9386, 9448), (19, 9747, 9809), (19, 10108, 10170), (19, 10469, 10531), (19, 10830, 10892), (19, 13718, 13780), (23, 7935, 7997), (23, 8464, 8526)]

def row063_layer001_block005 : List ColouredInterval :=
  [(23, 8993, 9055), (23, 9522, 9584), (23, 10051, 10113), (23, 10580, 10642), (23, 11109, 11171), (23, 11638, 11700), (23, 12167, 12229), (23, 12696, 12758), (23, 13225, 13287), (23, 13754, 13816), (23, 14283, 14345), (23, 14812, 14874), (23, 15341, 15403), (23, 12167, 12229), (29, 8410, 8472)]

def row063_layer001_block006 : List ColouredInterval :=
  [(29, 9251, 9313), (29, 10092, 10154), (29, 10933, 10995), (29, 11774, 11836), (29, 12615, 12677), (29, 13456, 13518), (29, 14297, 14359), (29, 15138, 15200), (31, 8649, 8711), (31, 9610, 9672), (31, 10571, 10633), (31, 11532, 11594), (31, 12493, 12555), (31, 13454, 13516), (31, 14415, 14477)]

def row063_layer001_block007 : List ColouredInterval :=
  [(31, 15376, 15438), (37, 8214, 8276), (37, 9583, 9645), (37, 10952, 11014), (37, 12321, 12383), (37, 13690, 13752), (37, 15059, 15121), (41, 8405, 8467), (41, 10086, 10148), (41, 11767, 11829), (41, 13448, 13510), (41, 15129, 15191), (43, 9245, 9307), (43, 11094, 11156), (43, 12943, 13005)]

def row063_layer001_block008 : List ColouredInterval :=
  [(43, 14792, 14854), (47, 8836, 8898), (47, 11045, 11107), (47, 13254, 13316), (47, 15463, 15525), (53, 8427, 8489), (53, 11236, 11298), (53, 14045, 14107), (59, 10443, 10505), (59, 13924, 13986), (61, 11163, 11225), (61, 14884, 14946)]

def row063_layer001_chunks : List (List ColouredInterval) :=
  [row063_layer001_block000, row063_layer001_block001, row063_layer001_block002, row063_layer001_block003, row063_layer001_block004, row063_layer001_block005, row063_layer001_block006, row063_layer001_block007, row063_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_arithmetic : LayerArithmeticValid row063.height { lower := 7812, upper := 15624, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_enumeration :
    activePowerIntervalList 63 30 7812 15624 = row063_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_pairs000 :
    row063_layer001_block000.all (fun I => row063_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_pairs001 :
    row063_layer001_block001.all (fun I => row063_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_pairs002 :
    row063_layer001_block002.all (fun I => row063_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_pairs003 :
    row063_layer001_block003.all (fun I => row063_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_pairs004 :
    row063_layer001_block004.all (fun I => row063_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_pairs005 :
    row063_layer001_block005.all (fun I => row063_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_pairs006 :
    row063_layer001_block006.all (fun I => row063_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_pairs007 :
    row063_layer001_block007.all (fun I => row063_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_pairs008 :
    row063_layer001_block008.all (fun I => row063_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_chunks_eq : row063_layer001_chunks.flatten = row063_layer001_intervals := by
  rfl

theorem row063_layer001_pairs : pairCoverCheck row063_layer001_intervals row063_bounds = true := by
  apply pairCoverCheck_of_chunks row063_layer001_chunks_eq
  intro block hblock
  simp only [row063_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row063_layer001_pairs000
  · exact row063_layer001_pairs001
  · exact row063_layer001_pairs002
  · exact row063_layer001_pairs003
  · exact row063_layer001_pairs004
  · exact row063_layer001_pairs005
  · exact row063_layer001_pairs006
  · exact row063_layer001_pairs007
  · exact row063_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer001_checked :
    coverLayerCheck row063.height row063.goods { lower := 7812, upper := 15624, M := 30 } = true := by
  exact coverLayerCheck_of_parts row063_layer001_arithmetic row063_layer001_enumeration row063_bounds_eq row063_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_layer002_intervals : List ColouredInterval :=
  [(2, 16384, 16446), (2, 17408, 17470), (2, 18432, 18494), (2, 19456, 19518), (2, 20480, 20542), (2, 21504, 21566), (2, 22528, 22590), (2, 23552, 23614), (2, 24576, 24638), (2, 25600, 25662), (2, 26624, 26686), (2, 27648, 27710), (2, 16384, 16446), (2, 18432, 18494), (2, 20480, 20542), (2, 22528, 22590), (2, 24576, 24638), (2, 26624, 26686), (2, 28672, 28734), (2, 30720, 30782), (2, 16384, 16446), (2, 20480, 20542), (2, 24576, 24638), (2, 28672, 28734), (2, 16384, 16446), (2, 24576, 24638), (2, 16384, 16446), (3, 19683, 19745), (3, 19683, 19745), (5, 15625, 15687), (5, 16250, 16312), (5, 16875, 16937), (5, 15625, 15687), (5, 18750, 18812), (5, 21875, 21937), (5, 25000, 25062), (5, 28125, 28187), (5, 15625, 15687), (7, 16807, 16869), (11, 15972, 16034), (11, 17303, 17365), (11, 18634, 18696), (11, 19965, 20027), (11, 21296, 21358), (11, 22627, 22689), (11, 23958, 24020), (11, 25289, 25351), (11, 26620, 26682), (11, 27951, 28013), (11, 29282, 29344), (11, 30613, 30675), (11, 29282, 29344), (13, 17576, 17638), (13, 19773, 19835), (13, 21970, 22032), (13, 24167, 24229), (13, 26364, 26426), (13, 28561, 28623), (13, 30758, 30820), (13, 28561, 28623), (17, 19652, 19714), (17, 24565, 24627), (17, 29478, 29540), (19, 20577, 20639), (19, 27436, 27498), (23, 24334, 24396), (29, 15979, 16041), (29, 16820, 16882), (29, 17661, 17723), (29, 18502, 18564), (29, 19343, 19405), (29, 20184, 20246), (29, 21025, 21087), (29, 21866, 21928), (29, 22707, 22769), (29, 24389, 24451), (31, 16337, 16399), (31, 17298, 17360), (31, 18259, 18321), (31, 19220, 19282), (31, 20181, 20243), (31, 21142, 21204), (31, 22103, 22165), (31, 23064, 23126), (31, 24025, 24087), (31, 24986, 25048), (31, 25947, 26009), (31, 29791, 29853), (37, 16428, 16490), (37, 17797, 17859), (37, 19166, 19228), (37, 20535, 20597), (37, 21904, 21966), (37, 23273, 23335), (37, 24642, 24704), (37, 26011, 26073), (37, 27380, 27442), (37, 28749, 28811), (37, 30118, 30180), (41, 16810, 16872), (41, 18491, 18553), (41, 20172, 20234), (41, 21853, 21915), (41, 23534, 23596), (41, 25215, 25277), (41, 26896, 26958), (41, 28577, 28639), (41, 30258, 30320), (43, 16641, 16703), (43, 18490, 18552), (43, 20339, 20401), (43, 22188, 22250), (43, 24037, 24099), (43, 25886, 25948), (43, 27735, 27797), (43, 29584, 29646), (47, 17672, 17734), (47, 19881, 19943), (47, 22090, 22152), (47, 24299, 24361), (47, 26508, 26570), (47, 28717, 28779), (47, 30926, 30988), (53, 16854, 16916), (53, 19663, 19725), (53, 22472, 22534), (53, 25281, 25343), (53, 28090, 28152), (53, 30899, 30961), (59, 17405, 17467), (59, 20886, 20948), (59, 24367, 24429), (59, 27848, 27910), (61, 18605, 18667), (61, 22326, 22388), (61, 26047, 26109), (61, 29768, 29830)]

def row063_layer002_block000 : List ColouredInterval :=
  [(2, 16384, 16446), (2, 17408, 17470), (2, 18432, 18494), (2, 19456, 19518), (2, 20480, 20542), (2, 21504, 21566), (2, 22528, 22590), (2, 23552, 23614), (2, 24576, 24638), (2, 25600, 25662), (2, 26624, 26686), (2, 27648, 27710), (2, 16384, 16446), (2, 18432, 18494)]

def row063_layer002_block001 : List ColouredInterval :=
  [(2, 20480, 20542), (2, 22528, 22590), (2, 24576, 24638), (2, 26624, 26686), (2, 28672, 28734), (2, 30720, 30782), (2, 16384, 16446), (2, 20480, 20542), (2, 24576, 24638), (2, 28672, 28734), (2, 16384, 16446), (2, 24576, 24638), (2, 16384, 16446), (3, 19683, 19745)]

def row063_layer002_block002 : List ColouredInterval :=
  [(3, 19683, 19745), (5, 15625, 15687), (5, 16250, 16312), (5, 16875, 16937), (5, 15625, 15687), (5, 18750, 18812), (5, 21875, 21937), (5, 25000, 25062), (5, 28125, 28187), (5, 15625, 15687), (7, 16807, 16869), (11, 15972, 16034), (11, 17303, 17365), (11, 18634, 18696)]

def row063_layer002_block003 : List ColouredInterval :=
  [(11, 19965, 20027), (11, 21296, 21358), (11, 22627, 22689), (11, 23958, 24020), (11, 25289, 25351), (11, 26620, 26682), (11, 27951, 28013), (11, 29282, 29344), (11, 30613, 30675), (11, 29282, 29344), (13, 17576, 17638), (13, 19773, 19835), (13, 21970, 22032), (13, 24167, 24229)]

def row063_layer002_block004 : List ColouredInterval :=
  [(13, 26364, 26426), (13, 28561, 28623), (13, 30758, 30820), (13, 28561, 28623), (17, 19652, 19714), (17, 24565, 24627), (17, 29478, 29540), (19, 20577, 20639), (19, 27436, 27498), (23, 24334, 24396), (29, 15979, 16041), (29, 16820, 16882), (29, 17661, 17723), (29, 18502, 18564)]

def row063_layer002_block005 : List ColouredInterval :=
  [(29, 19343, 19405), (29, 20184, 20246), (29, 21025, 21087), (29, 21866, 21928), (29, 22707, 22769), (29, 24389, 24451), (31, 16337, 16399), (31, 17298, 17360), (31, 18259, 18321), (31, 19220, 19282), (31, 20181, 20243), (31, 21142, 21204), (31, 22103, 22165), (31, 23064, 23126)]

def row063_layer002_block006 : List ColouredInterval :=
  [(31, 24025, 24087), (31, 24986, 25048), (31, 25947, 26009), (31, 29791, 29853), (37, 16428, 16490), (37, 17797, 17859), (37, 19166, 19228), (37, 20535, 20597), (37, 21904, 21966), (37, 23273, 23335), (37, 24642, 24704), (37, 26011, 26073), (37, 27380, 27442), (37, 28749, 28811)]

def row063_layer002_block007 : List ColouredInterval :=
  [(37, 30118, 30180), (41, 16810, 16872), (41, 18491, 18553), (41, 20172, 20234), (41, 21853, 21915), (41, 23534, 23596), (41, 25215, 25277), (41, 26896, 26958), (41, 28577, 28639), (41, 30258, 30320), (43, 16641, 16703), (43, 18490, 18552), (43, 20339, 20401), (43, 22188, 22250)]

def row063_layer002_block008 : List ColouredInterval :=
  [(43, 24037, 24099), (43, 25886, 25948), (43, 27735, 27797), (43, 29584, 29646), (47, 17672, 17734), (47, 19881, 19943), (47, 22090, 22152), (47, 24299, 24361), (47, 26508, 26570), (47, 28717, 28779), (47, 30926, 30988), (53, 16854, 16916), (53, 19663, 19725), (53, 22472, 22534)]

def row063_layer002_block009 : List ColouredInterval :=
  [(53, 25281, 25343), (53, 28090, 28152), (53, 30899, 30961), (59, 17405, 17467), (59, 20886, 20948), (59, 24367, 24429), (59, 27848, 27910), (61, 18605, 18667), (61, 22326, 22388), (61, 26047, 26109), (61, 29768, 29830)]

def row063_layer002_chunks : List (List ColouredInterval) :=
  [row063_layer002_block000, row063_layer002_block001, row063_layer002_block002, row063_layer002_block003, row063_layer002_block004, row063_layer002_block005, row063_layer002_block006, row063_layer002_block007, row063_layer002_block008, row063_layer002_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_arithmetic : LayerArithmeticValid row063.height { lower := 15624, upper := 31248, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_enumeration :
    activePowerIntervalList 63 27 15624 31248 = row063_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs000 :
    row063_layer002_block000.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs001 :
    row063_layer002_block001.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs002 :
    row063_layer002_block002.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs003 :
    row063_layer002_block003.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs004 :
    row063_layer002_block004.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs005 :
    row063_layer002_block005.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs006 :
    row063_layer002_block006.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs007 :
    row063_layer002_block007.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs008 :
    row063_layer002_block008.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_pairs009 :
    row063_layer002_block009.all (fun I => row063_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_chunks_eq : row063_layer002_chunks.flatten = row063_layer002_intervals := by
  rfl

theorem row063_layer002_pairs : pairCoverCheck row063_layer002_intervals row063_bounds = true := by
  apply pairCoverCheck_of_chunks row063_layer002_chunks_eq
  intro block hblock
  simp only [row063_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row063_layer002_pairs000
  · exact row063_layer002_pairs001
  · exact row063_layer002_pairs002
  · exact row063_layer002_pairs003
  · exact row063_layer002_pairs004
  · exact row063_layer002_pairs005
  · exact row063_layer002_pairs006
  · exact row063_layer002_pairs007
  · exact row063_layer002_pairs008
  · exact row063_layer002_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer002_checked :
    coverLayerCheck row063.height row063.goods { lower := 15624, upper := 31248, M := 27 } = true := by
  exact coverLayerCheck_of_parts row063_layer002_arithmetic row063_layer002_enumeration row063_bounds_eq row063_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_layer003_intervals : List ColouredInterval :=
  [(2, 32768, 32830), (2, 34816, 34878), (2, 36864, 36926), (2, 38912, 38974), (2, 40960, 41022), (2, 43008, 43070), (2, 45056, 45118), (2, 47104, 47166), (2, 49152, 49214), (2, 32768, 32830), (2, 36864, 36926), (2, 40960, 41022), (2, 45056, 45118), (2, 49152, 49214), (2, 53248, 53310), (2, 57344, 57406), (2, 61440, 61502), (2, 32768, 32830), (2, 40960, 41022), (2, 49152, 49214), (2, 57344, 57406), (2, 32768, 32830), (2, 49152, 49214), (2, 32768, 32830), (3, 39366, 39428), (3, 59049, 59111), (5, 31250, 31312), (5, 34375, 34437), (5, 37500, 37562), (5, 40625, 40687), (5, 43750, 43812), (5, 46875, 46937), (5, 50000, 50062), (5, 53125, 53187), (5, 56250, 56312), (5, 59375, 59437), (5, 31250, 31312), (5, 46875, 46937), (7, 33614, 33676), (7, 50421, 50483), (11, 31944, 32006), (11, 43923, 43985), (11, 58564, 58626), (13, 32955, 33017), (13, 35152, 35214), (13, 37349, 37411), (13, 39546, 39608), (13, 41743, 41805), (13, 43940, 44002), (13, 46137, 46199), (13, 48334, 48396), (13, 50531, 50593), (13, 52728, 52790), (13, 57122, 57184), (17, 34391, 34453), (17, 39304, 39366), (17, 44217, 44279), (17, 49130, 49192), (17, 54043, 54105), (17, 58956, 59018), (19, 34295, 34357), (19, 41154, 41216), (19, 48013, 48075), (19, 54872, 54934), (19, 61731, 61793), (23, 36501, 36563), (23, 48668, 48730), (23, 60835, 60897), (29, 48778, 48840), (31, 59582, 59644), (37, 31487, 31549), (37, 32856, 32918), (37, 50653, 50715), (41, 31939, 32001), (41, 33620, 33682), (41, 35301, 35363), (41, 36982, 37044), (41, 38663, 38725), (41, 40344, 40406), (43, 31433, 31495), (43, 33282, 33344), (43, 35131, 35193), (43, 36980, 37042), (43, 38829, 38891), (43, 40678, 40740), (43, 42527, 42589), (43, 44376, 44438), (47, 33135, 33197), (47, 35344, 35406), (47, 37553, 37615), (47, 39762, 39824), (47, 41971, 42033), (47, 44180, 44242), (47, 46389, 46451), (47, 48598, 48660), (47, 50807, 50869), (47, 53016, 53078), (53, 33708, 33770), (53, 36517, 36579), (53, 39326, 39388), (53, 42135, 42197), (53, 44944, 45006), (53, 47753, 47815), (53, 50562, 50624), (53, 53371, 53433), (53, 56180, 56242), (53, 58989, 59051), (53, 61798, 61860), (59, 31329, 31391), (59, 34810, 34872), (59, 38291, 38353), (59, 41772, 41834), (59, 45253, 45315), (59, 48734, 48796), (59, 52215, 52277), (59, 55696, 55758), (59, 59177, 59239), (61, 33489, 33551), (61, 37210, 37272), (61, 40931, 40993), (61, 44652, 44714), (61, 48373, 48435), (61, 52094, 52156), (61, 55815, 55877), (61, 59536, 59598)]

def row063_layer003_block000 : List ColouredInterval :=
  [(2, 32768, 32830), (2, 34816, 34878), (2, 36864, 36926), (2, 38912, 38974), (2, 40960, 41022), (2, 43008, 43070), (2, 45056, 45118), (2, 47104, 47166), (2, 49152, 49214), (2, 32768, 32830), (2, 36864, 36926), (2, 40960, 41022), (2, 45056, 45118), (2, 49152, 49214), (2, 53248, 53310), (2, 57344, 57406)]

def row063_layer003_block001 : List ColouredInterval :=
  [(2, 61440, 61502), (2, 32768, 32830), (2, 40960, 41022), (2, 49152, 49214), (2, 57344, 57406), (2, 32768, 32830), (2, 49152, 49214), (2, 32768, 32830), (3, 39366, 39428), (3, 59049, 59111), (5, 31250, 31312), (5, 34375, 34437), (5, 37500, 37562), (5, 40625, 40687), (5, 43750, 43812), (5, 46875, 46937)]

def row063_layer003_block002 : List ColouredInterval :=
  [(5, 50000, 50062), (5, 53125, 53187), (5, 56250, 56312), (5, 59375, 59437), (5, 31250, 31312), (5, 46875, 46937), (7, 33614, 33676), (7, 50421, 50483), (11, 31944, 32006), (11, 43923, 43985), (11, 58564, 58626), (13, 32955, 33017), (13, 35152, 35214), (13, 37349, 37411), (13, 39546, 39608), (13, 41743, 41805)]

def row063_layer003_block003 : List ColouredInterval :=
  [(13, 43940, 44002), (13, 46137, 46199), (13, 48334, 48396), (13, 50531, 50593), (13, 52728, 52790), (13, 57122, 57184), (17, 34391, 34453), (17, 39304, 39366), (17, 44217, 44279), (17, 49130, 49192), (17, 54043, 54105), (17, 58956, 59018), (19, 34295, 34357), (19, 41154, 41216), (19, 48013, 48075), (19, 54872, 54934)]

def row063_layer003_block004 : List ColouredInterval :=
  [(19, 61731, 61793), (23, 36501, 36563), (23, 48668, 48730), (23, 60835, 60897), (29, 48778, 48840), (31, 59582, 59644), (37, 31487, 31549), (37, 32856, 32918), (37, 50653, 50715), (41, 31939, 32001), (41, 33620, 33682), (41, 35301, 35363), (41, 36982, 37044), (41, 38663, 38725), (41, 40344, 40406), (43, 31433, 31495)]

def row063_layer003_block005 : List ColouredInterval :=
  [(43, 33282, 33344), (43, 35131, 35193), (43, 36980, 37042), (43, 38829, 38891), (43, 40678, 40740), (43, 42527, 42589), (43, 44376, 44438), (47, 33135, 33197), (47, 35344, 35406), (47, 37553, 37615), (47, 39762, 39824), (47, 41971, 42033), (47, 44180, 44242), (47, 46389, 46451), (47, 48598, 48660), (47, 50807, 50869)]

def row063_layer003_block006 : List ColouredInterval :=
  [(47, 53016, 53078), (53, 33708, 33770), (53, 36517, 36579), (53, 39326, 39388), (53, 42135, 42197), (53, 44944, 45006), (53, 47753, 47815), (53, 50562, 50624), (53, 53371, 53433), (53, 56180, 56242), (53, 58989, 59051), (53, 61798, 61860), (59, 31329, 31391), (59, 34810, 34872), (59, 38291, 38353), (59, 41772, 41834)]

def row063_layer003_block007 : List ColouredInterval :=
  [(59, 45253, 45315), (59, 48734, 48796), (59, 52215, 52277), (59, 55696, 55758), (59, 59177, 59239), (61, 33489, 33551), (61, 37210, 37272), (61, 40931, 40993), (61, 44652, 44714), (61, 48373, 48435), (61, 52094, 52156), (61, 55815, 55877), (61, 59536, 59598)]

def row063_layer003_chunks : List (List ColouredInterval) :=
  [row063_layer003_block000, row063_layer003_block001, row063_layer003_block002, row063_layer003_block003, row063_layer003_block004, row063_layer003_block005, row063_layer003_block006, row063_layer003_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_intervals
