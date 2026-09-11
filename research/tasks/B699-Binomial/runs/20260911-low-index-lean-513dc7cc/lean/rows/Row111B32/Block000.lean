import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row111_height : HeightCertificateDatum := { i := 111, r := 36, s := 77, n0Power10 := 10 }

def row111_goods : List GoodSegment := [
  { lower := 224, upper := 333, witness := RowWitness.topPrime 223 },
  { lower := 334, upper := 441, witness := RowWitness.topPrime 331 },
  { lower := 442, upper := 549, witness := RowWitness.topPrime 439 },
  { lower := 550, upper := 657, witness := RowWitness.topPrime 547 },
  { lower := 658, upper := 763, witness := RowWitness.topPrime 653 },
  { lower := 764, upper := 871, witness := RowWitness.topPrime 761 },
  { lower := 872, upper := 973, witness := RowWitness.topPrime 863 },
  { lower := 974, upper := 1081, witness := RowWitness.topPrime 971 },
  { lower := 1082, upper := 1179, witness := RowWitness.topPrime 1069 },
  { lower := 1180, upper := 1281, witness := RowWitness.topPrime 1171 },
  { lower := 1282, upper := 1389, witness := RowWitness.topPrime 1279 },
  { lower := 1390, upper := 1491, witness := RowWitness.topPrime 1381 },
  { lower := 1492, upper := 1599, witness := RowWitness.topPrime 1489 },
  { lower := 1600, upper := 1707, witness := RowWitness.topPrime 1597 },
  { lower := 1708, upper := 1809, witness := RowWitness.topPrime 1699 },
  { lower := 1810, upper := 1911, witness := RowWitness.topPrime 1801 },
  { lower := 1912, upper := 2017, witness := RowWitness.topPrime 1907 },
  { lower := 2018, upper := 2127, witness := RowWitness.topPrime 2017 },
  { lower := 2128, upper := 2223, witness := RowWitness.topPrime 2113 },
  { lower := 2224, upper := 2331, witness := RowWitness.topPrime 2221 },
  { lower := 2332, upper := 2421, witness := RowWitness.topPrime 2311 },
  { lower := 2422, upper := 2527, witness := RowWitness.topPrime 2417 },
  { lower := 2528, upper := 2631, witness := RowWitness.topPrime 2521 },
  { lower := 2632, upper := 2731, witness := RowWitness.topPrime 2621 },
  { lower := 2732, upper := 2841, witness := RowWitness.topPrime 2731 },
  { lower := 2842, upper := 2947, witness := RowWitness.topPrime 2837 },
  { lower := 2948, upper := 3049, witness := RowWitness.topPrime 2939 },
  { lower := 3050, upper := 3159, witness := RowWitness.topPrime 3049 },
  { lower := 3160, upper := 3247, witness := RowWitness.topPrime 3137 },
  { lower := 3248, upper := 3339, witness := RowWitness.topPrime 3229 },
  { lower := 3340, upper := 3441, witness := RowWitness.topPrime 3331 },
  { lower := 3442, upper := 3543, witness := RowWitness.topPrime 3433 },
  { lower := 3544, upper := 3651, witness := RowWitness.topPrime 3541 },
  { lower := 3652, upper := 3753, witness := RowWitness.topPrime 3643 },
  { lower := 3754, upper := 3849, witness := RowWitness.topPrime 3739 },
  { lower := 3850, upper := 3957, witness := RowWitness.topPrime 3847 },
  { lower := 3958, upper := 4057, witness := RowWitness.topPrime 3947 },
  { lower := 4058, upper := 4167, witness := RowWitness.topPrime 4057 },
  { lower := 4168, upper := 4269, witness := RowWitness.topPrime 4159 },
  { lower := 4270, upper := 4371, witness := RowWitness.topPrime 4261 },
  { lower := 4372, upper := 4473, witness := RowWitness.topPrime 4363 },
  { lower := 4474, upper := 4573, witness := RowWitness.topPrime 4463 },
  { lower := 4574, upper := 4677, witness := RowWitness.topPrime 4567 },
  { lower := 4678, upper := 4783, witness := RowWitness.topPrime 4673 },
  { lower := 4784, upper := 4893, witness := RowWitness.topPrime 4783 },
  { lower := 4894, upper := 4999, witness := RowWitness.topPrime 4889 },
  { lower := 5000, upper := 5109, witness := RowWitness.topPrime 4999 },
  { lower := 5110, upper := 5217, witness := RowWitness.topPrime 5107 },
  { lower := 5218, upper := 5319, witness := RowWitness.topPrime 5209 },
  { lower := 5320, upper := 5419, witness := RowWitness.topPrime 5309 },
  { lower := 5420, upper := 5529, witness := RowWitness.topPrime 5419 },
  { lower := 5530, upper := 5637, witness := RowWitness.topPrime 5527 },
  { lower := 5638, upper := 5733, witness := RowWitness.topPrime 5623 },
  { lower := 5734, upper := 5827, witness := RowWitness.topPrime 5717 },
  { lower := 5828, upper := 5937, witness := RowWitness.topPrime 5827 },
  { lower := 5938, upper := 6037, witness := RowWitness.topPrime 5927 },
  { lower := 6038, upper := 6147, witness := RowWitness.topPrime 6037 },
  { lower := 6148, upper := 6253, witness := RowWitness.topPrime 6143 },
  { lower := 6254, upper := 6357, witness := RowWitness.topPrime 6247 },
  { lower := 6358, upper := 6463, witness := RowWitness.topPrime 6353 },
  { lower := 6464, upper := 6561, witness := RowWitness.topPrime 6451 },
  { lower := 6562, upper := 6663, witness := RowWitness.topPrime 6553 },
  { lower := 6664, upper := 6771, witness := RowWitness.topPrime 6661 },
  { lower := 6772, upper := 6873, witness := RowWitness.topPrime 6763 },
  { lower := 6874, upper := 6981, witness := RowWitness.topPrime 6871 },
  { lower := 6982, upper := 7087, witness := RowWitness.topPrime 6977 },
  { lower := 7088, upper := 7189, witness := RowWitness.topPrime 7079 },
  { lower := 7190, upper := 7297, witness := RowWitness.topPrime 7187 },
  { lower := 7298, upper := 7407, witness := RowWitness.topPrime 7297 },
  { lower := 7408, upper := 7503, witness := RowWitness.topPrime 7393 },
  { lower := 7504, upper := 7609, witness := RowWitness.topPrime 7499 },
  { lower := 7610, upper := 7717, witness := RowWitness.topPrime 7607 },
  { lower := 7718, upper := 7827, witness := RowWitness.topPrime 7717 },
  { lower := 7828, upper := 7933, witness := RowWitness.topPrime 7823 },
  { lower := 7934, upper := 8043, witness := RowWitness.topPrime 7933 },
  { lower := 8044, upper := 8149, witness := RowWitness.topPrime 8039 },
  { lower := 8150, upper := 8257, witness := RowWitness.topPrime 8147 },
  { lower := 8258, upper := 8353, witness := RowWitness.topPrime 8243 },
  { lower := 8354, upper := 8463, witness := RowWitness.topPrime 8353 },
  { lower := 8464, upper := 8571, witness := RowWitness.topPrime 8461 },
  { lower := 8572, upper := 8673, witness := RowWitness.topPrime 8563 },
  { lower := 8674, upper := 8779, witness := RowWitness.topPrime 8669 },
  { lower := 8780, upper := 8889, witness := RowWitness.topPrime 8779 },
  { lower := 8890, upper := 8997, witness := RowWitness.topPrime 8887 },
  { lower := 8998, upper := 9081, witness := RowWitness.topPrime 8971 },
  { lower := 9082, upper := 9177, witness := RowWitness.topPrime 9067 },
  { lower := 9178, upper := 9283, witness := RowWitness.topPrime 9173 },
  { lower := 9284, upper := 9393, witness := RowWitness.topPrime 9283 },
  { lower := 9394, upper := 9501, witness := RowWitness.topPrime 9391 },
  { lower := 9502, upper := 9607, witness := RowWitness.topPrime 9497 },
  { lower := 9608, upper := 9711, witness := RowWitness.topPrime 9601 },
  { lower := 9712, upper := 9807, witness := RowWitness.topPrime 9697 },
  { lower := 9808, upper := 9913, witness := RowWitness.topPrime 9803 },
  { lower := 9914, upper := 10017, witness := RowWitness.topPrime 9907 },
  { lower := 10018, upper := 10119, witness := RowWitness.topPrime 10009 },
  { lower := 10120, upper := 10221, witness := RowWitness.topPrime 10111 },
  { lower := 10222, upper := 10321, witness := RowWitness.topPrime 10211 },
  { lower := 10322, upper := 10431, witness := RowWitness.topPrime 10321 },
  { lower := 10432, upper := 10539, witness := RowWitness.topPrime 10429 },
  { lower := 10540, upper := 10641, witness := RowWitness.topPrime 10531 },
  { lower := 10642, upper := 10749, witness := RowWitness.topPrime 10639 },
  { lower := 10750, upper := 10849, witness := RowWitness.topPrime 10739 },
  { lower := 10850, upper := 10957, witness := RowWitness.topPrime 10847 },
  { lower := 10958, upper := 11067, witness := RowWitness.topPrime 10957 },
  { lower := 11068, upper := 11169, witness := RowWitness.topPrime 11059 },
  { lower := 11170, upper := 11271, witness := RowWitness.topPrime 11161 },
  { lower := 11272, upper := 11371, witness := RowWitness.topPrime 11261 },
  { lower := 11372, upper := 11479, witness := RowWitness.topPrime 11369 },
  { lower := 11480, upper := 11581, witness := RowWitness.topPrime 11471 },
  { lower := 11582, upper := 11689, witness := RowWitness.topPrime 11579 },
  { lower := 11690, upper := 11799, witness := RowWitness.topPrime 11689 },
  { lower := 11800, upper := 11899, witness := RowWitness.topPrime 11789 },
  { lower := 11900, upper := 12007, witness := RowWitness.topPrime 11897 },
  { lower := 12008, upper := 12117, witness := RowWitness.topPrime 12007 },
  { lower := 12118, upper := 12209, witness := RowWitness.topPrime 12113 },
  { lower := 12493, upper := 12601, witness := RowWitness.topPrime 12491 },
  { lower := 12602, upper := 12603, witness := RowWitness.topPrime 12601 },
  { lower := 12696, upper := 12725, witness := RowWitness.topPrime 12689 },
  { lower := 12800, upper := 12806, witness := RowWitness.topPrime 12799 },
  { lower := 13125, upper := 13231, witness := RowWitness.topPrime 13121 },
  { lower := 13232, upper := 13339, witness := RowWitness.topPrime 13229 },
  { lower := 13340, upper := 13420, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13561, witness := RowWitness.topPrime 13451 },
  { lower := 13562, upper := 13566, witness := RowWitness.topPrime 13553 },
  { lower := 13750, upper := 13839, witness := RowWitness.topPrime 13729 },
  { lower := 13840, upper := 13888, witness := RowWitness.topPrime 13831 },
  { lower := 13924, upper := 13934, witness := RowWitness.topPrime 13921 },
  { lower := 14297, upper := 14403, witness := RowWitness.topPrime 14293 },
  { lower := 14404, upper := 14511, witness := RowWitness.topPrime 14401 },
  { lower := 14512, upper := 14516, witness := RowWitness.topPrime 14503 },
  { lower := 14739, upper := 14751, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14893, witness := RowWitness.topPrime 14783 },
  { lower := 14894, upper := 14922, witness := RowWitness.topPrime 14891 },
  { lower := 15129, upper := 15231, witness := RowWitness.topPrime 15121 },
  { lower := 15232, upper := 15239, witness := RowWitness.topPrime 15227 },
  { lower := 15360, upper := 15469, witness := RowWitness.topPrime 15359 },
  { lower := 15470, upper := 15489, witness := RowWitness.topPrime 15467 },
  { lower := 15979, upper := 16083, witness := RowWitness.topPrime 15973 },
  { lower := 16084, upper := 16089, witness := RowWitness.topPrime 16073 },
  { lower := 16337, upper := 16360, witness := RowWitness.topPrime 16333 },
  { lower := 16384, upper := 16447, witness := RowWitness.topPrime 16381 },
  { lower := 16810, upper := 16897, witness := RowWitness.topPrime 16787 },
  { lower := 16898, upper := 16964, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17409, witness := RowWitness.topPrime 17299 },
  { lower := 17410, upper := 17511, witness := RowWitness.topPrime 17401 },
  { lower := 17512, upper := 17610, witness := RowWitness.topPrime 17509 },
  { lower := 17661, upper := 17769, witness := RowWitness.topPrime 17659 },
  { lower := 17770, upper := 17771, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18591, witness := RowWitness.topPrime 18481 },
  { lower := 18592, upper := 18601, witness := RowWitness.topPrime 18587 },
  { lower := 18605, upper := 18612, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18715, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18744, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18859, witness := RowWitness.topPrime 18749 },
  { lower := 18860, upper := 18860, witness := RowWitness.topPrime 18859 },
  { lower := 19220, upper := 19318, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19771, witness := RowWitness.topPrime 19661 },
  { lower := 19772, upper := 19793, witness := RowWitness.topPrime 19763 },
  { lower := 19881, upper := 19883, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 19991, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20271, witness := RowWitness.topPrime 20161 },
  { lower := 20272, upper := 20291, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20449, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20512, witness := RowWitness.topPrime 20479 },
  { lower := 20577, upper := 20590, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20687, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21252, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21393, witness := RowWitness.topPrime 21283 },
  { lower := 21394, upper := 21406, witness := RowWitness.topPrime 21391 },
  { lower := 21609, upper := 21614, witness := RowWitness.topPrime 21601 },
  { lower := 21866, upper := 21973, witness := RowWitness.topPrime 21863 },
  { lower := 21974, upper := 21985, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22203, witness := RowWitness.topPrime 22093 },
  { lower := 22204, upper := 22213, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22579, witness := RowWitness.topPrime 22469 },
  { lower := 22580, upper := 22582, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22638, witness := RowWitness.topPrime 22621 },
  { lower := 22707, upper := 22737, witness := RowWitness.topPrime 22699 },
  { lower := 23548, upper := 23649, witness := RowWitness.topPrime 23539 },
  { lower := 23650, upper := 23658, witness := RowWitness.topPrime 23633 },
  { lower := 23763, upper := 23871, witness := RowWitness.topPrime 23761 },
  { lower := 23872, upper := 23872, witness := RowWitness.topPrime 23869 },
  { lower := 24010, upper := 24117, witness := RowWitness.topPrime 24007 },
  { lower := 24118, upper := 24135, witness := RowWitness.topPrime 24113 },
  { lower := 24334, upper := 24439, witness := RowWitness.topPrime 24329 },
  { lower := 24440, upper := 24477, witness := RowWitness.topPrime 24439 },
  { lower := 24576, upper := 24675, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25074, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25299, witness := RowWitness.topPrime 25189 },
  { lower := 25300, upper := 25371, witness := RowWitness.topPrime 25261 },
  { lower := 25372, upper := 25391, witness := RowWitness.topPrime 25367 },
  { lower := 26411, upper := 26474, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26521, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26707, witness := RowWitness.topPrime 26597 },
  { lower := 26708, upper := 26734, witness := RowWitness.topPrime 26701 },
  { lower := 26934, upper := 27006, witness := RowWitness.topPrime 26927 },
  { lower := 27951, upper := 27958, witness := RowWitness.topPrime 27947 },
  { lower := 28125, upper := 28200, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28235, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28683, witness := RowWitness.topPrime 28573 },
  { lower := 28684, upper := 28687, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28782, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28827, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29588, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29878, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30356, witness := RowWitness.topPrime 30253 },
  { lower := 30613, upper := 30703, witness := RowWitness.topPrime 30593 },
  { lower := 30704, upper := 30713, witness := RowWitness.topPrime 30703 },
  { lower := 30720, upper := 30723, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30830, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31009, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31303, witness := RowWitness.topPrime 31193 },
  { lower := 31304, upper := 31323, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31360, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31507, witness := RowWitness.topPrime 31397 },
  { lower := 31508, upper := 31533, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32049, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32878, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33729, witness := RowWitness.topPrime 33619 },
  { lower := 33730, upper := 33730, witness := RowWitness.topPrime 33721 },
  { lower := 34347, upper := 34447, witness := RowWitness.topPrime 34337 },
  { lower := 34448, upper := 34501, witness := RowWitness.topPrime 34439 },
  { lower := 34816, upper := 34917, witness := RowWitness.topPrime 34807 },
  { lower := 34918, upper := 34920, witness := RowWitness.topPrime 34913 },
  { lower := 35152, upper := 35241, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35401, witness := RowWitness.topPrime 35291 },
  { lower := 35402, upper := 35411, witness := RowWitness.topPrime 35401 },
  { lower := 36015, upper := 36022, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36607, witness := RowWitness.topPrime 36497 },
  { lower := 36608, upper := 36611, witness := RowWitness.topPrime 36607 },
  { lower := 36982, upper := 37089, witness := RowWitness.topPrime 36979 },
  { lower := 37090, upper := 37090, witness := RowWitness.topPrime 37087 },
  { lower := 37303, upper := 37320, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37413, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37459, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37603, witness := RowWitness.topPrime 37493 },
  { lower := 37604, upper := 37610, witness := RowWitness.topPrime 37591 },
  { lower := 37636, upper := 37663, witness := RowWitness.topPrime 37633 },
  { lower := 38912, upper := 38939, witness := RowWitness.topPrime 38903 },
  { lower := 39326, upper := 39433, witness := RowWitness.topPrime 39323 },
  { lower := 39434, upper := 39436, witness := RowWitness.topPrime 39419 },
  { lower := 39605, upper := 39656, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40438, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40735, witness := RowWitness.topPrime 40639 },
  { lower := 40817, upper := 40914, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41041, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41853, witness := RowWitness.topPrime 41771 },
  { lower := 42527, upper := 42546, witness := RowWitness.topPrime 42509 },
  { lower := 42632, upper := 42637, witness := RowWitness.topPrime 42611 },
  { lower := 43750, upper := 43797, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 44033, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44290, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 45000, witness := RowWitness.topPrime 44939 },
  { lower := 47104, upper := 47155, witness := RowWitness.topPrime 47093 },
  { lower := 47526, upper := 47631, witness := RowWitness.topPrime 47521 },
  { lower := 47632, upper := 47634, witness := RowWitness.topPrime 47629 },
  { lower := 48013, upper := 48091, witness := RowWitness.topPrime 47981 },
  { lower := 48092, upper := 48123, witness := RowWitness.topPrime 48091 },
  { lower := 48373, upper := 48444, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48708, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48843, witness := RowWitness.topPrime 48733 },
  { lower := 48844, upper := 48844, witness := RowWitness.topPrime 48823 },
  { lower := 49152, upper := 49240, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50038, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50520, witness := RowWitness.topPrime 50417 },
  { lower := 53125, upper := 53155, witness := RowWitness.topPrime 53117 },
  { lower := 53290, upper := 53358, witness := RowWitness.topPrime 53281 },
  { lower := 53371, upper := 53400, witness := RowWitness.topPrime 53359 },
  { lower := 55451, upper := 55551, witness := RowWitness.topPrime 55441 },
  { lower := 55552, upper := 55557, witness := RowWitness.topPrime 55547 },
  { lower := 56250, upper := 56279, witness := RowWitness.topPrime 56249 },
  { lower := 57344, upper := 57355, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58674, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59066, witness := RowWitness.topPrime 59029 },
  { lower := 59405, upper := 59485, witness := RowWitness.topPrime 59399 },
  { lower := 59582, upper := 59646, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62520, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63979, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65631, witness := RowWitness.topPrime 65521 },
  { lower := 65632, upper := 65643, witness := RowWitness.topPrime 65629 },
  { lower := 67335, upper := 67338, witness := RowWitness.topPrime 67307 },
  { lower := 68651, upper := 68749, witness := RowWitness.topPrime 68639 },
  { lower := 68750, upper := 68761, witness := RowWitness.topPrime 68749 },
  { lower := 68782, upper := 68804, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68892, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69000, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71396, witness := RowWitness.topPrime 71287 },
  { lower := 73205, upper := 73277, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73805, witness := RowWitness.topPrime 73727 },
  { lower := 85264, upper := 85279, witness := RowWitness.topPrime 85259 },
  { lower := 85291, upper := 85369, witness := RowWitness.topPrime 85259 },
  { lower := 85370, upper := 85374, witness := RowWitness.topPrime 85369 },
  { lower := 85697, upper := 85793, witness := RowWitness.topPrime 85691 },
  { lower := 95052, upper := 95137, witness := RowWitness.topPrime 95027 },
  { lower := 95138, upper := 95158, witness := RowWitness.topPrime 95131 },
  { lower := 96026, upper := 96032, witness := RowWitness.topPrime 96017 },
  { lower := 102973, upper := 102995, witness := RowWitness.topPrime 102967 },
  { lower := 103041, upper := 103083, witness := RowWitness.topPrime 103007 },
  { lower := 118815, upper := 118911, witness := RowWitness.topPrime 118801 },
  { lower := 118912, upper := 118920, witness := RowWitness.topPrime 118907 },
  { lower := 122412, upper := 122427, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131836, witness := RowWitness.topPrime 131759 },
  { lower := 137917, upper := 137952, witness := RowWitness.topPrime 137911 },
  { lower := 142814, upper := 142915, witness := RowWitness.topPrime 142811 },
  { lower := 146410, upper := 146444, witness := RowWitness.topPrime 146407 },
  { lower := 148877, upper := 148947, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148987, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327790, witness := RowWitness.topPrime 327689 }
]

def row111_layers : List CoverLayer := [
  { lower := 12210, upper := 24420, M := 28 },
  { lower := 24420, upper := 48840, M := 23 },
  { lower := 48840, upper := 97680, M := 19 },
  { lower := 97680, upper := 195360, M := 16 },
  { lower := 195360, upper := 390720, M := 13 },
  { lower := 390720, upper := 781440, M := 11 },
  { lower := 781440, upper := 1562880, M := 9 },
  { lower := 1562880, upper := 3125760, M := 8 },
  { lower := 3125760, upper := 6251520, M := 7 },
  { lower := 6251520, upper := 12503040, M := 6 },
  { lower := 12503040, upper := 25006080, M := 5 },
  { lower := 25006080, upper := 50012160, M := 4 },
  { lower := 50012160, upper := 100024320, M := 3 },
  { lower := 100024320, upper := 200048640, M := 3 },
  { lower := 200048640, upper := 400097280, M := 2 },
  { lower := 400097280, upper := 800194560, M := 2 },
  { lower := 800194560, upper := 1600389120, M := 2 },
  { lower := 1600389120, upper := 3200778240, M := 2 },
  { lower := 3200778240, upper := 6401556480, M := 1 },
  { lower := 6401556480, upper := 10000000000, M := 1 }
]

def row111 : FiniteCoverRow := {
  height := row111_height,
  goods := row111_goods,
  layers := row111_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good000_checked :
    goodSegmentCheck 111 36 77
      { lower := 224, upper := 333, witness := RowWitness.topPrime 223 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good001_checked :
    goodSegmentCheck 111 36 77
      { lower := 334, upper := 441, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good002_checked :
    goodSegmentCheck 111 36 77
      { lower := 442, upper := 549, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good003_checked :
    goodSegmentCheck 111 36 77
      { lower := 550, upper := 657, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good004_checked :
    goodSegmentCheck 111 36 77
      { lower := 658, upper := 763, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good005_checked :
    goodSegmentCheck 111 36 77
      { lower := 764, upper := 871, witness := RowWitness.topPrime 761 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good006_checked :
    goodSegmentCheck 111 36 77
      { lower := 872, upper := 973, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good007_checked :
    goodSegmentCheck 111 36 77
      { lower := 974, upper := 1081, witness := RowWitness.topPrime 971 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good008_checked :
    goodSegmentCheck 111 36 77
      { lower := 1082, upper := 1179, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good009_checked :
    goodSegmentCheck 111 36 77
      { lower := 1180, upper := 1281, witness := RowWitness.topPrime 1171 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good010_checked :
    goodSegmentCheck 111 36 77
      { lower := 1282, upper := 1389, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good011_checked :
    goodSegmentCheck 111 36 77
      { lower := 1390, upper := 1491, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good012_checked :
    goodSegmentCheck 111 36 77
      { lower := 1492, upper := 1599, witness := RowWitness.topPrime 1489 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good013_checked :
    goodSegmentCheck 111 36 77
      { lower := 1600, upper := 1707, witness := RowWitness.topPrime 1597 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good014_checked :
    goodSegmentCheck 111 36 77
      { lower := 1708, upper := 1809, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good015_checked :
    goodSegmentCheck 111 36 77
      { lower := 1810, upper := 1911, witness := RowWitness.topPrime 1801 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good016_checked :
    goodSegmentCheck 111 36 77
      { lower := 1912, upper := 2017, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good017_checked :
    goodSegmentCheck 111 36 77
      { lower := 2018, upper := 2127, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good018_checked :
    goodSegmentCheck 111 36 77
      { lower := 2128, upper := 2223, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good019_checked :
    goodSegmentCheck 111 36 77
      { lower := 2224, upper := 2331, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good020_checked :
    goodSegmentCheck 111 36 77
      { lower := 2332, upper := 2421, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good021_checked :
    goodSegmentCheck 111 36 77
      { lower := 2422, upper := 2527, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good022_checked :
    goodSegmentCheck 111 36 77
      { lower := 2528, upper := 2631, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good023_checked :
    goodSegmentCheck 111 36 77
      { lower := 2632, upper := 2731, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good024_checked :
    goodSegmentCheck 111 36 77
      { lower := 2732, upper := 2841, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good025_checked :
    goodSegmentCheck 111 36 77
      { lower := 2842, upper := 2947, witness := RowWitness.topPrime 2837 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good026_checked :
    goodSegmentCheck 111 36 77
      { lower := 2948, upper := 3049, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good027_checked :
    goodSegmentCheck 111 36 77
      { lower := 3050, upper := 3159, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good028_checked :
    goodSegmentCheck 111 36 77
      { lower := 3160, upper := 3247, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good029_checked :
    goodSegmentCheck 111 36 77
      { lower := 3248, upper := 3339, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good030_checked :
    goodSegmentCheck 111 36 77
      { lower := 3340, upper := 3441, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good031_checked :
    goodSegmentCheck 111 36 77
      { lower := 3442, upper := 3543, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good032_checked :
    goodSegmentCheck 111 36 77
      { lower := 3544, upper := 3651, witness := RowWitness.topPrime 3541 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good033_checked :
    goodSegmentCheck 111 36 77
      { lower := 3652, upper := 3753, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good034_checked :
    goodSegmentCheck 111 36 77
      { lower := 3754, upper := 3849, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good035_checked :
    goodSegmentCheck 111 36 77
      { lower := 3850, upper := 3957, witness := RowWitness.topPrime 3847 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good036_checked :
    goodSegmentCheck 111 36 77
      { lower := 3958, upper := 4057, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good037_checked :
    goodSegmentCheck 111 36 77
      { lower := 4058, upper := 4167, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good038_checked :
    goodSegmentCheck 111 36 77
      { lower := 4168, upper := 4269, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good039_checked :
    goodSegmentCheck 111 36 77
      { lower := 4270, upper := 4371, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good040_checked :
    goodSegmentCheck 111 36 77
      { lower := 4372, upper := 4473, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good041_checked :
    goodSegmentCheck 111 36 77
      { lower := 4474, upper := 4573, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good042_checked :
    goodSegmentCheck 111 36 77
      { lower := 4574, upper := 4677, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good043_checked :
    goodSegmentCheck 111 36 77
      { lower := 4678, upper := 4783, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good044_checked :
    goodSegmentCheck 111 36 77
      { lower := 4784, upper := 4893, witness := RowWitness.topPrime 4783 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good045_checked :
    goodSegmentCheck 111 36 77
      { lower := 4894, upper := 4999, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good046_checked :
    goodSegmentCheck 111 36 77
      { lower := 5000, upper := 5109, witness := RowWitness.topPrime 4999 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good047_checked :
    goodSegmentCheck 111 36 77
      { lower := 5110, upper := 5217, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good048_checked :
    goodSegmentCheck 111 36 77
      { lower := 5218, upper := 5319, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good049_checked :
    goodSegmentCheck 111 36 77
      { lower := 5320, upper := 5419, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good050_checked :
    goodSegmentCheck 111 36 77
      { lower := 5420, upper := 5529, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good051_checked :
    goodSegmentCheck 111 36 77
      { lower := 5530, upper := 5637, witness := RowWitness.topPrime 5527 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good052_checked :
    goodSegmentCheck 111 36 77
      { lower := 5638, upper := 5733, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good053_checked :
    goodSegmentCheck 111 36 77
      { lower := 5734, upper := 5827, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good054_checked :
    goodSegmentCheck 111 36 77
      { lower := 5828, upper := 5937, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good055_checked :
    goodSegmentCheck 111 36 77
      { lower := 5938, upper := 6037, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good056_checked :
    goodSegmentCheck 111 36 77
      { lower := 6038, upper := 6147, witness := RowWitness.topPrime 6037 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good057_checked :
    goodSegmentCheck 111 36 77
      { lower := 6148, upper := 6253, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good058_checked :
    goodSegmentCheck 111 36 77
      { lower := 6254, upper := 6357, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good059_checked :
    goodSegmentCheck 111 36 77
      { lower := 6358, upper := 6463, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good060_checked :
    goodSegmentCheck 111 36 77
      { lower := 6464, upper := 6561, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good061_checked :
    goodSegmentCheck 111 36 77
      { lower := 6562, upper := 6663, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good062_checked :
    goodSegmentCheck 111 36 77
      { lower := 6664, upper := 6771, witness := RowWitness.topPrime 6661 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good063_checked :
    goodSegmentCheck 111 36 77
      { lower := 6772, upper := 6873, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good064_checked :
    goodSegmentCheck 111 36 77
      { lower := 6874, upper := 6981, witness := RowWitness.topPrime 6871 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good065_checked :
    goodSegmentCheck 111 36 77
      { lower := 6982, upper := 7087, witness := RowWitness.topPrime 6977 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good066_checked :
    goodSegmentCheck 111 36 77
      { lower := 7088, upper := 7189, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good067_checked :
    goodSegmentCheck 111 36 77
      { lower := 7190, upper := 7297, witness := RowWitness.topPrime 7187 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good068_checked :
    goodSegmentCheck 111 36 77
      { lower := 7298, upper := 7407, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good069_checked :
    goodSegmentCheck 111 36 77
      { lower := 7408, upper := 7503, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good070_checked :
    goodSegmentCheck 111 36 77
      { lower := 7504, upper := 7609, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good071_checked :
    goodSegmentCheck 111 36 77
      { lower := 7610, upper := 7717, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good072_checked :
    goodSegmentCheck 111 36 77
      { lower := 7718, upper := 7827, witness := RowWitness.topPrime 7717 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good073_checked :
    goodSegmentCheck 111 36 77
      { lower := 7828, upper := 7933, witness := RowWitness.topPrime 7823 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good074_checked :
    goodSegmentCheck 111 36 77
      { lower := 7934, upper := 8043, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good075_checked :
    goodSegmentCheck 111 36 77
      { lower := 8044, upper := 8149, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good076_checked :
    goodSegmentCheck 111 36 77
      { lower := 8150, upper := 8257, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good077_checked :
    goodSegmentCheck 111 36 77
      { lower := 8258, upper := 8353, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good078_checked :
    goodSegmentCheck 111 36 77
      { lower := 8354, upper := 8463, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good079_checked :
    goodSegmentCheck 111 36 77
      { lower := 8464, upper := 8571, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good080_checked :
    goodSegmentCheck 111 36 77
      { lower := 8572, upper := 8673, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good081_checked :
    goodSegmentCheck 111 36 77
      { lower := 8674, upper := 8779, witness := RowWitness.topPrime 8669 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good082_checked :
    goodSegmentCheck 111 36 77
      { lower := 8780, upper := 8889, witness := RowWitness.topPrime 8779 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good083_checked :
    goodSegmentCheck 111 36 77
      { lower := 8890, upper := 8997, witness := RowWitness.topPrime 8887 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good084_checked :
    goodSegmentCheck 111 36 77
      { lower := 8998, upper := 9081, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good085_checked :
    goodSegmentCheck 111 36 77
      { lower := 9082, upper := 9177, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good086_checked :
    goodSegmentCheck 111 36 77
      { lower := 9178, upper := 9283, witness := RowWitness.topPrime 9173 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good087_checked :
    goodSegmentCheck 111 36 77
      { lower := 9284, upper := 9393, witness := RowWitness.topPrime 9283 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good088_checked :
    goodSegmentCheck 111 36 77
      { lower := 9394, upper := 9501, witness := RowWitness.topPrime 9391 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good089_checked :
    goodSegmentCheck 111 36 77
      { lower := 9502, upper := 9607, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good090_checked :
    goodSegmentCheck 111 36 77
      { lower := 9608, upper := 9711, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good091_checked :
    goodSegmentCheck 111 36 77
      { lower := 9712, upper := 9807, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good092_checked :
    goodSegmentCheck 111 36 77
      { lower := 9808, upper := 9913, witness := RowWitness.topPrime 9803 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good093_checked :
    goodSegmentCheck 111 36 77
      { lower := 9914, upper := 10017, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good094_checked :
    goodSegmentCheck 111 36 77
      { lower := 10018, upper := 10119, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good095_checked :
    goodSegmentCheck 111 36 77
      { lower := 10120, upper := 10221, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good096_checked :
    goodSegmentCheck 111 36 77
      { lower := 10222, upper := 10321, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good097_checked :
    goodSegmentCheck 111 36 77
      { lower := 10322, upper := 10431, witness := RowWitness.topPrime 10321 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good098_checked :
    goodSegmentCheck 111 36 77
      { lower := 10432, upper := 10539, witness := RowWitness.topPrime 10429 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good099_checked :
    goodSegmentCheck 111 36 77
      { lower := 10540, upper := 10641, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good100_checked :
    goodSegmentCheck 111 36 77
      { lower := 10642, upper := 10749, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good101_checked :
    goodSegmentCheck 111 36 77
      { lower := 10750, upper := 10849, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good102_checked :
    goodSegmentCheck 111 36 77
      { lower := 10850, upper := 10957, witness := RowWitness.topPrime 10847 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good103_checked :
    goodSegmentCheck 111 36 77
      { lower := 10958, upper := 11067, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good104_checked :
    goodSegmentCheck 111 36 77
      { lower := 11068, upper := 11169, witness := RowWitness.topPrime 11059 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good105_checked :
    goodSegmentCheck 111 36 77
      { lower := 11170, upper := 11271, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good106_checked :
    goodSegmentCheck 111 36 77
      { lower := 11272, upper := 11371, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good107_checked :
    goodSegmentCheck 111 36 77
      { lower := 11372, upper := 11479, witness := RowWitness.topPrime 11369 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good108_checked :
    goodSegmentCheck 111 36 77
      { lower := 11480, upper := 11581, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good109_checked :
    goodSegmentCheck 111 36 77
      { lower := 11582, upper := 11689, witness := RowWitness.topPrime 11579 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good110_checked :
    goodSegmentCheck 111 36 77
      { lower := 11690, upper := 11799, witness := RowWitness.topPrime 11689 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good111_checked :
    goodSegmentCheck 111 36 77
      { lower := 11800, upper := 11899, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good112_checked :
    goodSegmentCheck 111 36 77
      { lower := 11900, upper := 12007, witness := RowWitness.topPrime 11897 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good113_checked :
    goodSegmentCheck 111 36 77
      { lower := 12008, upper := 12117, witness := RowWitness.topPrime 12007 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good114_checked :
    goodSegmentCheck 111 36 77
      { lower := 12118, upper := 12209, witness := RowWitness.topPrime 12113 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good115_checked :
    goodSegmentCheck 111 36 77
      { lower := 12493, upper := 12601, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good116_checked :
    goodSegmentCheck 111 36 77
      { lower := 12602, upper := 12603, witness := RowWitness.topPrime 12601 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good117_checked :
    goodSegmentCheck 111 36 77
      { lower := 12696, upper := 12725, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good118_checked :
    goodSegmentCheck 111 36 77
      { lower := 12800, upper := 12806, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good119_checked :
    goodSegmentCheck 111 36 77
      { lower := 13125, upper := 13231, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good120_checked :
    goodSegmentCheck 111 36 77
      { lower := 13232, upper := 13339, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good121_checked :
    goodSegmentCheck 111 36 77
      { lower := 13340, upper := 13420, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good122_checked :
    goodSegmentCheck 111 36 77
      { lower := 13454, upper := 13561, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good123_checked :
    goodSegmentCheck 111 36 77
      { lower := 13562, upper := 13566, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good124_checked :
    goodSegmentCheck 111 36 77
      { lower := 13750, upper := 13839, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good125_checked :
    goodSegmentCheck 111 36 77
      { lower := 13840, upper := 13888, witness := RowWitness.topPrime 13831 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good126_checked :
    goodSegmentCheck 111 36 77
      { lower := 13924, upper := 13934, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good127_checked :
    goodSegmentCheck 111 36 77
      { lower := 14297, upper := 14403, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good128_checked :
    goodSegmentCheck 111 36 77
      { lower := 14404, upper := 14511, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good129_checked :
    goodSegmentCheck 111 36 77
      { lower := 14512, upper := 14516, witness := RowWitness.topPrime 14503 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good130_checked :
    goodSegmentCheck 111 36 77
      { lower := 14739, upper := 14751, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good131_checked :
    goodSegmentCheck 111 36 77
      { lower := 14792, upper := 14893, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good132_checked :
    goodSegmentCheck 111 36 77
      { lower := 14894, upper := 14922, witness := RowWitness.topPrime 14891 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good133_checked :
    goodSegmentCheck 111 36 77
      { lower := 15129, upper := 15231, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good134_checked :
    goodSegmentCheck 111 36 77
      { lower := 15232, upper := 15239, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good135_checked :
    goodSegmentCheck 111 36 77
      { lower := 15360, upper := 15469, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good136_checked :
    goodSegmentCheck 111 36 77
      { lower := 15470, upper := 15489, witness := RowWitness.topPrime 15467 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good137_checked :
    goodSegmentCheck 111 36 77
      { lower := 15979, upper := 16083, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good138_checked :
    goodSegmentCheck 111 36 77
      { lower := 16084, upper := 16089, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good139_checked :
    goodSegmentCheck 111 36 77
      { lower := 16337, upper := 16360, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good140_checked :
    goodSegmentCheck 111 36 77
      { lower := 16384, upper := 16447, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good141_checked :
    goodSegmentCheck 111 36 77
      { lower := 16810, upper := 16897, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good142_checked :
    goodSegmentCheck 111 36 77
      { lower := 16898, upper := 16964, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good143_checked :
    goodSegmentCheck 111 36 77
      { lower := 17303, upper := 17409, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good144_checked :
    goodSegmentCheck 111 36 77
      { lower := 17410, upper := 17511, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good145_checked :
    goodSegmentCheck 111 36 77
      { lower := 17512, upper := 17610, witness := RowWitness.topPrime 17509 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good146_checked :
    goodSegmentCheck 111 36 77
      { lower := 17661, upper := 17769, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good147_checked :
    goodSegmentCheck 111 36 77
      { lower := 17770, upper := 17771, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good148_checked :
    goodSegmentCheck 111 36 77
      { lower := 18490, upper := 18591, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good149_checked :
    goodSegmentCheck 111 36 77
      { lower := 18592, upper := 18601, witness := RowWitness.topPrime 18587 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good150_checked :
    goodSegmentCheck 111 36 77
      { lower := 18605, upper := 18612, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good151_checked :
    goodSegmentCheck 111 36 77
      { lower := 18634, upper := 18715, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good152_checked :
    goodSegmentCheck 111 36 77
      { lower := 18723, upper := 18744, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good153_checked :
    goodSegmentCheck 111 36 77
      { lower := 18750, upper := 18859, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good154_checked :
    goodSegmentCheck 111 36 77
      { lower := 18860, upper := 18860, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good155_checked :
    goodSegmentCheck 111 36 77
      { lower := 19220, upper := 19318, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good156_checked :
    goodSegmentCheck 111 36 77
      { lower := 19663, upper := 19771, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good157_checked :
    goodSegmentCheck 111 36 77
      { lower := 19772, upper := 19793, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good158_checked :
    goodSegmentCheck 111 36 77
      { lower := 19881, upper := 19883, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good159_checked :
    goodSegmentCheck 111 36 77
      { lower := 19965, upper := 19991, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good160_checked :
    goodSegmentCheck 111 36 77
      { lower := 20172, upper := 20271, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good161_checked :
    goodSegmentCheck 111 36 77
      { lower := 20272, upper := 20291, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good162_checked :
    goodSegmentCheck 111 36 77
      { lower := 20402, upper := 20449, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good163_checked :
    goodSegmentCheck 111 36 77
      { lower := 20480, upper := 20512, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good164_checked :
    goodSegmentCheck 111 36 77
      { lower := 20577, upper := 20590, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good165_checked :
    goodSegmentCheck 111 36 77
      { lower := 20667, upper := 20687, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good166_checked :
    goodSegmentCheck 111 36 77
      { lower := 21218, upper := 21252, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good167_checked :
    goodSegmentCheck 111 36 77
      { lower := 21296, upper := 21393, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good168_checked :
    goodSegmentCheck 111 36 77
      { lower := 21394, upper := 21406, witness := RowWitness.topPrime 21391 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good169_checked :
    goodSegmentCheck 111 36 77
      { lower := 21609, upper := 21614, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good170_checked :
    goodSegmentCheck 111 36 77
      { lower := 21866, upper := 21973, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good171_checked :
    goodSegmentCheck 111 36 77
      { lower := 21974, upper := 21985, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good172_checked :
    goodSegmentCheck 111 36 77
      { lower := 22103, upper := 22203, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good173_checked :
    goodSegmentCheck 111 36 77
      { lower := 22204, upper := 22213, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good174_checked :
    goodSegmentCheck 111 36 77
      { lower := 22472, upper := 22579, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good175_checked :
    goodSegmentCheck 111 36 77
      { lower := 22580, upper := 22582, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good176_checked :
    goodSegmentCheck 111 36 77
      { lower := 22627, upper := 22638, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good177_checked :
    goodSegmentCheck 111 36 77
      { lower := 22707, upper := 22737, witness := RowWitness.topPrime 22699 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good178_checked :
    goodSegmentCheck 111 36 77
      { lower := 23548, upper := 23649, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good179_checked :
    goodSegmentCheck 111 36 77
      { lower := 23650, upper := 23658, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good180_checked :
    goodSegmentCheck 111 36 77
      { lower := 23763, upper := 23871, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good181_checked :
    goodSegmentCheck 111 36 77
      { lower := 23872, upper := 23872, witness := RowWitness.topPrime 23869 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good182_checked :
    goodSegmentCheck 111 36 77
      { lower := 24010, upper := 24117, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good183_checked :
    goodSegmentCheck 111 36 77
      { lower := 24118, upper := 24135, witness := RowWitness.topPrime 24113 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good184_checked :
    goodSegmentCheck 111 36 77
      { lower := 24334, upper := 24439, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good185_checked :
    goodSegmentCheck 111 36 77
      { lower := 24440, upper := 24477, witness := RowWitness.topPrime 24439 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good186_checked :
    goodSegmentCheck 111 36 77
      { lower := 24576, upper := 24675, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good187_checked :
    goodSegmentCheck 111 36 77
      { lower := 25000, upper := 25074, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good188_checked :
    goodSegmentCheck 111 36 77
      { lower := 25215, upper := 25299, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good189_checked :
    goodSegmentCheck 111 36 77
      { lower := 25300, upper := 25371, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good190_checked :
    goodSegmentCheck 111 36 77
      { lower := 25372, upper := 25391, witness := RowWitness.topPrime 25367 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good191_checked :
    goodSegmentCheck 111 36 77
      { lower := 26411, upper := 26474, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good192_checked :
    goodSegmentCheck 111 36 77
      { lower := 26508, upper := 26521, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good193_checked :
    goodSegmentCheck 111 36 77
      { lower := 26624, upper := 26707, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good194_checked :
    goodSegmentCheck 111 36 77
      { lower := 26708, upper := 26734, witness := RowWitness.topPrime 26701 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good195_checked :
    goodSegmentCheck 111 36 77
      { lower := 26934, upper := 27006, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good196_checked :
    goodSegmentCheck 111 36 77
      { lower := 27951, upper := 27958, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good197_checked :
    goodSegmentCheck 111 36 77
      { lower := 28125, upper := 28200, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good198_checked :
    goodSegmentCheck 111 36 77
      { lower := 28227, upper := 28235, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good199_checked :
    goodSegmentCheck 111 36 77
      { lower := 28577, upper := 28683, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good200_checked :
    goodSegmentCheck 111 36 77
      { lower := 28684, upper := 28687, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good201_checked :
    goodSegmentCheck 111 36 77
      { lower := 28717, upper := 28782, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good202_checked :
    goodSegmentCheck 111 36 77
      { lower := 28812, upper := 28827, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good203_checked :
    goodSegmentCheck 111 36 77
      { lower := 29584, upper := 29588, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good204_checked :
    goodSegmentCheck 111 36 77
      { lower := 29791, upper := 29878, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good205_checked :
    goodSegmentCheck 111 36 77
      { lower := 30258, upper := 30356, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good206_checked :
    goodSegmentCheck 111 36 77
      { lower := 30613, upper := 30703, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good207_checked :
    goodSegmentCheck 111 36 77
      { lower := 30704, upper := 30713, witness := RowWitness.topPrime 30703 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good208_checked :
    goodSegmentCheck 111 36 77
      { lower := 30720, upper := 30723, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good209_checked :
    goodSegmentCheck 111 36 77
      { lower := 30758, upper := 30830, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good210_checked :
    goodSegmentCheck 111 36 77
      { lower := 30926, upper := 31009, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good211_checked :
    goodSegmentCheck 111 36 77
      { lower := 31213, upper := 31303, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good212_checked :
    goodSegmentCheck 111 36 77
      { lower := 31304, upper := 31323, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good213_checked :
    goodSegmentCheck 111 36 77
      { lower := 31329, upper := 31360, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good214_checked :
    goodSegmentCheck 111 36 77
      { lower := 31423, upper := 31507, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good215_checked :
    goodSegmentCheck 111 36 77
      { lower := 31508, upper := 31533, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good216_checked :
    goodSegmentCheck 111 36 77
      { lower := 31974, upper := 32049, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good217_checked :
    goodSegmentCheck 111 36 77
      { lower := 32805, upper := 32878, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good218_checked :
    goodSegmentCheck 111 36 77
      { lower := 33620, upper := 33729, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good219_checked :
    goodSegmentCheck 111 36 77
      { lower := 33730, upper := 33730, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good220_checked :
    goodSegmentCheck 111 36 77
      { lower := 34347, upper := 34447, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good221_checked :
    goodSegmentCheck 111 36 77
      { lower := 34448, upper := 34501, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good222_checked :
    goodSegmentCheck 111 36 77
      { lower := 34816, upper := 34917, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good223_checked :
    goodSegmentCheck 111 36 77
      { lower := 34918, upper := 34920, witness := RowWitness.topPrime 34913 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good224_checked :
    goodSegmentCheck 111 36 77
      { lower := 35152, upper := 35241, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good225_checked :
    goodSegmentCheck 111 36 77
      { lower := 35301, upper := 35401, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good226_checked :
    goodSegmentCheck 111 36 77
      { lower := 35402, upper := 35411, witness := RowWitness.topPrime 35401 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good227_checked :
    goodSegmentCheck 111 36 77
      { lower := 36015, upper := 36022, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good228_checked :
    goodSegmentCheck 111 36 77
      { lower := 36517, upper := 36607, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good229_checked :
    goodSegmentCheck 111 36 77
      { lower := 36608, upper := 36611, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good230_checked :
    goodSegmentCheck 111 36 77
      { lower := 36982, upper := 37089, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good231_checked :
    goodSegmentCheck 111 36 77
      { lower := 37090, upper := 37090, witness := RowWitness.topPrime 37087 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good232_checked :
    goodSegmentCheck 111 36 77
      { lower := 37303, upper := 37320, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good233_checked :
    goodSegmentCheck 111 36 77
      { lower := 37349, upper := 37413, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good234_checked :
    goodSegmentCheck 111 36 77
      { lower := 37446, upper := 37459, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good235_checked :
    goodSegmentCheck 111 36 77
      { lower := 37500, upper := 37603, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good236_checked :
    goodSegmentCheck 111 36 77
      { lower := 37604, upper := 37610, witness := RowWitness.topPrime 37591 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good237_checked :
    goodSegmentCheck 111 36 77
      { lower := 37636, upper := 37663, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good238_checked :
    goodSegmentCheck 111 36 77
      { lower := 38912, upper := 38939, witness := RowWitness.topPrime 38903 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good239_checked :
    goodSegmentCheck 111 36 77
      { lower := 39326, upper := 39433, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good240_checked :
    goodSegmentCheck 111 36 77
      { lower := 39434, upper := 39436, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good241_checked :
    goodSegmentCheck 111 36 77
      { lower := 39605, upper := 39656, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good242_checked :
    goodSegmentCheck 111 36 77
      { lower := 40401, upper := 40438, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good243_checked :
    goodSegmentCheck 111 36 77
      { lower := 40678, upper := 40735, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good244_checked :
    goodSegmentCheck 111 36 77
      { lower := 40817, upper := 40914, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good245_checked :
    goodSegmentCheck 111 36 77
      { lower := 40960, upper := 41041, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good246_checked :
    goodSegmentCheck 111 36 77
      { lower := 41772, upper := 41853, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good247_checked :
    goodSegmentCheck 111 36 77
      { lower := 42527, upper := 42546, witness := RowWitness.topPrime 42509 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good248_checked :
    goodSegmentCheck 111 36 77
      { lower := 42632, upper := 42637, witness := RowWitness.topPrime 42611 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good249_checked :
    goodSegmentCheck 111 36 77
      { lower := 43750, upper := 43797, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good250_checked :
    goodSegmentCheck 111 36 77
      { lower := 43940, upper := 44033, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good251_checked :
    goodSegmentCheck 111 36 77
      { lower := 44217, upper := 44290, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good252_checked :
    goodSegmentCheck 111 36 77
      { lower := 44944, upper := 45000, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good253_checked :
    goodSegmentCheck 111 36 77
      { lower := 47104, upper := 47155, witness := RowWitness.topPrime 47093 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good254_checked :
    goodSegmentCheck 111 36 77
      { lower := 47526, upper := 47631, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good255_checked :
    goodSegmentCheck 111 36 77
      { lower := 47632, upper := 47634, witness := RowWitness.topPrime 47629 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good256_checked :
    goodSegmentCheck 111 36 77
      { lower := 48013, upper := 48091, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good257_checked :
    goodSegmentCheck 111 36 77
      { lower := 48092, upper := 48123, witness := RowWitness.topPrime 48091 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good258_checked :
    goodSegmentCheck 111 36 77
      { lower := 48373, upper := 48444, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good259_checked :
    goodSegmentCheck 111 36 77
      { lower := 48668, upper := 48708, witness := RowWitness.topPrime 48661 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good260_checked :
    goodSegmentCheck 111 36 77
      { lower := 48734, upper := 48843, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good261_checked :
    goodSegmentCheck 111 36 77
      { lower := 48844, upper := 48844, witness := RowWitness.topPrime 48823 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good262_checked :
    goodSegmentCheck 111 36 77
      { lower := 49152, upper := 49240, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good263_checked :
    goodSegmentCheck 111 36 77
      { lower := 50000, upper := 50038, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good264_checked :
    goodSegmentCheck 111 36 77
      { lower := 50421, upper := 50520, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good265_checked :
    goodSegmentCheck 111 36 77
      { lower := 53125, upper := 53155, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good266_checked :
    goodSegmentCheck 111 36 77
      { lower := 53290, upper := 53358, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good267_checked :
    goodSegmentCheck 111 36 77
      { lower := 53371, upper := 53400, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good268_checked :
    goodSegmentCheck 111 36 77
      { lower := 55451, upper := 55551, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good269_checked :
    goodSegmentCheck 111 36 77
      { lower := 55552, upper := 55557, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good270_checked :
    goodSegmentCheck 111 36 77
      { lower := 56250, upper := 56279, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good271_checked :
    goodSegmentCheck 111 36 77
      { lower := 57344, upper := 57355, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good272_checked :
    goodSegmentCheck 111 36 77
      { lower := 58619, upper := 58674, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good273_checked :
    goodSegmentCheck 111 36 77
      { lower := 59049, upper := 59066, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good274_checked :
    goodSegmentCheck 111 36 77
      { lower := 59405, upper := 59485, witness := RowWitness.topPrime 59399 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good275_checked :
    goodSegmentCheck 111 36 77
      { lower := 59582, upper := 59646, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good276_checked :
    goodSegmentCheck 111 36 77
      { lower := 62500, upper := 62520, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good277_checked :
    goodSegmentCheck 111 36 77
      { lower := 63948, upper := 63979, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good278_checked :
    goodSegmentCheck 111 36 77
      { lower := 65536, upper := 65631, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good279_checked :
    goodSegmentCheck 111 36 77
      { lower := 65632, upper := 65643, witness := RowWitness.topPrime 65629 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good280_checked :
    goodSegmentCheck 111 36 77
      { lower := 67335, upper := 67338, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good281_checked :
    goodSegmentCheck 111 36 77
      { lower := 68651, upper := 68749, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good282_checked :
    goodSegmentCheck 111 36 77
      { lower := 68750, upper := 68761, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good283_checked :
    goodSegmentCheck 111 36 77
      { lower := 68782, upper := 68804, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good284_checked :
    goodSegmentCheck 111 36 77
      { lower := 68890, upper := 68892, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good285_checked :
    goodSegmentCheck 111 36 77
      { lower := 68921, upper := 69000, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good286_checked :
    goodSegmentCheck 111 36 77
      { lower := 71289, upper := 71396, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good287_checked :
    goodSegmentCheck 111 36 77
      { lower := 73205, upper := 73277, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good288_checked :
    goodSegmentCheck 111 36 77
      { lower := 73728, upper := 73805, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good289_checked :
    goodSegmentCheck 111 36 77
      { lower := 85264, upper := 85279, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good290_checked :
    goodSegmentCheck 111 36 77
      { lower := 85291, upper := 85369, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good291_checked :
    goodSegmentCheck 111 36 77
      { lower := 85370, upper := 85374, witness := RowWitness.topPrime 85369 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good292_checked :
    goodSegmentCheck 111 36 77
      { lower := 85697, upper := 85793, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good293_checked :
    goodSegmentCheck 111 36 77
      { lower := 95052, upper := 95137, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good294_checked :
    goodSegmentCheck 111 36 77
      { lower := 95138, upper := 95158, witness := RowWitness.topPrime 95131 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good295_checked :
    goodSegmentCheck 111 36 77
      { lower := 96026, upper := 96032, witness := RowWitness.topPrime 96017 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good296_checked :
    goodSegmentCheck 111 36 77
      { lower := 102973, upper := 102995, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good297_checked :
    goodSegmentCheck 111 36 77
      { lower := 103041, upper := 103083, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good298_checked :
    goodSegmentCheck 111 36 77
      { lower := 118815, upper := 118911, witness := RowWitness.topPrime 118801 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good299_checked :
    goodSegmentCheck 111 36 77
      { lower := 118912, upper := 118920, witness := RowWitness.topPrime 118907 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good300_checked :
    goodSegmentCheck 111 36 77
      { lower := 122412, upper := 122427, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good301_checked :
    goodSegmentCheck 111 36 77
      { lower := 131769, upper := 131836, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good302_checked :
    goodSegmentCheck 111 36 77
      { lower := 137917, upper := 137952, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good303_checked :
    goodSegmentCheck 111 36 77
      { lower := 142814, upper := 142915, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good293_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good294_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good295_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good296_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good297_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good298_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good299_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good300_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good301_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good302_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good303_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good304_checked :
    goodSegmentCheck 111 36 77
      { lower := 146410, upper := 146444, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good305_checked :
    goodSegmentCheck 111 36 77
      { lower := 148877, upper := 148947, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good306_checked :
    goodSegmentCheck 111 36 77
      { lower := 148955, upper := 148987, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good307_checked :
    goodSegmentCheck 111 36 77
      { lower := 327701, upper := 327790, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good307_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_goods_checked :
    row111.goods.all (goodSegmentCheck row111.height.i row111.height.r row111.height.s) = true := by
  change row111_goods.all (goodSegmentCheck 111 36 77) = true
  simp only [row111_goods, List.all_cons, List.all_nil,
    row111_good000_checked,
    row111_good001_checked,
    row111_good002_checked,
    row111_good003_checked,
    row111_good004_checked,
    row111_good005_checked,
    row111_good006_checked,
    row111_good007_checked,
    row111_good008_checked,
    row111_good009_checked,
    row111_good010_checked,
    row111_good011_checked,
    row111_good012_checked,
    row111_good013_checked,
    row111_good014_checked,
    row111_good015_checked,
    row111_good016_checked,
    row111_good017_checked,
    row111_good018_checked,
    row111_good019_checked,
    row111_good020_checked,
    row111_good021_checked,
    row111_good022_checked,
    row111_good023_checked,
    row111_good024_checked,
    row111_good025_checked,
    row111_good026_checked,
    row111_good027_checked,
    row111_good028_checked,
    row111_good029_checked,
    row111_good030_checked,
    row111_good031_checked,
    row111_good032_checked,
    row111_good033_checked,
    row111_good034_checked,
    row111_good035_checked,
    row111_good036_checked,
    row111_good037_checked,
    row111_good038_checked,
    row111_good039_checked,
    row111_good040_checked,
    row111_good041_checked,
    row111_good042_checked,
    row111_good043_checked,
    row111_good044_checked,
    row111_good045_checked,
    row111_good046_checked,
    row111_good047_checked,
    row111_good048_checked,
    row111_good049_checked,
    row111_good050_checked,
    row111_good051_checked,
    row111_good052_checked,
    row111_good053_checked,
    row111_good054_checked,
    row111_good055_checked,
    row111_good056_checked,
    row111_good057_checked,
    row111_good058_checked,
    row111_good059_checked,
    row111_good060_checked,
    row111_good061_checked,
    row111_good062_checked,
    row111_good063_checked,
    row111_good064_checked,
    row111_good065_checked,
    row111_good066_checked,
    row111_good067_checked,
    row111_good068_checked,
    row111_good069_checked,
    row111_good070_checked,
    row111_good071_checked,
    row111_good072_checked,
    row111_good073_checked,
    row111_good074_checked,
    row111_good075_checked,
    row111_good076_checked,
    row111_good077_checked,
    row111_good078_checked,
    row111_good079_checked,
    row111_good080_checked,
    row111_good081_checked,
    row111_good082_checked,
    row111_good083_checked,
    row111_good084_checked,
    row111_good085_checked,
    row111_good086_checked,
    row111_good087_checked,
    row111_good088_checked,
    row111_good089_checked,
    row111_good090_checked,
    row111_good091_checked,
    row111_good092_checked,
    row111_good093_checked,
    row111_good094_checked,
    row111_good095_checked,
    row111_good096_checked,
    row111_good097_checked,
    row111_good098_checked,
    row111_good099_checked,
    row111_good100_checked,
    row111_good101_checked,
    row111_good102_checked,
    row111_good103_checked,
    row111_good104_checked,
    row111_good105_checked,
    row111_good106_checked,
    row111_good107_checked,
    row111_good108_checked,
    row111_good109_checked,
    row111_good110_checked,
    row111_good111_checked,
    row111_good112_checked,
    row111_good113_checked,
    row111_good114_checked,
    row111_good115_checked,
    row111_good116_checked,
    row111_good117_checked,
    row111_good118_checked,
    row111_good119_checked,
    row111_good120_checked,
    row111_good121_checked,
    row111_good122_checked,
    row111_good123_checked,
    row111_good124_checked,
    row111_good125_checked,
    row111_good126_checked,
    row111_good127_checked,
    row111_good128_checked,
    row111_good129_checked,
    row111_good130_checked,
    row111_good131_checked,
    row111_good132_checked,
    row111_good133_checked,
    row111_good134_checked,
    row111_good135_checked,
    row111_good136_checked,
    row111_good137_checked,
    row111_good138_checked,
    row111_good139_checked,
    row111_good140_checked,
    row111_good141_checked,
    row111_good142_checked,
    row111_good143_checked,
    row111_good144_checked,
    row111_good145_checked,
    row111_good146_checked,
    row111_good147_checked,
    row111_good148_checked,
    row111_good149_checked,
    row111_good150_checked,
    row111_good151_checked,
    row111_good152_checked,
    row111_good153_checked,
    row111_good154_checked,
    row111_good155_checked,
    row111_good156_checked,
    row111_good157_checked,
    row111_good158_checked,
    row111_good159_checked,
    row111_good160_checked,
    row111_good161_checked,
    row111_good162_checked,
    row111_good163_checked,
    row111_good164_checked,
    row111_good165_checked,
    row111_good166_checked,
    row111_good167_checked,
    row111_good168_checked,
    row111_good169_checked,
    row111_good170_checked,
    row111_good171_checked,
    row111_good172_checked,
    row111_good173_checked,
    row111_good174_checked,
    row111_good175_checked,
    row111_good176_checked,
    row111_good177_checked,
    row111_good178_checked,
    row111_good179_checked,
    row111_good180_checked,
    row111_good181_checked,
    row111_good182_checked,
    row111_good183_checked,
    row111_good184_checked,
    row111_good185_checked,
    row111_good186_checked,
    row111_good187_checked,
    row111_good188_checked,
    row111_good189_checked,
    row111_good190_checked,
    row111_good191_checked,
    row111_good192_checked,
    row111_good193_checked,
    row111_good194_checked,
    row111_good195_checked,
    row111_good196_checked,
    row111_good197_checked,
    row111_good198_checked,
    row111_good199_checked,
    row111_good200_checked,
    row111_good201_checked,
    row111_good202_checked,
    row111_good203_checked,
    row111_good204_checked,
    row111_good205_checked,
    row111_good206_checked,
    row111_good207_checked,
    row111_good208_checked,
    row111_good209_checked,
    row111_good210_checked,
    row111_good211_checked,
    row111_good212_checked,
    row111_good213_checked,
    row111_good214_checked,
    row111_good215_checked,
    row111_good216_checked,
    row111_good217_checked,
    row111_good218_checked,
    row111_good219_checked,
    row111_good220_checked,
    row111_good221_checked,
    row111_good222_checked,
    row111_good223_checked,
    row111_good224_checked,
    row111_good225_checked,
    row111_good226_checked,
    row111_good227_checked,
    row111_good228_checked,
    row111_good229_checked,
    row111_good230_checked,
    row111_good231_checked,
    row111_good232_checked,
    row111_good233_checked,
    row111_good234_checked,
    row111_good235_checked,
    row111_good236_checked,
    row111_good237_checked,
    row111_good238_checked,
    row111_good239_checked,
    row111_good240_checked,
    row111_good241_checked,
    row111_good242_checked,
    row111_good243_checked,
    row111_good244_checked,
    row111_good245_checked,
    row111_good246_checked,
    row111_good247_checked,
    row111_good248_checked,
    row111_good249_checked,
    row111_good250_checked,
    row111_good251_checked,
    row111_good252_checked,
    row111_good253_checked,
    row111_good254_checked,
    row111_good255_checked,
    row111_good256_checked,
    row111_good257_checked,
    row111_good258_checked,
    row111_good259_checked,
    row111_good260_checked,
    row111_good261_checked,
    row111_good262_checked,
    row111_good263_checked,
    row111_good264_checked,
    row111_good265_checked,
    row111_good266_checked,
    row111_good267_checked,
    row111_good268_checked,
    row111_good269_checked,
    row111_good270_checked,
    row111_good271_checked,
    row111_good272_checked,
    row111_good273_checked,
    row111_good274_checked,
    row111_good275_checked,
    row111_good276_checked,
    row111_good277_checked,
    row111_good278_checked,
    row111_good279_checked,
    row111_good280_checked,
    row111_good281_checked,
    row111_good282_checked,
    row111_good283_checked,
    row111_good284_checked,
    row111_good285_checked,
    row111_good286_checked,
    row111_good287_checked,
    row111_good288_checked,
    row111_good289_checked,
    row111_good290_checked,
    row111_good291_checked,
    row111_good292_checked,
    row111_good293_checked,
    row111_good294_checked,
    row111_good295_checked,
    row111_good296_checked,
    row111_good297_checked,
    row111_good298_checked,
    row111_good299_checked,
    row111_good300_checked,
    row111_good301_checked,
    row111_good302_checked,
    row111_good303_checked,
    row111_good304_checked,
    row111_good305_checked,
    row111_good306_checked,
    row111_good307_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_registered :
    decide (row111.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row111_small_checked :
    coverCheck (2 * row111.height.i + 2) (row111.height.i * (row111.height.i - 1) - 1)
      (row111.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row111_layerCover_checked :
    coverCheck (row111.height.i * (row111.height.i - 1)) (row111.height.n0 - 1)
      (row111.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row111_bounds : List NatInterval :=
  [(224, 333), (334, 441), (442, 549), (550, 657), (658, 763), (764, 871), (872, 973), (974, 1081), (1082, 1179), (1180, 1281), (1282, 1389), (1390, 1491), (1492, 1599), (1600, 1707), (1708, 1809), (1810, 1911), (1912, 2017), (2018, 2127), (2128, 2223), (2224, 2331), (2332, 2421), (2422, 2527), (2528, 2631), (2632, 2731), (2732, 2841), (2842, 2947), (2948, 3049), (3050, 3159), (3160, 3247), (3248, 3339), (3340, 3441), (3442, 3543), (3544, 3651), (3652, 3753), (3754, 3849), (3850, 3957), (3958, 4057), (4058, 4167), (4168, 4269), (4270, 4371), (4372, 4473), (4474, 4573), (4574, 4677), (4678, 4783), (4784, 4893), (4894, 4999), (5000, 5109), (5110, 5217), (5218, 5319), (5320, 5419), (5420, 5529), (5530, 5637), (5638, 5733), (5734, 5827), (5828, 5937), (5938, 6037), (6038, 6147), (6148, 6253), (6254, 6357), (6358, 6463), (6464, 6561), (6562, 6663), (6664, 6771), (6772, 6873), (6874, 6981), (6982, 7087), (7088, 7189), (7190, 7297), (7298, 7407), (7408, 7503), (7504, 7609), (7610, 7717), (7718, 7827), (7828, 7933), (7934, 8043), (8044, 8149), (8150, 8257), (8258, 8353), (8354, 8463), (8464, 8571), (8572, 8673), (8674, 8779), (8780, 8889), (8890, 8997), (8998, 9081), (9082, 9177), (9178, 9283), (9284, 9393), (9394, 9501), (9502, 9607), (9608, 9711), (9712, 9807), (9808, 9913), (9914, 10017), (10018, 10119), (10120, 10221), (10222, 10321), (10322, 10431), (10432, 10539), (10540, 10641), (10642, 10749), (10750, 10849), (10850, 10957), (10958, 11067), (11068, 11169), (11170, 11271), (11272, 11371), (11372, 11479), (11480, 11581), (11582, 11689), (11690, 11799), (11800, 11899), (11900, 12007), (12008, 12117), (12118, 12209), (12493, 12601), (12602, 12603), (12696, 12725), (12800, 12806), (13125, 13231), (13232, 13339), (13340, 13420), (13454, 13561), (13562, 13566), (13750, 13839), (13840, 13888), (13924, 13934), (14297, 14403), (14404, 14511), (14512, 14516), (14739, 14751), (14792, 14893), (14894, 14922), (15129, 15231), (15232, 15239), (15360, 15469), (15470, 15489), (15979, 16083), (16084, 16089), (16337, 16360), (16384, 16447), (16810, 16897), (16898, 16964), (17303, 17409), (17410, 17511), (17512, 17610), (17661, 17769), (17770, 17771), (18490, 18591), (18592, 18601), (18605, 18612), (18634, 18715), (18723, 18744), (18750, 18859), (18860, 18860), (19220, 19318), (19663, 19771), (19772, 19793), (19881, 19883), (19965, 19991), (20172, 20271), (20272, 20291), (20402, 20449), (20480, 20512), (20577, 20590), (20667, 20687), (21218, 21252), (21296, 21393), (21394, 21406), (21609, 21614), (21866, 21973), (21974, 21985), (22103, 22203), (22204, 22213), (22472, 22579), (22580, 22582), (22627, 22638), (22707, 22737), (23548, 23649), (23650, 23658), (23763, 23871), (23872, 23872), (24010, 24117), (24118, 24135), (24334, 24439), (24440, 24477), (24576, 24675), (25000, 25074), (25215, 25299), (25300, 25371), (25372, 25391), (26411, 26474), (26508, 26521), (26624, 26707), (26708, 26734), (26934, 27006), (27951, 27958), (28125, 28200), (28227, 28235), (28577, 28683), (28684, 28687), (28717, 28782), (28812, 28827), (29584, 29588), (29791, 29878), (30258, 30356), (30613, 30703), (30704, 30713), (30720, 30723), (30758, 30830), (30926, 31009), (31213, 31303), (31304, 31323), (31329, 31360), (31423, 31507), (31508, 31533), (31974, 32049), (32805, 32878), (33620, 33729), (33730, 33730), (34347, 34447), (34448, 34501), (34816, 34917), (34918, 34920), (35152, 35241), (35301, 35401), (35402, 35411), (36015, 36022), (36517, 36607), (36608, 36611), (36982, 37089), (37090, 37090), (37303, 37320), (37349, 37413), (37446, 37459), (37500, 37603), (37604, 37610), (37636, 37663), (38912, 38939), (39326, 39433), (39434, 39436), (39605, 39656), (40401, 40438), (40678, 40735), (40817, 40914), (40960, 41041), (41772, 41853), (42527, 42546), (42632, 42637), (43750, 43797), (43940, 44033), (44217, 44290), (44944, 45000), (47104, 47155), (47526, 47631), (47632, 47634), (48013, 48091), (48092, 48123), (48373, 48444), (48668, 48708), (48734, 48843), (48844, 48844), (49152, 49240), (50000, 50038), (50421, 50520), (53125, 53155), (53290, 53358), (53371, 53400), (55451, 55551), (55552, 55557), (56250, 56279), (57344, 57355), (58619, 58674), (59049, 59066), (59405, 59485), (59582, 59646), (62500, 62520), (63948, 63979), (65536, 65631), (65632, 65643), (67335, 67338), (68651, 68749), (68750, 68761), (68782, 68804), (68890, 68892), (68921, 69000), (71289, 71396), (73205, 73277), (73728, 73805), (85264, 85279), (85291, 85369), (85370, 85374), (85697, 85793), (95052, 95137), (95138, 95158), (96026, 96032), (102973, 102995), (103041, 103083), (118815, 118911), (118912, 118920), (122412, 122427), (131769, 131836), (137917, 137952), (142814, 142915), (146410, 146444), (148877, 148947), (148955, 148987), (327701, 327790)]

theorem row111_bounds_eq : row111.goods.map goodSegmentBounds = row111_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row111_layer000_intervals : List ColouredInterval :=
  [(2, 12288, 12398), (2, 12800, 12910), (2, 13312, 13422), (2, 13824, 13934), (2, 14336, 14446), (2, 12288, 12398), (2, 13312, 13422), (2, 14336, 14446), (2, 15360, 15470), (2, 16384, 16494), (2, 17408, 17518), (2, 18432, 18542), (2, 19456, 19566), (2, 20480, 20590), (2, 21504, 21614), (2, 22528, 22638), (2, 23552, 23662), (2, 12288, 12398), (2, 14336, 14446), (2, 16384, 16494), (2, 18432, 18542), (2, 20480, 20590), (2, 22528, 22638), (2, 12288, 12398), (2, 16384, 16494), (2, 20480, 20590), (2, 16384, 16494), (2, 16384, 16494), (3, 13122, 13232), (3, 15309, 15419), (3, 17496, 17606), (3, 19683, 19793), (3, 13122, 13232), (3, 19683, 19793), (3, 19683, 19793), (5, 12500, 12610), (5, 13125, 13235), (5, 13750, 13860), (5, 14375, 14485), (5, 15000, 15110), (5, 15625, 15735), (5, 16250, 16360), (5, 16875, 16985), (5, 17500, 17610), (5, 12500, 12610), (5, 15625, 15735), (5, 18750, 18860), (5, 21875, 21985), (5, 15625, 15735), (7, 14406, 14516), (7, 16807, 16917), (7, 19208, 19318), (7, 21609, 21719), (7, 24010, 24120), (7, 16807, 16917), (11, 13310, 13420), (11, 14641, 14751), (11, 15972, 16082), (11, 17303, 17413), (11, 18634, 18744), (11, 19965, 20075), (11, 21296, 21406), (11, 22627, 22737), (11, 23958, 24068), (11, 14641, 14751), (13, 13182, 13292), (13, 15379, 15489), (13, 17576, 17686), (13, 19773, 19883), (13, 21970, 22080), (13, 24167, 24277), (17, 14739, 14849), (17, 19652, 19762), (19, 13718, 13828), (19, 20577, 20687), (23, 12210, 12277), (23, 12696, 12806), (23, 13225, 13335), (23, 13754, 13864), (23, 14283, 14393), (23, 14812, 14922), (23, 12210, 12277), (23, 24334, 24419), (29, 12615, 12725), (29, 13456, 13566), (29, 14297, 14407), (29, 15138, 15248), (29, 15979, 16089), (29, 16820, 16930), (29, 17661, 17771), (29, 18502, 18612), (29, 19343, 19453), (29, 20184, 20294), (29, 21025, 21135), (29, 21866, 21976), (29, 22707, 22817), (29, 23548, 23658), (29, 24389, 24419), (31, 12493, 12603), (31, 13454, 13564), (31, 14415, 14525), (31, 15376, 15486), (31, 16337, 16447), (31, 17298, 17408), (31, 18259, 18369), (31, 19220, 19330), (31, 20181, 20291), (31, 21142, 21252), (31, 22103, 22213), (31, 23064, 23174), (31, 24025, 24135), (41, 13448, 13558), (41, 15129, 15239), (41, 16810, 16920), (41, 18491, 18601), (41, 20172, 20282), (41, 21853, 21963), (41, 23534, 23644), (43, 12943, 13053), (43, 14792, 14902), (43, 16641, 16751), (43, 18490, 18600), (43, 20339, 20449), (43, 22188, 22298), (43, 24037, 24147), (47, 13254, 13364), (47, 15463, 15573), (47, 17672, 17782), (47, 19881, 19991), (47, 22090, 22200), (47, 24299, 24409), (53, 14045, 14155), (53, 16854, 16964), (53, 19663, 19773), (53, 22472, 22582), (59, 13924, 14034), (59, 17405, 17515), (59, 20886, 20996), (59, 24367, 24419), (61, 14884, 14994), (61, 18605, 18715), (61, 22326, 22436), (67, 13467, 13577), (67, 17956, 18066), (67, 22445, 22555), (71, 15123, 15233), (71, 20164, 20274), (73, 15987, 16097), (73, 21316, 21426), (79, 12482, 12592), (79, 18723, 18833), (83, 13778, 13888), (83, 20667, 20777), (89, 15842, 15952), (89, 23763, 23873), (97, 18818, 18928), (101, 20402, 20512), (103, 21218, 21328), (107, 22898, 23008), (109, 23762, 23872)]

def row111_layer000_block000 : List ColouredInterval :=
  [(2, 12288, 12398), (2, 12800, 12910), (2, 13312, 13422), (2, 13824, 13934), (2, 14336, 14446), (2, 12288, 12398), (2, 13312, 13422), (2, 14336, 14446), (2, 15360, 15470), (2, 16384, 16494), (2, 17408, 17518), (2, 18432, 18542)]

def row111_layer000_block001 : List ColouredInterval :=
  [(2, 19456, 19566), (2, 20480, 20590), (2, 21504, 21614), (2, 22528, 22638), (2, 23552, 23662), (2, 12288, 12398), (2, 14336, 14446), (2, 16384, 16494), (2, 18432, 18542), (2, 20480, 20590), (2, 22528, 22638), (2, 12288, 12398)]

def row111_layer000_block002 : List ColouredInterval :=
  [(2, 16384, 16494), (2, 20480, 20590), (2, 16384, 16494), (2, 16384, 16494), (3, 13122, 13232), (3, 15309, 15419), (3, 17496, 17606), (3, 19683, 19793), (3, 13122, 13232), (3, 19683, 19793), (3, 19683, 19793), (5, 12500, 12610)]

def row111_layer000_block003 : List ColouredInterval :=
  [(5, 13125, 13235), (5, 13750, 13860), (5, 14375, 14485), (5, 15000, 15110), (5, 15625, 15735), (5, 16250, 16360), (5, 16875, 16985), (5, 17500, 17610), (5, 12500, 12610), (5, 15625, 15735), (5, 18750, 18860), (5, 21875, 21985)]

def row111_layer000_block004 : List ColouredInterval :=
  [(5, 15625, 15735), (7, 14406, 14516), (7, 16807, 16917), (7, 19208, 19318), (7, 21609, 21719), (7, 24010, 24120), (7, 16807, 16917), (11, 13310, 13420), (11, 14641, 14751), (11, 15972, 16082), (11, 17303, 17413), (11, 18634, 18744)]

def row111_layer000_block005 : List ColouredInterval :=
  [(11, 19965, 20075), (11, 21296, 21406), (11, 22627, 22737), (11, 23958, 24068), (11, 14641, 14751), (13, 13182, 13292), (13, 15379, 15489), (13, 17576, 17686), (13, 19773, 19883), (13, 21970, 22080), (13, 24167, 24277), (17, 14739, 14849)]

def row111_layer000_block006 : List ColouredInterval :=
  [(17, 19652, 19762), (19, 13718, 13828), (19, 20577, 20687), (23, 12210, 12277), (23, 12696, 12806), (23, 13225, 13335), (23, 13754, 13864), (23, 14283, 14393), (23, 14812, 14922), (23, 12210, 12277), (23, 24334, 24419), (29, 12615, 12725)]

def row111_layer000_block007 : List ColouredInterval :=
  [(29, 13456, 13566), (29, 14297, 14407), (29, 15138, 15248), (29, 15979, 16089), (29, 16820, 16930), (29, 17661, 17771), (29, 18502, 18612), (29, 19343, 19453), (29, 20184, 20294), (29, 21025, 21135), (29, 21866, 21976), (29, 22707, 22817)]

def row111_layer000_block008 : List ColouredInterval :=
  [(29, 23548, 23658), (29, 24389, 24419), (31, 12493, 12603), (31, 13454, 13564), (31, 14415, 14525), (31, 15376, 15486), (31, 16337, 16447), (31, 17298, 17408), (31, 18259, 18369), (31, 19220, 19330), (31, 20181, 20291), (31, 21142, 21252)]

def row111_layer000_block009 : List ColouredInterval :=
  [(31, 22103, 22213), (31, 23064, 23174), (31, 24025, 24135), (41, 13448, 13558), (41, 15129, 15239), (41, 16810, 16920), (41, 18491, 18601), (41, 20172, 20282), (41, 21853, 21963), (41, 23534, 23644), (43, 12943, 13053), (43, 14792, 14902)]

def row111_layer000_block010 : List ColouredInterval :=
  [(43, 16641, 16751), (43, 18490, 18600), (43, 20339, 20449), (43, 22188, 22298), (43, 24037, 24147), (47, 13254, 13364), (47, 15463, 15573), (47, 17672, 17782), (47, 19881, 19991), (47, 22090, 22200), (47, 24299, 24409), (53, 14045, 14155)]

def row111_layer000_block011 : List ColouredInterval :=
  [(53, 16854, 16964), (53, 19663, 19773), (53, 22472, 22582), (59, 13924, 14034), (59, 17405, 17515), (59, 20886, 20996), (59, 24367, 24419), (61, 14884, 14994), (61, 18605, 18715), (61, 22326, 22436), (67, 13467, 13577), (67, 17956, 18066)]

def row111_layer000_block012 : List ColouredInterval :=
  [(67, 22445, 22555), (71, 15123, 15233), (71, 20164, 20274), (73, 15987, 16097), (73, 21316, 21426), (79, 12482, 12592), (79, 18723, 18833), (83, 13778, 13888), (83, 20667, 20777), (89, 15842, 15952), (89, 23763, 23873), (97, 18818, 18928)]

def row111_layer000_block013 : List ColouredInterval :=
  [(101, 20402, 20512), (103, 21218, 21328), (107, 22898, 23008), (109, 23762, 23872)]

def row111_layer000_chunks : List (List ColouredInterval) :=
  [row111_layer000_block000, row111_layer000_block001, row111_layer000_block002, row111_layer000_block003, row111_layer000_block004, row111_layer000_block005, row111_layer000_block006, row111_layer000_block007, row111_layer000_block008, row111_layer000_block009, row111_layer000_block010, row111_layer000_block011, row111_layer000_block012, row111_layer000_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_arithmetic : LayerArithmeticValid row111.height { lower := 12210, upper := 24420, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_enumeration :
    activePowerIntervalList 111 28 12210 24420 = row111_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs000 :
    row111_layer000_block000.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs001 :
    row111_layer000_block001.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs002 :
    row111_layer000_block002.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs003 :
    row111_layer000_block003.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs004 :
    row111_layer000_block004.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs004
