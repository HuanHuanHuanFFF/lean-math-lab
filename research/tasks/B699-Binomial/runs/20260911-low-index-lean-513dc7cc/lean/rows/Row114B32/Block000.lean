import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row114_height : HeightCertificateDatum := { i := 114, r := 37, s := 79, n0Power10 := 10 }

def row114_goods : List GoodSegment := [
  { lower := 230, upper := 342, witness := RowWitness.topPrime 229 },
  { lower := 343, upper := 450, witness := RowWitness.topPrime 337 },
  { lower := 451, upper := 562, witness := RowWitness.topPrime 449 },
  { lower := 563, upper := 676, witness := RowWitness.topPrime 563 },
  { lower := 677, upper := 790, witness := RowWitness.topPrime 677 },
  { lower := 791, upper := 900, witness := RowWitness.topPrime 787 },
  { lower := 901, upper := 1000, witness := RowWitness.topPrime 887 },
  { lower := 1001, upper := 1110, witness := RowWitness.topPrime 997 },
  { lower := 1111, upper := 1222, witness := RowWitness.topPrime 1109 },
  { lower := 1223, upper := 1336, witness := RowWitness.topPrime 1223 },
  { lower := 1337, upper := 1440, witness := RowWitness.topPrime 1327 },
  { lower := 1441, upper := 1552, witness := RowWitness.topPrime 1439 },
  { lower := 1553, upper := 1666, witness := RowWitness.topPrime 1553 },
  { lower := 1667, upper := 1780, witness := RowWitness.topPrime 1667 },
  { lower := 1781, upper := 1890, witness := RowWitness.topPrime 1777 },
  { lower := 1891, upper := 2002, witness := RowWitness.topPrime 1889 },
  { lower := 2003, upper := 2116, witness := RowWitness.topPrime 2003 },
  { lower := 2117, upper := 2226, witness := RowWitness.topPrime 2113 },
  { lower := 2227, upper := 2334, witness := RowWitness.topPrime 2221 },
  { lower := 2335, upper := 2446, witness := RowWitness.topPrime 2333 },
  { lower := 2447, upper := 2560, witness := RowWitness.topPrime 2447 },
  { lower := 2561, upper := 2670, witness := RowWitness.topPrime 2557 },
  { lower := 2671, upper := 2784, witness := RowWitness.topPrime 2671 },
  { lower := 2785, upper := 2890, witness := RowWitness.topPrime 2777 },
  { lower := 2891, upper := 3000, witness := RowWitness.topPrime 2887 },
  { lower := 3001, upper := 3114, witness := RowWitness.topPrime 3001 },
  { lower := 3115, upper := 3222, witness := RowWitness.topPrime 3109 },
  { lower := 3223, upper := 3334, witness := RowWitness.topPrime 3221 },
  { lower := 3335, upper := 3444, witness := RowWitness.topPrime 3331 },
  { lower := 3445, upper := 3546, witness := RowWitness.topPrime 3433 },
  { lower := 3547, upper := 3660, witness := RowWitness.topPrime 3547 },
  { lower := 3661, upper := 3772, witness := RowWitness.topPrime 3659 },
  { lower := 3773, upper := 3882, witness := RowWitness.topPrime 3769 },
  { lower := 3883, upper := 3994, witness := RowWitness.topPrime 3881 },
  { lower := 3995, upper := 4102, witness := RowWitness.topPrime 3989 },
  { lower := 4103, upper := 4212, witness := RowWitness.topPrime 4099 },
  { lower := 4213, upper := 4324, witness := RowWitness.topPrime 4211 },
  { lower := 4325, upper := 4410, witness := RowWitness.topPrime 4297 },
  { lower := 4411, upper := 4522, witness := RowWitness.topPrime 4409 },
  { lower := 4523, upper := 4636, witness := RowWitness.topPrime 4523 },
  { lower := 4637, upper := 4750, witness := RowWitness.topPrime 4637 },
  { lower := 4751, upper := 4864, witness := RowWitness.topPrime 4751 },
  { lower := 4865, upper := 4974, witness := RowWitness.topPrime 4861 },
  { lower := 4975, upper := 5086, witness := RowWitness.topPrime 4973 },
  { lower := 5087, upper := 5200, witness := RowWitness.topPrime 5087 },
  { lower := 5201, upper := 5310, witness := RowWitness.topPrime 5197 },
  { lower := 5311, upper := 5422, witness := RowWitness.topPrime 5309 },
  { lower := 5423, upper := 5532, witness := RowWitness.topPrime 5419 },
  { lower := 5533, upper := 5644, witness := RowWitness.topPrime 5531 },
  { lower := 5645, upper := 5754, witness := RowWitness.topPrime 5641 },
  { lower := 5755, upper := 5862, witness := RowWitness.topPrime 5749 },
  { lower := 5863, upper := 5974, witness := RowWitness.topPrime 5861 },
  { lower := 5975, upper := 6066, witness := RowWitness.topPrime 5953 },
  { lower := 6067, upper := 6180, witness := RowWitness.topPrime 6067 },
  { lower := 6181, upper := 6286, witness := RowWitness.topPrime 6173 },
  { lower := 6287, upper := 6400, witness := RowWitness.topPrime 6287 },
  { lower := 6401, upper := 6510, witness := RowWitness.topPrime 6397 },
  { lower := 6511, upper := 6604, witness := RowWitness.topPrime 6491 },
  { lower := 6605, upper := 6712, witness := RowWitness.topPrime 6599 },
  { lower := 6713, upper := 6822, witness := RowWitness.topPrime 6709 },
  { lower := 6823, upper := 6936, witness := RowWitness.topPrime 6823 },
  { lower := 6937, upper := 7030, witness := RowWitness.topPrime 6917 },
  { lower := 7031, upper := 7140, witness := RowWitness.topPrime 7027 },
  { lower := 7141, upper := 7242, witness := RowWitness.topPrime 7129 },
  { lower := 7243, upper := 7356, witness := RowWitness.topPrime 7243 },
  { lower := 7357, upper := 7464, witness := RowWitness.topPrime 7351 },
  { lower := 7465, upper := 7572, witness := RowWitness.topPrime 7459 },
  { lower := 7573, upper := 7686, witness := RowWitness.topPrime 7573 },
  { lower := 7687, upper := 7800, witness := RowWitness.topPrime 7687 },
  { lower := 7801, upper := 7906, witness := RowWitness.topPrime 7793 },
  { lower := 7907, upper := 8020, witness := RowWitness.topPrime 7907 },
  { lower := 8021, upper := 8130, witness := RowWitness.topPrime 8017 },
  { lower := 8131, upper := 8236, witness := RowWitness.topPrime 8123 },
  { lower := 8237, upper := 8350, witness := RowWitness.topPrime 8237 },
  { lower := 8351, upper := 8442, witness := RowWitness.topPrime 8329 },
  { lower := 8443, upper := 8556, witness := RowWitness.topPrime 8443 },
  { lower := 8557, upper := 8656, witness := RowWitness.topPrime 8543 },
  { lower := 8657, upper := 8760, witness := RowWitness.topPrime 8647 },
  { lower := 8761, upper := 8874, witness := RowWitness.topPrime 8761 },
  { lower := 8875, upper := 8980, witness := RowWitness.topPrime 8867 },
  { lower := 8981, upper := 9084, witness := RowWitness.topPrime 8971 },
  { lower := 9085, upper := 9180, witness := RowWitness.topPrime 9067 },
  { lower := 9181, upper := 9294, witness := RowWitness.topPrime 9181 },
  { lower := 9295, upper := 9406, witness := RowWitness.topPrime 9293 },
  { lower := 9407, upper := 9516, witness := RowWitness.topPrime 9403 },
  { lower := 9517, upper := 9624, witness := RowWitness.topPrime 9511 },
  { lower := 9625, upper := 9736, witness := RowWitness.topPrime 9623 },
  { lower := 9737, upper := 9846, witness := RowWitness.topPrime 9733 },
  { lower := 9847, upper := 9952, witness := RowWitness.topPrime 9839 },
  { lower := 9953, upper := 10062, witness := RowWitness.topPrime 9949 },
  { lower := 10063, upper := 10174, witness := RowWitness.topPrime 10061 },
  { lower := 10175, upper := 10282, witness := RowWitness.topPrime 10169 },
  { lower := 10283, upper := 10386, witness := RowWitness.topPrime 10273 },
  { lower := 10387, upper := 10482, witness := RowWitness.topPrime 10369 },
  { lower := 10483, upper := 10590, witness := RowWitness.topPrime 10477 },
  { lower := 10591, upper := 10702, witness := RowWitness.topPrime 10589 },
  { lower := 10703, upper := 10804, witness := RowWitness.topPrime 10691 },
  { lower := 10805, upper := 10912, witness := RowWitness.topPrime 10799 },
  { lower := 10913, upper := 11022, witness := RowWitness.topPrime 10909 },
  { lower := 11023, upper := 11116, witness := RowWitness.topPrime 11003 },
  { lower := 11117, upper := 11230, witness := RowWitness.topPrime 11117 },
  { lower := 11231, upper := 11326, witness := RowWitness.topPrime 11213 },
  { lower := 11327, upper := 11434, witness := RowWitness.topPrime 11321 },
  { lower := 11435, upper := 11536, witness := RowWitness.topPrime 11423 },
  { lower := 11537, upper := 11640, witness := RowWitness.topPrime 11527 },
  { lower := 11641, upper := 11746, witness := RowWitness.topPrime 11633 },
  { lower := 11747, upper := 11856, witness := RowWitness.topPrime 11743 },
  { lower := 11857, upper := 11952, witness := RowWitness.topPrime 11839 },
  { lower := 11953, upper := 12066, witness := RowWitness.topPrime 11953 },
  { lower := 12067, upper := 12162, witness := RowWitness.topPrime 12049 },
  { lower := 12163, upper := 12276, witness := RowWitness.topPrime 12163 },
  { lower := 12277, upper := 12390, witness := RowWitness.topPrime 12277 },
  { lower := 12391, upper := 12504, witness := RowWitness.topPrime 12391 },
  { lower := 12505, upper := 12616, witness := RowWitness.topPrime 12503 },
  { lower := 12617, upper := 12726, witness := RowWitness.topPrime 12613 },
  { lower := 12727, upper := 12834, witness := RowWitness.topPrime 12721 },
  { lower := 12835, upper := 12881, witness := RowWitness.topPrime 12829 },
  { lower := 13125, upper := 13234, witness := RowWitness.topPrime 13121 },
  { lower := 13235, upper := 13342, witness := RowWitness.topPrime 13229 },
  { lower := 13343, upper := 13423, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13564, witness := RowWitness.topPrime 13451 },
  { lower := 13565, upper := 13569, witness := RowWitness.topPrime 13553 },
  { lower := 13750, upper := 13842, witness := RowWitness.topPrime 13729 },
  { lower := 13843, upper := 13867, witness := RowWitness.topPrime 13841 },
  { lower := 14297, upper := 14406, witness := RowWitness.topPrime 14293 },
  { lower := 14407, upper := 14519, witness := RowWitness.topPrime 14407 },
  { lower := 14739, upper := 14754, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14896, witness := RowWitness.topPrime 14783 },
  { lower := 14897, upper := 14925, witness := RowWitness.topPrime 14897 },
  { lower := 15059, upper := 15113, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15234, witness := RowWitness.topPrime 15121 },
  { lower := 15235, upper := 15242, witness := RowWitness.topPrime 15233 },
  { lower := 15341, upper := 15444, witness := RowWitness.topPrime 15331 },
  { lower := 15445, upper := 15492, witness := RowWitness.topPrime 15443 },
  { lower := 15870, upper := 15955, witness := RowWitness.topPrime 15859 },
  { lower := 15972, upper := 16084, witness := RowWitness.topPrime 15971 },
  { lower := 16085, upper := 16092, witness := RowWitness.topPrime 16073 },
  { lower := 16337, upper := 16363, witness := RowWitness.topPrime 16333 },
  { lower := 16384, upper := 16494, witness := RowWitness.topPrime 16381 },
  { lower := 16495, upper := 16497, witness := RowWitness.topPrime 16493 },
  { lower := 16810, upper := 16900, witness := RowWitness.topPrime 16787 },
  { lower := 16901, upper := 16967, witness := RowWitness.topPrime 16901 },
  { lower := 17303, upper := 17412, witness := RowWitness.topPrime 17299 },
  { lower := 17413, upper := 17416, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17604, witness := RowWitness.topPrime 17491 },
  { lower := 17605, upper := 17613, witness := RowWitness.topPrime 17599 },
  { lower := 17661, upper := 17772, witness := RowWitness.topPrime 17659 },
  { lower := 17773, upper := 17774, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18594, witness := RowWitness.topPrime 18481 },
  { lower := 18595, upper := 18615, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18718, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18747, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18862, witness := RowWitness.topPrime 18749 },
  { lower := 18863, upper := 18863, witness := RowWitness.topPrime 18859 },
  { lower := 19208, upper := 19320, witness := RowWitness.topPrime 19207 },
  { lower := 19321, upper := 19321, witness := RowWitness.topPrime 19319 },
  { lower := 19663, upper := 19774, witness := RowWitness.topPrime 19661 },
  { lower := 19775, upper := 19796, witness := RowWitness.topPrime 19763 },
  { lower := 19881, upper := 19886, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 19994, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20274, witness := RowWitness.topPrime 20161 },
  { lower := 20275, upper := 20294, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20452, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20515, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20593, witness := RowWitness.topPrime 20533 },
  { lower := 21218, upper := 21255, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21396, witness := RowWitness.topPrime 21283 },
  { lower := 21397, upper := 21409, witness := RowWitness.topPrime 21397 },
  { lower := 21866, upper := 21976, witness := RowWitness.topPrime 21863 },
  { lower := 21977, upper := 22017, witness := RowWitness.topPrime 21977 },
  { lower := 22103, upper := 22206, witness := RowWitness.topPrime 22093 },
  { lower := 22207, upper := 22216, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22582, witness := RowWitness.topPrime 22469 },
  { lower := 22583, upper := 22585, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22641, witness := RowWitness.topPrime 22621 },
  { lower := 22707, upper := 22740, witness := RowWitness.topPrime 22699 },
  { lower := 23548, upper := 23647, witness := RowWitness.topPrime 23539 },
  { lower := 23763, upper := 23874, witness := RowWitness.topPrime 23761 },
  { lower := 23875, upper := 23875, witness := RowWitness.topPrime 23873 },
  { lower := 24010, upper := 24120, witness := RowWitness.topPrime 24007 },
  { lower := 24121, upper := 24138, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24442, witness := RowWitness.topPrime 24329 },
  { lower := 24443, upper := 24480, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24684, witness := RowWitness.topPrime 24571 },
  { lower := 24685, upper := 24689, witness := RowWitness.topPrime 24683 },
  { lower := 24986, upper := 25092, witness := RowWitness.topPrime 24979 },
  { lower := 25093, upper := 25099, witness := RowWitness.topPrime 25087 },
  { lower := 25215, upper := 25302, witness := RowWitness.topPrime 25189 },
  { lower := 25303, upper := 25394, witness := RowWitness.topPrime 25303 },
  { lower := 26047, upper := 26124, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26477, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26524, witness := RowWitness.topPrime 26501 },
  { lower := 26620, upper := 26621, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26733, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27009, witness := RowWitness.topPrime 26927 },
  { lower := 27848, upper := 27848, witness := RowWitness.topPrime 27847 },
  { lower := 27951, upper := 27961, witness := RowWitness.topPrime 27947 },
  { lower := 28125, upper := 28203, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28238, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28686, witness := RowWitness.topPrime 28573 },
  { lower := 28687, upper := 28690, witness := RowWitness.topPrime 28687 },
  { lower := 28717, upper := 28824, witness := RowWitness.topPrime 28711 },
  { lower := 28825, upper := 28862, witness := RowWitness.topPrime 28817 },
  { lower := 29584, upper := 29591, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29881, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30359, witness := RowWitness.topPrime 30253 },
  { lower := 30613, upper := 30706, witness := RowWitness.topPrime 30593 },
  { lower := 30707, upper := 30716, witness := RowWitness.topPrime 30707 },
  { lower := 30926, upper := 31012, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31306, witness := RowWitness.topPrime 31193 },
  { lower := 31307, upper := 31326, witness := RowWitness.topPrime 31307 },
  { lower := 31329, upper := 31363, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31510, witness := RowWitness.topPrime 31397 },
  { lower := 31511, upper := 31546, witness := RowWitness.topPrime 31511 },
  { lower := 31939, upper := 31940, witness := RowWitness.topPrime 31907 },
  { lower := 31944, upper := 32020, witness := RowWitness.topPrime 31907 },
  { lower := 32021, upper := 32057, witness := RowWitness.topPrime 32009 },
  { lower := 32805, upper := 32916, witness := RowWitness.topPrime 32803 },
  { lower := 32917, upper := 32918, witness := RowWitness.topPrime 32917 },
  { lower := 32955, upper := 32969, witness := RowWitness.topPrime 32941 },
  { lower := 33282, upper := 33360, witness := RowWitness.topPrime 33247 },
  { lower := 33361, upper := 33388, witness := RowWitness.topPrime 33359 },
  { lower := 33620, upper := 33732, witness := RowWitness.topPrime 33619 },
  { lower := 33733, upper := 33733, witness := RowWitness.topPrime 33721 },
  { lower := 34375, upper := 34482, witness := RowWitness.topPrime 34369 },
  { lower := 34483, upper := 34504, witness := RowWitness.topPrime 34483 },
  { lower := 35152, upper := 35244, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35404, witness := RowWitness.topPrime 35291 },
  { lower := 35405, upper := 35414, witness := RowWitness.topPrime 35401 },
  { lower := 36015, upper := 36025, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36610, witness := RowWitness.topPrime 36497 },
  { lower := 36611, upper := 36614, witness := RowWitness.topPrime 36607 },
  { lower := 36982, upper := 37092, witness := RowWitness.topPrime 36979 },
  { lower := 37093, upper := 37093, witness := RowWitness.topPrime 37087 },
  { lower := 37303, upper := 37323, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37416, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37462, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37606, witness := RowWitness.topPrime 37493 },
  { lower := 37607, upper := 37613, witness := RowWitness.topPrime 37607 },
  { lower := 37636, upper := 37666, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38404, witness := RowWitness.topPrime 38303 },
  { lower := 38416, upper := 38420, witness := RowWitness.topPrime 38393 },
  { lower := 39326, upper := 39436, witness := RowWitness.topPrime 39323 },
  { lower := 39437, upper := 39439, witness := RowWitness.topPrime 39419 },
  { lower := 39605, upper := 39659, witness := RowWitness.topPrime 39581 },
  { lower := 40344, upper := 40456, witness := RowWitness.topPrime 40343 },
  { lower := 40457, upper := 40457, witness := RowWitness.topPrime 40433 },
  { lower := 40678, upper := 40738, witness := RowWitness.topPrime 40639 },
  { lower := 40817, upper := 40917, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41044, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41856, witness := RowWitness.topPrime 41771 },
  { lower := 42025, upper := 42084, witness := RowWitness.topPrime 42023 },
  { lower := 42135, upper := 42138, witness := RowWitness.topPrime 42131 },
  { lower := 42527, upper := 42549, witness := RowWitness.topPrime 42509 },
  { lower := 42632, upper := 42640, witness := RowWitness.topPrime 42611 },
  { lower := 43750, upper := 43800, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 44036, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44293, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 45003, witness := RowWitness.topPrime 44939 },
  { lower := 45056, upper := 45057, witness := RowWitness.topPrime 45053 },
  { lower := 46225, upper := 46250, witness := RowWitness.topPrime 46219 },
  { lower := 47526, upper := 47634, witness := RowWitness.topPrime 47521 },
  { lower := 47635, upper := 47637, witness := RowWitness.topPrime 47629 },
  { lower := 48020, upper := 48074, witness := RowWitness.topPrime 48017 },
  { lower := 48334, upper := 48336, witness := RowWitness.topPrime 48313 },
  { lower := 48373, upper := 48447, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48711, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48846, witness := RowWitness.topPrime 48733 },
  { lower := 48847, upper := 48847, witness := RowWitness.topPrime 48847 },
  { lower := 49152, upper := 49243, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50041, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50523, witness := RowWitness.topPrime 50417 },
  { lower := 50531, upper := 50534, witness := RowWitness.topPrime 50527 },
  { lower := 50562, upper := 50644, witness := RowWitness.topPrime 50551 },
  { lower := 50653, upper := 50675, witness := RowWitness.topPrime 50651 },
  { lower := 51076, upper := 51118, witness := RowWitness.topPrime 51071 },
  { lower := 53125, upper := 53158, witness := RowWitness.topPrime 53117 },
  { lower := 53371, upper := 53403, witness := RowWitness.topPrime 53359 },
  { lower := 55451, upper := 55554, witness := RowWitness.topPrime 55441 },
  { lower := 55555, upper := 55560, witness := RowWitness.topPrime 55547 },
  { lower := 56180, upper := 56292, witness := RowWitness.topPrime 56179 },
  { lower := 56293, upper := 56293, witness := RowWitness.topPrime 56269 },
  { lower := 57344, upper := 57358, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58677, witness := RowWitness.topPrime 58613 },
  { lower := 58989, upper := 59092, witness := RowWitness.topPrime 58979 },
  { lower := 59093, upper := 59102, witness := RowWitness.topPrime 59093 },
  { lower := 59405, upper := 59488, witness := RowWitness.topPrime 59399 },
  { lower := 59582, upper := 59649, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62523, witness := RowWitness.topPrime 62497 },
  { lower := 63368, upper := 63370, witness := RowWitness.topPrime 63367 },
  { lower := 63869, upper := 63976, witness := RowWitness.topPrime 63863 },
  { lower := 63977, upper := 63982, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65634, witness := RowWitness.topPrime 65521 },
  { lower := 65635, upper := 65649, witness := RowWitness.topPrime 65633 },
  { lower := 67335, upper := 67341, witness := RowWitness.topPrime 67307 },
  { lower := 68694, upper := 68764, witness := RowWitness.topPrime 68687 },
  { lower := 68782, upper := 68807, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68895, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69003, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71399, witness := RowWitness.topPrime 71287 },
  { lower := 73101, upper := 73115, witness := RowWitness.topPrime 73091 },
  { lower := 73167, upper := 73254, witness := RowWitness.topPrime 73141 },
  { lower := 73255, upper := 73280, witness := RowWitness.topPrime 73243 },
  { lower := 73728, upper := 73808, witness := RowWitness.topPrime 73727 },
  { lower := 78141, upper := 78238, witness := RowWitness.topPrime 78139 },
  { lower := 85264, upper := 85282, witness := RowWitness.topPrime 85259 },
  { lower := 85291, upper := 85372, witness := RowWitness.topPrime 85259 },
  { lower := 85373, upper := 85377, witness := RowWitness.topPrime 85369 },
  { lower := 85697, upper := 85796, witness := RowWitness.topPrime 85691 },
  { lower := 89383, upper := 89486, witness := RowWitness.topPrime 89381 },
  { lower := 95052, upper := 95140, witness := RowWitness.topPrime 95027 },
  { lower := 95141, upper := 95161, witness := RowWitness.topPrime 95131 },
  { lower := 98304, upper := 98373, witness := RowWitness.topPrime 98299 },
  { lower := 98415, upper := 98417, witness := RowWitness.topPrime 98411 },
  { lower := 100842, upper := 100933, witness := RowWitness.topPrime 100829 },
  { lower := 101306, upper := 101364, witness := RowWitness.topPrime 101293 },
  { lower := 103041, upper := 103086, witness := RowWitness.topPrime 103007 },
  { lower := 106097, upper := 106200, witness := RowWitness.topPrime 106087 },
  { lower := 106201, upper := 106203, witness := RowWitness.topPrime 106189 },
  { lower := 117128, upper := 117226, witness := RowWitness.topPrime 117127 },
  { lower := 118815, upper := 118914, witness := RowWitness.topPrime 118801 },
  { lower := 118915, upper := 118923, witness := RowWitness.topPrime 118913 },
  { lower := 122412, upper := 122430, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131839, witness := RowWitness.topPrime 131759 },
  { lower := 137917, upper := 137955, witness := RowWitness.topPrime 137911 },
  { lower := 142578, upper := 142685, witness := RowWitness.topPrime 142573 },
  { lower := 142814, upper := 142918, witness := RowWitness.topPrime 142811 },
  { lower := 146410, upper := 146447, witness := RowWitness.topPrime 146407 },
  { lower := 148877, upper := 148950, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148990, witness := RowWitness.topPrime 148949 },
  { lower := 178766, upper := 178859, witness := RowWitness.topPrime 178757 },
  { lower := 194672, upper := 194746, witness := RowWitness.topPrime 194671 },
  { lower := 327701, upper := 327793, witness := RowWitness.topPrime 327689 }
]

def row114_layers : List CoverLayer := [
  { lower := 12882, upper := 25764, M := 30 },
  { lower := 25764, upper := 51528, M := 25 },
  { lower := 51528, upper := 103056, M := 21 },
  { lower := 103056, upper := 206112, M := 18 },
  { lower := 206112, upper := 412224, M := 15 },
  { lower := 412224, upper := 824448, M := 12 },
  { lower := 824448, upper := 1648896, M := 10 },
  { lower := 1648896, upper := 3297792, M := 9 },
  { lower := 3297792, upper := 6595584, M := 7 },
  { lower := 6595584, upper := 13191168, M := 6 },
  { lower := 13191168, upper := 26382336, M := 5 },
  { lower := 26382336, upper := 52764672, M := 4 },
  { lower := 52764672, upper := 105529344, M := 4 },
  { lower := 105529344, upper := 211058688, M := 3 },
  { lower := 211058688, upper := 422117376, M := 3 },
  { lower := 422117376, upper := 844234752, M := 2 },
  { lower := 844234752, upper := 1688469504, M := 2 },
  { lower := 1688469504, upper := 3376939008, M := 2 },
  { lower := 3376939008, upper := 6753878016, M := 2 },
  { lower := 6753878016, upper := 10000000000, M := 1 }
]

def row114 : FiniteCoverRow := {
  height := row114_height,
  goods := row114_goods,
  layers := row114_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good000_checked :
    goodSegmentCheck 114 37 79
      { lower := 230, upper := 342, witness := RowWitness.topPrime 229 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good001_checked :
    goodSegmentCheck 114 37 79
      { lower := 343, upper := 450, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good002_checked :
    goodSegmentCheck 114 37 79
      { lower := 451, upper := 562, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good003_checked :
    goodSegmentCheck 114 37 79
      { lower := 563, upper := 676, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good004_checked :
    goodSegmentCheck 114 37 79
      { lower := 677, upper := 790, witness := RowWitness.topPrime 677 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good005_checked :
    goodSegmentCheck 114 37 79
      { lower := 791, upper := 900, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good006_checked :
    goodSegmentCheck 114 37 79
      { lower := 901, upper := 1000, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good007_checked :
    goodSegmentCheck 114 37 79
      { lower := 1001, upper := 1110, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good008_checked :
    goodSegmentCheck 114 37 79
      { lower := 1111, upper := 1222, witness := RowWitness.topPrime 1109 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good009_checked :
    goodSegmentCheck 114 37 79
      { lower := 1223, upper := 1336, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good010_checked :
    goodSegmentCheck 114 37 79
      { lower := 1337, upper := 1440, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good011_checked :
    goodSegmentCheck 114 37 79
      { lower := 1441, upper := 1552, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good012_checked :
    goodSegmentCheck 114 37 79
      { lower := 1553, upper := 1666, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good013_checked :
    goodSegmentCheck 114 37 79
      { lower := 1667, upper := 1780, witness := RowWitness.topPrime 1667 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good014_checked :
    goodSegmentCheck 114 37 79
      { lower := 1781, upper := 1890, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good015_checked :
    goodSegmentCheck 114 37 79
      { lower := 1891, upper := 2002, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good016_checked :
    goodSegmentCheck 114 37 79
      { lower := 2003, upper := 2116, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good017_checked :
    goodSegmentCheck 114 37 79
      { lower := 2117, upper := 2226, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good018_checked :
    goodSegmentCheck 114 37 79
      { lower := 2227, upper := 2334, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good019_checked :
    goodSegmentCheck 114 37 79
      { lower := 2335, upper := 2446, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good020_checked :
    goodSegmentCheck 114 37 79
      { lower := 2447, upper := 2560, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good021_checked :
    goodSegmentCheck 114 37 79
      { lower := 2561, upper := 2670, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good022_checked :
    goodSegmentCheck 114 37 79
      { lower := 2671, upper := 2784, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good023_checked :
    goodSegmentCheck 114 37 79
      { lower := 2785, upper := 2890, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good024_checked :
    goodSegmentCheck 114 37 79
      { lower := 2891, upper := 3000, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good025_checked :
    goodSegmentCheck 114 37 79
      { lower := 3001, upper := 3114, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good026_checked :
    goodSegmentCheck 114 37 79
      { lower := 3115, upper := 3222, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good027_checked :
    goodSegmentCheck 114 37 79
      { lower := 3223, upper := 3334, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good028_checked :
    goodSegmentCheck 114 37 79
      { lower := 3335, upper := 3444, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good029_checked :
    goodSegmentCheck 114 37 79
      { lower := 3445, upper := 3546, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good030_checked :
    goodSegmentCheck 114 37 79
      { lower := 3547, upper := 3660, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good031_checked :
    goodSegmentCheck 114 37 79
      { lower := 3661, upper := 3772, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good032_checked :
    goodSegmentCheck 114 37 79
      { lower := 3773, upper := 3882, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good033_checked :
    goodSegmentCheck 114 37 79
      { lower := 3883, upper := 3994, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good034_checked :
    goodSegmentCheck 114 37 79
      { lower := 3995, upper := 4102, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good035_checked :
    goodSegmentCheck 114 37 79
      { lower := 4103, upper := 4212, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good036_checked :
    goodSegmentCheck 114 37 79
      { lower := 4213, upper := 4324, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good037_checked :
    goodSegmentCheck 114 37 79
      { lower := 4325, upper := 4410, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good038_checked :
    goodSegmentCheck 114 37 79
      { lower := 4411, upper := 4522, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good039_checked :
    goodSegmentCheck 114 37 79
      { lower := 4523, upper := 4636, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good040_checked :
    goodSegmentCheck 114 37 79
      { lower := 4637, upper := 4750, witness := RowWitness.topPrime 4637 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good041_checked :
    goodSegmentCheck 114 37 79
      { lower := 4751, upper := 4864, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good042_checked :
    goodSegmentCheck 114 37 79
      { lower := 4865, upper := 4974, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good043_checked :
    goodSegmentCheck 114 37 79
      { lower := 4975, upper := 5086, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good044_checked :
    goodSegmentCheck 114 37 79
      { lower := 5087, upper := 5200, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good045_checked :
    goodSegmentCheck 114 37 79
      { lower := 5201, upper := 5310, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good046_checked :
    goodSegmentCheck 114 37 79
      { lower := 5311, upper := 5422, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good047_checked :
    goodSegmentCheck 114 37 79
      { lower := 5423, upper := 5532, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good048_checked :
    goodSegmentCheck 114 37 79
      { lower := 5533, upper := 5644, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good049_checked :
    goodSegmentCheck 114 37 79
      { lower := 5645, upper := 5754, witness := RowWitness.topPrime 5641 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good050_checked :
    goodSegmentCheck 114 37 79
      { lower := 5755, upper := 5862, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good051_checked :
    goodSegmentCheck 114 37 79
      { lower := 5863, upper := 5974, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good052_checked :
    goodSegmentCheck 114 37 79
      { lower := 5975, upper := 6066, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good053_checked :
    goodSegmentCheck 114 37 79
      { lower := 6067, upper := 6180, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good054_checked :
    goodSegmentCheck 114 37 79
      { lower := 6181, upper := 6286, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good055_checked :
    goodSegmentCheck 114 37 79
      { lower := 6287, upper := 6400, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good056_checked :
    goodSegmentCheck 114 37 79
      { lower := 6401, upper := 6510, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good057_checked :
    goodSegmentCheck 114 37 79
      { lower := 6511, upper := 6604, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good058_checked :
    goodSegmentCheck 114 37 79
      { lower := 6605, upper := 6712, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good059_checked :
    goodSegmentCheck 114 37 79
      { lower := 6713, upper := 6822, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good060_checked :
    goodSegmentCheck 114 37 79
      { lower := 6823, upper := 6936, witness := RowWitness.topPrime 6823 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good061_checked :
    goodSegmentCheck 114 37 79
      { lower := 6937, upper := 7030, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good062_checked :
    goodSegmentCheck 114 37 79
      { lower := 7031, upper := 7140, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good063_checked :
    goodSegmentCheck 114 37 79
      { lower := 7141, upper := 7242, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good064_checked :
    goodSegmentCheck 114 37 79
      { lower := 7243, upper := 7356, witness := RowWitness.topPrime 7243 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good065_checked :
    goodSegmentCheck 114 37 79
      { lower := 7357, upper := 7464, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good066_checked :
    goodSegmentCheck 114 37 79
      { lower := 7465, upper := 7572, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good067_checked :
    goodSegmentCheck 114 37 79
      { lower := 7573, upper := 7686, witness := RowWitness.topPrime 7573 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good068_checked :
    goodSegmentCheck 114 37 79
      { lower := 7687, upper := 7800, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good069_checked :
    goodSegmentCheck 114 37 79
      { lower := 7801, upper := 7906, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good070_checked :
    goodSegmentCheck 114 37 79
      { lower := 7907, upper := 8020, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good071_checked :
    goodSegmentCheck 114 37 79
      { lower := 8021, upper := 8130, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good072_checked :
    goodSegmentCheck 114 37 79
      { lower := 8131, upper := 8236, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good073_checked :
    goodSegmentCheck 114 37 79
      { lower := 8237, upper := 8350, witness := RowWitness.topPrime 8237 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good074_checked :
    goodSegmentCheck 114 37 79
      { lower := 8351, upper := 8442, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good075_checked :
    goodSegmentCheck 114 37 79
      { lower := 8443, upper := 8556, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good076_checked :
    goodSegmentCheck 114 37 79
      { lower := 8557, upper := 8656, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good077_checked :
    goodSegmentCheck 114 37 79
      { lower := 8657, upper := 8760, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good078_checked :
    goodSegmentCheck 114 37 79
      { lower := 8761, upper := 8874, witness := RowWitness.topPrime 8761 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good079_checked :
    goodSegmentCheck 114 37 79
      { lower := 8875, upper := 8980, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good080_checked :
    goodSegmentCheck 114 37 79
      { lower := 8981, upper := 9084, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good081_checked :
    goodSegmentCheck 114 37 79
      { lower := 9085, upper := 9180, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good082_checked :
    goodSegmentCheck 114 37 79
      { lower := 9181, upper := 9294, witness := RowWitness.topPrime 9181 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good083_checked :
    goodSegmentCheck 114 37 79
      { lower := 9295, upper := 9406, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good084_checked :
    goodSegmentCheck 114 37 79
      { lower := 9407, upper := 9516, witness := RowWitness.topPrime 9403 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good085_checked :
    goodSegmentCheck 114 37 79
      { lower := 9517, upper := 9624, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good086_checked :
    goodSegmentCheck 114 37 79
      { lower := 9625, upper := 9736, witness := RowWitness.topPrime 9623 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good087_checked :
    goodSegmentCheck 114 37 79
      { lower := 9737, upper := 9846, witness := RowWitness.topPrime 9733 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good088_checked :
    goodSegmentCheck 114 37 79
      { lower := 9847, upper := 9952, witness := RowWitness.topPrime 9839 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good089_checked :
    goodSegmentCheck 114 37 79
      { lower := 9953, upper := 10062, witness := RowWitness.topPrime 9949 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good090_checked :
    goodSegmentCheck 114 37 79
      { lower := 10063, upper := 10174, witness := RowWitness.topPrime 10061 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good091_checked :
    goodSegmentCheck 114 37 79
      { lower := 10175, upper := 10282, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good092_checked :
    goodSegmentCheck 114 37 79
      { lower := 10283, upper := 10386, witness := RowWitness.topPrime 10273 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good093_checked :
    goodSegmentCheck 114 37 79
      { lower := 10387, upper := 10482, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good094_checked :
    goodSegmentCheck 114 37 79
      { lower := 10483, upper := 10590, witness := RowWitness.topPrime 10477 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good095_checked :
    goodSegmentCheck 114 37 79
      { lower := 10591, upper := 10702, witness := RowWitness.topPrime 10589 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good096_checked :
    goodSegmentCheck 114 37 79
      { lower := 10703, upper := 10804, witness := RowWitness.topPrime 10691 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good097_checked :
    goodSegmentCheck 114 37 79
      { lower := 10805, upper := 10912, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good098_checked :
    goodSegmentCheck 114 37 79
      { lower := 10913, upper := 11022, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good099_checked :
    goodSegmentCheck 114 37 79
      { lower := 11023, upper := 11116, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good100_checked :
    goodSegmentCheck 114 37 79
      { lower := 11117, upper := 11230, witness := RowWitness.topPrime 11117 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good101_checked :
    goodSegmentCheck 114 37 79
      { lower := 11231, upper := 11326, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good102_checked :
    goodSegmentCheck 114 37 79
      { lower := 11327, upper := 11434, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good103_checked :
    goodSegmentCheck 114 37 79
      { lower := 11435, upper := 11536, witness := RowWitness.topPrime 11423 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good104_checked :
    goodSegmentCheck 114 37 79
      { lower := 11537, upper := 11640, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good105_checked :
    goodSegmentCheck 114 37 79
      { lower := 11641, upper := 11746, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good106_checked :
    goodSegmentCheck 114 37 79
      { lower := 11747, upper := 11856, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good107_checked :
    goodSegmentCheck 114 37 79
      { lower := 11857, upper := 11952, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good108_checked :
    goodSegmentCheck 114 37 79
      { lower := 11953, upper := 12066, witness := RowWitness.topPrime 11953 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good109_checked :
    goodSegmentCheck 114 37 79
      { lower := 12067, upper := 12162, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good110_checked :
    goodSegmentCheck 114 37 79
      { lower := 12163, upper := 12276, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good111_checked :
    goodSegmentCheck 114 37 79
      { lower := 12277, upper := 12390, witness := RowWitness.topPrime 12277 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good112_checked :
    goodSegmentCheck 114 37 79
      { lower := 12391, upper := 12504, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good113_checked :
    goodSegmentCheck 114 37 79
      { lower := 12505, upper := 12616, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good114_checked :
    goodSegmentCheck 114 37 79
      { lower := 12617, upper := 12726, witness := RowWitness.topPrime 12613 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good115_checked :
    goodSegmentCheck 114 37 79
      { lower := 12727, upper := 12834, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good116_checked :
    goodSegmentCheck 114 37 79
      { lower := 12835, upper := 12881, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good117_checked :
    goodSegmentCheck 114 37 79
      { lower := 13125, upper := 13234, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good118_checked :
    goodSegmentCheck 114 37 79
      { lower := 13235, upper := 13342, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good119_checked :
    goodSegmentCheck 114 37 79
      { lower := 13343, upper := 13423, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good120_checked :
    goodSegmentCheck 114 37 79
      { lower := 13454, upper := 13564, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good121_checked :
    goodSegmentCheck 114 37 79
      { lower := 13565, upper := 13569, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good122_checked :
    goodSegmentCheck 114 37 79
      { lower := 13750, upper := 13842, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good123_checked :
    goodSegmentCheck 114 37 79
      { lower := 13843, upper := 13867, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good124_checked :
    goodSegmentCheck 114 37 79
      { lower := 14297, upper := 14406, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good125_checked :
    goodSegmentCheck 114 37 79
      { lower := 14407, upper := 14519, witness := RowWitness.topPrime 14407 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good126_checked :
    goodSegmentCheck 114 37 79
      { lower := 14739, upper := 14754, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good127_checked :
    goodSegmentCheck 114 37 79
      { lower := 14792, upper := 14896, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good128_checked :
    goodSegmentCheck 114 37 79
      { lower := 14897, upper := 14925, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good129_checked :
    goodSegmentCheck 114 37 79
      { lower := 15059, upper := 15113, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good130_checked :
    goodSegmentCheck 114 37 79
      { lower := 15123, upper := 15234, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good131_checked :
    goodSegmentCheck 114 37 79
      { lower := 15235, upper := 15242, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good132_checked :
    goodSegmentCheck 114 37 79
      { lower := 15341, upper := 15444, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good133_checked :
    goodSegmentCheck 114 37 79
      { lower := 15445, upper := 15492, witness := RowWitness.topPrime 15443 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good134_checked :
    goodSegmentCheck 114 37 79
      { lower := 15870, upper := 15955, witness := RowWitness.topPrime 15859 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good135_checked :
    goodSegmentCheck 114 37 79
      { lower := 15972, upper := 16084, witness := RowWitness.topPrime 15971 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good136_checked :
    goodSegmentCheck 114 37 79
      { lower := 16085, upper := 16092, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good137_checked :
    goodSegmentCheck 114 37 79
      { lower := 16337, upper := 16363, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good138_checked :
    goodSegmentCheck 114 37 79
      { lower := 16384, upper := 16494, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good139_checked :
    goodSegmentCheck 114 37 79
      { lower := 16495, upper := 16497, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good140_checked :
    goodSegmentCheck 114 37 79
      { lower := 16810, upper := 16900, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good141_checked :
    goodSegmentCheck 114 37 79
      { lower := 16901, upper := 16967, witness := RowWitness.topPrime 16901 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good142_checked :
    goodSegmentCheck 114 37 79
      { lower := 17303, upper := 17412, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good143_checked :
    goodSegmentCheck 114 37 79
      { lower := 17413, upper := 17416, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good144_checked :
    goodSegmentCheck 114 37 79
      { lower := 17496, upper := 17604, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good145_checked :
    goodSegmentCheck 114 37 79
      { lower := 17605, upper := 17613, witness := RowWitness.topPrime 17599 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good146_checked :
    goodSegmentCheck 114 37 79
      { lower := 17661, upper := 17772, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good147_checked :
    goodSegmentCheck 114 37 79
      { lower := 17773, upper := 17774, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good148_checked :
    goodSegmentCheck 114 37 79
      { lower := 18490, upper := 18594, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good149_checked :
    goodSegmentCheck 114 37 79
      { lower := 18595, upper := 18615, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good150_checked :
    goodSegmentCheck 114 37 79
      { lower := 18634, upper := 18718, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good151_checked :
    goodSegmentCheck 114 37 79
      { lower := 18723, upper := 18747, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good152_checked :
    goodSegmentCheck 114 37 79
      { lower := 18750, upper := 18862, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good153_checked :
    goodSegmentCheck 114 37 79
      { lower := 18863, upper := 18863, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good154_checked :
    goodSegmentCheck 114 37 79
      { lower := 19208, upper := 19320, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good155_checked :
    goodSegmentCheck 114 37 79
      { lower := 19321, upper := 19321, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good156_checked :
    goodSegmentCheck 114 37 79
      { lower := 19663, upper := 19774, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good157_checked :
    goodSegmentCheck 114 37 79
      { lower := 19775, upper := 19796, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good158_checked :
    goodSegmentCheck 114 37 79
      { lower := 19881, upper := 19886, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good159_checked :
    goodSegmentCheck 114 37 79
      { lower := 19965, upper := 19994, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good160_checked :
    goodSegmentCheck 114 37 79
      { lower := 20172, upper := 20274, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good161_checked :
    goodSegmentCheck 114 37 79
      { lower := 20275, upper := 20294, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good162_checked :
    goodSegmentCheck 114 37 79
      { lower := 20402, upper := 20452, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good163_checked :
    goodSegmentCheck 114 37 79
      { lower := 20480, upper := 20515, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good164_checked :
    goodSegmentCheck 114 37 79
      { lower := 20535, upper := 20593, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good165_checked :
    goodSegmentCheck 114 37 79
      { lower := 21218, upper := 21255, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good166_checked :
    goodSegmentCheck 114 37 79
      { lower := 21296, upper := 21396, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good167_checked :
    goodSegmentCheck 114 37 79
      { lower := 21397, upper := 21409, witness := RowWitness.topPrime 21397 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good168_checked :
    goodSegmentCheck 114 37 79
      { lower := 21866, upper := 21976, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good169_checked :
    goodSegmentCheck 114 37 79
      { lower := 21977, upper := 22017, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good170_checked :
    goodSegmentCheck 114 37 79
      { lower := 22103, upper := 22206, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good171_checked :
    goodSegmentCheck 114 37 79
      { lower := 22207, upper := 22216, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good172_checked :
    goodSegmentCheck 114 37 79
      { lower := 22472, upper := 22582, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good173_checked :
    goodSegmentCheck 114 37 79
      { lower := 22583, upper := 22585, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good174_checked :
    goodSegmentCheck 114 37 79
      { lower := 22627, upper := 22641, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good175_checked :
    goodSegmentCheck 114 37 79
      { lower := 22707, upper := 22740, witness := RowWitness.topPrime 22699 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good176_checked :
    goodSegmentCheck 114 37 79
      { lower := 23548, upper := 23647, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good177_checked :
    goodSegmentCheck 114 37 79
      { lower := 23763, upper := 23874, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good178_checked :
    goodSegmentCheck 114 37 79
      { lower := 23875, upper := 23875, witness := RowWitness.topPrime 23873 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good179_checked :
    goodSegmentCheck 114 37 79
      { lower := 24010, upper := 24120, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good180_checked :
    goodSegmentCheck 114 37 79
      { lower := 24121, upper := 24138, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good181_checked :
    goodSegmentCheck 114 37 79
      { lower := 24334, upper := 24442, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good182_checked :
    goodSegmentCheck 114 37 79
      { lower := 24443, upper := 24480, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good183_checked :
    goodSegmentCheck 114 37 79
      { lower := 24576, upper := 24684, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good184_checked :
    goodSegmentCheck 114 37 79
      { lower := 24685, upper := 24689, witness := RowWitness.topPrime 24683 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good185_checked :
    goodSegmentCheck 114 37 79
      { lower := 24986, upper := 25092, witness := RowWitness.topPrime 24979 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good186_checked :
    goodSegmentCheck 114 37 79
      { lower := 25093, upper := 25099, witness := RowWitness.topPrime 25087 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good187_checked :
    goodSegmentCheck 114 37 79
      { lower := 25215, upper := 25302, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good188_checked :
    goodSegmentCheck 114 37 79
      { lower := 25303, upper := 25394, witness := RowWitness.topPrime 25303 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good189_checked :
    goodSegmentCheck 114 37 79
      { lower := 26047, upper := 26124, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good190_checked :
    goodSegmentCheck 114 37 79
      { lower := 26411, upper := 26477, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good191_checked :
    goodSegmentCheck 114 37 79
      { lower := 26508, upper := 26524, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good192_checked :
    goodSegmentCheck 114 37 79
      { lower := 26620, upper := 26621, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good193_checked :
    goodSegmentCheck 114 37 79
      { lower := 26645, upper := 26733, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good194_checked :
    goodSegmentCheck 114 37 79
      { lower := 26934, upper := 27009, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good195_checked :
    goodSegmentCheck 114 37 79
      { lower := 27848, upper := 27848, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good196_checked :
    goodSegmentCheck 114 37 79
      { lower := 27951, upper := 27961, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good197_checked :
    goodSegmentCheck 114 37 79
      { lower := 28125, upper := 28203, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good198_checked :
    goodSegmentCheck 114 37 79
      { lower := 28227, upper := 28238, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good199_checked :
    goodSegmentCheck 114 37 79
      { lower := 28577, upper := 28686, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good200_checked :
    goodSegmentCheck 114 37 79
      { lower := 28687, upper := 28690, witness := RowWitness.topPrime 28687 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good201_checked :
    goodSegmentCheck 114 37 79
      { lower := 28717, upper := 28824, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good202_checked :
    goodSegmentCheck 114 37 79
      { lower := 28825, upper := 28862, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good203_checked :
    goodSegmentCheck 114 37 79
      { lower := 29584, upper := 29591, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good204_checked :
    goodSegmentCheck 114 37 79
      { lower := 29791, upper := 29881, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good205_checked :
    goodSegmentCheck 114 37 79
      { lower := 30258, upper := 30359, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good206_checked :
    goodSegmentCheck 114 37 79
      { lower := 30613, upper := 30706, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good207_checked :
    goodSegmentCheck 114 37 79
      { lower := 30707, upper := 30716, witness := RowWitness.topPrime 30707 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good208_checked :
    goodSegmentCheck 114 37 79
      { lower := 30926, upper := 31012, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good209_checked :
    goodSegmentCheck 114 37 79
      { lower := 31213, upper := 31306, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good210_checked :
    goodSegmentCheck 114 37 79
      { lower := 31307, upper := 31326, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good211_checked :
    goodSegmentCheck 114 37 79
      { lower := 31329, upper := 31363, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good212_checked :
    goodSegmentCheck 114 37 79
      { lower := 31423, upper := 31510, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good213_checked :
    goodSegmentCheck 114 37 79
      { lower := 31511, upper := 31546, witness := RowWitness.topPrime 31511 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good214_checked :
    goodSegmentCheck 114 37 79
      { lower := 31939, upper := 31940, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good215_checked :
    goodSegmentCheck 114 37 79
      { lower := 31944, upper := 32020, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good216_checked :
    goodSegmentCheck 114 37 79
      { lower := 32021, upper := 32057, witness := RowWitness.topPrime 32009 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good217_checked :
    goodSegmentCheck 114 37 79
      { lower := 32805, upper := 32916, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good218_checked :
    goodSegmentCheck 114 37 79
      { lower := 32917, upper := 32918, witness := RowWitness.topPrime 32917 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good219_checked :
    goodSegmentCheck 114 37 79
      { lower := 32955, upper := 32969, witness := RowWitness.topPrime 32941 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good220_checked :
    goodSegmentCheck 114 37 79
      { lower := 33282, upper := 33360, witness := RowWitness.topPrime 33247 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good221_checked :
    goodSegmentCheck 114 37 79
      { lower := 33361, upper := 33388, witness := RowWitness.topPrime 33359 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good222_checked :
    goodSegmentCheck 114 37 79
      { lower := 33620, upper := 33732, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good223_checked :
    goodSegmentCheck 114 37 79
      { lower := 33733, upper := 33733, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good224_checked :
    goodSegmentCheck 114 37 79
      { lower := 34375, upper := 34482, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good225_checked :
    goodSegmentCheck 114 37 79
      { lower := 34483, upper := 34504, witness := RowWitness.topPrime 34483 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good226_checked :
    goodSegmentCheck 114 37 79
      { lower := 35152, upper := 35244, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good227_checked :
    goodSegmentCheck 114 37 79
      { lower := 35301, upper := 35404, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good228_checked :
    goodSegmentCheck 114 37 79
      { lower := 35405, upper := 35414, witness := RowWitness.topPrime 35401 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good229_checked :
    goodSegmentCheck 114 37 79
      { lower := 36015, upper := 36025, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good230_checked :
    goodSegmentCheck 114 37 79
      { lower := 36517, upper := 36610, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good231_checked :
    goodSegmentCheck 114 37 79
      { lower := 36611, upper := 36614, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good232_checked :
    goodSegmentCheck 114 37 79
      { lower := 36982, upper := 37092, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good233_checked :
    goodSegmentCheck 114 37 79
      { lower := 37093, upper := 37093, witness := RowWitness.topPrime 37087 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good234_checked :
    goodSegmentCheck 114 37 79
      { lower := 37303, upper := 37323, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good235_checked :
    goodSegmentCheck 114 37 79
      { lower := 37349, upper := 37416, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good236_checked :
    goodSegmentCheck 114 37 79
      { lower := 37446, upper := 37462, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good237_checked :
    goodSegmentCheck 114 37 79
      { lower := 37500, upper := 37606, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good238_checked :
    goodSegmentCheck 114 37 79
      { lower := 37607, upper := 37613, witness := RowWitness.topPrime 37607 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good239_checked :
    goodSegmentCheck 114 37 79
      { lower := 37636, upper := 37666, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good240_checked :
    goodSegmentCheck 114 37 79
      { lower := 38307, upper := 38404, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good241_checked :
    goodSegmentCheck 114 37 79
      { lower := 38416, upper := 38420, witness := RowWitness.topPrime 38393 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good242_checked :
    goodSegmentCheck 114 37 79
      { lower := 39326, upper := 39436, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good243_checked :
    goodSegmentCheck 114 37 79
      { lower := 39437, upper := 39439, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good244_checked :
    goodSegmentCheck 114 37 79
      { lower := 39605, upper := 39659, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good245_checked :
    goodSegmentCheck 114 37 79
      { lower := 40344, upper := 40456, witness := RowWitness.topPrime 40343 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good246_checked :
    goodSegmentCheck 114 37 79
      { lower := 40457, upper := 40457, witness := RowWitness.topPrime 40433 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good247_checked :
    goodSegmentCheck 114 37 79
      { lower := 40678, upper := 40738, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good248_checked :
    goodSegmentCheck 114 37 79
      { lower := 40817, upper := 40917, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good249_checked :
    goodSegmentCheck 114 37 79
      { lower := 40960, upper := 41044, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good250_checked :
    goodSegmentCheck 114 37 79
      { lower := 41772, upper := 41856, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good251_checked :
    goodSegmentCheck 114 37 79
      { lower := 42025, upper := 42084, witness := RowWitness.topPrime 42023 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good252_checked :
    goodSegmentCheck 114 37 79
      { lower := 42135, upper := 42138, witness := RowWitness.topPrime 42131 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good253_checked :
    goodSegmentCheck 114 37 79
      { lower := 42527, upper := 42549, witness := RowWitness.topPrime 42509 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good254_checked :
    goodSegmentCheck 114 37 79
      { lower := 42632, upper := 42640, witness := RowWitness.topPrime 42611 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good255_checked :
    goodSegmentCheck 114 37 79
      { lower := 43750, upper := 43800, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good256_checked :
    goodSegmentCheck 114 37 79
      { lower := 43940, upper := 44036, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good257_checked :
    goodSegmentCheck 114 37 79
      { lower := 44217, upper := 44293, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good258_checked :
    goodSegmentCheck 114 37 79
      { lower := 44944, upper := 45003, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good259_checked :
    goodSegmentCheck 114 37 79
      { lower := 45056, upper := 45057, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good260_checked :
    goodSegmentCheck 114 37 79
      { lower := 46225, upper := 46250, witness := RowWitness.topPrime 46219 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good261_checked :
    goodSegmentCheck 114 37 79
      { lower := 47526, upper := 47634, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good262_checked :
    goodSegmentCheck 114 37 79
      { lower := 47635, upper := 47637, witness := RowWitness.topPrime 47629 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good263_checked :
    goodSegmentCheck 114 37 79
      { lower := 48020, upper := 48074, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good264_checked :
    goodSegmentCheck 114 37 79
      { lower := 48334, upper := 48336, witness := RowWitness.topPrime 48313 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good265_checked :
    goodSegmentCheck 114 37 79
      { lower := 48373, upper := 48447, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good266_checked :
    goodSegmentCheck 114 37 79
      { lower := 48668, upper := 48711, witness := RowWitness.topPrime 48661 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good267_checked :
    goodSegmentCheck 114 37 79
      { lower := 48734, upper := 48846, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good268_checked :
    goodSegmentCheck 114 37 79
      { lower := 48847, upper := 48847, witness := RowWitness.topPrime 48847 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good269_checked :
    goodSegmentCheck 114 37 79
      { lower := 49152, upper := 49243, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good270_checked :
    goodSegmentCheck 114 37 79
      { lower := 50000, upper := 50041, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good271_checked :
    goodSegmentCheck 114 37 79
      { lower := 50421, upper := 50523, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good272_checked :
    goodSegmentCheck 114 37 79
      { lower := 50531, upper := 50534, witness := RowWitness.topPrime 50527 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good273_checked :
    goodSegmentCheck 114 37 79
      { lower := 50562, upper := 50644, witness := RowWitness.topPrime 50551 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good274_checked :
    goodSegmentCheck 114 37 79
      { lower := 50653, upper := 50675, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good275_checked :
    goodSegmentCheck 114 37 79
      { lower := 51076, upper := 51118, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good276_checked :
    goodSegmentCheck 114 37 79
      { lower := 53125, upper := 53158, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good277_checked :
    goodSegmentCheck 114 37 79
      { lower := 53371, upper := 53403, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good278_checked :
    goodSegmentCheck 114 37 79
      { lower := 55451, upper := 55554, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good279_checked :
    goodSegmentCheck 114 37 79
      { lower := 55555, upper := 55560, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good280_checked :
    goodSegmentCheck 114 37 79
      { lower := 56180, upper := 56292, witness := RowWitness.topPrime 56179 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good281_checked :
    goodSegmentCheck 114 37 79
      { lower := 56293, upper := 56293, witness := RowWitness.topPrime 56269 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good282_checked :
    goodSegmentCheck 114 37 79
      { lower := 57344, upper := 57358, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good283_checked :
    goodSegmentCheck 114 37 79
      { lower := 58619, upper := 58677, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good284_checked :
    goodSegmentCheck 114 37 79
      { lower := 58989, upper := 59092, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good285_checked :
    goodSegmentCheck 114 37 79
      { lower := 59093, upper := 59102, witness := RowWitness.topPrime 59093 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good286_checked :
    goodSegmentCheck 114 37 79
      { lower := 59405, upper := 59488, witness := RowWitness.topPrime 59399 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good287_checked :
    goodSegmentCheck 114 37 79
      { lower := 59582, upper := 59649, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good288_checked :
    goodSegmentCheck 114 37 79
      { lower := 62500, upper := 62523, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good289_checked :
    goodSegmentCheck 114 37 79
      { lower := 63368, upper := 63370, witness := RowWitness.topPrime 63367 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good290_checked :
    goodSegmentCheck 114 37 79
      { lower := 63869, upper := 63976, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good291_checked :
    goodSegmentCheck 114 37 79
      { lower := 63977, upper := 63982, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good292_checked :
    goodSegmentCheck 114 37 79
      { lower := 65536, upper := 65634, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good293_checked :
    goodSegmentCheck 114 37 79
      { lower := 65635, upper := 65649, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good294_checked :
    goodSegmentCheck 114 37 79
      { lower := 67335, upper := 67341, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good295_checked :
    goodSegmentCheck 114 37 79
      { lower := 68694, upper := 68764, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good296_checked :
    goodSegmentCheck 114 37 79
      { lower := 68782, upper := 68807, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good297_checked :
    goodSegmentCheck 114 37 79
      { lower := 68890, upper := 68895, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good298_checked :
    goodSegmentCheck 114 37 79
      { lower := 68921, upper := 69003, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good299_checked :
    goodSegmentCheck 114 37 79
      { lower := 71289, upper := 71399, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good300_checked :
    goodSegmentCheck 114 37 79
      { lower := 73101, upper := 73115, witness := RowWitness.topPrime 73091 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good301_checked :
    goodSegmentCheck 114 37 79
      { lower := 73167, upper := 73254, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good302_checked :
    goodSegmentCheck 114 37 79
      { lower := 73255, upper := 73280, witness := RowWitness.topPrime 73243 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good303_checked :
    goodSegmentCheck 114 37 79
      { lower := 73728, upper := 73808, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good293_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good294_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good295_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good296_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good297_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good298_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good299_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good300_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good301_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good302_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good303_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good304_checked :
    goodSegmentCheck 114 37 79
      { lower := 78141, upper := 78238, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good305_checked :
    goodSegmentCheck 114 37 79
      { lower := 85264, upper := 85282, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good306_checked :
    goodSegmentCheck 114 37 79
      { lower := 85291, upper := 85372, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good307_checked :
    goodSegmentCheck 114 37 79
      { lower := 85373, upper := 85377, witness := RowWitness.topPrime 85369 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good308_checked :
    goodSegmentCheck 114 37 79
      { lower := 85697, upper := 85796, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good309_checked :
    goodSegmentCheck 114 37 79
      { lower := 89383, upper := 89486, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good310_checked :
    goodSegmentCheck 114 37 79
      { lower := 95052, upper := 95140, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good311_checked :
    goodSegmentCheck 114 37 79
      { lower := 95141, upper := 95161, witness := RowWitness.topPrime 95131 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good312_checked :
    goodSegmentCheck 114 37 79
      { lower := 98304, upper := 98373, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good313_checked :
    goodSegmentCheck 114 37 79
      { lower := 98415, upper := 98417, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good314_checked :
    goodSegmentCheck 114 37 79
      { lower := 100842, upper := 100933, witness := RowWitness.topPrime 100829 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good315_checked :
    goodSegmentCheck 114 37 79
      { lower := 101306, upper := 101364, witness := RowWitness.topPrime 101293 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good316_checked :
    goodSegmentCheck 114 37 79
      { lower := 103041, upper := 103086, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good317_checked :
    goodSegmentCheck 114 37 79
      { lower := 106097, upper := 106200, witness := RowWitness.topPrime 106087 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good318_checked :
    goodSegmentCheck 114 37 79
      { lower := 106201, upper := 106203, witness := RowWitness.topPrime 106189 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good319_checked :
    goodSegmentCheck 114 37 79
      { lower := 117128, upper := 117226, witness := RowWitness.topPrime 117127 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good307_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good308_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good309_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good310_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good311_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good312_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good313_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good314_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good315_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good316_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good317_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good318_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good319_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_good320_checked :
    goodSegmentCheck 114 37 79
      { lower := 118815, upper := 118914, witness := RowWitness.topPrime 118801 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good321_checked :
    goodSegmentCheck 114 37 79
      { lower := 118915, upper := 118923, witness := RowWitness.topPrime 118913 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good322_checked :
    goodSegmentCheck 114 37 79
      { lower := 122412, upper := 122430, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good323_checked :
    goodSegmentCheck 114 37 79
      { lower := 131769, upper := 131839, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good324_checked :
    goodSegmentCheck 114 37 79
      { lower := 137917, upper := 137955, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good325_checked :
    goodSegmentCheck 114 37 79
      { lower := 142578, upper := 142685, witness := RowWitness.topPrime 142573 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good326_checked :
    goodSegmentCheck 114 37 79
      { lower := 142814, upper := 142918, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good327_checked :
    goodSegmentCheck 114 37 79
      { lower := 146410, upper := 146447, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good328_checked :
    goodSegmentCheck 114 37 79
      { lower := 148877, upper := 148950, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good329_checked :
    goodSegmentCheck 114 37 79
      { lower := 148955, upper := 148990, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good330_checked :
    goodSegmentCheck 114 37 79
      { lower := 178766, upper := 178859, witness := RowWitness.topPrime 178757 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good331_checked :
    goodSegmentCheck 114 37 79
      { lower := 194672, upper := 194746, witness := RowWitness.topPrime 194671 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row114_good332_checked :
    goodSegmentCheck 114 37 79
      { lower := 327701, upper := 327793, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 114) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good320_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good321_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good322_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good323_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good324_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good325_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good326_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good327_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good328_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good329_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good330_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good331_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_good332_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_goods_checked :
    row114.goods.all (goodSegmentCheck row114.height.i row114.height.r row114.height.s) = true := by
  change row114_goods.all (goodSegmentCheck 114 37 79) = true
  simp only [row114_goods, List.all_cons, List.all_nil,
    row114_good000_checked,
    row114_good001_checked,
    row114_good002_checked,
    row114_good003_checked,
    row114_good004_checked,
    row114_good005_checked,
    row114_good006_checked,
    row114_good007_checked,
    row114_good008_checked,
    row114_good009_checked,
    row114_good010_checked,
    row114_good011_checked,
    row114_good012_checked,
    row114_good013_checked,
    row114_good014_checked,
    row114_good015_checked,
    row114_good016_checked,
    row114_good017_checked,
    row114_good018_checked,
    row114_good019_checked,
    row114_good020_checked,
    row114_good021_checked,
    row114_good022_checked,
    row114_good023_checked,
    row114_good024_checked,
    row114_good025_checked,
    row114_good026_checked,
    row114_good027_checked,
    row114_good028_checked,
    row114_good029_checked,
    row114_good030_checked,
    row114_good031_checked,
    row114_good032_checked,
    row114_good033_checked,
    row114_good034_checked,
    row114_good035_checked,
    row114_good036_checked,
    row114_good037_checked,
    row114_good038_checked,
    row114_good039_checked,
    row114_good040_checked,
    row114_good041_checked,
    row114_good042_checked,
    row114_good043_checked,
    row114_good044_checked,
    row114_good045_checked,
    row114_good046_checked,
    row114_good047_checked,
    row114_good048_checked,
    row114_good049_checked,
    row114_good050_checked,
    row114_good051_checked,
    row114_good052_checked,
    row114_good053_checked,
    row114_good054_checked,
    row114_good055_checked,
    row114_good056_checked,
    row114_good057_checked,
    row114_good058_checked,
    row114_good059_checked,
    row114_good060_checked,
    row114_good061_checked,
    row114_good062_checked,
    row114_good063_checked,
    row114_good064_checked,
    row114_good065_checked,
    row114_good066_checked,
    row114_good067_checked,
    row114_good068_checked,
    row114_good069_checked,
    row114_good070_checked,
    row114_good071_checked,
    row114_good072_checked,
    row114_good073_checked,
    row114_good074_checked,
    row114_good075_checked,
    row114_good076_checked,
    row114_good077_checked,
    row114_good078_checked,
    row114_good079_checked,
    row114_good080_checked,
    row114_good081_checked,
    row114_good082_checked,
    row114_good083_checked,
    row114_good084_checked,
    row114_good085_checked,
    row114_good086_checked,
    row114_good087_checked,
    row114_good088_checked,
    row114_good089_checked,
    row114_good090_checked,
    row114_good091_checked,
    row114_good092_checked,
    row114_good093_checked,
    row114_good094_checked,
    row114_good095_checked,
    row114_good096_checked,
    row114_good097_checked,
    row114_good098_checked,
    row114_good099_checked,
    row114_good100_checked,
    row114_good101_checked,
    row114_good102_checked,
    row114_good103_checked,
    row114_good104_checked,
    row114_good105_checked,
    row114_good106_checked,
    row114_good107_checked,
    row114_good108_checked,
    row114_good109_checked,
    row114_good110_checked,
    row114_good111_checked,
    row114_good112_checked,
    row114_good113_checked,
    row114_good114_checked,
    row114_good115_checked,
    row114_good116_checked,
    row114_good117_checked,
    row114_good118_checked,
    row114_good119_checked,
    row114_good120_checked,
    row114_good121_checked,
    row114_good122_checked,
    row114_good123_checked,
    row114_good124_checked,
    row114_good125_checked,
    row114_good126_checked,
    row114_good127_checked,
    row114_good128_checked,
    row114_good129_checked,
    row114_good130_checked,
    row114_good131_checked,
    row114_good132_checked,
    row114_good133_checked,
    row114_good134_checked,
    row114_good135_checked,
    row114_good136_checked,
    row114_good137_checked,
    row114_good138_checked,
    row114_good139_checked,
    row114_good140_checked,
    row114_good141_checked,
    row114_good142_checked,
    row114_good143_checked,
    row114_good144_checked,
    row114_good145_checked,
    row114_good146_checked,
    row114_good147_checked,
    row114_good148_checked,
    row114_good149_checked,
    row114_good150_checked,
    row114_good151_checked,
    row114_good152_checked,
    row114_good153_checked,
    row114_good154_checked,
    row114_good155_checked,
    row114_good156_checked,
    row114_good157_checked,
    row114_good158_checked,
    row114_good159_checked,
    row114_good160_checked,
    row114_good161_checked,
    row114_good162_checked,
    row114_good163_checked,
    row114_good164_checked,
    row114_good165_checked,
    row114_good166_checked,
    row114_good167_checked,
    row114_good168_checked,
    row114_good169_checked,
    row114_good170_checked,
    row114_good171_checked,
    row114_good172_checked,
    row114_good173_checked,
    row114_good174_checked,
    row114_good175_checked,
    row114_good176_checked,
    row114_good177_checked,
    row114_good178_checked,
    row114_good179_checked,
    row114_good180_checked,
    row114_good181_checked,
    row114_good182_checked,
    row114_good183_checked,
    row114_good184_checked,
    row114_good185_checked,
    row114_good186_checked,
    row114_good187_checked,
    row114_good188_checked,
    row114_good189_checked,
    row114_good190_checked,
    row114_good191_checked,
    row114_good192_checked,
    row114_good193_checked,
    row114_good194_checked,
    row114_good195_checked,
    row114_good196_checked,
    row114_good197_checked,
    row114_good198_checked,
    row114_good199_checked,
    row114_good200_checked,
    row114_good201_checked,
    row114_good202_checked,
    row114_good203_checked,
    row114_good204_checked,
    row114_good205_checked,
    row114_good206_checked,
    row114_good207_checked,
    row114_good208_checked,
    row114_good209_checked,
    row114_good210_checked,
    row114_good211_checked,
    row114_good212_checked,
    row114_good213_checked,
    row114_good214_checked,
    row114_good215_checked,
    row114_good216_checked,
    row114_good217_checked,
    row114_good218_checked,
    row114_good219_checked,
    row114_good220_checked,
    row114_good221_checked,
    row114_good222_checked,
    row114_good223_checked,
    row114_good224_checked,
    row114_good225_checked,
    row114_good226_checked,
    row114_good227_checked,
    row114_good228_checked,
    row114_good229_checked,
    row114_good230_checked,
    row114_good231_checked,
    row114_good232_checked,
    row114_good233_checked,
    row114_good234_checked,
    row114_good235_checked,
    row114_good236_checked,
    row114_good237_checked,
    row114_good238_checked,
    row114_good239_checked,
    row114_good240_checked,
    row114_good241_checked,
    row114_good242_checked,
    row114_good243_checked,
    row114_good244_checked,
    row114_good245_checked,
    row114_good246_checked,
    row114_good247_checked,
    row114_good248_checked,
    row114_good249_checked,
    row114_good250_checked,
    row114_good251_checked,
    row114_good252_checked,
    row114_good253_checked,
    row114_good254_checked,
    row114_good255_checked,
    row114_good256_checked,
    row114_good257_checked,
    row114_good258_checked,
    row114_good259_checked,
    row114_good260_checked,
    row114_good261_checked,
    row114_good262_checked,
    row114_good263_checked,
    row114_good264_checked,
    row114_good265_checked,
    row114_good266_checked,
    row114_good267_checked,
    row114_good268_checked,
    row114_good269_checked,
    row114_good270_checked,
    row114_good271_checked,
    row114_good272_checked,
    row114_good273_checked,
    row114_good274_checked,
    row114_good275_checked,
    row114_good276_checked,
    row114_good277_checked,
    row114_good278_checked,
    row114_good279_checked,
    row114_good280_checked,
    row114_good281_checked,
    row114_good282_checked,
    row114_good283_checked,
    row114_good284_checked,
    row114_good285_checked,
    row114_good286_checked,
    row114_good287_checked,
    row114_good288_checked,
    row114_good289_checked,
    row114_good290_checked,
    row114_good291_checked,
    row114_good292_checked,
    row114_good293_checked,
    row114_good294_checked,
    row114_good295_checked,
    row114_good296_checked,
    row114_good297_checked,
    row114_good298_checked,
    row114_good299_checked,
    row114_good300_checked,
    row114_good301_checked,
    row114_good302_checked,
    row114_good303_checked,
    row114_good304_checked,
    row114_good305_checked,
    row114_good306_checked,
    row114_good307_checked,
    row114_good308_checked,
    row114_good309_checked,
    row114_good310_checked,
    row114_good311_checked,
    row114_good312_checked,
    row114_good313_checked,
    row114_good314_checked,
    row114_good315_checked,
    row114_good316_checked,
    row114_good317_checked,
    row114_good318_checked,
    row114_good319_checked,
    row114_good320_checked,
    row114_good321_checked,
    row114_good322_checked,
    row114_good323_checked,
    row114_good324_checked,
    row114_good325_checked,
    row114_good326_checked,
    row114_good327_checked,
    row114_good328_checked,
    row114_good329_checked,
    row114_good330_checked,
    row114_good331_checked,
    row114_good332_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_registered :
    decide (row114.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row114_small_checked :
    coverCheck (2 * row114.height.i + 2) (row114.height.i * (row114.height.i - 1) - 1)
      (row114.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row114_layerCover_checked :
    coverCheck (row114.height.i * (row114.height.i - 1)) (row114.height.n0 - 1)
      (row114.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row114_bounds : List NatInterval :=
  [(230, 342), (343, 450), (451, 562), (563, 676), (677, 790), (791, 900), (901, 1000), (1001, 1110), (1111, 1222), (1223, 1336), (1337, 1440), (1441, 1552), (1553, 1666), (1667, 1780), (1781, 1890), (1891, 2002), (2003, 2116), (2117, 2226), (2227, 2334), (2335, 2446), (2447, 2560), (2561, 2670), (2671, 2784), (2785, 2890), (2891, 3000), (3001, 3114), (3115, 3222), (3223, 3334), (3335, 3444), (3445, 3546), (3547, 3660), (3661, 3772), (3773, 3882), (3883, 3994), (3995, 4102), (4103, 4212), (4213, 4324), (4325, 4410), (4411, 4522), (4523, 4636), (4637, 4750), (4751, 4864), (4865, 4974), (4975, 5086), (5087, 5200), (5201, 5310), (5311, 5422), (5423, 5532), (5533, 5644), (5645, 5754), (5755, 5862), (5863, 5974), (5975, 6066), (6067, 6180), (6181, 6286), (6287, 6400), (6401, 6510), (6511, 6604), (6605, 6712), (6713, 6822), (6823, 6936), (6937, 7030), (7031, 7140), (7141, 7242), (7243, 7356), (7357, 7464), (7465, 7572), (7573, 7686), (7687, 7800), (7801, 7906), (7907, 8020), (8021, 8130), (8131, 8236), (8237, 8350), (8351, 8442), (8443, 8556), (8557, 8656), (8657, 8760), (8761, 8874), (8875, 8980), (8981, 9084), (9085, 9180), (9181, 9294), (9295, 9406), (9407, 9516), (9517, 9624), (9625, 9736), (9737, 9846), (9847, 9952), (9953, 10062), (10063, 10174), (10175, 10282), (10283, 10386), (10387, 10482), (10483, 10590), (10591, 10702), (10703, 10804), (10805, 10912), (10913, 11022), (11023, 11116), (11117, 11230), (11231, 11326), (11327, 11434), (11435, 11536), (11537, 11640), (11641, 11746), (11747, 11856), (11857, 11952), (11953, 12066), (12067, 12162), (12163, 12276), (12277, 12390), (12391, 12504), (12505, 12616), (12617, 12726), (12727, 12834), (12835, 12881), (13125, 13234), (13235, 13342), (13343, 13423), (13454, 13564), (13565, 13569), (13750, 13842), (13843, 13867), (14297, 14406), (14407, 14519), (14739, 14754), (14792, 14896), (14897, 14925), (15059, 15113), (15123, 15234), (15235, 15242), (15341, 15444), (15445, 15492), (15870, 15955), (15972, 16084), (16085, 16092), (16337, 16363), (16384, 16494), (16495, 16497), (16810, 16900), (16901, 16967), (17303, 17412), (17413, 17416), (17496, 17604), (17605, 17613), (17661, 17772), (17773, 17774), (18490, 18594), (18595, 18615), (18634, 18718), (18723, 18747), (18750, 18862), (18863, 18863), (19208, 19320), (19321, 19321), (19663, 19774), (19775, 19796), (19881, 19886), (19965, 19994), (20172, 20274), (20275, 20294), (20402, 20452), (20480, 20515), (20535, 20593), (21218, 21255), (21296, 21396), (21397, 21409), (21866, 21976), (21977, 22017), (22103, 22206), (22207, 22216), (22472, 22582), (22583, 22585), (22627, 22641), (22707, 22740), (23548, 23647), (23763, 23874), (23875, 23875), (24010, 24120), (24121, 24138), (24334, 24442), (24443, 24480), (24576, 24684), (24685, 24689), (24986, 25092), (25093, 25099), (25215, 25302), (25303, 25394), (26047, 26124), (26411, 26477), (26508, 26524), (26620, 26621), (26645, 26733), (26934, 27009), (27848, 27848), (27951, 27961), (28125, 28203), (28227, 28238), (28577, 28686), (28687, 28690), (28717, 28824), (28825, 28862), (29584, 29591), (29791, 29881), (30258, 30359), (30613, 30706), (30707, 30716), (30926, 31012), (31213, 31306), (31307, 31326), (31329, 31363), (31423, 31510), (31511, 31546), (31939, 31940), (31944, 32020), (32021, 32057), (32805, 32916), (32917, 32918), (32955, 32969), (33282, 33360), (33361, 33388), (33620, 33732), (33733, 33733), (34375, 34482), (34483, 34504), (35152, 35244), (35301, 35404), (35405, 35414), (36015, 36025), (36517, 36610), (36611, 36614), (36982, 37092), (37093, 37093), (37303, 37323), (37349, 37416), (37446, 37462), (37500, 37606), (37607, 37613), (37636, 37666), (38307, 38404), (38416, 38420), (39326, 39436), (39437, 39439), (39605, 39659), (40344, 40456), (40457, 40457), (40678, 40738), (40817, 40917), (40960, 41044), (41772, 41856), (42025, 42084), (42135, 42138), (42527, 42549), (42632, 42640), (43750, 43800), (43940, 44036), (44217, 44293), (44944, 45003), (45056, 45057), (46225, 46250), (47526, 47634), (47635, 47637), (48020, 48074), (48334, 48336), (48373, 48447), (48668, 48711), (48734, 48846), (48847, 48847), (49152, 49243), (50000, 50041), (50421, 50523), (50531, 50534), (50562, 50644), (50653, 50675), (51076, 51118), (53125, 53158), (53371, 53403), (55451, 55554), (55555, 55560), (56180, 56292), (56293, 56293), (57344, 57358), (58619, 58677), (58989, 59092), (59093, 59102), (59405, 59488), (59582, 59649), (62500, 62523), (63368, 63370), (63869, 63976), (63977, 63982), (65536, 65634), (65635, 65649), (67335, 67341), (68694, 68764), (68782, 68807), (68890, 68895), (68921, 69003), (71289, 71399), (73101, 73115), (73167, 73254), (73255, 73280), (73728, 73808), (78141, 78238), (85264, 85282), (85291, 85372), (85373, 85377), (85697, 85796), (89383, 89486), (95052, 95140), (95141, 95161), (98304, 98373), (98415, 98417), (100842, 100933), (101306, 101364), (103041, 103086), (106097, 106200), (106201, 106203), (117128, 117226), (118815, 118914), (118915, 118923), (122412, 122430), (131769, 131839), (137917, 137955), (142578, 142685), (142814, 142918), (146410, 146447), (148877, 148950), (148955, 148990), (178766, 178859), (194672, 194746), (327701, 327793)]

theorem row114_bounds_eq : row114.goods.map goodSegmentBounds = row114_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row114_layer000_intervals : List ColouredInterval :=
  [(2, 13312, 13425), (2, 14336, 14449), (2, 15360, 15473), (2, 14336, 14449), (2, 16384, 16497), (2, 18432, 18545), (2, 20480, 20593), (2, 22528, 22641), (2, 24576, 24689), (2, 16384, 16497), (2, 20480, 20593), (2, 24576, 24689), (2, 16384, 16497), (2, 24576, 24689), (2, 16384, 16497), (3, 13122, 13235), (3, 15309, 15422), (3, 17496, 17609), (3, 19683, 19796), (3, 21870, 21983), (3, 13122, 13235), (3, 19683, 19796), (3, 19683, 19796), (5, 13125, 13238), (5, 13750, 13863), (5, 14375, 14488), (5, 15000, 15113), (5, 15625, 15738), (5, 16250, 16363), (5, 16875, 16988), (5, 17500, 17613), (5, 18125, 18238), (5, 18750, 18863), (5, 15625, 15738), (5, 18750, 18863), (5, 21875, 21988), (5, 25000, 25113), (5, 15625, 15738), (7, 14406, 14519), (7, 16807, 16920), (7, 19208, 19321), (7, 21609, 21722), (7, 24010, 24123), (7, 16807, 16920), (11, 13310, 13423), (11, 14641, 14754), (11, 15972, 16085), (11, 17303, 17416), (11, 18634, 18747), (11, 19965, 20078), (11, 21296, 21409), (11, 22627, 22740), (11, 23958, 24071), (11, 25289, 25402), (11, 14641, 14754), (13, 13182, 13295), (13, 15379, 15492), (13, 17576, 17689), (13, 19773, 19886), (13, 21970, 22083), (13, 24167, 24280), (17, 14739, 14852), (17, 19652, 19765), (17, 24565, 24678), (23, 13225, 13338), (23, 13754, 13867), (23, 14283, 14396), (23, 14812, 14925), (23, 15341, 15454), (23, 15870, 15983), (23, 24334, 24447), (29, 13456, 13569), (29, 14297, 14410), (29, 15138, 15251), (29, 15979, 16092), (29, 16820, 16933), (29, 17661, 17774), (29, 18502, 18615), (29, 19343, 19456), (29, 20184, 20297), (29, 21025, 21138), (29, 21866, 21979), (29, 22707, 22820), (29, 23548, 23661), (29, 24389, 24502), (29, 25230, 25343), (29, 24389, 24502), (31, 13454, 13567), (31, 14415, 14528), (31, 15376, 15489), (31, 16337, 16450), (31, 17298, 17411), (31, 18259, 18372), (31, 19220, 19333), (31, 20181, 20294), (31, 21142, 21255), (31, 22103, 22216), (31, 23064, 23177), (31, 24025, 24138), (31, 24986, 25099), (37, 13690, 13803), (37, 15059, 15172), (37, 16428, 16541), (37, 17797, 17910), (37, 19166, 19279), (37, 20535, 20648), (37, 21904, 22017), (37, 23273, 23386), (37, 24642, 24755), (41, 13448, 13561), (41, 15129, 15242), (41, 16810, 16923), (41, 18491, 18604), (41, 20172, 20285), (41, 21853, 21966), (41, 23534, 23647), (41, 25215, 25328), (43, 12943, 13056), (43, 14792, 14905), (43, 16641, 16754), (43, 18490, 18603), (43, 20339, 20452), (43, 22188, 22301), (43, 24037, 24150), (47, 13254, 13367), (47, 15463, 15576), (47, 17672, 17785), (47, 19881, 19994), (47, 22090, 22203), (47, 24299, 24412), (53, 14045, 14158), (53, 16854, 16967), (53, 19663, 19776), (53, 22472, 22585), (53, 25281, 25394), (59, 13924, 14037), (59, 17405, 17518), (59, 20886, 20999), (59, 24367, 24480), (61, 14884, 14997), (61, 18605, 18718), (61, 22326, 22439), (67, 13467, 13580), (67, 17956, 18069), (67, 22445, 22558), (71, 15123, 15236), (71, 20164, 20277), (71, 25205, 25318), (73, 15987, 16100), (73, 21316, 21429), (79, 18723, 18836), (79, 24964, 25077), (83, 13778, 13891), (83, 20667, 20780), (89, 15842, 15955), (89, 23763, 23876), (97, 18818, 18931), (101, 20402, 20515), (103, 21218, 21331), (107, 22898, 23011), (109, 23762, 23875), (113, 12882, 12882), (113, 25538, 25651)]

def row114_layer000_block000 : List ColouredInterval :=
  [(2, 13312, 13425), (2, 14336, 14449), (2, 15360, 15473), (2, 14336, 14449), (2, 16384, 16497), (2, 18432, 18545), (2, 20480, 20593), (2, 22528, 22641), (2, 24576, 24689), (2, 16384, 16497), (2, 20480, 20593), (2, 24576, 24689)]

def row114_layer000_block001 : List ColouredInterval :=
  [(2, 16384, 16497), (2, 24576, 24689), (2, 16384, 16497), (3, 13122, 13235), (3, 15309, 15422), (3, 17496, 17609), (3, 19683, 19796), (3, 21870, 21983), (3, 13122, 13235), (3, 19683, 19796), (3, 19683, 19796), (5, 13125, 13238)]

def row114_layer000_block002 : List ColouredInterval :=
  [(5, 13750, 13863), (5, 14375, 14488), (5, 15000, 15113), (5, 15625, 15738), (5, 16250, 16363), (5, 16875, 16988), (5, 17500, 17613), (5, 18125, 18238), (5, 18750, 18863), (5, 15625, 15738), (5, 18750, 18863), (5, 21875, 21988)]

def row114_layer000_block003 : List ColouredInterval :=
  [(5, 25000, 25113), (5, 15625, 15738), (7, 14406, 14519), (7, 16807, 16920), (7, 19208, 19321), (7, 21609, 21722), (7, 24010, 24123), (7, 16807, 16920), (11, 13310, 13423), (11, 14641, 14754), (11, 15972, 16085), (11, 17303, 17416)]

def row114_layer000_block004 : List ColouredInterval :=
  [(11, 18634, 18747), (11, 19965, 20078), (11, 21296, 21409), (11, 22627, 22740), (11, 23958, 24071), (11, 25289, 25402), (11, 14641, 14754), (13, 13182, 13295), (13, 15379, 15492), (13, 17576, 17689), (13, 19773, 19886), (13, 21970, 22083)]

def row114_layer000_block005 : List ColouredInterval :=
  [(13, 24167, 24280), (17, 14739, 14852), (17, 19652, 19765), (17, 24565, 24678), (23, 13225, 13338), (23, 13754, 13867), (23, 14283, 14396), (23, 14812, 14925), (23, 15341, 15454), (23, 15870, 15983), (23, 24334, 24447), (29, 13456, 13569)]

def row114_layer000_block006 : List ColouredInterval :=
  [(29, 14297, 14410), (29, 15138, 15251), (29, 15979, 16092), (29, 16820, 16933), (29, 17661, 17774), (29, 18502, 18615), (29, 19343, 19456), (29, 20184, 20297), (29, 21025, 21138), (29, 21866, 21979), (29, 22707, 22820), (29, 23548, 23661)]

def row114_layer000_block007 : List ColouredInterval :=
  [(29, 24389, 24502), (29, 25230, 25343), (29, 24389, 24502), (31, 13454, 13567), (31, 14415, 14528), (31, 15376, 15489), (31, 16337, 16450), (31, 17298, 17411), (31, 18259, 18372), (31, 19220, 19333), (31, 20181, 20294), (31, 21142, 21255)]

def row114_layer000_block008 : List ColouredInterval :=
  [(31, 22103, 22216), (31, 23064, 23177), (31, 24025, 24138), (31, 24986, 25099), (37, 13690, 13803), (37, 15059, 15172), (37, 16428, 16541), (37, 17797, 17910), (37, 19166, 19279), (37, 20535, 20648), (37, 21904, 22017), (37, 23273, 23386)]

def row114_layer000_block009 : List ColouredInterval :=
  [(37, 24642, 24755), (41, 13448, 13561), (41, 15129, 15242), (41, 16810, 16923), (41, 18491, 18604), (41, 20172, 20285), (41, 21853, 21966), (41, 23534, 23647), (41, 25215, 25328), (43, 12943, 13056), (43, 14792, 14905), (43, 16641, 16754)]

def row114_layer000_block010 : List ColouredInterval :=
  [(43, 18490, 18603), (43, 20339, 20452), (43, 22188, 22301), (43, 24037, 24150), (47, 13254, 13367), (47, 15463, 15576), (47, 17672, 17785), (47, 19881, 19994), (47, 22090, 22203), (47, 24299, 24412), (53, 14045, 14158), (53, 16854, 16967)]

def row114_layer000_block011 : List ColouredInterval :=
  [(53, 19663, 19776), (53, 22472, 22585), (53, 25281, 25394), (59, 13924, 14037), (59, 17405, 17518), (59, 20886, 20999), (59, 24367, 24480), (61, 14884, 14997), (61, 18605, 18718), (61, 22326, 22439), (67, 13467, 13580), (67, 17956, 18069)]

def row114_layer000_block012 : List ColouredInterval :=
  [(67, 22445, 22558), (71, 15123, 15236), (71, 20164, 20277), (71, 25205, 25318), (73, 15987, 16100), (73, 21316, 21429), (79, 18723, 18836), (79, 24964, 25077), (83, 13778, 13891), (83, 20667, 20780), (89, 15842, 15955), (89, 23763, 23876)]

def row114_layer000_block013 : List ColouredInterval :=
  [(97, 18818, 18931), (101, 20402, 20515), (103, 21218, 21331), (107, 22898, 23011), (109, 23762, 23875), (113, 12882, 12882), (113, 25538, 25651)]

def row114_layer000_chunks : List (List ColouredInterval) :=
  [row114_layer000_block000, row114_layer000_block001, row114_layer000_block002, row114_layer000_block003, row114_layer000_block004, row114_layer000_block005, row114_layer000_block006, row114_layer000_block007, row114_layer000_block008, row114_layer000_block009, row114_layer000_block010, row114_layer000_block011, row114_layer000_block012, row114_layer000_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer000_arithmetic : LayerArithmeticValid row114.height { lower := 12882, upper := 25764, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer000_enumeration :
    activePowerIntervalList 114 30 12882 25764 = row114_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer000_pairs000 :
    row114_layer000_block000.all (fun I => row114_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer000_pairs001 :
    row114_layer000_block001.all (fun I => row114_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer000_pairs002 :
    row114_layer000_block002.all (fun I => row114_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer000_pairs003 :
    row114_layer000_block003.all (fun I => row114_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer000_pairs003
