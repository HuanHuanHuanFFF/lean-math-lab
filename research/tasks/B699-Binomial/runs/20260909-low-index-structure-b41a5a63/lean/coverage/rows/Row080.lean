import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row080_registered :
    decide (row080.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row080_goods_checked :
    row080.goods.all (goodSegmentCheck row080.height.i row080.height.r row080.height.s) = true := by
  decide +kernel

theorem row080_small_checked :
    coverCheck (2 * row080.height.i + 2) (row080.height.i * (row080.height.i - 1) - 1)
      (row080.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row080_layerCover_checked :
    coverCheck (row080.height.i * (row080.height.i - 1)) (row080.height.n0 - 1)
      (row080.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row080_layer000_checked :
    coverLayerCheck row080.height row080.goods { lower := 6320, upper := 12640, M := 31 } = true := by
  decide +kernel

theorem row080_layer001_checked :
    coverLayerCheck row080.height row080.goods { lower := 12640, upper := 25280, M := 27 } = true := by
  decide +kernel

theorem row080_layer002_checked :
    coverLayerCheck row080.height row080.goods { lower := 25280, upper := 50560, M := 24 } = true := by
  decide +kernel

theorem row080_layer003_checked :
    coverLayerCheck row080.height row080.goods { lower := 50560, upper := 101120, M := 21 } = true := by
  decide +kernel

theorem row080_layer004_checked :
    coverLayerCheck row080.height row080.goods { lower := 101120, upper := 202240, M := 18 } = true := by
  decide +kernel

theorem row080_layer005_checked :
    coverLayerCheck row080.height row080.goods { lower := 202240, upper := 404480, M := 16 } = true := by
  decide +kernel

theorem row080_layer006_checked :
    coverLayerCheck row080.height row080.goods { lower := 404480, upper := 808960, M := 14 } = true := by
  decide +kernel

theorem row080_layer007_checked :
    coverLayerCheck row080.height row080.goods { lower := 808960, upper := 1617920, M := 12 } = true := by
  decide +kernel

theorem row080_layer008_checked :
    coverLayerCheck row080.height row080.goods { lower := 1617920, upper := 3235840, M := 10 } = true := by
  decide +kernel

theorem row080_layer009_checked :
    coverLayerCheck row080.height row080.goods { lower := 3235840, upper := 6471680, M := 9 } = true := by
  decide +kernel

theorem row080_layer010_checked :
    coverLayerCheck row080.height row080.goods { lower := 6471680, upper := 12943360, M := 8 } = true := by
  decide +kernel

theorem row080_layer011_checked :
    coverLayerCheck row080.height row080.goods { lower := 12943360, upper := 25886720, M := 7 } = true := by
  decide +kernel

theorem row080_layer012_checked :
    coverLayerCheck row080.height row080.goods { lower := 25886720, upper := 51773440, M := 6 } = true := by
  decide +kernel

theorem row080_layer013_checked :
    coverLayerCheck row080.height row080.goods { lower := 51773440, upper := 103546880, M := 5 } = true := by
  decide +kernel

theorem row080_layer014_checked :
    coverLayerCheck row080.height row080.goods { lower := 103546880, upper := 207093760, M := 5 } = true := by
  decide +kernel

theorem row080_layer015_checked :
    coverLayerCheck row080.height row080.goods { lower := 207093760, upper := 414187520, M := 4 } = true := by
  decide +kernel

theorem row080_layer016_checked :
    coverLayerCheck row080.height row080.goods { lower := 414187520, upper := 828375040, M := 4 } = true := by
  decide +kernel

theorem row080_layer017_checked :
    coverLayerCheck row080.height row080.goods { lower := 828375040, upper := 1656750080, M := 3 } = true := by
  decide +kernel

theorem row080_layer018_checked :
    coverLayerCheck row080.height row080.goods { lower := 1656750080, upper := 3313500160, M := 3 } = true := by
  decide +kernel

theorem row080_layer019_checked :
    coverLayerCheck row080.height row080.goods { lower := 3313500160, upper := 6627000320, M := 3 } = true := by
  decide +kernel

theorem row080_layer020_checked :
    coverLayerCheck row080.height row080.goods { lower := 6627000320, upper := 13254000640, M := 2 } = true := by
  decide +kernel

theorem row080_layer021_checked :
    coverLayerCheck row080.height row080.goods { lower := 13254000640, upper := 26508001280, M := 2 } = true := by
  decide +kernel

theorem row080_layer022_checked :
    coverLayerCheck row080.height row080.goods { lower := 26508001280, upper := 53016002560, M := 2 } = true := by
  decide +kernel

theorem row080_layer023_checked :
    coverLayerCheck row080.height row080.goods { lower := 53016002560, upper := 106032005120, M := 2 } = true := by
  decide +kernel

theorem row080_layer024_checked :
    coverLayerCheck row080.height row080.goods { lower := 106032005120, upper := 212064010240, M := 2 } = true := by
  decide +kernel

theorem row080_layer025_checked :
    coverLayerCheck row080.height row080.goods { lower := 212064010240, upper := 424128020480, M := 1 } = true := by
  decide +kernel

theorem row080_layer026_checked :
    coverLayerCheck row080.height row080.goods { lower := 424128020480, upper := 848256040960, M := 1 } = true := by
  decide +kernel

theorem row080_layer027_checked :
    coverLayerCheck row080.height row080.goods { lower := 848256040960, upper := 1000000000000, M := 1 } = true := by
  decide +kernel

theorem row080_layers_checked :
    row080.layers.all (coverLayerCheck row080.height row080.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row080.height row080.goods) = true
  simp only [List.all_cons, List.all_nil,
    row080_layer000_checked,
    row080_layer001_checked,
    row080_layer002_checked,
    row080_layer003_checked,
    row080_layer004_checked,
    row080_layer005_checked,
    row080_layer006_checked,
    row080_layer007_checked,
    row080_layer008_checked,
    row080_layer009_checked,
    row080_layer010_checked,
    row080_layer011_checked,
    row080_layer012_checked,
    row080_layer013_checked,
    row080_layer014_checked,
    row080_layer015_checked,
    row080_layer016_checked,
    row080_layer017_checked,
    row080_layer018_checked,
    row080_layer019_checked,
    row080_layer020_checked,
    row080_layer021_checked,
    row080_layer022_checked,
    row080_layer023_checked,
    row080_layer024_checked,
    row080_layer025_checked,
    row080_layer026_checked,
    row080_layer027_checked,
    Bool.true_and]

theorem row080_checked : finiteCoverRowCheck row080 = true := by
  simp only [finiteCoverRowCheck, row080_registered, row080_goods_checked,
    row080_small_checked, row080_layerCover_checked, row080_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row080_checked

end B699LowIndex
