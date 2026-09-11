import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row072_height : HeightCertificateDatum := { i := 72, r := 23, s := 49, n0Power10 := 12 }

def row072_goods : List GoodSegment := [
  { lower := 146, upper := 210, witness := RowWitness.topPrime 139 },
  { lower := 211, upper := 282, witness := RowWitness.topPrime 211 },
  { lower := 283, upper := 354, witness := RowWitness.topPrime 283 },
  { lower := 355, upper := 424, witness := RowWitness.topPrime 353 },
  { lower := 425, upper := 492, witness := RowWitness.topPrime 421 },
  { lower := 493, upper := 562, witness := RowWitness.topPrime 491 },
  { lower := 563, upper := 634, witness := RowWitness.topPrime 563 },
  { lower := 635, upper := 702, witness := RowWitness.topPrime 631 },
  { lower := 703, upper := 772, witness := RowWitness.topPrime 701 },
  { lower := 773, upper := 844, witness := RowWitness.topPrime 773 },
  { lower := 845, upper := 910, witness := RowWitness.topPrime 839 },
  { lower := 911, upper := 982, witness := RowWitness.topPrime 911 },
  { lower := 983, upper := 1054, witness := RowWitness.topPrime 983 },
  { lower := 1055, upper := 1122, witness := RowWitness.topPrime 1051 },
  { lower := 1123, upper := 1194, witness := RowWitness.topPrime 1123 },
  { lower := 1195, upper := 1264, witness := RowWitness.topPrime 1193 },
  { lower := 1265, upper := 1330, witness := RowWitness.topPrime 1259 },
  { lower := 1331, upper := 1398, witness := RowWitness.topPrime 1327 },
  { lower := 1399, upper := 1470, witness := RowWitness.topPrime 1399 },
  { lower := 1471, upper := 1542, witness := RowWitness.topPrime 1471 },
  { lower := 1543, upper := 1614, witness := RowWitness.topPrime 1543 },
  { lower := 1615, upper := 1684, witness := RowWitness.topPrime 1613 },
  { lower := 1685, upper := 1740, witness := RowWitness.topPrime 1669 },
  { lower := 1741, upper := 1812, witness := RowWitness.topPrime 1741 },
  { lower := 1813, upper := 1882, witness := RowWitness.topPrime 1811 },
  { lower := 1883, upper := 1950, witness := RowWitness.topPrime 1879 },
  { lower := 1951, upper := 2022, witness := RowWitness.topPrime 1951 },
  { lower := 2023, upper := 2088, witness := RowWitness.topPrime 2017 },
  { lower := 2089, upper := 2160, witness := RowWitness.topPrime 2089 },
  { lower := 2161, upper := 2232, witness := RowWitness.topPrime 2161 },
  { lower := 2233, upper := 2292, witness := RowWitness.topPrime 2221 },
  { lower := 2293, upper := 2364, witness := RowWitness.topPrime 2293 },
  { lower := 2365, upper := 2428, witness := RowWitness.topPrime 2357 },
  { lower := 2429, upper := 2494, witness := RowWitness.topPrime 2423 },
  { lower := 2495, upper := 2548, witness := RowWitness.topPrime 2477 },
  { lower := 2549, upper := 2620, witness := RowWitness.topPrime 2549 },
  { lower := 2621, upper := 2692, witness := RowWitness.topPrime 2621 },
  { lower := 2693, upper := 2764, witness := RowWitness.topPrime 2693 },
  { lower := 2765, upper := 2824, witness := RowWitness.topPrime 2753 },
  { lower := 2825, upper := 2890, witness := RowWitness.topPrime 2819 },
  { lower := 2891, upper := 2958, witness := RowWitness.topPrime 2887 },
  { lower := 2959, upper := 3028, witness := RowWitness.topPrime 2957 },
  { lower := 3029, upper := 3094, witness := RowWitness.topPrime 3023 },
  { lower := 3095, upper := 3160, witness := RowWitness.topPrime 3089 },
  { lower := 3161, upper := 3208, witness := RowWitness.topPrime 3137 },
  { lower := 3209, upper := 3280, witness := RowWitness.topPrime 3209 },
  { lower := 3281, upper := 3342, witness := RowWitness.topPrime 3271 },
  { lower := 3343, upper := 3414, witness := RowWitness.topPrime 3343 },
  { lower := 3415, upper := 3484, witness := RowWitness.topPrime 3413 },
  { lower := 3485, upper := 3540, witness := RowWitness.topPrime 3469 },
  { lower := 3541, upper := 3612, witness := RowWitness.topPrime 3541 },
  { lower := 3613, upper := 3684, witness := RowWitness.topPrime 3613 },
  { lower := 3685, upper := 3748, witness := RowWitness.topPrime 3677 },
  { lower := 3749, upper := 3810, witness := RowWitness.topPrime 3739 },
  { lower := 3811, upper := 3874, witness := RowWitness.topPrime 3803 },
  { lower := 3875, upper := 3934, witness := RowWitness.topPrime 3863 },
  { lower := 3935, upper := 4002, witness := RowWitness.topPrime 3931 },
  { lower := 4003, upper := 4074, witness := RowWitness.topPrime 4003 },
  { lower := 4075, upper := 4144, witness := RowWitness.topPrime 4073 },
  { lower := 4145, upper := 4210, witness := RowWitness.topPrime 4139 },
  { lower := 4211, upper := 4282, witness := RowWitness.topPrime 4211 },
  { lower := 4283, upper := 4354, witness := RowWitness.topPrime 4283 },
  { lower := 4355, upper := 4420, witness := RowWitness.topPrime 4349 },
  { lower := 4421, upper := 4492, witness := RowWitness.topPrime 4421 },
  { lower := 4493, upper := 4564, witness := RowWitness.topPrime 4493 },
  { lower := 4565, upper := 4632, witness := RowWitness.topPrime 4561 },
  { lower := 4633, upper := 4692, witness := RowWitness.topPrime 4621 },
  { lower := 4693, upper := 4762, witness := RowWitness.topPrime 4691 },
  { lower := 4763, upper := 4830, witness := RowWitness.topPrime 4759 },
  { lower := 4831, upper := 4902, witness := RowWitness.topPrime 4831 },
  { lower := 4903, upper := 4974, witness := RowWitness.topPrime 4903 },
  { lower := 4975, upper := 5044, witness := RowWitness.topPrime 4973 },
  { lower := 5045, upper := 5110, witness := RowWitness.topPrime 5039 },
  { lower := 5111, upper := 5125, witness := RowWitness.topPrime 5107 },
  { lower := 5202, upper := 5216, witness := RowWitness.topPrime 5197 },
  { lower := 5239, upper := 5273, witness := RowWitness.topPrime 5237 },
  { lower := 5290, upper := 5310, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5361, witness := RowWitness.topPrime 5323 },
  { lower := 5415, upper := 5484, witness := RowWitness.topPrime 5413 },
  { lower := 5485, upper := 5486, witness := RowWitness.topPrime 5483 },
  { lower := 5488, upper := 5554, witness := RowWitness.topPrime 5483 },
  { lower := 5555, upper := 5562, witness := RowWitness.topPrime 5531 },
  { lower := 5618, upper := 5618, witness := RowWitness.topPrime 5591 },
  { lower := 5625, upper := 5689, witness := RowWitness.topPrime 5623 },
  { lower := 5776, upper := 5820, witness := RowWitness.topPrime 5749 },
  { lower := 5821, upper := 5892, witness := RowWitness.topPrime 5821 },
  { lower := 5893, upper := 5902, witness := RowWitness.topPrime 5881 },
  { lower := 6137, upper := 6140, witness := RowWitness.topPrime 6133 },
  { lower := 6144, upper := 6214, witness := RowWitness.topPrime 6143 },
  { lower := 6215, upper := 6215, witness := RowWitness.topPrime 6211 },
  { lower := 6358, upper := 6419, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6562, witness := RowWitness.topPrime 6491 },
  { lower := 6563, upper := 6588, witness := RowWitness.topPrime 6563 },
  { lower := 6591, upper := 6652, witness := RowWitness.topPrime 6581 },
  { lower := 6653, upper := 6718, witness := RowWitness.topPrime 6653 },
  { lower := 6724, upper := 6790, witness := RowWitness.topPrime 6719 },
  { lower := 6791, upper := 6798, witness := RowWitness.topPrime 6791 },
  { lower := 6859, upper := 6928, witness := RowWitness.topPrime 6857 },
  { lower := 6929, upper := 6948, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7007, witness := RowWitness.topPrime 6961 },
  { lower := 7220, upper := 7290, witness := RowWitness.topPrime 7219 },
  { lower := 7291, upper := 7291, witness := RowWitness.topPrime 7283 },
  { lower := 7406, upper := 7464, witness := RowWitness.topPrime 7393 },
  { lower := 7465, upper := 7477, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7570, witness := RowWitness.topPrime 7499 },
  { lower := 7571, upper := 7632, witness := RowWitness.topPrime 7561 },
  { lower := 7633, upper := 7640, witness := RowWitness.topPrime 7621 },
  { lower := 7935, upper := 8004, witness := RowWitness.topPrime 7933 },
  { lower := 8005, upper := 8013, witness := RowWitness.topPrime 7993 },
  { lower := 8125, upper := 8163, witness := RowWitness.topPrime 8123 },
  { lower := 8192, upper := 8196, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8280, witness := RowWitness.topPrime 8209 },
  { lower := 8281, upper := 8285, witness := RowWitness.topPrime 8273 },
  { lower := 8303, upper := 8303, witness := RowWitness.topPrime 8297 },
  { lower := 8405, upper := 8460, witness := RowWitness.topPrime 8389 },
  { lower := 8461, upper := 8498, witness := RowWitness.topPrime 8461 },
  { lower := 8664, upper := 8734, witness := RowWitness.topPrime 8663 },
  { lower := 8735, upper := 8735, witness := RowWitness.topPrime 8731 },
  { lower := 8788, upper := 8821, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8859, witness := RowWitness.topPrime 8831 },
  { lower := 8959, upper := 9022, witness := RowWitness.topPrime 8951 },
  { lower := 9023, upper := 9064, witness := RowWitness.topPrime 9013 },
  { lower := 9248, upper := 9312, witness := RowWitness.topPrime 9241 },
  { lower := 9313, upper := 9332, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9442, witness := RowWitness.topPrime 9371 },
  { lower := 9443, upper := 9446, witness := RowWitness.topPrime 9439 },
  { lower := 9583, upper := 9593, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9672, witness := RowWitness.topPrime 9601 },
  { lower := 9673, upper := 9675, witness := RowWitness.topPrime 9661 },
  { lower := 10000, upper := 10018, witness := RowWitness.topPrime 9973 },
  { lower := 10051, upper := 10071, witness := RowWitness.topPrime 10039 },
  { lower := 10082, upper := 10150, witness := RowWitness.topPrime 10079 },
  { lower := 10151, upper := 10163, witness := RowWitness.topPrime 10151 },
  { lower := 10580, upper := 10638, witness := RowWitness.topPrime 10567 },
  { lower := 10639, upper := 10696, witness := RowWitness.topPrime 10639 },
  { lower := 10952, upper := 11020, witness := RowWitness.topPrime 10949 },
  { lower := 11021, upper := 11023, witness := RowWitness.topPrime 11003 },
  { lower := 11045, upper := 11056, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11164, witness := RowWitness.topPrime 11093 },
  { lower := 11165, upper := 11180, witness := RowWitness.topPrime 11161 },
  { lower := 11250, upper := 11307, witness := RowWitness.topPrime 11243 },
  { lower := 11774, upper := 11814, witness := RowWitness.topPrime 11743 },
  { lower := 11815, upper := 11838, witness := RowWitness.topPrime 11813 },
  { lower := 12005, upper := 12050, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12359, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12564, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13192, witness := RowWitness.topPrime 13121 },
  { lower := 13193, upper := 13196, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13290, witness := RowWitness.topPrime 13219 },
  { lower := 13291, upper := 13296, witness := RowWitness.topPrime 13291 },
  { lower := 13310, upper := 13325, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13522, witness := RowWitness.topPrime 13451 },
  { lower := 13523, upper := 13527, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13782, witness := RowWitness.topPrime 13711 },
  { lower := 13783, upper := 13821, witness := RowWitness.topPrime 13781 },
  { lower := 14297, upper := 14354, witness := RowWitness.topPrime 14293 },
  { lower := 14406, upper := 14472, witness := RowWitness.topPrime 14401 },
  { lower := 14473, upper := 14477, witness := RowWitness.topPrime 14461 },
  { lower := 14792, upper := 14810, witness := RowWitness.topPrime 14783 },
  { lower := 14812, upper := 14863, witness := RowWitness.topPrime 14797 },
  { lower := 15059, upper := 15071, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15192, witness := RowWitness.topPrime 15121 },
  { lower := 15193, upper := 15200, witness := RowWitness.topPrime 15193 },
  { lower := 15379, upper := 15447, witness := RowWitness.topPrime 15377 },
  { lower := 15979, upper := 16043, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16408, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16455, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16858, witness := RowWitness.topPrime 16787 },
  { lower := 16859, upper := 16914, witness := RowWitness.topPrime 16843 },
  { lower := 16915, upper := 16925, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17369, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17732, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18552, witness := RowWitness.topPrime 18481 },
  { lower := 18553, upper := 18562, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18676, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19278, witness := RowWitness.topPrime 19207 },
  { lower := 19279, upper := 19279, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19732, witness := RowWitness.topPrime 19661 },
  { lower := 19733, upper := 19734, witness := RowWitness.topPrime 19727 },
  { lower := 20172, upper := 20232, witness := RowWitness.topPrime 20161 },
  { lower := 20233, upper := 20252, witness := RowWitness.topPrime 20233 },
  { lower := 20577, upper := 20606, witness := RowWitness.topPrime 20563 },
  { lower := 21875, upper := 21942, witness := RowWitness.topPrime 21871 },
  { lower := 21943, upper := 21946, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21975, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22161, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22516, witness := RowWitness.topPrime 22469 },
  { lower := 24010, upper := 24029, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24081, witness := RowWitness.topPrime 24029 },
  { lower := 24334, upper := 24400, witness := RowWitness.topPrime 24329 },
  { lower := 24401, upper := 24438, witness := RowWitness.topPrime 24391 },
  { lower := 24576, upper := 24636, witness := RowWitness.topPrime 24571 },
  { lower := 24642, upper := 24647, witness := RowWitness.topPrime 24631 },
  { lower := 25215, upper := 25260, witness := RowWitness.topPrime 25189 },
  { lower := 25261, upper := 25276, witness := RowWitness.topPrime 25261 },
  { lower := 25281, upper := 25286, witness := RowWitness.topPrime 25261 },
  { lower := 25289, upper := 25332, witness := RowWitness.topPrime 25261 },
  { lower := 25333, upper := 25352, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26082, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26435, witness := RowWitness.topPrime 26407 },
  { lower := 26934, upper := 26967, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27451, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28161, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28632, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28788, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28820, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29839, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30317, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 30970, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31284, witness := RowWitness.topPrime 31249 },
  { lower := 31433, upper := 31468, witness := RowWitness.topPrime 31397 },
  { lower := 31469, upper := 31504, witness := RowWitness.topPrime 31469 },
  { lower := 31944, upper := 31978, witness := RowWitness.topPrime 31907 },
  { lower := 31979, upper := 32010, witness := RowWitness.topPrime 31973 },
  { lower := 33620, upper := 33685, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34446, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35202, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35362, witness := RowWitness.topPrime 35291 },
  { lower := 35363, upper := 35372, witness := RowWitness.topPrime 35363 },
  { lower := 36517, upper := 36568, witness := RowWitness.topPrime 36497 },
  { lower := 36569, upper := 36572, witness := RowWitness.topPrime 36563 },
  { lower := 36982, upper := 37050, witness := RowWitness.topPrime 36979 },
  { lower := 37051, upper := 37051, witness := RowWitness.topPrime 37049 },
  { lower := 37553, upper := 37571, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39394, witness := RowWitness.topPrime 39323 },
  { lower := 39395, upper := 39397, witness := RowWitness.topPrime 39383 },
  { lower := 40344, upper := 40399, witness := RowWitness.topPrime 40343 },
  { lower := 40401, upper := 40415, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40696, witness := RowWitness.topPrime 40639 },
  { lower := 41772, upper := 41814, witness := RowWitness.topPrime 41771 },
  { lower := 43940, upper := 43994, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44251, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44961, witness := RowWitness.topPrime 44939 },
  { lower := 48020, upper := 48084, witness := RowWitness.topPrime 48017 },
  { lower := 48734, upper := 48739, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48805, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50481, witness := RowWitness.topPrime 50417 },
  { lower := 56250, upper := 56251, witness := RowWitness.topPrime 56249 },
  { lower := 58989, upper := 59027, witness := RowWitness.topPrime 58979 },
  { lower := 59049, upper := 59060, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59607, witness := RowWitness.topPrime 59581 },
  { lower := 65536, upper := 65592, witness := RowWitness.topPrime 65521 },
  { lower := 65593, upper := 65604, witness := RowWitness.topPrime 65587 },
  { lower := 73167, upper := 73172, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73238, witness := RowWitness.topPrime 73189 },
  { lower := 78141, upper := 78196, witness := RowWitness.topPrime 78139 },
  { lower := 85697, upper := 85754, witness := RowWitness.topPrime 85691 }
]

def row072_layers : List CoverLayer := [
  { lower := 5112, upper := 10224, M := 32 },
  { lower := 10224, upper := 20448, M := 28 },
  { lower := 20448, upper := 40896, M := 24 },
  { lower := 40896, upper := 81792, M := 21 },
  { lower := 81792, upper := 163584, M := 19 },
  { lower := 163584, upper := 327168, M := 16 },
  { lower := 327168, upper := 654336, M := 15 },
  { lower := 654336, upper := 1308672, M := 13 },
  { lower := 1308672, upper := 2617344, M := 11 },
  { lower := 2617344, upper := 5234688, M := 10 },
  { lower := 5234688, upper := 10469376, M := 9 },
  { lower := 10469376, upper := 20938752, M := 8 },
  { lower := 20938752, upper := 41877504, M := 7 },
  { lower := 41877504, upper := 83755008, M := 6 },
  { lower := 83755008, upper := 167510016, M := 5 },
  { lower := 167510016, upper := 335020032, M := 5 },
  { lower := 335020032, upper := 670040064, M := 4 },
  { lower := 670040064, upper := 1340080128, M := 4 },
  { lower := 1340080128, upper := 2680160256, M := 3 },
  { lower := 2680160256, upper := 5360320512, M := 3 },
  { lower := 5360320512, upper := 10720641024, M := 3 },
  { lower := 10720641024, upper := 21441282048, M := 2 },
  { lower := 21441282048, upper := 42882564096, M := 2 },
  { lower := 42882564096, upper := 85765128192, M := 2 },
  { lower := 85765128192, upper := 171530256384, M := 2 },
  { lower := 171530256384, upper := 343060512768, M := 2 },
  { lower := 343060512768, upper := 686121025536, M := 1 },
  { lower := 686121025536, upper := 1000000000000, M := 1 }
]

def row072 : FiniteCoverRow := {
  height := row072_height,
  goods := row072_goods,
  layers := row072_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good000_checked :
    goodSegmentCheck 72 23 49
      { lower := 146, upper := 210, witness := RowWitness.topPrime 139 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good001_checked :
    goodSegmentCheck 72 23 49
      { lower := 211, upper := 282, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good002_checked :
    goodSegmentCheck 72 23 49
      { lower := 283, upper := 354, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good003_checked :
    goodSegmentCheck 72 23 49
      { lower := 355, upper := 424, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good004_checked :
    goodSegmentCheck 72 23 49
      { lower := 425, upper := 492, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good005_checked :
    goodSegmentCheck 72 23 49
      { lower := 493, upper := 562, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good006_checked :
    goodSegmentCheck 72 23 49
      { lower := 563, upper := 634, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good007_checked :
    goodSegmentCheck 72 23 49
      { lower := 635, upper := 702, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good008_checked :
    goodSegmentCheck 72 23 49
      { lower := 703, upper := 772, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good009_checked :
    goodSegmentCheck 72 23 49
      { lower := 773, upper := 844, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good010_checked :
    goodSegmentCheck 72 23 49
      { lower := 845, upper := 910, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good011_checked :
    goodSegmentCheck 72 23 49
      { lower := 911, upper := 982, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good012_checked :
    goodSegmentCheck 72 23 49
      { lower := 983, upper := 1054, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good013_checked :
    goodSegmentCheck 72 23 49
      { lower := 1055, upper := 1122, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good014_checked :
    goodSegmentCheck 72 23 49
      { lower := 1123, upper := 1194, witness := RowWitness.topPrime 1123 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good015_checked :
    goodSegmentCheck 72 23 49
      { lower := 1195, upper := 1264, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good016_checked :
    goodSegmentCheck 72 23 49
      { lower := 1265, upper := 1330, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good017_checked :
    goodSegmentCheck 72 23 49
      { lower := 1331, upper := 1398, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good018_checked :
    goodSegmentCheck 72 23 49
      { lower := 1399, upper := 1470, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good019_checked :
    goodSegmentCheck 72 23 49
      { lower := 1471, upper := 1542, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good020_checked :
    goodSegmentCheck 72 23 49
      { lower := 1543, upper := 1614, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good021_checked :
    goodSegmentCheck 72 23 49
      { lower := 1615, upper := 1684, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good022_checked :
    goodSegmentCheck 72 23 49
      { lower := 1685, upper := 1740, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good023_checked :
    goodSegmentCheck 72 23 49
      { lower := 1741, upper := 1812, witness := RowWitness.topPrime 1741 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good024_checked :
    goodSegmentCheck 72 23 49
      { lower := 1813, upper := 1882, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good025_checked :
    goodSegmentCheck 72 23 49
      { lower := 1883, upper := 1950, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good026_checked :
    goodSegmentCheck 72 23 49
      { lower := 1951, upper := 2022, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good027_checked :
    goodSegmentCheck 72 23 49
      { lower := 2023, upper := 2088, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good028_checked :
    goodSegmentCheck 72 23 49
      { lower := 2089, upper := 2160, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good029_checked :
    goodSegmentCheck 72 23 49
      { lower := 2161, upper := 2232, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good030_checked :
    goodSegmentCheck 72 23 49
      { lower := 2233, upper := 2292, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good031_checked :
    goodSegmentCheck 72 23 49
      { lower := 2293, upper := 2364, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good032_checked :
    goodSegmentCheck 72 23 49
      { lower := 2365, upper := 2428, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good033_checked :
    goodSegmentCheck 72 23 49
      { lower := 2429, upper := 2494, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good034_checked :
    goodSegmentCheck 72 23 49
      { lower := 2495, upper := 2548, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good035_checked :
    goodSegmentCheck 72 23 49
      { lower := 2549, upper := 2620, witness := RowWitness.topPrime 2549 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good036_checked :
    goodSegmentCheck 72 23 49
      { lower := 2621, upper := 2692, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good037_checked :
    goodSegmentCheck 72 23 49
      { lower := 2693, upper := 2764, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good038_checked :
    goodSegmentCheck 72 23 49
      { lower := 2765, upper := 2824, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good039_checked :
    goodSegmentCheck 72 23 49
      { lower := 2825, upper := 2890, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good040_checked :
    goodSegmentCheck 72 23 49
      { lower := 2891, upper := 2958, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good041_checked :
    goodSegmentCheck 72 23 49
      { lower := 2959, upper := 3028, witness := RowWitness.topPrime 2957 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good042_checked :
    goodSegmentCheck 72 23 49
      { lower := 3029, upper := 3094, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good043_checked :
    goodSegmentCheck 72 23 49
      { lower := 3095, upper := 3160, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good044_checked :
    goodSegmentCheck 72 23 49
      { lower := 3161, upper := 3208, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good045_checked :
    goodSegmentCheck 72 23 49
      { lower := 3209, upper := 3280, witness := RowWitness.topPrime 3209 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good046_checked :
    goodSegmentCheck 72 23 49
      { lower := 3281, upper := 3342, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good047_checked :
    goodSegmentCheck 72 23 49
      { lower := 3343, upper := 3414, witness := RowWitness.topPrime 3343 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good048_checked :
    goodSegmentCheck 72 23 49
      { lower := 3415, upper := 3484, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good049_checked :
    goodSegmentCheck 72 23 49
      { lower := 3485, upper := 3540, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good050_checked :
    goodSegmentCheck 72 23 49
      { lower := 3541, upper := 3612, witness := RowWitness.topPrime 3541 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good051_checked :
    goodSegmentCheck 72 23 49
      { lower := 3613, upper := 3684, witness := RowWitness.topPrime 3613 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good052_checked :
    goodSegmentCheck 72 23 49
      { lower := 3685, upper := 3748, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good053_checked :
    goodSegmentCheck 72 23 49
      { lower := 3749, upper := 3810, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good054_checked :
    goodSegmentCheck 72 23 49
      { lower := 3811, upper := 3874, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good055_checked :
    goodSegmentCheck 72 23 49
      { lower := 3875, upper := 3934, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good056_checked :
    goodSegmentCheck 72 23 49
      { lower := 3935, upper := 4002, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good057_checked :
    goodSegmentCheck 72 23 49
      { lower := 4003, upper := 4074, witness := RowWitness.topPrime 4003 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good058_checked :
    goodSegmentCheck 72 23 49
      { lower := 4075, upper := 4144, witness := RowWitness.topPrime 4073 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good059_checked :
    goodSegmentCheck 72 23 49
      { lower := 4145, upper := 4210, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good060_checked :
    goodSegmentCheck 72 23 49
      { lower := 4211, upper := 4282, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good061_checked :
    goodSegmentCheck 72 23 49
      { lower := 4283, upper := 4354, witness := RowWitness.topPrime 4283 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good062_checked :
    goodSegmentCheck 72 23 49
      { lower := 4355, upper := 4420, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good063_checked :
    goodSegmentCheck 72 23 49
      { lower := 4421, upper := 4492, witness := RowWitness.topPrime 4421 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good064_checked :
    goodSegmentCheck 72 23 49
      { lower := 4493, upper := 4564, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good065_checked :
    goodSegmentCheck 72 23 49
      { lower := 4565, upper := 4632, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good066_checked :
    goodSegmentCheck 72 23 49
      { lower := 4633, upper := 4692, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good067_checked :
    goodSegmentCheck 72 23 49
      { lower := 4693, upper := 4762, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good068_checked :
    goodSegmentCheck 72 23 49
      { lower := 4763, upper := 4830, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good069_checked :
    goodSegmentCheck 72 23 49
      { lower := 4831, upper := 4902, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good070_checked :
    goodSegmentCheck 72 23 49
      { lower := 4903, upper := 4974, witness := RowWitness.topPrime 4903 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good071_checked :
    goodSegmentCheck 72 23 49
      { lower := 4975, upper := 5044, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good072_checked :
    goodSegmentCheck 72 23 49
      { lower := 5045, upper := 5110, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good073_checked :
    goodSegmentCheck 72 23 49
      { lower := 5111, upper := 5125, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good074_checked :
    goodSegmentCheck 72 23 49
      { lower := 5202, upper := 5216, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good075_checked :
    goodSegmentCheck 72 23 49
      { lower := 5239, upper := 5273, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good076_checked :
    goodSegmentCheck 72 23 49
      { lower := 5290, upper := 5310, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good077_checked :
    goodSegmentCheck 72 23 49
      { lower := 5324, upper := 5361, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good078_checked :
    goodSegmentCheck 72 23 49
      { lower := 5415, upper := 5484, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good079_checked :
    goodSegmentCheck 72 23 49
      { lower := 5485, upper := 5486, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good080_checked :
    goodSegmentCheck 72 23 49
      { lower := 5488, upper := 5554, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good081_checked :
    goodSegmentCheck 72 23 49
      { lower := 5555, upper := 5562, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good082_checked :
    goodSegmentCheck 72 23 49
      { lower := 5618, upper := 5618, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good083_checked :
    goodSegmentCheck 72 23 49
      { lower := 5625, upper := 5689, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good084_checked :
    goodSegmentCheck 72 23 49
      { lower := 5776, upper := 5820, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good085_checked :
    goodSegmentCheck 72 23 49
      { lower := 5821, upper := 5892, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good086_checked :
    goodSegmentCheck 72 23 49
      { lower := 5893, upper := 5902, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good087_checked :
    goodSegmentCheck 72 23 49
      { lower := 6137, upper := 6140, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good088_checked :
    goodSegmentCheck 72 23 49
      { lower := 6144, upper := 6214, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good089_checked :
    goodSegmentCheck 72 23 49
      { lower := 6215, upper := 6215, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good090_checked :
    goodSegmentCheck 72 23 49
      { lower := 6358, upper := 6419, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good091_checked :
    goodSegmentCheck 72 23 49
      { lower := 6517, upper := 6562, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good092_checked :
    goodSegmentCheck 72 23 49
      { lower := 6563, upper := 6588, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good093_checked :
    goodSegmentCheck 72 23 49
      { lower := 6591, upper := 6652, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good094_checked :
    goodSegmentCheck 72 23 49
      { lower := 6653, upper := 6718, witness := RowWitness.topPrime 6653 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good095_checked :
    goodSegmentCheck 72 23 49
      { lower := 6724, upper := 6790, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good096_checked :
    goodSegmentCheck 72 23 49
      { lower := 6791, upper := 6798, witness := RowWitness.topPrime 6791 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good097_checked :
    goodSegmentCheck 72 23 49
      { lower := 6859, upper := 6928, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good098_checked :
    goodSegmentCheck 72 23 49
      { lower := 6929, upper := 6948, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good099_checked :
    goodSegmentCheck 72 23 49
      { lower := 6962, upper := 7007, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good100_checked :
    goodSegmentCheck 72 23 49
      { lower := 7220, upper := 7290, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good101_checked :
    goodSegmentCheck 72 23 49
      { lower := 7291, upper := 7291, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good102_checked :
    goodSegmentCheck 72 23 49
      { lower := 7406, upper := 7464, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good103_checked :
    goodSegmentCheck 72 23 49
      { lower := 7465, upper := 7477, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good104_checked :
    goodSegmentCheck 72 23 49
      { lower := 7500, upper := 7570, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good105_checked :
    goodSegmentCheck 72 23 49
      { lower := 7571, upper := 7632, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good106_checked :
    goodSegmentCheck 72 23 49
      { lower := 7633, upper := 7640, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good107_checked :
    goodSegmentCheck 72 23 49
      { lower := 7935, upper := 8004, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good108_checked :
    goodSegmentCheck 72 23 49
      { lower := 8005, upper := 8013, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good109_checked :
    goodSegmentCheck 72 23 49
      { lower := 8125, upper := 8163, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good110_checked :
    goodSegmentCheck 72 23 49
      { lower := 8192, upper := 8196, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good111_checked :
    goodSegmentCheck 72 23 49
      { lower := 8214, upper := 8280, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good112_checked :
    goodSegmentCheck 72 23 49
      { lower := 8281, upper := 8285, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good113_checked :
    goodSegmentCheck 72 23 49
      { lower := 8303, upper := 8303, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good114_checked :
    goodSegmentCheck 72 23 49
      { lower := 8405, upper := 8460, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good115_checked :
    goodSegmentCheck 72 23 49
      { lower := 8461, upper := 8498, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good116_checked :
    goodSegmentCheck 72 23 49
      { lower := 8664, upper := 8734, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good117_checked :
    goodSegmentCheck 72 23 49
      { lower := 8735, upper := 8735, witness := RowWitness.topPrime 8731 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good118_checked :
    goodSegmentCheck 72 23 49
      { lower := 8788, upper := 8821, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good119_checked :
    goodSegmentCheck 72 23 49
      { lower := 8836, upper := 8859, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good120_checked :
    goodSegmentCheck 72 23 49
      { lower := 8959, upper := 9022, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good121_checked :
    goodSegmentCheck 72 23 49
      { lower := 9023, upper := 9064, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good122_checked :
    goodSegmentCheck 72 23 49
      { lower := 9248, upper := 9312, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good123_checked :
    goodSegmentCheck 72 23 49
      { lower := 9313, upper := 9332, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good124_checked :
    goodSegmentCheck 72 23 49
      { lower := 9375, upper := 9442, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good125_checked :
    goodSegmentCheck 72 23 49
      { lower := 9443, upper := 9446, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good126_checked :
    goodSegmentCheck 72 23 49
      { lower := 9583, upper := 9593, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good127_checked :
    goodSegmentCheck 72 23 49
      { lower := 9604, upper := 9672, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good128_checked :
    goodSegmentCheck 72 23 49
      { lower := 9673, upper := 9675, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good129_checked :
    goodSegmentCheck 72 23 49
      { lower := 10000, upper := 10018, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good130_checked :
    goodSegmentCheck 72 23 49
      { lower := 10051, upper := 10071, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good131_checked :
    goodSegmentCheck 72 23 49
      { lower := 10082, upper := 10150, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good132_checked :
    goodSegmentCheck 72 23 49
      { lower := 10151, upper := 10163, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good133_checked :
    goodSegmentCheck 72 23 49
      { lower := 10580, upper := 10638, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good134_checked :
    goodSegmentCheck 72 23 49
      { lower := 10639, upper := 10696, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good135_checked :
    goodSegmentCheck 72 23 49
      { lower := 10952, upper := 11020, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good136_checked :
    goodSegmentCheck 72 23 49
      { lower := 11021, upper := 11023, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good137_checked :
    goodSegmentCheck 72 23 49
      { lower := 11045, upper := 11056, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good138_checked :
    goodSegmentCheck 72 23 49
      { lower := 11094, upper := 11164, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good139_checked :
    goodSegmentCheck 72 23 49
      { lower := 11165, upper := 11180, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good140_checked :
    goodSegmentCheck 72 23 49
      { lower := 11250, upper := 11307, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good141_checked :
    goodSegmentCheck 72 23 49
      { lower := 11774, upper := 11814, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good142_checked :
    goodSegmentCheck 72 23 49
      { lower := 11815, upper := 11838, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good143_checked :
    goodSegmentCheck 72 23 49
      { lower := 12005, upper := 12050, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good144_checked :
    goodSegmentCheck 72 23 49
      { lower := 12321, upper := 12359, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good145_checked :
    goodSegmentCheck 72 23 49
      { lower := 12500, upper := 12564, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good146_checked :
    goodSegmentCheck 72 23 49
      { lower := 13125, upper := 13192, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good147_checked :
    goodSegmentCheck 72 23 49
      { lower := 13193, upper := 13196, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good148_checked :
    goodSegmentCheck 72 23 49
      { lower := 13225, upper := 13290, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good149_checked :
    goodSegmentCheck 72 23 49
      { lower := 13291, upper := 13296, witness := RowWitness.topPrime 13291 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good150_checked :
    goodSegmentCheck 72 23 49
      { lower := 13310, upper := 13325, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good151_checked :
    goodSegmentCheck 72 23 49
      { lower := 13454, upper := 13522, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good152_checked :
    goodSegmentCheck 72 23 49
      { lower := 13523, upper := 13527, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good153_checked :
    goodSegmentCheck 72 23 49
      { lower := 13718, upper := 13782, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good154_checked :
    goodSegmentCheck 72 23 49
      { lower := 13783, upper := 13821, witness := RowWitness.topPrime 13781 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good155_checked :
    goodSegmentCheck 72 23 49
      { lower := 14297, upper := 14354, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good156_checked :
    goodSegmentCheck 72 23 49
      { lower := 14406, upper := 14472, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good157_checked :
    goodSegmentCheck 72 23 49
      { lower := 14473, upper := 14477, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good158_checked :
    goodSegmentCheck 72 23 49
      { lower := 14792, upper := 14810, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good159_checked :
    goodSegmentCheck 72 23 49
      { lower := 14812, upper := 14863, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good160_checked :
    goodSegmentCheck 72 23 49
      { lower := 15059, upper := 15071, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good161_checked :
    goodSegmentCheck 72 23 49
      { lower := 15123, upper := 15192, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good162_checked :
    goodSegmentCheck 72 23 49
      { lower := 15193, upper := 15200, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good163_checked :
    goodSegmentCheck 72 23 49
      { lower := 15379, upper := 15447, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good164_checked :
    goodSegmentCheck 72 23 49
      { lower := 15979, upper := 16043, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good165_checked :
    goodSegmentCheck 72 23 49
      { lower := 16384, upper := 16408, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good166_checked :
    goodSegmentCheck 72 23 49
      { lower := 16428, upper := 16455, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good167_checked :
    goodSegmentCheck 72 23 49
      { lower := 16810, upper := 16858, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good168_checked :
    goodSegmentCheck 72 23 49
      { lower := 16859, upper := 16914, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good169_checked :
    goodSegmentCheck 72 23 49
      { lower := 16915, upper := 16925, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good170_checked :
    goodSegmentCheck 72 23 49
      { lower := 17303, upper := 17369, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good171_checked :
    goodSegmentCheck 72 23 49
      { lower := 17672, upper := 17732, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good172_checked :
    goodSegmentCheck 72 23 49
      { lower := 18491, upper := 18552, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good173_checked :
    goodSegmentCheck 72 23 49
      { lower := 18553, upper := 18562, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good174_checked :
    goodSegmentCheck 72 23 49
      { lower := 18634, upper := 18676, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good175_checked :
    goodSegmentCheck 72 23 49
      { lower := 19208, upper := 19278, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good176_checked :
    goodSegmentCheck 72 23 49
      { lower := 19279, upper := 19279, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good177_checked :
    goodSegmentCheck 72 23 49
      { lower := 19663, upper := 19732, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good178_checked :
    goodSegmentCheck 72 23 49
      { lower := 19733, upper := 19734, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good179_checked :
    goodSegmentCheck 72 23 49
      { lower := 20172, upper := 20232, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good180_checked :
    goodSegmentCheck 72 23 49
      { lower := 20233, upper := 20252, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good181_checked :
    goodSegmentCheck 72 23 49
      { lower := 20577, upper := 20606, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good182_checked :
    goodSegmentCheck 72 23 49
      { lower := 21875, upper := 21942, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good183_checked :
    goodSegmentCheck 72 23 49
      { lower := 21943, upper := 21946, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good184_checked :
    goodSegmentCheck 72 23 49
      { lower := 21970, upper := 21975, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good185_checked :
    goodSegmentCheck 72 23 49
      { lower := 22103, upper := 22161, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good186_checked :
    goodSegmentCheck 72 23 49
      { lower := 22472, upper := 22516, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good187_checked :
    goodSegmentCheck 72 23 49
      { lower := 24010, upper := 24029, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good188_checked :
    goodSegmentCheck 72 23 49
      { lower := 24037, upper := 24081, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good189_checked :
    goodSegmentCheck 72 23 49
      { lower := 24334, upper := 24400, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good190_checked :
    goodSegmentCheck 72 23 49
      { lower := 24401, upper := 24438, witness := RowWitness.topPrime 24391 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good191_checked :
    goodSegmentCheck 72 23 49
      { lower := 24576, upper := 24636, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good192_checked :
    goodSegmentCheck 72 23 49
      { lower := 24642, upper := 24647, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good193_checked :
    goodSegmentCheck 72 23 49
      { lower := 25215, upper := 25260, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good194_checked :
    goodSegmentCheck 72 23 49
      { lower := 25261, upper := 25276, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good195_checked :
    goodSegmentCheck 72 23 49
      { lower := 25281, upper := 25286, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good196_checked :
    goodSegmentCheck 72 23 49
      { lower := 25289, upper := 25332, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good197_checked :
    goodSegmentCheck 72 23 49
      { lower := 25333, upper := 25352, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good198_checked :
    goodSegmentCheck 72 23 49
      { lower := 26047, upper := 26082, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good199_checked :
    goodSegmentCheck 72 23 49
      { lower := 26411, upper := 26435, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good200_checked :
    goodSegmentCheck 72 23 49
      { lower := 26934, upper := 26967, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good201_checked :
    goodSegmentCheck 72 23 49
      { lower := 27436, upper := 27451, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good202_checked :
    goodSegmentCheck 72 23 49
      { lower := 28125, upper := 28161, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good203_checked :
    goodSegmentCheck 72 23 49
      { lower := 28577, upper := 28632, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good204_checked :
    goodSegmentCheck 72 23 49
      { lower := 28749, upper := 28788, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good205_checked :
    goodSegmentCheck 72 23 49
      { lower := 28812, upper := 28820, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good206_checked :
    goodSegmentCheck 72 23 49
      { lower := 29791, upper := 29839, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good207_checked :
    goodSegmentCheck 72 23 49
      { lower := 30258, upper := 30317, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good208_checked :
    goodSegmentCheck 72 23 49
      { lower := 30926, upper := 30970, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good209_checked :
    goodSegmentCheck 72 23 49
      { lower := 31250, upper := 31284, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good210_checked :
    goodSegmentCheck 72 23 49
      { lower := 31433, upper := 31468, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good211_checked :
    goodSegmentCheck 72 23 49
      { lower := 31469, upper := 31504, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good212_checked :
    goodSegmentCheck 72 23 49
      { lower := 31944, upper := 31978, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good213_checked :
    goodSegmentCheck 72 23 49
      { lower := 31979, upper := 32010, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good214_checked :
    goodSegmentCheck 72 23 49
      { lower := 33620, upper := 33685, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good215_checked :
    goodSegmentCheck 72 23 49
      { lower := 34391, upper := 34446, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good216_checked :
    goodSegmentCheck 72 23 49
      { lower := 35152, upper := 35202, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good217_checked :
    goodSegmentCheck 72 23 49
      { lower := 35301, upper := 35362, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good218_checked :
    goodSegmentCheck 72 23 49
      { lower := 35363, upper := 35372, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good219_checked :
    goodSegmentCheck 72 23 49
      { lower := 36517, upper := 36568, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good220_checked :
    goodSegmentCheck 72 23 49
      { lower := 36569, upper := 36572, witness := RowWitness.topPrime 36563 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good221_checked :
    goodSegmentCheck 72 23 49
      { lower := 36982, upper := 37050, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good222_checked :
    goodSegmentCheck 72 23 49
      { lower := 37051, upper := 37051, witness := RowWitness.topPrime 37049 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good223_checked :
    goodSegmentCheck 72 23 49
      { lower := 37553, upper := 37571, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good224_checked :
    goodSegmentCheck 72 23 49
      { lower := 39326, upper := 39394, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good225_checked :
    goodSegmentCheck 72 23 49
      { lower := 39395, upper := 39397, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good226_checked :
    goodSegmentCheck 72 23 49
      { lower := 40344, upper := 40399, witness := RowWitness.topPrime 40343 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good227_checked :
    goodSegmentCheck 72 23 49
      { lower := 40401, upper := 40415, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good228_checked :
    goodSegmentCheck 72 23 49
      { lower := 40678, upper := 40696, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good229_checked :
    goodSegmentCheck 72 23 49
      { lower := 41772, upper := 41814, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good230_checked :
    goodSegmentCheck 72 23 49
      { lower := 43940, upper := 43994, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good231_checked :
    goodSegmentCheck 72 23 49
      { lower := 44217, upper := 44251, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good232_checked :
    goodSegmentCheck 72 23 49
      { lower := 44944, upper := 44961, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good233_checked :
    goodSegmentCheck 72 23 49
      { lower := 48020, upper := 48084, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good234_checked :
    goodSegmentCheck 72 23 49
      { lower := 48734, upper := 48739, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good235_checked :
    goodSegmentCheck 72 23 49
      { lower := 48778, upper := 48805, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good236_checked :
    goodSegmentCheck 72 23 49
      { lower := 50421, upper := 50481, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good237_checked :
    goodSegmentCheck 72 23 49
      { lower := 56250, upper := 56251, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good238_checked :
    goodSegmentCheck 72 23 49
      { lower := 58989, upper := 59027, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good239_checked :
    goodSegmentCheck 72 23 49
      { lower := 59049, upper := 59060, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good240_checked :
    goodSegmentCheck 72 23 49
      { lower := 59582, upper := 59607, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good241_checked :
    goodSegmentCheck 72 23 49
      { lower := 65536, upper := 65592, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good242_checked :
    goodSegmentCheck 72 23 49
      { lower := 65593, upper := 65604, witness := RowWitness.topPrime 65587 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good243_checked :
    goodSegmentCheck 72 23 49
      { lower := 73167, upper := 73172, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good244_checked :
    goodSegmentCheck 72 23 49
      { lower := 73205, upper := 73238, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good245_checked :
    goodSegmentCheck 72 23 49
      { lower := 78141, upper := 78196, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good246_checked :
    goodSegmentCheck 72 23 49
      { lower := 85697, upper := 85754, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good246_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_goods_checked :
    row072.goods.all (goodSegmentCheck row072.height.i row072.height.r row072.height.s) = true := by
  change row072_goods.all (goodSegmentCheck 72 23 49) = true
  simp only [row072_goods, List.all_cons, List.all_nil,
    row072_good000_checked,
    row072_good001_checked,
    row072_good002_checked,
    row072_good003_checked,
    row072_good004_checked,
    row072_good005_checked,
    row072_good006_checked,
    row072_good007_checked,
    row072_good008_checked,
    row072_good009_checked,
    row072_good010_checked,
    row072_good011_checked,
    row072_good012_checked,
    row072_good013_checked,
    row072_good014_checked,
    row072_good015_checked,
    row072_good016_checked,
    row072_good017_checked,
    row072_good018_checked,
    row072_good019_checked,
    row072_good020_checked,
    row072_good021_checked,
    row072_good022_checked,
    row072_good023_checked,
    row072_good024_checked,
    row072_good025_checked,
    row072_good026_checked,
    row072_good027_checked,
    row072_good028_checked,
    row072_good029_checked,
    row072_good030_checked,
    row072_good031_checked,
    row072_good032_checked,
    row072_good033_checked,
    row072_good034_checked,
    row072_good035_checked,
    row072_good036_checked,
    row072_good037_checked,
    row072_good038_checked,
    row072_good039_checked,
    row072_good040_checked,
    row072_good041_checked,
    row072_good042_checked,
    row072_good043_checked,
    row072_good044_checked,
    row072_good045_checked,
    row072_good046_checked,
    row072_good047_checked,
    row072_good048_checked,
    row072_good049_checked,
    row072_good050_checked,
    row072_good051_checked,
    row072_good052_checked,
    row072_good053_checked,
    row072_good054_checked,
    row072_good055_checked,
    row072_good056_checked,
    row072_good057_checked,
    row072_good058_checked,
    row072_good059_checked,
    row072_good060_checked,
    row072_good061_checked,
    row072_good062_checked,
    row072_good063_checked,
    row072_good064_checked,
    row072_good065_checked,
    row072_good066_checked,
    row072_good067_checked,
    row072_good068_checked,
    row072_good069_checked,
    row072_good070_checked,
    row072_good071_checked,
    row072_good072_checked,
    row072_good073_checked,
    row072_good074_checked,
    row072_good075_checked,
    row072_good076_checked,
    row072_good077_checked,
    row072_good078_checked,
    row072_good079_checked,
    row072_good080_checked,
    row072_good081_checked,
    row072_good082_checked,
    row072_good083_checked,
    row072_good084_checked,
    row072_good085_checked,
    row072_good086_checked,
    row072_good087_checked,
    row072_good088_checked,
    row072_good089_checked,
    row072_good090_checked,
    row072_good091_checked,
    row072_good092_checked,
    row072_good093_checked,
    row072_good094_checked,
    row072_good095_checked,
    row072_good096_checked,
    row072_good097_checked,
    row072_good098_checked,
    row072_good099_checked,
    row072_good100_checked,
    row072_good101_checked,
    row072_good102_checked,
    row072_good103_checked,
    row072_good104_checked,
    row072_good105_checked,
    row072_good106_checked,
    row072_good107_checked,
    row072_good108_checked,
    row072_good109_checked,
    row072_good110_checked,
    row072_good111_checked,
    row072_good112_checked,
    row072_good113_checked,
    row072_good114_checked,
    row072_good115_checked,
    row072_good116_checked,
    row072_good117_checked,
    row072_good118_checked,
    row072_good119_checked,
    row072_good120_checked,
    row072_good121_checked,
    row072_good122_checked,
    row072_good123_checked,
    row072_good124_checked,
    row072_good125_checked,
    row072_good126_checked,
    row072_good127_checked,
    row072_good128_checked,
    row072_good129_checked,
    row072_good130_checked,
    row072_good131_checked,
    row072_good132_checked,
    row072_good133_checked,
    row072_good134_checked,
    row072_good135_checked,
    row072_good136_checked,
    row072_good137_checked,
    row072_good138_checked,
    row072_good139_checked,
    row072_good140_checked,
    row072_good141_checked,
    row072_good142_checked,
    row072_good143_checked,
    row072_good144_checked,
    row072_good145_checked,
    row072_good146_checked,
    row072_good147_checked,
    row072_good148_checked,
    row072_good149_checked,
    row072_good150_checked,
    row072_good151_checked,
    row072_good152_checked,
    row072_good153_checked,
    row072_good154_checked,
    row072_good155_checked,
    row072_good156_checked,
    row072_good157_checked,
    row072_good158_checked,
    row072_good159_checked,
    row072_good160_checked,
    row072_good161_checked,
    row072_good162_checked,
    row072_good163_checked,
    row072_good164_checked,
    row072_good165_checked,
    row072_good166_checked,
    row072_good167_checked,
    row072_good168_checked,
    row072_good169_checked,
    row072_good170_checked,
    row072_good171_checked,
    row072_good172_checked,
    row072_good173_checked,
    row072_good174_checked,
    row072_good175_checked,
    row072_good176_checked,
    row072_good177_checked,
    row072_good178_checked,
    row072_good179_checked,
    row072_good180_checked,
    row072_good181_checked,
    row072_good182_checked,
    row072_good183_checked,
    row072_good184_checked,
    row072_good185_checked,
    row072_good186_checked,
    row072_good187_checked,
    row072_good188_checked,
    row072_good189_checked,
    row072_good190_checked,
    row072_good191_checked,
    row072_good192_checked,
    row072_good193_checked,
    row072_good194_checked,
    row072_good195_checked,
    row072_good196_checked,
    row072_good197_checked,
    row072_good198_checked,
    row072_good199_checked,
    row072_good200_checked,
    row072_good201_checked,
    row072_good202_checked,
    row072_good203_checked,
    row072_good204_checked,
    row072_good205_checked,
    row072_good206_checked,
    row072_good207_checked,
    row072_good208_checked,
    row072_good209_checked,
    row072_good210_checked,
    row072_good211_checked,
    row072_good212_checked,
    row072_good213_checked,
    row072_good214_checked,
    row072_good215_checked,
    row072_good216_checked,
    row072_good217_checked,
    row072_good218_checked,
    row072_good219_checked,
    row072_good220_checked,
    row072_good221_checked,
    row072_good222_checked,
    row072_good223_checked,
    row072_good224_checked,
    row072_good225_checked,
    row072_good226_checked,
    row072_good227_checked,
    row072_good228_checked,
    row072_good229_checked,
    row072_good230_checked,
    row072_good231_checked,
    row072_good232_checked,
    row072_good233_checked,
    row072_good234_checked,
    row072_good235_checked,
    row072_good236_checked,
    row072_good237_checked,
    row072_good238_checked,
    row072_good239_checked,
    row072_good240_checked,
    row072_good241_checked,
    row072_good242_checked,
    row072_good243_checked,
    row072_good244_checked,
    row072_good245_checked,
    row072_good246_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_registered :
    decide (row072.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row072_small_checked :
    coverCheck (2 * row072.height.i + 2) (row072.height.i * (row072.height.i - 1) - 1)
      (row072.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row072_layerCover_checked :
    coverCheck (row072.height.i * (row072.height.i - 1)) (row072.height.n0 - 1)
      (row072.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row072_bounds : List NatInterval :=
  [(146, 210), (211, 282), (283, 354), (355, 424), (425, 492), (493, 562), (563, 634), (635, 702), (703, 772), (773, 844), (845, 910), (911, 982), (983, 1054), (1055, 1122), (1123, 1194), (1195, 1264), (1265, 1330), (1331, 1398), (1399, 1470), (1471, 1542), (1543, 1614), (1615, 1684), (1685, 1740), (1741, 1812), (1813, 1882), (1883, 1950), (1951, 2022), (2023, 2088), (2089, 2160), (2161, 2232), (2233, 2292), (2293, 2364), (2365, 2428), (2429, 2494), (2495, 2548), (2549, 2620), (2621, 2692), (2693, 2764), (2765, 2824), (2825, 2890), (2891, 2958), (2959, 3028), (3029, 3094), (3095, 3160), (3161, 3208), (3209, 3280), (3281, 3342), (3343, 3414), (3415, 3484), (3485, 3540), (3541, 3612), (3613, 3684), (3685, 3748), (3749, 3810), (3811, 3874), (3875, 3934), (3935, 4002), (4003, 4074), (4075, 4144), (4145, 4210), (4211, 4282), (4283, 4354), (4355, 4420), (4421, 4492), (4493, 4564), (4565, 4632), (4633, 4692), (4693, 4762), (4763, 4830), (4831, 4902), (4903, 4974), (4975, 5044), (5045, 5110), (5111, 5125), (5202, 5216), (5239, 5273), (5290, 5310), (5324, 5361), (5415, 5484), (5485, 5486), (5488, 5554), (5555, 5562), (5618, 5618), (5625, 5689), (5776, 5820), (5821, 5892), (5893, 5902), (6137, 6140), (6144, 6214), (6215, 6215), (6358, 6419), (6517, 6562), (6563, 6588), (6591, 6652), (6653, 6718), (6724, 6790), (6791, 6798), (6859, 6928), (6929, 6948), (6962, 7007), (7220, 7290), (7291, 7291), (7406, 7464), (7465, 7477), (7500, 7570), (7571, 7632), (7633, 7640), (7935, 8004), (8005, 8013), (8125, 8163), (8192, 8196), (8214, 8280), (8281, 8285), (8303, 8303), (8405, 8460), (8461, 8498), (8664, 8734), (8735, 8735), (8788, 8821), (8836, 8859), (8959, 9022), (9023, 9064), (9248, 9312), (9313, 9332), (9375, 9442), (9443, 9446), (9583, 9593), (9604, 9672), (9673, 9675), (10000, 10018), (10051, 10071), (10082, 10150), (10151, 10163), (10580, 10638), (10639, 10696), (10952, 11020), (11021, 11023), (11045, 11056), (11094, 11164), (11165, 11180), (11250, 11307), (11774, 11814), (11815, 11838), (12005, 12050), (12321, 12359), (12500, 12564), (13125, 13192), (13193, 13196), (13225, 13290), (13291, 13296), (13310, 13325), (13454, 13522), (13523, 13527), (13718, 13782), (13783, 13821), (14297, 14354), (14406, 14472), (14473, 14477), (14792, 14810), (14812, 14863), (15059, 15071), (15123, 15192), (15193, 15200), (15379, 15447), (15979, 16043), (16384, 16408), (16428, 16455), (16810, 16858), (16859, 16914), (16915, 16925), (17303, 17369), (17672, 17732), (18491, 18552), (18553, 18562), (18634, 18676), (19208, 19278), (19279, 19279), (19663, 19732), (19733, 19734), (20172, 20232), (20233, 20252), (20577, 20606), (21875, 21942), (21943, 21946), (21970, 21975), (22103, 22161), (22472, 22516), (24010, 24029), (24037, 24081), (24334, 24400), (24401, 24438), (24576, 24636), (24642, 24647), (25215, 25260), (25261, 25276), (25281, 25286), (25289, 25332), (25333, 25352), (26047, 26082), (26411, 26435), (26934, 26967), (27436, 27451), (28125, 28161), (28577, 28632), (28749, 28788), (28812, 28820), (29791, 29839), (30258, 30317), (30926, 30970), (31250, 31284), (31433, 31468), (31469, 31504), (31944, 31978), (31979, 32010), (33620, 33685), (34391, 34446), (35152, 35202), (35301, 35362), (35363, 35372), (36517, 36568), (36569, 36572), (36982, 37050), (37051, 37051), (37553, 37571), (39326, 39394), (39395, 39397), (40344, 40399), (40401, 40415), (40678, 40696), (41772, 41814), (43940, 43994), (44217, 44251), (44944, 44961), (48020, 48084), (48734, 48739), (48778, 48805), (50421, 50481), (56250, 56251), (58989, 59027), (59049, 59060), (59582, 59607), (65536, 65592), (65593, 65604), (73167, 73172), (73205, 73238), (78141, 78196), (85697, 85754)]

theorem row072_bounds_eq : row072.goods.map goodSegmentBounds = row072_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row072_layer000_intervals : List ColouredInterval :=
  [(2, 6144, 6215), (2, 8192, 8263), (2, 8192, 8263), (2, 8192, 8263), (3, 6561, 6632), (3, 6561, 6632), (5, 5625, 5696), (5, 6250, 6321), (5, 6875, 6946), (5, 7500, 7571), (5, 8125, 8196), (5, 8750, 8821), (5, 9375, 9446), (5, 10000, 10071), (5, 6250, 6321), (5, 9375, 9446), (7, 5145, 5216), (7, 5488, 5559), (7, 5831, 5902), (7, 6174, 6245), (7, 6517, 6588), (7, 6860, 6931), (7, 7203, 7274), (7, 7546, 7617), (7, 7889, 7960), (7, 8232, 8303), (7, 8575, 8646), (7, 8918, 8989), (7, 9261, 9332), (7, 9604, 9675), (7, 9947, 10018), (7, 7203, 7274), (7, 9604, 9675), (11, 5324, 5395), (11, 6655, 6726), (11, 7986, 8057), (11, 9317, 9388), (13, 5112, 5141), (13, 5239, 5310), (13, 5408, 5479), (13, 6591, 6662), (13, 8788, 8859), (17, 5202, 5273), (17, 5491, 5562), (17, 5780, 5851), (17, 6069, 6140), (17, 6358, 6429), (17, 6647, 6718), (17, 6936, 7007), (17, 7225, 7296), (17, 7514, 7585), (17, 7803, 7874), (17, 8092, 8163), (17, 8381, 8452), (17, 8670, 8741), (17, 8959, 9030), (17, 9248, 9319), (17, 9826, 9897), (19, 5112, 5125), (19, 5415, 5486), (19, 5776, 5847), (19, 6137, 6208), (19, 6498, 6569), (19, 6859, 6930), (19, 7220, 7291), (19, 7581, 7652), (19, 7942, 8013), (19, 8303, 8374), (19, 8664, 8735), (19, 9025, 9096), (19, 9386, 9457), (19, 9747, 9818), (19, 10108, 10179), (19, 6859, 6930), (23, 5290, 5361), (23, 5819, 5890), (23, 6348, 6419), (23, 6877, 6948), (23, 7406, 7477), (23, 7935, 8006), (23, 8464, 8535), (23, 8993, 9064), (23, 9522, 9593), (23, 10051, 10122), (29, 5112, 5117), (29, 5887, 5958), (29, 6728, 6799), (29, 7569, 7640), (29, 8410, 8481), (29, 9251, 9322), (29, 10092, 10163), (31, 5766, 5837), (31, 6727, 6798), (31, 7688, 7759), (31, 8649, 8720), (31, 9610, 9681), (37, 5476, 5547), (37, 6845, 6916), (37, 8214, 8285), (37, 9583, 9654), (41, 5112, 5114), (41, 6724, 6795), (41, 8405, 8476), (41, 10086, 10157), (43, 5547, 5618), (43, 7396, 7467), (43, 9245, 9316), (47, 6627, 6698), (47, 8836, 8907), (53, 5618, 5689), (53, 8427, 8498), (59, 6962, 7033), (61, 7442, 7513), (67, 8978, 9049), (71, 5112, 5112), (71, 10082, 10153)]

def row072_layer000_block000 : List ColouredInterval :=
  [(2, 6144, 6215), (2, 8192, 8263), (2, 8192, 8263), (2, 8192, 8263), (3, 6561, 6632), (3, 6561, 6632), (5, 5625, 5696), (5, 6250, 6321), (5, 6875, 6946), (5, 7500, 7571), (5, 8125, 8196), (5, 8750, 8821), (5, 9375, 9446), (5, 10000, 10071), (5, 6250, 6321), (5, 9375, 9446)]

def row072_layer000_block001 : List ColouredInterval :=
  [(7, 5145, 5216), (7, 5488, 5559), (7, 5831, 5902), (7, 6174, 6245), (7, 6517, 6588), (7, 6860, 6931), (7, 7203, 7274), (7, 7546, 7617), (7, 7889, 7960), (7, 8232, 8303), (7, 8575, 8646), (7, 8918, 8989), (7, 9261, 9332), (7, 9604, 9675), (7, 9947, 10018), (7, 7203, 7274)]

def row072_layer000_block002 : List ColouredInterval :=
  [(7, 9604, 9675), (11, 5324, 5395), (11, 6655, 6726), (11, 7986, 8057), (11, 9317, 9388), (13, 5112, 5141), (13, 5239, 5310), (13, 5408, 5479), (13, 6591, 6662), (13, 8788, 8859), (17, 5202, 5273), (17, 5491, 5562), (17, 5780, 5851), (17, 6069, 6140), (17, 6358, 6429), (17, 6647, 6718)]

def row072_layer000_block003 : List ColouredInterval :=
  [(17, 6936, 7007), (17, 7225, 7296), (17, 7514, 7585), (17, 7803, 7874), (17, 8092, 8163), (17, 8381, 8452), (17, 8670, 8741), (17, 8959, 9030), (17, 9248, 9319), (17, 9826, 9897), (19, 5112, 5125), (19, 5415, 5486), (19, 5776, 5847), (19, 6137, 6208), (19, 6498, 6569), (19, 6859, 6930)]

def row072_layer000_block004 : List ColouredInterval :=
  [(19, 7220, 7291), (19, 7581, 7652), (19, 7942, 8013), (19, 8303, 8374), (19, 8664, 8735), (19, 9025, 9096), (19, 9386, 9457), (19, 9747, 9818), (19, 10108, 10179), (19, 6859, 6930), (23, 5290, 5361), (23, 5819, 5890), (23, 6348, 6419), (23, 6877, 6948), (23, 7406, 7477), (23, 7935, 8006)]

def row072_layer000_block005 : List ColouredInterval :=
  [(23, 8464, 8535), (23, 8993, 9064), (23, 9522, 9593), (23, 10051, 10122), (29, 5112, 5117), (29, 5887, 5958), (29, 6728, 6799), (29, 7569, 7640), (29, 8410, 8481), (29, 9251, 9322), (29, 10092, 10163), (31, 5766, 5837), (31, 6727, 6798), (31, 7688, 7759), (31, 8649, 8720), (31, 9610, 9681)]

def row072_layer000_block006 : List ColouredInterval :=
  [(37, 5476, 5547), (37, 6845, 6916), (37, 8214, 8285), (37, 9583, 9654), (41, 5112, 5114), (41, 6724, 6795), (41, 8405, 8476), (41, 10086, 10157), (43, 5547, 5618), (43, 7396, 7467), (43, 9245, 9316), (47, 6627, 6698), (47, 8836, 8907), (53, 5618, 5689), (53, 8427, 8498), (59, 6962, 7033)]

def row072_layer000_block007 : List ColouredInterval :=
  [(61, 7442, 7513), (67, 8978, 9049), (71, 5112, 5112), (71, 10082, 10153)]

def row072_layer000_chunks : List (List ColouredInterval) :=
  [row072_layer000_block000, row072_layer000_block001, row072_layer000_block002, row072_layer000_block003, row072_layer000_block004, row072_layer000_block005, row072_layer000_block006, row072_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_arithmetic : LayerArithmeticValid row072.height { lower := 5112, upper := 10224, M := 32 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_enumeration :
    activePowerIntervalList 72 32 5112 10224 = row072_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_pairs000 :
    row072_layer000_block000.all (fun I => row072_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_pairs001 :
    row072_layer000_block001.all (fun I => row072_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_pairs002 :
    row072_layer000_block002.all (fun I => row072_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_pairs003 :
    row072_layer000_block003.all (fun I => row072_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_pairs004 :
    row072_layer000_block004.all (fun I => row072_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_pairs005 :
    row072_layer000_block005.all (fun I => row072_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_pairs006 :
    row072_layer000_block006.all (fun I => row072_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_pairs007 :
    row072_layer000_block007.all (fun I => row072_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_chunks_eq : row072_layer000_chunks.flatten = row072_layer000_intervals := by
  rfl

theorem row072_layer000_pairs : pairCoverCheck row072_layer000_intervals row072_bounds = true := by
  apply pairCoverCheck_of_chunks row072_layer000_chunks_eq
  intro block hblock
  simp only [row072_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row072_layer000_pairs000
  · exact row072_layer000_pairs001
  · exact row072_layer000_pairs002
  · exact row072_layer000_pairs003
  · exact row072_layer000_pairs004
  · exact row072_layer000_pairs005
  · exact row072_layer000_pairs006
  · exact row072_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_pairs
