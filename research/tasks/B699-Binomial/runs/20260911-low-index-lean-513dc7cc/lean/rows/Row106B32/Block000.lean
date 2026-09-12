import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row106_height : HeightCertificateDatum := { i := 106, r := 35, s := 74, n0Power10 := 9 }

def row106_goods : List GoodSegment := [
  { lower := 214, upper := 316, witness := RowWitness.topPrime 211 },
  { lower := 317, upper := 422, witness := RowWitness.topPrime 317 },
  { lower := 423, upper := 526, witness := RowWitness.topPrime 421 },
  { lower := 527, upper := 628, witness := RowWitness.topPrime 523 },
  { lower := 629, upper := 724, witness := RowWitness.topPrime 619 },
  { lower := 725, upper := 824, witness := RowWitness.topPrime 719 },
  { lower := 825, upper := 928, witness := RowWitness.topPrime 823 },
  { lower := 929, upper := 1034, witness := RowWitness.topPrime 929 },
  { lower := 1035, upper := 1138, witness := RowWitness.topPrime 1033 },
  { lower := 1139, upper := 1234, witness := RowWitness.topPrime 1129 },
  { lower := 1235, upper := 1336, witness := RowWitness.topPrime 1231 },
  { lower := 1337, upper := 1432, witness := RowWitness.topPrime 1327 },
  { lower := 1433, upper := 1538, witness := RowWitness.topPrime 1433 },
  { lower := 1539, upper := 1636, witness := RowWitness.topPrime 1531 },
  { lower := 1637, upper := 1742, witness := RowWitness.topPrime 1637 },
  { lower := 1743, upper := 1846, witness := RowWitness.topPrime 1741 },
  { lower := 1847, upper := 1952, witness := RowWitness.topPrime 1847 },
  { lower := 1953, upper := 2056, witness := RowWitness.topPrime 1951 },
  { lower := 2057, upper := 2158, witness := RowWitness.topPrime 2053 },
  { lower := 2159, upper := 2258, witness := RowWitness.topPrime 2153 },
  { lower := 2259, upper := 2356, witness := RowWitness.topPrime 2251 },
  { lower := 2357, upper := 2462, witness := RowWitness.topPrime 2357 },
  { lower := 2463, upper := 2564, witness := RowWitness.topPrime 2459 },
  { lower := 2565, upper := 2662, witness := RowWitness.topPrime 2557 },
  { lower := 2663, upper := 2768, witness := RowWitness.topPrime 2663 },
  { lower := 2769, upper := 2872, witness := RowWitness.topPrime 2767 },
  { lower := 2873, upper := 2966, witness := RowWitness.topPrime 2861 },
  { lower := 2967, upper := 3068, witness := RowWitness.topPrime 2963 },
  { lower := 3069, upper := 3172, witness := RowWitness.topPrime 3067 },
  { lower := 3173, upper := 3274, witness := RowWitness.topPrime 3169 },
  { lower := 3275, upper := 3376, witness := RowWitness.topPrime 3271 },
  { lower := 3377, upper := 3478, witness := RowWitness.topPrime 3373 },
  { lower := 3479, upper := 3574, witness := RowWitness.topPrime 3469 },
  { lower := 3575, upper := 3676, witness := RowWitness.topPrime 3571 },
  { lower := 3677, upper := 3782, witness := RowWitness.topPrime 3677 },
  { lower := 3783, upper := 3884, witness := RowWitness.topPrime 3779 },
  { lower := 3885, upper := 3986, witness := RowWitness.topPrime 3881 },
  { lower := 3987, upper := 4072, witness := RowWitness.topPrime 3967 },
  { lower := 4073, upper := 4178, witness := RowWitness.topPrime 4073 },
  { lower := 4179, upper := 4282, witness := RowWitness.topPrime 4177 },
  { lower := 4283, upper := 4388, witness := RowWitness.topPrime 4283 },
  { lower := 4389, upper := 4478, witness := RowWitness.topPrime 4373 },
  { lower := 4479, upper := 4568, witness := RowWitness.topPrime 4463 },
  { lower := 4569, upper := 4672, witness := RowWitness.topPrime 4567 },
  { lower := 4673, upper := 4778, witness := RowWitness.topPrime 4673 },
  { lower := 4779, upper := 4864, witness := RowWitness.topPrime 4759 },
  { lower := 4865, upper := 4966, witness := RowWitness.topPrime 4861 },
  { lower := 4967, upper := 5072, witness := RowWitness.topPrime 4967 },
  { lower := 5073, upper := 5164, witness := RowWitness.topPrime 5059 },
  { lower := 5165, upper := 5258, witness := RowWitness.topPrime 5153 },
  { lower := 5259, upper := 5342, witness := RowWitness.topPrime 5237 },
  { lower := 5343, upper := 5438, witness := RowWitness.topPrime 5333 },
  { lower := 5439, upper := 5542, witness := RowWitness.topPrime 5437 },
  { lower := 5543, upper := 5636, witness := RowWitness.topPrime 5531 },
  { lower := 5637, upper := 5728, witness := RowWitness.topPrime 5623 },
  { lower := 5729, upper := 5822, witness := RowWitness.topPrime 5717 },
  { lower := 5823, upper := 5926, witness := RowWitness.topPrime 5821 },
  { lower := 5927, upper := 6032, witness := RowWitness.topPrime 5927 },
  { lower := 6033, upper := 6134, witness := RowWitness.topPrime 6029 },
  { lower := 6135, upper := 6238, witness := RowWitness.topPrime 6133 },
  { lower := 6239, upper := 6334, witness := RowWitness.topPrime 6229 },
  { lower := 6335, upper := 6434, witness := RowWitness.topPrime 6329 },
  { lower := 6435, upper := 6532, witness := RowWitness.topPrime 6427 },
  { lower := 6533, upper := 6634, witness := RowWitness.topPrime 6529 },
  { lower := 6635, upper := 6724, witness := RowWitness.topPrime 6619 },
  { lower := 6725, upper := 6824, witness := RowWitness.topPrime 6719 },
  { lower := 6825, upper := 6928, witness := RowWitness.topPrime 6823 },
  { lower := 6929, upper := 7022, witness := RowWitness.topPrime 6917 },
  { lower := 7023, upper := 7124, witness := RowWitness.topPrime 7019 },
  { lower := 7125, upper := 7226, witness := RowWitness.topPrime 7121 },
  { lower := 7227, upper := 7324, witness := RowWitness.topPrime 7219 },
  { lower := 7325, upper := 7426, witness := RowWitness.topPrime 7321 },
  { lower := 7427, upper := 7522, witness := RowWitness.topPrime 7417 },
  { lower := 7523, upper := 7628, witness := RowWitness.topPrime 7523 },
  { lower := 7629, upper := 7726, witness := RowWitness.topPrime 7621 },
  { lower := 7727, upper := 7832, witness := RowWitness.topPrime 7727 },
  { lower := 7833, upper := 7934, witness := RowWitness.topPrime 7829 },
  { lower := 7935, upper := 8038, witness := RowWitness.topPrime 7933 },
  { lower := 8039, upper := 8144, witness := RowWitness.topPrime 8039 },
  { lower := 8145, upper := 8228, witness := RowWitness.topPrime 8123 },
  { lower := 8229, upper := 8326, witness := RowWitness.topPrime 8221 },
  { lower := 8327, upper := 8422, witness := RowWitness.topPrime 8317 },
  { lower := 8423, upper := 8528, witness := RowWitness.topPrime 8423 },
  { lower := 8529, upper := 8632, witness := RowWitness.topPrime 8527 },
  { lower := 8633, upper := 8734, witness := RowWitness.topPrime 8629 },
  { lower := 8735, upper := 8836, witness := RowWitness.topPrime 8731 },
  { lower := 8837, upper := 8942, witness := RowWitness.topPrime 8837 },
  { lower := 8943, upper := 9046, witness := RowWitness.topPrime 8941 },
  { lower := 9047, upper := 9148, witness := RowWitness.topPrime 9043 },
  { lower := 9149, upper := 9242, witness := RowWitness.topPrime 9137 },
  { lower := 9243, upper := 9346, witness := RowWitness.topPrime 9241 },
  { lower := 9347, upper := 9448, witness := RowWitness.topPrime 9343 },
  { lower := 9449, upper := 9544, witness := RowWitness.topPrime 9439 },
  { lower := 9545, upper := 9644, witness := RowWitness.topPrime 9539 },
  { lower := 9645, upper := 9748, witness := RowWitness.topPrime 9643 },
  { lower := 9749, upper := 9854, witness := RowWitness.topPrime 9749 },
  { lower := 9855, upper := 9956, witness := RowWitness.topPrime 9851 },
  { lower := 9957, upper := 10054, witness := RowWitness.topPrime 9949 },
  { lower := 10055, upper := 10144, witness := RowWitness.topPrime 10039 },
  { lower := 10145, upper := 10246, witness := RowWitness.topPrime 10141 },
  { lower := 10247, upper := 10352, witness := RowWitness.topPrime 10247 },
  { lower := 10353, upper := 10448, witness := RowWitness.topPrime 10343 },
  { lower := 10449, upper := 10538, witness := RowWitness.topPrime 10433 },
  { lower := 10539, upper := 10636, witness := RowWitness.topPrime 10531 },
  { lower := 10637, upper := 10736, witness := RowWitness.topPrime 10631 },
  { lower := 10737, upper := 10838, witness := RowWitness.topPrime 10733 },
  { lower := 10839, upper := 10942, witness := RowWitness.topPrime 10837 },
  { lower := 10943, upper := 11044, witness := RowWitness.topPrime 10939 },
  { lower := 11045, upper := 11132, witness := RowWitness.topPrime 11027 },
  { lower := 11133, upper := 11214, witness := RowWitness.topPrime 11131 },
  { lower := 11250, upper := 11348, witness := RowWitness.topPrime 11243 },
  { lower := 11349, upper := 11355, witness := RowWitness.topPrime 11329 },
  { lower := 11664, upper := 11743, witness := RowWitness.topPrime 11657 },
  { lower := 11767, upper := 11769, witness := RowWitness.topPrime 11743 },
  { lower := 11774, upper := 11848, witness := RowWitness.topPrime 11743 },
  { lower := 11849, upper := 11872, witness := RowWitness.topPrime 11839 },
  { lower := 11875, upper := 11879, witness := RowWitness.topPrime 11867 },
  { lower := 11979, upper := 11980, witness := RowWitness.topPrime 11971 },
  { lower := 12005, upper := 12084, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12406, witness := RowWitness.topPrime 12301 },
  { lower := 12407, upper := 12426, witness := RowWitness.topPrime 12401 },
  { lower := 12482, upper := 12584, witness := RowWitness.topPrime 12479 },
  { lower := 12585, upper := 12598, witness := RowWitness.topPrime 12583 },
  { lower := 13125, upper := 13226, witness := RowWitness.topPrime 13121 },
  { lower := 13227, upper := 13230, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13287, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13359, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13556, witness := RowWitness.topPrime 13451 },
  { lower := 13557, upper := 13561, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13816, witness := RowWitness.topPrime 13711 },
  { lower := 13817, upper := 13883, witness := RowWitness.topPrime 13807 },
  { lower := 13924, upper := 13956, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14432, witness := RowWitness.topPrime 14327 },
  { lower := 14433, upper := 14511, witness := RowWitness.topPrime 14431 },
  { lower := 14641, upper := 14685, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14746, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14844, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14897, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15226, witness := RowWitness.topPrime 15121 },
  { lower := 15227, upper := 15234, witness := RowWitness.topPrime 15227 },
  { lower := 15376, upper := 15478, witness := RowWitness.topPrime 15373 },
  { lower := 15479, upper := 15484, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16078, witness := RowWitness.topPrime 15973 },
  { lower := 16079, upper := 16092, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16486, witness := RowWitness.topPrime 16381 },
  { lower := 16487, upper := 16489, witness := RowWitness.topPrime 16487 },
  { lower := 16807, upper := 16892, witness := RowWitness.topPrime 16787 },
  { lower := 16893, upper := 16915, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17403, witness := RowWitness.topPrime 17299 },
  { lower := 17405, upper := 17408, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17510, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17601, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17764, witness := RowWitness.topPrime 17659 },
  { lower := 17765, upper := 17766, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18586, witness := RowWitness.topPrime 18481 },
  { lower := 18587, upper := 18596, witness := RowWitness.topPrime 18587 },
  { lower := 18605, upper := 18607, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18710, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18739, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18854, witness := RowWitness.topPrime 18749 },
  { lower := 18855, upper := 18855, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19312, witness := RowWitness.topPrime 19207 },
  { lower := 19313, upper := 19313, witness := RowWitness.topPrime 19309 },
  { lower := 19683, upper := 19757, witness := RowWitness.topPrime 19681 },
  { lower := 19773, upper := 19788, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19986, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20266, witness := RowWitness.topPrime 20161 },
  { lower := 20267, upper := 20277, witness := RowWitness.topPrime 20261 },
  { lower := 20402, upper := 20444, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20507, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20638, witness := RowWitness.topPrime 20533 },
  { lower := 20639, upper := 20640, witness := RowWitness.topPrime 20639 },
  { lower := 20667, upper := 20682, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21247, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21388, witness := RowWitness.topPrime 21283 },
  { lower := 21389, upper := 21401, witness := RowWitness.topPrime 21383 },
  { lower := 21870, upper := 21968, witness := RowWitness.topPrime 21863 },
  { lower := 21969, upper := 22009, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22198, witness := RowWitness.topPrime 22093 },
  { lower := 22199, upper := 22208, witness := RowWitness.topPrime 22193 },
  { lower := 24010, upper := 24112, witness := RowWitness.topPrime 24007 },
  { lower := 24113, upper := 24142, witness := RowWitness.topPrime 24113 },
  { lower := 24334, upper := 24434, witness := RowWitness.topPrime 24329 },
  { lower := 24435, upper := 24472, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24676, witness := RowWitness.topPrime 24571 },
  { lower := 24677, upper := 24681, witness := RowWitness.topPrime 24677 },
  { lower := 25000, upper := 25069, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25294, witness := RowWitness.topPrime 25189 },
  { lower := 25295, upper := 25320, witness := RowWitness.topPrime 25261 },
  { lower := 26047, upper := 26116, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26469, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26516, witness := RowWitness.topPrime 26501 },
  { lower := 26934, upper := 27001, witness := RowWitness.topPrime 26927 },
  { lower := 28227, upper := 28230, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28666, witness := RowWitness.topPrime 28573 },
  { lower := 28672, upper := 28682, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28777, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28822, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29873, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30351, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30698, witness := RowWitness.topPrime 30593 },
  { lower := 30699, upper := 30708, witness := RowWitness.topPrime 30697 },
  { lower := 31213, upper := 31298, witness := RowWitness.topPrime 31193 },
  { lower := 31299, upper := 31318, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31355, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31502, witness := RowWitness.topPrime 31397 },
  { lower := 31503, upper := 31528, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32044, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32873, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34474, witness := RowWitness.topPrime 34369 },
  { lower := 34475, upper := 34496, witness := RowWitness.topPrime 34471 },
  { lower := 35152, upper := 35236, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35392, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36017, witness := RowWitness.topPrime 36013 },
  { lower := 37210, upper := 37284, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37315, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37408, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37454, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37551, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37605, witness := RowWitness.topPrime 37549 },
  { lower := 37636, upper := 37658, witness := RowWitness.topPrime 37633 },
  { lower := 39366, upper := 39409, witness := RowWitness.topPrime 39359 },
  { lower := 39605, upper := 39651, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40433, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40909, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41036, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41848, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43792, witness := RowWitness.topPrime 43721 },
  { lower := 48013, upper := 48066, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48773, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48839, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49235, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50515, witness := RowWitness.topPrime 50417 },
  { lower := 55451, upper := 55546, witness := RowWitness.topPrime 55441 },
  { lower := 55547, upper := 55552, witness := RowWitness.topPrime 55547 },
  { lower := 58619, upper := 58669, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59061, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62515, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63974, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65626, witness := RowWitness.topPrime 65521 },
  { lower := 65627, upper := 65641, witness := RowWitness.topPrime 65617 },
  { lower := 68651, upper := 68695, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68995, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73272, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137886, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146439, witness := RowWitness.topPrime 146407 }
]

def row106_layers : List CoverLayer := [
  { lower := 11130, upper := 22260, M := 23 },
  { lower := 22260, upper := 44520, M := 19 },
  { lower := 44520, upper := 89040, M := 15 },
  { lower := 89040, upper := 178080, M := 12 },
  { lower := 178080, upper := 356160, M := 10 },
  { lower := 356160, upper := 712320, M := 8 },
  { lower := 712320, upper := 1424640, M := 7 },
  { lower := 1424640, upper := 2849280, M := 6 },
  { lower := 2849280, upper := 5698560, M := 5 },
  { lower := 5698560, upper := 11397120, M := 4 },
  { lower := 11397120, upper := 22794240, M := 3 },
  { lower := 22794240, upper := 45588480, M := 3 },
  { lower := 45588480, upper := 91176960, M := 2 },
  { lower := 91176960, upper := 182353920, M := 2 },
  { lower := 182353920, upper := 364707840, M := 2 },
  { lower := 364707840, upper := 729415680, M := 1 },
  { lower := 729415680, upper := 1000000000, M := 1 }
]

def row106 : FiniteCoverRow := {
  height := row106_height,
  goods := row106_goods,
  layers := row106_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good000_checked :
    goodSegmentCheck 106 35 74
      { lower := 214, upper := 316, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good001_checked :
    goodSegmentCheck 106 35 74
      { lower := 317, upper := 422, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good002_checked :
    goodSegmentCheck 106 35 74
      { lower := 423, upper := 526, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good003_checked :
    goodSegmentCheck 106 35 74
      { lower := 527, upper := 628, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good004_checked :
    goodSegmentCheck 106 35 74
      { lower := 629, upper := 724, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good005_checked :
    goodSegmentCheck 106 35 74
      { lower := 725, upper := 824, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good006_checked :
    goodSegmentCheck 106 35 74
      { lower := 825, upper := 928, witness := RowWitness.topPrime 823 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good007_checked :
    goodSegmentCheck 106 35 74
      { lower := 929, upper := 1034, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good008_checked :
    goodSegmentCheck 106 35 74
      { lower := 1035, upper := 1138, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good009_checked :
    goodSegmentCheck 106 35 74
      { lower := 1139, upper := 1234, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good010_checked :
    goodSegmentCheck 106 35 74
      { lower := 1235, upper := 1336, witness := RowWitness.topPrime 1231 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good011_checked :
    goodSegmentCheck 106 35 74
      { lower := 1337, upper := 1432, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good012_checked :
    goodSegmentCheck 106 35 74
      { lower := 1433, upper := 1538, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good013_checked :
    goodSegmentCheck 106 35 74
      { lower := 1539, upper := 1636, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good014_checked :
    goodSegmentCheck 106 35 74
      { lower := 1637, upper := 1742, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good015_checked :
    goodSegmentCheck 106 35 74
      { lower := 1743, upper := 1846, witness := RowWitness.topPrime 1741 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good016_checked :
    goodSegmentCheck 106 35 74
      { lower := 1847, upper := 1952, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good017_checked :
    goodSegmentCheck 106 35 74
      { lower := 1953, upper := 2056, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good018_checked :
    goodSegmentCheck 106 35 74
      { lower := 2057, upper := 2158, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good019_checked :
    goodSegmentCheck 106 35 74
      { lower := 2159, upper := 2258, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good020_checked :
    goodSegmentCheck 106 35 74
      { lower := 2259, upper := 2356, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good021_checked :
    goodSegmentCheck 106 35 74
      { lower := 2357, upper := 2462, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good022_checked :
    goodSegmentCheck 106 35 74
      { lower := 2463, upper := 2564, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good023_checked :
    goodSegmentCheck 106 35 74
      { lower := 2565, upper := 2662, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good024_checked :
    goodSegmentCheck 106 35 74
      { lower := 2663, upper := 2768, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good025_checked :
    goodSegmentCheck 106 35 74
      { lower := 2769, upper := 2872, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good026_checked :
    goodSegmentCheck 106 35 74
      { lower := 2873, upper := 2966, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good027_checked :
    goodSegmentCheck 106 35 74
      { lower := 2967, upper := 3068, witness := RowWitness.topPrime 2963 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good028_checked :
    goodSegmentCheck 106 35 74
      { lower := 3069, upper := 3172, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good029_checked :
    goodSegmentCheck 106 35 74
      { lower := 3173, upper := 3274, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good030_checked :
    goodSegmentCheck 106 35 74
      { lower := 3275, upper := 3376, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good031_checked :
    goodSegmentCheck 106 35 74
      { lower := 3377, upper := 3478, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good032_checked :
    goodSegmentCheck 106 35 74
      { lower := 3479, upper := 3574, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good033_checked :
    goodSegmentCheck 106 35 74
      { lower := 3575, upper := 3676, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good034_checked :
    goodSegmentCheck 106 35 74
      { lower := 3677, upper := 3782, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good035_checked :
    goodSegmentCheck 106 35 74
      { lower := 3783, upper := 3884, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good036_checked :
    goodSegmentCheck 106 35 74
      { lower := 3885, upper := 3986, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good037_checked :
    goodSegmentCheck 106 35 74
      { lower := 3987, upper := 4072, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good038_checked :
    goodSegmentCheck 106 35 74
      { lower := 4073, upper := 4178, witness := RowWitness.topPrime 4073 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good039_checked :
    goodSegmentCheck 106 35 74
      { lower := 4179, upper := 4282, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good040_checked :
    goodSegmentCheck 106 35 74
      { lower := 4283, upper := 4388, witness := RowWitness.topPrime 4283 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good041_checked :
    goodSegmentCheck 106 35 74
      { lower := 4389, upper := 4478, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good042_checked :
    goodSegmentCheck 106 35 74
      { lower := 4479, upper := 4568, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good043_checked :
    goodSegmentCheck 106 35 74
      { lower := 4569, upper := 4672, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good044_checked :
    goodSegmentCheck 106 35 74
      { lower := 4673, upper := 4778, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good045_checked :
    goodSegmentCheck 106 35 74
      { lower := 4779, upper := 4864, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good046_checked :
    goodSegmentCheck 106 35 74
      { lower := 4865, upper := 4966, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good047_checked :
    goodSegmentCheck 106 35 74
      { lower := 4967, upper := 5072, witness := RowWitness.topPrime 4967 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good048_checked :
    goodSegmentCheck 106 35 74
      { lower := 5073, upper := 5164, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good049_checked :
    goodSegmentCheck 106 35 74
      { lower := 5165, upper := 5258, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good050_checked :
    goodSegmentCheck 106 35 74
      { lower := 5259, upper := 5342, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good051_checked :
    goodSegmentCheck 106 35 74
      { lower := 5343, upper := 5438, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good052_checked :
    goodSegmentCheck 106 35 74
      { lower := 5439, upper := 5542, witness := RowWitness.topPrime 5437 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good053_checked :
    goodSegmentCheck 106 35 74
      { lower := 5543, upper := 5636, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good054_checked :
    goodSegmentCheck 106 35 74
      { lower := 5637, upper := 5728, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good055_checked :
    goodSegmentCheck 106 35 74
      { lower := 5729, upper := 5822, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good056_checked :
    goodSegmentCheck 106 35 74
      { lower := 5823, upper := 5926, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good057_checked :
    goodSegmentCheck 106 35 74
      { lower := 5927, upper := 6032, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good058_checked :
    goodSegmentCheck 106 35 74
      { lower := 6033, upper := 6134, witness := RowWitness.topPrime 6029 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good059_checked :
    goodSegmentCheck 106 35 74
      { lower := 6135, upper := 6238, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good060_checked :
    goodSegmentCheck 106 35 74
      { lower := 6239, upper := 6334, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good061_checked :
    goodSegmentCheck 106 35 74
      { lower := 6335, upper := 6434, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good062_checked :
    goodSegmentCheck 106 35 74
      { lower := 6435, upper := 6532, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good063_checked :
    goodSegmentCheck 106 35 74
      { lower := 6533, upper := 6634, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good064_checked :
    goodSegmentCheck 106 35 74
      { lower := 6635, upper := 6724, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good065_checked :
    goodSegmentCheck 106 35 74
      { lower := 6725, upper := 6824, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good066_checked :
    goodSegmentCheck 106 35 74
      { lower := 6825, upper := 6928, witness := RowWitness.topPrime 6823 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good067_checked :
    goodSegmentCheck 106 35 74
      { lower := 6929, upper := 7022, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good068_checked :
    goodSegmentCheck 106 35 74
      { lower := 7023, upper := 7124, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good069_checked :
    goodSegmentCheck 106 35 74
      { lower := 7125, upper := 7226, witness := RowWitness.topPrime 7121 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good070_checked :
    goodSegmentCheck 106 35 74
      { lower := 7227, upper := 7324, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good071_checked :
    goodSegmentCheck 106 35 74
      { lower := 7325, upper := 7426, witness := RowWitness.topPrime 7321 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good072_checked :
    goodSegmentCheck 106 35 74
      { lower := 7427, upper := 7522, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good073_checked :
    goodSegmentCheck 106 35 74
      { lower := 7523, upper := 7628, witness := RowWitness.topPrime 7523 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good074_checked :
    goodSegmentCheck 106 35 74
      { lower := 7629, upper := 7726, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good075_checked :
    goodSegmentCheck 106 35 74
      { lower := 7727, upper := 7832, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good076_checked :
    goodSegmentCheck 106 35 74
      { lower := 7833, upper := 7934, witness := RowWitness.topPrime 7829 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good077_checked :
    goodSegmentCheck 106 35 74
      { lower := 7935, upper := 8038, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good078_checked :
    goodSegmentCheck 106 35 74
      { lower := 8039, upper := 8144, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good079_checked :
    goodSegmentCheck 106 35 74
      { lower := 8145, upper := 8228, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good080_checked :
    goodSegmentCheck 106 35 74
      { lower := 8229, upper := 8326, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good081_checked :
    goodSegmentCheck 106 35 74
      { lower := 8327, upper := 8422, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good082_checked :
    goodSegmentCheck 106 35 74
      { lower := 8423, upper := 8528, witness := RowWitness.topPrime 8423 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good083_checked :
    goodSegmentCheck 106 35 74
      { lower := 8529, upper := 8632, witness := RowWitness.topPrime 8527 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good084_checked :
    goodSegmentCheck 106 35 74
      { lower := 8633, upper := 8734, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good085_checked :
    goodSegmentCheck 106 35 74
      { lower := 8735, upper := 8836, witness := RowWitness.topPrime 8731 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good086_checked :
    goodSegmentCheck 106 35 74
      { lower := 8837, upper := 8942, witness := RowWitness.topPrime 8837 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good087_checked :
    goodSegmentCheck 106 35 74
      { lower := 8943, upper := 9046, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good088_checked :
    goodSegmentCheck 106 35 74
      { lower := 9047, upper := 9148, witness := RowWitness.topPrime 9043 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good089_checked :
    goodSegmentCheck 106 35 74
      { lower := 9149, upper := 9242, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good090_checked :
    goodSegmentCheck 106 35 74
      { lower := 9243, upper := 9346, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good091_checked :
    goodSegmentCheck 106 35 74
      { lower := 9347, upper := 9448, witness := RowWitness.topPrime 9343 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good092_checked :
    goodSegmentCheck 106 35 74
      { lower := 9449, upper := 9544, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good093_checked :
    goodSegmentCheck 106 35 74
      { lower := 9545, upper := 9644, witness := RowWitness.topPrime 9539 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good094_checked :
    goodSegmentCheck 106 35 74
      { lower := 9645, upper := 9748, witness := RowWitness.topPrime 9643 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good095_checked :
    goodSegmentCheck 106 35 74
      { lower := 9749, upper := 9854, witness := RowWitness.topPrime 9749 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good096_checked :
    goodSegmentCheck 106 35 74
      { lower := 9855, upper := 9956, witness := RowWitness.topPrime 9851 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good097_checked :
    goodSegmentCheck 106 35 74
      { lower := 9957, upper := 10054, witness := RowWitness.topPrime 9949 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good098_checked :
    goodSegmentCheck 106 35 74
      { lower := 10055, upper := 10144, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good099_checked :
    goodSegmentCheck 106 35 74
      { lower := 10145, upper := 10246, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good100_checked :
    goodSegmentCheck 106 35 74
      { lower := 10247, upper := 10352, witness := RowWitness.topPrime 10247 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good101_checked :
    goodSegmentCheck 106 35 74
      { lower := 10353, upper := 10448, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good102_checked :
    goodSegmentCheck 106 35 74
      { lower := 10449, upper := 10538, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good103_checked :
    goodSegmentCheck 106 35 74
      { lower := 10539, upper := 10636, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good104_checked :
    goodSegmentCheck 106 35 74
      { lower := 10637, upper := 10736, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good105_checked :
    goodSegmentCheck 106 35 74
      { lower := 10737, upper := 10838, witness := RowWitness.topPrime 10733 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good106_checked :
    goodSegmentCheck 106 35 74
      { lower := 10839, upper := 10942, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good107_checked :
    goodSegmentCheck 106 35 74
      { lower := 10943, upper := 11044, witness := RowWitness.topPrime 10939 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good108_checked :
    goodSegmentCheck 106 35 74
      { lower := 11045, upper := 11132, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good109_checked :
    goodSegmentCheck 106 35 74
      { lower := 11133, upper := 11214, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good110_checked :
    goodSegmentCheck 106 35 74
      { lower := 11250, upper := 11348, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good111_checked :
    goodSegmentCheck 106 35 74
      { lower := 11349, upper := 11355, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good112_checked :
    goodSegmentCheck 106 35 74
      { lower := 11664, upper := 11743, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good113_checked :
    goodSegmentCheck 106 35 74
      { lower := 11767, upper := 11769, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good114_checked :
    goodSegmentCheck 106 35 74
      { lower := 11774, upper := 11848, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good115_checked :
    goodSegmentCheck 106 35 74
      { lower := 11849, upper := 11872, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good116_checked :
    goodSegmentCheck 106 35 74
      { lower := 11875, upper := 11879, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good117_checked :
    goodSegmentCheck 106 35 74
      { lower := 11979, upper := 11980, witness := RowWitness.topPrime 11971 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good118_checked :
    goodSegmentCheck 106 35 74
      { lower := 12005, upper := 12084, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good119_checked :
    goodSegmentCheck 106 35 74
      { lower := 12321, upper := 12406, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good120_checked :
    goodSegmentCheck 106 35 74
      { lower := 12407, upper := 12426, witness := RowWitness.topPrime 12401 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good121_checked :
    goodSegmentCheck 106 35 74
      { lower := 12482, upper := 12584, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good122_checked :
    goodSegmentCheck 106 35 74
      { lower := 12585, upper := 12598, witness := RowWitness.topPrime 12583 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good123_checked :
    goodSegmentCheck 106 35 74
      { lower := 13125, upper := 13226, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good124_checked :
    goodSegmentCheck 106 35 74
      { lower := 13227, upper := 13230, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good125_checked :
    goodSegmentCheck 106 35 74
      { lower := 13254, upper := 13287, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good126_checked :
    goodSegmentCheck 106 35 74
      { lower := 13310, upper := 13359, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good127_checked :
    goodSegmentCheck 106 35 74
      { lower := 13454, upper := 13556, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good128_checked :
    goodSegmentCheck 106 35 74
      { lower := 13557, upper := 13561, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good129_checked :
    goodSegmentCheck 106 35 74
      { lower := 13718, upper := 13816, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good130_checked :
    goodSegmentCheck 106 35 74
      { lower := 13817, upper := 13883, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good131_checked :
    goodSegmentCheck 106 35 74
      { lower := 13924, upper := 13956, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good132_checked :
    goodSegmentCheck 106 35 74
      { lower := 14336, upper := 14432, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good133_checked :
    goodSegmentCheck 106 35 74
      { lower := 14433, upper := 14511, witness := RowWitness.topPrime 14431 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good134_checked :
    goodSegmentCheck 106 35 74
      { lower := 14641, upper := 14685, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good135_checked :
    goodSegmentCheck 106 35 74
      { lower := 14739, upper := 14746, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good136_checked :
    goodSegmentCheck 106 35 74
      { lower := 14792, upper := 14844, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good137_checked :
    goodSegmentCheck 106 35 74
      { lower := 14884, upper := 14897, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good138_checked :
    goodSegmentCheck 106 35 74
      { lower := 15123, upper := 15226, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good139_checked :
    goodSegmentCheck 106 35 74
      { lower := 15227, upper := 15234, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good140_checked :
    goodSegmentCheck 106 35 74
      { lower := 15376, upper := 15478, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good141_checked :
    goodSegmentCheck 106 35 74
      { lower := 15479, upper := 15484, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good142_checked :
    goodSegmentCheck 106 35 74
      { lower := 15979, upper := 16078, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good143_checked :
    goodSegmentCheck 106 35 74
      { lower := 16079, upper := 16092, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good144_checked :
    goodSegmentCheck 106 35 74
      { lower := 16384, upper := 16486, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good145_checked :
    goodSegmentCheck 106 35 74
      { lower := 16487, upper := 16489, witness := RowWitness.topPrime 16487 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good146_checked :
    goodSegmentCheck 106 35 74
      { lower := 16807, upper := 16892, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good147_checked :
    goodSegmentCheck 106 35 74
      { lower := 16893, upper := 16915, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good148_checked :
    goodSegmentCheck 106 35 74
      { lower := 17303, upper := 17403, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good149_checked :
    goodSegmentCheck 106 35 74
      { lower := 17405, upper := 17408, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good150_checked :
    goodSegmentCheck 106 35 74
      { lower := 17496, upper := 17510, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good151_checked :
    goodSegmentCheck 106 35 74
      { lower := 17576, upper := 17601, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good152_checked :
    goodSegmentCheck 106 35 74
      { lower := 17661, upper := 17764, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good153_checked :
    goodSegmentCheck 106 35 74
      { lower := 17765, upper := 17766, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good154_checked :
    goodSegmentCheck 106 35 74
      { lower := 18490, upper := 18586, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good155_checked :
    goodSegmentCheck 106 35 74
      { lower := 18587, upper := 18596, witness := RowWitness.topPrime 18587 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good156_checked :
    goodSegmentCheck 106 35 74
      { lower := 18605, upper := 18607, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good157_checked :
    goodSegmentCheck 106 35 74
      { lower := 18634, upper := 18710, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good158_checked :
    goodSegmentCheck 106 35 74
      { lower := 18723, upper := 18739, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good159_checked :
    goodSegmentCheck 106 35 74
      { lower := 18750, upper := 18854, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good160_checked :
    goodSegmentCheck 106 35 74
      { lower := 18855, upper := 18855, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good161_checked :
    goodSegmentCheck 106 35 74
      { lower := 19208, upper := 19312, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good162_checked :
    goodSegmentCheck 106 35 74
      { lower := 19313, upper := 19313, witness := RowWitness.topPrime 19309 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good163_checked :
    goodSegmentCheck 106 35 74
      { lower := 19683, upper := 19757, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good164_checked :
    goodSegmentCheck 106 35 74
      { lower := 19773, upper := 19788, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good165_checked :
    goodSegmentCheck 106 35 74
      { lower := 19965, upper := 19986, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good166_checked :
    goodSegmentCheck 106 35 74
      { lower := 20172, upper := 20266, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good167_checked :
    goodSegmentCheck 106 35 74
      { lower := 20267, upper := 20277, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good168_checked :
    goodSegmentCheck 106 35 74
      { lower := 20402, upper := 20444, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good169_checked :
    goodSegmentCheck 106 35 74
      { lower := 20480, upper := 20507, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good170_checked :
    goodSegmentCheck 106 35 74
      { lower := 20535, upper := 20638, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good171_checked :
    goodSegmentCheck 106 35 74
      { lower := 20639, upper := 20640, witness := RowWitness.topPrime 20639 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good172_checked :
    goodSegmentCheck 106 35 74
      { lower := 20667, upper := 20682, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good173_checked :
    goodSegmentCheck 106 35 74
      { lower := 21218, upper := 21247, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good174_checked :
    goodSegmentCheck 106 35 74
      { lower := 21296, upper := 21388, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good175_checked :
    goodSegmentCheck 106 35 74
      { lower := 21389, upper := 21401, witness := RowWitness.topPrime 21383 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good176_checked :
    goodSegmentCheck 106 35 74
      { lower := 21870, upper := 21968, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good177_checked :
    goodSegmentCheck 106 35 74
      { lower := 21969, upper := 22009, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good178_checked :
    goodSegmentCheck 106 35 74
      { lower := 22103, upper := 22198, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good179_checked :
    goodSegmentCheck 106 35 74
      { lower := 22199, upper := 22208, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good180_checked :
    goodSegmentCheck 106 35 74
      { lower := 24010, upper := 24112, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good181_checked :
    goodSegmentCheck 106 35 74
      { lower := 24113, upper := 24142, witness := RowWitness.topPrime 24113 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good182_checked :
    goodSegmentCheck 106 35 74
      { lower := 24334, upper := 24434, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good183_checked :
    goodSegmentCheck 106 35 74
      { lower := 24435, upper := 24472, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good184_checked :
    goodSegmentCheck 106 35 74
      { lower := 24576, upper := 24676, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good185_checked :
    goodSegmentCheck 106 35 74
      { lower := 24677, upper := 24681, witness := RowWitness.topPrime 24677 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good186_checked :
    goodSegmentCheck 106 35 74
      { lower := 25000, upper := 25069, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good187_checked :
    goodSegmentCheck 106 35 74
      { lower := 25215, upper := 25294, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good188_checked :
    goodSegmentCheck 106 35 74
      { lower := 25295, upper := 25320, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good189_checked :
    goodSegmentCheck 106 35 74
      { lower := 26047, upper := 26116, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good190_checked :
    goodSegmentCheck 106 35 74
      { lower := 26411, upper := 26469, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good191_checked :
    goodSegmentCheck 106 35 74
      { lower := 26508, upper := 26516, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good192_checked :
    goodSegmentCheck 106 35 74
      { lower := 26934, upper := 27001, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good193_checked :
    goodSegmentCheck 106 35 74
      { lower := 28227, upper := 28230, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good194_checked :
    goodSegmentCheck 106 35 74
      { lower := 28577, upper := 28666, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good195_checked :
    goodSegmentCheck 106 35 74
      { lower := 28672, upper := 28682, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good196_checked :
    goodSegmentCheck 106 35 74
      { lower := 28717, upper := 28777, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good197_checked :
    goodSegmentCheck 106 35 74
      { lower := 28812, upper := 28822, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good198_checked :
    goodSegmentCheck 106 35 74
      { lower := 29791, upper := 29873, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good199_checked :
    goodSegmentCheck 106 35 74
      { lower := 30258, upper := 30351, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good200_checked :
    goodSegmentCheck 106 35 74
      { lower := 30618, upper := 30698, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good201_checked :
    goodSegmentCheck 106 35 74
      { lower := 30699, upper := 30708, witness := RowWitness.topPrime 30697 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good202_checked :
    goodSegmentCheck 106 35 74
      { lower := 31213, upper := 31298, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good203_checked :
    goodSegmentCheck 106 35 74
      { lower := 31299, upper := 31318, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good204_checked :
    goodSegmentCheck 106 35 74
      { lower := 31329, upper := 31355, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good205_checked :
    goodSegmentCheck 106 35 74
      { lower := 31423, upper := 31502, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good206_checked :
    goodSegmentCheck 106 35 74
      { lower := 31503, upper := 31528, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good207_checked :
    goodSegmentCheck 106 35 74
      { lower := 31974, upper := 32044, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good208_checked :
    goodSegmentCheck 106 35 74
      { lower := 32805, upper := 32873, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good209_checked :
    goodSegmentCheck 106 35 74
      { lower := 34375, upper := 34474, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good210_checked :
    goodSegmentCheck 106 35 74
      { lower := 34475, upper := 34496, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good211_checked :
    goodSegmentCheck 106 35 74
      { lower := 35152, upper := 35236, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good212_checked :
    goodSegmentCheck 106 35 74
      { lower := 35344, upper := 35392, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good213_checked :
    goodSegmentCheck 106 35 74
      { lower := 36015, upper := 36017, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good214_checked :
    goodSegmentCheck 106 35 74
      { lower := 37210, upper := 37284, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good215_checked :
    goodSegmentCheck 106 35 74
      { lower := 37303, upper := 37315, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good216_checked :
    goodSegmentCheck 106 35 74
      { lower := 37349, upper := 37408, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good217_checked :
    goodSegmentCheck 106 35 74
      { lower := 37446, upper := 37454, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good218_checked :
    goodSegmentCheck 106 35 74
      { lower := 37500, upper := 37551, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good219_checked :
    goodSegmentCheck 106 35 74
      { lower := 37553, upper := 37605, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good220_checked :
    goodSegmentCheck 106 35 74
      { lower := 37636, upper := 37658, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good221_checked :
    goodSegmentCheck 106 35 74
      { lower := 39366, upper := 39409, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good222_checked :
    goodSegmentCheck 106 35 74
      { lower := 39605, upper := 39651, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good223_checked :
    goodSegmentCheck 106 35 74
      { lower := 40401, upper := 40433, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good224_checked :
    goodSegmentCheck 106 35 74
      { lower := 40817, upper := 40909, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good225_checked :
    goodSegmentCheck 106 35 74
      { lower := 40960, upper := 41036, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good226_checked :
    goodSegmentCheck 106 35 74
      { lower := 41772, upper := 41848, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good227_checked :
    goodSegmentCheck 106 35 74
      { lower := 43750, upper := 43792, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good228_checked :
    goodSegmentCheck 106 35 74
      { lower := 48013, upper := 48066, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good229_checked :
    goodSegmentCheck 106 35 74
      { lower := 48734, upper := 48773, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good230_checked :
    goodSegmentCheck 106 35 74
      { lower := 48778, upper := 48839, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good231_checked :
    goodSegmentCheck 106 35 74
      { lower := 49152, upper := 49235, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good232_checked :
    goodSegmentCheck 106 35 74
      { lower := 50421, upper := 50515, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good233_checked :
    goodSegmentCheck 106 35 74
      { lower := 55451, upper := 55546, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good234_checked :
    goodSegmentCheck 106 35 74
      { lower := 55547, upper := 55552, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good235_checked :
    goodSegmentCheck 106 35 74
      { lower := 58619, upper := 58669, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good236_checked :
    goodSegmentCheck 106 35 74
      { lower := 59049, upper := 59061, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good237_checked :
    goodSegmentCheck 106 35 74
      { lower := 62500, upper := 62515, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good238_checked :
    goodSegmentCheck 106 35 74
      { lower := 63948, upper := 63974, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good239_checked :
    goodSegmentCheck 106 35 74
      { lower := 65536, upper := 65626, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good240_checked :
    goodSegmentCheck 106 35 74
      { lower := 65627, upper := 65641, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good241_checked :
    goodSegmentCheck 106 35 74
      { lower := 68651, upper := 68695, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good242_checked :
    goodSegmentCheck 106 35 74
      { lower := 68921, upper := 68995, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good243_checked :
    goodSegmentCheck 106 35 74
      { lower := 73205, upper := 73272, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good244_checked :
    goodSegmentCheck 106 35 74
      { lower := 137842, upper := 137886, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good245_checked :
    goodSegmentCheck 106 35 74
      { lower := 146410, upper := 146439, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good245_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_goods_checked :
    row106.goods.all (goodSegmentCheck row106.height.i row106.height.r row106.height.s) = true := by
  change row106_goods.all (goodSegmentCheck 106 35 74) = true
  simp only [row106_goods, List.all_cons, List.all_nil,
    row106_good000_checked,
    row106_good001_checked,
    row106_good002_checked,
    row106_good003_checked,
    row106_good004_checked,
    row106_good005_checked,
    row106_good006_checked,
    row106_good007_checked,
    row106_good008_checked,
    row106_good009_checked,
    row106_good010_checked,
    row106_good011_checked,
    row106_good012_checked,
    row106_good013_checked,
    row106_good014_checked,
    row106_good015_checked,
    row106_good016_checked,
    row106_good017_checked,
    row106_good018_checked,
    row106_good019_checked,
    row106_good020_checked,
    row106_good021_checked,
    row106_good022_checked,
    row106_good023_checked,
    row106_good024_checked,
    row106_good025_checked,
    row106_good026_checked,
    row106_good027_checked,
    row106_good028_checked,
    row106_good029_checked,
    row106_good030_checked,
    row106_good031_checked,
    row106_good032_checked,
    row106_good033_checked,
    row106_good034_checked,
    row106_good035_checked,
    row106_good036_checked,
    row106_good037_checked,
    row106_good038_checked,
    row106_good039_checked,
    row106_good040_checked,
    row106_good041_checked,
    row106_good042_checked,
    row106_good043_checked,
    row106_good044_checked,
    row106_good045_checked,
    row106_good046_checked,
    row106_good047_checked,
    row106_good048_checked,
    row106_good049_checked,
    row106_good050_checked,
    row106_good051_checked,
    row106_good052_checked,
    row106_good053_checked,
    row106_good054_checked,
    row106_good055_checked,
    row106_good056_checked,
    row106_good057_checked,
    row106_good058_checked,
    row106_good059_checked,
    row106_good060_checked,
    row106_good061_checked,
    row106_good062_checked,
    row106_good063_checked,
    row106_good064_checked,
    row106_good065_checked,
    row106_good066_checked,
    row106_good067_checked,
    row106_good068_checked,
    row106_good069_checked,
    row106_good070_checked,
    row106_good071_checked,
    row106_good072_checked,
    row106_good073_checked,
    row106_good074_checked,
    row106_good075_checked,
    row106_good076_checked,
    row106_good077_checked,
    row106_good078_checked,
    row106_good079_checked,
    row106_good080_checked,
    row106_good081_checked,
    row106_good082_checked,
    row106_good083_checked,
    row106_good084_checked,
    row106_good085_checked,
    row106_good086_checked,
    row106_good087_checked,
    row106_good088_checked,
    row106_good089_checked,
    row106_good090_checked,
    row106_good091_checked,
    row106_good092_checked,
    row106_good093_checked,
    row106_good094_checked,
    row106_good095_checked,
    row106_good096_checked,
    row106_good097_checked,
    row106_good098_checked,
    row106_good099_checked,
    row106_good100_checked,
    row106_good101_checked,
    row106_good102_checked,
    row106_good103_checked,
    row106_good104_checked,
    row106_good105_checked,
    row106_good106_checked,
    row106_good107_checked,
    row106_good108_checked,
    row106_good109_checked,
    row106_good110_checked,
    row106_good111_checked,
    row106_good112_checked,
    row106_good113_checked,
    row106_good114_checked,
    row106_good115_checked,
    row106_good116_checked,
    row106_good117_checked,
    row106_good118_checked,
    row106_good119_checked,
    row106_good120_checked,
    row106_good121_checked,
    row106_good122_checked,
    row106_good123_checked,
    row106_good124_checked,
    row106_good125_checked,
    row106_good126_checked,
    row106_good127_checked,
    row106_good128_checked,
    row106_good129_checked,
    row106_good130_checked,
    row106_good131_checked,
    row106_good132_checked,
    row106_good133_checked,
    row106_good134_checked,
    row106_good135_checked,
    row106_good136_checked,
    row106_good137_checked,
    row106_good138_checked,
    row106_good139_checked,
    row106_good140_checked,
    row106_good141_checked,
    row106_good142_checked,
    row106_good143_checked,
    row106_good144_checked,
    row106_good145_checked,
    row106_good146_checked,
    row106_good147_checked,
    row106_good148_checked,
    row106_good149_checked,
    row106_good150_checked,
    row106_good151_checked,
    row106_good152_checked,
    row106_good153_checked,
    row106_good154_checked,
    row106_good155_checked,
    row106_good156_checked,
    row106_good157_checked,
    row106_good158_checked,
    row106_good159_checked,
    row106_good160_checked,
    row106_good161_checked,
    row106_good162_checked,
    row106_good163_checked,
    row106_good164_checked,
    row106_good165_checked,
    row106_good166_checked,
    row106_good167_checked,
    row106_good168_checked,
    row106_good169_checked,
    row106_good170_checked,
    row106_good171_checked,
    row106_good172_checked,
    row106_good173_checked,
    row106_good174_checked,
    row106_good175_checked,
    row106_good176_checked,
    row106_good177_checked,
    row106_good178_checked,
    row106_good179_checked,
    row106_good180_checked,
    row106_good181_checked,
    row106_good182_checked,
    row106_good183_checked,
    row106_good184_checked,
    row106_good185_checked,
    row106_good186_checked,
    row106_good187_checked,
    row106_good188_checked,
    row106_good189_checked,
    row106_good190_checked,
    row106_good191_checked,
    row106_good192_checked,
    row106_good193_checked,
    row106_good194_checked,
    row106_good195_checked,
    row106_good196_checked,
    row106_good197_checked,
    row106_good198_checked,
    row106_good199_checked,
    row106_good200_checked,
    row106_good201_checked,
    row106_good202_checked,
    row106_good203_checked,
    row106_good204_checked,
    row106_good205_checked,
    row106_good206_checked,
    row106_good207_checked,
    row106_good208_checked,
    row106_good209_checked,
    row106_good210_checked,
    row106_good211_checked,
    row106_good212_checked,
    row106_good213_checked,
    row106_good214_checked,
    row106_good215_checked,
    row106_good216_checked,
    row106_good217_checked,
    row106_good218_checked,
    row106_good219_checked,
    row106_good220_checked,
    row106_good221_checked,
    row106_good222_checked,
    row106_good223_checked,
    row106_good224_checked,
    row106_good225_checked,
    row106_good226_checked,
    row106_good227_checked,
    row106_good228_checked,
    row106_good229_checked,
    row106_good230_checked,
    row106_good231_checked,
    row106_good232_checked,
    row106_good233_checked,
    row106_good234_checked,
    row106_good235_checked,
    row106_good236_checked,
    row106_good237_checked,
    row106_good238_checked,
    row106_good239_checked,
    row106_good240_checked,
    row106_good241_checked,
    row106_good242_checked,
    row106_good243_checked,
    row106_good244_checked,
    row106_good245_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_registered :
    decide (row106.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row106_small_checked :
    coverCheck (2 * row106.height.i + 2) (row106.height.i * (row106.height.i - 1) - 1)
      (row106.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row106_layerCover_checked :
    coverCheck (row106.height.i * (row106.height.i - 1)) (row106.height.n0 - 1)
      (row106.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row106_bounds : List NatInterval :=
  [(214, 316), (317, 422), (423, 526), (527, 628), (629, 724), (725, 824), (825, 928), (929, 1034), (1035, 1138), (1139, 1234), (1235, 1336), (1337, 1432), (1433, 1538), (1539, 1636), (1637, 1742), (1743, 1846), (1847, 1952), (1953, 2056), (2057, 2158), (2159, 2258), (2259, 2356), (2357, 2462), (2463, 2564), (2565, 2662), (2663, 2768), (2769, 2872), (2873, 2966), (2967, 3068), (3069, 3172), (3173, 3274), (3275, 3376), (3377, 3478), (3479, 3574), (3575, 3676), (3677, 3782), (3783, 3884), (3885, 3986), (3987, 4072), (4073, 4178), (4179, 4282), (4283, 4388), (4389, 4478), (4479, 4568), (4569, 4672), (4673, 4778), (4779, 4864), (4865, 4966), (4967, 5072), (5073, 5164), (5165, 5258), (5259, 5342), (5343, 5438), (5439, 5542), (5543, 5636), (5637, 5728), (5729, 5822), (5823, 5926), (5927, 6032), (6033, 6134), (6135, 6238), (6239, 6334), (6335, 6434), (6435, 6532), (6533, 6634), (6635, 6724), (6725, 6824), (6825, 6928), (6929, 7022), (7023, 7124), (7125, 7226), (7227, 7324), (7325, 7426), (7427, 7522), (7523, 7628), (7629, 7726), (7727, 7832), (7833, 7934), (7935, 8038), (8039, 8144), (8145, 8228), (8229, 8326), (8327, 8422), (8423, 8528), (8529, 8632), (8633, 8734), (8735, 8836), (8837, 8942), (8943, 9046), (9047, 9148), (9149, 9242), (9243, 9346), (9347, 9448), (9449, 9544), (9545, 9644), (9645, 9748), (9749, 9854), (9855, 9956), (9957, 10054), (10055, 10144), (10145, 10246), (10247, 10352), (10353, 10448), (10449, 10538), (10539, 10636), (10637, 10736), (10737, 10838), (10839, 10942), (10943, 11044), (11045, 11132), (11133, 11214), (11250, 11348), (11349, 11355), (11664, 11743), (11767, 11769), (11774, 11848), (11849, 11872), (11875, 11879), (11979, 11980), (12005, 12084), (12321, 12406), (12407, 12426), (12482, 12584), (12585, 12598), (13125, 13226), (13227, 13230), (13254, 13287), (13310, 13359), (13454, 13556), (13557, 13561), (13718, 13816), (13817, 13883), (13924, 13956), (14336, 14432), (14433, 14511), (14641, 14685), (14739, 14746), (14792, 14844), (14884, 14897), (15123, 15226), (15227, 15234), (15376, 15478), (15479, 15484), (15979, 16078), (16079, 16092), (16384, 16486), (16487, 16489), (16807, 16892), (16893, 16915), (17303, 17403), (17405, 17408), (17496, 17510), (17576, 17601), (17661, 17764), (17765, 17766), (18490, 18586), (18587, 18596), (18605, 18607), (18634, 18710), (18723, 18739), (18750, 18854), (18855, 18855), (19208, 19312), (19313, 19313), (19683, 19757), (19773, 19788), (19965, 19986), (20172, 20266), (20267, 20277), (20402, 20444), (20480, 20507), (20535, 20638), (20639, 20640), (20667, 20682), (21218, 21247), (21296, 21388), (21389, 21401), (21870, 21968), (21969, 22009), (22103, 22198), (22199, 22208), (24010, 24112), (24113, 24142), (24334, 24434), (24435, 24472), (24576, 24676), (24677, 24681), (25000, 25069), (25215, 25294), (25295, 25320), (26047, 26116), (26411, 26469), (26508, 26516), (26934, 27001), (28227, 28230), (28577, 28666), (28672, 28682), (28717, 28777), (28812, 28822), (29791, 29873), (30258, 30351), (30618, 30698), (30699, 30708), (31213, 31298), (31299, 31318), (31329, 31355), (31423, 31502), (31503, 31528), (31974, 32044), (32805, 32873), (34375, 34474), (34475, 34496), (35152, 35236), (35344, 35392), (36015, 36017), (37210, 37284), (37303, 37315), (37349, 37408), (37446, 37454), (37500, 37551), (37553, 37605), (37636, 37658), (39366, 39409), (39605, 39651), (40401, 40433), (40817, 40909), (40960, 41036), (41772, 41848), (43750, 43792), (48013, 48066), (48734, 48773), (48778, 48839), (49152, 49235), (50421, 50515), (55451, 55546), (55547, 55552), (58619, 58669), (59049, 59061), (62500, 62515), (63948, 63974), (65536, 65626), (65627, 65641), (68651, 68695), (68921, 68995), (73205, 73272), (137842, 137886), (146410, 146439)]

theorem row106_bounds_eq : row106.goods.map goodSegmentBounds = row106_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row106_layer000_intervals : List ColouredInterval :=
  [(2, 11264, 11369), (2, 12288, 12393), (2, 14336, 14441), (2, 16384, 16489), (2, 18432, 18537), (2, 20480, 20585), (2, 12288, 12393), (2, 16384, 16489), (2, 20480, 20585), (2, 16384, 16489), (2, 16384, 16489), (3, 11664, 11769), (3, 12393, 12498), (3, 13122, 13227), (3, 13851, 13956), (3, 14580, 14685), (3, 15309, 15414), (3, 16038, 16143), (3, 16767, 16872), (3, 13122, 13227), (3, 15309, 15414), (3, 17496, 17601), (3, 19683, 19788), (3, 21870, 21975), (3, 13122, 13227), (3, 19683, 19788), (3, 19683, 19788), (5, 11250, 11355), (5, 11875, 11980), (5, 12500, 12605), (5, 13125, 13230), (5, 13750, 13855), (5, 14375, 14480), (5, 12500, 12605), (5, 15625, 15730), (5, 18750, 18855), (5, 21875, 21980), (5, 15625, 15730), (7, 12005, 12110), (7, 14406, 14511), (7, 16807, 16912), (7, 19208, 19313), (7, 21609, 21714), (7, 16807, 16912), (11, 11979, 12084), (11, 13310, 13415), (11, 14641, 14746), (11, 15972, 16077), (11, 17303, 17408), (11, 18634, 18739), (11, 19965, 20070), (11, 21296, 21401), (11, 14641, 14746), (13, 13182, 13287), (13, 15379, 15484), (13, 17576, 17681), (13, 19773, 19878), (13, 21970, 22075), (17, 14739, 14844), (17, 19652, 19757), (19, 13718, 13823), (19, 20577, 20682), (23, 11130, 11214), (23, 11638, 11743), (23, 12167, 12272), (23, 12167, 12272), (29, 11774, 11879), (29, 12615, 12720), (29, 13456, 13561), (29, 14297, 14402), (29, 15138, 15243), (29, 15979, 16084), (29, 16820, 16925), (29, 17661, 17766), (29, 18502, 18607), (29, 19343, 19448), (31, 11532, 11637), (31, 12493, 12598), (31, 13454, 13559), (31, 14415, 14520), (31, 15376, 15481), (31, 16337, 16442), (31, 17298, 17403), (31, 18259, 18364), (31, 19220, 19325), (31, 20181, 20286), (31, 21142, 21247), (31, 22103, 22208), (37, 12321, 12426), (37, 13690, 13795), (37, 15059, 15164), (37, 16428, 16533), (37, 17797, 17902), (37, 19166, 19271), (37, 20535, 20640), (37, 21904, 22009), (41, 11767, 11872), (41, 13448, 13553), (41, 15129, 15234), (41, 16810, 16915), (41, 18491, 18596), (41, 20172, 20277), (41, 21853, 21958), (43, 11130, 11199), (43, 12943, 13048), (43, 14792, 14897), (43, 16641, 16746), (43, 18490, 18595), (43, 20339, 20444), (43, 22188, 22259), (47, 11130, 11150), (47, 13254, 13359), (47, 15463, 15568), (47, 17672, 17777), (47, 19881, 19986), (47, 22090, 22195), (59, 13924, 14029), (59, 17405, 17510), (59, 20886, 20991), (61, 11163, 11268), (61, 14884, 14989), (61, 18605, 18710), (67, 13467, 13572), (67, 17956, 18061), (71, 15123, 15228), (71, 20164, 20269), (73, 15987, 16092), (73, 21316, 21421), (79, 12482, 12587), (79, 18723, 18828), (83, 13778, 13883), (83, 20667, 20772), (89, 15842, 15947), (97, 18818, 18923), (101, 20402, 20507), (103, 21218, 21323)]

def row106_layer000_block000 : List ColouredInterval :=
  [(2, 11264, 11369), (2, 12288, 12393), (2, 14336, 14441), (2, 16384, 16489), (2, 18432, 18537), (2, 20480, 20585), (2, 12288, 12393), (2, 16384, 16489), (2, 20480, 20585), (2, 16384, 16489), (2, 16384, 16489), (3, 11664, 11769), (3, 12393, 12498), (3, 13122, 13227), (3, 13851, 13956)]

def row106_layer000_block001 : List ColouredInterval :=
  [(3, 14580, 14685), (3, 15309, 15414), (3, 16038, 16143), (3, 16767, 16872), (3, 13122, 13227), (3, 15309, 15414), (3, 17496, 17601), (3, 19683, 19788), (3, 21870, 21975), (3, 13122, 13227), (3, 19683, 19788), (3, 19683, 19788), (5, 11250, 11355), (5, 11875, 11980), (5, 12500, 12605)]

def row106_layer000_block002 : List ColouredInterval :=
  [(5, 13125, 13230), (5, 13750, 13855), (5, 14375, 14480), (5, 12500, 12605), (5, 15625, 15730), (5, 18750, 18855), (5, 21875, 21980), (5, 15625, 15730), (7, 12005, 12110), (7, 14406, 14511), (7, 16807, 16912), (7, 19208, 19313), (7, 21609, 21714), (7, 16807, 16912), (11, 11979, 12084)]

def row106_layer000_block003 : List ColouredInterval :=
  [(11, 13310, 13415), (11, 14641, 14746), (11, 15972, 16077), (11, 17303, 17408), (11, 18634, 18739), (11, 19965, 20070), (11, 21296, 21401), (11, 14641, 14746), (13, 13182, 13287), (13, 15379, 15484), (13, 17576, 17681), (13, 19773, 19878), (13, 21970, 22075), (17, 14739, 14844), (17, 19652, 19757)]

def row106_layer000_block004 : List ColouredInterval :=
  [(19, 13718, 13823), (19, 20577, 20682), (23, 11130, 11214), (23, 11638, 11743), (23, 12167, 12272), (23, 12167, 12272), (29, 11774, 11879), (29, 12615, 12720), (29, 13456, 13561), (29, 14297, 14402), (29, 15138, 15243), (29, 15979, 16084), (29, 16820, 16925), (29, 17661, 17766), (29, 18502, 18607)]

def row106_layer000_block005 : List ColouredInterval :=
  [(29, 19343, 19448), (31, 11532, 11637), (31, 12493, 12598), (31, 13454, 13559), (31, 14415, 14520), (31, 15376, 15481), (31, 16337, 16442), (31, 17298, 17403), (31, 18259, 18364), (31, 19220, 19325), (31, 20181, 20286), (31, 21142, 21247), (31, 22103, 22208), (37, 12321, 12426), (37, 13690, 13795)]

def row106_layer000_block006 : List ColouredInterval :=
  [(37, 15059, 15164), (37, 16428, 16533), (37, 17797, 17902), (37, 19166, 19271), (37, 20535, 20640), (37, 21904, 22009), (41, 11767, 11872), (41, 13448, 13553), (41, 15129, 15234), (41, 16810, 16915), (41, 18491, 18596), (41, 20172, 20277), (41, 21853, 21958), (43, 11130, 11199), (43, 12943, 13048)]

def row106_layer000_block007 : List ColouredInterval :=
  [(43, 14792, 14897), (43, 16641, 16746), (43, 18490, 18595), (43, 20339, 20444), (43, 22188, 22259), (47, 11130, 11150), (47, 13254, 13359), (47, 15463, 15568), (47, 17672, 17777), (47, 19881, 19986), (47, 22090, 22195), (59, 13924, 14029), (59, 17405, 17510), (59, 20886, 20991), (61, 11163, 11268)]

def row106_layer000_block008 : List ColouredInterval :=
  [(61, 14884, 14989), (61, 18605, 18710), (67, 13467, 13572), (67, 17956, 18061), (71, 15123, 15228), (71, 20164, 20269), (73, 15987, 16092), (73, 21316, 21421), (79, 12482, 12587), (79, 18723, 18828), (83, 13778, 13883), (83, 20667, 20772), (89, 15842, 15947), (97, 18818, 18923), (101, 20402, 20507)]

def row106_layer000_block009 : List ColouredInterval :=
  [(103, 21218, 21323)]

def row106_layer000_chunks : List (List ColouredInterval) :=
  [row106_layer000_block000, row106_layer000_block001, row106_layer000_block002, row106_layer000_block003, row106_layer000_block004, row106_layer000_block005, row106_layer000_block006, row106_layer000_block007, row106_layer000_block008, row106_layer000_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_arithmetic : LayerArithmeticValid row106.height { lower := 11130, upper := 22260, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_enumeration :
    activePowerIntervalList 106 23 11130 22260 = row106_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs000 :
    row106_layer000_block000.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs001 :
    row106_layer000_block001.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs002 :
    row106_layer000_block002.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs003 :
    row106_layer000_block003.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs004 :
    row106_layer000_block004.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs005 :
    row106_layer000_block005.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs006 :
    row106_layer000_block006.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs007 :
    row106_layer000_block007.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs008 :
    row106_layer000_block008.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs008
