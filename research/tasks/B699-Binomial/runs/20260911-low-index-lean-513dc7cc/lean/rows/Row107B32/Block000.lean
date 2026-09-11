import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row107_height : HeightCertificateDatum := { i := 107, r := 35, s := 75, n0Power10 := 9 }

def row107_goods : List GoodSegment := [
  { lower := 216, upper := 317, witness := RowWitness.topPrime 211 },
  { lower := 318, upper := 423, witness := RowWitness.topPrime 317 },
  { lower := 424, upper := 527, witness := RowWitness.topPrime 421 },
  { lower := 528, upper := 629, witness := RowWitness.topPrime 523 },
  { lower := 630, upper := 725, witness := RowWitness.topPrime 619 },
  { lower := 726, upper := 825, witness := RowWitness.topPrime 719 },
  { lower := 826, upper := 929, witness := RowWitness.topPrime 823 },
  { lower := 930, upper := 1035, witness := RowWitness.topPrime 929 },
  { lower := 1036, upper := 1139, witness := RowWitness.topPrime 1033 },
  { lower := 1140, upper := 1235, witness := RowWitness.topPrime 1129 },
  { lower := 1236, upper := 1337, witness := RowWitness.topPrime 1231 },
  { lower := 1338, upper := 1433, witness := RowWitness.topPrime 1327 },
  { lower := 1434, upper := 1539, witness := RowWitness.topPrime 1433 },
  { lower := 1540, upper := 1637, witness := RowWitness.topPrime 1531 },
  { lower := 1638, upper := 1743, witness := RowWitness.topPrime 1637 },
  { lower := 1744, upper := 1847, witness := RowWitness.topPrime 1741 },
  { lower := 1848, upper := 1953, witness := RowWitness.topPrime 1847 },
  { lower := 1954, upper := 2057, witness := RowWitness.topPrime 1951 },
  { lower := 2058, upper := 2159, witness := RowWitness.topPrime 2053 },
  { lower := 2160, upper := 2259, witness := RowWitness.topPrime 2153 },
  { lower := 2260, upper := 2357, witness := RowWitness.topPrime 2251 },
  { lower := 2358, upper := 2463, witness := RowWitness.topPrime 2357 },
  { lower := 2464, upper := 2565, witness := RowWitness.topPrime 2459 },
  { lower := 2566, upper := 2663, witness := RowWitness.topPrime 2557 },
  { lower := 2664, upper := 2769, witness := RowWitness.topPrime 2663 },
  { lower := 2770, upper := 2873, witness := RowWitness.topPrime 2767 },
  { lower := 2874, upper := 2967, witness := RowWitness.topPrime 2861 },
  { lower := 2968, upper := 3069, witness := RowWitness.topPrime 2963 },
  { lower := 3070, upper := 3173, witness := RowWitness.topPrime 3067 },
  { lower := 3174, upper := 3275, witness := RowWitness.topPrime 3169 },
  { lower := 3276, upper := 3377, witness := RowWitness.topPrime 3271 },
  { lower := 3378, upper := 3479, witness := RowWitness.topPrime 3373 },
  { lower := 3480, upper := 3575, witness := RowWitness.topPrime 3469 },
  { lower := 3576, upper := 3677, witness := RowWitness.topPrime 3571 },
  { lower := 3678, upper := 3783, witness := RowWitness.topPrime 3677 },
  { lower := 3784, upper := 3885, witness := RowWitness.topPrime 3779 },
  { lower := 3886, upper := 3987, witness := RowWitness.topPrime 3881 },
  { lower := 3988, upper := 4073, witness := RowWitness.topPrime 3967 },
  { lower := 4074, upper := 4179, witness := RowWitness.topPrime 4073 },
  { lower := 4180, upper := 4283, witness := RowWitness.topPrime 4177 },
  { lower := 4284, upper := 4389, witness := RowWitness.topPrime 4283 },
  { lower := 4390, upper := 4479, witness := RowWitness.topPrime 4373 },
  { lower := 4480, upper := 4569, witness := RowWitness.topPrime 4463 },
  { lower := 4570, upper := 4673, witness := RowWitness.topPrime 4567 },
  { lower := 4674, upper := 4779, witness := RowWitness.topPrime 4673 },
  { lower := 4780, upper := 4865, witness := RowWitness.topPrime 4759 },
  { lower := 4866, upper := 4967, witness := RowWitness.topPrime 4861 },
  { lower := 4968, upper := 5073, witness := RowWitness.topPrime 4967 },
  { lower := 5074, upper := 5165, witness := RowWitness.topPrime 5059 },
  { lower := 5166, upper := 5259, witness := RowWitness.topPrime 5153 },
  { lower := 5260, upper := 5343, witness := RowWitness.topPrime 5237 },
  { lower := 5344, upper := 5439, witness := RowWitness.topPrime 5333 },
  { lower := 5440, upper := 5543, witness := RowWitness.topPrime 5437 },
  { lower := 5544, upper := 5637, witness := RowWitness.topPrime 5531 },
  { lower := 5638, upper := 5729, witness := RowWitness.topPrime 5623 },
  { lower := 5730, upper := 5823, witness := RowWitness.topPrime 5717 },
  { lower := 5824, upper := 5927, witness := RowWitness.topPrime 5821 },
  { lower := 5928, upper := 6033, witness := RowWitness.topPrime 5927 },
  { lower := 6034, upper := 6135, witness := RowWitness.topPrime 6029 },
  { lower := 6136, upper := 6239, witness := RowWitness.topPrime 6133 },
  { lower := 6240, upper := 6335, witness := RowWitness.topPrime 6229 },
  { lower := 6336, upper := 6435, witness := RowWitness.topPrime 6329 },
  { lower := 6436, upper := 6533, witness := RowWitness.topPrime 6427 },
  { lower := 6534, upper := 6635, witness := RowWitness.topPrime 6529 },
  { lower := 6636, upper := 6725, witness := RowWitness.topPrime 6619 },
  { lower := 6726, upper := 6825, witness := RowWitness.topPrime 6719 },
  { lower := 6826, upper := 6929, witness := RowWitness.topPrime 6823 },
  { lower := 6930, upper := 7023, witness := RowWitness.topPrime 6917 },
  { lower := 7024, upper := 7125, witness := RowWitness.topPrime 7019 },
  { lower := 7126, upper := 7227, witness := RowWitness.topPrime 7121 },
  { lower := 7228, upper := 7325, witness := RowWitness.topPrime 7219 },
  { lower := 7326, upper := 7427, witness := RowWitness.topPrime 7321 },
  { lower := 7428, upper := 7523, witness := RowWitness.topPrime 7417 },
  { lower := 7524, upper := 7629, witness := RowWitness.topPrime 7523 },
  { lower := 7630, upper := 7727, witness := RowWitness.topPrime 7621 },
  { lower := 7728, upper := 7833, witness := RowWitness.topPrime 7727 },
  { lower := 7834, upper := 7935, witness := RowWitness.topPrime 7829 },
  { lower := 7936, upper := 8039, witness := RowWitness.topPrime 7933 },
  { lower := 8040, upper := 8145, witness := RowWitness.topPrime 8039 },
  { lower := 8146, upper := 8229, witness := RowWitness.topPrime 8123 },
  { lower := 8230, upper := 8327, witness := RowWitness.topPrime 8221 },
  { lower := 8328, upper := 8423, witness := RowWitness.topPrime 8317 },
  { lower := 8424, upper := 8529, witness := RowWitness.topPrime 8423 },
  { lower := 8530, upper := 8633, witness := RowWitness.topPrime 8527 },
  { lower := 8634, upper := 8735, witness := RowWitness.topPrime 8629 },
  { lower := 8736, upper := 8837, witness := RowWitness.topPrime 8731 },
  { lower := 8838, upper := 8943, witness := RowWitness.topPrime 8837 },
  { lower := 8944, upper := 9047, witness := RowWitness.topPrime 8941 },
  { lower := 9048, upper := 9149, witness := RowWitness.topPrime 9043 },
  { lower := 9150, upper := 9243, witness := RowWitness.topPrime 9137 },
  { lower := 9244, upper := 9347, witness := RowWitness.topPrime 9241 },
  { lower := 9348, upper := 9449, witness := RowWitness.topPrime 9343 },
  { lower := 9450, upper := 9545, witness := RowWitness.topPrime 9439 },
  { lower := 9546, upper := 9645, witness := RowWitness.topPrime 9539 },
  { lower := 9646, upper := 9749, witness := RowWitness.topPrime 9643 },
  { lower := 9750, upper := 9855, witness := RowWitness.topPrime 9749 },
  { lower := 9856, upper := 9957, witness := RowWitness.topPrime 9851 },
  { lower := 9958, upper := 10055, witness := RowWitness.topPrime 9949 },
  { lower := 10056, upper := 10145, witness := RowWitness.topPrime 10039 },
  { lower := 10146, upper := 10247, witness := RowWitness.topPrime 10141 },
  { lower := 10248, upper := 10353, witness := RowWitness.topPrime 10247 },
  { lower := 10354, upper := 10449, witness := RowWitness.topPrime 10343 },
  { lower := 10450, upper := 10539, witness := RowWitness.topPrime 10433 },
  { lower := 10540, upper := 10637, witness := RowWitness.topPrime 10531 },
  { lower := 10638, upper := 10737, witness := RowWitness.topPrime 10631 },
  { lower := 10738, upper := 10839, witness := RowWitness.topPrime 10733 },
  { lower := 10840, upper := 10943, witness := RowWitness.topPrime 10837 },
  { lower := 10944, upper := 11045, witness := RowWitness.topPrime 10939 },
  { lower := 11046, upper := 11133, witness := RowWitness.topPrime 11027 },
  { lower := 11134, upper := 11237, witness := RowWitness.topPrime 11131 },
  { lower := 11238, upper := 11319, witness := RowWitness.topPrime 11213 },
  { lower := 11320, upper := 11356, witness := RowWitness.topPrime 11317 },
  { lower := 11638, upper := 11638, witness := RowWitness.topPrime 11633 },
  { lower := 11664, upper := 11744, witness := RowWitness.topPrime 11657 },
  { lower := 11767, upper := 11770, witness := RowWitness.topPrime 11743 },
  { lower := 11774, upper := 11849, witness := RowWitness.topPrime 11743 },
  { lower := 11850, upper := 11873, witness := RowWitness.topPrime 11839 },
  { lower := 11875, upper := 11880, witness := RowWitness.topPrime 11867 },
  { lower := 11979, upper := 11981, witness := RowWitness.topPrime 11971 },
  { lower := 12005, upper := 12085, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12407, witness := RowWitness.topPrime 12301 },
  { lower := 12408, upper := 12427, witness := RowWitness.topPrime 12401 },
  { lower := 12482, upper := 12585, witness := RowWitness.topPrime 12479 },
  { lower := 12586, upper := 12599, witness := RowWitness.topPrime 12583 },
  { lower := 13125, upper := 13227, witness := RowWitness.topPrime 13121 },
  { lower := 13228, upper := 13231, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13288, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13415, witness := RowWitness.topPrime 13309 },
  { lower := 13416, upper := 13416, witness := RowWitness.topPrime 13411 },
  { lower := 13454, upper := 13557, witness := RowWitness.topPrime 13451 },
  { lower := 13558, upper := 13562, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13817, witness := RowWitness.topPrime 13711 },
  { lower := 13818, upper := 13884, witness := RowWitness.topPrime 13807 },
  { lower := 13924, upper := 13957, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14403, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14507, witness := RowWitness.topPrime 14401 },
  { lower := 14508, upper := 14512, witness := RowWitness.topPrime 14503 },
  { lower := 14641, upper := 14686, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14747, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14845, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14898, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15227, witness := RowWitness.topPrime 15121 },
  { lower := 15228, upper := 15235, witness := RowWitness.topPrime 15227 },
  { lower := 15360, upper := 15465, witness := RowWitness.topPrime 15359 },
  { lower := 15466, upper := 15485, witness := RowWitness.topPrime 15461 },
  { lower := 15979, upper := 16079, witness := RowWitness.topPrime 15973 },
  { lower := 16080, upper := 16093, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16487, witness := RowWitness.topPrime 16381 },
  { lower := 16488, upper := 16490, witness := RowWitness.topPrime 16487 },
  { lower := 16810, upper := 16893, witness := RowWitness.topPrime 16787 },
  { lower := 16894, upper := 16926, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17405, witness := RowWitness.topPrime 17299 },
  { lower := 17406, upper := 17507, witness := RowWitness.topPrime 17401 },
  { lower := 17508, upper := 17514, witness := RowWitness.topPrime 17497 },
  { lower := 17576, upper := 17602, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17765, witness := RowWitness.topPrime 17659 },
  { lower := 17766, upper := 17767, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18587, witness := RowWitness.topPrime 18481 },
  { lower := 18588, upper := 18597, witness := RowWitness.topPrime 18587 },
  { lower := 18605, upper := 18608, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18711, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18740, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18855, witness := RowWitness.topPrime 18749 },
  { lower := 18856, upper := 18856, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19313, witness := RowWitness.topPrime 19207 },
  { lower := 19314, upper := 19314, witness := RowWitness.topPrime 19309 },
  { lower := 19663, upper := 19767, witness := RowWitness.topPrime 19661 },
  { lower := 19768, upper := 19769, witness := RowWitness.topPrime 19763 },
  { lower := 19773, upper := 19789, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19987, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20267, witness := RowWitness.topPrime 20161 },
  { lower := 20268, upper := 20278, witness := RowWitness.topPrime 20261 },
  { lower := 20402, upper := 20445, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20508, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20639, witness := RowWitness.topPrime 20533 },
  { lower := 20640, upper := 20641, witness := RowWitness.topPrime 20639 },
  { lower := 20667, upper := 20683, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21248, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21389, witness := RowWitness.topPrime 21283 },
  { lower := 21390, upper := 21402, witness := RowWitness.topPrime 21383 },
  { lower := 21609, upper := 21610, witness := RowWitness.topPrime 21601 },
  { lower := 21870, upper := 21969, witness := RowWitness.topPrime 21863 },
  { lower := 21970, upper := 22010, witness := RowWitness.topPrime 21961 },
  { lower := 22188, upper := 22196, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22575, witness := RowWitness.topPrime 22469 },
  { lower := 22576, upper := 22578, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22634, witness := RowWitness.topPrime 22621 },
  { lower := 24010, upper := 24113, witness := RowWitness.topPrime 24007 },
  { lower := 24114, upper := 24143, witness := RowWitness.topPrime 24113 },
  { lower := 24334, upper := 24435, witness := RowWitness.topPrime 24329 },
  { lower := 24436, upper := 24473, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24677, witness := RowWitness.topPrime 24571 },
  { lower := 24678, upper := 24682, witness := RowWitness.topPrime 24677 },
  { lower := 25000, upper := 25070, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25295, witness := RowWitness.topPrime 25189 },
  { lower := 25296, upper := 25321, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26470, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26517, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26730, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27002, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28196, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28231, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28667, witness := RowWitness.topPrime 28573 },
  { lower := 28672, upper := 28683, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28778, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28823, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29584, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29874, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30352, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30699, witness := RowWitness.topPrime 30593 },
  { lower := 30700, upper := 30709, witness := RowWitness.topPrime 30697 },
  { lower := 30720, upper := 30724, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30826, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31005, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31299, witness := RowWitness.topPrime 31193 },
  { lower := 31300, upper := 31319, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31356, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31503, witness := RowWitness.topPrime 31397 },
  { lower := 31504, upper := 31529, witness := RowWitness.topPrime 31489 },
  { lower := 32805, upper := 32874, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33720, witness := RowWitness.topPrime 33703 },
  { lower := 34375, upper := 34475, witness := RowWitness.topPrime 34369 },
  { lower := 34476, upper := 34497, witness := RowWitness.topPrime 34471 },
  { lower := 34816, upper := 34913, witness := RowWitness.topPrime 34807 },
  { lower := 34914, upper := 34916, witness := RowWitness.topPrime 34913 },
  { lower := 35344, upper := 35393, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36018, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36603, witness := RowWitness.topPrime 36497 },
  { lower := 36604, upper := 36607, witness := RowWitness.topPrime 36599 },
  { lower := 37210, upper := 37285, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37316, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37409, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37455, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37599, witness := RowWitness.topPrime 37493 },
  { lower := 37600, upper := 37606, witness := RowWitness.topPrime 37591 },
  { lower := 37636, upper := 37659, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39429, witness := RowWitness.topPrime 39323 },
  { lower := 39430, upper := 39432, witness := RowWitness.topPrime 39419 },
  { lower := 39605, upper := 39652, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40434, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40910, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41037, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43793, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 44996, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48067, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48774, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48840, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49236, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50516, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53354, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55547, witness := RowWitness.topPrime 55441 },
  { lower := 55548, upper := 55553, witness := RowWitness.topPrime 55547 },
  { lower := 58619, upper := 58670, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59062, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62516, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63975, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65627, witness := RowWitness.topPrime 65521 },
  { lower := 65628, upper := 65642, witness := RowWitness.topPrime 65617 },
  { lower := 68651, upper := 68696, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68996, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73273, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137887, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146440, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148983, witness := RowWitness.topPrime 148949 }
]

def row107_layers : List CoverLayer := [
  { lower := 11342, upper := 22684, M := 22 },
  { lower := 22684, upper := 45368, M := 18 },
  { lower := 45368, upper := 90736, M := 14 },
  { lower := 90736, upper := 181472, M := 11 },
  { lower := 181472, upper := 362944, M := 9 },
  { lower := 362944, upper := 725888, M := 8 },
  { lower := 725888, upper := 1451776, M := 6 },
  { lower := 1451776, upper := 2903552, M := 5 },
  { lower := 2903552, upper := 5807104, M := 4 },
  { lower := 5807104, upper := 11614208, M := 3 },
  { lower := 11614208, upper := 23228416, M := 3 },
  { lower := 23228416, upper := 46456832, M := 2 },
  { lower := 46456832, upper := 92913664, M := 2 },
  { lower := 92913664, upper := 185827328, M := 2 },
  { lower := 185827328, upper := 371654656, M := 1 },
  { lower := 371654656, upper := 743309312, M := 1 },
  { lower := 743309312, upper := 1000000000, M := 1 }
]

def row107 : FiniteCoverRow := {
  height := row107_height,
  goods := row107_goods,
  layers := row107_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good000_checked :
    goodSegmentCheck 107 35 75
      { lower := 216, upper := 317, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good001_checked :
    goodSegmentCheck 107 35 75
      { lower := 318, upper := 423, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good002_checked :
    goodSegmentCheck 107 35 75
      { lower := 424, upper := 527, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good003_checked :
    goodSegmentCheck 107 35 75
      { lower := 528, upper := 629, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good004_checked :
    goodSegmentCheck 107 35 75
      { lower := 630, upper := 725, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good005_checked :
    goodSegmentCheck 107 35 75
      { lower := 726, upper := 825, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good006_checked :
    goodSegmentCheck 107 35 75
      { lower := 826, upper := 929, witness := RowWitness.topPrime 823 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good007_checked :
    goodSegmentCheck 107 35 75
      { lower := 930, upper := 1035, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good008_checked :
    goodSegmentCheck 107 35 75
      { lower := 1036, upper := 1139, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good009_checked :
    goodSegmentCheck 107 35 75
      { lower := 1140, upper := 1235, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good010_checked :
    goodSegmentCheck 107 35 75
      { lower := 1236, upper := 1337, witness := RowWitness.topPrime 1231 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good011_checked :
    goodSegmentCheck 107 35 75
      { lower := 1338, upper := 1433, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good012_checked :
    goodSegmentCheck 107 35 75
      { lower := 1434, upper := 1539, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good013_checked :
    goodSegmentCheck 107 35 75
      { lower := 1540, upper := 1637, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good014_checked :
    goodSegmentCheck 107 35 75
      { lower := 1638, upper := 1743, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good015_checked :
    goodSegmentCheck 107 35 75
      { lower := 1744, upper := 1847, witness := RowWitness.topPrime 1741 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good016_checked :
    goodSegmentCheck 107 35 75
      { lower := 1848, upper := 1953, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good017_checked :
    goodSegmentCheck 107 35 75
      { lower := 1954, upper := 2057, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good018_checked :
    goodSegmentCheck 107 35 75
      { lower := 2058, upper := 2159, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good019_checked :
    goodSegmentCheck 107 35 75
      { lower := 2160, upper := 2259, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good020_checked :
    goodSegmentCheck 107 35 75
      { lower := 2260, upper := 2357, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good021_checked :
    goodSegmentCheck 107 35 75
      { lower := 2358, upper := 2463, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good022_checked :
    goodSegmentCheck 107 35 75
      { lower := 2464, upper := 2565, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good023_checked :
    goodSegmentCheck 107 35 75
      { lower := 2566, upper := 2663, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good024_checked :
    goodSegmentCheck 107 35 75
      { lower := 2664, upper := 2769, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good025_checked :
    goodSegmentCheck 107 35 75
      { lower := 2770, upper := 2873, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good026_checked :
    goodSegmentCheck 107 35 75
      { lower := 2874, upper := 2967, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good027_checked :
    goodSegmentCheck 107 35 75
      { lower := 2968, upper := 3069, witness := RowWitness.topPrime 2963 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good028_checked :
    goodSegmentCheck 107 35 75
      { lower := 3070, upper := 3173, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good029_checked :
    goodSegmentCheck 107 35 75
      { lower := 3174, upper := 3275, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good030_checked :
    goodSegmentCheck 107 35 75
      { lower := 3276, upper := 3377, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good031_checked :
    goodSegmentCheck 107 35 75
      { lower := 3378, upper := 3479, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good032_checked :
    goodSegmentCheck 107 35 75
      { lower := 3480, upper := 3575, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good033_checked :
    goodSegmentCheck 107 35 75
      { lower := 3576, upper := 3677, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good034_checked :
    goodSegmentCheck 107 35 75
      { lower := 3678, upper := 3783, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good035_checked :
    goodSegmentCheck 107 35 75
      { lower := 3784, upper := 3885, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good036_checked :
    goodSegmentCheck 107 35 75
      { lower := 3886, upper := 3987, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good037_checked :
    goodSegmentCheck 107 35 75
      { lower := 3988, upper := 4073, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good038_checked :
    goodSegmentCheck 107 35 75
      { lower := 4074, upper := 4179, witness := RowWitness.topPrime 4073 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good039_checked :
    goodSegmentCheck 107 35 75
      { lower := 4180, upper := 4283, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good040_checked :
    goodSegmentCheck 107 35 75
      { lower := 4284, upper := 4389, witness := RowWitness.topPrime 4283 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good041_checked :
    goodSegmentCheck 107 35 75
      { lower := 4390, upper := 4479, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good042_checked :
    goodSegmentCheck 107 35 75
      { lower := 4480, upper := 4569, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good043_checked :
    goodSegmentCheck 107 35 75
      { lower := 4570, upper := 4673, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good044_checked :
    goodSegmentCheck 107 35 75
      { lower := 4674, upper := 4779, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good045_checked :
    goodSegmentCheck 107 35 75
      { lower := 4780, upper := 4865, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good046_checked :
    goodSegmentCheck 107 35 75
      { lower := 4866, upper := 4967, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good047_checked :
    goodSegmentCheck 107 35 75
      { lower := 4968, upper := 5073, witness := RowWitness.topPrime 4967 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good048_checked :
    goodSegmentCheck 107 35 75
      { lower := 5074, upper := 5165, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good049_checked :
    goodSegmentCheck 107 35 75
      { lower := 5166, upper := 5259, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good050_checked :
    goodSegmentCheck 107 35 75
      { lower := 5260, upper := 5343, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good051_checked :
    goodSegmentCheck 107 35 75
      { lower := 5344, upper := 5439, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good052_checked :
    goodSegmentCheck 107 35 75
      { lower := 5440, upper := 5543, witness := RowWitness.topPrime 5437 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good053_checked :
    goodSegmentCheck 107 35 75
      { lower := 5544, upper := 5637, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good054_checked :
    goodSegmentCheck 107 35 75
      { lower := 5638, upper := 5729, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good055_checked :
    goodSegmentCheck 107 35 75
      { lower := 5730, upper := 5823, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good056_checked :
    goodSegmentCheck 107 35 75
      { lower := 5824, upper := 5927, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good057_checked :
    goodSegmentCheck 107 35 75
      { lower := 5928, upper := 6033, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good058_checked :
    goodSegmentCheck 107 35 75
      { lower := 6034, upper := 6135, witness := RowWitness.topPrime 6029 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good059_checked :
    goodSegmentCheck 107 35 75
      { lower := 6136, upper := 6239, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good060_checked :
    goodSegmentCheck 107 35 75
      { lower := 6240, upper := 6335, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good061_checked :
    goodSegmentCheck 107 35 75
      { lower := 6336, upper := 6435, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good062_checked :
    goodSegmentCheck 107 35 75
      { lower := 6436, upper := 6533, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good063_checked :
    goodSegmentCheck 107 35 75
      { lower := 6534, upper := 6635, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good064_checked :
    goodSegmentCheck 107 35 75
      { lower := 6636, upper := 6725, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good065_checked :
    goodSegmentCheck 107 35 75
      { lower := 6726, upper := 6825, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good066_checked :
    goodSegmentCheck 107 35 75
      { lower := 6826, upper := 6929, witness := RowWitness.topPrime 6823 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good067_checked :
    goodSegmentCheck 107 35 75
      { lower := 6930, upper := 7023, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good068_checked :
    goodSegmentCheck 107 35 75
      { lower := 7024, upper := 7125, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good069_checked :
    goodSegmentCheck 107 35 75
      { lower := 7126, upper := 7227, witness := RowWitness.topPrime 7121 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good070_checked :
    goodSegmentCheck 107 35 75
      { lower := 7228, upper := 7325, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good071_checked :
    goodSegmentCheck 107 35 75
      { lower := 7326, upper := 7427, witness := RowWitness.topPrime 7321 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good072_checked :
    goodSegmentCheck 107 35 75
      { lower := 7428, upper := 7523, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good073_checked :
    goodSegmentCheck 107 35 75
      { lower := 7524, upper := 7629, witness := RowWitness.topPrime 7523 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good074_checked :
    goodSegmentCheck 107 35 75
      { lower := 7630, upper := 7727, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good075_checked :
    goodSegmentCheck 107 35 75
      { lower := 7728, upper := 7833, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good076_checked :
    goodSegmentCheck 107 35 75
      { lower := 7834, upper := 7935, witness := RowWitness.topPrime 7829 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good077_checked :
    goodSegmentCheck 107 35 75
      { lower := 7936, upper := 8039, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good078_checked :
    goodSegmentCheck 107 35 75
      { lower := 8040, upper := 8145, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good079_checked :
    goodSegmentCheck 107 35 75
      { lower := 8146, upper := 8229, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good080_checked :
    goodSegmentCheck 107 35 75
      { lower := 8230, upper := 8327, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good081_checked :
    goodSegmentCheck 107 35 75
      { lower := 8328, upper := 8423, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good082_checked :
    goodSegmentCheck 107 35 75
      { lower := 8424, upper := 8529, witness := RowWitness.topPrime 8423 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good083_checked :
    goodSegmentCheck 107 35 75
      { lower := 8530, upper := 8633, witness := RowWitness.topPrime 8527 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good084_checked :
    goodSegmentCheck 107 35 75
      { lower := 8634, upper := 8735, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good085_checked :
    goodSegmentCheck 107 35 75
      { lower := 8736, upper := 8837, witness := RowWitness.topPrime 8731 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good086_checked :
    goodSegmentCheck 107 35 75
      { lower := 8838, upper := 8943, witness := RowWitness.topPrime 8837 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good087_checked :
    goodSegmentCheck 107 35 75
      { lower := 8944, upper := 9047, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good088_checked :
    goodSegmentCheck 107 35 75
      { lower := 9048, upper := 9149, witness := RowWitness.topPrime 9043 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good089_checked :
    goodSegmentCheck 107 35 75
      { lower := 9150, upper := 9243, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good090_checked :
    goodSegmentCheck 107 35 75
      { lower := 9244, upper := 9347, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good091_checked :
    goodSegmentCheck 107 35 75
      { lower := 9348, upper := 9449, witness := RowWitness.topPrime 9343 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good092_checked :
    goodSegmentCheck 107 35 75
      { lower := 9450, upper := 9545, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good093_checked :
    goodSegmentCheck 107 35 75
      { lower := 9546, upper := 9645, witness := RowWitness.topPrime 9539 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good094_checked :
    goodSegmentCheck 107 35 75
      { lower := 9646, upper := 9749, witness := RowWitness.topPrime 9643 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good095_checked :
    goodSegmentCheck 107 35 75
      { lower := 9750, upper := 9855, witness := RowWitness.topPrime 9749 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good096_checked :
    goodSegmentCheck 107 35 75
      { lower := 9856, upper := 9957, witness := RowWitness.topPrime 9851 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good097_checked :
    goodSegmentCheck 107 35 75
      { lower := 9958, upper := 10055, witness := RowWitness.topPrime 9949 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good098_checked :
    goodSegmentCheck 107 35 75
      { lower := 10056, upper := 10145, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good099_checked :
    goodSegmentCheck 107 35 75
      { lower := 10146, upper := 10247, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good100_checked :
    goodSegmentCheck 107 35 75
      { lower := 10248, upper := 10353, witness := RowWitness.topPrime 10247 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good101_checked :
    goodSegmentCheck 107 35 75
      { lower := 10354, upper := 10449, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good102_checked :
    goodSegmentCheck 107 35 75
      { lower := 10450, upper := 10539, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good103_checked :
    goodSegmentCheck 107 35 75
      { lower := 10540, upper := 10637, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good104_checked :
    goodSegmentCheck 107 35 75
      { lower := 10638, upper := 10737, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good105_checked :
    goodSegmentCheck 107 35 75
      { lower := 10738, upper := 10839, witness := RowWitness.topPrime 10733 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good106_checked :
    goodSegmentCheck 107 35 75
      { lower := 10840, upper := 10943, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good107_checked :
    goodSegmentCheck 107 35 75
      { lower := 10944, upper := 11045, witness := RowWitness.topPrime 10939 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good108_checked :
    goodSegmentCheck 107 35 75
      { lower := 11046, upper := 11133, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good109_checked :
    goodSegmentCheck 107 35 75
      { lower := 11134, upper := 11237, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good110_checked :
    goodSegmentCheck 107 35 75
      { lower := 11238, upper := 11319, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good111_checked :
    goodSegmentCheck 107 35 75
      { lower := 11320, upper := 11356, witness := RowWitness.topPrime 11317 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good112_checked :
    goodSegmentCheck 107 35 75
      { lower := 11638, upper := 11638, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good113_checked :
    goodSegmentCheck 107 35 75
      { lower := 11664, upper := 11744, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good114_checked :
    goodSegmentCheck 107 35 75
      { lower := 11767, upper := 11770, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good115_checked :
    goodSegmentCheck 107 35 75
      { lower := 11774, upper := 11849, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good116_checked :
    goodSegmentCheck 107 35 75
      { lower := 11850, upper := 11873, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good117_checked :
    goodSegmentCheck 107 35 75
      { lower := 11875, upper := 11880, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good118_checked :
    goodSegmentCheck 107 35 75
      { lower := 11979, upper := 11981, witness := RowWitness.topPrime 11971 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good119_checked :
    goodSegmentCheck 107 35 75
      { lower := 12005, upper := 12085, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good120_checked :
    goodSegmentCheck 107 35 75
      { lower := 12321, upper := 12407, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good121_checked :
    goodSegmentCheck 107 35 75
      { lower := 12408, upper := 12427, witness := RowWitness.topPrime 12401 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good122_checked :
    goodSegmentCheck 107 35 75
      { lower := 12482, upper := 12585, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good123_checked :
    goodSegmentCheck 107 35 75
      { lower := 12586, upper := 12599, witness := RowWitness.topPrime 12583 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good124_checked :
    goodSegmentCheck 107 35 75
      { lower := 13125, upper := 13227, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good125_checked :
    goodSegmentCheck 107 35 75
      { lower := 13228, upper := 13231, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good126_checked :
    goodSegmentCheck 107 35 75
      { lower := 13254, upper := 13288, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good127_checked :
    goodSegmentCheck 107 35 75
      { lower := 13310, upper := 13415, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good128_checked :
    goodSegmentCheck 107 35 75
      { lower := 13416, upper := 13416, witness := RowWitness.topPrime 13411 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good129_checked :
    goodSegmentCheck 107 35 75
      { lower := 13454, upper := 13557, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good130_checked :
    goodSegmentCheck 107 35 75
      { lower := 13558, upper := 13562, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good131_checked :
    goodSegmentCheck 107 35 75
      { lower := 13718, upper := 13817, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good132_checked :
    goodSegmentCheck 107 35 75
      { lower := 13818, upper := 13884, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good133_checked :
    goodSegmentCheck 107 35 75
      { lower := 13924, upper := 13957, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good134_checked :
    goodSegmentCheck 107 35 75
      { lower := 14336, upper := 14403, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good135_checked :
    goodSegmentCheck 107 35 75
      { lower := 14406, upper := 14507, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good136_checked :
    goodSegmentCheck 107 35 75
      { lower := 14508, upper := 14512, witness := RowWitness.topPrime 14503 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good137_checked :
    goodSegmentCheck 107 35 75
      { lower := 14641, upper := 14686, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good138_checked :
    goodSegmentCheck 107 35 75
      { lower := 14739, upper := 14747, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good139_checked :
    goodSegmentCheck 107 35 75
      { lower := 14792, upper := 14845, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good140_checked :
    goodSegmentCheck 107 35 75
      { lower := 14884, upper := 14898, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good141_checked :
    goodSegmentCheck 107 35 75
      { lower := 15123, upper := 15227, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good142_checked :
    goodSegmentCheck 107 35 75
      { lower := 15228, upper := 15235, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good143_checked :
    goodSegmentCheck 107 35 75
      { lower := 15360, upper := 15465, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good144_checked :
    goodSegmentCheck 107 35 75
      { lower := 15466, upper := 15485, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good145_checked :
    goodSegmentCheck 107 35 75
      { lower := 15979, upper := 16079, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good146_checked :
    goodSegmentCheck 107 35 75
      { lower := 16080, upper := 16093, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good147_checked :
    goodSegmentCheck 107 35 75
      { lower := 16384, upper := 16487, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good148_checked :
    goodSegmentCheck 107 35 75
      { lower := 16488, upper := 16490, witness := RowWitness.topPrime 16487 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good149_checked :
    goodSegmentCheck 107 35 75
      { lower := 16810, upper := 16893, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good150_checked :
    goodSegmentCheck 107 35 75
      { lower := 16894, upper := 16926, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good151_checked :
    goodSegmentCheck 107 35 75
      { lower := 17303, upper := 17405, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good152_checked :
    goodSegmentCheck 107 35 75
      { lower := 17406, upper := 17507, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good153_checked :
    goodSegmentCheck 107 35 75
      { lower := 17508, upper := 17514, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good154_checked :
    goodSegmentCheck 107 35 75
      { lower := 17576, upper := 17602, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good155_checked :
    goodSegmentCheck 107 35 75
      { lower := 17661, upper := 17765, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good156_checked :
    goodSegmentCheck 107 35 75
      { lower := 17766, upper := 17767, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good157_checked :
    goodSegmentCheck 107 35 75
      { lower := 18490, upper := 18587, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good158_checked :
    goodSegmentCheck 107 35 75
      { lower := 18588, upper := 18597, witness := RowWitness.topPrime 18587 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good159_checked :
    goodSegmentCheck 107 35 75
      { lower := 18605, upper := 18608, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good160_checked :
    goodSegmentCheck 107 35 75
      { lower := 18634, upper := 18711, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good161_checked :
    goodSegmentCheck 107 35 75
      { lower := 18723, upper := 18740, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good162_checked :
    goodSegmentCheck 107 35 75
      { lower := 18750, upper := 18855, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good163_checked :
    goodSegmentCheck 107 35 75
      { lower := 18856, upper := 18856, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good164_checked :
    goodSegmentCheck 107 35 75
      { lower := 19208, upper := 19313, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good165_checked :
    goodSegmentCheck 107 35 75
      { lower := 19314, upper := 19314, witness := RowWitness.topPrime 19309 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good166_checked :
    goodSegmentCheck 107 35 75
      { lower := 19663, upper := 19767, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good167_checked :
    goodSegmentCheck 107 35 75
      { lower := 19768, upper := 19769, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good168_checked :
    goodSegmentCheck 107 35 75
      { lower := 19773, upper := 19789, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good169_checked :
    goodSegmentCheck 107 35 75
      { lower := 19965, upper := 19987, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good170_checked :
    goodSegmentCheck 107 35 75
      { lower := 20172, upper := 20267, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good171_checked :
    goodSegmentCheck 107 35 75
      { lower := 20268, upper := 20278, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good172_checked :
    goodSegmentCheck 107 35 75
      { lower := 20402, upper := 20445, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good173_checked :
    goodSegmentCheck 107 35 75
      { lower := 20480, upper := 20508, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good174_checked :
    goodSegmentCheck 107 35 75
      { lower := 20535, upper := 20639, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good175_checked :
    goodSegmentCheck 107 35 75
      { lower := 20640, upper := 20641, witness := RowWitness.topPrime 20639 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good176_checked :
    goodSegmentCheck 107 35 75
      { lower := 20667, upper := 20683, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good177_checked :
    goodSegmentCheck 107 35 75
      { lower := 21218, upper := 21248, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good178_checked :
    goodSegmentCheck 107 35 75
      { lower := 21296, upper := 21389, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good179_checked :
    goodSegmentCheck 107 35 75
      { lower := 21390, upper := 21402, witness := RowWitness.topPrime 21383 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good180_checked :
    goodSegmentCheck 107 35 75
      { lower := 21609, upper := 21610, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good181_checked :
    goodSegmentCheck 107 35 75
      { lower := 21870, upper := 21969, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good182_checked :
    goodSegmentCheck 107 35 75
      { lower := 21970, upper := 22010, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good183_checked :
    goodSegmentCheck 107 35 75
      { lower := 22188, upper := 22196, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good184_checked :
    goodSegmentCheck 107 35 75
      { lower := 22472, upper := 22575, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good185_checked :
    goodSegmentCheck 107 35 75
      { lower := 22576, upper := 22578, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good186_checked :
    goodSegmentCheck 107 35 75
      { lower := 22627, upper := 22634, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good187_checked :
    goodSegmentCheck 107 35 75
      { lower := 24010, upper := 24113, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good188_checked :
    goodSegmentCheck 107 35 75
      { lower := 24114, upper := 24143, witness := RowWitness.topPrime 24113 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good189_checked :
    goodSegmentCheck 107 35 75
      { lower := 24334, upper := 24435, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good190_checked :
    goodSegmentCheck 107 35 75
      { lower := 24436, upper := 24473, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good191_checked :
    goodSegmentCheck 107 35 75
      { lower := 24576, upper := 24677, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good192_checked :
    goodSegmentCheck 107 35 75
      { lower := 24678, upper := 24682, witness := RowWitness.topPrime 24677 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good193_checked :
    goodSegmentCheck 107 35 75
      { lower := 25000, upper := 25070, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good194_checked :
    goodSegmentCheck 107 35 75
      { lower := 25215, upper := 25295, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good195_checked :
    goodSegmentCheck 107 35 75
      { lower := 25296, upper := 25321, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good196_checked :
    goodSegmentCheck 107 35 75
      { lower := 26411, upper := 26470, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good197_checked :
    goodSegmentCheck 107 35 75
      { lower := 26508, upper := 26517, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good198_checked :
    goodSegmentCheck 107 35 75
      { lower := 26645, upper := 26730, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good199_checked :
    goodSegmentCheck 107 35 75
      { lower := 26934, upper := 27002, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good200_checked :
    goodSegmentCheck 107 35 75
      { lower := 28125, upper := 28196, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good201_checked :
    goodSegmentCheck 107 35 75
      { lower := 28227, upper := 28231, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good202_checked :
    goodSegmentCheck 107 35 75
      { lower := 28577, upper := 28667, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good203_checked :
    goodSegmentCheck 107 35 75
      { lower := 28672, upper := 28683, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good204_checked :
    goodSegmentCheck 107 35 75
      { lower := 28717, upper := 28778, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good205_checked :
    goodSegmentCheck 107 35 75
      { lower := 28812, upper := 28823, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good206_checked :
    goodSegmentCheck 107 35 75
      { lower := 29584, upper := 29584, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good207_checked :
    goodSegmentCheck 107 35 75
      { lower := 29791, upper := 29874, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good208_checked :
    goodSegmentCheck 107 35 75
      { lower := 30258, upper := 30352, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good209_checked :
    goodSegmentCheck 107 35 75
      { lower := 30618, upper := 30699, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good210_checked :
    goodSegmentCheck 107 35 75
      { lower := 30700, upper := 30709, witness := RowWitness.topPrime 30697 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good211_checked :
    goodSegmentCheck 107 35 75
      { lower := 30720, upper := 30724, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good212_checked :
    goodSegmentCheck 107 35 75
      { lower := 30758, upper := 30826, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good213_checked :
    goodSegmentCheck 107 35 75
      { lower := 30926, upper := 31005, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good214_checked :
    goodSegmentCheck 107 35 75
      { lower := 31213, upper := 31299, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good215_checked :
    goodSegmentCheck 107 35 75
      { lower := 31300, upper := 31319, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good216_checked :
    goodSegmentCheck 107 35 75
      { lower := 31329, upper := 31356, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good217_checked :
    goodSegmentCheck 107 35 75
      { lower := 31423, upper := 31503, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good218_checked :
    goodSegmentCheck 107 35 75
      { lower := 31504, upper := 31529, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good219_checked :
    goodSegmentCheck 107 35 75
      { lower := 32805, upper := 32874, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good220_checked :
    goodSegmentCheck 107 35 75
      { lower := 33708, upper := 33720, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good221_checked :
    goodSegmentCheck 107 35 75
      { lower := 34375, upper := 34475, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good222_checked :
    goodSegmentCheck 107 35 75
      { lower := 34476, upper := 34497, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good223_checked :
    goodSegmentCheck 107 35 75
      { lower := 34816, upper := 34913, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good224_checked :
    goodSegmentCheck 107 35 75
      { lower := 34914, upper := 34916, witness := RowWitness.topPrime 34913 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good225_checked :
    goodSegmentCheck 107 35 75
      { lower := 35344, upper := 35393, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good226_checked :
    goodSegmentCheck 107 35 75
      { lower := 36015, upper := 36018, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good227_checked :
    goodSegmentCheck 107 35 75
      { lower := 36517, upper := 36603, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good228_checked :
    goodSegmentCheck 107 35 75
      { lower := 36604, upper := 36607, witness := RowWitness.topPrime 36599 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good229_checked :
    goodSegmentCheck 107 35 75
      { lower := 37210, upper := 37285, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good230_checked :
    goodSegmentCheck 107 35 75
      { lower := 37303, upper := 37316, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good231_checked :
    goodSegmentCheck 107 35 75
      { lower := 37349, upper := 37409, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good232_checked :
    goodSegmentCheck 107 35 75
      { lower := 37446, upper := 37455, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good233_checked :
    goodSegmentCheck 107 35 75
      { lower := 37500, upper := 37599, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good234_checked :
    goodSegmentCheck 107 35 75
      { lower := 37600, upper := 37606, witness := RowWitness.topPrime 37591 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good235_checked :
    goodSegmentCheck 107 35 75
      { lower := 37636, upper := 37659, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good236_checked :
    goodSegmentCheck 107 35 75
      { lower := 39326, upper := 39429, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good237_checked :
    goodSegmentCheck 107 35 75
      { lower := 39430, upper := 39432, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good238_checked :
    goodSegmentCheck 107 35 75
      { lower := 39605, upper := 39652, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good239_checked :
    goodSegmentCheck 107 35 75
      { lower := 40401, upper := 40434, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good240_checked :
    goodSegmentCheck 107 35 75
      { lower := 40817, upper := 40910, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good241_checked :
    goodSegmentCheck 107 35 75
      { lower := 40960, upper := 41037, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good242_checked :
    goodSegmentCheck 107 35 75
      { lower := 43750, upper := 43793, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good243_checked :
    goodSegmentCheck 107 35 75
      { lower := 44944, upper := 44996, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good244_checked :
    goodSegmentCheck 107 35 75
      { lower := 48013, upper := 48067, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good245_checked :
    goodSegmentCheck 107 35 75
      { lower := 48734, upper := 48774, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good246_checked :
    goodSegmentCheck 107 35 75
      { lower := 48778, upper := 48840, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good247_checked :
    goodSegmentCheck 107 35 75
      { lower := 49152, upper := 49236, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good248_checked :
    goodSegmentCheck 107 35 75
      { lower := 50421, upper := 50516, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good249_checked :
    goodSegmentCheck 107 35 75
      { lower := 53290, upper := 53354, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good250_checked :
    goodSegmentCheck 107 35 75
      { lower := 55451, upper := 55547, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good251_checked :
    goodSegmentCheck 107 35 75
      { lower := 55548, upper := 55553, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good252_checked :
    goodSegmentCheck 107 35 75
      { lower := 58619, upper := 58670, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good253_checked :
    goodSegmentCheck 107 35 75
      { lower := 59049, upper := 59062, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good254_checked :
    goodSegmentCheck 107 35 75
      { lower := 62500, upper := 62516, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good255_checked :
    goodSegmentCheck 107 35 75
      { lower := 63948, upper := 63975, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good256_checked :
    goodSegmentCheck 107 35 75
      { lower := 65536, upper := 65627, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good257_checked :
    goodSegmentCheck 107 35 75
      { lower := 65628, upper := 65642, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good258_checked :
    goodSegmentCheck 107 35 75
      { lower := 68651, upper := 68696, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good259_checked :
    goodSegmentCheck 107 35 75
      { lower := 68921, upper := 68996, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good260_checked :
    goodSegmentCheck 107 35 75
      { lower := 73205, upper := 73273, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good261_checked :
    goodSegmentCheck 107 35 75
      { lower := 137842, upper := 137887, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good262_checked :
    goodSegmentCheck 107 35 75
      { lower := 146410, upper := 146440, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good263_checked :
    goodSegmentCheck 107 35 75
      { lower := 148955, upper := 148983, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good263_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_goods_checked :
    row107.goods.all (goodSegmentCheck row107.height.i row107.height.r row107.height.s) = true := by
  change row107_goods.all (goodSegmentCheck 107 35 75) = true
  simp only [row107_goods, List.all_cons, List.all_nil,
    row107_good000_checked,
    row107_good001_checked,
    row107_good002_checked,
    row107_good003_checked,
    row107_good004_checked,
    row107_good005_checked,
    row107_good006_checked,
    row107_good007_checked,
    row107_good008_checked,
    row107_good009_checked,
    row107_good010_checked,
    row107_good011_checked,
    row107_good012_checked,
    row107_good013_checked,
    row107_good014_checked,
    row107_good015_checked,
    row107_good016_checked,
    row107_good017_checked,
    row107_good018_checked,
    row107_good019_checked,
    row107_good020_checked,
    row107_good021_checked,
    row107_good022_checked,
    row107_good023_checked,
    row107_good024_checked,
    row107_good025_checked,
    row107_good026_checked,
    row107_good027_checked,
    row107_good028_checked,
    row107_good029_checked,
    row107_good030_checked,
    row107_good031_checked,
    row107_good032_checked,
    row107_good033_checked,
    row107_good034_checked,
    row107_good035_checked,
    row107_good036_checked,
    row107_good037_checked,
    row107_good038_checked,
    row107_good039_checked,
    row107_good040_checked,
    row107_good041_checked,
    row107_good042_checked,
    row107_good043_checked,
    row107_good044_checked,
    row107_good045_checked,
    row107_good046_checked,
    row107_good047_checked,
    row107_good048_checked,
    row107_good049_checked,
    row107_good050_checked,
    row107_good051_checked,
    row107_good052_checked,
    row107_good053_checked,
    row107_good054_checked,
    row107_good055_checked,
    row107_good056_checked,
    row107_good057_checked,
    row107_good058_checked,
    row107_good059_checked,
    row107_good060_checked,
    row107_good061_checked,
    row107_good062_checked,
    row107_good063_checked,
    row107_good064_checked,
    row107_good065_checked,
    row107_good066_checked,
    row107_good067_checked,
    row107_good068_checked,
    row107_good069_checked,
    row107_good070_checked,
    row107_good071_checked,
    row107_good072_checked,
    row107_good073_checked,
    row107_good074_checked,
    row107_good075_checked,
    row107_good076_checked,
    row107_good077_checked,
    row107_good078_checked,
    row107_good079_checked,
    row107_good080_checked,
    row107_good081_checked,
    row107_good082_checked,
    row107_good083_checked,
    row107_good084_checked,
    row107_good085_checked,
    row107_good086_checked,
    row107_good087_checked,
    row107_good088_checked,
    row107_good089_checked,
    row107_good090_checked,
    row107_good091_checked,
    row107_good092_checked,
    row107_good093_checked,
    row107_good094_checked,
    row107_good095_checked,
    row107_good096_checked,
    row107_good097_checked,
    row107_good098_checked,
    row107_good099_checked,
    row107_good100_checked,
    row107_good101_checked,
    row107_good102_checked,
    row107_good103_checked,
    row107_good104_checked,
    row107_good105_checked,
    row107_good106_checked,
    row107_good107_checked,
    row107_good108_checked,
    row107_good109_checked,
    row107_good110_checked,
    row107_good111_checked,
    row107_good112_checked,
    row107_good113_checked,
    row107_good114_checked,
    row107_good115_checked,
    row107_good116_checked,
    row107_good117_checked,
    row107_good118_checked,
    row107_good119_checked,
    row107_good120_checked,
    row107_good121_checked,
    row107_good122_checked,
    row107_good123_checked,
    row107_good124_checked,
    row107_good125_checked,
    row107_good126_checked,
    row107_good127_checked,
    row107_good128_checked,
    row107_good129_checked,
    row107_good130_checked,
    row107_good131_checked,
    row107_good132_checked,
    row107_good133_checked,
    row107_good134_checked,
    row107_good135_checked,
    row107_good136_checked,
    row107_good137_checked,
    row107_good138_checked,
    row107_good139_checked,
    row107_good140_checked,
    row107_good141_checked,
    row107_good142_checked,
    row107_good143_checked,
    row107_good144_checked,
    row107_good145_checked,
    row107_good146_checked,
    row107_good147_checked,
    row107_good148_checked,
    row107_good149_checked,
    row107_good150_checked,
    row107_good151_checked,
    row107_good152_checked,
    row107_good153_checked,
    row107_good154_checked,
    row107_good155_checked,
    row107_good156_checked,
    row107_good157_checked,
    row107_good158_checked,
    row107_good159_checked,
    row107_good160_checked,
    row107_good161_checked,
    row107_good162_checked,
    row107_good163_checked,
    row107_good164_checked,
    row107_good165_checked,
    row107_good166_checked,
    row107_good167_checked,
    row107_good168_checked,
    row107_good169_checked,
    row107_good170_checked,
    row107_good171_checked,
    row107_good172_checked,
    row107_good173_checked,
    row107_good174_checked,
    row107_good175_checked,
    row107_good176_checked,
    row107_good177_checked,
    row107_good178_checked,
    row107_good179_checked,
    row107_good180_checked,
    row107_good181_checked,
    row107_good182_checked,
    row107_good183_checked,
    row107_good184_checked,
    row107_good185_checked,
    row107_good186_checked,
    row107_good187_checked,
    row107_good188_checked,
    row107_good189_checked,
    row107_good190_checked,
    row107_good191_checked,
    row107_good192_checked,
    row107_good193_checked,
    row107_good194_checked,
    row107_good195_checked,
    row107_good196_checked,
    row107_good197_checked,
    row107_good198_checked,
    row107_good199_checked,
    row107_good200_checked,
    row107_good201_checked,
    row107_good202_checked,
    row107_good203_checked,
    row107_good204_checked,
    row107_good205_checked,
    row107_good206_checked,
    row107_good207_checked,
    row107_good208_checked,
    row107_good209_checked,
    row107_good210_checked,
    row107_good211_checked,
    row107_good212_checked,
    row107_good213_checked,
    row107_good214_checked,
    row107_good215_checked,
    row107_good216_checked,
    row107_good217_checked,
    row107_good218_checked,
    row107_good219_checked,
    row107_good220_checked,
    row107_good221_checked,
    row107_good222_checked,
    row107_good223_checked,
    row107_good224_checked,
    row107_good225_checked,
    row107_good226_checked,
    row107_good227_checked,
    row107_good228_checked,
    row107_good229_checked,
    row107_good230_checked,
    row107_good231_checked,
    row107_good232_checked,
    row107_good233_checked,
    row107_good234_checked,
    row107_good235_checked,
    row107_good236_checked,
    row107_good237_checked,
    row107_good238_checked,
    row107_good239_checked,
    row107_good240_checked,
    row107_good241_checked,
    row107_good242_checked,
    row107_good243_checked,
    row107_good244_checked,
    row107_good245_checked,
    row107_good246_checked,
    row107_good247_checked,
    row107_good248_checked,
    row107_good249_checked,
    row107_good250_checked,
    row107_good251_checked,
    row107_good252_checked,
    row107_good253_checked,
    row107_good254_checked,
    row107_good255_checked,
    row107_good256_checked,
    row107_good257_checked,
    row107_good258_checked,
    row107_good259_checked,
    row107_good260_checked,
    row107_good261_checked,
    row107_good262_checked,
    row107_good263_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_registered :
    decide (row107.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row107_small_checked :
    coverCheck (2 * row107.height.i + 2) (row107.height.i * (row107.height.i - 1) - 1)
      (row107.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row107_layerCover_checked :
    coverCheck (row107.height.i * (row107.height.i - 1)) (row107.height.n0 - 1)
      (row107.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row107_bounds : List NatInterval :=
  [(216, 317), (318, 423), (424, 527), (528, 629), (630, 725), (726, 825), (826, 929), (930, 1035), (1036, 1139), (1140, 1235), (1236, 1337), (1338, 1433), (1434, 1539), (1540, 1637), (1638, 1743), (1744, 1847), (1848, 1953), (1954, 2057), (2058, 2159), (2160, 2259), (2260, 2357), (2358, 2463), (2464, 2565), (2566, 2663), (2664, 2769), (2770, 2873), (2874, 2967), (2968, 3069), (3070, 3173), (3174, 3275), (3276, 3377), (3378, 3479), (3480, 3575), (3576, 3677), (3678, 3783), (3784, 3885), (3886, 3987), (3988, 4073), (4074, 4179), (4180, 4283), (4284, 4389), (4390, 4479), (4480, 4569), (4570, 4673), (4674, 4779), (4780, 4865), (4866, 4967), (4968, 5073), (5074, 5165), (5166, 5259), (5260, 5343), (5344, 5439), (5440, 5543), (5544, 5637), (5638, 5729), (5730, 5823), (5824, 5927), (5928, 6033), (6034, 6135), (6136, 6239), (6240, 6335), (6336, 6435), (6436, 6533), (6534, 6635), (6636, 6725), (6726, 6825), (6826, 6929), (6930, 7023), (7024, 7125), (7126, 7227), (7228, 7325), (7326, 7427), (7428, 7523), (7524, 7629), (7630, 7727), (7728, 7833), (7834, 7935), (7936, 8039), (8040, 8145), (8146, 8229), (8230, 8327), (8328, 8423), (8424, 8529), (8530, 8633), (8634, 8735), (8736, 8837), (8838, 8943), (8944, 9047), (9048, 9149), (9150, 9243), (9244, 9347), (9348, 9449), (9450, 9545), (9546, 9645), (9646, 9749), (9750, 9855), (9856, 9957), (9958, 10055), (10056, 10145), (10146, 10247), (10248, 10353), (10354, 10449), (10450, 10539), (10540, 10637), (10638, 10737), (10738, 10839), (10840, 10943), (10944, 11045), (11046, 11133), (11134, 11237), (11238, 11319), (11320, 11356), (11638, 11638), (11664, 11744), (11767, 11770), (11774, 11849), (11850, 11873), (11875, 11880), (11979, 11981), (12005, 12085), (12321, 12407), (12408, 12427), (12482, 12585), (12586, 12599), (13125, 13227), (13228, 13231), (13254, 13288), (13310, 13415), (13416, 13416), (13454, 13557), (13558, 13562), (13718, 13817), (13818, 13884), (13924, 13957), (14336, 14403), (14406, 14507), (14508, 14512), (14641, 14686), (14739, 14747), (14792, 14845), (14884, 14898), (15123, 15227), (15228, 15235), (15360, 15465), (15466, 15485), (15979, 16079), (16080, 16093), (16384, 16487), (16488, 16490), (16810, 16893), (16894, 16926), (17303, 17405), (17406, 17507), (17508, 17514), (17576, 17602), (17661, 17765), (17766, 17767), (18490, 18587), (18588, 18597), (18605, 18608), (18634, 18711), (18723, 18740), (18750, 18855), (18856, 18856), (19208, 19313), (19314, 19314), (19663, 19767), (19768, 19769), (19773, 19789), (19965, 19987), (20172, 20267), (20268, 20278), (20402, 20445), (20480, 20508), (20535, 20639), (20640, 20641), (20667, 20683), (21218, 21248), (21296, 21389), (21390, 21402), (21609, 21610), (21870, 21969), (21970, 22010), (22188, 22196), (22472, 22575), (22576, 22578), (22627, 22634), (24010, 24113), (24114, 24143), (24334, 24435), (24436, 24473), (24576, 24677), (24678, 24682), (25000, 25070), (25215, 25295), (25296, 25321), (26411, 26470), (26508, 26517), (26645, 26730), (26934, 27002), (28125, 28196), (28227, 28231), (28577, 28667), (28672, 28683), (28717, 28778), (28812, 28823), (29584, 29584), (29791, 29874), (30258, 30352), (30618, 30699), (30700, 30709), (30720, 30724), (30758, 30826), (30926, 31005), (31213, 31299), (31300, 31319), (31329, 31356), (31423, 31503), (31504, 31529), (32805, 32874), (33708, 33720), (34375, 34475), (34476, 34497), (34816, 34913), (34914, 34916), (35344, 35393), (36015, 36018), (36517, 36603), (36604, 36607), (37210, 37285), (37303, 37316), (37349, 37409), (37446, 37455), (37500, 37599), (37600, 37606), (37636, 37659), (39326, 39429), (39430, 39432), (39605, 39652), (40401, 40434), (40817, 40910), (40960, 41037), (43750, 43793), (44944, 44996), (48013, 48067), (48734, 48774), (48778, 48840), (49152, 49236), (50421, 50516), (53290, 53354), (55451, 55547), (55548, 55553), (58619, 58670), (59049, 59062), (62500, 62516), (63948, 63975), (65536, 65627), (65628, 65642), (68651, 68696), (68921, 68996), (73205, 73273), (137842, 137887), (146410, 146440), (148955, 148983)]

theorem row107_bounds_eq : row107.goods.map goodSegmentBounds = row107_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row107_layer000_intervals : List ColouredInterval :=
  [(2, 11342, 11370), (2, 11342, 11370), (2, 12288, 12394), (2, 13312, 13418), (2, 14336, 14442), (2, 15360, 15466), (2, 16384, 16490), (2, 17408, 17514), (2, 18432, 18538), (2, 19456, 19562), (2, 20480, 20586), (2, 21504, 21610), (2, 22528, 22634), (2, 12288, 12394), (2, 14336, 14442), (2, 16384, 16490), (2, 18432, 18538), (2, 20480, 20586), (2, 22528, 22634), (2, 12288, 12394), (2, 16384, 16490), (2, 20480, 20586), (2, 16384, 16490), (2, 16384, 16490), (3, 11664, 11770), (3, 12393, 12499), (3, 13122, 13228), (3, 13851, 13957), (3, 14580, 14686), (3, 15309, 15415), (3, 16038, 16144), (3, 13122, 13228), (3, 15309, 15415), (3, 17496, 17602), (3, 19683, 19789), (3, 21870, 21976), (3, 13122, 13228), (3, 19683, 19789), (3, 19683, 19789), (5, 11342, 11356), (5, 11875, 11981), (5, 12500, 12606), (5, 13125, 13231), (5, 13750, 13856), (5, 12500, 12606), (5, 15625, 15731), (5, 18750, 18856), (5, 21875, 21981), (5, 15625, 15731), (7, 12005, 12111), (7, 14406, 14512), (7, 16807, 16913), (7, 19208, 19314), (7, 21609, 21715), (7, 16807, 16913), (11, 11979, 12085), (11, 13310, 13416), (11, 14641, 14747), (11, 15972, 16078), (11, 17303, 17409), (11, 18634, 18740), (11, 19965, 20071), (11, 21296, 21402), (11, 22627, 22683), (11, 14641, 14747), (13, 13182, 13288), (13, 15379, 15485), (13, 17576, 17682), (13, 19773, 19879), (13, 21970, 22076), (17, 14739, 14845), (17, 19652, 19758), (19, 13718, 13824), (19, 20577, 20683), (23, 11638, 11744), (23, 12167, 12273), (29, 11774, 11880), (29, 12615, 12721), (29, 13456, 13562), (29, 14297, 14403), (29, 15138, 15244), (29, 15979, 16085), (29, 16820, 16926), (29, 17661, 17767), (29, 18502, 18608), (31, 11532, 11638), (31, 12493, 12599), (31, 13454, 13560), (31, 14415, 14521), (31, 15376, 15482), (31, 16337, 16443), (31, 17298, 17404), (31, 18259, 18365), (31, 19220, 19326), (31, 20181, 20287), (31, 21142, 21248), (37, 12321, 12427), (37, 13690, 13796), (37, 15059, 15165), (37, 16428, 16534), (37, 17797, 17903), (37, 19166, 19272), (37, 20535, 20641), (37, 21904, 22010), (41, 11767, 11873), (41, 13448, 13554), (41, 15129, 15235), (41, 16810, 16916), (41, 18491, 18597), (41, 20172, 20278), (41, 21853, 21959), (43, 12943, 13049), (43, 14792, 14898), (43, 16641, 16747), (43, 18490, 18596), (43, 20339, 20445), (43, 22188, 22294), (47, 13254, 13360), (47, 15463, 15569), (47, 17672, 17778), (47, 19881, 19987), (47, 22090, 22196), (53, 11342, 11342), (53, 14045, 14151), (53, 16854, 16960), (53, 19663, 19769), (53, 22472, 22578), (59, 13924, 14030), (59, 17405, 17511), (59, 20886, 20992), (61, 14884, 14990), (61, 18605, 18711), (61, 22326, 22432), (67, 13467, 13573), (67, 17956, 18062), (67, 22445, 22551), (71, 15123, 15229), (71, 20164, 20270), (73, 15987, 16093), (73, 21316, 21422), (79, 12482, 12588), (79, 18723, 18829), (83, 13778, 13884), (83, 20667, 20773), (89, 15842, 15948), (97, 18818, 18924), (101, 20402, 20508), (103, 21218, 21324)]

def row107_layer000_block000 : List ColouredInterval :=
  [(2, 11342, 11370), (2, 11342, 11370), (2, 12288, 12394), (2, 13312, 13418), (2, 14336, 14442), (2, 15360, 15466), (2, 16384, 16490), (2, 17408, 17514), (2, 18432, 18538), (2, 19456, 19562), (2, 20480, 20586), (2, 21504, 21610), (2, 22528, 22634)]

def row107_layer000_block001 : List ColouredInterval :=
  [(2, 12288, 12394), (2, 14336, 14442), (2, 16384, 16490), (2, 18432, 18538), (2, 20480, 20586), (2, 22528, 22634), (2, 12288, 12394), (2, 16384, 16490), (2, 20480, 20586), (2, 16384, 16490), (2, 16384, 16490), (3, 11664, 11770), (3, 12393, 12499)]

def row107_layer000_block002 : List ColouredInterval :=
  [(3, 13122, 13228), (3, 13851, 13957), (3, 14580, 14686), (3, 15309, 15415), (3, 16038, 16144), (3, 13122, 13228), (3, 15309, 15415), (3, 17496, 17602), (3, 19683, 19789), (3, 21870, 21976), (3, 13122, 13228), (3, 19683, 19789), (3, 19683, 19789)]

def row107_layer000_block003 : List ColouredInterval :=
  [(5, 11342, 11356), (5, 11875, 11981), (5, 12500, 12606), (5, 13125, 13231), (5, 13750, 13856), (5, 12500, 12606), (5, 15625, 15731), (5, 18750, 18856), (5, 21875, 21981), (5, 15625, 15731), (7, 12005, 12111), (7, 14406, 14512), (7, 16807, 16913)]

def row107_layer000_block004 : List ColouredInterval :=
  [(7, 19208, 19314), (7, 21609, 21715), (7, 16807, 16913), (11, 11979, 12085), (11, 13310, 13416), (11, 14641, 14747), (11, 15972, 16078), (11, 17303, 17409), (11, 18634, 18740), (11, 19965, 20071), (11, 21296, 21402), (11, 22627, 22683), (11, 14641, 14747)]

def row107_layer000_block005 : List ColouredInterval :=
  [(13, 13182, 13288), (13, 15379, 15485), (13, 17576, 17682), (13, 19773, 19879), (13, 21970, 22076), (17, 14739, 14845), (17, 19652, 19758), (19, 13718, 13824), (19, 20577, 20683), (23, 11638, 11744), (23, 12167, 12273), (29, 11774, 11880), (29, 12615, 12721)]

def row107_layer000_block006 : List ColouredInterval :=
  [(29, 13456, 13562), (29, 14297, 14403), (29, 15138, 15244), (29, 15979, 16085), (29, 16820, 16926), (29, 17661, 17767), (29, 18502, 18608), (31, 11532, 11638), (31, 12493, 12599), (31, 13454, 13560), (31, 14415, 14521), (31, 15376, 15482), (31, 16337, 16443)]

def row107_layer000_block007 : List ColouredInterval :=
  [(31, 17298, 17404), (31, 18259, 18365), (31, 19220, 19326), (31, 20181, 20287), (31, 21142, 21248), (37, 12321, 12427), (37, 13690, 13796), (37, 15059, 15165), (37, 16428, 16534), (37, 17797, 17903), (37, 19166, 19272), (37, 20535, 20641), (37, 21904, 22010)]

def row107_layer000_block008 : List ColouredInterval :=
  [(41, 11767, 11873), (41, 13448, 13554), (41, 15129, 15235), (41, 16810, 16916), (41, 18491, 18597), (41, 20172, 20278), (41, 21853, 21959), (43, 12943, 13049), (43, 14792, 14898), (43, 16641, 16747), (43, 18490, 18596), (43, 20339, 20445), (43, 22188, 22294)]

def row107_layer000_block009 : List ColouredInterval :=
  [(47, 13254, 13360), (47, 15463, 15569), (47, 17672, 17778), (47, 19881, 19987), (47, 22090, 22196), (53, 11342, 11342), (53, 14045, 14151), (53, 16854, 16960), (53, 19663, 19769), (53, 22472, 22578), (59, 13924, 14030), (59, 17405, 17511), (59, 20886, 20992)]

def row107_layer000_block010 : List ColouredInterval :=
  [(61, 14884, 14990), (61, 18605, 18711), (61, 22326, 22432), (67, 13467, 13573), (67, 17956, 18062), (67, 22445, 22551), (71, 15123, 15229), (71, 20164, 20270), (73, 15987, 16093), (73, 21316, 21422), (79, 12482, 12588), (79, 18723, 18829), (83, 13778, 13884)]

def row107_layer000_block011 : List ColouredInterval :=
  [(83, 20667, 20773), (89, 15842, 15948), (97, 18818, 18924), (101, 20402, 20508), (103, 21218, 21324)]

def row107_layer000_chunks : List (List ColouredInterval) :=
  [row107_layer000_block000, row107_layer000_block001, row107_layer000_block002, row107_layer000_block003, row107_layer000_block004, row107_layer000_block005, row107_layer000_block006, row107_layer000_block007, row107_layer000_block008, row107_layer000_block009, row107_layer000_block010, row107_layer000_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_arithmetic : LayerArithmeticValid row107.height { lower := 11342, upper := 22684, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_enumeration :
    activePowerIntervalList 107 22 11342 22684 = row107_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs000 :
    row107_layer000_block000.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs001 :
    row107_layer000_block001.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs002 :
    row107_layer000_block002.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs003 :
    row107_layer000_block003.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs004 :
    row107_layer000_block004.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs005 :
    row107_layer000_block005.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs006 :
    row107_layer000_block006.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs007 :
    row107_layer000_block007.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs007
