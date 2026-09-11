import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row080_height : HeightCertificateDatum := { i := 80, r := 26, s := 55, n0Power10 := 12 }

def row080_goods : List GoodSegment := [
  { lower := 162, upper := 236, witness := RowWitness.topPrime 157 },
  { lower := 237, upper := 312, witness := RowWitness.topPrime 233 },
  { lower := 313, upper := 392, witness := RowWitness.topPrime 313 },
  { lower := 393, upper := 468, witness := RowWitness.topPrime 389 },
  { lower := 469, upper := 546, witness := RowWitness.topPrime 467 },
  { lower := 547, upper := 626, witness := RowWitness.topPrime 547 },
  { lower := 627, upper := 698, witness := RowWitness.topPrime 619 },
  { lower := 699, upper := 770, witness := RowWitness.topPrime 691 },
  { lower := 771, upper := 848, witness := RowWitness.topPrime 769 },
  { lower := 849, upper := 918, witness := RowWitness.topPrime 839 },
  { lower := 919, upper := 998, witness := RowWitness.topPrime 919 },
  { lower := 999, upper := 1076, witness := RowWitness.topPrime 997 },
  { lower := 1077, upper := 1148, witness := RowWitness.topPrime 1069 },
  { lower := 1149, upper := 1208, witness := RowWitness.topPrime 1129 },
  { lower := 1209, upper := 1280, witness := RowWitness.topPrime 1201 },
  { lower := 1281, upper := 1358, witness := RowWitness.topPrime 1279 },
  { lower := 1359, upper := 1406, witness := RowWitness.topPrime 1327 },
  { lower := 1407, upper := 1478, witness := RowWitness.topPrime 1399 },
  { lower := 1479, upper := 1550, witness := RowWitness.topPrime 1471 },
  { lower := 1551, upper := 1628, witness := RowWitness.topPrime 1549 },
  { lower := 1629, upper := 1706, witness := RowWitness.topPrime 1627 },
  { lower := 1707, upper := 1778, witness := RowWitness.topPrime 1699 },
  { lower := 1779, upper := 1856, witness := RowWitness.topPrime 1777 },
  { lower := 1857, upper := 1926, witness := RowWitness.topPrime 1847 },
  { lower := 1927, upper := 1992, witness := RowWitness.topPrime 1913 },
  { lower := 1993, upper := 2072, witness := RowWitness.topPrime 1993 },
  { lower := 2073, upper := 2148, witness := RowWitness.topPrime 2069 },
  { lower := 2149, upper := 2222, witness := RowWitness.topPrime 2143 },
  { lower := 2223, upper := 2300, witness := RowWitness.topPrime 2221 },
  { lower := 2301, upper := 2376, witness := RowWitness.topPrime 2297 },
  { lower := 2377, upper := 2456, witness := RowWitness.topPrime 2377 },
  { lower := 2457, upper := 2526, witness := RowWitness.topPrime 2447 },
  { lower := 2527, upper := 2600, witness := RowWitness.topPrime 2521 },
  { lower := 2601, upper := 2672, witness := RowWitness.topPrime 2593 },
  { lower := 2673, upper := 2750, witness := RowWitness.topPrime 2671 },
  { lower := 2751, upper := 2828, witness := RowWitness.topPrime 2749 },
  { lower := 2829, upper := 2898, witness := RowWitness.topPrime 2819 },
  { lower := 2899, upper := 2976, witness := RowWitness.topPrime 2897 },
  { lower := 2977, upper := 3050, witness := RowWitness.topPrime 2971 },
  { lower := 3051, upper := 3128, witness := RowWitness.topPrime 3049 },
  { lower := 3129, upper := 3200, witness := RowWitness.topPrime 3121 },
  { lower := 3201, upper := 3270, witness := RowWitness.topPrime 3191 },
  { lower := 3271, upper := 3350, witness := RowWitness.topPrime 3271 },
  { lower := 3351, upper := 3426, witness := RowWitness.topPrime 3347 },
  { lower := 3427, upper := 3492, witness := RowWitness.topPrime 3413 },
  { lower := 3493, upper := 3570, witness := RowWitness.topPrime 3491 },
  { lower := 3571, upper := 3650, witness := RowWitness.topPrime 3571 },
  { lower := 3651, upper := 3722, witness := RowWitness.topPrime 3643 },
  { lower := 3723, upper := 3798, witness := RowWitness.topPrime 3719 },
  { lower := 3799, upper := 3876, witness := RowWitness.topPrime 3797 },
  { lower := 3877, upper := 3956, witness := RowWitness.topPrime 3877 },
  { lower := 3957, upper := 4026, witness := RowWitness.topPrime 3947 },
  { lower := 4027, upper := 4106, witness := RowWitness.topPrime 4027 },
  { lower := 4107, upper := 4178, witness := RowWitness.topPrime 4099 },
  { lower := 4179, upper := 4256, witness := RowWitness.topPrime 4177 },
  { lower := 4257, upper := 4332, witness := RowWitness.topPrime 4253 },
  { lower := 4333, upper := 4406, witness := RowWitness.topPrime 4327 },
  { lower := 4407, upper := 4476, witness := RowWitness.topPrime 4397 },
  { lower := 4477, upper := 4542, witness := RowWitness.topPrime 4463 },
  { lower := 4543, upper := 4602, witness := RowWitness.topPrime 4523 },
  { lower := 4603, upper := 4682, witness := RowWitness.topPrime 4603 },
  { lower := 4683, upper := 4758, witness := RowWitness.topPrime 4679 },
  { lower := 4759, upper := 4838, witness := RowWitness.topPrime 4759 },
  { lower := 4839, upper := 4910, witness := RowWitness.topPrime 4831 },
  { lower := 4911, upper := 4988, witness := RowWitness.topPrime 4909 },
  { lower := 4989, upper := 5066, witness := RowWitness.topPrime 4987 },
  { lower := 5067, upper := 5138, witness := RowWitness.topPrime 5059 },
  { lower := 5139, upper := 5198, witness := RowWitness.topPrime 5119 },
  { lower := 5199, upper := 5276, witness := RowWitness.topPrime 5197 },
  { lower := 5277, upper := 5352, witness := RowWitness.topPrime 5273 },
  { lower := 5353, upper := 5430, witness := RowWitness.topPrime 5351 },
  { lower := 5431, upper := 5510, witness := RowWitness.topPrime 5431 },
  { lower := 5511, upper := 5586, witness := RowWitness.topPrime 5507 },
  { lower := 5587, upper := 5660, witness := RowWitness.topPrime 5581 },
  { lower := 5661, upper := 5738, witness := RowWitness.topPrime 5659 },
  { lower := 5739, upper := 5816, witness := RowWitness.topPrime 5737 },
  { lower := 5817, upper := 5892, witness := RowWitness.topPrime 5813 },
  { lower := 5893, upper := 5960, witness := RowWitness.topPrime 5881 },
  { lower := 5961, upper := 6032, witness := RowWitness.topPrime 5953 },
  { lower := 6033, upper := 6108, witness := RowWitness.topPrime 6029 },
  { lower := 6109, upper := 6180, witness := RowWitness.topPrime 6101 },
  { lower := 6181, upper := 6252, witness := RowWitness.topPrime 6173 },
  { lower := 6253, upper := 6326, witness := RowWitness.topPrime 6247 },
  { lower := 6327, upper := 6329, witness := RowWitness.topPrime 6323 },
  { lower := 6348, upper := 6422, witness := RowWitness.topPrime 6343 },
  { lower := 6423, upper := 6427, witness := RowWitness.topPrime 6421 },
  { lower := 6517, upper := 6570, witness := RowWitness.topPrime 6491 },
  { lower := 6571, upper := 6650, witness := RowWitness.topPrime 6571 },
  { lower := 6651, upper := 6716, witness := RowWitness.topPrime 6637 },
  { lower := 6717, upper := 6788, witness := RowWitness.topPrime 6709 },
  { lower := 6789, upper := 6807, witness := RowWitness.topPrime 6781 },
  { lower := 6845, upper := 6920, witness := RowWitness.topPrime 6841 },
  { lower := 6921, upper := 6956, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7015, witness := RowWitness.topPrime 6961 },
  { lower := 7220, upper := 7298, witness := RowWitness.topPrime 7219 },
  { lower := 7299, upper := 7304, witness := RowWitness.topPrime 7297 },
  { lower := 7406, upper := 7472, witness := RowWitness.topPrime 7393 },
  { lower := 7473, upper := 7485, witness := RowWitness.topPrime 7459 },
  { lower := 7514, upper := 7521, witness := RowWitness.topPrime 7507 },
  { lower := 7533, upper := 7608, witness := RowWitness.topPrime 7529 },
  { lower := 7609, upper := 7648, witness := RowWitness.topPrime 7607 },
  { lower := 7935, upper := 8012, witness := RowWitness.topPrime 7933 },
  { lower := 8013, upper := 8065, witness := RowWitness.topPrime 8011 },
  { lower := 8092, upper := 8098, witness := RowWitness.topPrime 8089 },
  { lower := 8214, upper := 8288, witness := RowWitness.topPrime 8209 },
  { lower := 8289, upper := 8293, witness := RowWitness.topPrime 8287 },
  { lower := 8303, upper := 8311, witness := RowWitness.topPrime 8297 },
  { lower := 8381, upper := 8382, witness := RowWitness.topPrime 8377 },
  { lower := 8405, upper := 8468, witness := RowWitness.topPrime 8389 },
  { lower := 8469, upper := 8506, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8654, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8742, witness := RowWitness.topPrime 8663 },
  { lower := 8743, upper := 8743, witness := RowWitness.topPrime 8741 },
  { lower := 8748, upper := 8749, witness := RowWitness.topPrime 8747 },
  { lower := 8788, upper := 8827, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8867, witness := RowWitness.topPrime 8831 },
  { lower := 8959, upper := 9030, witness := RowWitness.topPrime 8951 },
  { lower := 9031, upper := 9072, witness := RowWitness.topPrime 9029 },
  { lower := 9251, upper := 9320, witness := RowWitness.topPrime 9241 },
  { lower := 9321, upper := 9340, witness := RowWitness.topPrime 9319 },
  { lower := 9375, upper := 9450, witness := RowWitness.topPrime 9371 },
  { lower := 9451, upper := 9454, witness := RowWitness.topPrime 9439 },
  { lower := 9522, upper := 9556, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9601, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9680, witness := RowWitness.topPrime 9601 },
  { lower := 9681, upper := 9683, witness := RowWitness.topPrime 9679 },
  { lower := 9826, upper := 9826, witness := RowWitness.topPrime 9817 },
  { lower := 10082, upper := 10158, witness := RowWitness.topPrime 10079 },
  { lower := 10159, upper := 10171, witness := RowWitness.topPrime 10159 },
  { lower := 10469, upper := 10522, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10646, witness := RowWitness.topPrime 10567 },
  { lower := 10647, upper := 10718, witness := RowWitness.topPrime 10639 },
  { lower := 10719, upper := 10727, witness := RowWitness.topPrime 10711 },
  { lower := 10935, upper := 10988, witness := RowWitness.topPrime 10909 },
  { lower := 10989, upper := 11031, witness := RowWitness.topPrime 10987 },
  { lower := 11045, upper := 11064, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11172, witness := RowWitness.topPrime 11093 },
  { lower := 11173, upper := 11188, witness := RowWitness.topPrime 11173 },
  { lower := 11191, upper := 11256, witness := RowWitness.topPrime 11177 },
  { lower := 11257, upper := 11270, witness := RowWitness.topPrime 11257 },
  { lower := 11664, upper := 11717, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11822, witness := RowWitness.topPrime 11743 },
  { lower := 11823, upper := 11846, witness := RowWitness.topPrime 11821 },
  { lower := 12005, upper := 12058, witness := RowWitness.topPrime 11987 },
  { lower := 12393, upper := 12400, witness := RowWitness.topPrime 12391 },
  { lower := 12493, upper := 12570, witness := RowWitness.topPrime 12491 },
  { lower := 12571, upper := 12572, witness := RowWitness.topPrime 12569 },
  { lower := 13182, upper := 13201, witness := RowWitness.topPrime 13177 },
  { lower := 13225, upper := 13298, witness := RowWitness.topPrime 13219 },
  { lower := 13299, upper := 13304, witness := RowWitness.topPrime 13297 },
  { lower := 13310, upper := 13333, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13530, witness := RowWitness.topPrime 13451 },
  { lower := 13531, upper := 13535, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13790, witness := RowWitness.topPrime 13711 },
  { lower := 13791, upper := 13797, witness := RowWitness.topPrime 13789 },
  { lower := 13924, upper := 13930, witness := RowWitness.topPrime 13921 },
  { lower := 14297, upper := 14362, witness := RowWitness.topPrime 14293 },
  { lower := 14415, upper := 14485, witness := RowWitness.topPrime 14411 },
  { lower := 14641, upper := 14659, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14818, witness := RowWitness.topPrime 14783 },
  { lower := 15123, upper := 15200, witness := RowWitness.topPrime 15121 },
  { lower := 15201, upper := 15208, witness := RowWitness.topPrime 15199 },
  { lower := 15376, upper := 15452, witness := RowWitness.topPrime 15373 },
  { lower := 15453, upper := 15455, witness := RowWitness.topPrime 15451 },
  { lower := 15979, upper := 16052, witness := RowWitness.topPrime 15973 },
  { lower := 16053, upper := 16066, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16416, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16463, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16866, witness := RowWitness.topPrime 16787 },
  { lower := 16867, upper := 16899, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17377, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17740, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18304, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18560, witness := RowWitness.topPrime 18481 },
  { lower := 18561, upper := 18570, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18684, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19286, witness := RowWitness.topPrime 19207 },
  { lower := 19287, upper := 19287, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19740, witness := RowWitness.topPrime 19661 },
  { lower := 19741, upper := 19742, witness := RowWitness.topPrime 19739 },
  { lower := 20172, upper := 20240, witness := RowWitness.topPrime 20161 },
  { lower := 20241, upper := 20260, witness := RowWitness.topPrime 20233 },
  { lower := 20577, upper := 20614, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21375, witness := RowWitness.topPrime 21313 },
  { lower := 21866, upper := 21942, witness := RowWitness.topPrime 21863 },
  { lower := 21943, upper := 21949, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21983, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22169, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22524, witness := RowWitness.topPrime 22469 },
  { lower := 24010, upper := 24086, witness := RowWitness.topPrime 24007 },
  { lower := 24087, upper := 24116, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24408, witness := RowWitness.topPrime 24329 },
  { lower := 24409, upper := 24446, witness := RowWitness.topPrime 24407 },
  { lower := 24642, upper := 24644, witness := RowWitness.topPrime 24631 },
  { lower := 24986, upper := 25043, witness := RowWitness.topPrime 24979 },
  { lower := 25215, upper := 25268, witness := RowWitness.topPrime 25189 },
  { lower := 25269, upper := 25340, witness := RowWitness.topPrime 25261 },
  { lower := 25341, upper := 25360, witness := RowWitness.topPrime 25339 },
  { lower := 26047, upper := 26090, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26443, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26699, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26975, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27459, witness := RowWitness.topPrime 27431 },
  { lower := 28577, upper := 28640, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28796, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28828, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29847, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30325, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30672, witness := RowWitness.topPrime 30593 },
  { lower := 30673, upper := 30692, witness := RowWitness.topPrime 30671 },
  { lower := 30926, upper := 30978, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31272, witness := RowWitness.topPrime 31193 },
  { lower := 31273, upper := 31292, witness := RowWitness.topPrime 31271 },
  { lower := 31329, upper := 31329, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31476, witness := RowWitness.topPrime 31397 },
  { lower := 31477, upper := 31512, witness := RowWitness.topPrime 31477 },
  { lower := 31944, upper := 31986, witness := RowWitness.topPrime 31907 },
  { lower := 31987, upper := 32023, witness := RowWitness.topPrime 31981 },
  { lower := 32805, upper := 32847, witness := RowWitness.topPrime 32803 },
  { lower := 32856, upper := 32884, witness := RowWitness.topPrime 32843 },
  { lower := 33620, upper := 33693, witness := RowWitness.topPrime 33619 },
  { lower := 35152, upper := 35210, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35370, witness := RowWitness.topPrime 35291 },
  { lower := 35371, upper := 35380, witness := RowWitness.topPrime 35363 },
  { lower := 36517, upper := 36576, witness := RowWitness.topPrime 36497 },
  { lower := 36577, upper := 36580, witness := RowWitness.topPrime 36571 },
  { lower := 36982, upper := 37058, witness := RowWitness.topPrime 36979 },
  { lower := 37059, upper := 37059, witness := RowWitness.topPrime 37057 },
  { lower := 37210, upper := 37258, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37382, witness := RowWitness.topPrime 37339 },
  { lower := 39326, upper := 39402, witness := RowWitness.topPrime 39323 },
  { lower := 39403, upper := 39405, witness := RowWitness.topPrime 39397 },
  { lower := 40344, upper := 40422, witness := RowWitness.topPrime 40343 },
  { lower := 40423, upper := 40423, witness := RowWitness.topPrime 40423 },
  { lower := 41772, upper := 41822, witness := RowWitness.topPrime 41771 },
  { lower := 43740, upper := 43766, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 44002, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44259, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44969, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48060, witness := RowWitness.topPrime 47981 },
  { lower := 48061, upper := 48092, witness := RowWitness.topPrime 48049 },
  { lower := 48373, upper := 48413, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48677, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48747, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48813, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50489, witness := RowWitness.topPrime 50417 },
  { lower := 56180, upper := 56248, witness := RowWitness.topPrime 56179 },
  { lower := 58619, upper := 58643, witness := RowWitness.topPrime 58613 },
  { lower := 58989, upper := 59035, witness := RowWitness.topPrime 58979 },
  { lower := 59049, upper := 59068, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59615, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63948, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65600, witness := RowWitness.topPrime 65521 },
  { lower := 65601, upper := 65615, witness := RowWitness.topPrime 65599 },
  { lower := 68651, upper := 68669, witness := RowWitness.topPrime 68639 },
  { lower := 73167, upper := 73180, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73246, witness := RowWitness.topPrime 73189 },
  { lower := 78141, upper := 78204, witness := RowWitness.topPrime 78139 },
  { lower := 85291, upper := 85338, witness := RowWitness.topPrime 85259 },
  { lower := 85339, upper := 85370, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85762, witness := RowWitness.topPrime 85691 },
  { lower := 100842, upper := 100899, witness := RowWitness.topPrime 100829 },
  { lower := 137842, upper := 137860, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146413, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148956, witness := RowWitness.topPrime 148949 }
]

def row080_layers : List CoverLayer := [
  { lower := 6320, upper := 12640, M := 31 },
  { lower := 12640, upper := 25280, M := 27 },
  { lower := 25280, upper := 50560, M := 24 },
  { lower := 50560, upper := 101120, M := 21 },
  { lower := 101120, upper := 202240, M := 18 },
  { lower := 202240, upper := 404480, M := 16 },
  { lower := 404480, upper := 808960, M := 14 },
  { lower := 808960, upper := 1617920, M := 12 },
  { lower := 1617920, upper := 3235840, M := 10 },
  { lower := 3235840, upper := 6471680, M := 9 },
  { lower := 6471680, upper := 12943360, M := 8 },
  { lower := 12943360, upper := 25886720, M := 7 },
  { lower := 25886720, upper := 51773440, M := 6 },
  { lower := 51773440, upper := 103546880, M := 5 },
  { lower := 103546880, upper := 207093760, M := 5 },
  { lower := 207093760, upper := 414187520, M := 4 },
  { lower := 414187520, upper := 828375040, M := 4 },
  { lower := 828375040, upper := 1656750080, M := 3 },
  { lower := 1656750080, upper := 3313500160, M := 3 },
  { lower := 3313500160, upper := 6627000320, M := 3 },
  { lower := 6627000320, upper := 13254000640, M := 2 },
  { lower := 13254000640, upper := 26508001280, M := 2 },
  { lower := 26508001280, upper := 53016002560, M := 2 },
  { lower := 53016002560, upper := 106032005120, M := 2 },
  { lower := 106032005120, upper := 212064010240, M := 2 },
  { lower := 212064010240, upper := 424128020480, M := 1 },
  { lower := 424128020480, upper := 848256040960, M := 1 },
  { lower := 848256040960, upper := 1000000000000, M := 1 }
]

def row080 : FiniteCoverRow := {
  height := row080_height,
  goods := row080_goods,
  layers := row080_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good000_checked :
    goodSegmentCheck 80 26 55
      { lower := 162, upper := 236, witness := RowWitness.topPrime 157 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good001_checked :
    goodSegmentCheck 80 26 55
      { lower := 237, upper := 312, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good002_checked :
    goodSegmentCheck 80 26 55
      { lower := 313, upper := 392, witness := RowWitness.topPrime 313 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good003_checked :
    goodSegmentCheck 80 26 55
      { lower := 393, upper := 468, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good004_checked :
    goodSegmentCheck 80 26 55
      { lower := 469, upper := 546, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good005_checked :
    goodSegmentCheck 80 26 55
      { lower := 547, upper := 626, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good006_checked :
    goodSegmentCheck 80 26 55
      { lower := 627, upper := 698, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good007_checked :
    goodSegmentCheck 80 26 55
      { lower := 699, upper := 770, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good008_checked :
    goodSegmentCheck 80 26 55
      { lower := 771, upper := 848, witness := RowWitness.topPrime 769 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good009_checked :
    goodSegmentCheck 80 26 55
      { lower := 849, upper := 918, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good010_checked :
    goodSegmentCheck 80 26 55
      { lower := 919, upper := 998, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good011_checked :
    goodSegmentCheck 80 26 55
      { lower := 999, upper := 1076, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good012_checked :
    goodSegmentCheck 80 26 55
      { lower := 1077, upper := 1148, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good013_checked :
    goodSegmentCheck 80 26 55
      { lower := 1149, upper := 1208, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good014_checked :
    goodSegmentCheck 80 26 55
      { lower := 1209, upper := 1280, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good015_checked :
    goodSegmentCheck 80 26 55
      { lower := 1281, upper := 1358, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good016_checked :
    goodSegmentCheck 80 26 55
      { lower := 1359, upper := 1406, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good017_checked :
    goodSegmentCheck 80 26 55
      { lower := 1407, upper := 1478, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good018_checked :
    goodSegmentCheck 80 26 55
      { lower := 1479, upper := 1550, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good019_checked :
    goodSegmentCheck 80 26 55
      { lower := 1551, upper := 1628, witness := RowWitness.topPrime 1549 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good020_checked :
    goodSegmentCheck 80 26 55
      { lower := 1629, upper := 1706, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good021_checked :
    goodSegmentCheck 80 26 55
      { lower := 1707, upper := 1778, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good022_checked :
    goodSegmentCheck 80 26 55
      { lower := 1779, upper := 1856, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good023_checked :
    goodSegmentCheck 80 26 55
      { lower := 1857, upper := 1926, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good024_checked :
    goodSegmentCheck 80 26 55
      { lower := 1927, upper := 1992, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good025_checked :
    goodSegmentCheck 80 26 55
      { lower := 1993, upper := 2072, witness := RowWitness.topPrime 1993 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good026_checked :
    goodSegmentCheck 80 26 55
      { lower := 2073, upper := 2148, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good027_checked :
    goodSegmentCheck 80 26 55
      { lower := 2149, upper := 2222, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good028_checked :
    goodSegmentCheck 80 26 55
      { lower := 2223, upper := 2300, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good029_checked :
    goodSegmentCheck 80 26 55
      { lower := 2301, upper := 2376, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good030_checked :
    goodSegmentCheck 80 26 55
      { lower := 2377, upper := 2456, witness := RowWitness.topPrime 2377 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good031_checked :
    goodSegmentCheck 80 26 55
      { lower := 2457, upper := 2526, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good032_checked :
    goodSegmentCheck 80 26 55
      { lower := 2527, upper := 2600, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good033_checked :
    goodSegmentCheck 80 26 55
      { lower := 2601, upper := 2672, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good034_checked :
    goodSegmentCheck 80 26 55
      { lower := 2673, upper := 2750, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good035_checked :
    goodSegmentCheck 80 26 55
      { lower := 2751, upper := 2828, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good036_checked :
    goodSegmentCheck 80 26 55
      { lower := 2829, upper := 2898, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good037_checked :
    goodSegmentCheck 80 26 55
      { lower := 2899, upper := 2976, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good038_checked :
    goodSegmentCheck 80 26 55
      { lower := 2977, upper := 3050, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good039_checked :
    goodSegmentCheck 80 26 55
      { lower := 3051, upper := 3128, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good040_checked :
    goodSegmentCheck 80 26 55
      { lower := 3129, upper := 3200, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good041_checked :
    goodSegmentCheck 80 26 55
      { lower := 3201, upper := 3270, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good042_checked :
    goodSegmentCheck 80 26 55
      { lower := 3271, upper := 3350, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good043_checked :
    goodSegmentCheck 80 26 55
      { lower := 3351, upper := 3426, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good044_checked :
    goodSegmentCheck 80 26 55
      { lower := 3427, upper := 3492, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good045_checked :
    goodSegmentCheck 80 26 55
      { lower := 3493, upper := 3570, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good046_checked :
    goodSegmentCheck 80 26 55
      { lower := 3571, upper := 3650, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good047_checked :
    goodSegmentCheck 80 26 55
      { lower := 3651, upper := 3722, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good048_checked :
    goodSegmentCheck 80 26 55
      { lower := 3723, upper := 3798, witness := RowWitness.topPrime 3719 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good049_checked :
    goodSegmentCheck 80 26 55
      { lower := 3799, upper := 3876, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good050_checked :
    goodSegmentCheck 80 26 55
      { lower := 3877, upper := 3956, witness := RowWitness.topPrime 3877 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good051_checked :
    goodSegmentCheck 80 26 55
      { lower := 3957, upper := 4026, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good052_checked :
    goodSegmentCheck 80 26 55
      { lower := 4027, upper := 4106, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good053_checked :
    goodSegmentCheck 80 26 55
      { lower := 4107, upper := 4178, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good054_checked :
    goodSegmentCheck 80 26 55
      { lower := 4179, upper := 4256, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good055_checked :
    goodSegmentCheck 80 26 55
      { lower := 4257, upper := 4332, witness := RowWitness.topPrime 4253 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good056_checked :
    goodSegmentCheck 80 26 55
      { lower := 4333, upper := 4406, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good057_checked :
    goodSegmentCheck 80 26 55
      { lower := 4407, upper := 4476, witness := RowWitness.topPrime 4397 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good058_checked :
    goodSegmentCheck 80 26 55
      { lower := 4477, upper := 4542, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good059_checked :
    goodSegmentCheck 80 26 55
      { lower := 4543, upper := 4602, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good060_checked :
    goodSegmentCheck 80 26 55
      { lower := 4603, upper := 4682, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good061_checked :
    goodSegmentCheck 80 26 55
      { lower := 4683, upper := 4758, witness := RowWitness.topPrime 4679 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good062_checked :
    goodSegmentCheck 80 26 55
      { lower := 4759, upper := 4838, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good063_checked :
    goodSegmentCheck 80 26 55
      { lower := 4839, upper := 4910, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good064_checked :
    goodSegmentCheck 80 26 55
      { lower := 4911, upper := 4988, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good065_checked :
    goodSegmentCheck 80 26 55
      { lower := 4989, upper := 5066, witness := RowWitness.topPrime 4987 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good066_checked :
    goodSegmentCheck 80 26 55
      { lower := 5067, upper := 5138, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good067_checked :
    goodSegmentCheck 80 26 55
      { lower := 5139, upper := 5198, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good068_checked :
    goodSegmentCheck 80 26 55
      { lower := 5199, upper := 5276, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good069_checked :
    goodSegmentCheck 80 26 55
      { lower := 5277, upper := 5352, witness := RowWitness.topPrime 5273 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good070_checked :
    goodSegmentCheck 80 26 55
      { lower := 5353, upper := 5430, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good071_checked :
    goodSegmentCheck 80 26 55
      { lower := 5431, upper := 5510, witness := RowWitness.topPrime 5431 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good072_checked :
    goodSegmentCheck 80 26 55
      { lower := 5511, upper := 5586, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good073_checked :
    goodSegmentCheck 80 26 55
      { lower := 5587, upper := 5660, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good074_checked :
    goodSegmentCheck 80 26 55
      { lower := 5661, upper := 5738, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good075_checked :
    goodSegmentCheck 80 26 55
      { lower := 5739, upper := 5816, witness := RowWitness.topPrime 5737 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good076_checked :
    goodSegmentCheck 80 26 55
      { lower := 5817, upper := 5892, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good077_checked :
    goodSegmentCheck 80 26 55
      { lower := 5893, upper := 5960, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good078_checked :
    goodSegmentCheck 80 26 55
      { lower := 5961, upper := 6032, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good079_checked :
    goodSegmentCheck 80 26 55
      { lower := 6033, upper := 6108, witness := RowWitness.topPrime 6029 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good080_checked :
    goodSegmentCheck 80 26 55
      { lower := 6109, upper := 6180, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good081_checked :
    goodSegmentCheck 80 26 55
      { lower := 6181, upper := 6252, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good082_checked :
    goodSegmentCheck 80 26 55
      { lower := 6253, upper := 6326, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good083_checked :
    goodSegmentCheck 80 26 55
      { lower := 6327, upper := 6329, witness := RowWitness.topPrime 6323 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good084_checked :
    goodSegmentCheck 80 26 55
      { lower := 6348, upper := 6422, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good085_checked :
    goodSegmentCheck 80 26 55
      { lower := 6423, upper := 6427, witness := RowWitness.topPrime 6421 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good086_checked :
    goodSegmentCheck 80 26 55
      { lower := 6517, upper := 6570, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good087_checked :
    goodSegmentCheck 80 26 55
      { lower := 6571, upper := 6650, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good088_checked :
    goodSegmentCheck 80 26 55
      { lower := 6651, upper := 6716, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good089_checked :
    goodSegmentCheck 80 26 55
      { lower := 6717, upper := 6788, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good090_checked :
    goodSegmentCheck 80 26 55
      { lower := 6789, upper := 6807, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good091_checked :
    goodSegmentCheck 80 26 55
      { lower := 6845, upper := 6920, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good092_checked :
    goodSegmentCheck 80 26 55
      { lower := 6921, upper := 6956, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good093_checked :
    goodSegmentCheck 80 26 55
      { lower := 6962, upper := 7015, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good094_checked :
    goodSegmentCheck 80 26 55
      { lower := 7220, upper := 7298, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good095_checked :
    goodSegmentCheck 80 26 55
      { lower := 7299, upper := 7304, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good096_checked :
    goodSegmentCheck 80 26 55
      { lower := 7406, upper := 7472, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good097_checked :
    goodSegmentCheck 80 26 55
      { lower := 7473, upper := 7485, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good098_checked :
    goodSegmentCheck 80 26 55
      { lower := 7514, upper := 7521, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good099_checked :
    goodSegmentCheck 80 26 55
      { lower := 7533, upper := 7608, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good100_checked :
    goodSegmentCheck 80 26 55
      { lower := 7609, upper := 7648, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good101_checked :
    goodSegmentCheck 80 26 55
      { lower := 7935, upper := 8012, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good102_checked :
    goodSegmentCheck 80 26 55
      { lower := 8013, upper := 8065, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good103_checked :
    goodSegmentCheck 80 26 55
      { lower := 8092, upper := 8098, witness := RowWitness.topPrime 8089 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good104_checked :
    goodSegmentCheck 80 26 55
      { lower := 8214, upper := 8288, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good105_checked :
    goodSegmentCheck 80 26 55
      { lower := 8289, upper := 8293, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good106_checked :
    goodSegmentCheck 80 26 55
      { lower := 8303, upper := 8311, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good107_checked :
    goodSegmentCheck 80 26 55
      { lower := 8381, upper := 8382, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good108_checked :
    goodSegmentCheck 80 26 55
      { lower := 8405, upper := 8468, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good109_checked :
    goodSegmentCheck 80 26 55
      { lower := 8469, upper := 8506, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good110_checked :
    goodSegmentCheck 80 26 55
      { lower := 8649, upper := 8654, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good111_checked :
    goodSegmentCheck 80 26 55
      { lower := 8664, upper := 8742, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good112_checked :
    goodSegmentCheck 80 26 55
      { lower := 8743, upper := 8743, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good113_checked :
    goodSegmentCheck 80 26 55
      { lower := 8748, upper := 8749, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good114_checked :
    goodSegmentCheck 80 26 55
      { lower := 8788, upper := 8827, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good115_checked :
    goodSegmentCheck 80 26 55
      { lower := 8836, upper := 8867, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good116_checked :
    goodSegmentCheck 80 26 55
      { lower := 8959, upper := 9030, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good117_checked :
    goodSegmentCheck 80 26 55
      { lower := 9031, upper := 9072, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good118_checked :
    goodSegmentCheck 80 26 55
      { lower := 9251, upper := 9320, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good119_checked :
    goodSegmentCheck 80 26 55
      { lower := 9321, upper := 9340, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good120_checked :
    goodSegmentCheck 80 26 55
      { lower := 9375, upper := 9450, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good121_checked :
    goodSegmentCheck 80 26 55
      { lower := 9451, upper := 9454, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good122_checked :
    goodSegmentCheck 80 26 55
      { lower := 9522, upper := 9556, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good123_checked :
    goodSegmentCheck 80 26 55
      { lower := 9583, upper := 9601, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good124_checked :
    goodSegmentCheck 80 26 55
      { lower := 9604, upper := 9680, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good125_checked :
    goodSegmentCheck 80 26 55
      { lower := 9681, upper := 9683, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good126_checked :
    goodSegmentCheck 80 26 55
      { lower := 9826, upper := 9826, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good127_checked :
    goodSegmentCheck 80 26 55
      { lower := 10082, upper := 10158, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good128_checked :
    goodSegmentCheck 80 26 55
      { lower := 10159, upper := 10171, witness := RowWitness.topPrime 10159 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good129_checked :
    goodSegmentCheck 80 26 55
      { lower := 10469, upper := 10522, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good130_checked :
    goodSegmentCheck 80 26 55
      { lower := 10580, upper := 10646, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good131_checked :
    goodSegmentCheck 80 26 55
      { lower := 10647, upper := 10718, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good132_checked :
    goodSegmentCheck 80 26 55
      { lower := 10719, upper := 10727, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good133_checked :
    goodSegmentCheck 80 26 55
      { lower := 10935, upper := 10988, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good134_checked :
    goodSegmentCheck 80 26 55
      { lower := 10989, upper := 11031, witness := RowWitness.topPrime 10987 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good135_checked :
    goodSegmentCheck 80 26 55
      { lower := 11045, upper := 11064, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good136_checked :
    goodSegmentCheck 80 26 55
      { lower := 11094, upper := 11172, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good137_checked :
    goodSegmentCheck 80 26 55
      { lower := 11173, upper := 11188, witness := RowWitness.topPrime 11173 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good138_checked :
    goodSegmentCheck 80 26 55
      { lower := 11191, upper := 11256, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good139_checked :
    goodSegmentCheck 80 26 55
      { lower := 11257, upper := 11270, witness := RowWitness.topPrime 11257 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good140_checked :
    goodSegmentCheck 80 26 55
      { lower := 11664, upper := 11717, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good141_checked :
    goodSegmentCheck 80 26 55
      { lower := 11774, upper := 11822, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good142_checked :
    goodSegmentCheck 80 26 55
      { lower := 11823, upper := 11846, witness := RowWitness.topPrime 11821 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good143_checked :
    goodSegmentCheck 80 26 55
      { lower := 12005, upper := 12058, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good144_checked :
    goodSegmentCheck 80 26 55
      { lower := 12393, upper := 12400, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good145_checked :
    goodSegmentCheck 80 26 55
      { lower := 12493, upper := 12570, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good146_checked :
    goodSegmentCheck 80 26 55
      { lower := 12571, upper := 12572, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good147_checked :
    goodSegmentCheck 80 26 55
      { lower := 13182, upper := 13201, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good148_checked :
    goodSegmentCheck 80 26 55
      { lower := 13225, upper := 13298, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good149_checked :
    goodSegmentCheck 80 26 55
      { lower := 13299, upper := 13304, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good150_checked :
    goodSegmentCheck 80 26 55
      { lower := 13310, upper := 13333, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good151_checked :
    goodSegmentCheck 80 26 55
      { lower := 13454, upper := 13530, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good152_checked :
    goodSegmentCheck 80 26 55
      { lower := 13531, upper := 13535, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good153_checked :
    goodSegmentCheck 80 26 55
      { lower := 13718, upper := 13790, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good154_checked :
    goodSegmentCheck 80 26 55
      { lower := 13791, upper := 13797, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good155_checked :
    goodSegmentCheck 80 26 55
      { lower := 13924, upper := 13930, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good156_checked :
    goodSegmentCheck 80 26 55
      { lower := 14297, upper := 14362, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good157_checked :
    goodSegmentCheck 80 26 55
      { lower := 14415, upper := 14485, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good158_checked :
    goodSegmentCheck 80 26 55
      { lower := 14641, upper := 14659, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good159_checked :
    goodSegmentCheck 80 26 55
      { lower := 14792, upper := 14818, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good160_checked :
    goodSegmentCheck 80 26 55
      { lower := 15123, upper := 15200, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good161_checked :
    goodSegmentCheck 80 26 55
      { lower := 15201, upper := 15208, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good162_checked :
    goodSegmentCheck 80 26 55
      { lower := 15376, upper := 15452, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good163_checked :
    goodSegmentCheck 80 26 55
      { lower := 15453, upper := 15455, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good164_checked :
    goodSegmentCheck 80 26 55
      { lower := 15979, upper := 16052, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good165_checked :
    goodSegmentCheck 80 26 55
      { lower := 16053, upper := 16066, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good166_checked :
    goodSegmentCheck 80 26 55
      { lower := 16384, upper := 16416, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good167_checked :
    goodSegmentCheck 80 26 55
      { lower := 16428, upper := 16463, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good168_checked :
    goodSegmentCheck 80 26 55
      { lower := 16807, upper := 16866, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good169_checked :
    goodSegmentCheck 80 26 55
      { lower := 16867, upper := 16899, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good170_checked :
    goodSegmentCheck 80 26 55
      { lower := 17303, upper := 17377, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good171_checked :
    goodSegmentCheck 80 26 55
      { lower := 17672, upper := 17740, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good172_checked :
    goodSegmentCheck 80 26 55
      { lower := 18259, upper := 18304, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good173_checked :
    goodSegmentCheck 80 26 55
      { lower := 18491, upper := 18560, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good174_checked :
    goodSegmentCheck 80 26 55
      { lower := 18561, upper := 18570, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good175_checked :
    goodSegmentCheck 80 26 55
      { lower := 18634, upper := 18684, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good176_checked :
    goodSegmentCheck 80 26 55
      { lower := 19208, upper := 19286, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good177_checked :
    goodSegmentCheck 80 26 55
      { lower := 19287, upper := 19287, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good178_checked :
    goodSegmentCheck 80 26 55
      { lower := 19663, upper := 19740, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good179_checked :
    goodSegmentCheck 80 26 55
      { lower := 19741, upper := 19742, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good180_checked :
    goodSegmentCheck 80 26 55
      { lower := 20172, upper := 20240, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good181_checked :
    goodSegmentCheck 80 26 55
      { lower := 20241, upper := 20260, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good182_checked :
    goodSegmentCheck 80 26 55
      { lower := 20577, upper := 20614, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good183_checked :
    goodSegmentCheck 80 26 55
      { lower := 21316, upper := 21375, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good184_checked :
    goodSegmentCheck 80 26 55
      { lower := 21866, upper := 21942, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good185_checked :
    goodSegmentCheck 80 26 55
      { lower := 21943, upper := 21949, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good186_checked :
    goodSegmentCheck 80 26 55
      { lower := 21970, upper := 21983, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good187_checked :
    goodSegmentCheck 80 26 55
      { lower := 22103, upper := 22169, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good188_checked :
    goodSegmentCheck 80 26 55
      { lower := 22472, upper := 22524, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good189_checked :
    goodSegmentCheck 80 26 55
      { lower := 24010, upper := 24086, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good190_checked :
    goodSegmentCheck 80 26 55
      { lower := 24087, upper := 24116, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good191_checked :
    goodSegmentCheck 80 26 55
      { lower := 24334, upper := 24408, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good192_checked :
    goodSegmentCheck 80 26 55
      { lower := 24409, upper := 24446, witness := RowWitness.topPrime 24407 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good193_checked :
    goodSegmentCheck 80 26 55
      { lower := 24642, upper := 24644, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good194_checked :
    goodSegmentCheck 80 26 55
      { lower := 24986, upper := 25043, witness := RowWitness.topPrime 24979 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good195_checked :
    goodSegmentCheck 80 26 55
      { lower := 25215, upper := 25268, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good196_checked :
    goodSegmentCheck 80 26 55
      { lower := 25269, upper := 25340, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good197_checked :
    goodSegmentCheck 80 26 55
      { lower := 25341, upper := 25360, witness := RowWitness.topPrime 25339 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good198_checked :
    goodSegmentCheck 80 26 55
      { lower := 26047, upper := 26090, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good199_checked :
    goodSegmentCheck 80 26 55
      { lower := 26411, upper := 26443, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good200_checked :
    goodSegmentCheck 80 26 55
      { lower := 26645, upper := 26699, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good201_checked :
    goodSegmentCheck 80 26 55
      { lower := 26934, upper := 26975, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good202_checked :
    goodSegmentCheck 80 26 55
      { lower := 27436, upper := 27459, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good203_checked :
    goodSegmentCheck 80 26 55
      { lower := 28577, upper := 28640, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good204_checked :
    goodSegmentCheck 80 26 55
      { lower := 28749, upper := 28796, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good205_checked :
    goodSegmentCheck 80 26 55
      { lower := 28812, upper := 28828, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good206_checked :
    goodSegmentCheck 80 26 55
      { lower := 29791, upper := 29847, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good207_checked :
    goodSegmentCheck 80 26 55
      { lower := 30258, upper := 30325, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good208_checked :
    goodSegmentCheck 80 26 55
      { lower := 30618, upper := 30672, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good209_checked :
    goodSegmentCheck 80 26 55
      { lower := 30673, upper := 30692, witness := RowWitness.topPrime 30671 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good210_checked :
    goodSegmentCheck 80 26 55
      { lower := 30926, upper := 30978, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good211_checked :
    goodSegmentCheck 80 26 55
      { lower := 31213, upper := 31272, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good212_checked :
    goodSegmentCheck 80 26 55
      { lower := 31273, upper := 31292, witness := RowWitness.topPrime 31271 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good213_checked :
    goodSegmentCheck 80 26 55
      { lower := 31329, upper := 31329, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good214_checked :
    goodSegmentCheck 80 26 55
      { lower := 31433, upper := 31476, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good215_checked :
    goodSegmentCheck 80 26 55
      { lower := 31477, upper := 31512, witness := RowWitness.topPrime 31477 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good216_checked :
    goodSegmentCheck 80 26 55
      { lower := 31944, upper := 31986, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good217_checked :
    goodSegmentCheck 80 26 55
      { lower := 31987, upper := 32023, witness := RowWitness.topPrime 31981 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good218_checked :
    goodSegmentCheck 80 26 55
      { lower := 32805, upper := 32847, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good219_checked :
    goodSegmentCheck 80 26 55
      { lower := 32856, upper := 32884, witness := RowWitness.topPrime 32843 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good220_checked :
    goodSegmentCheck 80 26 55
      { lower := 33620, upper := 33693, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good221_checked :
    goodSegmentCheck 80 26 55
      { lower := 35152, upper := 35210, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good222_checked :
    goodSegmentCheck 80 26 55
      { lower := 35301, upper := 35370, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good223_checked :
    goodSegmentCheck 80 26 55
      { lower := 35371, upper := 35380, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good224_checked :
    goodSegmentCheck 80 26 55
      { lower := 36517, upper := 36576, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good225_checked :
    goodSegmentCheck 80 26 55
      { lower := 36577, upper := 36580, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good226_checked :
    goodSegmentCheck 80 26 55
      { lower := 36982, upper := 37058, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good227_checked :
    goodSegmentCheck 80 26 55
      { lower := 37059, upper := 37059, witness := RowWitness.topPrime 37057 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good228_checked :
    goodSegmentCheck 80 26 55
      { lower := 37210, upper := 37258, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good229_checked :
    goodSegmentCheck 80 26 55
      { lower := 37349, upper := 37382, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good230_checked :
    goodSegmentCheck 80 26 55
      { lower := 39326, upper := 39402, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good231_checked :
    goodSegmentCheck 80 26 55
      { lower := 39403, upper := 39405, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good232_checked :
    goodSegmentCheck 80 26 55
      { lower := 40344, upper := 40422, witness := RowWitness.topPrime 40343 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good233_checked :
    goodSegmentCheck 80 26 55
      { lower := 40423, upper := 40423, witness := RowWitness.topPrime 40423 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good234_checked :
    goodSegmentCheck 80 26 55
      { lower := 41772, upper := 41822, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good235_checked :
    goodSegmentCheck 80 26 55
      { lower := 43740, upper := 43766, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good236_checked :
    goodSegmentCheck 80 26 55
      { lower := 43940, upper := 44002, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good237_checked :
    goodSegmentCheck 80 26 55
      { lower := 44217, upper := 44259, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good238_checked :
    goodSegmentCheck 80 26 55
      { lower := 44944, upper := 44969, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good239_checked :
    goodSegmentCheck 80 26 55
      { lower := 48013, upper := 48060, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good240_checked :
    goodSegmentCheck 80 26 55
      { lower := 48061, upper := 48092, witness := RowWitness.topPrime 48049 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good241_checked :
    goodSegmentCheck 80 26 55
      { lower := 48373, upper := 48413, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good242_checked :
    goodSegmentCheck 80 26 55
      { lower := 48668, upper := 48677, witness := RowWitness.topPrime 48661 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good243_checked :
    goodSegmentCheck 80 26 55
      { lower := 48734, upper := 48747, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good244_checked :
    goodSegmentCheck 80 26 55
      { lower := 48778, upper := 48813, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good245_checked :
    goodSegmentCheck 80 26 55
      { lower := 50421, upper := 50489, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good246_checked :
    goodSegmentCheck 80 26 55
      { lower := 56180, upper := 56248, witness := RowWitness.topPrime 56179 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good247_checked :
    goodSegmentCheck 80 26 55
      { lower := 58619, upper := 58643, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good248_checked :
    goodSegmentCheck 80 26 55
      { lower := 58989, upper := 59035, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good249_checked :
    goodSegmentCheck 80 26 55
      { lower := 59049, upper := 59068, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good250_checked :
    goodSegmentCheck 80 26 55
      { lower := 59582, upper := 59615, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good251_checked :
    goodSegmentCheck 80 26 55
      { lower := 63948, upper := 63948, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good252_checked :
    goodSegmentCheck 80 26 55
      { lower := 65536, upper := 65600, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good253_checked :
    goodSegmentCheck 80 26 55
      { lower := 65601, upper := 65615, witness := RowWitness.topPrime 65599 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good254_checked :
    goodSegmentCheck 80 26 55
      { lower := 68651, upper := 68669, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good255_checked :
    goodSegmentCheck 80 26 55
      { lower := 73167, upper := 73180, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good256_checked :
    goodSegmentCheck 80 26 55
      { lower := 73205, upper := 73246, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good257_checked :
    goodSegmentCheck 80 26 55
      { lower := 78141, upper := 78204, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good258_checked :
    goodSegmentCheck 80 26 55
      { lower := 85291, upper := 85338, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good259_checked :
    goodSegmentCheck 80 26 55
      { lower := 85339, upper := 85370, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good260_checked :
    goodSegmentCheck 80 26 55
      { lower := 85697, upper := 85762, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good261_checked :
    goodSegmentCheck 80 26 55
      { lower := 100842, upper := 100899, witness := RowWitness.topPrime 100829 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good262_checked :
    goodSegmentCheck 80 26 55
      { lower := 137842, upper := 137860, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good263_checked :
    goodSegmentCheck 80 26 55
      { lower := 146410, upper := 146413, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good264_checked :
    goodSegmentCheck 80 26 55
      { lower := 148955, upper := 148956, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good264_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_goods_checked :
    row080.goods.all (goodSegmentCheck row080.height.i row080.height.r row080.height.s) = true := by
  change row080_goods.all (goodSegmentCheck 80 26 55) = true
  simp only [row080_goods, List.all_cons, List.all_nil,
    row080_good000_checked,
    row080_good001_checked,
    row080_good002_checked,
    row080_good003_checked,
    row080_good004_checked,
    row080_good005_checked,
    row080_good006_checked,
    row080_good007_checked,
    row080_good008_checked,
    row080_good009_checked,
    row080_good010_checked,
    row080_good011_checked,
    row080_good012_checked,
    row080_good013_checked,
    row080_good014_checked,
    row080_good015_checked,
    row080_good016_checked,
    row080_good017_checked,
    row080_good018_checked,
    row080_good019_checked,
    row080_good020_checked,
    row080_good021_checked,
    row080_good022_checked,
    row080_good023_checked,
    row080_good024_checked,
    row080_good025_checked,
    row080_good026_checked,
    row080_good027_checked,
    row080_good028_checked,
    row080_good029_checked,
    row080_good030_checked,
    row080_good031_checked,
    row080_good032_checked,
    row080_good033_checked,
    row080_good034_checked,
    row080_good035_checked,
    row080_good036_checked,
    row080_good037_checked,
    row080_good038_checked,
    row080_good039_checked,
    row080_good040_checked,
    row080_good041_checked,
    row080_good042_checked,
    row080_good043_checked,
    row080_good044_checked,
    row080_good045_checked,
    row080_good046_checked,
    row080_good047_checked,
    row080_good048_checked,
    row080_good049_checked,
    row080_good050_checked,
    row080_good051_checked,
    row080_good052_checked,
    row080_good053_checked,
    row080_good054_checked,
    row080_good055_checked,
    row080_good056_checked,
    row080_good057_checked,
    row080_good058_checked,
    row080_good059_checked,
    row080_good060_checked,
    row080_good061_checked,
    row080_good062_checked,
    row080_good063_checked,
    row080_good064_checked,
    row080_good065_checked,
    row080_good066_checked,
    row080_good067_checked,
    row080_good068_checked,
    row080_good069_checked,
    row080_good070_checked,
    row080_good071_checked,
    row080_good072_checked,
    row080_good073_checked,
    row080_good074_checked,
    row080_good075_checked,
    row080_good076_checked,
    row080_good077_checked,
    row080_good078_checked,
    row080_good079_checked,
    row080_good080_checked,
    row080_good081_checked,
    row080_good082_checked,
    row080_good083_checked,
    row080_good084_checked,
    row080_good085_checked,
    row080_good086_checked,
    row080_good087_checked,
    row080_good088_checked,
    row080_good089_checked,
    row080_good090_checked,
    row080_good091_checked,
    row080_good092_checked,
    row080_good093_checked,
    row080_good094_checked,
    row080_good095_checked,
    row080_good096_checked,
    row080_good097_checked,
    row080_good098_checked,
    row080_good099_checked,
    row080_good100_checked,
    row080_good101_checked,
    row080_good102_checked,
    row080_good103_checked,
    row080_good104_checked,
    row080_good105_checked,
    row080_good106_checked,
    row080_good107_checked,
    row080_good108_checked,
    row080_good109_checked,
    row080_good110_checked,
    row080_good111_checked,
    row080_good112_checked,
    row080_good113_checked,
    row080_good114_checked,
    row080_good115_checked,
    row080_good116_checked,
    row080_good117_checked,
    row080_good118_checked,
    row080_good119_checked,
    row080_good120_checked,
    row080_good121_checked,
    row080_good122_checked,
    row080_good123_checked,
    row080_good124_checked,
    row080_good125_checked,
    row080_good126_checked,
    row080_good127_checked,
    row080_good128_checked,
    row080_good129_checked,
    row080_good130_checked,
    row080_good131_checked,
    row080_good132_checked,
    row080_good133_checked,
    row080_good134_checked,
    row080_good135_checked,
    row080_good136_checked,
    row080_good137_checked,
    row080_good138_checked,
    row080_good139_checked,
    row080_good140_checked,
    row080_good141_checked,
    row080_good142_checked,
    row080_good143_checked,
    row080_good144_checked,
    row080_good145_checked,
    row080_good146_checked,
    row080_good147_checked,
    row080_good148_checked,
    row080_good149_checked,
    row080_good150_checked,
    row080_good151_checked,
    row080_good152_checked,
    row080_good153_checked,
    row080_good154_checked,
    row080_good155_checked,
    row080_good156_checked,
    row080_good157_checked,
    row080_good158_checked,
    row080_good159_checked,
    row080_good160_checked,
    row080_good161_checked,
    row080_good162_checked,
    row080_good163_checked,
    row080_good164_checked,
    row080_good165_checked,
    row080_good166_checked,
    row080_good167_checked,
    row080_good168_checked,
    row080_good169_checked,
    row080_good170_checked,
    row080_good171_checked,
    row080_good172_checked,
    row080_good173_checked,
    row080_good174_checked,
    row080_good175_checked,
    row080_good176_checked,
    row080_good177_checked,
    row080_good178_checked,
    row080_good179_checked,
    row080_good180_checked,
    row080_good181_checked,
    row080_good182_checked,
    row080_good183_checked,
    row080_good184_checked,
    row080_good185_checked,
    row080_good186_checked,
    row080_good187_checked,
    row080_good188_checked,
    row080_good189_checked,
    row080_good190_checked,
    row080_good191_checked,
    row080_good192_checked,
    row080_good193_checked,
    row080_good194_checked,
    row080_good195_checked,
    row080_good196_checked,
    row080_good197_checked,
    row080_good198_checked,
    row080_good199_checked,
    row080_good200_checked,
    row080_good201_checked,
    row080_good202_checked,
    row080_good203_checked,
    row080_good204_checked,
    row080_good205_checked,
    row080_good206_checked,
    row080_good207_checked,
    row080_good208_checked,
    row080_good209_checked,
    row080_good210_checked,
    row080_good211_checked,
    row080_good212_checked,
    row080_good213_checked,
    row080_good214_checked,
    row080_good215_checked,
    row080_good216_checked,
    row080_good217_checked,
    row080_good218_checked,
    row080_good219_checked,
    row080_good220_checked,
    row080_good221_checked,
    row080_good222_checked,
    row080_good223_checked,
    row080_good224_checked,
    row080_good225_checked,
    row080_good226_checked,
    row080_good227_checked,
    row080_good228_checked,
    row080_good229_checked,
    row080_good230_checked,
    row080_good231_checked,
    row080_good232_checked,
    row080_good233_checked,
    row080_good234_checked,
    row080_good235_checked,
    row080_good236_checked,
    row080_good237_checked,
    row080_good238_checked,
    row080_good239_checked,
    row080_good240_checked,
    row080_good241_checked,
    row080_good242_checked,
    row080_good243_checked,
    row080_good244_checked,
    row080_good245_checked,
    row080_good246_checked,
    row080_good247_checked,
    row080_good248_checked,
    row080_good249_checked,
    row080_good250_checked,
    row080_good251_checked,
    row080_good252_checked,
    row080_good253_checked,
    row080_good254_checked,
    row080_good255_checked,
    row080_good256_checked,
    row080_good257_checked,
    row080_good258_checked,
    row080_good259_checked,
    row080_good260_checked,
    row080_good261_checked,
    row080_good262_checked,
    row080_good263_checked,
    row080_good264_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_registered :
    decide (row080.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row080_small_checked :
    coverCheck (2 * row080.height.i + 2) (row080.height.i * (row080.height.i - 1) - 1)
      (row080.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row080_layerCover_checked :
    coverCheck (row080.height.i * (row080.height.i - 1)) (row080.height.n0 - 1)
      (row080.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row080_bounds : List NatInterval :=
  [(162, 236), (237, 312), (313, 392), (393, 468), (469, 546), (547, 626), (627, 698), (699, 770), (771, 848), (849, 918), (919, 998), (999, 1076), (1077, 1148), (1149, 1208), (1209, 1280), (1281, 1358), (1359, 1406), (1407, 1478), (1479, 1550), (1551, 1628), (1629, 1706), (1707, 1778), (1779, 1856), (1857, 1926), (1927, 1992), (1993, 2072), (2073, 2148), (2149, 2222), (2223, 2300), (2301, 2376), (2377, 2456), (2457, 2526), (2527, 2600), (2601, 2672), (2673, 2750), (2751, 2828), (2829, 2898), (2899, 2976), (2977, 3050), (3051, 3128), (3129, 3200), (3201, 3270), (3271, 3350), (3351, 3426), (3427, 3492), (3493, 3570), (3571, 3650), (3651, 3722), (3723, 3798), (3799, 3876), (3877, 3956), (3957, 4026), (4027, 4106), (4107, 4178), (4179, 4256), (4257, 4332), (4333, 4406), (4407, 4476), (4477, 4542), (4543, 4602), (4603, 4682), (4683, 4758), (4759, 4838), (4839, 4910), (4911, 4988), (4989, 5066), (5067, 5138), (5139, 5198), (5199, 5276), (5277, 5352), (5353, 5430), (5431, 5510), (5511, 5586), (5587, 5660), (5661, 5738), (5739, 5816), (5817, 5892), (5893, 5960), (5961, 6032), (6033, 6108), (6109, 6180), (6181, 6252), (6253, 6326), (6327, 6329), (6348, 6422), (6423, 6427), (6517, 6570), (6571, 6650), (6651, 6716), (6717, 6788), (6789, 6807), (6845, 6920), (6921, 6956), (6962, 7015), (7220, 7298), (7299, 7304), (7406, 7472), (7473, 7485), (7514, 7521), (7533, 7608), (7609, 7648), (7935, 8012), (8013, 8065), (8092, 8098), (8214, 8288), (8289, 8293), (8303, 8311), (8381, 8382), (8405, 8468), (8469, 8506), (8649, 8654), (8664, 8742), (8743, 8743), (8748, 8749), (8788, 8827), (8836, 8867), (8959, 9030), (9031, 9072), (9251, 9320), (9321, 9340), (9375, 9450), (9451, 9454), (9522, 9556), (9583, 9601), (9604, 9680), (9681, 9683), (9826, 9826), (10082, 10158), (10159, 10171), (10469, 10522), (10580, 10646), (10647, 10718), (10719, 10727), (10935, 10988), (10989, 11031), (11045, 11064), (11094, 11172), (11173, 11188), (11191, 11256), (11257, 11270), (11664, 11717), (11774, 11822), (11823, 11846), (12005, 12058), (12393, 12400), (12493, 12570), (12571, 12572), (13182, 13201), (13225, 13298), (13299, 13304), (13310, 13333), (13454, 13530), (13531, 13535), (13718, 13790), (13791, 13797), (13924, 13930), (14297, 14362), (14415, 14485), (14641, 14659), (14792, 14818), (15123, 15200), (15201, 15208), (15376, 15452), (15453, 15455), (15979, 16052), (16053, 16066), (16384, 16416), (16428, 16463), (16807, 16866), (16867, 16899), (17303, 17377), (17672, 17740), (18259, 18304), (18491, 18560), (18561, 18570), (18634, 18684), (19208, 19286), (19287, 19287), (19663, 19740), (19741, 19742), (20172, 20240), (20241, 20260), (20577, 20614), (21316, 21375), (21866, 21942), (21943, 21949), (21970, 21983), (22103, 22169), (22472, 22524), (24010, 24086), (24087, 24116), (24334, 24408), (24409, 24446), (24642, 24644), (24986, 25043), (25215, 25268), (25269, 25340), (25341, 25360), (26047, 26090), (26411, 26443), (26645, 26699), (26934, 26975), (27436, 27459), (28577, 28640), (28749, 28796), (28812, 28828), (29791, 29847), (30258, 30325), (30618, 30672), (30673, 30692), (30926, 30978), (31213, 31272), (31273, 31292), (31329, 31329), (31433, 31476), (31477, 31512), (31944, 31986), (31987, 32023), (32805, 32847), (32856, 32884), (33620, 33693), (35152, 35210), (35301, 35370), (35371, 35380), (36517, 36576), (36577, 36580), (36982, 37058), (37059, 37059), (37210, 37258), (37349, 37382), (39326, 39402), (39403, 39405), (40344, 40422), (40423, 40423), (41772, 41822), (43740, 43766), (43940, 44002), (44217, 44259), (44944, 44969), (48013, 48060), (48061, 48092), (48373, 48413), (48668, 48677), (48734, 48747), (48778, 48813), (50421, 50489), (56180, 56248), (58619, 58643), (58989, 59035), (59049, 59068), (59582, 59615), (63948, 63948), (65536, 65600), (65601, 65615), (68651, 68669), (73167, 73180), (73205, 73246), (78141, 78204), (85291, 85338), (85339, 85370), (85697, 85762), (100842, 100899), (137842, 137860), (146410, 146413), (148955, 148956)]

theorem row080_bounds_eq : row080.goods.map goodSegmentBounds = row080_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row080_layer000_intervals : List ColouredInterval :=
  [(2, 8192, 8271), (3, 6320, 6397), (3, 6561, 6640), (3, 6804, 6883), (3, 7047, 7126), (3, 7290, 7369), (3, 7533, 7612), (3, 6561, 6640), (3, 7290, 7369), (3, 8019, 8098), (3, 8748, 8827), (3, 9477, 9556), (3, 10206, 10285), (3, 10935, 11014), (3, 11664, 11743), (3, 12393, 12472), (3, 6561, 6640), (3, 8748, 8827), (3, 10935, 11014), (3, 6561, 6640), (5, 6320, 6329), (5, 9375, 9454), (5, 12500, 12579), (7, 6517, 6596), (7, 6860, 6939), (7, 7203, 7282), (7, 7546, 7625), (7, 7889, 7968), (7, 8232, 8311), (7, 8575, 8654), (7, 8918, 8997), (7, 9261, 9340), (7, 9604, 9683), (7, 9947, 10026), (7, 10290, 10369), (7, 10633, 10712), (7, 7203, 7282), (7, 9604, 9683), (7, 12005, 12084), (11, 6655, 6734), (11, 7986, 8065), (11, 9317, 9396), (11, 10648, 10727), (11, 11979, 12058), (13, 6591, 6670), (13, 8788, 8867), (13, 10985, 11064), (17, 6358, 6437), (17, 6647, 6726), (17, 6936, 7015), (17, 7225, 7304), (17, 7514, 7593), (17, 7803, 7882), (17, 8092, 8171), (17, 8381, 8460), (17, 8670, 8749), (17, 8959, 9038), (17, 9826, 9905), (19, 6498, 6577), (19, 6859, 6938), (19, 7220, 7299), (19, 7581, 7660), (19, 7942, 8021), (19, 8303, 8382), (19, 8664, 8743), (19, 9025, 9104), (19, 9386, 9465), (19, 9747, 9826), (19, 10108, 10187), (19, 10469, 10548), (19, 10830, 10909), (19, 11191, 11270), (19, 6859, 6938), (23, 6348, 6427), (23, 6877, 6956), (23, 7406, 7485), (23, 7935, 8014), (23, 8464, 8543), (23, 8993, 9072), (23, 9522, 9601), (23, 10051, 10130), (23, 10580, 10659), (23, 11109, 11188), (23, 11638, 11717), (23, 12167, 12246), (23, 12167, 12246), (29, 6728, 6807), (29, 7569, 7648), (29, 8410, 8489), (29, 9251, 9330), (29, 10092, 10171), (29, 10933, 11012), (29, 11774, 11853), (29, 12615, 12639), (31, 6727, 6806), (31, 7688, 7767), (31, 8649, 8728), (31, 9610, 9689), (31, 10571, 10650), (31, 11532, 11611), (31, 12493, 12572), (37, 6845, 6924), (37, 8214, 8293), (37, 9583, 9662), (37, 10952, 11031), (37, 12321, 12400), (41, 6724, 6803), (41, 8405, 8484), (41, 10086, 10165), (41, 11767, 11846), (43, 7396, 7475), (43, 9245, 9324), (43, 11094, 11173), (47, 6627, 6706), (47, 8836, 8915), (47, 11045, 11124), (53, 8427, 8506), (53, 11236, 11315), (59, 6962, 7041), (59, 10443, 10522), (61, 7442, 7521), (61, 11163, 11242), (67, 8978, 9057), (71, 10082, 10161), (73, 10658, 10737), (79, 6320, 6320), (79, 12482, 12561)]

def row080_layer000_block000 : List ColouredInterval :=
  [(2, 8192, 8271), (3, 6320, 6397), (3, 6561, 6640), (3, 6804, 6883), (3, 7047, 7126), (3, 7290, 7369), (3, 7533, 7612), (3, 6561, 6640), (3, 7290, 7369), (3, 8019, 8098), (3, 8748, 8827), (3, 9477, 9556), (3, 10206, 10285), (3, 10935, 11014), (3, 11664, 11743), (3, 12393, 12472)]

def row080_layer000_block001 : List ColouredInterval :=
  [(3, 6561, 6640), (3, 8748, 8827), (3, 10935, 11014), (3, 6561, 6640), (5, 6320, 6329), (5, 9375, 9454), (5, 12500, 12579), (7, 6517, 6596), (7, 6860, 6939), (7, 7203, 7282), (7, 7546, 7625), (7, 7889, 7968), (7, 8232, 8311), (7, 8575, 8654), (7, 8918, 8997), (7, 9261, 9340)]

def row080_layer000_block002 : List ColouredInterval :=
  [(7, 9604, 9683), (7, 9947, 10026), (7, 10290, 10369), (7, 10633, 10712), (7, 7203, 7282), (7, 9604, 9683), (7, 12005, 12084), (11, 6655, 6734), (11, 7986, 8065), (11, 9317, 9396), (11, 10648, 10727), (11, 11979, 12058), (13, 6591, 6670), (13, 8788, 8867), (13, 10985, 11064), (17, 6358, 6437)]

def row080_layer000_block003 : List ColouredInterval :=
  [(17, 6647, 6726), (17, 6936, 7015), (17, 7225, 7304), (17, 7514, 7593), (17, 7803, 7882), (17, 8092, 8171), (17, 8381, 8460), (17, 8670, 8749), (17, 8959, 9038), (17, 9826, 9905), (19, 6498, 6577), (19, 6859, 6938), (19, 7220, 7299), (19, 7581, 7660), (19, 7942, 8021), (19, 8303, 8382)]

def row080_layer000_block004 : List ColouredInterval :=
  [(19, 8664, 8743), (19, 9025, 9104), (19, 9386, 9465), (19, 9747, 9826), (19, 10108, 10187), (19, 10469, 10548), (19, 10830, 10909), (19, 11191, 11270), (19, 6859, 6938), (23, 6348, 6427), (23, 6877, 6956), (23, 7406, 7485), (23, 7935, 8014), (23, 8464, 8543), (23, 8993, 9072), (23, 9522, 9601)]

def row080_layer000_block005 : List ColouredInterval :=
  [(23, 10051, 10130), (23, 10580, 10659), (23, 11109, 11188), (23, 11638, 11717), (23, 12167, 12246), (23, 12167, 12246), (29, 6728, 6807), (29, 7569, 7648), (29, 8410, 8489), (29, 9251, 9330), (29, 10092, 10171), (29, 10933, 11012), (29, 11774, 11853), (29, 12615, 12639), (31, 6727, 6806), (31, 7688, 7767)]

def row080_layer000_block006 : List ColouredInterval :=
  [(31, 8649, 8728), (31, 9610, 9689), (31, 10571, 10650), (31, 11532, 11611), (31, 12493, 12572), (37, 6845, 6924), (37, 8214, 8293), (37, 9583, 9662), (37, 10952, 11031), (37, 12321, 12400), (41, 6724, 6803), (41, 8405, 8484), (41, 10086, 10165), (41, 11767, 11846), (43, 7396, 7475), (43, 9245, 9324)]

def row080_layer000_block007 : List ColouredInterval :=
  [(43, 11094, 11173), (47, 6627, 6706), (47, 8836, 8915), (47, 11045, 11124), (53, 8427, 8506), (53, 11236, 11315), (59, 6962, 7041), (59, 10443, 10522), (61, 7442, 7521), (61, 11163, 11242), (67, 8978, 9057), (71, 10082, 10161), (73, 10658, 10737), (79, 6320, 6320), (79, 12482, 12561)]

def row080_layer000_chunks : List (List ColouredInterval) :=
  [row080_layer000_block000, row080_layer000_block001, row080_layer000_block002, row080_layer000_block003, row080_layer000_block004, row080_layer000_block005, row080_layer000_block006, row080_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_arithmetic : LayerArithmeticValid row080.height { lower := 6320, upper := 12640, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_enumeration :
    activePowerIntervalList 80 31 6320 12640 = row080_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_pairs000 :
    row080_layer000_block000.all (fun I => row080_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_pairs001 :
    row080_layer000_block001.all (fun I => row080_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_pairs002 :
    row080_layer000_block002.all (fun I => row080_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_pairs003 :
    row080_layer000_block003.all (fun I => row080_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_pairs004 :
    row080_layer000_block004.all (fun I => row080_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_pairs005 :
    row080_layer000_block005.all (fun I => row080_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_pairs006 :
    row080_layer000_block006.all (fun I => row080_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_pairs007 :
    row080_layer000_block007.all (fun I => row080_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_pairs007
