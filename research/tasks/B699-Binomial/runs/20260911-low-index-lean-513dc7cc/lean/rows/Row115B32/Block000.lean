import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row115_height : HeightCertificateDatum := { i := 115, r := 38, s := 80, n0Power10 := 10 }

def row115_goods : List GoodSegment := [
  { lower := 232, upper := 343, witness := RowWitness.topPrime 229 },
  { lower := 344, upper := 451, witness := RowWitness.topPrime 337 },
  { lower := 452, upper := 563, witness := RowWitness.topPrime 449 },
  { lower := 564, upper := 677, witness := RowWitness.topPrime 563 },
  { lower := 678, upper := 791, witness := RowWitness.topPrime 677 },
  { lower := 792, upper := 901, witness := RowWitness.topPrime 787 },
  { lower := 902, upper := 1001, witness := RowWitness.topPrime 887 },
  { lower := 1002, upper := 1111, witness := RowWitness.topPrime 997 },
  { lower := 1112, upper := 1223, witness := RowWitness.topPrime 1109 },
  { lower := 1224, upper := 1337, witness := RowWitness.topPrime 1223 },
  { lower := 1338, upper := 1441, witness := RowWitness.topPrime 1327 },
  { lower := 1442, upper := 1553, witness := RowWitness.topPrime 1439 },
  { lower := 1554, upper := 1667, witness := RowWitness.topPrime 1553 },
  { lower := 1668, upper := 1781, witness := RowWitness.topPrime 1667 },
  { lower := 1782, upper := 1891, witness := RowWitness.topPrime 1777 },
  { lower := 1892, upper := 2003, witness := RowWitness.topPrime 1889 },
  { lower := 2004, upper := 2117, witness := RowWitness.topPrime 2003 },
  { lower := 2118, upper := 2227, witness := RowWitness.topPrime 2113 },
  { lower := 2228, upper := 2335, witness := RowWitness.topPrime 2221 },
  { lower := 2336, upper := 2447, witness := RowWitness.topPrime 2333 },
  { lower := 2448, upper := 2561, witness := RowWitness.topPrime 2447 },
  { lower := 2562, upper := 2671, witness := RowWitness.topPrime 2557 },
  { lower := 2672, upper := 2785, witness := RowWitness.topPrime 2671 },
  { lower := 2786, upper := 2891, witness := RowWitness.topPrime 2777 },
  { lower := 2892, upper := 3001, witness := RowWitness.topPrime 2887 },
  { lower := 3002, upper := 3115, witness := RowWitness.topPrime 3001 },
  { lower := 3116, upper := 3223, witness := RowWitness.topPrime 3109 },
  { lower := 3224, upper := 3335, witness := RowWitness.topPrime 3221 },
  { lower := 3336, upper := 3445, witness := RowWitness.topPrime 3331 },
  { lower := 3446, upper := 3547, witness := RowWitness.topPrime 3433 },
  { lower := 3548, upper := 3661, witness := RowWitness.topPrime 3547 },
  { lower := 3662, upper := 3773, witness := RowWitness.topPrime 3659 },
  { lower := 3774, upper := 3883, witness := RowWitness.topPrime 3769 },
  { lower := 3884, upper := 3995, witness := RowWitness.topPrime 3881 },
  { lower := 3996, upper := 4103, witness := RowWitness.topPrime 3989 },
  { lower := 4104, upper := 4213, witness := RowWitness.topPrime 4099 },
  { lower := 4214, upper := 4325, witness := RowWitness.topPrime 4211 },
  { lower := 4326, upper := 4411, witness := RowWitness.topPrime 4297 },
  { lower := 4412, upper := 4523, witness := RowWitness.topPrime 4409 },
  { lower := 4524, upper := 4637, witness := RowWitness.topPrime 4523 },
  { lower := 4638, upper := 4751, witness := RowWitness.topPrime 4637 },
  { lower := 4752, upper := 4865, witness := RowWitness.topPrime 4751 },
  { lower := 4866, upper := 4975, witness := RowWitness.topPrime 4861 },
  { lower := 4976, upper := 5087, witness := RowWitness.topPrime 4973 },
  { lower := 5088, upper := 5201, witness := RowWitness.topPrime 5087 },
  { lower := 5202, upper := 5311, witness := RowWitness.topPrime 5197 },
  { lower := 5312, upper := 5423, witness := RowWitness.topPrime 5309 },
  { lower := 5424, upper := 5533, witness := RowWitness.topPrime 5419 },
  { lower := 5534, upper := 5645, witness := RowWitness.topPrime 5531 },
  { lower := 5646, upper := 5755, witness := RowWitness.topPrime 5641 },
  { lower := 5756, upper := 5863, witness := RowWitness.topPrime 5749 },
  { lower := 5864, upper := 5975, witness := RowWitness.topPrime 5861 },
  { lower := 5976, upper := 6067, witness := RowWitness.topPrime 5953 },
  { lower := 6068, upper := 6181, witness := RowWitness.topPrime 6067 },
  { lower := 6182, upper := 6287, witness := RowWitness.topPrime 6173 },
  { lower := 6288, upper := 6401, witness := RowWitness.topPrime 6287 },
  { lower := 6402, upper := 6511, witness := RowWitness.topPrime 6397 },
  { lower := 6512, upper := 6605, witness := RowWitness.topPrime 6491 },
  { lower := 6606, upper := 6713, witness := RowWitness.topPrime 6599 },
  { lower := 6714, upper := 6823, witness := RowWitness.topPrime 6709 },
  { lower := 6824, upper := 6937, witness := RowWitness.topPrime 6823 },
  { lower := 6938, upper := 7031, witness := RowWitness.topPrime 6917 },
  { lower := 7032, upper := 7141, witness := RowWitness.topPrime 7027 },
  { lower := 7142, upper := 7243, witness := RowWitness.topPrime 7129 },
  { lower := 7244, upper := 7357, witness := RowWitness.topPrime 7243 },
  { lower := 7358, upper := 7465, witness := RowWitness.topPrime 7351 },
  { lower := 7466, upper := 7573, witness := RowWitness.topPrime 7459 },
  { lower := 7574, upper := 7687, witness := RowWitness.topPrime 7573 },
  { lower := 7688, upper := 7801, witness := RowWitness.topPrime 7687 },
  { lower := 7802, upper := 7907, witness := RowWitness.topPrime 7793 },
  { lower := 7908, upper := 8021, witness := RowWitness.topPrime 7907 },
  { lower := 8022, upper := 8131, witness := RowWitness.topPrime 8017 },
  { lower := 8132, upper := 8237, witness := RowWitness.topPrime 8123 },
  { lower := 8238, upper := 8351, witness := RowWitness.topPrime 8237 },
  { lower := 8352, upper := 8443, witness := RowWitness.topPrime 8329 },
  { lower := 8444, upper := 8557, witness := RowWitness.topPrime 8443 },
  { lower := 8558, upper := 8657, witness := RowWitness.topPrime 8543 },
  { lower := 8658, upper := 8761, witness := RowWitness.topPrime 8647 },
  { lower := 8762, upper := 8875, witness := RowWitness.topPrime 8761 },
  { lower := 8876, upper := 8981, witness := RowWitness.topPrime 8867 },
  { lower := 8982, upper := 9085, witness := RowWitness.topPrime 8971 },
  { lower := 9086, upper := 9181, witness := RowWitness.topPrime 9067 },
  { lower := 9182, upper := 9295, witness := RowWitness.topPrime 9181 },
  { lower := 9296, upper := 9407, witness := RowWitness.topPrime 9293 },
  { lower := 9408, upper := 9517, witness := RowWitness.topPrime 9403 },
  { lower := 9518, upper := 9625, witness := RowWitness.topPrime 9511 },
  { lower := 9626, upper := 9737, witness := RowWitness.topPrime 9623 },
  { lower := 9738, upper := 9847, witness := RowWitness.topPrime 9733 },
  { lower := 9848, upper := 9953, witness := RowWitness.topPrime 9839 },
  { lower := 9954, upper := 10063, witness := RowWitness.topPrime 9949 },
  { lower := 10064, upper := 10175, witness := RowWitness.topPrime 10061 },
  { lower := 10176, upper := 10283, witness := RowWitness.topPrime 10169 },
  { lower := 10284, upper := 10387, witness := RowWitness.topPrime 10273 },
  { lower := 10388, upper := 10483, witness := RowWitness.topPrime 10369 },
  { lower := 10484, upper := 10591, witness := RowWitness.topPrime 10477 },
  { lower := 10592, upper := 10703, witness := RowWitness.topPrime 10589 },
  { lower := 10704, upper := 10805, witness := RowWitness.topPrime 10691 },
  { lower := 10806, upper := 10913, witness := RowWitness.topPrime 10799 },
  { lower := 10914, upper := 11023, witness := RowWitness.topPrime 10909 },
  { lower := 11024, upper := 11117, witness := RowWitness.topPrime 11003 },
  { lower := 11118, upper := 11231, witness := RowWitness.topPrime 11117 },
  { lower := 11232, upper := 11327, witness := RowWitness.topPrime 11213 },
  { lower := 11328, upper := 11435, witness := RowWitness.topPrime 11321 },
  { lower := 11436, upper := 11537, witness := RowWitness.topPrime 11423 },
  { lower := 11538, upper := 11641, witness := RowWitness.topPrime 11527 },
  { lower := 11642, upper := 11747, witness := RowWitness.topPrime 11633 },
  { lower := 11748, upper := 11857, witness := RowWitness.topPrime 11743 },
  { lower := 11858, upper := 11953, witness := RowWitness.topPrime 11839 },
  { lower := 11954, upper := 12067, witness := RowWitness.topPrime 11953 },
  { lower := 12068, upper := 12163, witness := RowWitness.topPrime 12049 },
  { lower := 12164, upper := 12277, witness := RowWitness.topPrime 12163 },
  { lower := 12278, upper := 12391, witness := RowWitness.topPrime 12277 },
  { lower := 12392, upper := 12505, witness := RowWitness.topPrime 12391 },
  { lower := 12506, upper := 12617, witness := RowWitness.topPrime 12503 },
  { lower := 12618, upper := 12727, witness := RowWitness.topPrime 12613 },
  { lower := 12728, upper := 12835, witness := RowWitness.topPrime 12721 },
  { lower := 12836, upper := 12943, witness := RowWitness.topPrime 12829 },
  { lower := 12944, upper := 13055, witness := RowWitness.topPrime 12941 },
  { lower := 13056, upper := 13109, witness := RowWitness.topPrime 13049 },
  { lower := 13182, upper := 13236, witness := RowWitness.topPrime 13177 },
  { lower := 13254, upper := 13296, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13423, witness := RowWitness.topPrime 13309 },
  { lower := 13424, upper := 13424, witness := RowWitness.topPrime 13421 },
  { lower := 13454, upper := 13565, witness := RowWitness.topPrime 13451 },
  { lower := 13566, upper := 13570, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13825, witness := RowWitness.topPrime 13711 },
  { lower := 13826, upper := 13921, witness := RowWitness.topPrime 13807 },
  { lower := 13922, upper := 13965, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14441, witness := RowWitness.topPrime 14327 },
  { lower := 14442, upper := 14520, witness := RowWitness.topPrime 14437 },
  { lower := 14641, upper := 14694, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14755, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14853, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14906, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15235, witness := RowWitness.topPrime 15121 },
  { lower := 15236, upper := 15243, witness := RowWitness.topPrime 15233 },
  { lower := 15360, upper := 15473, witness := RowWitness.topPrime 15359 },
  { lower := 15474, upper := 15493, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16087, witness := RowWitness.topPrime 15973 },
  { lower := 16088, upper := 16101, witness := RowWitness.topPrime 16087 },
  { lower := 16384, upper := 16495, witness := RowWitness.topPrime 16381 },
  { lower := 16496, upper := 16498, witness := RowWitness.topPrime 16493 },
  { lower := 16807, upper := 16901, witness := RowWitness.topPrime 16787 },
  { lower := 16902, upper := 16934, witness := RowWitness.topPrime 16901 },
  { lower := 17303, upper := 17413, witness := RowWitness.topPrime 17299 },
  { lower := 17414, upper := 17515, witness := RowWitness.topPrime 17401 },
  { lower := 17516, upper := 17522, witness := RowWitness.topPrime 17509 },
  { lower := 17576, upper := 17610, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17773, witness := RowWitness.topPrime 17659 },
  { lower := 17774, upper := 17775, witness := RowWitness.topPrime 17761 },
  { lower := 18259, upper := 18339, witness := RowWitness.topPrime 18257 },
  { lower := 18490, upper := 18595, witness := RowWitness.topPrime 18481 },
  { lower := 18596, upper := 18616, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18719, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18748, witness := RowWitness.topPrime 18719 },
  { lower := 18818, upper := 18837, witness := RowWitness.topPrime 18803 },
  { lower := 19208, upper := 19321, witness := RowWitness.topPrime 19207 },
  { lower := 19322, upper := 19322, witness := RowWitness.topPrime 19319 },
  { lower := 19456, upper := 19457, witness := RowWitness.topPrime 19447 },
  { lower := 19663, upper := 19775, witness := RowWitness.topPrime 19661 },
  { lower := 19776, upper := 19797, witness := RowWitness.topPrime 19763 },
  { lower := 19881, upper := 19887, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 19995, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20275, witness := RowWitness.topPrime 20161 },
  { lower := 20276, upper := 20295, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20513, witness := RowWitness.topPrime 20399 },
  { lower := 20514, upper := 20526, witness := RowWitness.topPrime 20509 },
  { lower := 20535, upper := 20647, witness := RowWitness.topPrime 20533 },
  { lower := 20648, upper := 20649, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20691, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21256, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21397, witness := RowWitness.topPrime 21283 },
  { lower := 21398, upper := 21410, witness := RowWitness.topPrime 21397 },
  { lower := 21609, upper := 21618, witness := RowWitness.topPrime 21601 },
  { lower := 21866, upper := 21977, witness := RowWitness.topPrime 21863 },
  { lower := 21978, upper := 22018, witness := RowWitness.topPrime 21977 },
  { lower := 22103, upper := 22207, witness := RowWitness.topPrime 22093 },
  { lower := 22208, upper := 22217, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22583, witness := RowWitness.topPrime 22469 },
  { lower := 22584, upper := 22586, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22642, witness := RowWitness.topPrime 22621 },
  { lower := 22707, upper := 22741, witness := RowWitness.topPrime 22699 },
  { lower := 23548, upper := 23653, witness := RowWitness.topPrime 23539 },
  { lower := 23654, upper := 23662, witness := RowWitness.topPrime 23633 },
  { lower := 23763, upper := 23875, witness := RowWitness.topPrime 23761 },
  { lower := 23876, upper := 23876, witness := RowWitness.topPrime 23873 },
  { lower := 24010, upper := 24121, witness := RowWitness.topPrime 24007 },
  { lower := 24122, upper := 24151, witness := RowWitness.topPrime 24121 },
  { lower := 24167, upper := 24171, witness := RowWitness.topPrime 24151 },
  { lower := 24367, upper := 24473, witness := RowWitness.topPrime 24359 },
  { lower := 24474, upper := 24481, witness := RowWitness.topPrime 24473 },
  { lower := 24576, upper := 24685, witness := RowWitness.topPrime 24571 },
  { lower := 24686, upper := 24690, witness := RowWitness.topPrime 24683 },
  { lower := 24986, upper := 25078, witness := RowWitness.topPrime 24979 },
  { lower := 25215, upper := 25303, witness := RowWitness.topPrime 25189 },
  { lower := 25304, upper := 25395, witness := RowWitness.topPrime 25303 },
  { lower := 25600, upper := 25652, witness := RowWitness.topPrime 25589 },
  { lower := 25947, upper := 26000, witness := RowWitness.topPrime 25943 },
  { lower := 26011, upper := 26117, witness := RowWitness.topPrime 26003 },
  { lower := 26118, upper := 26125, witness := RowWitness.topPrime 26113 },
  { lower := 26411, upper := 26478, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26525, witness := RowWitness.topPrime 26501 },
  { lower := 26620, upper := 26622, witness := RowWitness.topPrime 26597 },
  { lower := 26624, upper := 26711, witness := RowWitness.topPrime 26597 },
  { lower := 26712, upper := 26738, witness := RowWitness.topPrime 26711 },
  { lower := 26934, upper := 27010, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27494, witness := RowWitness.topPrime 27431 },
  { lower := 27848, upper := 27849, witness := RowWitness.topPrime 27847 },
  { lower := 27951, upper := 27962, witness := RowWitness.topPrime 27947 },
  { lower := 28577, upper := 28687, witness := RowWitness.topPrime 28573 },
  { lower := 28688, upper := 28691, witness := RowWitness.topPrime 28687 },
  { lower := 28717, upper := 28825, witness := RowWitness.topPrime 28711 },
  { lower := 28826, upper := 28863, witness := RowWitness.topPrime 28817 },
  { lower := 29584, upper := 29592, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29882, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30360, witness := RowWitness.topPrime 30253 },
  { lower := 30613, upper := 30707, witness := RowWitness.topPrime 30593 },
  { lower := 30708, upper := 30732, witness := RowWitness.topPrime 30707 },
  { lower := 30758, upper := 30834, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31013, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31307, witness := RowWitness.topPrime 31193 },
  { lower := 31308, upper := 31327, witness := RowWitness.topPrime 31307 },
  { lower := 31329, upper := 31364, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31511, witness := RowWitness.topPrime 31397 },
  { lower := 31512, upper := 31547, witness := RowWitness.topPrime 31511 },
  { lower := 31939, upper := 31941, witness := RowWitness.topPrime 31907 },
  { lower := 31974, upper := 32053, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32882, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33733, witness := RowWitness.topPrime 33619 },
  { lower := 33734, upper := 33734, witness := RowWitness.topPrime 33721 },
  { lower := 34347, upper := 34451, witness := RowWitness.topPrime 34337 },
  { lower := 34452, upper := 34505, witness := RowWitness.topPrime 34439 },
  { lower := 34816, upper := 34921, witness := RowWitness.topPrime 34807 },
  { lower := 34922, upper := 34924, witness := RowWitness.topPrime 34919 },
  { lower := 35152, upper := 35245, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35405, witness := RowWitness.topPrime 35291 },
  { lower := 35406, upper := 35415, witness := RowWitness.topPrime 35401 },
  { lower := 36015, upper := 36026, witness := RowWitness.topPrime 36013 },
  { lower := 36982, upper := 37093, witness := RowWitness.topPrime 36979 },
  { lower := 37094, upper := 37094, witness := RowWitness.topPrime 37087 },
  { lower := 37210, upper := 37293, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37324, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37417, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37463, witness := RowWitness.topPrime 37441 },
  { lower := 37553, upper := 37560, witness := RowWitness.topPrime 37549 },
  { lower := 37636, upper := 37667, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38405, witness := RowWitness.topPrime 38303 },
  { lower := 38416, upper := 38421, witness := RowWitness.topPrime 38393 },
  { lower := 38912, upper := 38943, witness := RowWitness.topPrime 38903 },
  { lower := 39326, upper := 39437, witness := RowWitness.topPrime 39323 },
  { lower := 39438, upper := 39440, witness := RowWitness.topPrime 39419 },
  { lower := 39605, upper := 39660, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40442, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40918, witness := RowWitness.topPrime 40813 },
  { lower := 40931, upper := 40931, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41045, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41857, witness := RowWitness.topPrime 41771 },
  { lower := 42527, upper := 42550, witness := RowWitness.topPrime 42509 },
  { lower := 42632, upper := 42641, witness := RowWitness.topPrime 42611 },
  { lower := 43740, upper := 43801, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 44037, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44294, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 45004, witness := RowWitness.topPrime 44939 },
  { lower := 45056, upper := 45058, witness := RowWitness.topPrime 45053 },
  { lower := 47104, upper := 47159, witness := RowWitness.topPrime 47093 },
  { lower := 47526, upper := 47635, witness := RowWitness.topPrime 47521 },
  { lower := 47636, upper := 47638, witness := RowWitness.topPrime 47629 },
  { lower := 48013, upper := 48095, witness := RowWitness.topPrime 47981 },
  { lower := 48096, upper := 48134, witness := RowWitness.topPrime 48091 },
  { lower := 48223, upper := 48228, witness := RowWitness.topPrime 48221 },
  { lower := 48334, upper := 48337, witness := RowWitness.topPrime 48313 },
  { lower := 48373, upper := 48448, witness := RowWitness.topPrime 48371 },
  { lower := 48778, upper := 48848, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49244, witness := RowWitness.topPrime 49139 },
  { lower := 50410, upper := 50415, witness := RowWitness.topPrime 50387 },
  { lower := 50421, upper := 50524, witness := RowWitness.topPrime 50417 },
  { lower := 50531, upper := 50535, witness := RowWitness.topPrime 50527 },
  { lower := 50562, upper := 50645, witness := RowWitness.topPrime 50551 },
  { lower := 50653, upper := 50676, witness := RowWitness.topPrime 50651 },
  { lower := 51076, upper := 51119, witness := RowWitness.topPrime 51071 },
  { lower := 53290, upper := 53362, witness := RowWitness.topPrime 53281 },
  { lower := 53371, upper := 53404, witness := RowWitness.topPrime 53359 },
  { lower := 55451, upper := 55555, witness := RowWitness.topPrime 55441 },
  { lower := 55556, upper := 55561, witness := RowWitness.topPrime 55547 },
  { lower := 56180, upper := 56283, witness := RowWitness.topPrime 56179 },
  { lower := 57344, upper := 57359, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58678, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59070, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59650, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62524, witness := RowWitness.topPrime 62497 },
  { lower := 63368, upper := 63371, witness := RowWitness.topPrime 63367 },
  { lower := 63869, upper := 63977, witness := RowWitness.topPrime 63863 },
  { lower := 63978, upper := 63983, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65635, witness := RowWitness.topPrime 65521 },
  { lower := 65636, upper := 65650, witness := RowWitness.topPrime 65633 },
  { lower := 67335, upper := 67342, witness := RowWitness.topPrime 67307 },
  { lower := 68651, upper := 68753, witness := RowWitness.topPrime 68639 },
  { lower := 68754, upper := 68765, witness := RowWitness.topPrime 68749 },
  { lower := 68782, upper := 68808, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68896, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69004, witness := RowWitness.topPrime 68917 },
  { lower := 69632, upper := 69734, witness := RowWitness.topPrime 69623 },
  { lower := 71289, upper := 71400, witness := RowWitness.topPrime 71287 },
  { lower := 73205, upper := 73281, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73809, witness := RowWitness.topPrime 73727 },
  { lower := 85291, upper := 85373, witness := RowWitness.topPrime 85259 },
  { lower := 85374, upper := 85405, witness := RowWitness.topPrime 85369 },
  { lower := 85697, upper := 85797, witness := RowWitness.topPrime 85691 },
  { lower := 89383, upper := 89487, witness := RowWitness.topPrime 89381 },
  { lower := 91854, upper := 91923, witness := RowWitness.topPrime 91841 },
  { lower := 95052, upper := 95141, witness := RowWitness.topPrime 95027 },
  { lower := 95142, upper := 95162, witness := RowWitness.topPrime 95131 },
  { lower := 96026, upper := 96036, witness := RowWitness.topPrime 96017 },
  { lower := 98304, upper := 98374, witness := RowWitness.topPrime 98299 },
  { lower := 98415, upper := 98418, witness := RowWitness.topPrime 98411 },
  { lower := 100842, upper := 100934, witness := RowWitness.topPrime 100829 },
  { lower := 101306, upper := 101365, witness := RowWitness.topPrime 101293 },
  { lower := 102973, upper := 102999, witness := RowWitness.topPrime 102967 },
  { lower := 103041, upper := 103087, witness := RowWitness.topPrime 103007 },
  { lower := 118815, upper := 118915, witness := RowWitness.topPrime 118801 },
  { lower := 118916, upper := 118924, witness := RowWitness.topPrime 118913 },
  { lower := 122412, upper := 122431, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131840, witness := RowWitness.topPrime 131759 },
  { lower := 137842, upper := 137895, witness := RowWitness.topPrime 137831 },
  { lower := 137917, upper := 137956, witness := RowWitness.topPrime 137911 },
  { lower := 142814, upper := 142919, witness := RowWitness.topPrime 142811 },
  { lower := 146410, upper := 146448, witness := RowWitness.topPrime 146407 },
  { lower := 148877, upper := 148951, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148991, witness := RowWitness.topPrime 148949 },
  { lower := 178766, upper := 178860, witness := RowWitness.topPrime 178757 },
  { lower := 327701, upper := 327794, witness := RowWitness.topPrime 327689 }
]

def row115_layers : List CoverLayer := [
  { lower := 13110, upper := 26220, M := 28 },
  { lower := 26220, upper := 52440, M := 23 },
  { lower := 52440, upper := 104880, M := 20 },
  { lower := 104880, upper := 209760, M := 16 },
  { lower := 209760, upper := 419520, M := 14 },
  { lower := 419520, upper := 839040, M := 11 },
  { lower := 839040, upper := 1678080, M := 9 },
  { lower := 1678080, upper := 3356160, M := 8 },
  { lower := 3356160, upper := 6712320, M := 7 },
  { lower := 6712320, upper := 13424640, M := 6 },
  { lower := 13424640, upper := 26849280, M := 5 },
  { lower := 26849280, upper := 53698560, M := 4 },
  { lower := 53698560, upper := 107397120, M := 3 },
  { lower := 107397120, upper := 214794240, M := 3 },
  { lower := 214794240, upper := 429588480, M := 2 },
  { lower := 429588480, upper := 859176960, M := 2 },
  { lower := 859176960, upper := 1718353920, M := 2 },
  { lower := 1718353920, upper := 3436707840, M := 2 },
  { lower := 3436707840, upper := 6873415680, M := 1 },
  { lower := 6873415680, upper := 10000000000, M := 1 }
]

def row115 : FiniteCoverRow := {
  height := row115_height,
  goods := row115_goods,
  layers := row115_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good000_checked :
    goodSegmentCheck 115 38 80
      { lower := 232, upper := 343, witness := RowWitness.topPrime 229 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good001_checked :
    goodSegmentCheck 115 38 80
      { lower := 344, upper := 451, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good002_checked :
    goodSegmentCheck 115 38 80
      { lower := 452, upper := 563, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good003_checked :
    goodSegmentCheck 115 38 80
      { lower := 564, upper := 677, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good004_checked :
    goodSegmentCheck 115 38 80
      { lower := 678, upper := 791, witness := RowWitness.topPrime 677 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good005_checked :
    goodSegmentCheck 115 38 80
      { lower := 792, upper := 901, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good006_checked :
    goodSegmentCheck 115 38 80
      { lower := 902, upper := 1001, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good007_checked :
    goodSegmentCheck 115 38 80
      { lower := 1002, upper := 1111, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good008_checked :
    goodSegmentCheck 115 38 80
      { lower := 1112, upper := 1223, witness := RowWitness.topPrime 1109 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good009_checked :
    goodSegmentCheck 115 38 80
      { lower := 1224, upper := 1337, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good010_checked :
    goodSegmentCheck 115 38 80
      { lower := 1338, upper := 1441, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good011_checked :
    goodSegmentCheck 115 38 80
      { lower := 1442, upper := 1553, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good012_checked :
    goodSegmentCheck 115 38 80
      { lower := 1554, upper := 1667, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good013_checked :
    goodSegmentCheck 115 38 80
      { lower := 1668, upper := 1781, witness := RowWitness.topPrime 1667 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good014_checked :
    goodSegmentCheck 115 38 80
      { lower := 1782, upper := 1891, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good015_checked :
    goodSegmentCheck 115 38 80
      { lower := 1892, upper := 2003, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good016_checked :
    goodSegmentCheck 115 38 80
      { lower := 2004, upper := 2117, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good017_checked :
    goodSegmentCheck 115 38 80
      { lower := 2118, upper := 2227, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good018_checked :
    goodSegmentCheck 115 38 80
      { lower := 2228, upper := 2335, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good019_checked :
    goodSegmentCheck 115 38 80
      { lower := 2336, upper := 2447, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good020_checked :
    goodSegmentCheck 115 38 80
      { lower := 2448, upper := 2561, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good021_checked :
    goodSegmentCheck 115 38 80
      { lower := 2562, upper := 2671, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good022_checked :
    goodSegmentCheck 115 38 80
      { lower := 2672, upper := 2785, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good023_checked :
    goodSegmentCheck 115 38 80
      { lower := 2786, upper := 2891, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good024_checked :
    goodSegmentCheck 115 38 80
      { lower := 2892, upper := 3001, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good025_checked :
    goodSegmentCheck 115 38 80
      { lower := 3002, upper := 3115, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good026_checked :
    goodSegmentCheck 115 38 80
      { lower := 3116, upper := 3223, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good027_checked :
    goodSegmentCheck 115 38 80
      { lower := 3224, upper := 3335, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good028_checked :
    goodSegmentCheck 115 38 80
      { lower := 3336, upper := 3445, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good029_checked :
    goodSegmentCheck 115 38 80
      { lower := 3446, upper := 3547, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good030_checked :
    goodSegmentCheck 115 38 80
      { lower := 3548, upper := 3661, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good031_checked :
    goodSegmentCheck 115 38 80
      { lower := 3662, upper := 3773, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good032_checked :
    goodSegmentCheck 115 38 80
      { lower := 3774, upper := 3883, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good033_checked :
    goodSegmentCheck 115 38 80
      { lower := 3884, upper := 3995, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good034_checked :
    goodSegmentCheck 115 38 80
      { lower := 3996, upper := 4103, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good035_checked :
    goodSegmentCheck 115 38 80
      { lower := 4104, upper := 4213, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good036_checked :
    goodSegmentCheck 115 38 80
      { lower := 4214, upper := 4325, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good037_checked :
    goodSegmentCheck 115 38 80
      { lower := 4326, upper := 4411, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good038_checked :
    goodSegmentCheck 115 38 80
      { lower := 4412, upper := 4523, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good039_checked :
    goodSegmentCheck 115 38 80
      { lower := 4524, upper := 4637, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good040_checked :
    goodSegmentCheck 115 38 80
      { lower := 4638, upper := 4751, witness := RowWitness.topPrime 4637 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good041_checked :
    goodSegmentCheck 115 38 80
      { lower := 4752, upper := 4865, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good042_checked :
    goodSegmentCheck 115 38 80
      { lower := 4866, upper := 4975, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good043_checked :
    goodSegmentCheck 115 38 80
      { lower := 4976, upper := 5087, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good044_checked :
    goodSegmentCheck 115 38 80
      { lower := 5088, upper := 5201, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good045_checked :
    goodSegmentCheck 115 38 80
      { lower := 5202, upper := 5311, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good046_checked :
    goodSegmentCheck 115 38 80
      { lower := 5312, upper := 5423, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good047_checked :
    goodSegmentCheck 115 38 80
      { lower := 5424, upper := 5533, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good048_checked :
    goodSegmentCheck 115 38 80
      { lower := 5534, upper := 5645, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good049_checked :
    goodSegmentCheck 115 38 80
      { lower := 5646, upper := 5755, witness := RowWitness.topPrime 5641 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good050_checked :
    goodSegmentCheck 115 38 80
      { lower := 5756, upper := 5863, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good051_checked :
    goodSegmentCheck 115 38 80
      { lower := 5864, upper := 5975, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good052_checked :
    goodSegmentCheck 115 38 80
      { lower := 5976, upper := 6067, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good053_checked :
    goodSegmentCheck 115 38 80
      { lower := 6068, upper := 6181, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good054_checked :
    goodSegmentCheck 115 38 80
      { lower := 6182, upper := 6287, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good055_checked :
    goodSegmentCheck 115 38 80
      { lower := 6288, upper := 6401, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good056_checked :
    goodSegmentCheck 115 38 80
      { lower := 6402, upper := 6511, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good057_checked :
    goodSegmentCheck 115 38 80
      { lower := 6512, upper := 6605, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good058_checked :
    goodSegmentCheck 115 38 80
      { lower := 6606, upper := 6713, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good059_checked :
    goodSegmentCheck 115 38 80
      { lower := 6714, upper := 6823, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good060_checked :
    goodSegmentCheck 115 38 80
      { lower := 6824, upper := 6937, witness := RowWitness.topPrime 6823 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good061_checked :
    goodSegmentCheck 115 38 80
      { lower := 6938, upper := 7031, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good062_checked :
    goodSegmentCheck 115 38 80
      { lower := 7032, upper := 7141, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good063_checked :
    goodSegmentCheck 115 38 80
      { lower := 7142, upper := 7243, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good064_checked :
    goodSegmentCheck 115 38 80
      { lower := 7244, upper := 7357, witness := RowWitness.topPrime 7243 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good065_checked :
    goodSegmentCheck 115 38 80
      { lower := 7358, upper := 7465, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good066_checked :
    goodSegmentCheck 115 38 80
      { lower := 7466, upper := 7573, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good067_checked :
    goodSegmentCheck 115 38 80
      { lower := 7574, upper := 7687, witness := RowWitness.topPrime 7573 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good068_checked :
    goodSegmentCheck 115 38 80
      { lower := 7688, upper := 7801, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good069_checked :
    goodSegmentCheck 115 38 80
      { lower := 7802, upper := 7907, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good070_checked :
    goodSegmentCheck 115 38 80
      { lower := 7908, upper := 8021, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good071_checked :
    goodSegmentCheck 115 38 80
      { lower := 8022, upper := 8131, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good072_checked :
    goodSegmentCheck 115 38 80
      { lower := 8132, upper := 8237, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good073_checked :
    goodSegmentCheck 115 38 80
      { lower := 8238, upper := 8351, witness := RowWitness.topPrime 8237 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good074_checked :
    goodSegmentCheck 115 38 80
      { lower := 8352, upper := 8443, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good075_checked :
    goodSegmentCheck 115 38 80
      { lower := 8444, upper := 8557, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good076_checked :
    goodSegmentCheck 115 38 80
      { lower := 8558, upper := 8657, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good077_checked :
    goodSegmentCheck 115 38 80
      { lower := 8658, upper := 8761, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good078_checked :
    goodSegmentCheck 115 38 80
      { lower := 8762, upper := 8875, witness := RowWitness.topPrime 8761 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good079_checked :
    goodSegmentCheck 115 38 80
      { lower := 8876, upper := 8981, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good080_checked :
    goodSegmentCheck 115 38 80
      { lower := 8982, upper := 9085, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good081_checked :
    goodSegmentCheck 115 38 80
      { lower := 9086, upper := 9181, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good082_checked :
    goodSegmentCheck 115 38 80
      { lower := 9182, upper := 9295, witness := RowWitness.topPrime 9181 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good083_checked :
    goodSegmentCheck 115 38 80
      { lower := 9296, upper := 9407, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good084_checked :
    goodSegmentCheck 115 38 80
      { lower := 9408, upper := 9517, witness := RowWitness.topPrime 9403 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good085_checked :
    goodSegmentCheck 115 38 80
      { lower := 9518, upper := 9625, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good086_checked :
    goodSegmentCheck 115 38 80
      { lower := 9626, upper := 9737, witness := RowWitness.topPrime 9623 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good087_checked :
    goodSegmentCheck 115 38 80
      { lower := 9738, upper := 9847, witness := RowWitness.topPrime 9733 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good088_checked :
    goodSegmentCheck 115 38 80
      { lower := 9848, upper := 9953, witness := RowWitness.topPrime 9839 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good089_checked :
    goodSegmentCheck 115 38 80
      { lower := 9954, upper := 10063, witness := RowWitness.topPrime 9949 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good090_checked :
    goodSegmentCheck 115 38 80
      { lower := 10064, upper := 10175, witness := RowWitness.topPrime 10061 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good091_checked :
    goodSegmentCheck 115 38 80
      { lower := 10176, upper := 10283, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good092_checked :
    goodSegmentCheck 115 38 80
      { lower := 10284, upper := 10387, witness := RowWitness.topPrime 10273 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good093_checked :
    goodSegmentCheck 115 38 80
      { lower := 10388, upper := 10483, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good094_checked :
    goodSegmentCheck 115 38 80
      { lower := 10484, upper := 10591, witness := RowWitness.topPrime 10477 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good095_checked :
    goodSegmentCheck 115 38 80
      { lower := 10592, upper := 10703, witness := RowWitness.topPrime 10589 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good096_checked :
    goodSegmentCheck 115 38 80
      { lower := 10704, upper := 10805, witness := RowWitness.topPrime 10691 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good097_checked :
    goodSegmentCheck 115 38 80
      { lower := 10806, upper := 10913, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good098_checked :
    goodSegmentCheck 115 38 80
      { lower := 10914, upper := 11023, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good099_checked :
    goodSegmentCheck 115 38 80
      { lower := 11024, upper := 11117, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good100_checked :
    goodSegmentCheck 115 38 80
      { lower := 11118, upper := 11231, witness := RowWitness.topPrime 11117 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good101_checked :
    goodSegmentCheck 115 38 80
      { lower := 11232, upper := 11327, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good102_checked :
    goodSegmentCheck 115 38 80
      { lower := 11328, upper := 11435, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good103_checked :
    goodSegmentCheck 115 38 80
      { lower := 11436, upper := 11537, witness := RowWitness.topPrime 11423 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good104_checked :
    goodSegmentCheck 115 38 80
      { lower := 11538, upper := 11641, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good105_checked :
    goodSegmentCheck 115 38 80
      { lower := 11642, upper := 11747, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good106_checked :
    goodSegmentCheck 115 38 80
      { lower := 11748, upper := 11857, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good107_checked :
    goodSegmentCheck 115 38 80
      { lower := 11858, upper := 11953, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good108_checked :
    goodSegmentCheck 115 38 80
      { lower := 11954, upper := 12067, witness := RowWitness.topPrime 11953 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good109_checked :
    goodSegmentCheck 115 38 80
      { lower := 12068, upper := 12163, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good110_checked :
    goodSegmentCheck 115 38 80
      { lower := 12164, upper := 12277, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good111_checked :
    goodSegmentCheck 115 38 80
      { lower := 12278, upper := 12391, witness := RowWitness.topPrime 12277 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good112_checked :
    goodSegmentCheck 115 38 80
      { lower := 12392, upper := 12505, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good113_checked :
    goodSegmentCheck 115 38 80
      { lower := 12506, upper := 12617, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good114_checked :
    goodSegmentCheck 115 38 80
      { lower := 12618, upper := 12727, witness := RowWitness.topPrime 12613 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good115_checked :
    goodSegmentCheck 115 38 80
      { lower := 12728, upper := 12835, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good116_checked :
    goodSegmentCheck 115 38 80
      { lower := 12836, upper := 12943, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good117_checked :
    goodSegmentCheck 115 38 80
      { lower := 12944, upper := 13055, witness := RowWitness.topPrime 12941 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good118_checked :
    goodSegmentCheck 115 38 80
      { lower := 13056, upper := 13109, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good119_checked :
    goodSegmentCheck 115 38 80
      { lower := 13182, upper := 13236, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good120_checked :
    goodSegmentCheck 115 38 80
      { lower := 13254, upper := 13296, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good121_checked :
    goodSegmentCheck 115 38 80
      { lower := 13310, upper := 13423, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good122_checked :
    goodSegmentCheck 115 38 80
      { lower := 13424, upper := 13424, witness := RowWitness.topPrime 13421 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good123_checked :
    goodSegmentCheck 115 38 80
      { lower := 13454, upper := 13565, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good124_checked :
    goodSegmentCheck 115 38 80
      { lower := 13566, upper := 13570, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good125_checked :
    goodSegmentCheck 115 38 80
      { lower := 13718, upper := 13825, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good126_checked :
    goodSegmentCheck 115 38 80
      { lower := 13826, upper := 13921, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good127_checked :
    goodSegmentCheck 115 38 80
      { lower := 13922, upper := 13965, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good128_checked :
    goodSegmentCheck 115 38 80
      { lower := 14336, upper := 14441, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good129_checked :
    goodSegmentCheck 115 38 80
      { lower := 14442, upper := 14520, witness := RowWitness.topPrime 14437 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good130_checked :
    goodSegmentCheck 115 38 80
      { lower := 14641, upper := 14694, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good131_checked :
    goodSegmentCheck 115 38 80
      { lower := 14739, upper := 14755, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good132_checked :
    goodSegmentCheck 115 38 80
      { lower := 14792, upper := 14853, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good133_checked :
    goodSegmentCheck 115 38 80
      { lower := 14884, upper := 14906, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good134_checked :
    goodSegmentCheck 115 38 80
      { lower := 15123, upper := 15235, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good135_checked :
    goodSegmentCheck 115 38 80
      { lower := 15236, upper := 15243, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good136_checked :
    goodSegmentCheck 115 38 80
      { lower := 15360, upper := 15473, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good137_checked :
    goodSegmentCheck 115 38 80
      { lower := 15474, upper := 15493, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good138_checked :
    goodSegmentCheck 115 38 80
      { lower := 15979, upper := 16087, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good139_checked :
    goodSegmentCheck 115 38 80
      { lower := 16088, upper := 16101, witness := RowWitness.topPrime 16087 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good140_checked :
    goodSegmentCheck 115 38 80
      { lower := 16384, upper := 16495, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good141_checked :
    goodSegmentCheck 115 38 80
      { lower := 16496, upper := 16498, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good142_checked :
    goodSegmentCheck 115 38 80
      { lower := 16807, upper := 16901, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good143_checked :
    goodSegmentCheck 115 38 80
      { lower := 16902, upper := 16934, witness := RowWitness.topPrime 16901 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good144_checked :
    goodSegmentCheck 115 38 80
      { lower := 17303, upper := 17413, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good145_checked :
    goodSegmentCheck 115 38 80
      { lower := 17414, upper := 17515, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good146_checked :
    goodSegmentCheck 115 38 80
      { lower := 17516, upper := 17522, witness := RowWitness.topPrime 17509 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good147_checked :
    goodSegmentCheck 115 38 80
      { lower := 17576, upper := 17610, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good148_checked :
    goodSegmentCheck 115 38 80
      { lower := 17661, upper := 17773, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good149_checked :
    goodSegmentCheck 115 38 80
      { lower := 17774, upper := 17775, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good150_checked :
    goodSegmentCheck 115 38 80
      { lower := 18259, upper := 18339, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good151_checked :
    goodSegmentCheck 115 38 80
      { lower := 18490, upper := 18595, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good152_checked :
    goodSegmentCheck 115 38 80
      { lower := 18596, upper := 18616, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good153_checked :
    goodSegmentCheck 115 38 80
      { lower := 18634, upper := 18719, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good154_checked :
    goodSegmentCheck 115 38 80
      { lower := 18723, upper := 18748, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good155_checked :
    goodSegmentCheck 115 38 80
      { lower := 18818, upper := 18837, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good156_checked :
    goodSegmentCheck 115 38 80
      { lower := 19208, upper := 19321, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good157_checked :
    goodSegmentCheck 115 38 80
      { lower := 19322, upper := 19322, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good158_checked :
    goodSegmentCheck 115 38 80
      { lower := 19456, upper := 19457, witness := RowWitness.topPrime 19447 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good159_checked :
    goodSegmentCheck 115 38 80
      { lower := 19663, upper := 19775, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good160_checked :
    goodSegmentCheck 115 38 80
      { lower := 19776, upper := 19797, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good161_checked :
    goodSegmentCheck 115 38 80
      { lower := 19881, upper := 19887, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good162_checked :
    goodSegmentCheck 115 38 80
      { lower := 19965, upper := 19995, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good163_checked :
    goodSegmentCheck 115 38 80
      { lower := 20172, upper := 20275, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good164_checked :
    goodSegmentCheck 115 38 80
      { lower := 20276, upper := 20295, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good165_checked :
    goodSegmentCheck 115 38 80
      { lower := 20402, upper := 20513, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good166_checked :
    goodSegmentCheck 115 38 80
      { lower := 20514, upper := 20526, witness := RowWitness.topPrime 20509 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good167_checked :
    goodSegmentCheck 115 38 80
      { lower := 20535, upper := 20647, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good168_checked :
    goodSegmentCheck 115 38 80
      { lower := 20648, upper := 20649, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good169_checked :
    goodSegmentCheck 115 38 80
      { lower := 20667, upper := 20691, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good170_checked :
    goodSegmentCheck 115 38 80
      { lower := 21218, upper := 21256, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good171_checked :
    goodSegmentCheck 115 38 80
      { lower := 21296, upper := 21397, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good172_checked :
    goodSegmentCheck 115 38 80
      { lower := 21398, upper := 21410, witness := RowWitness.topPrime 21397 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good173_checked :
    goodSegmentCheck 115 38 80
      { lower := 21609, upper := 21618, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good174_checked :
    goodSegmentCheck 115 38 80
      { lower := 21866, upper := 21977, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good175_checked :
    goodSegmentCheck 115 38 80
      { lower := 21978, upper := 22018, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good176_checked :
    goodSegmentCheck 115 38 80
      { lower := 22103, upper := 22207, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good177_checked :
    goodSegmentCheck 115 38 80
      { lower := 22208, upper := 22217, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good178_checked :
    goodSegmentCheck 115 38 80
      { lower := 22472, upper := 22583, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good179_checked :
    goodSegmentCheck 115 38 80
      { lower := 22584, upper := 22586, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good180_checked :
    goodSegmentCheck 115 38 80
      { lower := 22627, upper := 22642, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good181_checked :
    goodSegmentCheck 115 38 80
      { lower := 22707, upper := 22741, witness := RowWitness.topPrime 22699 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good182_checked :
    goodSegmentCheck 115 38 80
      { lower := 23548, upper := 23653, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good183_checked :
    goodSegmentCheck 115 38 80
      { lower := 23654, upper := 23662, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good184_checked :
    goodSegmentCheck 115 38 80
      { lower := 23763, upper := 23875, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good185_checked :
    goodSegmentCheck 115 38 80
      { lower := 23876, upper := 23876, witness := RowWitness.topPrime 23873 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good186_checked :
    goodSegmentCheck 115 38 80
      { lower := 24010, upper := 24121, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good187_checked :
    goodSegmentCheck 115 38 80
      { lower := 24122, upper := 24151, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good188_checked :
    goodSegmentCheck 115 38 80
      { lower := 24167, upper := 24171, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good189_checked :
    goodSegmentCheck 115 38 80
      { lower := 24367, upper := 24473, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good190_checked :
    goodSegmentCheck 115 38 80
      { lower := 24474, upper := 24481, witness := RowWitness.topPrime 24473 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good191_checked :
    goodSegmentCheck 115 38 80
      { lower := 24576, upper := 24685, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good192_checked :
    goodSegmentCheck 115 38 80
      { lower := 24686, upper := 24690, witness := RowWitness.topPrime 24683 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good193_checked :
    goodSegmentCheck 115 38 80
      { lower := 24986, upper := 25078, witness := RowWitness.topPrime 24979 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good194_checked :
    goodSegmentCheck 115 38 80
      { lower := 25215, upper := 25303, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good195_checked :
    goodSegmentCheck 115 38 80
      { lower := 25304, upper := 25395, witness := RowWitness.topPrime 25303 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good196_checked :
    goodSegmentCheck 115 38 80
      { lower := 25600, upper := 25652, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good197_checked :
    goodSegmentCheck 115 38 80
      { lower := 25947, upper := 26000, witness := RowWitness.topPrime 25943 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good198_checked :
    goodSegmentCheck 115 38 80
      { lower := 26011, upper := 26117, witness := RowWitness.topPrime 26003 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good199_checked :
    goodSegmentCheck 115 38 80
      { lower := 26118, upper := 26125, witness := RowWitness.topPrime 26113 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good200_checked :
    goodSegmentCheck 115 38 80
      { lower := 26411, upper := 26478, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good201_checked :
    goodSegmentCheck 115 38 80
      { lower := 26508, upper := 26525, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good202_checked :
    goodSegmentCheck 115 38 80
      { lower := 26620, upper := 26622, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good203_checked :
    goodSegmentCheck 115 38 80
      { lower := 26624, upper := 26711, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good204_checked :
    goodSegmentCheck 115 38 80
      { lower := 26712, upper := 26738, witness := RowWitness.topPrime 26711 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good205_checked :
    goodSegmentCheck 115 38 80
      { lower := 26934, upper := 27010, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good206_checked :
    goodSegmentCheck 115 38 80
      { lower := 27436, upper := 27494, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good207_checked :
    goodSegmentCheck 115 38 80
      { lower := 27848, upper := 27849, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good208_checked :
    goodSegmentCheck 115 38 80
      { lower := 27951, upper := 27962, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good209_checked :
    goodSegmentCheck 115 38 80
      { lower := 28577, upper := 28687, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good210_checked :
    goodSegmentCheck 115 38 80
      { lower := 28688, upper := 28691, witness := RowWitness.topPrime 28687 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good211_checked :
    goodSegmentCheck 115 38 80
      { lower := 28717, upper := 28825, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good212_checked :
    goodSegmentCheck 115 38 80
      { lower := 28826, upper := 28863, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good213_checked :
    goodSegmentCheck 115 38 80
      { lower := 29584, upper := 29592, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good214_checked :
    goodSegmentCheck 115 38 80
      { lower := 29791, upper := 29882, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good215_checked :
    goodSegmentCheck 115 38 80
      { lower := 30258, upper := 30360, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good216_checked :
    goodSegmentCheck 115 38 80
      { lower := 30613, upper := 30707, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good217_checked :
    goodSegmentCheck 115 38 80
      { lower := 30708, upper := 30732, witness := RowWitness.topPrime 30707 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good218_checked :
    goodSegmentCheck 115 38 80
      { lower := 30758, upper := 30834, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good219_checked :
    goodSegmentCheck 115 38 80
      { lower := 30926, upper := 31013, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good220_checked :
    goodSegmentCheck 115 38 80
      { lower := 31213, upper := 31307, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good221_checked :
    goodSegmentCheck 115 38 80
      { lower := 31308, upper := 31327, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good222_checked :
    goodSegmentCheck 115 38 80
      { lower := 31329, upper := 31364, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good223_checked :
    goodSegmentCheck 115 38 80
      { lower := 31423, upper := 31511, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good224_checked :
    goodSegmentCheck 115 38 80
      { lower := 31512, upper := 31547, witness := RowWitness.topPrime 31511 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good225_checked :
    goodSegmentCheck 115 38 80
      { lower := 31939, upper := 31941, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good226_checked :
    goodSegmentCheck 115 38 80
      { lower := 31974, upper := 32053, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good227_checked :
    goodSegmentCheck 115 38 80
      { lower := 32805, upper := 32882, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good228_checked :
    goodSegmentCheck 115 38 80
      { lower := 33620, upper := 33733, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good229_checked :
    goodSegmentCheck 115 38 80
      { lower := 33734, upper := 33734, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good230_checked :
    goodSegmentCheck 115 38 80
      { lower := 34347, upper := 34451, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good231_checked :
    goodSegmentCheck 115 38 80
      { lower := 34452, upper := 34505, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good232_checked :
    goodSegmentCheck 115 38 80
      { lower := 34816, upper := 34921, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good233_checked :
    goodSegmentCheck 115 38 80
      { lower := 34922, upper := 34924, witness := RowWitness.topPrime 34919 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good234_checked :
    goodSegmentCheck 115 38 80
      { lower := 35152, upper := 35245, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good235_checked :
    goodSegmentCheck 115 38 80
      { lower := 35301, upper := 35405, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good236_checked :
    goodSegmentCheck 115 38 80
      { lower := 35406, upper := 35415, witness := RowWitness.topPrime 35401 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good237_checked :
    goodSegmentCheck 115 38 80
      { lower := 36015, upper := 36026, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good238_checked :
    goodSegmentCheck 115 38 80
      { lower := 36982, upper := 37093, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good239_checked :
    goodSegmentCheck 115 38 80
      { lower := 37094, upper := 37094, witness := RowWitness.topPrime 37087 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good240_checked :
    goodSegmentCheck 115 38 80
      { lower := 37210, upper := 37293, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good241_checked :
    goodSegmentCheck 115 38 80
      { lower := 37303, upper := 37324, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good242_checked :
    goodSegmentCheck 115 38 80
      { lower := 37349, upper := 37417, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good243_checked :
    goodSegmentCheck 115 38 80
      { lower := 37446, upper := 37463, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good244_checked :
    goodSegmentCheck 115 38 80
      { lower := 37553, upper := 37560, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good245_checked :
    goodSegmentCheck 115 38 80
      { lower := 37636, upper := 37667, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good246_checked :
    goodSegmentCheck 115 38 80
      { lower := 38307, upper := 38405, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good247_checked :
    goodSegmentCheck 115 38 80
      { lower := 38416, upper := 38421, witness := RowWitness.topPrime 38393 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good248_checked :
    goodSegmentCheck 115 38 80
      { lower := 38912, upper := 38943, witness := RowWitness.topPrime 38903 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good249_checked :
    goodSegmentCheck 115 38 80
      { lower := 39326, upper := 39437, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good250_checked :
    goodSegmentCheck 115 38 80
      { lower := 39438, upper := 39440, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good251_checked :
    goodSegmentCheck 115 38 80
      { lower := 39605, upper := 39660, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good252_checked :
    goodSegmentCheck 115 38 80
      { lower := 40401, upper := 40442, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good253_checked :
    goodSegmentCheck 115 38 80
      { lower := 40817, upper := 40918, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good254_checked :
    goodSegmentCheck 115 38 80
      { lower := 40931, upper := 40931, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good255_checked :
    goodSegmentCheck 115 38 80
      { lower := 40960, upper := 41045, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good256_checked :
    goodSegmentCheck 115 38 80
      { lower := 41772, upper := 41857, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good257_checked :
    goodSegmentCheck 115 38 80
      { lower := 42527, upper := 42550, witness := RowWitness.topPrime 42509 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good258_checked :
    goodSegmentCheck 115 38 80
      { lower := 42632, upper := 42641, witness := RowWitness.topPrime 42611 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good259_checked :
    goodSegmentCheck 115 38 80
      { lower := 43740, upper := 43801, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good260_checked :
    goodSegmentCheck 115 38 80
      { lower := 43940, upper := 44037, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good261_checked :
    goodSegmentCheck 115 38 80
      { lower := 44217, upper := 44294, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good262_checked :
    goodSegmentCheck 115 38 80
      { lower := 44944, upper := 45004, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good263_checked :
    goodSegmentCheck 115 38 80
      { lower := 45056, upper := 45058, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good264_checked :
    goodSegmentCheck 115 38 80
      { lower := 47104, upper := 47159, witness := RowWitness.topPrime 47093 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good265_checked :
    goodSegmentCheck 115 38 80
      { lower := 47526, upper := 47635, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good266_checked :
    goodSegmentCheck 115 38 80
      { lower := 47636, upper := 47638, witness := RowWitness.topPrime 47629 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good267_checked :
    goodSegmentCheck 115 38 80
      { lower := 48013, upper := 48095, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good268_checked :
    goodSegmentCheck 115 38 80
      { lower := 48096, upper := 48134, witness := RowWitness.topPrime 48091 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good269_checked :
    goodSegmentCheck 115 38 80
      { lower := 48223, upper := 48228, witness := RowWitness.topPrime 48221 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good270_checked :
    goodSegmentCheck 115 38 80
      { lower := 48334, upper := 48337, witness := RowWitness.topPrime 48313 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good271_checked :
    goodSegmentCheck 115 38 80
      { lower := 48373, upper := 48448, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good272_checked :
    goodSegmentCheck 115 38 80
      { lower := 48778, upper := 48848, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good273_checked :
    goodSegmentCheck 115 38 80
      { lower := 49152, upper := 49244, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good274_checked :
    goodSegmentCheck 115 38 80
      { lower := 50410, upper := 50415, witness := RowWitness.topPrime 50387 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good275_checked :
    goodSegmentCheck 115 38 80
      { lower := 50421, upper := 50524, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good276_checked :
    goodSegmentCheck 115 38 80
      { lower := 50531, upper := 50535, witness := RowWitness.topPrime 50527 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good277_checked :
    goodSegmentCheck 115 38 80
      { lower := 50562, upper := 50645, witness := RowWitness.topPrime 50551 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good278_checked :
    goodSegmentCheck 115 38 80
      { lower := 50653, upper := 50676, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good279_checked :
    goodSegmentCheck 115 38 80
      { lower := 51076, upper := 51119, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good280_checked :
    goodSegmentCheck 115 38 80
      { lower := 53290, upper := 53362, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good281_checked :
    goodSegmentCheck 115 38 80
      { lower := 53371, upper := 53404, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good282_checked :
    goodSegmentCheck 115 38 80
      { lower := 55451, upper := 55555, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good283_checked :
    goodSegmentCheck 115 38 80
      { lower := 55556, upper := 55561, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good284_checked :
    goodSegmentCheck 115 38 80
      { lower := 56180, upper := 56283, witness := RowWitness.topPrime 56179 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good285_checked :
    goodSegmentCheck 115 38 80
      { lower := 57344, upper := 57359, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good286_checked :
    goodSegmentCheck 115 38 80
      { lower := 58619, upper := 58678, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good287_checked :
    goodSegmentCheck 115 38 80
      { lower := 59049, upper := 59070, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good288_checked :
    goodSegmentCheck 115 38 80
      { lower := 59582, upper := 59650, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good289_checked :
    goodSegmentCheck 115 38 80
      { lower := 62500, upper := 62524, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good290_checked :
    goodSegmentCheck 115 38 80
      { lower := 63368, upper := 63371, witness := RowWitness.topPrime 63367 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good291_checked :
    goodSegmentCheck 115 38 80
      { lower := 63869, upper := 63977, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good292_checked :
    goodSegmentCheck 115 38 80
      { lower := 63978, upper := 63983, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good293_checked :
    goodSegmentCheck 115 38 80
      { lower := 65536, upper := 65635, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good294_checked :
    goodSegmentCheck 115 38 80
      { lower := 65636, upper := 65650, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good295_checked :
    goodSegmentCheck 115 38 80
      { lower := 67335, upper := 67342, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good296_checked :
    goodSegmentCheck 115 38 80
      { lower := 68651, upper := 68753, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good297_checked :
    goodSegmentCheck 115 38 80
      { lower := 68754, upper := 68765, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good298_checked :
    goodSegmentCheck 115 38 80
      { lower := 68782, upper := 68808, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good299_checked :
    goodSegmentCheck 115 38 80
      { lower := 68890, upper := 68896, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good300_checked :
    goodSegmentCheck 115 38 80
      { lower := 68921, upper := 69004, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good301_checked :
    goodSegmentCheck 115 38 80
      { lower := 69632, upper := 69734, witness := RowWitness.topPrime 69623 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good302_checked :
    goodSegmentCheck 115 38 80
      { lower := 71289, upper := 71400, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good303_checked :
    goodSegmentCheck 115 38 80
      { lower := 73205, upper := 73281, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good293_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good294_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good295_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good296_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good297_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good298_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good299_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good300_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good301_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good302_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good303_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good304_checked :
    goodSegmentCheck 115 38 80
      { lower := 73728, upper := 73809, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good305_checked :
    goodSegmentCheck 115 38 80
      { lower := 85291, upper := 85373, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good306_checked :
    goodSegmentCheck 115 38 80
      { lower := 85374, upper := 85405, witness := RowWitness.topPrime 85369 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good307_checked :
    goodSegmentCheck 115 38 80
      { lower := 85697, upper := 85797, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good308_checked :
    goodSegmentCheck 115 38 80
      { lower := 89383, upper := 89487, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good309_checked :
    goodSegmentCheck 115 38 80
      { lower := 91854, upper := 91923, witness := RowWitness.topPrime 91841 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good310_checked :
    goodSegmentCheck 115 38 80
      { lower := 95052, upper := 95141, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good311_checked :
    goodSegmentCheck 115 38 80
      { lower := 95142, upper := 95162, witness := RowWitness.topPrime 95131 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good312_checked :
    goodSegmentCheck 115 38 80
      { lower := 96026, upper := 96036, witness := RowWitness.topPrime 96017 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good313_checked :
    goodSegmentCheck 115 38 80
      { lower := 98304, upper := 98374, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good314_checked :
    goodSegmentCheck 115 38 80
      { lower := 98415, upper := 98418, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good315_checked :
    goodSegmentCheck 115 38 80
      { lower := 100842, upper := 100934, witness := RowWitness.topPrime 100829 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good316_checked :
    goodSegmentCheck 115 38 80
      { lower := 101306, upper := 101365, witness := RowWitness.topPrime 101293 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good317_checked :
    goodSegmentCheck 115 38 80
      { lower := 102973, upper := 102999, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good318_checked :
    goodSegmentCheck 115 38 80
      { lower := 103041, upper := 103087, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good319_checked :
    goodSegmentCheck 115 38 80
      { lower := 118815, upper := 118915, witness := RowWitness.topPrime 118801 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good307_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good308_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good309_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good310_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good311_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good312_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good313_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good314_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good315_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good316_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good317_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good318_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good319_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_good320_checked :
    goodSegmentCheck 115 38 80
      { lower := 118916, upper := 118924, witness := RowWitness.topPrime 118913 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good321_checked :
    goodSegmentCheck 115 38 80
      { lower := 122412, upper := 122431, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good322_checked :
    goodSegmentCheck 115 38 80
      { lower := 131769, upper := 131840, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good323_checked :
    goodSegmentCheck 115 38 80
      { lower := 137842, upper := 137895, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good324_checked :
    goodSegmentCheck 115 38 80
      { lower := 137917, upper := 137956, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good325_checked :
    goodSegmentCheck 115 38 80
      { lower := 142814, upper := 142919, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good326_checked :
    goodSegmentCheck 115 38 80
      { lower := 146410, upper := 146448, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good327_checked :
    goodSegmentCheck 115 38 80
      { lower := 148877, upper := 148951, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good328_checked :
    goodSegmentCheck 115 38 80
      { lower := 148955, upper := 148991, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good329_checked :
    goodSegmentCheck 115 38 80
      { lower := 178766, upper := 178860, witness := RowWitness.topPrime 178757 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row115_good330_checked :
    goodSegmentCheck 115 38 80
      { lower := 327701, upper := 327794, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 115) (r := 38) (s := 80) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good320_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good321_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good322_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good323_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good324_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good325_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good326_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good327_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good328_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good329_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_good330_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_goods_checked :
    row115.goods.all (goodSegmentCheck row115.height.i row115.height.r row115.height.s) = true := by
  change row115_goods.all (goodSegmentCheck 115 38 80) = true
  simp only [row115_goods, List.all_cons, List.all_nil,
    row115_good000_checked,
    row115_good001_checked,
    row115_good002_checked,
    row115_good003_checked,
    row115_good004_checked,
    row115_good005_checked,
    row115_good006_checked,
    row115_good007_checked,
    row115_good008_checked,
    row115_good009_checked,
    row115_good010_checked,
    row115_good011_checked,
    row115_good012_checked,
    row115_good013_checked,
    row115_good014_checked,
    row115_good015_checked,
    row115_good016_checked,
    row115_good017_checked,
    row115_good018_checked,
    row115_good019_checked,
    row115_good020_checked,
    row115_good021_checked,
    row115_good022_checked,
    row115_good023_checked,
    row115_good024_checked,
    row115_good025_checked,
    row115_good026_checked,
    row115_good027_checked,
    row115_good028_checked,
    row115_good029_checked,
    row115_good030_checked,
    row115_good031_checked,
    row115_good032_checked,
    row115_good033_checked,
    row115_good034_checked,
    row115_good035_checked,
    row115_good036_checked,
    row115_good037_checked,
    row115_good038_checked,
    row115_good039_checked,
    row115_good040_checked,
    row115_good041_checked,
    row115_good042_checked,
    row115_good043_checked,
    row115_good044_checked,
    row115_good045_checked,
    row115_good046_checked,
    row115_good047_checked,
    row115_good048_checked,
    row115_good049_checked,
    row115_good050_checked,
    row115_good051_checked,
    row115_good052_checked,
    row115_good053_checked,
    row115_good054_checked,
    row115_good055_checked,
    row115_good056_checked,
    row115_good057_checked,
    row115_good058_checked,
    row115_good059_checked,
    row115_good060_checked,
    row115_good061_checked,
    row115_good062_checked,
    row115_good063_checked,
    row115_good064_checked,
    row115_good065_checked,
    row115_good066_checked,
    row115_good067_checked,
    row115_good068_checked,
    row115_good069_checked,
    row115_good070_checked,
    row115_good071_checked,
    row115_good072_checked,
    row115_good073_checked,
    row115_good074_checked,
    row115_good075_checked,
    row115_good076_checked,
    row115_good077_checked,
    row115_good078_checked,
    row115_good079_checked,
    row115_good080_checked,
    row115_good081_checked,
    row115_good082_checked,
    row115_good083_checked,
    row115_good084_checked,
    row115_good085_checked,
    row115_good086_checked,
    row115_good087_checked,
    row115_good088_checked,
    row115_good089_checked,
    row115_good090_checked,
    row115_good091_checked,
    row115_good092_checked,
    row115_good093_checked,
    row115_good094_checked,
    row115_good095_checked,
    row115_good096_checked,
    row115_good097_checked,
    row115_good098_checked,
    row115_good099_checked,
    row115_good100_checked,
    row115_good101_checked,
    row115_good102_checked,
    row115_good103_checked,
    row115_good104_checked,
    row115_good105_checked,
    row115_good106_checked,
    row115_good107_checked,
    row115_good108_checked,
    row115_good109_checked,
    row115_good110_checked,
    row115_good111_checked,
    row115_good112_checked,
    row115_good113_checked,
    row115_good114_checked,
    row115_good115_checked,
    row115_good116_checked,
    row115_good117_checked,
    row115_good118_checked,
    row115_good119_checked,
    row115_good120_checked,
    row115_good121_checked,
    row115_good122_checked,
    row115_good123_checked,
    row115_good124_checked,
    row115_good125_checked,
    row115_good126_checked,
    row115_good127_checked,
    row115_good128_checked,
    row115_good129_checked,
    row115_good130_checked,
    row115_good131_checked,
    row115_good132_checked,
    row115_good133_checked,
    row115_good134_checked,
    row115_good135_checked,
    row115_good136_checked,
    row115_good137_checked,
    row115_good138_checked,
    row115_good139_checked,
    row115_good140_checked,
    row115_good141_checked,
    row115_good142_checked,
    row115_good143_checked,
    row115_good144_checked,
    row115_good145_checked,
    row115_good146_checked,
    row115_good147_checked,
    row115_good148_checked,
    row115_good149_checked,
    row115_good150_checked,
    row115_good151_checked,
    row115_good152_checked,
    row115_good153_checked,
    row115_good154_checked,
    row115_good155_checked,
    row115_good156_checked,
    row115_good157_checked,
    row115_good158_checked,
    row115_good159_checked,
    row115_good160_checked,
    row115_good161_checked,
    row115_good162_checked,
    row115_good163_checked,
    row115_good164_checked,
    row115_good165_checked,
    row115_good166_checked,
    row115_good167_checked,
    row115_good168_checked,
    row115_good169_checked,
    row115_good170_checked,
    row115_good171_checked,
    row115_good172_checked,
    row115_good173_checked,
    row115_good174_checked,
    row115_good175_checked,
    row115_good176_checked,
    row115_good177_checked,
    row115_good178_checked,
    row115_good179_checked,
    row115_good180_checked,
    row115_good181_checked,
    row115_good182_checked,
    row115_good183_checked,
    row115_good184_checked,
    row115_good185_checked,
    row115_good186_checked,
    row115_good187_checked,
    row115_good188_checked,
    row115_good189_checked,
    row115_good190_checked,
    row115_good191_checked,
    row115_good192_checked,
    row115_good193_checked,
    row115_good194_checked,
    row115_good195_checked,
    row115_good196_checked,
    row115_good197_checked,
    row115_good198_checked,
    row115_good199_checked,
    row115_good200_checked,
    row115_good201_checked,
    row115_good202_checked,
    row115_good203_checked,
    row115_good204_checked,
    row115_good205_checked,
    row115_good206_checked,
    row115_good207_checked,
    row115_good208_checked,
    row115_good209_checked,
    row115_good210_checked,
    row115_good211_checked,
    row115_good212_checked,
    row115_good213_checked,
    row115_good214_checked,
    row115_good215_checked,
    row115_good216_checked,
    row115_good217_checked,
    row115_good218_checked,
    row115_good219_checked,
    row115_good220_checked,
    row115_good221_checked,
    row115_good222_checked,
    row115_good223_checked,
    row115_good224_checked,
    row115_good225_checked,
    row115_good226_checked,
    row115_good227_checked,
    row115_good228_checked,
    row115_good229_checked,
    row115_good230_checked,
    row115_good231_checked,
    row115_good232_checked,
    row115_good233_checked,
    row115_good234_checked,
    row115_good235_checked,
    row115_good236_checked,
    row115_good237_checked,
    row115_good238_checked,
    row115_good239_checked,
    row115_good240_checked,
    row115_good241_checked,
    row115_good242_checked,
    row115_good243_checked,
    row115_good244_checked,
    row115_good245_checked,
    row115_good246_checked,
    row115_good247_checked,
    row115_good248_checked,
    row115_good249_checked,
    row115_good250_checked,
    row115_good251_checked,
    row115_good252_checked,
    row115_good253_checked,
    row115_good254_checked,
    row115_good255_checked,
    row115_good256_checked,
    row115_good257_checked,
    row115_good258_checked,
    row115_good259_checked,
    row115_good260_checked,
    row115_good261_checked,
    row115_good262_checked,
    row115_good263_checked,
    row115_good264_checked,
    row115_good265_checked,
    row115_good266_checked,
    row115_good267_checked,
    row115_good268_checked,
    row115_good269_checked,
    row115_good270_checked,
    row115_good271_checked,
    row115_good272_checked,
    row115_good273_checked,
    row115_good274_checked,
    row115_good275_checked,
    row115_good276_checked,
    row115_good277_checked,
    row115_good278_checked,
    row115_good279_checked,
    row115_good280_checked,
    row115_good281_checked,
    row115_good282_checked,
    row115_good283_checked,
    row115_good284_checked,
    row115_good285_checked,
    row115_good286_checked,
    row115_good287_checked,
    row115_good288_checked,
    row115_good289_checked,
    row115_good290_checked,
    row115_good291_checked,
    row115_good292_checked,
    row115_good293_checked,
    row115_good294_checked,
    row115_good295_checked,
    row115_good296_checked,
    row115_good297_checked,
    row115_good298_checked,
    row115_good299_checked,
    row115_good300_checked,
    row115_good301_checked,
    row115_good302_checked,
    row115_good303_checked,
    row115_good304_checked,
    row115_good305_checked,
    row115_good306_checked,
    row115_good307_checked,
    row115_good308_checked,
    row115_good309_checked,
    row115_good310_checked,
    row115_good311_checked,
    row115_good312_checked,
    row115_good313_checked,
    row115_good314_checked,
    row115_good315_checked,
    row115_good316_checked,
    row115_good317_checked,
    row115_good318_checked,
    row115_good319_checked,
    row115_good320_checked,
    row115_good321_checked,
    row115_good322_checked,
    row115_good323_checked,
    row115_good324_checked,
    row115_good325_checked,
    row115_good326_checked,
    row115_good327_checked,
    row115_good328_checked,
    row115_good329_checked,
    row115_good330_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_registered :
    decide (row115.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row115_small_checked :
    coverCheck (2 * row115.height.i + 2) (row115.height.i * (row115.height.i - 1) - 1)
      (row115.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row115_layerCover_checked :
    coverCheck (row115.height.i * (row115.height.i - 1)) (row115.height.n0 - 1)
      (row115.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row115_bounds : List NatInterval :=
  [(232, 343), (344, 451), (452, 563), (564, 677), (678, 791), (792, 901), (902, 1001), (1002, 1111), (1112, 1223), (1224, 1337), (1338, 1441), (1442, 1553), (1554, 1667), (1668, 1781), (1782, 1891), (1892, 2003), (2004, 2117), (2118, 2227), (2228, 2335), (2336, 2447), (2448, 2561), (2562, 2671), (2672, 2785), (2786, 2891), (2892, 3001), (3002, 3115), (3116, 3223), (3224, 3335), (3336, 3445), (3446, 3547), (3548, 3661), (3662, 3773), (3774, 3883), (3884, 3995), (3996, 4103), (4104, 4213), (4214, 4325), (4326, 4411), (4412, 4523), (4524, 4637), (4638, 4751), (4752, 4865), (4866, 4975), (4976, 5087), (5088, 5201), (5202, 5311), (5312, 5423), (5424, 5533), (5534, 5645), (5646, 5755), (5756, 5863), (5864, 5975), (5976, 6067), (6068, 6181), (6182, 6287), (6288, 6401), (6402, 6511), (6512, 6605), (6606, 6713), (6714, 6823), (6824, 6937), (6938, 7031), (7032, 7141), (7142, 7243), (7244, 7357), (7358, 7465), (7466, 7573), (7574, 7687), (7688, 7801), (7802, 7907), (7908, 8021), (8022, 8131), (8132, 8237), (8238, 8351), (8352, 8443), (8444, 8557), (8558, 8657), (8658, 8761), (8762, 8875), (8876, 8981), (8982, 9085), (9086, 9181), (9182, 9295), (9296, 9407), (9408, 9517), (9518, 9625), (9626, 9737), (9738, 9847), (9848, 9953), (9954, 10063), (10064, 10175), (10176, 10283), (10284, 10387), (10388, 10483), (10484, 10591), (10592, 10703), (10704, 10805), (10806, 10913), (10914, 11023), (11024, 11117), (11118, 11231), (11232, 11327), (11328, 11435), (11436, 11537), (11538, 11641), (11642, 11747), (11748, 11857), (11858, 11953), (11954, 12067), (12068, 12163), (12164, 12277), (12278, 12391), (12392, 12505), (12506, 12617), (12618, 12727), (12728, 12835), (12836, 12943), (12944, 13055), (13056, 13109), (13182, 13236), (13254, 13296), (13310, 13423), (13424, 13424), (13454, 13565), (13566, 13570), (13718, 13825), (13826, 13921), (13922, 13965), (14336, 14441), (14442, 14520), (14641, 14694), (14739, 14755), (14792, 14853), (14884, 14906), (15123, 15235), (15236, 15243), (15360, 15473), (15474, 15493), (15979, 16087), (16088, 16101), (16384, 16495), (16496, 16498), (16807, 16901), (16902, 16934), (17303, 17413), (17414, 17515), (17516, 17522), (17576, 17610), (17661, 17773), (17774, 17775), (18259, 18339), (18490, 18595), (18596, 18616), (18634, 18719), (18723, 18748), (18818, 18837), (19208, 19321), (19322, 19322), (19456, 19457), (19663, 19775), (19776, 19797), (19881, 19887), (19965, 19995), (20172, 20275), (20276, 20295), (20402, 20513), (20514, 20526), (20535, 20647), (20648, 20649), (20667, 20691), (21218, 21256), (21296, 21397), (21398, 21410), (21609, 21618), (21866, 21977), (21978, 22018), (22103, 22207), (22208, 22217), (22472, 22583), (22584, 22586), (22627, 22642), (22707, 22741), (23548, 23653), (23654, 23662), (23763, 23875), (23876, 23876), (24010, 24121), (24122, 24151), (24167, 24171), (24367, 24473), (24474, 24481), (24576, 24685), (24686, 24690), (24986, 25078), (25215, 25303), (25304, 25395), (25600, 25652), (25947, 26000), (26011, 26117), (26118, 26125), (26411, 26478), (26508, 26525), (26620, 26622), (26624, 26711), (26712, 26738), (26934, 27010), (27436, 27494), (27848, 27849), (27951, 27962), (28577, 28687), (28688, 28691), (28717, 28825), (28826, 28863), (29584, 29592), (29791, 29882), (30258, 30360), (30613, 30707), (30708, 30732), (30758, 30834), (30926, 31013), (31213, 31307), (31308, 31327), (31329, 31364), (31423, 31511), (31512, 31547), (31939, 31941), (31974, 32053), (32805, 32882), (33620, 33733), (33734, 33734), (34347, 34451), (34452, 34505), (34816, 34921), (34922, 34924), (35152, 35245), (35301, 35405), (35406, 35415), (36015, 36026), (36982, 37093), (37094, 37094), (37210, 37293), (37303, 37324), (37349, 37417), (37446, 37463), (37553, 37560), (37636, 37667), (38307, 38405), (38416, 38421), (38912, 38943), (39326, 39437), (39438, 39440), (39605, 39660), (40401, 40442), (40817, 40918), (40931, 40931), (40960, 41045), (41772, 41857), (42527, 42550), (42632, 42641), (43740, 43801), (43940, 44037), (44217, 44294), (44944, 45004), (45056, 45058), (47104, 47159), (47526, 47635), (47636, 47638), (48013, 48095), (48096, 48134), (48223, 48228), (48334, 48337), (48373, 48448), (48778, 48848), (49152, 49244), (50410, 50415), (50421, 50524), (50531, 50535), (50562, 50645), (50653, 50676), (51076, 51119), (53290, 53362), (53371, 53404), (55451, 55555), (55556, 55561), (56180, 56283), (57344, 57359), (58619, 58678), (59049, 59070), (59582, 59650), (62500, 62524), (63368, 63371), (63869, 63977), (63978, 63983), (65536, 65635), (65636, 65650), (67335, 67342), (68651, 68753), (68754, 68765), (68782, 68808), (68890, 68896), (68921, 69004), (69632, 69734), (71289, 71400), (73205, 73281), (73728, 73809), (85291, 85373), (85374, 85405), (85697, 85797), (89383, 89487), (91854, 91923), (95052, 95141), (95142, 95162), (96026, 96036), (98304, 98374), (98415, 98418), (100842, 100934), (101306, 101365), (102973, 102999), (103041, 103087), (118815, 118915), (118916, 118924), (122412, 122431), (131769, 131840), (137842, 137895), (137917, 137956), (142814, 142919), (146410, 146448), (148877, 148951), (148955, 148991), (178766, 178860), (327701, 327794)]

theorem row115_bounds_eq : row115.goods.map goodSegmentBounds = row115_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row115_layer000_intervals : List ColouredInterval :=
  [(2, 13312, 13426), (2, 13824, 13938), (2, 14336, 14450), (2, 13312, 13426), (2, 14336, 14450), (2, 15360, 15474), (2, 16384, 16498), (2, 17408, 17522), (2, 18432, 18546), (2, 19456, 19570), (2, 20480, 20594), (2, 21504, 21618), (2, 22528, 22642), (2, 23552, 23666), (2, 24576, 24690), (2, 25600, 25714), (2, 14336, 14450), (2, 16384, 16498), (2, 18432, 18546), (2, 20480, 20594), (2, 22528, 22642), (2, 24576, 24690), (2, 16384, 16498), (2, 20480, 20594), (2, 24576, 24690), (2, 16384, 16498), (2, 24576, 24690), (2, 16384, 16498), (3, 13122, 13236), (3, 13851, 13965), (3, 14580, 14694), (3, 15309, 15423), (3, 16038, 16152), (3, 16767, 16881), (3, 17496, 17610), (3, 18225, 18339), (3, 18954, 19068), (3, 19683, 19797), (3, 20412, 20526), (3, 13122, 13236), (3, 15309, 15423), (3, 17496, 17610), (3, 19683, 19797), (3, 21870, 21984), (3, 24057, 24171), (3, 13122, 13236), (3, 19683, 19797), (3, 19683, 19797), (5, 15625, 15739), (5, 15625, 15739), (7, 14406, 14520), (7, 16807, 16921), (7, 19208, 19322), (7, 21609, 21723), (7, 24010, 24124), (7, 16807, 16921), (11, 13310, 13424), (11, 14641, 14755), (11, 15972, 16086), (11, 17303, 17417), (11, 18634, 18748), (11, 19965, 20079), (11, 21296, 21410), (11, 22627, 22741), (11, 23958, 24072), (11, 25289, 25403), (11, 14641, 14755), (13, 13182, 13296), (13, 15379, 15493), (13, 17576, 17690), (13, 19773, 19887), (13, 21970, 22084), (13, 24167, 24281), (17, 14739, 14853), (17, 19652, 19766), (17, 24565, 24679), (19, 13718, 13832), (19, 20577, 20691), (29, 13456, 13570), (29, 14297, 14411), (29, 15138, 15252), (29, 15979, 16093), (29, 16820, 16934), (29, 17661, 17775), (29, 18502, 18616), (29, 19343, 19457), (29, 20184, 20298), (29, 21025, 21139), (29, 21866, 21980), (29, 22707, 22821), (29, 23548, 23662), (29, 24389, 24503), (31, 13454, 13568), (31, 14415, 14529), (31, 15376, 15490), (31, 16337, 16451), (31, 17298, 17412), (31, 18259, 18373), (31, 19220, 19334), (31, 20181, 20295), (31, 21142, 21256), (31, 22103, 22217), (31, 23064, 23178), (31, 24025, 24139), (31, 24986, 25100), (31, 25947, 26061), (37, 13690, 13804), (37, 15059, 15173), (37, 16428, 16542), (37, 17797, 17911), (37, 19166, 19280), (37, 20535, 20649), (37, 21904, 22018), (37, 23273, 23387), (37, 24642, 24756), (37, 26011, 26125), (41, 13448, 13562), (41, 15129, 15243), (41, 16810, 16924), (41, 18491, 18605), (41, 20172, 20286), (41, 21853, 21967), (41, 23534, 23648), (41, 25215, 25329), (43, 14792, 14906), (43, 16641, 16755), (43, 18490, 18604), (43, 20339, 20453), (43, 22188, 22302), (43, 24037, 24151), (43, 25886, 26000), (47, 13254, 13368), (47, 15463, 15577), (47, 17672, 17786), (47, 19881, 19995), (47, 22090, 22204), (47, 24299, 24413), (53, 14045, 14159), (53, 16854, 16968), (53, 19663, 19777), (53, 22472, 22586), (53, 25281, 25395), (59, 13924, 14038), (59, 17405, 17519), (59, 20886, 21000), (59, 24367, 24481), (61, 14884, 14998), (61, 18605, 18719), (61, 22326, 22440), (61, 26047, 26161), (67, 13467, 13581), (67, 17956, 18070), (67, 22445, 22559), (71, 15123, 15237), (71, 20164, 20278), (71, 25205, 25319), (73, 15987, 16101), (73, 21316, 21430), (79, 18723, 18837), (79, 24964, 25078), (83, 13778, 13892), (83, 20667, 20781), (89, 15842, 15956), (89, 23763, 23877), (97, 18818, 18932), (101, 20402, 20516), (103, 21218, 21332), (107, 22898, 23012), (109, 23762, 23876), (113, 25538, 25652)]

def row115_layer000_block000 : List ColouredInterval :=
  [(2, 13312, 13426), (2, 13824, 13938), (2, 14336, 14450), (2, 13312, 13426), (2, 14336, 14450), (2, 15360, 15474), (2, 16384, 16498), (2, 17408, 17522), (2, 18432, 18546), (2, 19456, 19570), (2, 20480, 20594), (2, 21504, 21618)]

def row115_layer000_block001 : List ColouredInterval :=
  [(2, 22528, 22642), (2, 23552, 23666), (2, 24576, 24690), (2, 25600, 25714), (2, 14336, 14450), (2, 16384, 16498), (2, 18432, 18546), (2, 20480, 20594), (2, 22528, 22642), (2, 24576, 24690), (2, 16384, 16498), (2, 20480, 20594)]

def row115_layer000_block002 : List ColouredInterval :=
  [(2, 24576, 24690), (2, 16384, 16498), (2, 24576, 24690), (2, 16384, 16498), (3, 13122, 13236), (3, 13851, 13965), (3, 14580, 14694), (3, 15309, 15423), (3, 16038, 16152), (3, 16767, 16881), (3, 17496, 17610), (3, 18225, 18339)]

def row115_layer000_block003 : List ColouredInterval :=
  [(3, 18954, 19068), (3, 19683, 19797), (3, 20412, 20526), (3, 13122, 13236), (3, 15309, 15423), (3, 17496, 17610), (3, 19683, 19797), (3, 21870, 21984), (3, 24057, 24171), (3, 13122, 13236), (3, 19683, 19797), (3, 19683, 19797)]

def row115_layer000_block004 : List ColouredInterval :=
  [(5, 15625, 15739), (5, 15625, 15739), (7, 14406, 14520), (7, 16807, 16921), (7, 19208, 19322), (7, 21609, 21723), (7, 24010, 24124), (7, 16807, 16921), (11, 13310, 13424), (11, 14641, 14755), (11, 15972, 16086), (11, 17303, 17417)]

def row115_layer000_block005 : List ColouredInterval :=
  [(11, 18634, 18748), (11, 19965, 20079), (11, 21296, 21410), (11, 22627, 22741), (11, 23958, 24072), (11, 25289, 25403), (11, 14641, 14755), (13, 13182, 13296), (13, 15379, 15493), (13, 17576, 17690), (13, 19773, 19887), (13, 21970, 22084)]

def row115_layer000_block006 : List ColouredInterval :=
  [(13, 24167, 24281), (17, 14739, 14853), (17, 19652, 19766), (17, 24565, 24679), (19, 13718, 13832), (19, 20577, 20691), (29, 13456, 13570), (29, 14297, 14411), (29, 15138, 15252), (29, 15979, 16093), (29, 16820, 16934), (29, 17661, 17775)]

def row115_layer000_block007 : List ColouredInterval :=
  [(29, 18502, 18616), (29, 19343, 19457), (29, 20184, 20298), (29, 21025, 21139), (29, 21866, 21980), (29, 22707, 22821), (29, 23548, 23662), (29, 24389, 24503), (31, 13454, 13568), (31, 14415, 14529), (31, 15376, 15490), (31, 16337, 16451)]

def row115_layer000_block008 : List ColouredInterval :=
  [(31, 17298, 17412), (31, 18259, 18373), (31, 19220, 19334), (31, 20181, 20295), (31, 21142, 21256), (31, 22103, 22217), (31, 23064, 23178), (31, 24025, 24139), (31, 24986, 25100), (31, 25947, 26061), (37, 13690, 13804), (37, 15059, 15173)]

def row115_layer000_block009 : List ColouredInterval :=
  [(37, 16428, 16542), (37, 17797, 17911), (37, 19166, 19280), (37, 20535, 20649), (37, 21904, 22018), (37, 23273, 23387), (37, 24642, 24756), (37, 26011, 26125), (41, 13448, 13562), (41, 15129, 15243), (41, 16810, 16924), (41, 18491, 18605)]

def row115_layer000_block010 : List ColouredInterval :=
  [(41, 20172, 20286), (41, 21853, 21967), (41, 23534, 23648), (41, 25215, 25329), (43, 14792, 14906), (43, 16641, 16755), (43, 18490, 18604), (43, 20339, 20453), (43, 22188, 22302), (43, 24037, 24151), (43, 25886, 26000), (47, 13254, 13368)]

def row115_layer000_block011 : List ColouredInterval :=
  [(47, 15463, 15577), (47, 17672, 17786), (47, 19881, 19995), (47, 22090, 22204), (47, 24299, 24413), (53, 14045, 14159), (53, 16854, 16968), (53, 19663, 19777), (53, 22472, 22586), (53, 25281, 25395), (59, 13924, 14038), (59, 17405, 17519)]

def row115_layer000_block012 : List ColouredInterval :=
  [(59, 20886, 21000), (59, 24367, 24481), (61, 14884, 14998), (61, 18605, 18719), (61, 22326, 22440), (61, 26047, 26161), (67, 13467, 13581), (67, 17956, 18070), (67, 22445, 22559), (71, 15123, 15237), (71, 20164, 20278), (71, 25205, 25319)]

def row115_layer000_block013 : List ColouredInterval :=
  [(73, 15987, 16101), (73, 21316, 21430), (79, 18723, 18837), (79, 24964, 25078), (83, 13778, 13892), (83, 20667, 20781), (89, 15842, 15956), (89, 23763, 23877), (97, 18818, 18932), (101, 20402, 20516), (103, 21218, 21332), (107, 22898, 23012)]

def row115_layer000_block014 : List ColouredInterval :=
  [(109, 23762, 23876), (113, 25538, 25652)]

def row115_layer000_chunks : List (List ColouredInterval) :=
  [row115_layer000_block000, row115_layer000_block001, row115_layer000_block002, row115_layer000_block003, row115_layer000_block004, row115_layer000_block005, row115_layer000_block006, row115_layer000_block007, row115_layer000_block008, row115_layer000_block009, row115_layer000_block010, row115_layer000_block011, row115_layer000_block012, row115_layer000_block013, row115_layer000_block014]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer000_arithmetic : LayerArithmeticValid row115.height { lower := 13110, upper := 26220, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer000_enumeration :
    activePowerIntervalList 115 28 13110 26220 = row115_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer000_pairs000 :
    row115_layer000_block000.all (fun I => row115_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer000_pairs001 :
    row115_layer000_block001.all (fun I => row115_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer000_pairs002 :
    row115_layer000_block002.all (fun I => row115_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer000_pairs003 :
    row115_layer000_block003.all (fun I => row115_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer000_pairs003
