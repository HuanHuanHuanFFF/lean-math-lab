import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row110_height : HeightCertificateDatum := { i := 110, r := 36, s := 76, n0Power10 := 10 }

def row110_goods : List GoodSegment := [
  { lower := 222, upper := 320, witness := RowWitness.topPrime 211 },
  { lower := 321, upper := 426, witness := RowWitness.topPrime 317 },
  { lower := 427, upper := 530, witness := RowWitness.topPrime 421 },
  { lower := 531, upper := 632, witness := RowWitness.topPrime 523 },
  { lower := 633, upper := 740, witness := RowWitness.topPrime 631 },
  { lower := 741, upper := 848, witness := RowWitness.topPrime 739 },
  { lower := 849, upper := 948, witness := RowWitness.topPrime 839 },
  { lower := 949, upper := 1056, witness := RowWitness.topPrime 947 },
  { lower := 1057, upper := 1160, witness := RowWitness.topPrime 1051 },
  { lower := 1161, upper := 1262, witness := RowWitness.topPrime 1153 },
  { lower := 1263, upper := 1368, witness := RowWitness.topPrime 1259 },
  { lower := 1369, upper := 1476, witness := RowWitness.topPrime 1367 },
  { lower := 1477, upper := 1580, witness := RowWitness.topPrime 1471 },
  { lower := 1581, upper := 1688, witness := RowWitness.topPrime 1579 },
  { lower := 1689, upper := 1778, witness := RowWitness.topPrime 1669 },
  { lower := 1779, upper := 1886, witness := RowWitness.topPrime 1777 },
  { lower := 1887, upper := 1988, witness := RowWitness.topPrime 1879 },
  { lower := 1989, upper := 2096, witness := RowWitness.topPrime 1987 },
  { lower := 2097, upper := 2198, witness := RowWitness.topPrime 2089 },
  { lower := 2199, upper := 2288, witness := RowWitness.topPrime 2179 },
  { lower := 2289, upper := 2396, witness := RowWitness.topPrime 2287 },
  { lower := 2397, upper := 2502, witness := RowWitness.topPrime 2393 },
  { lower := 2503, upper := 2612, witness := RowWitness.topPrime 2503 },
  { lower := 2613, upper := 2718, witness := RowWitness.topPrime 2609 },
  { lower := 2719, upper := 2828, witness := RowWitness.topPrime 2719 },
  { lower := 2829, upper := 2928, witness := RowWitness.topPrime 2819 },
  { lower := 2929, upper := 3036, witness := RowWitness.topPrime 2927 },
  { lower := 3037, upper := 3146, witness := RowWitness.topPrime 3037 },
  { lower := 3147, upper := 3246, witness := RowWitness.topPrime 3137 },
  { lower := 3247, upper := 3338, witness := RowWitness.topPrime 3229 },
  { lower := 3339, upper := 3440, witness := RowWitness.topPrime 3331 },
  { lower := 3441, upper := 3542, witness := RowWitness.topPrime 3433 },
  { lower := 3543, upper := 3650, witness := RowWitness.topPrime 3541 },
  { lower := 3651, upper := 3752, witness := RowWitness.topPrime 3643 },
  { lower := 3753, upper := 3848, witness := RowWitness.topPrime 3739 },
  { lower := 3849, upper := 3956, witness := RowWitness.topPrime 3847 },
  { lower := 3957, upper := 4056, witness := RowWitness.topPrime 3947 },
  { lower := 4057, upper := 4166, witness := RowWitness.topPrime 4057 },
  { lower := 4167, upper := 4268, witness := RowWitness.topPrime 4159 },
  { lower := 4269, upper := 4370, witness := RowWitness.topPrime 4261 },
  { lower := 4371, upper := 4472, witness := RowWitness.topPrime 4363 },
  { lower := 4473, upper := 4572, witness := RowWitness.topPrime 4463 },
  { lower := 4573, upper := 4676, witness := RowWitness.topPrime 4567 },
  { lower := 4677, upper := 4782, witness := RowWitness.topPrime 4673 },
  { lower := 4783, upper := 4892, witness := RowWitness.topPrime 4783 },
  { lower := 4893, upper := 4998, witness := RowWitness.topPrime 4889 },
  { lower := 4999, upper := 5108, witness := RowWitness.topPrime 4999 },
  { lower := 5109, upper := 5216, witness := RowWitness.topPrime 5107 },
  { lower := 5217, upper := 5318, witness := RowWitness.topPrime 5209 },
  { lower := 5319, upper := 5418, witness := RowWitness.topPrime 5309 },
  { lower := 5419, upper := 5528, witness := RowWitness.topPrime 5419 },
  { lower := 5529, upper := 5636, witness := RowWitness.topPrime 5527 },
  { lower := 5637, upper := 5732, witness := RowWitness.topPrime 5623 },
  { lower := 5733, upper := 5826, witness := RowWitness.topPrime 5717 },
  { lower := 5827, upper := 5936, witness := RowWitness.topPrime 5827 },
  { lower := 5937, upper := 6036, witness := RowWitness.topPrime 5927 },
  { lower := 6037, upper := 6146, witness := RowWitness.topPrime 6037 },
  { lower := 6147, upper := 6252, witness := RowWitness.topPrime 6143 },
  { lower := 6253, upper := 6356, witness := RowWitness.topPrime 6247 },
  { lower := 6357, upper := 6462, witness := RowWitness.topPrime 6353 },
  { lower := 6463, upper := 6560, witness := RowWitness.topPrime 6451 },
  { lower := 6561, upper := 6662, witness := RowWitness.topPrime 6553 },
  { lower := 6663, upper := 6770, witness := RowWitness.topPrime 6661 },
  { lower := 6771, upper := 6872, witness := RowWitness.topPrime 6763 },
  { lower := 6873, upper := 6980, witness := RowWitness.topPrime 6871 },
  { lower := 6981, upper := 7086, witness := RowWitness.topPrime 6977 },
  { lower := 7087, upper := 7188, witness := RowWitness.topPrime 7079 },
  { lower := 7189, upper := 7296, witness := RowWitness.topPrime 7187 },
  { lower := 7297, upper := 7406, witness := RowWitness.topPrime 7297 },
  { lower := 7407, upper := 7502, witness := RowWitness.topPrime 7393 },
  { lower := 7503, upper := 7608, witness := RowWitness.topPrime 7499 },
  { lower := 7609, upper := 7716, witness := RowWitness.topPrime 7607 },
  { lower := 7717, upper := 7826, witness := RowWitness.topPrime 7717 },
  { lower := 7827, upper := 7932, witness := RowWitness.topPrime 7823 },
  { lower := 7933, upper := 8042, witness := RowWitness.topPrime 7933 },
  { lower := 8043, upper := 8148, witness := RowWitness.topPrime 8039 },
  { lower := 8149, upper := 8256, witness := RowWitness.topPrime 8147 },
  { lower := 8257, upper := 8352, witness := RowWitness.topPrime 8243 },
  { lower := 8353, upper := 8462, witness := RowWitness.topPrime 8353 },
  { lower := 8463, upper := 8570, witness := RowWitness.topPrime 8461 },
  { lower := 8571, upper := 8672, witness := RowWitness.topPrime 8563 },
  { lower := 8673, upper := 8778, witness := RowWitness.topPrime 8669 },
  { lower := 8779, upper := 8888, witness := RowWitness.topPrime 8779 },
  { lower := 8889, upper := 8996, witness := RowWitness.topPrime 8887 },
  { lower := 8997, upper := 9080, witness := RowWitness.topPrime 8971 },
  { lower := 9081, upper := 9176, witness := RowWitness.topPrime 9067 },
  { lower := 9177, upper := 9282, witness := RowWitness.topPrime 9173 },
  { lower := 9283, upper := 9392, witness := RowWitness.topPrime 9283 },
  { lower := 9393, upper := 9500, witness := RowWitness.topPrime 9391 },
  { lower := 9501, upper := 9606, witness := RowWitness.topPrime 9497 },
  { lower := 9607, upper := 9710, witness := RowWitness.topPrime 9601 },
  { lower := 9711, upper := 9806, witness := RowWitness.topPrime 9697 },
  { lower := 9807, upper := 9912, witness := RowWitness.topPrime 9803 },
  { lower := 9913, upper := 10016, witness := RowWitness.topPrime 9907 },
  { lower := 10017, upper := 10118, witness := RowWitness.topPrime 10009 },
  { lower := 10119, upper := 10220, witness := RowWitness.topPrime 10111 },
  { lower := 10221, upper := 10320, witness := RowWitness.topPrime 10211 },
  { lower := 10321, upper := 10430, witness := RowWitness.topPrime 10321 },
  { lower := 10431, upper := 10538, witness := RowWitness.topPrime 10429 },
  { lower := 10539, upper := 10640, witness := RowWitness.topPrime 10531 },
  { lower := 10641, upper := 10748, witness := RowWitness.topPrime 10639 },
  { lower := 10749, upper := 10848, witness := RowWitness.topPrime 10739 },
  { lower := 10849, upper := 10956, witness := RowWitness.topPrime 10847 },
  { lower := 10957, upper := 11066, witness := RowWitness.topPrime 10957 },
  { lower := 11067, upper := 11168, witness := RowWitness.topPrime 11059 },
  { lower := 11169, upper := 11270, witness := RowWitness.topPrime 11161 },
  { lower := 11271, upper := 11370, witness := RowWitness.topPrime 11261 },
  { lower := 11371, upper := 11478, witness := RowWitness.topPrime 11369 },
  { lower := 11479, upper := 11580, witness := RowWitness.topPrime 11471 },
  { lower := 11581, upper := 11688, witness := RowWitness.topPrime 11579 },
  { lower := 11689, upper := 11798, witness := RowWitness.topPrime 11689 },
  { lower := 11799, upper := 11898, witness := RowWitness.topPrime 11789 },
  { lower := 11899, upper := 11989, witness := RowWitness.topPrime 11897 },
  { lower := 12321, upper := 12410, witness := RowWitness.topPrime 12301 },
  { lower := 12411, upper := 12430, witness := RowWitness.topPrime 12409 },
  { lower := 12482, upper := 12588, witness := RowWitness.topPrime 12479 },
  { lower := 12589, upper := 12602, witness := RowWitness.topPrime 12589 },
  { lower := 12696, upper := 12724, witness := RowWitness.topPrime 12689 },
  { lower := 13182, upper := 13286, witness := RowWitness.topPrime 13177 },
  { lower := 13287, upper := 13363, witness := RowWitness.topPrime 13267 },
  { lower := 13454, upper := 13560, witness := RowWitness.topPrime 13451 },
  { lower := 13561, upper := 13565, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13820, witness := RowWitness.topPrime 13711 },
  { lower := 13821, upper := 13887, witness := RowWitness.topPrime 13807 },
  { lower := 13924, upper := 13960, witness := RowWitness.topPrime 13921 },
  { lower := 14297, upper := 14402, witness := RowWitness.topPrime 14293 },
  { lower := 14403, upper := 14510, witness := RowWitness.topPrime 14401 },
  { lower := 14511, upper := 14515, witness := RowWitness.topPrime 14503 },
  { lower := 14641, upper := 14689, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14750, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14892, witness := RowWitness.topPrime 14783 },
  { lower := 14893, upper := 14921, witness := RowWitness.topPrime 14891 },
  { lower := 15123, upper := 15230, witness := RowWitness.topPrime 15121 },
  { lower := 15231, upper := 15238, witness := RowWitness.topPrime 15227 },
  { lower := 15341, upper := 15440, witness := RowWitness.topPrime 15331 },
  { lower := 15441, upper := 15488, witness := RowWitness.topPrime 15439 },
  { lower := 15870, upper := 15951, witness := RowWitness.topPrime 15859 },
  { lower := 15979, upper := 15979, witness := RowWitness.topPrime 15973 },
  { lower := 15987, upper := 16082, witness := RowWitness.topPrime 15973 },
  { lower := 16083, upper := 16096, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16490, witness := RowWitness.topPrime 16381 },
  { lower := 16491, upper := 16493, witness := RowWitness.topPrime 16487 },
  { lower := 16807, upper := 16896, witness := RowWitness.topPrime 16787 },
  { lower := 16897, upper := 16929, witness := RowWitness.topPrime 16889 },
  { lower := 17405, upper := 17407, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17514, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17605, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17768, witness := RowWitness.topPrime 17659 },
  { lower := 17769, upper := 17770, witness := RowWitness.topPrime 17761 },
  { lower := 18259, upper := 18334, witness := RowWitness.topPrime 18257 },
  { lower := 18490, upper := 18590, witness := RowWitness.topPrime 18481 },
  { lower := 18591, upper := 18600, witness := RowWitness.topPrime 18587 },
  { lower := 18605, upper := 18611, witness := RowWitness.topPrime 18593 },
  { lower := 18750, upper := 18858, witness := RowWitness.topPrime 18749 },
  { lower := 18859, upper := 18859, witness := RowWitness.topPrime 18859 },
  { lower := 19208, upper := 19316, witness := RowWitness.topPrime 19207 },
  { lower := 19317, upper := 19317, witness := RowWitness.topPrime 19309 },
  { lower := 19663, upper := 19770, witness := RowWitness.topPrime 19661 },
  { lower := 19771, upper := 19792, witness := RowWitness.topPrime 19763 },
  { lower := 19881, upper := 19882, witness := RowWitness.topPrime 19867 },
  { lower := 20172, upper := 20270, witness := RowWitness.topPrime 20161 },
  { lower := 20271, upper := 20290, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20508, witness := RowWitness.topPrime 20399 },
  { lower := 20509, upper := 20521, witness := RowWitness.topPrime 20509 },
  { lower := 20535, upper := 20642, witness := RowWitness.topPrime 20533 },
  { lower := 20643, upper := 20644, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20686, witness := RowWitness.topPrime 20663 },
  { lower := 21142, upper := 21248, witness := RowWitness.topPrime 21139 },
  { lower := 21249, upper := 21251, witness := RowWitness.topPrime 21247 },
  { lower := 21316, upper := 21327, witness := RowWitness.topPrime 21313 },
  { lower := 21866, upper := 21972, witness := RowWitness.topPrime 21863 },
  { lower := 21973, upper := 22013, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22202, witness := RowWitness.topPrime 22093 },
  { lower := 22203, upper := 22212, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22578, witness := RowWitness.topPrime 22469 },
  { lower := 22579, upper := 22581, witness := RowWitness.topPrime 22573 },
  { lower := 23548, upper := 23643, witness := RowWitness.topPrime 23539 },
  { lower := 23763, upper := 23870, witness := RowWitness.topPrime 23761 },
  { lower := 23871, upper := 23871, witness := RowWitness.topPrime 23869 },
  { lower := 24025, upper := 24132, witness := RowWitness.topPrime 24023 },
  { lower := 24133, upper := 24146, witness := RowWitness.topPrime 24133 },
  { lower := 24334, upper := 24438, witness := RowWitness.topPrime 24329 },
  { lower := 24439, upper := 24476, witness := RowWitness.topPrime 24439 },
  { lower := 24576, upper := 24680, witness := RowWitness.topPrime 24571 },
  { lower := 24681, upper := 24685, witness := RowWitness.topPrime 24677 },
  { lower := 25215, upper := 25298, witness := RowWitness.topPrime 25189 },
  { lower := 25299, upper := 25324, witness := RowWitness.topPrime 25261 },
  { lower := 26047, upper := 26120, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26473, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26520, witness := RowWitness.topPrime 26501 },
  { lower := 26934, upper := 27005, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27489, witness := RowWitness.topPrime 27431 },
  { lower := 28577, upper := 28670, witness := RowWitness.topPrime 28573 },
  { lower := 28672, upper := 28686, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28820, witness := RowWitness.topPrime 28711 },
  { lower := 28821, upper := 28858, witness := RowWitness.topPrime 28817 },
  { lower := 29584, upper := 29587, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29877, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30355, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30702, witness := RowWitness.topPrime 30593 },
  { lower := 30703, upper := 30712, witness := RowWitness.topPrime 30703 },
  { lower := 30926, upper := 31008, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31302, witness := RowWitness.topPrime 31193 },
  { lower := 31303, upper := 31322, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31359, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31506, witness := RowWitness.topPrime 31397 },
  { lower := 31507, upper := 31542, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32048, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32912, witness := RowWitness.topPrime 32803 },
  { lower := 32913, upper := 32914, witness := RowWitness.topPrime 32911 },
  { lower := 32955, upper := 32965, witness := RowWitness.topPrime 32941 },
  { lower := 33620, upper := 33728, witness := RowWitness.topPrime 33619 },
  { lower := 33729, upper := 33729, witness := RowWitness.topPrime 33721 },
  { lower := 34295, upper := 34334, witness := RowWitness.topPrime 34283 },
  { lower := 34347, upper := 34446, witness := RowWitness.topPrime 34337 },
  { lower := 34447, upper := 34500, witness := RowWitness.topPrime 34439 },
  { lower := 35152, upper := 35240, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35400, witness := RowWitness.topPrime 35291 },
  { lower := 35401, upper := 35410, witness := RowWitness.topPrime 35401 },
  { lower := 36015, upper := 36021, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36606, witness := RowWitness.topPrime 36497 },
  { lower := 36607, upper := 36610, witness := RowWitness.topPrime 36607 },
  { lower := 36982, upper := 37088, witness := RowWitness.topPrime 36979 },
  { lower := 37089, upper := 37089, witness := RowWitness.topPrime 37087 },
  { lower := 37210, upper := 37288, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37319, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37412, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37458, witness := RowWitness.topPrime 37441 },
  { lower := 37553, upper := 37555, witness := RowWitness.topPrime 37549 },
  { lower := 37636, upper := 37662, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39432, witness := RowWitness.topPrime 39323 },
  { lower := 39433, upper := 39435, witness := RowWitness.topPrime 39419 },
  { lower := 39605, upper := 39655, witness := RowWitness.topPrime 39581 },
  { lower := 40344, upper := 40452, witness := RowWitness.topPrime 40343 },
  { lower := 40453, upper := 40453, witness := RowWitness.topPrime 40433 },
  { lower := 40817, upper := 40913, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41040, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41852, witness := RowWitness.topPrime 41771 },
  { lower := 42025, upper := 42080, witness := RowWitness.topPrime 42023 },
  { lower := 42527, upper := 42545, witness := RowWitness.topPrime 42509 },
  { lower := 42632, upper := 42636, witness := RowWitness.topPrime 42611 },
  { lower := 43740, upper := 43796, witness := RowWitness.topPrime 43721 },
  { lower := 44217, upper := 44289, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44999, witness := RowWitness.topPrime 44939 },
  { lower := 46225, upper := 46246, witness := RowWitness.topPrime 46219 },
  { lower := 47526, upper := 47630, witness := RowWitness.topPrime 47521 },
  { lower := 47631, upper := 47633, witness := RowWitness.topPrime 47629 },
  { lower := 48013, upper := 48090, witness := RowWitness.topPrime 47981 },
  { lower := 48091, upper := 48122, witness := RowWitness.topPrime 48091 },
  { lower := 48734, upper := 48842, witness := RowWitness.topPrime 48733 },
  { lower := 48843, upper := 48843, witness := RowWitness.topPrime 48823 },
  { lower := 49152, upper := 49239, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50519, witness := RowWitness.topPrime 50417 },
  { lower := 50653, upper := 50671, witness := RowWitness.topPrime 50651 },
  { lower := 53371, upper := 53399, witness := RowWitness.topPrime 53359 },
  { lower := 55451, upper := 55550, witness := RowWitness.topPrime 55441 },
  { lower := 55551, upper := 55556, witness := RowWitness.topPrime 55547 },
  { lower := 56180, upper := 56278, witness := RowWitness.topPrime 56179 },
  { lower := 57344, upper := 57354, witness := RowWitness.topPrime 57331 },
  { lower := 58989, upper := 59088, witness := RowWitness.topPrime 58979 },
  { lower := 59089, upper := 59098, witness := RowWitness.topPrime 59083 },
  { lower := 59582, upper := 59645, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62519, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63978, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65630, witness := RowWitness.topPrime 65521 },
  { lower := 65631, upper := 65645, witness := RowWitness.topPrime 65629 },
  { lower := 67335, upper := 67337, witness := RowWitness.topPrime 67307 },
  { lower := 68651, upper := 68748, witness := RowWitness.topPrime 68639 },
  { lower := 68749, upper := 68760, witness := RowWitness.topPrime 68749 },
  { lower := 68782, upper := 68803, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68891, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 68999, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71395, witness := RowWitness.topPrime 71287 },
  { lower := 73101, upper := 73111, witness := RowWitness.topPrime 73091 },
  { lower := 73167, upper := 73210, witness := RowWitness.topPrime 73141 },
  { lower := 73728, upper := 73804, witness := RowWitness.topPrime 73727 },
  { lower := 78141, upper := 78234, witness := RowWitness.topPrime 78139 },
  { lower := 85264, upper := 85278, witness := RowWitness.topPrime 85259 },
  { lower := 85291, upper := 85368, witness := RowWitness.topPrime 85259 },
  { lower := 85369, upper := 85400, witness := RowWitness.topPrime 85369 },
  { lower := 85697, upper := 85792, witness := RowWitness.topPrime 85691 },
  { lower := 91854, upper := 91918, witness := RowWitness.topPrime 91841 },
  { lower := 95052, upper := 95136, witness := RowWitness.topPrime 95027 },
  { lower := 95137, upper := 95157, witness := RowWitness.topPrime 95131 },
  { lower := 96026, upper := 96031, witness := RowWitness.topPrime 96017 },
  { lower := 102973, upper := 102994, witness := RowWitness.topPrime 102967 },
  { lower := 103041, upper := 103082, witness := RowWitness.topPrime 103007 },
  { lower := 106097, upper := 106196, witness := RowWitness.topPrime 106087 },
  { lower := 106197, upper := 106199, witness := RowWitness.topPrime 106189 },
  { lower := 116699, upper := 116712, witness := RowWitness.topPrime 116689 },
  { lower := 118815, upper := 118910, witness := RowWitness.topPrime 118801 },
  { lower := 118911, upper := 118919, witness := RowWitness.topPrime 118907 },
  { lower := 122412, upper := 122426, witness := RowWitness.topPrime 122401 },
  { lower := 137842, upper := 137890, witness := RowWitness.topPrime 137831 },
  { lower := 137917, upper := 137951, witness := RowWitness.topPrime 137911 },
  { lower := 142578, upper := 142681, witness := RowWitness.topPrime 142573 },
  { lower := 142814, upper := 142914, witness := RowWitness.topPrime 142811 },
  { lower := 148877, upper := 148946, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148986, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327789, witness := RowWitness.topPrime 327689 }
]

def row110_layers : List CoverLayer := [
  { lower := 11990, upper := 23980, M := 30 },
  { lower := 23980, upper := 47960, M := 25 },
  { lower := 47960, upper := 95920, M := 21 },
  { lower := 95920, upper := 191840, M := 18 },
  { lower := 191840, upper := 383680, M := 15 },
  { lower := 383680, upper := 767360, M := 12 },
  { lower := 767360, upper := 1534720, M := 10 },
  { lower := 1534720, upper := 3069440, M := 9 },
  { lower := 3069440, upper := 6138880, M := 7 },
  { lower := 6138880, upper := 12277760, M := 6 },
  { lower := 12277760, upper := 24555520, M := 5 },
  { lower := 24555520, upper := 49111040, M := 5 },
  { lower := 49111040, upper := 98222080, M := 4 },
  { lower := 98222080, upper := 196444160, M := 3 },
  { lower := 196444160, upper := 392888320, M := 3 },
  { lower := 392888320, upper := 785776640, M := 2 },
  { lower := 785776640, upper := 1571553280, M := 2 },
  { lower := 1571553280, upper := 3143106560, M := 2 },
  { lower := 3143106560, upper := 6286213120, M := 2 },
  { lower := 6286213120, upper := 10000000000, M := 1 }
]

def row110 : FiniteCoverRow := {
  height := row110_height,
  goods := row110_goods,
  layers := row110_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good000_checked :
    goodSegmentCheck 110 36 76
      { lower := 222, upper := 320, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good001_checked :
    goodSegmentCheck 110 36 76
      { lower := 321, upper := 426, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good002_checked :
    goodSegmentCheck 110 36 76
      { lower := 427, upper := 530, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good003_checked :
    goodSegmentCheck 110 36 76
      { lower := 531, upper := 632, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good004_checked :
    goodSegmentCheck 110 36 76
      { lower := 633, upper := 740, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good005_checked :
    goodSegmentCheck 110 36 76
      { lower := 741, upper := 848, witness := RowWitness.topPrime 739 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good006_checked :
    goodSegmentCheck 110 36 76
      { lower := 849, upper := 948, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good007_checked :
    goodSegmentCheck 110 36 76
      { lower := 949, upper := 1056, witness := RowWitness.topPrime 947 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good008_checked :
    goodSegmentCheck 110 36 76
      { lower := 1057, upper := 1160, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good009_checked :
    goodSegmentCheck 110 36 76
      { lower := 1161, upper := 1262, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good010_checked :
    goodSegmentCheck 110 36 76
      { lower := 1263, upper := 1368, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good011_checked :
    goodSegmentCheck 110 36 76
      { lower := 1369, upper := 1476, witness := RowWitness.topPrime 1367 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good012_checked :
    goodSegmentCheck 110 36 76
      { lower := 1477, upper := 1580, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good013_checked :
    goodSegmentCheck 110 36 76
      { lower := 1581, upper := 1688, witness := RowWitness.topPrime 1579 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good014_checked :
    goodSegmentCheck 110 36 76
      { lower := 1689, upper := 1778, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good015_checked :
    goodSegmentCheck 110 36 76
      { lower := 1779, upper := 1886, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good016_checked :
    goodSegmentCheck 110 36 76
      { lower := 1887, upper := 1988, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good017_checked :
    goodSegmentCheck 110 36 76
      { lower := 1989, upper := 2096, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good018_checked :
    goodSegmentCheck 110 36 76
      { lower := 2097, upper := 2198, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good019_checked :
    goodSegmentCheck 110 36 76
      { lower := 2199, upper := 2288, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good020_checked :
    goodSegmentCheck 110 36 76
      { lower := 2289, upper := 2396, witness := RowWitness.topPrime 2287 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good021_checked :
    goodSegmentCheck 110 36 76
      { lower := 2397, upper := 2502, witness := RowWitness.topPrime 2393 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good022_checked :
    goodSegmentCheck 110 36 76
      { lower := 2503, upper := 2612, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good023_checked :
    goodSegmentCheck 110 36 76
      { lower := 2613, upper := 2718, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good024_checked :
    goodSegmentCheck 110 36 76
      { lower := 2719, upper := 2828, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good025_checked :
    goodSegmentCheck 110 36 76
      { lower := 2829, upper := 2928, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good026_checked :
    goodSegmentCheck 110 36 76
      { lower := 2929, upper := 3036, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good027_checked :
    goodSegmentCheck 110 36 76
      { lower := 3037, upper := 3146, witness := RowWitness.topPrime 3037 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good028_checked :
    goodSegmentCheck 110 36 76
      { lower := 3147, upper := 3246, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good029_checked :
    goodSegmentCheck 110 36 76
      { lower := 3247, upper := 3338, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good030_checked :
    goodSegmentCheck 110 36 76
      { lower := 3339, upper := 3440, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good031_checked :
    goodSegmentCheck 110 36 76
      { lower := 3441, upper := 3542, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good032_checked :
    goodSegmentCheck 110 36 76
      { lower := 3543, upper := 3650, witness := RowWitness.topPrime 3541 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good033_checked :
    goodSegmentCheck 110 36 76
      { lower := 3651, upper := 3752, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good034_checked :
    goodSegmentCheck 110 36 76
      { lower := 3753, upper := 3848, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good035_checked :
    goodSegmentCheck 110 36 76
      { lower := 3849, upper := 3956, witness := RowWitness.topPrime 3847 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good036_checked :
    goodSegmentCheck 110 36 76
      { lower := 3957, upper := 4056, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good037_checked :
    goodSegmentCheck 110 36 76
      { lower := 4057, upper := 4166, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good038_checked :
    goodSegmentCheck 110 36 76
      { lower := 4167, upper := 4268, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good039_checked :
    goodSegmentCheck 110 36 76
      { lower := 4269, upper := 4370, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good040_checked :
    goodSegmentCheck 110 36 76
      { lower := 4371, upper := 4472, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good041_checked :
    goodSegmentCheck 110 36 76
      { lower := 4473, upper := 4572, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good042_checked :
    goodSegmentCheck 110 36 76
      { lower := 4573, upper := 4676, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good043_checked :
    goodSegmentCheck 110 36 76
      { lower := 4677, upper := 4782, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good044_checked :
    goodSegmentCheck 110 36 76
      { lower := 4783, upper := 4892, witness := RowWitness.topPrime 4783 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good045_checked :
    goodSegmentCheck 110 36 76
      { lower := 4893, upper := 4998, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good046_checked :
    goodSegmentCheck 110 36 76
      { lower := 4999, upper := 5108, witness := RowWitness.topPrime 4999 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good047_checked :
    goodSegmentCheck 110 36 76
      { lower := 5109, upper := 5216, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good048_checked :
    goodSegmentCheck 110 36 76
      { lower := 5217, upper := 5318, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good049_checked :
    goodSegmentCheck 110 36 76
      { lower := 5319, upper := 5418, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good050_checked :
    goodSegmentCheck 110 36 76
      { lower := 5419, upper := 5528, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good051_checked :
    goodSegmentCheck 110 36 76
      { lower := 5529, upper := 5636, witness := RowWitness.topPrime 5527 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good052_checked :
    goodSegmentCheck 110 36 76
      { lower := 5637, upper := 5732, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good053_checked :
    goodSegmentCheck 110 36 76
      { lower := 5733, upper := 5826, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good054_checked :
    goodSegmentCheck 110 36 76
      { lower := 5827, upper := 5936, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good055_checked :
    goodSegmentCheck 110 36 76
      { lower := 5937, upper := 6036, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good056_checked :
    goodSegmentCheck 110 36 76
      { lower := 6037, upper := 6146, witness := RowWitness.topPrime 6037 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good057_checked :
    goodSegmentCheck 110 36 76
      { lower := 6147, upper := 6252, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good058_checked :
    goodSegmentCheck 110 36 76
      { lower := 6253, upper := 6356, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good059_checked :
    goodSegmentCheck 110 36 76
      { lower := 6357, upper := 6462, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good060_checked :
    goodSegmentCheck 110 36 76
      { lower := 6463, upper := 6560, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good061_checked :
    goodSegmentCheck 110 36 76
      { lower := 6561, upper := 6662, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good062_checked :
    goodSegmentCheck 110 36 76
      { lower := 6663, upper := 6770, witness := RowWitness.topPrime 6661 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good063_checked :
    goodSegmentCheck 110 36 76
      { lower := 6771, upper := 6872, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good064_checked :
    goodSegmentCheck 110 36 76
      { lower := 6873, upper := 6980, witness := RowWitness.topPrime 6871 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good065_checked :
    goodSegmentCheck 110 36 76
      { lower := 6981, upper := 7086, witness := RowWitness.topPrime 6977 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good066_checked :
    goodSegmentCheck 110 36 76
      { lower := 7087, upper := 7188, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good067_checked :
    goodSegmentCheck 110 36 76
      { lower := 7189, upper := 7296, witness := RowWitness.topPrime 7187 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good068_checked :
    goodSegmentCheck 110 36 76
      { lower := 7297, upper := 7406, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good069_checked :
    goodSegmentCheck 110 36 76
      { lower := 7407, upper := 7502, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good070_checked :
    goodSegmentCheck 110 36 76
      { lower := 7503, upper := 7608, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good071_checked :
    goodSegmentCheck 110 36 76
      { lower := 7609, upper := 7716, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good072_checked :
    goodSegmentCheck 110 36 76
      { lower := 7717, upper := 7826, witness := RowWitness.topPrime 7717 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good073_checked :
    goodSegmentCheck 110 36 76
      { lower := 7827, upper := 7932, witness := RowWitness.topPrime 7823 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good074_checked :
    goodSegmentCheck 110 36 76
      { lower := 7933, upper := 8042, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good075_checked :
    goodSegmentCheck 110 36 76
      { lower := 8043, upper := 8148, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good076_checked :
    goodSegmentCheck 110 36 76
      { lower := 8149, upper := 8256, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good077_checked :
    goodSegmentCheck 110 36 76
      { lower := 8257, upper := 8352, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good078_checked :
    goodSegmentCheck 110 36 76
      { lower := 8353, upper := 8462, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good079_checked :
    goodSegmentCheck 110 36 76
      { lower := 8463, upper := 8570, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good080_checked :
    goodSegmentCheck 110 36 76
      { lower := 8571, upper := 8672, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good081_checked :
    goodSegmentCheck 110 36 76
      { lower := 8673, upper := 8778, witness := RowWitness.topPrime 8669 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good082_checked :
    goodSegmentCheck 110 36 76
      { lower := 8779, upper := 8888, witness := RowWitness.topPrime 8779 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good083_checked :
    goodSegmentCheck 110 36 76
      { lower := 8889, upper := 8996, witness := RowWitness.topPrime 8887 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good084_checked :
    goodSegmentCheck 110 36 76
      { lower := 8997, upper := 9080, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good085_checked :
    goodSegmentCheck 110 36 76
      { lower := 9081, upper := 9176, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good086_checked :
    goodSegmentCheck 110 36 76
      { lower := 9177, upper := 9282, witness := RowWitness.topPrime 9173 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good087_checked :
    goodSegmentCheck 110 36 76
      { lower := 9283, upper := 9392, witness := RowWitness.topPrime 9283 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good088_checked :
    goodSegmentCheck 110 36 76
      { lower := 9393, upper := 9500, witness := RowWitness.topPrime 9391 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good089_checked :
    goodSegmentCheck 110 36 76
      { lower := 9501, upper := 9606, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good090_checked :
    goodSegmentCheck 110 36 76
      { lower := 9607, upper := 9710, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good091_checked :
    goodSegmentCheck 110 36 76
      { lower := 9711, upper := 9806, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good092_checked :
    goodSegmentCheck 110 36 76
      { lower := 9807, upper := 9912, witness := RowWitness.topPrime 9803 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good093_checked :
    goodSegmentCheck 110 36 76
      { lower := 9913, upper := 10016, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good094_checked :
    goodSegmentCheck 110 36 76
      { lower := 10017, upper := 10118, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good095_checked :
    goodSegmentCheck 110 36 76
      { lower := 10119, upper := 10220, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good096_checked :
    goodSegmentCheck 110 36 76
      { lower := 10221, upper := 10320, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good097_checked :
    goodSegmentCheck 110 36 76
      { lower := 10321, upper := 10430, witness := RowWitness.topPrime 10321 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good098_checked :
    goodSegmentCheck 110 36 76
      { lower := 10431, upper := 10538, witness := RowWitness.topPrime 10429 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good099_checked :
    goodSegmentCheck 110 36 76
      { lower := 10539, upper := 10640, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good100_checked :
    goodSegmentCheck 110 36 76
      { lower := 10641, upper := 10748, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good101_checked :
    goodSegmentCheck 110 36 76
      { lower := 10749, upper := 10848, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good102_checked :
    goodSegmentCheck 110 36 76
      { lower := 10849, upper := 10956, witness := RowWitness.topPrime 10847 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good103_checked :
    goodSegmentCheck 110 36 76
      { lower := 10957, upper := 11066, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good104_checked :
    goodSegmentCheck 110 36 76
      { lower := 11067, upper := 11168, witness := RowWitness.topPrime 11059 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good105_checked :
    goodSegmentCheck 110 36 76
      { lower := 11169, upper := 11270, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good106_checked :
    goodSegmentCheck 110 36 76
      { lower := 11271, upper := 11370, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good107_checked :
    goodSegmentCheck 110 36 76
      { lower := 11371, upper := 11478, witness := RowWitness.topPrime 11369 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good108_checked :
    goodSegmentCheck 110 36 76
      { lower := 11479, upper := 11580, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good109_checked :
    goodSegmentCheck 110 36 76
      { lower := 11581, upper := 11688, witness := RowWitness.topPrime 11579 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good110_checked :
    goodSegmentCheck 110 36 76
      { lower := 11689, upper := 11798, witness := RowWitness.topPrime 11689 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good111_checked :
    goodSegmentCheck 110 36 76
      { lower := 11799, upper := 11898, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good112_checked :
    goodSegmentCheck 110 36 76
      { lower := 11899, upper := 11989, witness := RowWitness.topPrime 11897 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good113_checked :
    goodSegmentCheck 110 36 76
      { lower := 12321, upper := 12410, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good114_checked :
    goodSegmentCheck 110 36 76
      { lower := 12411, upper := 12430, witness := RowWitness.topPrime 12409 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good115_checked :
    goodSegmentCheck 110 36 76
      { lower := 12482, upper := 12588, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good116_checked :
    goodSegmentCheck 110 36 76
      { lower := 12589, upper := 12602, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good117_checked :
    goodSegmentCheck 110 36 76
      { lower := 12696, upper := 12724, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good118_checked :
    goodSegmentCheck 110 36 76
      { lower := 13182, upper := 13286, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good119_checked :
    goodSegmentCheck 110 36 76
      { lower := 13287, upper := 13363, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good120_checked :
    goodSegmentCheck 110 36 76
      { lower := 13454, upper := 13560, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good121_checked :
    goodSegmentCheck 110 36 76
      { lower := 13561, upper := 13565, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good122_checked :
    goodSegmentCheck 110 36 76
      { lower := 13718, upper := 13820, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good123_checked :
    goodSegmentCheck 110 36 76
      { lower := 13821, upper := 13887, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good124_checked :
    goodSegmentCheck 110 36 76
      { lower := 13924, upper := 13960, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good125_checked :
    goodSegmentCheck 110 36 76
      { lower := 14297, upper := 14402, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good126_checked :
    goodSegmentCheck 110 36 76
      { lower := 14403, upper := 14510, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good127_checked :
    goodSegmentCheck 110 36 76
      { lower := 14511, upper := 14515, witness := RowWitness.topPrime 14503 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good128_checked :
    goodSegmentCheck 110 36 76
      { lower := 14641, upper := 14689, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good129_checked :
    goodSegmentCheck 110 36 76
      { lower := 14739, upper := 14750, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good130_checked :
    goodSegmentCheck 110 36 76
      { lower := 14792, upper := 14892, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good131_checked :
    goodSegmentCheck 110 36 76
      { lower := 14893, upper := 14921, witness := RowWitness.topPrime 14891 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good132_checked :
    goodSegmentCheck 110 36 76
      { lower := 15123, upper := 15230, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good133_checked :
    goodSegmentCheck 110 36 76
      { lower := 15231, upper := 15238, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good134_checked :
    goodSegmentCheck 110 36 76
      { lower := 15341, upper := 15440, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good135_checked :
    goodSegmentCheck 110 36 76
      { lower := 15441, upper := 15488, witness := RowWitness.topPrime 15439 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good136_checked :
    goodSegmentCheck 110 36 76
      { lower := 15870, upper := 15951, witness := RowWitness.topPrime 15859 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good137_checked :
    goodSegmentCheck 110 36 76
      { lower := 15979, upper := 15979, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good138_checked :
    goodSegmentCheck 110 36 76
      { lower := 15987, upper := 16082, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good139_checked :
    goodSegmentCheck 110 36 76
      { lower := 16083, upper := 16096, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good140_checked :
    goodSegmentCheck 110 36 76
      { lower := 16384, upper := 16490, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good141_checked :
    goodSegmentCheck 110 36 76
      { lower := 16491, upper := 16493, witness := RowWitness.topPrime 16487 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good142_checked :
    goodSegmentCheck 110 36 76
      { lower := 16807, upper := 16896, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good143_checked :
    goodSegmentCheck 110 36 76
      { lower := 16897, upper := 16929, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good144_checked :
    goodSegmentCheck 110 36 76
      { lower := 17405, upper := 17407, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good145_checked :
    goodSegmentCheck 110 36 76
      { lower := 17496, upper := 17514, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good146_checked :
    goodSegmentCheck 110 36 76
      { lower := 17576, upper := 17605, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good147_checked :
    goodSegmentCheck 110 36 76
      { lower := 17661, upper := 17768, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good148_checked :
    goodSegmentCheck 110 36 76
      { lower := 17769, upper := 17770, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good149_checked :
    goodSegmentCheck 110 36 76
      { lower := 18259, upper := 18334, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good150_checked :
    goodSegmentCheck 110 36 76
      { lower := 18490, upper := 18590, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good151_checked :
    goodSegmentCheck 110 36 76
      { lower := 18591, upper := 18600, witness := RowWitness.topPrime 18587 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good152_checked :
    goodSegmentCheck 110 36 76
      { lower := 18605, upper := 18611, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good153_checked :
    goodSegmentCheck 110 36 76
      { lower := 18750, upper := 18858, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good154_checked :
    goodSegmentCheck 110 36 76
      { lower := 18859, upper := 18859, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good155_checked :
    goodSegmentCheck 110 36 76
      { lower := 19208, upper := 19316, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good156_checked :
    goodSegmentCheck 110 36 76
      { lower := 19317, upper := 19317, witness := RowWitness.topPrime 19309 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good157_checked :
    goodSegmentCheck 110 36 76
      { lower := 19663, upper := 19770, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good158_checked :
    goodSegmentCheck 110 36 76
      { lower := 19771, upper := 19792, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good159_checked :
    goodSegmentCheck 110 36 76
      { lower := 19881, upper := 19882, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good160_checked :
    goodSegmentCheck 110 36 76
      { lower := 20172, upper := 20270, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good161_checked :
    goodSegmentCheck 110 36 76
      { lower := 20271, upper := 20290, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good162_checked :
    goodSegmentCheck 110 36 76
      { lower := 20402, upper := 20508, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good163_checked :
    goodSegmentCheck 110 36 76
      { lower := 20509, upper := 20521, witness := RowWitness.topPrime 20509 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good164_checked :
    goodSegmentCheck 110 36 76
      { lower := 20535, upper := 20642, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good165_checked :
    goodSegmentCheck 110 36 76
      { lower := 20643, upper := 20644, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good166_checked :
    goodSegmentCheck 110 36 76
      { lower := 20667, upper := 20686, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good167_checked :
    goodSegmentCheck 110 36 76
      { lower := 21142, upper := 21248, witness := RowWitness.topPrime 21139 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good168_checked :
    goodSegmentCheck 110 36 76
      { lower := 21249, upper := 21251, witness := RowWitness.topPrime 21247 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good169_checked :
    goodSegmentCheck 110 36 76
      { lower := 21316, upper := 21327, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good170_checked :
    goodSegmentCheck 110 36 76
      { lower := 21866, upper := 21972, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good171_checked :
    goodSegmentCheck 110 36 76
      { lower := 21973, upper := 22013, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good172_checked :
    goodSegmentCheck 110 36 76
      { lower := 22103, upper := 22202, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good173_checked :
    goodSegmentCheck 110 36 76
      { lower := 22203, upper := 22212, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good174_checked :
    goodSegmentCheck 110 36 76
      { lower := 22472, upper := 22578, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good175_checked :
    goodSegmentCheck 110 36 76
      { lower := 22579, upper := 22581, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good176_checked :
    goodSegmentCheck 110 36 76
      { lower := 23548, upper := 23643, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good177_checked :
    goodSegmentCheck 110 36 76
      { lower := 23763, upper := 23870, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good178_checked :
    goodSegmentCheck 110 36 76
      { lower := 23871, upper := 23871, witness := RowWitness.topPrime 23869 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good179_checked :
    goodSegmentCheck 110 36 76
      { lower := 24025, upper := 24132, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good180_checked :
    goodSegmentCheck 110 36 76
      { lower := 24133, upper := 24146, witness := RowWitness.topPrime 24133 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good181_checked :
    goodSegmentCheck 110 36 76
      { lower := 24334, upper := 24438, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good182_checked :
    goodSegmentCheck 110 36 76
      { lower := 24439, upper := 24476, witness := RowWitness.topPrime 24439 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good183_checked :
    goodSegmentCheck 110 36 76
      { lower := 24576, upper := 24680, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good184_checked :
    goodSegmentCheck 110 36 76
      { lower := 24681, upper := 24685, witness := RowWitness.topPrime 24677 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good185_checked :
    goodSegmentCheck 110 36 76
      { lower := 25215, upper := 25298, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good186_checked :
    goodSegmentCheck 110 36 76
      { lower := 25299, upper := 25324, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good187_checked :
    goodSegmentCheck 110 36 76
      { lower := 26047, upper := 26120, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good188_checked :
    goodSegmentCheck 110 36 76
      { lower := 26411, upper := 26473, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good189_checked :
    goodSegmentCheck 110 36 76
      { lower := 26508, upper := 26520, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good190_checked :
    goodSegmentCheck 110 36 76
      { lower := 26934, upper := 27005, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good191_checked :
    goodSegmentCheck 110 36 76
      { lower := 27436, upper := 27489, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good192_checked :
    goodSegmentCheck 110 36 76
      { lower := 28577, upper := 28670, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good193_checked :
    goodSegmentCheck 110 36 76
      { lower := 28672, upper := 28686, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good194_checked :
    goodSegmentCheck 110 36 76
      { lower := 28717, upper := 28820, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good195_checked :
    goodSegmentCheck 110 36 76
      { lower := 28821, upper := 28858, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good196_checked :
    goodSegmentCheck 110 36 76
      { lower := 29584, upper := 29587, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good197_checked :
    goodSegmentCheck 110 36 76
      { lower := 29791, upper := 29877, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good198_checked :
    goodSegmentCheck 110 36 76
      { lower := 30258, upper := 30355, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good199_checked :
    goodSegmentCheck 110 36 76
      { lower := 30618, upper := 30702, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good200_checked :
    goodSegmentCheck 110 36 76
      { lower := 30703, upper := 30712, witness := RowWitness.topPrime 30703 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good201_checked :
    goodSegmentCheck 110 36 76
      { lower := 30926, upper := 31008, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good202_checked :
    goodSegmentCheck 110 36 76
      { lower := 31213, upper := 31302, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good203_checked :
    goodSegmentCheck 110 36 76
      { lower := 31303, upper := 31322, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good204_checked :
    goodSegmentCheck 110 36 76
      { lower := 31329, upper := 31359, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good205_checked :
    goodSegmentCheck 110 36 76
      { lower := 31423, upper := 31506, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good206_checked :
    goodSegmentCheck 110 36 76
      { lower := 31507, upper := 31542, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good207_checked :
    goodSegmentCheck 110 36 76
      { lower := 31974, upper := 32048, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good208_checked :
    goodSegmentCheck 110 36 76
      { lower := 32805, upper := 32912, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good209_checked :
    goodSegmentCheck 110 36 76
      { lower := 32913, upper := 32914, witness := RowWitness.topPrime 32911 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good210_checked :
    goodSegmentCheck 110 36 76
      { lower := 32955, upper := 32965, witness := RowWitness.topPrime 32941 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good211_checked :
    goodSegmentCheck 110 36 76
      { lower := 33620, upper := 33728, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good212_checked :
    goodSegmentCheck 110 36 76
      { lower := 33729, upper := 33729, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good213_checked :
    goodSegmentCheck 110 36 76
      { lower := 34295, upper := 34334, witness := RowWitness.topPrime 34283 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good214_checked :
    goodSegmentCheck 110 36 76
      { lower := 34347, upper := 34446, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good215_checked :
    goodSegmentCheck 110 36 76
      { lower := 34447, upper := 34500, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good216_checked :
    goodSegmentCheck 110 36 76
      { lower := 35152, upper := 35240, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good217_checked :
    goodSegmentCheck 110 36 76
      { lower := 35301, upper := 35400, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good218_checked :
    goodSegmentCheck 110 36 76
      { lower := 35401, upper := 35410, witness := RowWitness.topPrime 35401 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good219_checked :
    goodSegmentCheck 110 36 76
      { lower := 36015, upper := 36021, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good220_checked :
    goodSegmentCheck 110 36 76
      { lower := 36517, upper := 36606, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good221_checked :
    goodSegmentCheck 110 36 76
      { lower := 36607, upper := 36610, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good222_checked :
    goodSegmentCheck 110 36 76
      { lower := 36982, upper := 37088, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good223_checked :
    goodSegmentCheck 110 36 76
      { lower := 37089, upper := 37089, witness := RowWitness.topPrime 37087 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good224_checked :
    goodSegmentCheck 110 36 76
      { lower := 37210, upper := 37288, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good225_checked :
    goodSegmentCheck 110 36 76
      { lower := 37303, upper := 37319, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good226_checked :
    goodSegmentCheck 110 36 76
      { lower := 37349, upper := 37412, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good227_checked :
    goodSegmentCheck 110 36 76
      { lower := 37446, upper := 37458, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good228_checked :
    goodSegmentCheck 110 36 76
      { lower := 37553, upper := 37555, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good229_checked :
    goodSegmentCheck 110 36 76
      { lower := 37636, upper := 37662, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good230_checked :
    goodSegmentCheck 110 36 76
      { lower := 39326, upper := 39432, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good231_checked :
    goodSegmentCheck 110 36 76
      { lower := 39433, upper := 39435, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good232_checked :
    goodSegmentCheck 110 36 76
      { lower := 39605, upper := 39655, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good233_checked :
    goodSegmentCheck 110 36 76
      { lower := 40344, upper := 40452, witness := RowWitness.topPrime 40343 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good234_checked :
    goodSegmentCheck 110 36 76
      { lower := 40453, upper := 40453, witness := RowWitness.topPrime 40433 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good235_checked :
    goodSegmentCheck 110 36 76
      { lower := 40817, upper := 40913, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good236_checked :
    goodSegmentCheck 110 36 76
      { lower := 40960, upper := 41040, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good237_checked :
    goodSegmentCheck 110 36 76
      { lower := 41772, upper := 41852, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good238_checked :
    goodSegmentCheck 110 36 76
      { lower := 42025, upper := 42080, witness := RowWitness.topPrime 42023 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good239_checked :
    goodSegmentCheck 110 36 76
      { lower := 42527, upper := 42545, witness := RowWitness.topPrime 42509 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good240_checked :
    goodSegmentCheck 110 36 76
      { lower := 42632, upper := 42636, witness := RowWitness.topPrime 42611 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good241_checked :
    goodSegmentCheck 110 36 76
      { lower := 43740, upper := 43796, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good242_checked :
    goodSegmentCheck 110 36 76
      { lower := 44217, upper := 44289, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good243_checked :
    goodSegmentCheck 110 36 76
      { lower := 44944, upper := 44999, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good244_checked :
    goodSegmentCheck 110 36 76
      { lower := 46225, upper := 46246, witness := RowWitness.topPrime 46219 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good245_checked :
    goodSegmentCheck 110 36 76
      { lower := 47526, upper := 47630, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good246_checked :
    goodSegmentCheck 110 36 76
      { lower := 47631, upper := 47633, witness := RowWitness.topPrime 47629 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good247_checked :
    goodSegmentCheck 110 36 76
      { lower := 48013, upper := 48090, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good248_checked :
    goodSegmentCheck 110 36 76
      { lower := 48091, upper := 48122, witness := RowWitness.topPrime 48091 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good249_checked :
    goodSegmentCheck 110 36 76
      { lower := 48734, upper := 48842, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good250_checked :
    goodSegmentCheck 110 36 76
      { lower := 48843, upper := 48843, witness := RowWitness.topPrime 48823 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good251_checked :
    goodSegmentCheck 110 36 76
      { lower := 49152, upper := 49239, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good252_checked :
    goodSegmentCheck 110 36 76
      { lower := 50421, upper := 50519, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good253_checked :
    goodSegmentCheck 110 36 76
      { lower := 50653, upper := 50671, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good254_checked :
    goodSegmentCheck 110 36 76
      { lower := 53371, upper := 53399, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good255_checked :
    goodSegmentCheck 110 36 76
      { lower := 55451, upper := 55550, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good256_checked :
    goodSegmentCheck 110 36 76
      { lower := 55551, upper := 55556, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good257_checked :
    goodSegmentCheck 110 36 76
      { lower := 56180, upper := 56278, witness := RowWitness.topPrime 56179 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good258_checked :
    goodSegmentCheck 110 36 76
      { lower := 57344, upper := 57354, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good259_checked :
    goodSegmentCheck 110 36 76
      { lower := 58989, upper := 59088, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good260_checked :
    goodSegmentCheck 110 36 76
      { lower := 59089, upper := 59098, witness := RowWitness.topPrime 59083 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good261_checked :
    goodSegmentCheck 110 36 76
      { lower := 59582, upper := 59645, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good262_checked :
    goodSegmentCheck 110 36 76
      { lower := 62500, upper := 62519, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good263_checked :
    goodSegmentCheck 110 36 76
      { lower := 63948, upper := 63978, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good264_checked :
    goodSegmentCheck 110 36 76
      { lower := 65536, upper := 65630, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good265_checked :
    goodSegmentCheck 110 36 76
      { lower := 65631, upper := 65645, witness := RowWitness.topPrime 65629 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good266_checked :
    goodSegmentCheck 110 36 76
      { lower := 67335, upper := 67337, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good267_checked :
    goodSegmentCheck 110 36 76
      { lower := 68651, upper := 68748, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good268_checked :
    goodSegmentCheck 110 36 76
      { lower := 68749, upper := 68760, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good269_checked :
    goodSegmentCheck 110 36 76
      { lower := 68782, upper := 68803, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good270_checked :
    goodSegmentCheck 110 36 76
      { lower := 68890, upper := 68891, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good271_checked :
    goodSegmentCheck 110 36 76
      { lower := 68921, upper := 68999, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good272_checked :
    goodSegmentCheck 110 36 76
      { lower := 71289, upper := 71395, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good273_checked :
    goodSegmentCheck 110 36 76
      { lower := 73101, upper := 73111, witness := RowWitness.topPrime 73091 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good274_checked :
    goodSegmentCheck 110 36 76
      { lower := 73167, upper := 73210, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good275_checked :
    goodSegmentCheck 110 36 76
      { lower := 73728, upper := 73804, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good276_checked :
    goodSegmentCheck 110 36 76
      { lower := 78141, upper := 78234, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good277_checked :
    goodSegmentCheck 110 36 76
      { lower := 85264, upper := 85278, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good278_checked :
    goodSegmentCheck 110 36 76
      { lower := 85291, upper := 85368, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good279_checked :
    goodSegmentCheck 110 36 76
      { lower := 85369, upper := 85400, witness := RowWitness.topPrime 85369 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good280_checked :
    goodSegmentCheck 110 36 76
      { lower := 85697, upper := 85792, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good281_checked :
    goodSegmentCheck 110 36 76
      { lower := 91854, upper := 91918, witness := RowWitness.topPrime 91841 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good282_checked :
    goodSegmentCheck 110 36 76
      { lower := 95052, upper := 95136, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good283_checked :
    goodSegmentCheck 110 36 76
      { lower := 95137, upper := 95157, witness := RowWitness.topPrime 95131 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good284_checked :
    goodSegmentCheck 110 36 76
      { lower := 96026, upper := 96031, witness := RowWitness.topPrime 96017 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good285_checked :
    goodSegmentCheck 110 36 76
      { lower := 102973, upper := 102994, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good286_checked :
    goodSegmentCheck 110 36 76
      { lower := 103041, upper := 103082, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good287_checked :
    goodSegmentCheck 110 36 76
      { lower := 106097, upper := 106196, witness := RowWitness.topPrime 106087 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_good288_checked :
    goodSegmentCheck 110 36 76
      { lower := 106197, upper := 106199, witness := RowWitness.topPrime 106189 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good289_checked :
    goodSegmentCheck 110 36 76
      { lower := 116699, upper := 116712, witness := RowWitness.topPrime 116689 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good290_checked :
    goodSegmentCheck 110 36 76
      { lower := 118815, upper := 118910, witness := RowWitness.topPrime 118801 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good291_checked :
    goodSegmentCheck 110 36 76
      { lower := 118911, upper := 118919, witness := RowWitness.topPrime 118907 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good292_checked :
    goodSegmentCheck 110 36 76
      { lower := 122412, upper := 122426, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good293_checked :
    goodSegmentCheck 110 36 76
      { lower := 137842, upper := 137890, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good294_checked :
    goodSegmentCheck 110 36 76
      { lower := 137917, upper := 137951, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good295_checked :
    goodSegmentCheck 110 36 76
      { lower := 142578, upper := 142681, witness := RowWitness.topPrime 142573 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good296_checked :
    goodSegmentCheck 110 36 76
      { lower := 142814, upper := 142914, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good297_checked :
    goodSegmentCheck 110 36 76
      { lower := 148877, upper := 148946, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good298_checked :
    goodSegmentCheck 110 36 76
      { lower := 148955, upper := 148986, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row110_good299_checked :
    goodSegmentCheck 110 36 76
      { lower := 327701, upper := 327789, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 110) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good293_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good294_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good295_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good296_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good297_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good298_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_good299_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_goods_checked :
    row110.goods.all (goodSegmentCheck row110.height.i row110.height.r row110.height.s) = true := by
  change row110_goods.all (goodSegmentCheck 110 36 76) = true
  simp only [row110_goods, List.all_cons, List.all_nil,
    row110_good000_checked,
    row110_good001_checked,
    row110_good002_checked,
    row110_good003_checked,
    row110_good004_checked,
    row110_good005_checked,
    row110_good006_checked,
    row110_good007_checked,
    row110_good008_checked,
    row110_good009_checked,
    row110_good010_checked,
    row110_good011_checked,
    row110_good012_checked,
    row110_good013_checked,
    row110_good014_checked,
    row110_good015_checked,
    row110_good016_checked,
    row110_good017_checked,
    row110_good018_checked,
    row110_good019_checked,
    row110_good020_checked,
    row110_good021_checked,
    row110_good022_checked,
    row110_good023_checked,
    row110_good024_checked,
    row110_good025_checked,
    row110_good026_checked,
    row110_good027_checked,
    row110_good028_checked,
    row110_good029_checked,
    row110_good030_checked,
    row110_good031_checked,
    row110_good032_checked,
    row110_good033_checked,
    row110_good034_checked,
    row110_good035_checked,
    row110_good036_checked,
    row110_good037_checked,
    row110_good038_checked,
    row110_good039_checked,
    row110_good040_checked,
    row110_good041_checked,
    row110_good042_checked,
    row110_good043_checked,
    row110_good044_checked,
    row110_good045_checked,
    row110_good046_checked,
    row110_good047_checked,
    row110_good048_checked,
    row110_good049_checked,
    row110_good050_checked,
    row110_good051_checked,
    row110_good052_checked,
    row110_good053_checked,
    row110_good054_checked,
    row110_good055_checked,
    row110_good056_checked,
    row110_good057_checked,
    row110_good058_checked,
    row110_good059_checked,
    row110_good060_checked,
    row110_good061_checked,
    row110_good062_checked,
    row110_good063_checked,
    row110_good064_checked,
    row110_good065_checked,
    row110_good066_checked,
    row110_good067_checked,
    row110_good068_checked,
    row110_good069_checked,
    row110_good070_checked,
    row110_good071_checked,
    row110_good072_checked,
    row110_good073_checked,
    row110_good074_checked,
    row110_good075_checked,
    row110_good076_checked,
    row110_good077_checked,
    row110_good078_checked,
    row110_good079_checked,
    row110_good080_checked,
    row110_good081_checked,
    row110_good082_checked,
    row110_good083_checked,
    row110_good084_checked,
    row110_good085_checked,
    row110_good086_checked,
    row110_good087_checked,
    row110_good088_checked,
    row110_good089_checked,
    row110_good090_checked,
    row110_good091_checked,
    row110_good092_checked,
    row110_good093_checked,
    row110_good094_checked,
    row110_good095_checked,
    row110_good096_checked,
    row110_good097_checked,
    row110_good098_checked,
    row110_good099_checked,
    row110_good100_checked,
    row110_good101_checked,
    row110_good102_checked,
    row110_good103_checked,
    row110_good104_checked,
    row110_good105_checked,
    row110_good106_checked,
    row110_good107_checked,
    row110_good108_checked,
    row110_good109_checked,
    row110_good110_checked,
    row110_good111_checked,
    row110_good112_checked,
    row110_good113_checked,
    row110_good114_checked,
    row110_good115_checked,
    row110_good116_checked,
    row110_good117_checked,
    row110_good118_checked,
    row110_good119_checked,
    row110_good120_checked,
    row110_good121_checked,
    row110_good122_checked,
    row110_good123_checked,
    row110_good124_checked,
    row110_good125_checked,
    row110_good126_checked,
    row110_good127_checked,
    row110_good128_checked,
    row110_good129_checked,
    row110_good130_checked,
    row110_good131_checked,
    row110_good132_checked,
    row110_good133_checked,
    row110_good134_checked,
    row110_good135_checked,
    row110_good136_checked,
    row110_good137_checked,
    row110_good138_checked,
    row110_good139_checked,
    row110_good140_checked,
    row110_good141_checked,
    row110_good142_checked,
    row110_good143_checked,
    row110_good144_checked,
    row110_good145_checked,
    row110_good146_checked,
    row110_good147_checked,
    row110_good148_checked,
    row110_good149_checked,
    row110_good150_checked,
    row110_good151_checked,
    row110_good152_checked,
    row110_good153_checked,
    row110_good154_checked,
    row110_good155_checked,
    row110_good156_checked,
    row110_good157_checked,
    row110_good158_checked,
    row110_good159_checked,
    row110_good160_checked,
    row110_good161_checked,
    row110_good162_checked,
    row110_good163_checked,
    row110_good164_checked,
    row110_good165_checked,
    row110_good166_checked,
    row110_good167_checked,
    row110_good168_checked,
    row110_good169_checked,
    row110_good170_checked,
    row110_good171_checked,
    row110_good172_checked,
    row110_good173_checked,
    row110_good174_checked,
    row110_good175_checked,
    row110_good176_checked,
    row110_good177_checked,
    row110_good178_checked,
    row110_good179_checked,
    row110_good180_checked,
    row110_good181_checked,
    row110_good182_checked,
    row110_good183_checked,
    row110_good184_checked,
    row110_good185_checked,
    row110_good186_checked,
    row110_good187_checked,
    row110_good188_checked,
    row110_good189_checked,
    row110_good190_checked,
    row110_good191_checked,
    row110_good192_checked,
    row110_good193_checked,
    row110_good194_checked,
    row110_good195_checked,
    row110_good196_checked,
    row110_good197_checked,
    row110_good198_checked,
    row110_good199_checked,
    row110_good200_checked,
    row110_good201_checked,
    row110_good202_checked,
    row110_good203_checked,
    row110_good204_checked,
    row110_good205_checked,
    row110_good206_checked,
    row110_good207_checked,
    row110_good208_checked,
    row110_good209_checked,
    row110_good210_checked,
    row110_good211_checked,
    row110_good212_checked,
    row110_good213_checked,
    row110_good214_checked,
    row110_good215_checked,
    row110_good216_checked,
    row110_good217_checked,
    row110_good218_checked,
    row110_good219_checked,
    row110_good220_checked,
    row110_good221_checked,
    row110_good222_checked,
    row110_good223_checked,
    row110_good224_checked,
    row110_good225_checked,
    row110_good226_checked,
    row110_good227_checked,
    row110_good228_checked,
    row110_good229_checked,
    row110_good230_checked,
    row110_good231_checked,
    row110_good232_checked,
    row110_good233_checked,
    row110_good234_checked,
    row110_good235_checked,
    row110_good236_checked,
    row110_good237_checked,
    row110_good238_checked,
    row110_good239_checked,
    row110_good240_checked,
    row110_good241_checked,
    row110_good242_checked,
    row110_good243_checked,
    row110_good244_checked,
    row110_good245_checked,
    row110_good246_checked,
    row110_good247_checked,
    row110_good248_checked,
    row110_good249_checked,
    row110_good250_checked,
    row110_good251_checked,
    row110_good252_checked,
    row110_good253_checked,
    row110_good254_checked,
    row110_good255_checked,
    row110_good256_checked,
    row110_good257_checked,
    row110_good258_checked,
    row110_good259_checked,
    row110_good260_checked,
    row110_good261_checked,
    row110_good262_checked,
    row110_good263_checked,
    row110_good264_checked,
    row110_good265_checked,
    row110_good266_checked,
    row110_good267_checked,
    row110_good268_checked,
    row110_good269_checked,
    row110_good270_checked,
    row110_good271_checked,
    row110_good272_checked,
    row110_good273_checked,
    row110_good274_checked,
    row110_good275_checked,
    row110_good276_checked,
    row110_good277_checked,
    row110_good278_checked,
    row110_good279_checked,
    row110_good280_checked,
    row110_good281_checked,
    row110_good282_checked,
    row110_good283_checked,
    row110_good284_checked,
    row110_good285_checked,
    row110_good286_checked,
    row110_good287_checked,
    row110_good288_checked,
    row110_good289_checked,
    row110_good290_checked,
    row110_good291_checked,
    row110_good292_checked,
    row110_good293_checked,
    row110_good294_checked,
    row110_good295_checked,
    row110_good296_checked,
    row110_good297_checked,
    row110_good298_checked,
    row110_good299_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_registered :
    decide (row110.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row110_small_checked :
    coverCheck (2 * row110.height.i + 2) (row110.height.i * (row110.height.i - 1) - 1)
      (row110.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row110_layerCover_checked :
    coverCheck (row110.height.i * (row110.height.i - 1)) (row110.height.n0 - 1)
      (row110.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row110_bounds : List NatInterval :=
  [(222, 320), (321, 426), (427, 530), (531, 632), (633, 740), (741, 848), (849, 948), (949, 1056), (1057, 1160), (1161, 1262), (1263, 1368), (1369, 1476), (1477, 1580), (1581, 1688), (1689, 1778), (1779, 1886), (1887, 1988), (1989, 2096), (2097, 2198), (2199, 2288), (2289, 2396), (2397, 2502), (2503, 2612), (2613, 2718), (2719, 2828), (2829, 2928), (2929, 3036), (3037, 3146), (3147, 3246), (3247, 3338), (3339, 3440), (3441, 3542), (3543, 3650), (3651, 3752), (3753, 3848), (3849, 3956), (3957, 4056), (4057, 4166), (4167, 4268), (4269, 4370), (4371, 4472), (4473, 4572), (4573, 4676), (4677, 4782), (4783, 4892), (4893, 4998), (4999, 5108), (5109, 5216), (5217, 5318), (5319, 5418), (5419, 5528), (5529, 5636), (5637, 5732), (5733, 5826), (5827, 5936), (5937, 6036), (6037, 6146), (6147, 6252), (6253, 6356), (6357, 6462), (6463, 6560), (6561, 6662), (6663, 6770), (6771, 6872), (6873, 6980), (6981, 7086), (7087, 7188), (7189, 7296), (7297, 7406), (7407, 7502), (7503, 7608), (7609, 7716), (7717, 7826), (7827, 7932), (7933, 8042), (8043, 8148), (8149, 8256), (8257, 8352), (8353, 8462), (8463, 8570), (8571, 8672), (8673, 8778), (8779, 8888), (8889, 8996), (8997, 9080), (9081, 9176), (9177, 9282), (9283, 9392), (9393, 9500), (9501, 9606), (9607, 9710), (9711, 9806), (9807, 9912), (9913, 10016), (10017, 10118), (10119, 10220), (10221, 10320), (10321, 10430), (10431, 10538), (10539, 10640), (10641, 10748), (10749, 10848), (10849, 10956), (10957, 11066), (11067, 11168), (11169, 11270), (11271, 11370), (11371, 11478), (11479, 11580), (11581, 11688), (11689, 11798), (11799, 11898), (11899, 11989), (12321, 12410), (12411, 12430), (12482, 12588), (12589, 12602), (12696, 12724), (13182, 13286), (13287, 13363), (13454, 13560), (13561, 13565), (13718, 13820), (13821, 13887), (13924, 13960), (14297, 14402), (14403, 14510), (14511, 14515), (14641, 14689), (14739, 14750), (14792, 14892), (14893, 14921), (15123, 15230), (15231, 15238), (15341, 15440), (15441, 15488), (15870, 15951), (15979, 15979), (15987, 16082), (16083, 16096), (16384, 16490), (16491, 16493), (16807, 16896), (16897, 16929), (17405, 17407), (17496, 17514), (17576, 17605), (17661, 17768), (17769, 17770), (18259, 18334), (18490, 18590), (18591, 18600), (18605, 18611), (18750, 18858), (18859, 18859), (19208, 19316), (19317, 19317), (19663, 19770), (19771, 19792), (19881, 19882), (20172, 20270), (20271, 20290), (20402, 20508), (20509, 20521), (20535, 20642), (20643, 20644), (20667, 20686), (21142, 21248), (21249, 21251), (21316, 21327), (21866, 21972), (21973, 22013), (22103, 22202), (22203, 22212), (22472, 22578), (22579, 22581), (23548, 23643), (23763, 23870), (23871, 23871), (24025, 24132), (24133, 24146), (24334, 24438), (24439, 24476), (24576, 24680), (24681, 24685), (25215, 25298), (25299, 25324), (26047, 26120), (26411, 26473), (26508, 26520), (26934, 27005), (27436, 27489), (28577, 28670), (28672, 28686), (28717, 28820), (28821, 28858), (29584, 29587), (29791, 29877), (30258, 30355), (30618, 30702), (30703, 30712), (30926, 31008), (31213, 31302), (31303, 31322), (31329, 31359), (31423, 31506), (31507, 31542), (31974, 32048), (32805, 32912), (32913, 32914), (32955, 32965), (33620, 33728), (33729, 33729), (34295, 34334), (34347, 34446), (34447, 34500), (35152, 35240), (35301, 35400), (35401, 35410), (36015, 36021), (36517, 36606), (36607, 36610), (36982, 37088), (37089, 37089), (37210, 37288), (37303, 37319), (37349, 37412), (37446, 37458), (37553, 37555), (37636, 37662), (39326, 39432), (39433, 39435), (39605, 39655), (40344, 40452), (40453, 40453), (40817, 40913), (40960, 41040), (41772, 41852), (42025, 42080), (42527, 42545), (42632, 42636), (43740, 43796), (44217, 44289), (44944, 44999), (46225, 46246), (47526, 47630), (47631, 47633), (48013, 48090), (48091, 48122), (48734, 48842), (48843, 48843), (49152, 49239), (50421, 50519), (50653, 50671), (53371, 53399), (55451, 55550), (55551, 55556), (56180, 56278), (57344, 57354), (58989, 59088), (59089, 59098), (59582, 59645), (62500, 62519), (63948, 63978), (65536, 65630), (65631, 65645), (67335, 67337), (68651, 68748), (68749, 68760), (68782, 68803), (68890, 68891), (68921, 68999), (71289, 71395), (73101, 73111), (73167, 73210), (73728, 73804), (78141, 78234), (85264, 85278), (85291, 85368), (85369, 85400), (85697, 85792), (91854, 91918), (95052, 95136), (95137, 95157), (96026, 96031), (102973, 102994), (103041, 103082), (106097, 106196), (106197, 106199), (116699, 116712), (118815, 118910), (118911, 118919), (122412, 122426), (137842, 137890), (137917, 137951), (142578, 142681), (142814, 142914), (148877, 148946), (148955, 148986), (327701, 327789)]

theorem row110_bounds_eq : row110.goods.map goodSegmentBounds = row110_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row110_layer000_intervals : List ColouredInterval :=
  [(2, 12288, 12397), (2, 13312, 13421), (2, 14336, 14445), (2, 15360, 15469), (2, 12288, 12397), (2, 14336, 14445), (2, 16384, 16493), (2, 18432, 18541), (2, 20480, 20589), (2, 22528, 22637), (2, 12288, 12397), (2, 16384, 16493), (2, 20480, 20589), (2, 16384, 16493), (2, 16384, 16493), (3, 12393, 12502), (3, 13122, 13231), (3, 13851, 13960), (3, 14580, 14689), (3, 15309, 15418), (3, 16038, 16147), (3, 16767, 16876), (3, 17496, 17605), (3, 18225, 18334), (3, 18954, 19063), (3, 19683, 19792), (3, 20412, 20521), (3, 21141, 21250), (3, 21870, 21979), (3, 13122, 13231), (3, 15309, 15418), (3, 17496, 17605), (3, 19683, 19792), (3, 21870, 21979), (3, 13122, 13231), (3, 19683, 19792), (3, 19683, 19792), (5, 12500, 12609), (5, 15625, 15734), (5, 18750, 18859), (5, 15625, 15734), (7, 12005, 12114), (7, 14406, 14515), (7, 16807, 16916), (7, 19208, 19317), (7, 21609, 21718), (7, 16807, 16916), (11, 14641, 14750), (13, 13182, 13291), (13, 15379, 15488), (13, 17576, 17685), (13, 19773, 19882), (13, 21970, 22079), (17, 14739, 14848), (17, 19652, 19761), (19, 13718, 13827), (19, 20577, 20686), (23, 12167, 12276), (23, 12696, 12805), (23, 13225, 13334), (23, 13754, 13863), (23, 14283, 14392), (23, 14812, 14921), (23, 15341, 15450), (23, 15870, 15979), (23, 12167, 12276), (29, 12615, 12724), (29, 13456, 13565), (29, 14297, 14406), (29, 15138, 15247), (29, 15979, 16088), (29, 16820, 16929), (29, 17661, 17770), (29, 18502, 18611), (29, 19343, 19452), (29, 20184, 20293), (29, 21025, 21134), (29, 21866, 21975), (29, 22707, 22816), (29, 23548, 23657), (31, 12493, 12602), (31, 13454, 13563), (31, 14415, 14524), (31, 15376, 15485), (31, 16337, 16446), (31, 17298, 17407), (31, 18259, 18368), (31, 19220, 19329), (31, 20181, 20290), (31, 21142, 21251), (31, 22103, 22212), (31, 23064, 23173), (37, 12321, 12430), (37, 13690, 13799), (37, 15059, 15168), (37, 16428, 16537), (37, 17797, 17906), (37, 19166, 19275), (37, 20535, 20644), (37, 21904, 22013), (37, 23273, 23382), (41, 13448, 13557), (41, 15129, 15238), (41, 16810, 16919), (41, 18491, 18600), (41, 20172, 20281), (41, 21853, 21962), (41, 23534, 23643), (43, 12943, 13052), (43, 14792, 14901), (43, 16641, 16750), (43, 18490, 18599), (43, 20339, 20448), (43, 22188, 22297), (47, 13254, 13363), (47, 15463, 15572), (47, 17672, 17781), (47, 19881, 19990), (47, 22090, 22199), (53, 14045, 14154), (53, 16854, 16963), (53, 19663, 19772), (53, 22472, 22581), (59, 13924, 14033), (59, 17405, 17514), (59, 20886, 20995), (61, 14884, 14993), (61, 18605, 18714), (61, 22326, 22435), (67, 13467, 13576), (67, 17956, 18065), (67, 22445, 22554), (71, 15123, 15232), (71, 20164, 20273), (73, 15987, 16096), (73, 21316, 21425), (79, 12482, 12591), (79, 18723, 18832), (83, 13778, 13887), (83, 20667, 20776), (89, 15842, 15951), (89, 23763, 23872), (97, 18818, 18927), (101, 20402, 20511), (103, 21218, 21327), (107, 22898, 23007), (109, 11990, 11990), (109, 23762, 23871)]

def row110_layer000_block000 : List ColouredInterval :=
  [(2, 12288, 12397), (2, 13312, 13421), (2, 14336, 14445), (2, 15360, 15469), (2, 12288, 12397), (2, 14336, 14445), (2, 16384, 16493), (2, 18432, 18541), (2, 20480, 20589), (2, 22528, 22637), (2, 12288, 12397), (2, 16384, 16493), (2, 20480, 20589)]

def row110_layer000_block001 : List ColouredInterval :=
  [(2, 16384, 16493), (2, 16384, 16493), (3, 12393, 12502), (3, 13122, 13231), (3, 13851, 13960), (3, 14580, 14689), (3, 15309, 15418), (3, 16038, 16147), (3, 16767, 16876), (3, 17496, 17605), (3, 18225, 18334), (3, 18954, 19063), (3, 19683, 19792)]

def row110_layer000_block002 : List ColouredInterval :=
  [(3, 20412, 20521), (3, 21141, 21250), (3, 21870, 21979), (3, 13122, 13231), (3, 15309, 15418), (3, 17496, 17605), (3, 19683, 19792), (3, 21870, 21979), (3, 13122, 13231), (3, 19683, 19792), (3, 19683, 19792), (5, 12500, 12609), (5, 15625, 15734)]

def row110_layer000_block003 : List ColouredInterval :=
  [(5, 18750, 18859), (5, 15625, 15734), (7, 12005, 12114), (7, 14406, 14515), (7, 16807, 16916), (7, 19208, 19317), (7, 21609, 21718), (7, 16807, 16916), (11, 14641, 14750), (13, 13182, 13291), (13, 15379, 15488), (13, 17576, 17685), (13, 19773, 19882)]

def row110_layer000_block004 : List ColouredInterval :=
  [(13, 21970, 22079), (17, 14739, 14848), (17, 19652, 19761), (19, 13718, 13827), (19, 20577, 20686), (23, 12167, 12276), (23, 12696, 12805), (23, 13225, 13334), (23, 13754, 13863), (23, 14283, 14392), (23, 14812, 14921), (23, 15341, 15450), (23, 15870, 15979)]

def row110_layer000_block005 : List ColouredInterval :=
  [(23, 12167, 12276), (29, 12615, 12724), (29, 13456, 13565), (29, 14297, 14406), (29, 15138, 15247), (29, 15979, 16088), (29, 16820, 16929), (29, 17661, 17770), (29, 18502, 18611), (29, 19343, 19452), (29, 20184, 20293), (29, 21025, 21134), (29, 21866, 21975)]

def row110_layer000_block006 : List ColouredInterval :=
  [(29, 22707, 22816), (29, 23548, 23657), (31, 12493, 12602), (31, 13454, 13563), (31, 14415, 14524), (31, 15376, 15485), (31, 16337, 16446), (31, 17298, 17407), (31, 18259, 18368), (31, 19220, 19329), (31, 20181, 20290), (31, 21142, 21251), (31, 22103, 22212)]

def row110_layer000_block007 : List ColouredInterval :=
  [(31, 23064, 23173), (37, 12321, 12430), (37, 13690, 13799), (37, 15059, 15168), (37, 16428, 16537), (37, 17797, 17906), (37, 19166, 19275), (37, 20535, 20644), (37, 21904, 22013), (37, 23273, 23382), (41, 13448, 13557), (41, 15129, 15238), (41, 16810, 16919)]

def row110_layer000_block008 : List ColouredInterval :=
  [(41, 18491, 18600), (41, 20172, 20281), (41, 21853, 21962), (41, 23534, 23643), (43, 12943, 13052), (43, 14792, 14901), (43, 16641, 16750), (43, 18490, 18599), (43, 20339, 20448), (43, 22188, 22297), (47, 13254, 13363), (47, 15463, 15572), (47, 17672, 17781)]

def row110_layer000_block009 : List ColouredInterval :=
  [(47, 19881, 19990), (47, 22090, 22199), (53, 14045, 14154), (53, 16854, 16963), (53, 19663, 19772), (53, 22472, 22581), (59, 13924, 14033), (59, 17405, 17514), (59, 20886, 20995), (61, 14884, 14993), (61, 18605, 18714), (61, 22326, 22435), (67, 13467, 13576)]

def row110_layer000_block010 : List ColouredInterval :=
  [(67, 17956, 18065), (67, 22445, 22554), (71, 15123, 15232), (71, 20164, 20273), (73, 15987, 16096), (73, 21316, 21425), (79, 12482, 12591), (79, 18723, 18832), (83, 13778, 13887), (83, 20667, 20776), (89, 15842, 15951), (89, 23763, 23872), (97, 18818, 18927)]

def row110_layer000_block011 : List ColouredInterval :=
  [(101, 20402, 20511), (103, 21218, 21327), (107, 22898, 23007), (109, 11990, 11990), (109, 23762, 23871)]

def row110_layer000_chunks : List (List ColouredInterval) :=
  [row110_layer000_block000, row110_layer000_block001, row110_layer000_block002, row110_layer000_block003, row110_layer000_block004, row110_layer000_block005, row110_layer000_block006, row110_layer000_block007, row110_layer000_block008, row110_layer000_block009, row110_layer000_block010, row110_layer000_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_arithmetic : LayerArithmeticValid row110.height { lower := 11990, upper := 23980, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_enumeration :
    activePowerIntervalList 110 30 11990 23980 = row110_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs000 :
    row110_layer000_block000.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs001 :
    row110_layer000_block001.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs002 :
    row110_layer000_block002.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs003 :
    row110_layer000_block003.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs004 :
    row110_layer000_block004.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs005 :
    row110_layer000_block005.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs005
