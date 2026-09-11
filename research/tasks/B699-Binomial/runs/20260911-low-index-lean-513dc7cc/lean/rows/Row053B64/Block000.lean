import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row053_height : HeightCertificateDatum := { i := 53, r := 17, s := 36, n0Power10 := 13 }

def row053_goods : List GoodSegment := [
  { lower := 108, upper := 159, witness := RowWitness.topPrime 107 },
  { lower := 160, upper := 209, witness := RowWitness.topPrime 157 },
  { lower := 210, upper := 251, witness := RowWitness.topPrime 199 },
  { lower := 252, upper := 303, witness := RowWitness.topPrime 251 },
  { lower := 304, upper := 345, witness := RowWitness.topPrime 293 },
  { lower := 346, upper := 389, witness := RowWitness.topPrime 337 },
  { lower := 390, upper := 441, witness := RowWitness.topPrime 389 },
  { lower := 442, upper := 491, witness := RowWitness.topPrime 439 },
  { lower := 492, upper := 543, witness := RowWitness.topPrime 491 },
  { lower := 544, upper := 593, witness := RowWitness.topPrime 541 },
  { lower := 594, upper := 645, witness := RowWitness.topPrime 593 },
  { lower := 646, upper := 695, witness := RowWitness.topPrime 643 },
  { lower := 696, upper := 743, witness := RowWitness.topPrime 691 },
  { lower := 744, upper := 795, witness := RowWitness.topPrime 743 },
  { lower := 796, upper := 839, witness := RowWitness.topPrime 787 },
  { lower := 840, upper := 891, witness := RowWitness.topPrime 839 },
  { lower := 892, upper := 939, witness := RowWitness.topPrime 887 },
  { lower := 940, upper := 989, witness := RowWitness.topPrime 937 },
  { lower := 990, upper := 1035, witness := RowWitness.topPrime 983 },
  { lower := 1036, upper := 1085, witness := RowWitness.topPrime 1033 },
  { lower := 1086, upper := 1121, witness := RowWitness.topPrime 1069 },
  { lower := 1122, upper := 1169, witness := RowWitness.topPrime 1117 },
  { lower := 1170, upper := 1215, witness := RowWitness.topPrime 1163 },
  { lower := 1216, upper := 1265, witness := RowWitness.topPrime 1213 },
  { lower := 1266, upper := 1311, witness := RowWitness.topPrime 1259 },
  { lower := 1312, upper := 1359, witness := RowWitness.topPrime 1307 },
  { lower := 1360, upper := 1379, witness := RowWitness.topPrime 1327 },
  { lower := 1380, upper := 1425, witness := RowWitness.topPrime 1373 },
  { lower := 1426, upper := 1475, witness := RowWitness.topPrime 1423 },
  { lower := 1476, upper := 1523, witness := RowWitness.topPrime 1471 },
  { lower := 1524, upper := 1575, witness := RowWitness.topPrime 1523 },
  { lower := 1576, upper := 1623, witness := RowWitness.topPrime 1571 },
  { lower := 1624, upper := 1673, witness := RowWitness.topPrime 1621 },
  { lower := 1674, upper := 1721, witness := RowWitness.topPrime 1669 },
  { lower := 1722, upper := 1773, witness := RowWitness.topPrime 1721 },
  { lower := 1774, upper := 1811, witness := RowWitness.topPrime 1759 },
  { lower := 1812, upper := 1863, witness := RowWitness.topPrime 1811 },
  { lower := 1864, upper := 1913, witness := RowWitness.topPrime 1861 },
  { lower := 1914, upper := 1965, witness := RowWitness.topPrime 1913 },
  { lower := 1966, upper := 2003, witness := RowWitness.topPrime 1951 },
  { lower := 2004, upper := 2055, witness := RowWitness.topPrime 2003 },
  { lower := 2056, upper := 2105, witness := RowWitness.topPrime 2053 },
  { lower := 2106, upper := 2151, witness := RowWitness.topPrime 2099 },
  { lower := 2152, upper := 2195, witness := RowWitness.topPrime 2143 },
  { lower := 2196, upper := 2231, witness := RowWitness.topPrime 2179 },
  { lower := 2232, upper := 2273, witness := RowWitness.topPrime 2221 },
  { lower := 2274, upper := 2325, witness := RowWitness.topPrime 2273 },
  { lower := 2326, upper := 2363, witness := RowWitness.topPrime 2311 },
  { lower := 2364, upper := 2409, witness := RowWitness.topPrime 2357 },
  { lower := 2410, upper := 2451, witness := RowWitness.topPrime 2399 },
  { lower := 2452, upper := 2499, witness := RowWitness.topPrime 2447 },
  { lower := 2500, upper := 2529, witness := RowWitness.topPrime 2477 },
  { lower := 2530, upper := 2573, witness := RowWitness.topPrime 2521 },
  { lower := 2574, upper := 2609, witness := RowWitness.topPrime 2557 },
  { lower := 2610, upper := 2661, witness := RowWitness.topPrime 2609 },
  { lower := 2662, upper := 2711, witness := RowWitness.topPrime 2659 },
  { lower := 2712, upper := 2763, witness := RowWitness.topPrime 2711 },
  { lower := 2764, upper := 2802, witness := RowWitness.topPrime 2753 },
  { lower := 2816, upper := 2835, witness := RowWitness.topPrime 2803 },
  { lower := 2875, upper := 2913, witness := RowWitness.topPrime 2861 },
  { lower := 2914, upper := 2961, witness := RowWitness.topPrime 2909 },
  { lower := 2962, upper := 2968, witness := RowWitness.topPrime 2957 },
  { lower := 3025, upper := 3075, witness := RowWitness.topPrime 3023 },
  { lower := 3076, upper := 3119, witness := RowWitness.topPrime 3067 },
  { lower := 3120, upper := 3139, witness := RowWitness.topPrime 3119 },
  { lower := 3146, upper := 3189, witness := RowWitness.topPrime 3137 },
  { lower := 3190, upper := 3239, witness := RowWitness.topPrime 3187 },
  { lower := 3240, upper := 3281, witness := RowWitness.topPrime 3229 },
  { lower := 3282, upper := 3302, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3413, witness := RowWitness.topPrime 3361 },
  { lower := 3414, upper := 3454, witness := RowWitness.topPrime 3413 },
  { lower := 3456, upper := 3501, witness := RowWitness.topPrime 3449 },
  { lower := 3502, upper := 3551, witness := RowWitness.topPrime 3499 },
  { lower := 3552, upper := 3561, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3601, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3659, witness := RowWitness.topPrime 3607 },
  { lower := 3660, upper := 3677, witness := RowWitness.topPrime 3659 },
  { lower := 3703, upper := 3753, witness := RowWitness.topPrime 3701 },
  { lower := 3754, upper := 3791, witness := RowWitness.topPrime 3739 },
  { lower := 3792, upper := 3809, witness := RowWitness.topPrime 3779 },
  { lower := 3844, upper := 3885, witness := RowWitness.topPrime 3833 },
  { lower := 3886, upper := 3933, witness := RowWitness.topPrime 3881 },
  { lower := 3934, upper := 3939, witness := RowWitness.topPrime 3931 },
  { lower := 3993, upper := 4023, witness := RowWitness.topPrime 3989 },
  { lower := 4056, upper := 4103, witness := RowWitness.topPrime 4051 },
  { lower := 4104, upper := 4151, witness := RowWitness.topPrime 4099 },
  { lower := 4152, upper := 4168, witness := RowWitness.topPrime 4139 },
  { lower := 4225, upper := 4271, witness := RowWitness.topPrime 4219 },
  { lower := 4272, upper := 4277, witness := RowWitness.topPrime 4271 },
  { lower := 4335, upper := 4379, witness := RowWitness.topPrime 4327 },
  { lower := 4380, upper := 4425, witness := RowWitness.topPrime 4373 },
  { lower := 4426, upper := 4446, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4470, witness := RowWitness.topPrime 4457 },
  { lower := 4608, upper := 4615, witness := RowWitness.topPrime 4603 },
  { lower := 4617, upper := 4655, witness := RowWitness.topPrime 4603 },
  { lower := 4656, upper := 4669, witness := RowWitness.topPrime 4651 },
  { lower := 4732, upper := 4745, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4784, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4853, witness := RowWitness.topPrime 4801 },
  { lower := 4854, upper := 4854, witness := RowWitness.topPrime 4831 },
  { lower := 4864, upper := 4913, witness := RowWitness.topPrime 4861 },
  { lower := 4914, upper := 4953, witness := RowWitness.topPrime 4909 },
  { lower := 5043, upper := 5091, witness := RowWitness.topPrime 5039 },
  { lower := 5092, upper := 5098, witness := RowWitness.topPrime 5087 },
  { lower := 5103, upper := 5106, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5171, witness := RowWitness.topPrime 5119 },
  { lower := 5172, upper := 5172, witness := RowWitness.topPrime 5171 },
  { lower := 5324, upper := 5342, witness := RowWitness.topPrime 5323 },
  { lower := 5346, upper := 5385, witness := RowWitness.topPrime 5333 },
  { lower := 5386, upper := 5398, witness := RowWitness.topPrime 5381 },
  { lower := 5415, upper := 5428, witness := RowWitness.topPrime 5413 },
  { lower := 5488, upper := 5535, witness := RowWitness.topPrime 5483 },
  { lower := 5536, upper := 5540, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5599, witness := RowWitness.topPrime 5581 },
  { lower := 5625, upper := 5675, witness := RowWitness.topPrime 5623 },
  { lower := 5676, upper := 5677, witness := RowWitness.topPrime 5669 },
  { lower := 5776, upper := 5801, witness := RowWitness.topPrime 5749 },
  { lower := 5802, upper := 5853, witness := RowWitness.topPrime 5801 },
  { lower := 5854, upper := 5883, witness := RowWitness.topPrime 5851 },
  { lower := 5888, upper := 5933, witness := RowWitness.topPrime 5881 },
  { lower := 5934, upper := 5939, witness := RowWitness.topPrime 5927 },
  { lower := 6075, upper := 6121, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6195, witness := RowWitness.topPrime 6143 },
  { lower := 6196, upper := 6196, witness := RowWitness.topPrime 6173 },
  { lower := 6348, upper := 6395, witness := RowWitness.topPrime 6343 },
  { lower := 6396, upper := 6410, witness := RowWitness.topPrime 6389 },
  { lower := 6517, upper := 6543, witness := RowWitness.topPrime 6491 },
  { lower := 6544, upper := 6550, witness := RowWitness.topPrime 6529 },
  { lower := 6561, upper := 6569, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6613, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6643, witness := RowWitness.topPrime 6619 },
  { lower := 6647, upper := 6689, witness := RowWitness.topPrime 6637 },
  { lower := 6690, upper := 6707, witness := RowWitness.topPrime 6689 },
  { lower := 6727, upper := 6771, witness := RowWitness.topPrime 6719 },
  { lower := 6772, upper := 6779, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6909, witness := RowWitness.topPrime 6857 },
  { lower := 6910, upper := 6927, witness := RowWitness.topPrime 6907 },
  { lower := 7203, upper := 7245, witness := RowWitness.topPrime 7193 },
  { lower := 7246, upper := 7272, witness := RowWitness.topPrime 7243 },
  { lower := 7406, upper := 7445, witness := RowWitness.topPrime 7393 },
  { lower := 7446, upper := 7448, witness := RowWitness.topPrime 7433 },
  { lower := 7514, upper := 7559, witness := RowWitness.topPrime 7507 },
  { lower := 7560, upper := 7566, witness := RowWitness.topPrime 7559 },
  { lower := 7569, upper := 7613, witness := RowWitness.topPrime 7561 },
  { lower := 7614, upper := 7621, witness := RowWitness.topPrime 7607 },
  { lower := 7688, upper := 7732, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 7985, witness := RowWitness.topPrime 7933 },
  { lower := 7986, upper := 7994, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8038, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8261, witness := RowWitness.topPrime 8209 },
  { lower := 8262, upper := 8266, witness := RowWitness.topPrime 8243 },
  { lower := 8410, upper := 8441, witness := RowWitness.topPrime 8389 },
  { lower := 8442, upper := 8457, witness := RowWitness.topPrime 8431 },
  { lower := 8664, upper := 8701, witness := RowWitness.topPrime 8663 },
  { lower := 8704, upper := 8716, witness := RowWitness.topPrime 8699 },
  { lower := 8748, upper := 8799, witness := RowWitness.topPrime 8747 },
  { lower := 8800, upper := 8802, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8840, witness := RowWitness.topPrime 8831 },
  { lower := 9025, upper := 9045, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9293, witness := RowWitness.topPrime 9241 },
  { lower := 9294, upper := 9297, witness := RowWitness.topPrime 9293 },
  { lower := 9386, upper := 9427, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9529, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9653, witness := RowWitness.topPrime 9601 },
  { lower := 9654, upper := 9656, witness := RowWitness.topPrime 9649 },
  { lower := 10051, upper := 10052, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10131, witness := RowWitness.topPrime 10079 },
  { lower := 10132, upper := 10138, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10258, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10619, witness := RowWitness.topPrime 10567 },
  { lower := 10620, upper := 10623, witness := RowWitness.topPrime 10613 },
  { lower := 10625, upper := 10632, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10677, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10961, witness := RowWitness.topPrime 10909 },
  { lower := 10962, upper := 11004, witness := RowWitness.topPrime 10957 },
  { lower := 11094, upper := 11097, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11145, witness := RowWitness.topPrime 11093 },
  { lower := 11146, upper := 11146, witness := RowWitness.topPrime 11131 },
  { lower := 11264, upper := 11302, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11690, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11795, witness := RowWitness.topPrime 11743 },
  { lower := 11796, upper := 11826, witness := RowWitness.topPrime 11789 },
  { lower := 12005, upper := 12031, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12340, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12545, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13173, witness := RowWitness.topPrime 13121 },
  { lower := 13174, upper := 13174, witness := RowWitness.topPrime 13171 },
  { lower := 13312, upper := 13361, witness := RowWitness.topPrime 13309 },
  { lower := 13362, upper := 13362, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13503, witness := RowWitness.topPrime 13451 },
  { lower := 13504, upper := 13506, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13742, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13770, witness := RowWitness.topPrime 13729 },
  { lower := 14336, upper := 14349, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14388, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14453, witness := RowWitness.topPrime 14401 },
  { lower := 14454, upper := 14458, witness := RowWitness.topPrime 14449 },
  { lower := 15138, upper := 15181, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15361, witness := RowWitness.topPrime 15359 },
  { lower := 15376, upper := 15425, witness := RowWitness.topPrime 15373 },
  { lower := 15426, upper := 15428, witness := RowWitness.topPrime 15413 },
  { lower := 15979, upper := 16024, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16389, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16436, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16839, witness := RowWitness.topPrime 16787 },
  { lower := 16840, upper := 16862, witness := RowWitness.topPrime 16831 },
  { lower := 17303, upper := 17350, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17713, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18533, witness := RowWitness.topPrime 18481 },
  { lower := 18534, upper := 18543, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19218, witness := RowWitness.topPrime 19207 },
  { lower := 19220, upper := 19260, witness := RowWitness.topPrime 19219 },
  { lower := 19683, upper := 19704, witness := RowWitness.topPrime 19681 },
  { lower := 20181, upper := 20224, witness := RowWitness.topPrime 20177 },
  { lower := 20577, upper := 20587, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21915, witness := RowWitness.topPrime 21863 },
  { lower := 21916, upper := 21927, witness := RowWitness.topPrime 21911 },
  { lower := 24010, upper := 24010, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24081, witness := RowWitness.topPrime 24029 },
  { lower := 24082, upper := 24089, witness := RowWitness.topPrime 24077 },
  { lower := 24334, upper := 24351, witness := RowWitness.topPrime 24329 },
  { lower := 24576, upper := 24617, witness := RowWitness.topPrime 24571 },
  { lower := 26411, upper := 26416, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26649, witness := RowWitness.topPrime 26597 },
  { lower := 26650, upper := 26672, witness := RowWitness.topPrime 26647 },
  { lower := 28577, upper := 28613, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28724, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28769, witness := RowWitness.topPrime 28729 },
  { lower := 30758, upper := 30772, witness := RowWitness.topPrime 30757 },
  { lower := 31250, upper := 31265, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32820, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33666, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34427, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35183, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35353, witness := RowWitness.topPrime 35339 },
  { lower := 43750, upper := 43773, witness := RowWitness.topPrime 43721 },
  { lower := 43774, upper := 43792, witness := RowWitness.topPrime 43759 },
  { lower := 43940, upper := 43975, witness := RowWitness.topPrime 43933 },
  { lower := 49152, upper := 49182, witness := RowWitness.topPrime 49139 },
  { lower := 73205, upper := 73219, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73747, witness := RowWitness.topPrime 73727 },
  { lower := 327701, upper := 327732, witness := RowWitness.topPrime 327689 }
]

def row053_layers : List CoverLayer := [
  { lower := 2756, upper := 5512, M := 29 },
  { lower := 5512, upper := 11024, M := 26 },
  { lower := 11024, upper := 22048, M := 23 },
  { lower := 22048, upper := 44096, M := 21 },
  { lower := 44096, upper := 88192, M := 18 },
  { lower := 88192, upper := 176384, M := 17 },
  { lower := 176384, upper := 352768, M := 15 },
  { lower := 352768, upper := 705536, M := 13 },
  { lower := 705536, upper := 1411072, M := 12 },
  { lower := 1411072, upper := 2822144, M := 11 },
  { lower := 2822144, upper := 5644288, M := 10 },
  { lower := 5644288, upper := 11288576, M := 9 },
  { lower := 11288576, upper := 22577152, M := 8 },
  { lower := 22577152, upper := 45154304, M := 7 },
  { lower := 45154304, upper := 90308608, M := 6 },
  { lower := 90308608, upper := 180617216, M := 6 },
  { lower := 180617216, upper := 361234432, M := 5 },
  { lower := 361234432, upper := 722468864, M := 5 },
  { lower := 722468864, upper := 1444937728, M := 4 },
  { lower := 1444937728, upper := 2889875456, M := 4 },
  { lower := 2889875456, upper := 5779750912, M := 3 },
  { lower := 5779750912, upper := 11559501824, M := 3 },
  { lower := 11559501824, upper := 23119003648, M := 3 },
  { lower := 23119003648, upper := 46238007296, M := 3 },
  { lower := 46238007296, upper := 92476014592, M := 2 },
  { lower := 92476014592, upper := 184952029184, M := 2 },
  { lower := 184952029184, upper := 369904058368, M := 2 },
  { lower := 369904058368, upper := 739808116736, M := 2 },
  { lower := 739808116736, upper := 1479616233472, M := 2 },
  { lower := 1479616233472, upper := 2959232466944, M := 2 },
  { lower := 2959232466944, upper := 5918464933888, M := 1 },
  { lower := 5918464933888, upper := 10000000000000, M := 1 }
]

def row053 : FiniteCoverRow := {
  height := row053_height,
  goods := row053_goods,
  layers := row053_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good000_checked :
    goodSegmentCheck 53 17 36
      { lower := 108, upper := 159, witness := RowWitness.topPrime 107 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good001_checked :
    goodSegmentCheck 53 17 36
      { lower := 160, upper := 209, witness := RowWitness.topPrime 157 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good002_checked :
    goodSegmentCheck 53 17 36
      { lower := 210, upper := 251, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good003_checked :
    goodSegmentCheck 53 17 36
      { lower := 252, upper := 303, witness := RowWitness.topPrime 251 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good004_checked :
    goodSegmentCheck 53 17 36
      { lower := 304, upper := 345, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good005_checked :
    goodSegmentCheck 53 17 36
      { lower := 346, upper := 389, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good006_checked :
    goodSegmentCheck 53 17 36
      { lower := 390, upper := 441, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good007_checked :
    goodSegmentCheck 53 17 36
      { lower := 442, upper := 491, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good008_checked :
    goodSegmentCheck 53 17 36
      { lower := 492, upper := 543, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good009_checked :
    goodSegmentCheck 53 17 36
      { lower := 544, upper := 593, witness := RowWitness.topPrime 541 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good010_checked :
    goodSegmentCheck 53 17 36
      { lower := 594, upper := 645, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good011_checked :
    goodSegmentCheck 53 17 36
      { lower := 646, upper := 695, witness := RowWitness.topPrime 643 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good012_checked :
    goodSegmentCheck 53 17 36
      { lower := 696, upper := 743, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good013_checked :
    goodSegmentCheck 53 17 36
      { lower := 744, upper := 795, witness := RowWitness.topPrime 743 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good014_checked :
    goodSegmentCheck 53 17 36
      { lower := 796, upper := 839, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good015_checked :
    goodSegmentCheck 53 17 36
      { lower := 840, upper := 891, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good016_checked :
    goodSegmentCheck 53 17 36
      { lower := 892, upper := 939, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good017_checked :
    goodSegmentCheck 53 17 36
      { lower := 940, upper := 989, witness := RowWitness.topPrime 937 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good018_checked :
    goodSegmentCheck 53 17 36
      { lower := 990, upper := 1035, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good019_checked :
    goodSegmentCheck 53 17 36
      { lower := 1036, upper := 1085, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good020_checked :
    goodSegmentCheck 53 17 36
      { lower := 1086, upper := 1121, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good021_checked :
    goodSegmentCheck 53 17 36
      { lower := 1122, upper := 1169, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good022_checked :
    goodSegmentCheck 53 17 36
      { lower := 1170, upper := 1215, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good023_checked :
    goodSegmentCheck 53 17 36
      { lower := 1216, upper := 1265, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good024_checked :
    goodSegmentCheck 53 17 36
      { lower := 1266, upper := 1311, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good025_checked :
    goodSegmentCheck 53 17 36
      { lower := 1312, upper := 1359, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good026_checked :
    goodSegmentCheck 53 17 36
      { lower := 1360, upper := 1379, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good027_checked :
    goodSegmentCheck 53 17 36
      { lower := 1380, upper := 1425, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good028_checked :
    goodSegmentCheck 53 17 36
      { lower := 1426, upper := 1475, witness := RowWitness.topPrime 1423 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good029_checked :
    goodSegmentCheck 53 17 36
      { lower := 1476, upper := 1523, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good030_checked :
    goodSegmentCheck 53 17 36
      { lower := 1524, upper := 1575, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good031_checked :
    goodSegmentCheck 53 17 36
      { lower := 1576, upper := 1623, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good032_checked :
    goodSegmentCheck 53 17 36
      { lower := 1624, upper := 1673, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good033_checked :
    goodSegmentCheck 53 17 36
      { lower := 1674, upper := 1721, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good034_checked :
    goodSegmentCheck 53 17 36
      { lower := 1722, upper := 1773, witness := RowWitness.topPrime 1721 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good035_checked :
    goodSegmentCheck 53 17 36
      { lower := 1774, upper := 1811, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good036_checked :
    goodSegmentCheck 53 17 36
      { lower := 1812, upper := 1863, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good037_checked :
    goodSegmentCheck 53 17 36
      { lower := 1864, upper := 1913, witness := RowWitness.topPrime 1861 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good038_checked :
    goodSegmentCheck 53 17 36
      { lower := 1914, upper := 1965, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good039_checked :
    goodSegmentCheck 53 17 36
      { lower := 1966, upper := 2003, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good040_checked :
    goodSegmentCheck 53 17 36
      { lower := 2004, upper := 2055, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good041_checked :
    goodSegmentCheck 53 17 36
      { lower := 2056, upper := 2105, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good042_checked :
    goodSegmentCheck 53 17 36
      { lower := 2106, upper := 2151, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good043_checked :
    goodSegmentCheck 53 17 36
      { lower := 2152, upper := 2195, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good044_checked :
    goodSegmentCheck 53 17 36
      { lower := 2196, upper := 2231, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good045_checked :
    goodSegmentCheck 53 17 36
      { lower := 2232, upper := 2273, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good046_checked :
    goodSegmentCheck 53 17 36
      { lower := 2274, upper := 2325, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good047_checked :
    goodSegmentCheck 53 17 36
      { lower := 2326, upper := 2363, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good048_checked :
    goodSegmentCheck 53 17 36
      { lower := 2364, upper := 2409, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good049_checked :
    goodSegmentCheck 53 17 36
      { lower := 2410, upper := 2451, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good050_checked :
    goodSegmentCheck 53 17 36
      { lower := 2452, upper := 2499, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good051_checked :
    goodSegmentCheck 53 17 36
      { lower := 2500, upper := 2529, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good052_checked :
    goodSegmentCheck 53 17 36
      { lower := 2530, upper := 2573, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good053_checked :
    goodSegmentCheck 53 17 36
      { lower := 2574, upper := 2609, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good054_checked :
    goodSegmentCheck 53 17 36
      { lower := 2610, upper := 2661, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good055_checked :
    goodSegmentCheck 53 17 36
      { lower := 2662, upper := 2711, witness := RowWitness.topPrime 2659 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good056_checked :
    goodSegmentCheck 53 17 36
      { lower := 2712, upper := 2763, witness := RowWitness.topPrime 2711 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good057_checked :
    goodSegmentCheck 53 17 36
      { lower := 2764, upper := 2802, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good058_checked :
    goodSegmentCheck 53 17 36
      { lower := 2816, upper := 2835, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good059_checked :
    goodSegmentCheck 53 17 36
      { lower := 2875, upper := 2913, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good060_checked :
    goodSegmentCheck 53 17 36
      { lower := 2914, upper := 2961, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good061_checked :
    goodSegmentCheck 53 17 36
      { lower := 2962, upper := 2968, witness := RowWitness.topPrime 2957 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good062_checked :
    goodSegmentCheck 53 17 36
      { lower := 3025, upper := 3075, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good063_checked :
    goodSegmentCheck 53 17 36
      { lower := 3076, upper := 3119, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good064_checked :
    goodSegmentCheck 53 17 36
      { lower := 3120, upper := 3139, witness := RowWitness.topPrime 3119 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good065_checked :
    goodSegmentCheck 53 17 36
      { lower := 3146, upper := 3189, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good066_checked :
    goodSegmentCheck 53 17 36
      { lower := 3190, upper := 3239, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good067_checked :
    goodSegmentCheck 53 17 36
      { lower := 3240, upper := 3281, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good068_checked :
    goodSegmentCheck 53 17 36
      { lower := 3282, upper := 3302, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good069_checked :
    goodSegmentCheck 53 17 36
      { lower := 3362, upper := 3413, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good070_checked :
    goodSegmentCheck 53 17 36
      { lower := 3414, upper := 3454, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good071_checked :
    goodSegmentCheck 53 17 36
      { lower := 3456, upper := 3501, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good072_checked :
    goodSegmentCheck 53 17 36
      { lower := 3502, upper := 3551, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good073_checked :
    goodSegmentCheck 53 17 36
      { lower := 3552, upper := 3561, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good074_checked :
    goodSegmentCheck 53 17 36
      { lower := 3584, upper := 3601, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good075_checked :
    goodSegmentCheck 53 17 36
      { lower := 3610, upper := 3659, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good076_checked :
    goodSegmentCheck 53 17 36
      { lower := 3660, upper := 3677, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good077_checked :
    goodSegmentCheck 53 17 36
      { lower := 3703, upper := 3753, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good078_checked :
    goodSegmentCheck 53 17 36
      { lower := 3754, upper := 3791, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good079_checked :
    goodSegmentCheck 53 17 36
      { lower := 3792, upper := 3809, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good080_checked :
    goodSegmentCheck 53 17 36
      { lower := 3844, upper := 3885, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good081_checked :
    goodSegmentCheck 53 17 36
      { lower := 3886, upper := 3933, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good082_checked :
    goodSegmentCheck 53 17 36
      { lower := 3934, upper := 3939, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good083_checked :
    goodSegmentCheck 53 17 36
      { lower := 3993, upper := 4023, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good084_checked :
    goodSegmentCheck 53 17 36
      { lower := 4056, upper := 4103, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good085_checked :
    goodSegmentCheck 53 17 36
      { lower := 4104, upper := 4151, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good086_checked :
    goodSegmentCheck 53 17 36
      { lower := 4152, upper := 4168, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good087_checked :
    goodSegmentCheck 53 17 36
      { lower := 4225, upper := 4271, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good088_checked :
    goodSegmentCheck 53 17 36
      { lower := 4272, upper := 4277, witness := RowWitness.topPrime 4271 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good089_checked :
    goodSegmentCheck 53 17 36
      { lower := 4335, upper := 4379, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good090_checked :
    goodSegmentCheck 53 17 36
      { lower := 4380, upper := 4425, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good091_checked :
    goodSegmentCheck 53 17 36
      { lower := 4426, upper := 4446, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good092_checked :
    goodSegmentCheck 53 17 36
      { lower := 4459, upper := 4470, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good093_checked :
    goodSegmentCheck 53 17 36
      { lower := 4608, upper := 4615, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good094_checked :
    goodSegmentCheck 53 17 36
      { lower := 4617, upper := 4655, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good095_checked :
    goodSegmentCheck 53 17 36
      { lower := 4656, upper := 4669, witness := RowWitness.topPrime 4651 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good096_checked :
    goodSegmentCheck 53 17 36
      { lower := 4732, upper := 4745, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good097_checked :
    goodSegmentCheck 53 17 36
      { lower := 4761, upper := 4784, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good098_checked :
    goodSegmentCheck 53 17 36
      { lower := 4802, upper := 4853, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good099_checked :
    goodSegmentCheck 53 17 36
      { lower := 4854, upper := 4854, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good100_checked :
    goodSegmentCheck 53 17 36
      { lower := 4864, upper := 4913, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good101_checked :
    goodSegmentCheck 53 17 36
      { lower := 4914, upper := 4953, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good102_checked :
    goodSegmentCheck 53 17 36
      { lower := 5043, upper := 5091, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good103_checked :
    goodSegmentCheck 53 17 36
      { lower := 5092, upper := 5098, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good104_checked :
    goodSegmentCheck 53 17 36
      { lower := 5103, upper := 5106, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good105_checked :
    goodSegmentCheck 53 17 36
      { lower := 5120, upper := 5171, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good106_checked :
    goodSegmentCheck 53 17 36
      { lower := 5172, upper := 5172, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good107_checked :
    goodSegmentCheck 53 17 36
      { lower := 5324, upper := 5342, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good108_checked :
    goodSegmentCheck 53 17 36
      { lower := 5346, upper := 5385, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good109_checked :
    goodSegmentCheck 53 17 36
      { lower := 5386, upper := 5398, witness := RowWitness.topPrime 5381 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good110_checked :
    goodSegmentCheck 53 17 36
      { lower := 5415, upper := 5428, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good111_checked :
    goodSegmentCheck 53 17 36
      { lower := 5488, upper := 5535, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good112_checked :
    goodSegmentCheck 53 17 36
      { lower := 5536, upper := 5540, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good113_checked :
    goodSegmentCheck 53 17 36
      { lower := 5589, upper := 5599, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good114_checked :
    goodSegmentCheck 53 17 36
      { lower := 5625, upper := 5675, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good115_checked :
    goodSegmentCheck 53 17 36
      { lower := 5676, upper := 5677, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good116_checked :
    goodSegmentCheck 53 17 36
      { lower := 5776, upper := 5801, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good117_checked :
    goodSegmentCheck 53 17 36
      { lower := 5802, upper := 5853, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good118_checked :
    goodSegmentCheck 53 17 36
      { lower := 5854, upper := 5883, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good119_checked :
    goodSegmentCheck 53 17 36
      { lower := 5888, upper := 5933, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good120_checked :
    goodSegmentCheck 53 17 36
      { lower := 5934, upper := 5939, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good121_checked :
    goodSegmentCheck 53 17 36
      { lower := 6075, upper := 6121, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good122_checked :
    goodSegmentCheck 53 17 36
      { lower := 6144, upper := 6195, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good123_checked :
    goodSegmentCheck 53 17 36
      { lower := 6196, upper := 6196, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good124_checked :
    goodSegmentCheck 53 17 36
      { lower := 6348, upper := 6395, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good125_checked :
    goodSegmentCheck 53 17 36
      { lower := 6396, upper := 6410, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good126_checked :
    goodSegmentCheck 53 17 36
      { lower := 6517, upper := 6543, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good127_checked :
    goodSegmentCheck 53 17 36
      { lower := 6544, upper := 6550, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good128_checked :
    goodSegmentCheck 53 17 36
      { lower := 6561, upper := 6569, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good129_checked :
    goodSegmentCheck 53 17 36
      { lower := 6591, upper := 6613, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good130_checked :
    goodSegmentCheck 53 17 36
      { lower := 6627, upper := 6643, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good131_checked :
    goodSegmentCheck 53 17 36
      { lower := 6647, upper := 6689, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good132_checked :
    goodSegmentCheck 53 17 36
      { lower := 6690, upper := 6707, witness := RowWitness.topPrime 6689 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good133_checked :
    goodSegmentCheck 53 17 36
      { lower := 6727, upper := 6771, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good134_checked :
    goodSegmentCheck 53 17 36
      { lower := 6772, upper := 6779, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good135_checked :
    goodSegmentCheck 53 17 36
      { lower := 6859, upper := 6909, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good136_checked :
    goodSegmentCheck 53 17 36
      { lower := 6910, upper := 6927, witness := RowWitness.topPrime 6907 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good137_checked :
    goodSegmentCheck 53 17 36
      { lower := 7203, upper := 7245, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good138_checked :
    goodSegmentCheck 53 17 36
      { lower := 7246, upper := 7272, witness := RowWitness.topPrime 7243 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good139_checked :
    goodSegmentCheck 53 17 36
      { lower := 7406, upper := 7445, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good140_checked :
    goodSegmentCheck 53 17 36
      { lower := 7446, upper := 7448, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good141_checked :
    goodSegmentCheck 53 17 36
      { lower := 7514, upper := 7559, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good142_checked :
    goodSegmentCheck 53 17 36
      { lower := 7560, upper := 7566, witness := RowWitness.topPrime 7559 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good143_checked :
    goodSegmentCheck 53 17 36
      { lower := 7569, upper := 7613, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good144_checked :
    goodSegmentCheck 53 17 36
      { lower := 7614, upper := 7621, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good145_checked :
    goodSegmentCheck 53 17 36
      { lower := 7688, upper := 7732, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good146_checked :
    goodSegmentCheck 53 17 36
      { lower := 7935, upper := 7985, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good147_checked :
    goodSegmentCheck 53 17 36
      { lower := 7986, upper := 7994, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good148_checked :
    goodSegmentCheck 53 17 36
      { lower := 8019, upper := 8038, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good149_checked :
    goodSegmentCheck 53 17 36
      { lower := 8214, upper := 8261, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good150_checked :
    goodSegmentCheck 53 17 36
      { lower := 8262, upper := 8266, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good151_checked :
    goodSegmentCheck 53 17 36
      { lower := 8410, upper := 8441, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good152_checked :
    goodSegmentCheck 53 17 36
      { lower := 8442, upper := 8457, witness := RowWitness.topPrime 8431 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good153_checked :
    goodSegmentCheck 53 17 36
      { lower := 8664, upper := 8701, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good154_checked :
    goodSegmentCheck 53 17 36
      { lower := 8704, upper := 8716, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good155_checked :
    goodSegmentCheck 53 17 36
      { lower := 8748, upper := 8799, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good156_checked :
    goodSegmentCheck 53 17 36
      { lower := 8800, upper := 8802, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good157_checked :
    goodSegmentCheck 53 17 36
      { lower := 8836, upper := 8840, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good158_checked :
    goodSegmentCheck 53 17 36
      { lower := 9025, upper := 9045, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good159_checked :
    goodSegmentCheck 53 17 36
      { lower := 9245, upper := 9293, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good160_checked :
    goodSegmentCheck 53 17 36
      { lower := 9294, upper := 9297, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good161_checked :
    goodSegmentCheck 53 17 36
      { lower := 9386, upper := 9427, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good162_checked :
    goodSegmentCheck 53 17 36
      { lower := 9522, upper := 9529, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good163_checked :
    goodSegmentCheck 53 17 36
      { lower := 9604, upper := 9653, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good164_checked :
    goodSegmentCheck 53 17 36
      { lower := 9654, upper := 9656, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good165_checked :
    goodSegmentCheck 53 17 36
      { lower := 10051, upper := 10052, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good166_checked :
    goodSegmentCheck 53 17 36
      { lower := 10086, upper := 10131, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good167_checked :
    goodSegmentCheck 53 17 36
      { lower := 10132, upper := 10138, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good168_checked :
    goodSegmentCheck 53 17 36
      { lower := 10240, upper := 10258, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good169_checked :
    goodSegmentCheck 53 17 36
      { lower := 10580, upper := 10619, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good170_checked :
    goodSegmentCheck 53 17 36
      { lower := 10620, upper := 10623, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good171_checked :
    goodSegmentCheck 53 17 36
      { lower := 10625, upper := 10632, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good172_checked :
    goodSegmentCheck 53 17 36
      { lower := 10648, upper := 10677, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good173_checked :
    goodSegmentCheck 53 17 36
      { lower := 10935, upper := 10961, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good174_checked :
    goodSegmentCheck 53 17 36
      { lower := 10962, upper := 11004, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good175_checked :
    goodSegmentCheck 53 17 36
      { lower := 11094, upper := 11097, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good176_checked :
    goodSegmentCheck 53 17 36
      { lower := 11109, upper := 11145, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good177_checked :
    goodSegmentCheck 53 17 36
      { lower := 11146, upper := 11146, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good178_checked :
    goodSegmentCheck 53 17 36
      { lower := 11264, upper := 11302, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good179_checked :
    goodSegmentCheck 53 17 36
      { lower := 11664, upper := 11690, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good180_checked :
    goodSegmentCheck 53 17 36
      { lower := 11774, upper := 11795, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good181_checked :
    goodSegmentCheck 53 17 36
      { lower := 11796, upper := 11826, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good182_checked :
    goodSegmentCheck 53 17 36
      { lower := 12005, upper := 12031, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good183_checked :
    goodSegmentCheck 53 17 36
      { lower := 12321, upper := 12340, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good184_checked :
    goodSegmentCheck 53 17 36
      { lower := 12500, upper := 12545, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good185_checked :
    goodSegmentCheck 53 17 36
      { lower := 13125, upper := 13173, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good186_checked :
    goodSegmentCheck 53 17 36
      { lower := 13174, upper := 13174, witness := RowWitness.topPrime 13171 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good187_checked :
    goodSegmentCheck 53 17 36
      { lower := 13312, upper := 13361, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good188_checked :
    goodSegmentCheck 53 17 36
      { lower := 13362, upper := 13362, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good189_checked :
    goodSegmentCheck 53 17 36
      { lower := 13454, upper := 13503, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good190_checked :
    goodSegmentCheck 53 17 36
      { lower := 13504, upper := 13506, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good191_checked :
    goodSegmentCheck 53 17 36
      { lower := 13718, upper := 13742, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good192_checked :
    goodSegmentCheck 53 17 36
      { lower := 13750, upper := 13770, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good193_checked :
    goodSegmentCheck 53 17 36
      { lower := 14336, upper := 14349, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good194_checked :
    goodSegmentCheck 53 17 36
      { lower := 14375, upper := 14388, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good195_checked :
    goodSegmentCheck 53 17 36
      { lower := 14406, upper := 14453, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good196_checked :
    goodSegmentCheck 53 17 36
      { lower := 14454, upper := 14458, witness := RowWitness.topPrime 14449 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good197_checked :
    goodSegmentCheck 53 17 36
      { lower := 15138, upper := 15181, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good198_checked :
    goodSegmentCheck 53 17 36
      { lower := 15360, upper := 15361, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good199_checked :
    goodSegmentCheck 53 17 36
      { lower := 15376, upper := 15425, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good200_checked :
    goodSegmentCheck 53 17 36
      { lower := 15426, upper := 15428, witness := RowWitness.topPrime 15413 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good201_checked :
    goodSegmentCheck 53 17 36
      { lower := 15979, upper := 16024, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good202_checked :
    goodSegmentCheck 53 17 36
      { lower := 16384, upper := 16389, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good203_checked :
    goodSegmentCheck 53 17 36
      { lower := 16428, upper := 16436, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good204_checked :
    goodSegmentCheck 53 17 36
      { lower := 16807, upper := 16839, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good205_checked :
    goodSegmentCheck 53 17 36
      { lower := 16840, upper := 16862, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good206_checked :
    goodSegmentCheck 53 17 36
      { lower := 17303, upper := 17350, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good207_checked :
    goodSegmentCheck 53 17 36
      { lower := 17672, upper := 17713, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good208_checked :
    goodSegmentCheck 53 17 36
      { lower := 18491, upper := 18533, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good209_checked :
    goodSegmentCheck 53 17 36
      { lower := 18534, upper := 18543, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good210_checked :
    goodSegmentCheck 53 17 36
      { lower := 19208, upper := 19218, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good211_checked :
    goodSegmentCheck 53 17 36
      { lower := 19220, upper := 19260, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good212_checked :
    goodSegmentCheck 53 17 36
      { lower := 19683, upper := 19704, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good213_checked :
    goodSegmentCheck 53 17 36
      { lower := 20181, upper := 20224, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good214_checked :
    goodSegmentCheck 53 17 36
      { lower := 20577, upper := 20587, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good215_checked :
    goodSegmentCheck 53 17 36
      { lower := 21870, upper := 21915, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good216_checked :
    goodSegmentCheck 53 17 36
      { lower := 21916, upper := 21927, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good217_checked :
    goodSegmentCheck 53 17 36
      { lower := 24010, upper := 24010, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good218_checked :
    goodSegmentCheck 53 17 36
      { lower := 24037, upper := 24081, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good219_checked :
    goodSegmentCheck 53 17 36
      { lower := 24082, upper := 24089, witness := RowWitness.topPrime 24077 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good220_checked :
    goodSegmentCheck 53 17 36
      { lower := 24334, upper := 24351, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good221_checked :
    goodSegmentCheck 53 17 36
      { lower := 24576, upper := 24617, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good222_checked :
    goodSegmentCheck 53 17 36
      { lower := 26411, upper := 26416, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good223_checked :
    goodSegmentCheck 53 17 36
      { lower := 26624, upper := 26649, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good224_checked :
    goodSegmentCheck 53 17 36
      { lower := 26650, upper := 26672, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good225_checked :
    goodSegmentCheck 53 17 36
      { lower := 28577, upper := 28613, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good226_checked :
    goodSegmentCheck 53 17 36
      { lower := 28717, upper := 28724, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good227_checked :
    goodSegmentCheck 53 17 36
      { lower := 28749, upper := 28769, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good228_checked :
    goodSegmentCheck 53 17 36
      { lower := 30758, upper := 30772, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good229_checked :
    goodSegmentCheck 53 17 36
      { lower := 31250, upper := 31265, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good230_checked :
    goodSegmentCheck 53 17 36
      { lower := 32805, upper := 32820, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good231_checked :
    goodSegmentCheck 53 17 36
      { lower := 33620, upper := 33666, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good232_checked :
    goodSegmentCheck 53 17 36
      { lower := 34391, upper := 34427, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good233_checked :
    goodSegmentCheck 53 17 36
      { lower := 35152, upper := 35183, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good234_checked :
    goodSegmentCheck 53 17 36
      { lower := 35344, upper := 35353, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good235_checked :
    goodSegmentCheck 53 17 36
      { lower := 43750, upper := 43773, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good236_checked :
    goodSegmentCheck 53 17 36
      { lower := 43774, upper := 43792, witness := RowWitness.topPrime 43759 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good237_checked :
    goodSegmentCheck 53 17 36
      { lower := 43940, upper := 43975, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good238_checked :
    goodSegmentCheck 53 17 36
      { lower := 49152, upper := 49182, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good239_checked :
    goodSegmentCheck 53 17 36
      { lower := 73205, upper := 73219, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good240_checked :
    goodSegmentCheck 53 17 36
      { lower := 73728, upper := 73747, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good241_checked :
    goodSegmentCheck 53 17 36
      { lower := 327701, upper := 327732, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good241_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_goods_checked :
    row053.goods.all (goodSegmentCheck row053.height.i row053.height.r row053.height.s) = true := by
  change row053_goods.all (goodSegmentCheck 53 17 36) = true
  simp only [row053_goods, List.all_cons, List.all_nil,
    row053_good000_checked,
    row053_good001_checked,
    row053_good002_checked,
    row053_good003_checked,
    row053_good004_checked,
    row053_good005_checked,
    row053_good006_checked,
    row053_good007_checked,
    row053_good008_checked,
    row053_good009_checked,
    row053_good010_checked,
    row053_good011_checked,
    row053_good012_checked,
    row053_good013_checked,
    row053_good014_checked,
    row053_good015_checked,
    row053_good016_checked,
    row053_good017_checked,
    row053_good018_checked,
    row053_good019_checked,
    row053_good020_checked,
    row053_good021_checked,
    row053_good022_checked,
    row053_good023_checked,
    row053_good024_checked,
    row053_good025_checked,
    row053_good026_checked,
    row053_good027_checked,
    row053_good028_checked,
    row053_good029_checked,
    row053_good030_checked,
    row053_good031_checked,
    row053_good032_checked,
    row053_good033_checked,
    row053_good034_checked,
    row053_good035_checked,
    row053_good036_checked,
    row053_good037_checked,
    row053_good038_checked,
    row053_good039_checked,
    row053_good040_checked,
    row053_good041_checked,
    row053_good042_checked,
    row053_good043_checked,
    row053_good044_checked,
    row053_good045_checked,
    row053_good046_checked,
    row053_good047_checked,
    row053_good048_checked,
    row053_good049_checked,
    row053_good050_checked,
    row053_good051_checked,
    row053_good052_checked,
    row053_good053_checked,
    row053_good054_checked,
    row053_good055_checked,
    row053_good056_checked,
    row053_good057_checked,
    row053_good058_checked,
    row053_good059_checked,
    row053_good060_checked,
    row053_good061_checked,
    row053_good062_checked,
    row053_good063_checked,
    row053_good064_checked,
    row053_good065_checked,
    row053_good066_checked,
    row053_good067_checked,
    row053_good068_checked,
    row053_good069_checked,
    row053_good070_checked,
    row053_good071_checked,
    row053_good072_checked,
    row053_good073_checked,
    row053_good074_checked,
    row053_good075_checked,
    row053_good076_checked,
    row053_good077_checked,
    row053_good078_checked,
    row053_good079_checked,
    row053_good080_checked,
    row053_good081_checked,
    row053_good082_checked,
    row053_good083_checked,
    row053_good084_checked,
    row053_good085_checked,
    row053_good086_checked,
    row053_good087_checked,
    row053_good088_checked,
    row053_good089_checked,
    row053_good090_checked,
    row053_good091_checked,
    row053_good092_checked,
    row053_good093_checked,
    row053_good094_checked,
    row053_good095_checked,
    row053_good096_checked,
    row053_good097_checked,
    row053_good098_checked,
    row053_good099_checked,
    row053_good100_checked,
    row053_good101_checked,
    row053_good102_checked,
    row053_good103_checked,
    row053_good104_checked,
    row053_good105_checked,
    row053_good106_checked,
    row053_good107_checked,
    row053_good108_checked,
    row053_good109_checked,
    row053_good110_checked,
    row053_good111_checked,
    row053_good112_checked,
    row053_good113_checked,
    row053_good114_checked,
    row053_good115_checked,
    row053_good116_checked,
    row053_good117_checked,
    row053_good118_checked,
    row053_good119_checked,
    row053_good120_checked,
    row053_good121_checked,
    row053_good122_checked,
    row053_good123_checked,
    row053_good124_checked,
    row053_good125_checked,
    row053_good126_checked,
    row053_good127_checked,
    row053_good128_checked,
    row053_good129_checked,
    row053_good130_checked,
    row053_good131_checked,
    row053_good132_checked,
    row053_good133_checked,
    row053_good134_checked,
    row053_good135_checked,
    row053_good136_checked,
    row053_good137_checked,
    row053_good138_checked,
    row053_good139_checked,
    row053_good140_checked,
    row053_good141_checked,
    row053_good142_checked,
    row053_good143_checked,
    row053_good144_checked,
    row053_good145_checked,
    row053_good146_checked,
    row053_good147_checked,
    row053_good148_checked,
    row053_good149_checked,
    row053_good150_checked,
    row053_good151_checked,
    row053_good152_checked,
    row053_good153_checked,
    row053_good154_checked,
    row053_good155_checked,
    row053_good156_checked,
    row053_good157_checked,
    row053_good158_checked,
    row053_good159_checked,
    row053_good160_checked,
    row053_good161_checked,
    row053_good162_checked,
    row053_good163_checked,
    row053_good164_checked,
    row053_good165_checked,
    row053_good166_checked,
    row053_good167_checked,
    row053_good168_checked,
    row053_good169_checked,
    row053_good170_checked,
    row053_good171_checked,
    row053_good172_checked,
    row053_good173_checked,
    row053_good174_checked,
    row053_good175_checked,
    row053_good176_checked,
    row053_good177_checked,
    row053_good178_checked,
    row053_good179_checked,
    row053_good180_checked,
    row053_good181_checked,
    row053_good182_checked,
    row053_good183_checked,
    row053_good184_checked,
    row053_good185_checked,
    row053_good186_checked,
    row053_good187_checked,
    row053_good188_checked,
    row053_good189_checked,
    row053_good190_checked,
    row053_good191_checked,
    row053_good192_checked,
    row053_good193_checked,
    row053_good194_checked,
    row053_good195_checked,
    row053_good196_checked,
    row053_good197_checked,
    row053_good198_checked,
    row053_good199_checked,
    row053_good200_checked,
    row053_good201_checked,
    row053_good202_checked,
    row053_good203_checked,
    row053_good204_checked,
    row053_good205_checked,
    row053_good206_checked,
    row053_good207_checked,
    row053_good208_checked,
    row053_good209_checked,
    row053_good210_checked,
    row053_good211_checked,
    row053_good212_checked,
    row053_good213_checked,
    row053_good214_checked,
    row053_good215_checked,
    row053_good216_checked,
    row053_good217_checked,
    row053_good218_checked,
    row053_good219_checked,
    row053_good220_checked,
    row053_good221_checked,
    row053_good222_checked,
    row053_good223_checked,
    row053_good224_checked,
    row053_good225_checked,
    row053_good226_checked,
    row053_good227_checked,
    row053_good228_checked,
    row053_good229_checked,
    row053_good230_checked,
    row053_good231_checked,
    row053_good232_checked,
    row053_good233_checked,
    row053_good234_checked,
    row053_good235_checked,
    row053_good236_checked,
    row053_good237_checked,
    row053_good238_checked,
    row053_good239_checked,
    row053_good240_checked,
    row053_good241_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_registered :
    decide (row053.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row053_small_checked :
    coverCheck (2 * row053.height.i + 2) (row053.height.i * (row053.height.i - 1) - 1)
      (row053.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row053_layerCover_checked :
    coverCheck (row053.height.i * (row053.height.i - 1)) (row053.height.n0 - 1)
      (row053.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row053_bounds : List NatInterval :=
  [(108, 159), (160, 209), (210, 251), (252, 303), (304, 345), (346, 389), (390, 441), (442, 491), (492, 543), (544, 593), (594, 645), (646, 695), (696, 743), (744, 795), (796, 839), (840, 891), (892, 939), (940, 989), (990, 1035), (1036, 1085), (1086, 1121), (1122, 1169), (1170, 1215), (1216, 1265), (1266, 1311), (1312, 1359), (1360, 1379), (1380, 1425), (1426, 1475), (1476, 1523), (1524, 1575), (1576, 1623), (1624, 1673), (1674, 1721), (1722, 1773), (1774, 1811), (1812, 1863), (1864, 1913), (1914, 1965), (1966, 2003), (2004, 2055), (2056, 2105), (2106, 2151), (2152, 2195), (2196, 2231), (2232, 2273), (2274, 2325), (2326, 2363), (2364, 2409), (2410, 2451), (2452, 2499), (2500, 2529), (2530, 2573), (2574, 2609), (2610, 2661), (2662, 2711), (2712, 2763), (2764, 2802), (2816, 2835), (2875, 2913), (2914, 2961), (2962, 2968), (3025, 3075), (3076, 3119), (3120, 3139), (3146, 3189), (3190, 3239), (3240, 3281), (3282, 3302), (3362, 3413), (3414, 3454), (3456, 3501), (3502, 3551), (3552, 3561), (3584, 3601), (3610, 3659), (3660, 3677), (3703, 3753), (3754, 3791), (3792, 3809), (3844, 3885), (3886, 3933), (3934, 3939), (3993, 4023), (4056, 4103), (4104, 4151), (4152, 4168), (4225, 4271), (4272, 4277), (4335, 4379), (4380, 4425), (4426, 4446), (4459, 4470), (4608, 4615), (4617, 4655), (4656, 4669), (4732, 4745), (4761, 4784), (4802, 4853), (4854, 4854), (4864, 4913), (4914, 4953), (5043, 5091), (5092, 5098), (5103, 5106), (5120, 5171), (5172, 5172), (5324, 5342), (5346, 5385), (5386, 5398), (5415, 5428), (5488, 5535), (5536, 5540), (5589, 5599), (5625, 5675), (5676, 5677), (5776, 5801), (5802, 5853), (5854, 5883), (5888, 5933), (5934, 5939), (6075, 6121), (6144, 6195), (6196, 6196), (6348, 6395), (6396, 6410), (6517, 6543), (6544, 6550), (6561, 6569), (6591, 6613), (6627, 6643), (6647, 6689), (6690, 6707), (6727, 6771), (6772, 6779), (6859, 6909), (6910, 6927), (7203, 7245), (7246, 7272), (7406, 7445), (7446, 7448), (7514, 7559), (7560, 7566), (7569, 7613), (7614, 7621), (7688, 7732), (7935, 7985), (7986, 7994), (8019, 8038), (8214, 8261), (8262, 8266), (8410, 8441), (8442, 8457), (8664, 8701), (8704, 8716), (8748, 8799), (8800, 8802), (8836, 8840), (9025, 9045), (9245, 9293), (9294, 9297), (9386, 9427), (9522, 9529), (9604, 9653), (9654, 9656), (10051, 10052), (10086, 10131), (10132, 10138), (10240, 10258), (10580, 10619), (10620, 10623), (10625, 10632), (10648, 10677), (10935, 10961), (10962, 11004), (11094, 11097), (11109, 11145), (11146, 11146), (11264, 11302), (11664, 11690), (11774, 11795), (11796, 11826), (12005, 12031), (12321, 12340), (12500, 12545), (13125, 13173), (13174, 13174), (13312, 13361), (13362, 13362), (13454, 13503), (13504, 13506), (13718, 13742), (13750, 13770), (14336, 14349), (14375, 14388), (14406, 14453), (14454, 14458), (15138, 15181), (15360, 15361), (15376, 15425), (15426, 15428), (15979, 16024), (16384, 16389), (16428, 16436), (16807, 16839), (16840, 16862), (17303, 17350), (17672, 17713), (18491, 18533), (18534, 18543), (19208, 19218), (19220, 19260), (19683, 19704), (20181, 20224), (20577, 20587), (21870, 21915), (21916, 21927), (24010, 24010), (24037, 24081), (24082, 24089), (24334, 24351), (24576, 24617), (26411, 26416), (26624, 26649), (26650, 26672), (28577, 28613), (28717, 28724), (28749, 28769), (30758, 30772), (31250, 31265), (32805, 32820), (33620, 33666), (34391, 34427), (35152, 35183), (35344, 35353), (43750, 43773), (43774, 43792), (43940, 43975), (49152, 49182), (73205, 73219), (73728, 73747), (327701, 327732)]

theorem row053_bounds_eq : row053.goods.map goodSegmentBounds = row053_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row053_layer000_intervals : List ColouredInterval :=
  [(2, 2816, 2868), (2, 2944, 2996), (2, 3072, 3124), (2, 3200, 3252), (2, 3328, 3380), (2, 3456, 3508), (2, 3584, 3636), (2, 3712, 3764), (2, 2816, 2868), (2, 3072, 3124), (2, 3328, 3380), (2, 3584, 3636), (2, 3840, 3892), (2, 4096, 4148), (2, 4352, 4404), (2, 4608, 4660), (2, 4864, 4916), (2, 5120, 5172), (2, 5376, 5428), (2, 3072, 3124), (2, 3584, 3636), (2, 4096, 4148), (2, 4608, 4660), (2, 5120, 5172), (2, 3072, 3124), (2, 4096, 4148), (2, 5120, 5172), (2, 4096, 4148), (2, 4096, 4148), (3, 2916, 2968), (3, 3159, 3211), (3, 3402, 3454), (3, 3645, 3697), (3, 3888, 3940), (3, 4131, 4183), (3, 4374, 4426), (3, 4617, 4669), (3, 4860, 4912), (3, 5103, 5155), (3, 5346, 5398), (3, 2916, 2968), (3, 3645, 3697), (3, 4374, 4426), (3, 5103, 5155), (3, 4374, 4426), (5, 2756, 2802), (5, 2875, 2927), (5, 3000, 3052), (5, 3125, 3177), (5, 3250, 3302), (5, 3375, 3427), (5, 3500, 3552), (5, 3625, 3677), (5, 3125, 3177), (5, 3750, 3802), (5, 4375, 4427), (5, 5000, 5052), (5, 3125, 3177), (7, 2756, 2796), (7, 3087, 3139), (7, 3430, 3482), (7, 3773, 3825), (7, 4116, 4168), (7, 4459, 4511), (7, 4802, 4854), (7, 5145, 5197), (7, 5488, 5511), (7, 4802, 4854), (11, 2783, 2835), (11, 2904, 2956), (11, 3025, 3077), (11, 3146, 3198), (11, 3267, 3319), (11, 3388, 3440), (11, 3509, 3561), (11, 3993, 4045), (11, 5324, 5376), (13, 2756, 2756), (13, 2873, 2925), (13, 3042, 3094), (13, 3211, 3263), (13, 3380, 3432), (13, 3549, 3601), (13, 3718, 3770), (13, 3887, 3939), (13, 4056, 4108), (13, 4225, 4277), (13, 4394, 4446), (13, 4563, 4615), (13, 4732, 4784), (13, 4901, 4953), (13, 4394, 4446), (17, 2890, 2942), (17, 3179, 3231), (17, 3468, 3520), (17, 3757, 3809), (17, 4046, 4098), (17, 4335, 4387), (17, 4624, 4676), (17, 4913, 4965), (17, 5202, 5254), (17, 5491, 5511), (17, 4913, 4965), (19, 2888, 2940), (19, 3249, 3301), (19, 3610, 3662), (19, 3971, 4023), (19, 4332, 4384), (19, 4693, 4745), (19, 5054, 5106), (19, 5415, 5467), (23, 3174, 3226), (23, 3703, 3755), (23, 4232, 4284), (23, 4761, 4813), (23, 5290, 5342), (29, 3364, 3416), (29, 4205, 4257), (29, 5046, 5098), (31, 2883, 2935), (31, 3844, 3896), (31, 4805, 4857), (37, 2756, 2790), (37, 4107, 4159), (37, 5476, 5511), (41, 3362, 3414), (41, 5043, 5095), (43, 3698, 3750), (47, 4418, 4470)]

def row053_layer000_block000 : List ColouredInterval :=
  [(2, 2816, 2868), (2, 2944, 2996), (2, 3072, 3124), (2, 3200, 3252), (2, 3328, 3380), (2, 3456, 3508), (2, 3584, 3636), (2, 3712, 3764), (2, 2816, 2868), (2, 3072, 3124), (2, 3328, 3380), (2, 3584, 3636), (2, 3840, 3892), (2, 4096, 4148), (2, 4352, 4404)]

def row053_layer000_block001 : List ColouredInterval :=
  [(2, 4608, 4660), (2, 4864, 4916), (2, 5120, 5172), (2, 5376, 5428), (2, 3072, 3124), (2, 3584, 3636), (2, 4096, 4148), (2, 4608, 4660), (2, 5120, 5172), (2, 3072, 3124), (2, 4096, 4148), (2, 5120, 5172), (2, 4096, 4148), (2, 4096, 4148), (3, 2916, 2968)]

def row053_layer000_block002 : List ColouredInterval :=
  [(3, 3159, 3211), (3, 3402, 3454), (3, 3645, 3697), (3, 3888, 3940), (3, 4131, 4183), (3, 4374, 4426), (3, 4617, 4669), (3, 4860, 4912), (3, 5103, 5155), (3, 5346, 5398), (3, 2916, 2968), (3, 3645, 3697), (3, 4374, 4426), (3, 5103, 5155), (3, 4374, 4426)]

def row053_layer000_block003 : List ColouredInterval :=
  [(5, 2756, 2802), (5, 2875, 2927), (5, 3000, 3052), (5, 3125, 3177), (5, 3250, 3302), (5, 3375, 3427), (5, 3500, 3552), (5, 3625, 3677), (5, 3125, 3177), (5, 3750, 3802), (5, 4375, 4427), (5, 5000, 5052), (5, 3125, 3177), (7, 2756, 2796), (7, 3087, 3139)]

def row053_layer000_block004 : List ColouredInterval :=
  [(7, 3430, 3482), (7, 3773, 3825), (7, 4116, 4168), (7, 4459, 4511), (7, 4802, 4854), (7, 5145, 5197), (7, 5488, 5511), (7, 4802, 4854), (11, 2783, 2835), (11, 2904, 2956), (11, 3025, 3077), (11, 3146, 3198), (11, 3267, 3319), (11, 3388, 3440), (11, 3509, 3561)]

def row053_layer000_block005 : List ColouredInterval :=
  [(11, 3993, 4045), (11, 5324, 5376), (13, 2756, 2756), (13, 2873, 2925), (13, 3042, 3094), (13, 3211, 3263), (13, 3380, 3432), (13, 3549, 3601), (13, 3718, 3770), (13, 3887, 3939), (13, 4056, 4108), (13, 4225, 4277), (13, 4394, 4446), (13, 4563, 4615), (13, 4732, 4784)]

def row053_layer000_block006 : List ColouredInterval :=
  [(13, 4901, 4953), (13, 4394, 4446), (17, 2890, 2942), (17, 3179, 3231), (17, 3468, 3520), (17, 3757, 3809), (17, 4046, 4098), (17, 4335, 4387), (17, 4624, 4676), (17, 4913, 4965), (17, 5202, 5254), (17, 5491, 5511), (17, 4913, 4965), (19, 2888, 2940), (19, 3249, 3301)]

def row053_layer000_block007 : List ColouredInterval :=
  [(19, 3610, 3662), (19, 3971, 4023), (19, 4332, 4384), (19, 4693, 4745), (19, 5054, 5106), (19, 5415, 5467), (23, 3174, 3226), (23, 3703, 3755), (23, 4232, 4284), (23, 4761, 4813), (23, 5290, 5342), (29, 3364, 3416), (29, 4205, 4257), (29, 5046, 5098), (31, 2883, 2935)]

def row053_layer000_block008 : List ColouredInterval :=
  [(31, 3844, 3896), (31, 4805, 4857), (37, 2756, 2790), (37, 4107, 4159), (37, 5476, 5511), (41, 3362, 3414), (41, 5043, 5095), (43, 3698, 3750), (47, 4418, 4470)]

def row053_layer000_chunks : List (List ColouredInterval) :=
  [row053_layer000_block000, row053_layer000_block001, row053_layer000_block002, row053_layer000_block003, row053_layer000_block004, row053_layer000_block005, row053_layer000_block006, row053_layer000_block007, row053_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_arithmetic : LayerArithmeticValid row053.height { lower := 2756, upper := 5512, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_enumeration :
    activePowerIntervalList 53 29 2756 5512 = row053_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_pairs000 :
    row053_layer000_block000.all (fun I => row053_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_pairs001 :
    row053_layer000_block001.all (fun I => row053_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_pairs002 :
    row053_layer000_block002.all (fun I => row053_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_pairs003 :
    row053_layer000_block003.all (fun I => row053_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_pairs004 :
    row053_layer000_block004.all (fun I => row053_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_pairs005 :
    row053_layer000_block005.all (fun I => row053_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_pairs006 :
    row053_layer000_block006.all (fun I => row053_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_pairs007 :
    row053_layer000_block007.all (fun I => row053_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_pairs008 :
    row053_layer000_block008.all (fun I => row053_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_chunks_eq : row053_layer000_chunks.flatten = row053_layer000_intervals := by
  rfl

theorem row053_layer000_pairs : pairCoverCheck row053_layer000_intervals row053_bounds = true := by
  apply pairCoverCheck_of_chunks row053_layer000_chunks_eq
  intro block hblock
  simp only [row053_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row053_layer000_pairs000
  · exact row053_layer000_pairs001
  · exact row053_layer000_pairs002
  · exact row053_layer000_pairs003
  · exact row053_layer000_pairs004
  · exact row053_layer000_pairs005
  · exact row053_layer000_pairs006
  · exact row053_layer000_pairs007
  · exact row053_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_checked :
    coverLayerCheck row053.height row053.goods { lower := 2756, upper := 5512, M := 29 } = true := by
  exact coverLayerCheck_of_parts row053_layer000_arithmetic row053_layer000_enumeration row053_bounds_eq row053_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row053_layer001_intervals : List ColouredInterval :=
  [(2, 5632, 5684), (2, 5888, 5940), (2, 6144, 6196), (2, 6400, 6452), (2, 6656, 6708), (2, 5632, 5684), (2, 6144, 6196), (2, 6656, 6708), (2, 7168, 7220), (2, 7680, 7732), (2, 8192, 8244), (2, 8704, 8756), (2, 9216, 9268), (2, 9728, 9780), (2, 10240, 10292), (2, 10752, 10804), (2, 6144, 6196), (2, 7168, 7220), (2, 8192, 8244), (2, 9216, 9268), (2, 10240, 10292), (2, 6144, 6196), (2, 8192, 8244), (2, 10240, 10292), (2, 8192, 8244), (2, 8192, 8244), (3, 5589, 5641), (3, 5832, 5884), (3, 6075, 6127), (3, 6318, 6370), (3, 5832, 5884), (3, 6561, 6613), (3, 7290, 7342), (3, 8019, 8071), (3, 8748, 8800), (3, 9477, 9529), (3, 10206, 10258), (3, 10935, 10987), (3, 6561, 6613), (3, 8748, 8800), (3, 10935, 10987), (3, 6561, 6613), (5, 5625, 5677), (5, 6250, 6302), (5, 6875, 6927), (5, 7500, 7552), (5, 8125, 8177), (5, 8750, 8802), (5, 9375, 9427), (5, 10000, 10052), (5, 10625, 10677), (5, 6250, 6302), (5, 9375, 9427), (7, 5512, 5540), (7, 5831, 5883), (7, 6174, 6226), (7, 6517, 6569), (7, 6860, 6912), (7, 7203, 7255), (7, 7546, 7598), (7, 7889, 7941), (7, 8232, 8284), (7, 8575, 8627), (7, 8918, 8970), (7, 7203, 7255), (7, 9604, 9656), (11, 6655, 6707), (11, 7986, 8038), (11, 9317, 9369), (11, 10648, 10700), (13, 6591, 6643), (13, 8788, 8840), (13, 10985, 11023), (17, 5512, 5543), (17, 5780, 5832), (17, 6069, 6121), (17, 6358, 6410), (17, 6647, 6699), (17, 6936, 6988), (17, 7225, 7277), (17, 7514, 7566), (17, 9826, 9878), (19, 5776, 5828), (19, 6137, 6189), (19, 6498, 6550), (19, 6859, 6911), (19, 7220, 7272), (19, 7581, 7633), (19, 7942, 7994), (19, 8303, 8355), (19, 8664, 8716), (19, 9025, 9077), (19, 9386, 9438), (19, 6859, 6911), (23, 5819, 5871), (23, 6348, 6400), (23, 6877, 6929), (23, 7406, 7458), (23, 7935, 7987), (23, 8464, 8516), (23, 8993, 9045), (23, 9522, 9574), (23, 10051, 10103), (23, 10580, 10632), (29, 5887, 5939), (29, 6728, 6780), (29, 7569, 7621), (29, 8410, 8462), (29, 9251, 9303), (29, 10092, 10144), (29, 10933, 10985), (31, 5766, 5818), (31, 6727, 6779), (31, 7688, 7740), (31, 8649, 8701), (31, 9610, 9662), (31, 10571, 10623), (37, 5512, 5528), (37, 6845, 6897), (37, 8214, 8266), (37, 9583, 9635), (37, 10952, 11004), (41, 6724, 6776), (41, 8405, 8457), (41, 10086, 10138), (43, 5547, 5599), (43, 7396, 7448), (43, 9245, 9297), (47, 6627, 6679), (47, 8836, 8888)]

def row053_layer001_block000 : List ColouredInterval :=
  [(2, 5632, 5684), (2, 5888, 5940), (2, 6144, 6196), (2, 6400, 6452), (2, 6656, 6708), (2, 5632, 5684), (2, 6144, 6196), (2, 6656, 6708), (2, 7168, 7220), (2, 7680, 7732), (2, 8192, 8244), (2, 8704, 8756), (2, 9216, 9268), (2, 9728, 9780), (2, 10240, 10292)]

def row053_layer001_block001 : List ColouredInterval :=
  [(2, 10752, 10804), (2, 6144, 6196), (2, 7168, 7220), (2, 8192, 8244), (2, 9216, 9268), (2, 10240, 10292), (2, 6144, 6196), (2, 8192, 8244), (2, 10240, 10292), (2, 8192, 8244), (2, 8192, 8244), (3, 5589, 5641), (3, 5832, 5884), (3, 6075, 6127), (3, 6318, 6370)]

def row053_layer001_block002 : List ColouredInterval :=
  [(3, 5832, 5884), (3, 6561, 6613), (3, 7290, 7342), (3, 8019, 8071), (3, 8748, 8800), (3, 9477, 9529), (3, 10206, 10258), (3, 10935, 10987), (3, 6561, 6613), (3, 8748, 8800), (3, 10935, 10987), (3, 6561, 6613), (5, 5625, 5677), (5, 6250, 6302), (5, 6875, 6927)]

def row053_layer001_block003 : List ColouredInterval :=
  [(5, 7500, 7552), (5, 8125, 8177), (5, 8750, 8802), (5, 9375, 9427), (5, 10000, 10052), (5, 10625, 10677), (5, 6250, 6302), (5, 9375, 9427), (7, 5512, 5540), (7, 5831, 5883), (7, 6174, 6226), (7, 6517, 6569), (7, 6860, 6912), (7, 7203, 7255), (7, 7546, 7598)]

def row053_layer001_block004 : List ColouredInterval :=
  [(7, 7889, 7941), (7, 8232, 8284), (7, 8575, 8627), (7, 8918, 8970), (7, 7203, 7255), (7, 9604, 9656), (11, 6655, 6707), (11, 7986, 8038), (11, 9317, 9369), (11, 10648, 10700), (13, 6591, 6643), (13, 8788, 8840), (13, 10985, 11023), (17, 5512, 5543), (17, 5780, 5832)]

def row053_layer001_block005 : List ColouredInterval :=
  [(17, 6069, 6121), (17, 6358, 6410), (17, 6647, 6699), (17, 6936, 6988), (17, 7225, 7277), (17, 7514, 7566), (17, 9826, 9878), (19, 5776, 5828), (19, 6137, 6189), (19, 6498, 6550), (19, 6859, 6911), (19, 7220, 7272), (19, 7581, 7633), (19, 7942, 7994), (19, 8303, 8355)]

def row053_layer001_block006 : List ColouredInterval :=
  [(19, 8664, 8716), (19, 9025, 9077), (19, 9386, 9438), (19, 6859, 6911), (23, 5819, 5871), (23, 6348, 6400), (23, 6877, 6929), (23, 7406, 7458), (23, 7935, 7987), (23, 8464, 8516), (23, 8993, 9045), (23, 9522, 9574), (23, 10051, 10103), (23, 10580, 10632), (29, 5887, 5939)]

def row053_layer001_block007 : List ColouredInterval :=
  [(29, 6728, 6780), (29, 7569, 7621), (29, 8410, 8462), (29, 9251, 9303), (29, 10092, 10144), (29, 10933, 10985), (31, 5766, 5818), (31, 6727, 6779), (31, 7688, 7740), (31, 8649, 8701), (31, 9610, 9662), (31, 10571, 10623), (37, 5512, 5528), (37, 6845, 6897), (37, 8214, 8266)]

def row053_layer001_block008 : List ColouredInterval :=
  [(37, 9583, 9635), (37, 10952, 11004), (41, 6724, 6776), (41, 8405, 8457), (41, 10086, 10138), (43, 5547, 5599), (43, 7396, 7448), (43, 9245, 9297), (47, 6627, 6679), (47, 8836, 8888)]

def row053_layer001_chunks : List (List ColouredInterval) :=
  [row053_layer001_block000, row053_layer001_block001, row053_layer001_block002, row053_layer001_block003, row053_layer001_block004, row053_layer001_block005, row053_layer001_block006, row053_layer001_block007, row053_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_arithmetic : LayerArithmeticValid row053.height { lower := 5512, upper := 11024, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_enumeration :
    activePowerIntervalList 53 26 5512 11024 = row053_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_pairs000 :
    row053_layer001_block000.all (fun I => row053_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_pairs001 :
    row053_layer001_block001.all (fun I => row053_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_pairs002 :
    row053_layer001_block002.all (fun I => row053_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_pairs003 :
    row053_layer001_block003.all (fun I => row053_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_pairs004 :
    row053_layer001_block004.all (fun I => row053_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_pairs005 :
    row053_layer001_block005.all (fun I => row053_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_pairs006 :
    row053_layer001_block006.all (fun I => row053_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_pairs007 :
    row053_layer001_block007.all (fun I => row053_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_pairs008 :
    row053_layer001_block008.all (fun I => row053_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_chunks_eq : row053_layer001_chunks.flatten = row053_layer001_intervals := by
  rfl

theorem row053_layer001_pairs : pairCoverCheck row053_layer001_intervals row053_bounds = true := by
  apply pairCoverCheck_of_chunks row053_layer001_chunks_eq
  intro block hblock
  simp only [row053_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row053_layer001_pairs000
  · exact row053_layer001_pairs001
  · exact row053_layer001_pairs002
  · exact row053_layer001_pairs003
  · exact row053_layer001_pairs004
  · exact row053_layer001_pairs005
  · exact row053_layer001_pairs006
  · exact row053_layer001_pairs007
  · exact row053_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer001_checked :
    coverLayerCheck row053.height row053.goods { lower := 5512, upper := 11024, M := 26 } = true := by
  exact coverLayerCheck_of_parts row053_layer001_arithmetic row053_layer001_enumeration row053_bounds_eq row053_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row053_layer002_intervals : List ColouredInterval :=
  [(2, 11264, 11316), (2, 11776, 11828), (2, 11264, 11316), (2, 12288, 12340), (2, 13312, 13364), (2, 14336, 14388), (2, 15360, 15412), (2, 16384, 16436), (2, 17408, 17460), (2, 18432, 18484), (2, 19456, 19508), (2, 20480, 20532), (2, 21504, 21556), (2, 12288, 12340), (2, 14336, 14388), (2, 16384, 16436), (2, 18432, 18484), (2, 20480, 20532), (2, 12288, 12340), (2, 16384, 16436), (2, 20480, 20532), (2, 16384, 16436), (2, 16384, 16436), (3, 11664, 11716), (3, 12393, 12445), (3, 13122, 13174), (3, 13851, 13903), (3, 14580, 14632), (3, 15309, 15361), (3, 16038, 16090), (3, 16767, 16819), (3, 13122, 13174), (3, 15309, 15361), (3, 17496, 17548), (3, 19683, 19735), (3, 21870, 21922), (3, 13122, 13174), (3, 19683, 19735), (3, 19683, 19735), (5, 11250, 11302), (5, 11875, 11927), (5, 12500, 12552), (5, 13125, 13177), (5, 13750, 13802), (5, 14375, 14427), (5, 12500, 12552), (5, 15625, 15677), (5, 18750, 18802), (5, 21875, 21927), (5, 15625, 15677), (7, 12005, 12057), (7, 14406, 14458), (7, 16807, 16859), (7, 19208, 19260), (7, 21609, 21661), (7, 16807, 16859), (11, 11979, 12031), (11, 13310, 13362), (11, 14641, 14693), (11, 15972, 16024), (11, 17303, 17355), (11, 18634, 18686), (11, 19965, 20017), (11, 21296, 21348), (11, 14641, 14693), (13, 11024, 11037), (13, 13182, 13234), (13, 15379, 15431), (13, 17576, 17628), (13, 19773, 19825), (13, 21970, 22022), (17, 14739, 14791), (17, 19652, 19704), (19, 13718, 13770), (19, 20577, 20629), (23, 11109, 11161), (23, 11638, 11690), (23, 12167, 12219), (23, 12167, 12219), (29, 11774, 11826), (29, 12615, 12667), (29, 13456, 13508), (29, 14297, 14349), (29, 15138, 15190), (29, 15979, 16031), (29, 16820, 16872), (29, 17661, 17713), (29, 18502, 18554), (29, 19343, 19395), (31, 11532, 11584), (31, 12493, 12545), (31, 13454, 13506), (31, 14415, 14467), (31, 15376, 15428), (31, 16337, 16389), (31, 17298, 17350), (31, 18259, 18311), (31, 19220, 19272), (31, 20181, 20233), (31, 21142, 21194), (37, 12321, 12373), (37, 13690, 13742), (37, 15059, 15111), (37, 16428, 16480), (37, 17797, 17849), (37, 19166, 19218), (37, 20535, 20587), (37, 21904, 21956), (41, 11767, 11819), (41, 13448, 13500), (41, 15129, 15181), (41, 16810, 16862), (41, 18491, 18543), (41, 20172, 20224), (41, 21853, 21905), (43, 11094, 11146), (43, 12943, 12995), (43, 14792, 14844), (43, 16641, 16693), (43, 18490, 18542), (43, 20339, 20391), (47, 11045, 11097), (47, 13254, 13306), (47, 15463, 15515), (47, 17672, 17724), (47, 19881, 19933)]

def row053_layer002_block000 : List ColouredInterval :=
  [(2, 11264, 11316), (2, 11776, 11828), (2, 11264, 11316), (2, 12288, 12340), (2, 13312, 13364), (2, 14336, 14388), (2, 15360, 15412), (2, 16384, 16436), (2, 17408, 17460), (2, 18432, 18484), (2, 19456, 19508), (2, 20480, 20532), (2, 21504, 21556), (2, 12288, 12340), (2, 14336, 14388), (2, 16384, 16436)]

def row053_layer002_block001 : List ColouredInterval :=
  [(2, 18432, 18484), (2, 20480, 20532), (2, 12288, 12340), (2, 16384, 16436), (2, 20480, 20532), (2, 16384, 16436), (2, 16384, 16436), (3, 11664, 11716), (3, 12393, 12445), (3, 13122, 13174), (3, 13851, 13903), (3, 14580, 14632), (3, 15309, 15361), (3, 16038, 16090), (3, 16767, 16819), (3, 13122, 13174)]

def row053_layer002_block002 : List ColouredInterval :=
  [(3, 15309, 15361), (3, 17496, 17548), (3, 19683, 19735), (3, 21870, 21922), (3, 13122, 13174), (3, 19683, 19735), (3, 19683, 19735), (5, 11250, 11302), (5, 11875, 11927), (5, 12500, 12552), (5, 13125, 13177), (5, 13750, 13802), (5, 14375, 14427), (5, 12500, 12552), (5, 15625, 15677), (5, 18750, 18802)]

def row053_layer002_block003 : List ColouredInterval :=
  [(5, 21875, 21927), (5, 15625, 15677), (7, 12005, 12057), (7, 14406, 14458), (7, 16807, 16859), (7, 19208, 19260), (7, 21609, 21661), (7, 16807, 16859), (11, 11979, 12031), (11, 13310, 13362), (11, 14641, 14693), (11, 15972, 16024), (11, 17303, 17355), (11, 18634, 18686), (11, 19965, 20017), (11, 21296, 21348)]

def row053_layer002_block004 : List ColouredInterval :=
  [(11, 14641, 14693), (13, 11024, 11037), (13, 13182, 13234), (13, 15379, 15431), (13, 17576, 17628), (13, 19773, 19825), (13, 21970, 22022), (17, 14739, 14791), (17, 19652, 19704), (19, 13718, 13770), (19, 20577, 20629), (23, 11109, 11161), (23, 11638, 11690), (23, 12167, 12219), (23, 12167, 12219), (29, 11774, 11826)]

def row053_layer002_block005 : List ColouredInterval :=
  [(29, 12615, 12667), (29, 13456, 13508), (29, 14297, 14349), (29, 15138, 15190), (29, 15979, 16031), (29, 16820, 16872), (29, 17661, 17713), (29, 18502, 18554), (29, 19343, 19395), (31, 11532, 11584), (31, 12493, 12545), (31, 13454, 13506), (31, 14415, 14467), (31, 15376, 15428), (31, 16337, 16389), (31, 17298, 17350)]

def row053_layer002_block006 : List ColouredInterval :=
  [(31, 18259, 18311), (31, 19220, 19272), (31, 20181, 20233), (31, 21142, 21194), (37, 12321, 12373), (37, 13690, 13742), (37, 15059, 15111), (37, 16428, 16480), (37, 17797, 17849), (37, 19166, 19218), (37, 20535, 20587), (37, 21904, 21956), (41, 11767, 11819), (41, 13448, 13500), (41, 15129, 15181), (41, 16810, 16862)]

def row053_layer002_block007 : List ColouredInterval :=
  [(41, 18491, 18543), (41, 20172, 20224), (41, 21853, 21905), (43, 11094, 11146), (43, 12943, 12995), (43, 14792, 14844), (43, 16641, 16693), (43, 18490, 18542), (43, 20339, 20391), (47, 11045, 11097), (47, 13254, 13306), (47, 15463, 15515), (47, 17672, 17724), (47, 19881, 19933)]

def row053_layer002_chunks : List (List ColouredInterval) :=
  [row053_layer002_block000, row053_layer002_block001, row053_layer002_block002, row053_layer002_block003, row053_layer002_block004, row053_layer002_block005, row053_layer002_block006, row053_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_arithmetic : LayerArithmeticValid row053.height { lower := 11024, upper := 22048, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_enumeration :
    activePowerIntervalList 53 23 11024 22048 = row053_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_pairs000 :
    row053_layer002_block000.all (fun I => row053_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_pairs001 :
    row053_layer002_block001.all (fun I => row053_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_pairs002 :
    row053_layer002_block002.all (fun I => row053_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_pairs003 :
    row053_layer002_block003.all (fun I => row053_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_pairs004 :
    row053_layer002_block004.all (fun I => row053_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_pairs005 :
    row053_layer002_block005.all (fun I => row053_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_pairs006 :
    row053_layer002_block006.all (fun I => row053_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_pairs007 :
    row053_layer002_block007.all (fun I => row053_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_chunks_eq : row053_layer002_chunks.flatten = row053_layer002_intervals := by
  rfl

theorem row053_layer002_pairs : pairCoverCheck row053_layer002_intervals row053_bounds = true := by
  apply pairCoverCheck_of_chunks row053_layer002_chunks_eq
  intro block hblock
  simp only [row053_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row053_layer002_pairs000
  · exact row053_layer002_pairs001
  · exact row053_layer002_pairs002
  · exact row053_layer002_pairs003
  · exact row053_layer002_pairs004
  · exact row053_layer002_pairs005
  · exact row053_layer002_pairs006
  · exact row053_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_checked :
    coverLayerCheck row053.height row053.goods { lower := 11024, upper := 22048, M := 23 } = true := by
  exact coverLayerCheck_of_parts row053_layer002_arithmetic row053_layer002_enumeration row053_bounds_eq row053_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row053_layer003_intervals : List ColouredInterval :=
  [(2, 22528, 22580), (2, 24576, 24628), (2, 26624, 26676), (2, 28672, 28724), (2, 30720, 30772), (2, 32768, 32820), (2, 34816, 34868), (2, 36864, 36916), (2, 38912, 38964), (2, 40960, 41012), (2, 43008, 43060), (2, 24576, 24628), (2, 28672, 28724), (2, 32768, 32820), (2, 36864, 36916), (2, 40960, 41012), (2, 24576, 24628), (2, 32768, 32820), (2, 40960, 41012), (2, 32768, 32820), (2, 32768, 32820), (3, 24057, 24109), (3, 26244, 26296), (3, 28431, 28483), (3, 30618, 30670), (3, 32805, 32857), (3, 34992, 35044), (3, 37179, 37231), (3, 39366, 39418), (3, 41553, 41605), (3, 43740, 43792), (3, 26244, 26296), (3, 32805, 32857), (3, 39366, 39418), (3, 39366, 39418), (5, 25000, 25052), (5, 28125, 28177), (5, 31250, 31302), (5, 34375, 34427), (5, 37500, 37552), (5, 40625, 40677), (5, 43750, 43802), (5, 31250, 31302), (7, 24010, 24062), (7, 26411, 26463), (7, 28812, 28864), (7, 31213, 31265), (7, 33614, 33666), (7, 36015, 36067), (7, 38416, 38468), (7, 40817, 40869), (7, 43218, 43270), (7, 33614, 33666), (11, 22627, 22679), (11, 23958, 24010), (11, 25289, 25341), (11, 26620, 26672), (11, 27951, 28003), (11, 29282, 29334), (11, 43923, 43975), (13, 24167, 24219), (13, 26364, 26416), (13, 28561, 28613), (13, 30758, 30810), (13, 32955, 33007), (13, 35152, 35204), (13, 37349, 37401), (13, 39546, 39598), (13, 41743, 41795), (13, 43940, 43992), (13, 28561, 28613), (17, 24565, 24617), (17, 29478, 29530), (17, 34391, 34443), (17, 39304, 39356), (19, 27436, 27488), (19, 34295, 34347), (19, 41154, 41206), (23, 24334, 24386), (23, 36501, 36553), (29, 24389, 24441), (31, 29791, 29843), (37, 23273, 23325), (37, 24642, 24694), (37, 26011, 26063), (37, 27380, 27432), (37, 28749, 28801), (41, 23534, 23586), (41, 25215, 25267), (41, 26896, 26948), (41, 28577, 28629), (41, 30258, 30310), (41, 31939, 31991), (41, 33620, 33672), (41, 35301, 35353), (43, 22188, 22240), (43, 24037, 24089), (43, 25886, 25938), (43, 27735, 27787), (43, 29584, 29636), (43, 31433, 31485), (43, 33282, 33334), (43, 35131, 35183), (43, 36980, 37032), (43, 38829, 38881), (47, 22090, 22142), (47, 24299, 24351), (47, 26508, 26560), (47, 28717, 28769), (47, 30926, 30978), (47, 33135, 33187), (47, 35344, 35396), (47, 37553, 37605), (47, 39762, 39814), (47, 41971, 42023)]

def row053_layer003_block000 : List ColouredInterval :=
  [(2, 22528, 22580), (2, 24576, 24628), (2, 26624, 26676), (2, 28672, 28724), (2, 30720, 30772), (2, 32768, 32820), (2, 34816, 34868), (2, 36864, 36916), (2, 38912, 38964), (2, 40960, 41012), (2, 43008, 43060), (2, 24576, 24628), (2, 28672, 28724), (2, 32768, 32820), (2, 36864, 36916), (2, 40960, 41012)]

def row053_layer003_block001 : List ColouredInterval :=
  [(2, 24576, 24628), (2, 32768, 32820), (2, 40960, 41012), (2, 32768, 32820), (2, 32768, 32820), (3, 24057, 24109), (3, 26244, 26296), (3, 28431, 28483), (3, 30618, 30670), (3, 32805, 32857), (3, 34992, 35044), (3, 37179, 37231), (3, 39366, 39418), (3, 41553, 41605), (3, 43740, 43792), (3, 26244, 26296)]

def row053_layer003_block002 : List ColouredInterval :=
  [(3, 32805, 32857), (3, 39366, 39418), (3, 39366, 39418), (5, 25000, 25052), (5, 28125, 28177), (5, 31250, 31302), (5, 34375, 34427), (5, 37500, 37552), (5, 40625, 40677), (5, 43750, 43802), (5, 31250, 31302), (7, 24010, 24062), (7, 26411, 26463), (7, 28812, 28864), (7, 31213, 31265), (7, 33614, 33666)]

def row053_layer003_block003 : List ColouredInterval :=
  [(7, 36015, 36067), (7, 38416, 38468), (7, 40817, 40869), (7, 43218, 43270), (7, 33614, 33666), (11, 22627, 22679), (11, 23958, 24010), (11, 25289, 25341), (11, 26620, 26672), (11, 27951, 28003), (11, 29282, 29334), (11, 43923, 43975), (13, 24167, 24219), (13, 26364, 26416), (13, 28561, 28613), (13, 30758, 30810)]

def row053_layer003_block004 : List ColouredInterval :=
  [(13, 32955, 33007), (13, 35152, 35204), (13, 37349, 37401), (13, 39546, 39598), (13, 41743, 41795), (13, 43940, 43992), (13, 28561, 28613), (17, 24565, 24617), (17, 29478, 29530), (17, 34391, 34443), (17, 39304, 39356), (19, 27436, 27488), (19, 34295, 34347), (19, 41154, 41206), (23, 24334, 24386), (23, 36501, 36553)]

def row053_layer003_block005 : List ColouredInterval :=
  [(29, 24389, 24441), (31, 29791, 29843), (37, 23273, 23325), (37, 24642, 24694), (37, 26011, 26063), (37, 27380, 27432), (37, 28749, 28801), (41, 23534, 23586), (41, 25215, 25267), (41, 26896, 26948), (41, 28577, 28629), (41, 30258, 30310), (41, 31939, 31991), (41, 33620, 33672), (41, 35301, 35353), (43, 22188, 22240)]

def row053_layer003_block006 : List ColouredInterval :=
  [(43, 24037, 24089), (43, 25886, 25938), (43, 27735, 27787), (43, 29584, 29636), (43, 31433, 31485), (43, 33282, 33334), (43, 35131, 35183), (43, 36980, 37032), (43, 38829, 38881), (47, 22090, 22142), (47, 24299, 24351), (47, 26508, 26560), (47, 28717, 28769), (47, 30926, 30978), (47, 33135, 33187), (47, 35344, 35396)]

def row053_layer003_block007 : List ColouredInterval :=
  [(47, 37553, 37605), (47, 39762, 39814), (47, 41971, 42023)]

def row053_layer003_chunks : List (List ColouredInterval) :=
  [row053_layer003_block000, row053_layer003_block001, row053_layer003_block002, row053_layer003_block003, row053_layer003_block004, row053_layer003_block005, row053_layer003_block006, row053_layer003_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_arithmetic : LayerArithmeticValid row053.height { lower := 22048, upper := 44096, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_enumeration :
    activePowerIntervalList 53 21 22048 44096 = row053_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_enumeration
