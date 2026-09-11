import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_height : HeightCertificateDatum := { i := 75, r := 24, s := 51, n0Power10 := 13 }

def row075_goods : List GoodSegment := [
  { lower := 152, upper := 225, witness := RowWitness.topPrime 151 },
  { lower := 226, upper := 297, witness := RowWitness.topPrime 223 },
  { lower := 298, upper := 367, witness := RowWitness.topPrime 293 },
  { lower := 368, upper := 441, witness := RowWitness.topPrime 367 },
  { lower := 442, upper := 513, witness := RowWitness.topPrime 439 },
  { lower := 514, upper := 583, witness := RowWitness.topPrime 509 },
  { lower := 584, upper := 651, witness := RowWitness.topPrime 577 },
  { lower := 652, upper := 721, witness := RowWitness.topPrime 647 },
  { lower := 722, upper := 793, witness := RowWitness.topPrime 719 },
  { lower := 794, upper := 861, witness := RowWitness.topPrime 787 },
  { lower := 862, upper := 933, witness := RowWitness.topPrime 859 },
  { lower := 934, upper := 1003, witness := RowWitness.topPrime 929 },
  { lower := 1004, upper := 1071, witness := RowWitness.topPrime 997 },
  { lower := 1072, upper := 1143, witness := RowWitness.topPrime 1069 },
  { lower := 1144, upper := 1203, witness := RowWitness.topPrime 1129 },
  { lower := 1204, upper := 1275, witness := RowWitness.topPrime 1201 },
  { lower := 1276, upper := 1333, witness := RowWitness.topPrime 1259 },
  { lower := 1334, upper := 1401, witness := RowWitness.topPrime 1327 },
  { lower := 1402, upper := 1473, witness := RowWitness.topPrime 1399 },
  { lower := 1474, upper := 1545, witness := RowWitness.topPrime 1471 },
  { lower := 1546, upper := 1617, witness := RowWitness.topPrime 1543 },
  { lower := 1618, upper := 1687, witness := RowWitness.topPrime 1613 },
  { lower := 1688, upper := 1743, witness := RowWitness.topPrime 1669 },
  { lower := 1744, upper := 1815, witness := RowWitness.topPrime 1741 },
  { lower := 1816, upper := 1885, witness := RowWitness.topPrime 1811 },
  { lower := 1886, upper := 1953, witness := RowWitness.topPrime 1879 },
  { lower := 1954, upper := 2025, witness := RowWitness.topPrime 1951 },
  { lower := 2026, upper := 2091, witness := RowWitness.topPrime 2017 },
  { lower := 2092, upper := 2163, witness := RowWitness.topPrime 2089 },
  { lower := 2164, upper := 2235, witness := RowWitness.topPrime 2161 },
  { lower := 2236, upper := 2295, witness := RowWitness.topPrime 2221 },
  { lower := 2296, upper := 2367, witness := RowWitness.topPrime 2293 },
  { lower := 2368, upper := 2431, witness := RowWitness.topPrime 2357 },
  { lower := 2432, upper := 2497, witness := RowWitness.topPrime 2423 },
  { lower := 2498, upper := 2551, witness := RowWitness.topPrime 2477 },
  { lower := 2552, upper := 2625, witness := RowWitness.topPrime 2551 },
  { lower := 2626, upper := 2695, witness := RowWitness.topPrime 2621 },
  { lower := 2696, upper := 2767, witness := RowWitness.topPrime 2693 },
  { lower := 2768, upper := 2841, witness := RowWitness.topPrime 2767 },
  { lower := 2842, upper := 2911, witness := RowWitness.topPrime 2837 },
  { lower := 2912, upper := 2983, witness := RowWitness.topPrime 2909 },
  { lower := 2984, upper := 3045, witness := RowWitness.topPrime 2971 },
  { lower := 3046, upper := 3115, witness := RowWitness.topPrime 3041 },
  { lower := 3116, upper := 3183, witness := RowWitness.topPrime 3109 },
  { lower := 3184, upper := 3255, witness := RowWitness.topPrime 3181 },
  { lower := 3256, upper := 3327, witness := RowWitness.topPrime 3253 },
  { lower := 3328, upper := 3397, witness := RowWitness.topPrime 3323 },
  { lower := 3398, upper := 3465, witness := RowWitness.topPrime 3391 },
  { lower := 3466, upper := 3537, witness := RowWitness.topPrime 3463 },
  { lower := 3538, upper := 3607, witness := RowWitness.topPrime 3533 },
  { lower := 3608, upper := 3681, witness := RowWitness.topPrime 3607 },
  { lower := 3682, upper := 3751, witness := RowWitness.topPrime 3677 },
  { lower := 3752, upper := 3813, witness := RowWitness.topPrime 3739 },
  { lower := 3814, upper := 3877, witness := RowWitness.topPrime 3803 },
  { lower := 3878, upper := 3951, witness := RowWitness.topPrime 3877 },
  { lower := 3952, upper := 4021, witness := RowWitness.topPrime 3947 },
  { lower := 4022, upper := 4095, witness := RowWitness.topPrime 4021 },
  { lower := 4096, upper := 4167, witness := RowWitness.topPrime 4093 },
  { lower := 4168, upper := 4233, witness := RowWitness.topPrime 4159 },
  { lower := 4234, upper := 4305, witness := RowWitness.topPrime 4231 },
  { lower := 4306, upper := 4371, witness := RowWitness.topPrime 4297 },
  { lower := 4372, upper := 4437, witness := RowWitness.topPrime 4363 },
  { lower := 4438, upper := 4497, witness := RowWitness.topPrime 4423 },
  { lower := 4498, upper := 4567, witness := RowWitness.topPrime 4493 },
  { lower := 4568, upper := 4641, witness := RowWitness.topPrime 4567 },
  { lower := 4642, upper := 4713, witness := RowWitness.topPrime 4639 },
  { lower := 4714, upper := 4777, witness := RowWitness.topPrime 4703 },
  { lower := 4778, upper := 4833, witness := RowWitness.topPrime 4759 },
  { lower := 4834, upper := 4905, witness := RowWitness.topPrime 4831 },
  { lower := 4906, upper := 4977, witness := RowWitness.topPrime 4903 },
  { lower := 4978, upper := 5047, witness := RowWitness.topPrime 4973 },
  { lower := 5048, upper := 5113, witness := RowWitness.topPrime 5039 },
  { lower := 5114, upper := 5187, witness := RowWitness.topPrime 5113 },
  { lower := 5188, upper := 5253, witness := RowWitness.topPrime 5179 },
  { lower := 5254, upper := 5311, witness := RowWitness.topPrime 5237 },
  { lower := 5312, upper := 5383, witness := RowWitness.topPrime 5309 },
  { lower := 5384, upper := 5455, witness := RowWitness.topPrime 5381 },
  { lower := 5456, upper := 5523, witness := RowWitness.topPrime 5449 },
  { lower := 5524, upper := 5565, witness := RowWitness.topPrime 5521 },
  { lower := 5577, upper := 5647, witness := RowWitness.topPrime 5573 },
  { lower := 5648, upper := 5692, witness := RowWitness.topPrime 5647 },
  { lower := 5766, upper := 5823, witness := RowWitness.topPrime 5749 },
  { lower := 5824, upper := 5895, witness := RowWitness.topPrime 5821 },
  { lower := 5896, upper := 5955, witness := RowWitness.topPrime 5881 },
  { lower := 5956, upper := 5961, witness := RowWitness.topPrime 5953 },
  { lower := 6137, upper := 6207, witness := RowWitness.topPrime 6133 },
  { lower := 6208, upper := 6218, witness := RowWitness.topPrime 6203 },
  { lower := 6358, upper := 6427, witness := RowWitness.topPrime 6353 },
  { lower := 6428, upper := 6432, witness := RowWitness.topPrime 6427 },
  { lower := 6517, upper := 6565, witness := RowWitness.topPrime 6491 },
  { lower := 6566, upper := 6637, witness := RowWitness.topPrime 6563 },
  { lower := 6638, upper := 6711, witness := RowWitness.topPrime 6637 },
  { lower := 6712, upper := 6783, witness := RowWitness.topPrime 6709 },
  { lower := 6784, upper := 6801, witness := RowWitness.topPrime 6781 },
  { lower := 6859, upper := 6931, witness := RowWitness.topPrime 6857 },
  { lower := 6932, upper := 6991, witness := RowWitness.topPrime 6917 },
  { lower := 6992, upper := 7010, witness := RowWitness.topPrime 6991 },
  { lower := 7203, upper := 7267, witness := RowWitness.topPrime 7193 },
  { lower := 7268, upper := 7299, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7467, witness := RowWitness.topPrime 7393 },
  { lower := 7468, upper := 7498, witness := RowWitness.topPrime 7459 },
  { lower := 7514, upper := 7516, witness := RowWitness.topPrime 7507 },
  { lower := 7546, upper := 7615, witness := RowWitness.topPrime 7541 },
  { lower := 7616, upper := 7643, witness := RowWitness.topPrime 7607 },
  { lower := 7688, upper := 7754, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 8007, witness := RowWitness.topPrime 7933 },
  { lower := 8008, upper := 8016, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8060, witness := RowWitness.topPrime 8017 },
  { lower := 8092, upper := 8093, witness := RowWitness.topPrime 8089 },
  { lower := 8214, upper := 8283, witness := RowWitness.topPrime 8209 },
  { lower := 8284, upper := 8288, witness := RowWitness.topPrime 8273 },
  { lower := 8303, upper := 8306, witness := RowWitness.topPrime 8297 },
  { lower := 8405, upper := 8463, witness := RowWitness.topPrime 8389 },
  { lower := 8464, upper := 8522, witness := RowWitness.topPrime 8461 },
  { lower := 8649, upper := 8649, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8737, witness := RowWitness.topPrime 8663 },
  { lower := 8738, upper := 8744, witness := RowWitness.topPrime 8737 },
  { lower := 8748, upper := 8778, witness := RowWitness.topPrime 8747 },
  { lower := 8788, upper := 8822, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8862, witness := RowWitness.topPrime 8831 },
  { lower := 8959, upper := 9025, witness := RowWitness.topPrime 8951 },
  { lower := 9026, upper := 9067, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9315, witness := RowWitness.topPrime 9241 },
  { lower := 9316, upper := 9335, witness := RowWitness.topPrime 9311 },
  { lower := 9386, upper := 9391, witness := RowWitness.topPrime 9377 },
  { lower := 9537, upper := 9607, witness := RowWitness.topPrime 9533 },
  { lower := 9608, upper := 9675, witness := RowWitness.topPrime 9601 },
  { lower := 9676, upper := 9678, witness := RowWitness.topPrime 9661 },
  { lower := 9747, upper := 9802, witness := RowWitness.topPrime 9743 },
  { lower := 10082, upper := 10153, witness := RowWitness.topPrime 10079 },
  { lower := 10154, upper := 10166, witness := RowWitness.topPrime 10151 },
  { lower := 10290, upper := 10314, witness := RowWitness.topPrime 10289 },
  { lower := 10469, upper := 10517, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10641, witness := RowWitness.topPrime 10567 },
  { lower := 10642, upper := 10713, witness := RowWitness.topPrime 10639 },
  { lower := 10714, upper := 10722, witness := RowWitness.topPrime 10711 },
  { lower := 10935, upper := 10983, witness := RowWitness.topPrime 10909 },
  { lower := 10984, upper := 11053, witness := RowWitness.topPrime 10979 },
  { lower := 11054, upper := 11059, witness := RowWitness.topPrime 11047 },
  { lower := 11094, upper := 11167, witness := RowWitness.topPrime 11093 },
  { lower := 11168, upper := 11183, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11237, witness := RowWitness.topPrime 11213 },
  { lower := 11264, upper := 11310, witness := RowWitness.topPrime 11261 },
  { lower := 11774, upper := 11817, witness := RowWitness.topPrime 11743 },
  { lower := 11818, upper := 11848, witness := RowWitness.topPrime 11813 },
  { lower := 12005, upper := 12053, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12362, witness := RowWitness.topPrime 12301 },
  { lower := 13182, upper := 13196, witness := RowWitness.topPrime 13177 },
  { lower := 13225, upper := 13293, witness := RowWitness.topPrime 13219 },
  { lower := 13294, upper := 13299, witness := RowWitness.topPrime 13291 },
  { lower := 13310, upper := 13383, witness := RowWitness.topPrime 13309 },
  { lower := 13384, upper := 13384, witness := RowWitness.topPrime 13381 },
  { lower := 13454, upper := 13525, witness := RowWitness.topPrime 13451 },
  { lower := 13526, upper := 13530, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13785, witness := RowWitness.topPrime 13711 },
  { lower := 13786, upper := 13792, witness := RowWitness.topPrime 13781 },
  { lower := 13824, upper := 13828, witness := RowWitness.topPrime 13807 },
  { lower := 14297, upper := 14367, witness := RowWitness.topPrime 14293 },
  { lower := 14368, upper := 14371, witness := RowWitness.topPrime 14347 },
  { lower := 14406, upper := 14410, witness := RowWitness.topPrime 14401 },
  { lower := 14415, upper := 14480, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14857, witness := RowWitness.topPrime 14783 },
  { lower := 14858, upper := 14922, witness := RowWitness.topPrime 14851 },
  { lower := 15123, upper := 15195, witness := RowWitness.topPrime 15121 },
  { lower := 15196, upper := 15203, witness := RowWitness.topPrime 15193 },
  { lower := 15341, upper := 15405, witness := RowWitness.topPrime 15331 },
  { lower := 15406, upper := 15450, witness := RowWitness.topPrime 15401 },
  { lower := 15979, upper := 16047, witness := RowWitness.topPrime 15973 },
  { lower := 16048, upper := 16053, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16411, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16458, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16861, witness := RowWitness.topPrime 16787 },
  { lower := 16862, upper := 16894, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17372, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17475, witness := RowWitness.topPrime 17401 },
  { lower := 17476, upper := 17479, witness := RowWitness.topPrime 17471 },
  { lower := 17672, upper := 17735, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18555, witness := RowWitness.topPrime 18481 },
  { lower := 18556, upper := 18565, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18679, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19281, witness := RowWitness.topPrime 19207 },
  { lower := 19282, upper := 19282, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19735, witness := RowWitness.topPrime 19661 },
  { lower := 19736, upper := 19737, witness := RowWitness.topPrime 19727 },
  { lower := 20172, upper := 20235, witness := RowWitness.topPrime 20161 },
  { lower := 20236, upper := 20255, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20554, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20609, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21370, witness := RowWitness.topPrime 21313 },
  { lower := 21866, upper := 21937, witness := RowWitness.topPrime 21863 },
  { lower := 21938, upper := 21944, witness := RowWitness.topPrime 21937 },
  { lower := 21970, upper := 21978, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22164, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22519, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22546, witness := RowWitness.topPrime 22511 },
  { lower := 23552, upper := 23608, witness := RowWitness.topPrime 23549 },
  { lower := 24010, upper := 24081, witness := RowWitness.topPrime 24007 },
  { lower := 24082, upper := 24099, witness := RowWitness.topPrime 24077 },
  { lower := 24334, upper := 24403, witness := RowWitness.topPrime 24329 },
  { lower := 24404, upper := 24441, witness := RowWitness.topPrime 24391 },
  { lower := 24576, upper := 24639, witness := RowWitness.topPrime 24571 },
  { lower := 24642, upper := 24650, witness := RowWitness.topPrime 24631 },
  { lower := 25215, upper := 25263, witness := RowWitness.topPrime 25189 },
  { lower := 25264, upper := 25279, witness := RowWitness.topPrime 25261 },
  { lower := 25281, upper := 25335, witness := RowWitness.topPrime 25261 },
  { lower := 25336, upper := 25355, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26085, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26438, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26671, witness := RowWitness.topPrime 26597 },
  { lower := 26672, upper := 26698, witness := RowWitness.topPrime 26669 },
  { lower := 26934, upper := 26970, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27454, witness := RowWitness.topPrime 27431 },
  { lower := 28577, upper := 28635, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28746, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28791, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28823, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29842, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30320, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30794, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30973, witness := RowWitness.topPrime 30911 },
  { lower := 31433, upper := 31471, witness := RowWitness.topPrime 31397 },
  { lower := 31472, upper := 31507, witness := RowWitness.topPrime 31469 },
  { lower := 31944, upper := 31981, witness := RowWitness.topPrime 31907 },
  { lower := 31982, upper := 32018, witness := RowWitness.topPrime 31981 },
  { lower := 32805, upper := 32842, witness := RowWitness.topPrime 32803 },
  { lower := 32856, upper := 32879, witness := RowWitness.topPrime 32843 },
  { lower := 33282, upper := 33321, witness := RowWitness.topPrime 33247 },
  { lower := 33322, upper := 33349, witness := RowWitness.topPrime 33317 },
  { lower := 33620, upper := 33688, witness := RowWitness.topPrime 33619 },
  { lower := 34295, upper := 34299, witness := RowWitness.topPrime 34283 },
  { lower := 34816, upper := 34881, witness := RowWitness.topPrime 34807 },
  { lower := 34882, upper := 34884, witness := RowWitness.topPrime 34877 },
  { lower := 35152, upper := 35205, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35365, witness := RowWitness.topPrime 35291 },
  { lower := 35366, upper := 35375, witness := RowWitness.topPrime 35363 },
  { lower := 36517, upper := 36571, witness := RowWitness.topPrime 36497 },
  { lower := 36572, upper := 36575, witness := RowWitness.topPrime 36571 },
  { lower := 36982, upper := 37053, witness := RowWitness.topPrime 36979 },
  { lower := 37054, upper := 37054, witness := RowWitness.topPrime 37049 },
  { lower := 37349, upper := 37377, witness := RowWitness.topPrime 37339 },
  { lower := 39326, upper := 39397, witness := RowWitness.topPrime 39323 },
  { lower := 39398, upper := 39400, witness := RowWitness.topPrime 39397 },
  { lower := 40344, upper := 40417, witness := RowWitness.topPrime 40343 },
  { lower := 40418, upper := 40418, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41005, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41817, witness := RowWitness.topPrime 41771 },
  { lower := 42025, upper := 42045, witness := RowWitness.topPrime 42023 },
  { lower := 43940, upper := 43997, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44254, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44964, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48055, witness := RowWitness.topPrime 47981 },
  { lower := 48056, upper := 48087, witness := RowWitness.topPrime 48049 },
  { lower := 48373, upper := 48408, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48672, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48742, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48808, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49204, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50484, witness := RowWitness.topPrime 50417 },
  { lower := 50562, upper := 50605, witness := RowWitness.topPrime 50551 },
  { lower := 53290, upper := 53322, witness := RowWitness.topPrime 53281 },
  { lower := 58619, upper := 58638, witness := RowWitness.topPrime 58613 },
  { lower := 58989, upper := 59030, witness := RowWitness.topPrime 58979 },
  { lower := 59049, upper := 59063, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59610, witness := RowWitness.topPrime 59581 },
  { lower := 61798, upper := 61805, witness := RowWitness.topPrime 61781 },
  { lower := 65536, upper := 65595, witness := RowWitness.topPrime 65521 },
  { lower := 65596, upper := 65607, witness := RowWitness.topPrime 65587 },
  { lower := 69632, upper := 69694, witness := RowWitness.topPrime 69623 },
  { lower := 73167, upper := 73175, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73241, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73769, witness := RowWitness.topPrime 73727 },
  { lower := 81920, upper := 81936, witness := RowWitness.topPrime 81919 },
  { lower := 85291, upper := 85333, witness := RowWitness.topPrime 85259 },
  { lower := 85334, upper := 85338, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85757, witness := RowWitness.topPrime 85691 },
  { lower := 98304, upper := 98334, witness := RowWitness.topPrime 98299 },
  { lower := 100842, upper := 100894, witness := RowWitness.topPrime 100829 },
  { lower := 101306, upper := 101325, witness := RowWitness.topPrime 101293 },
  { lower := 137842, upper := 137855, witness := RowWitness.topPrime 137831 },
  { lower := 327701, upper := 327754, witness := RowWitness.topPrime 327689 }
]

def row075_layers : List CoverLayer := [
  { lower := 5550, upper := 11100, M := 34 },
  { lower := 11100, upper := 22200, M := 30 },
  { lower := 22200, upper := 44400, M := 26 },
  { lower := 44400, upper := 88800, M := 23 },
  { lower := 88800, upper := 177600, M := 21 },
  { lower := 177600, upper := 355200, M := 18 },
  { lower := 355200, upper := 710400, M := 16 },
  { lower := 710400, upper := 1420800, M := 14 },
  { lower := 1420800, upper := 2841600, M := 13 },
  { lower := 2841600, upper := 5683200, M := 11 },
  { lower := 5683200, upper := 11366400, M := 10 },
  { lower := 11366400, upper := 22732800, M := 9 },
  { lower := 22732800, upper := 45465600, M := 8 },
  { lower := 45465600, upper := 90931200, M := 7 },
  { lower := 90931200, upper := 181862400, M := 6 },
  { lower := 181862400, upper := 363724800, M := 6 },
  { lower := 363724800, upper := 727449600, M := 5 },
  { lower := 727449600, upper := 1454899200, M := 4 },
  { lower := 1454899200, upper := 2909798400, M := 4 },
  { lower := 2909798400, upper := 5819596800, M := 4 },
  { lower := 5819596800, upper := 11639193600, M := 3 },
  { lower := 11639193600, upper := 23278387200, M := 3 },
  { lower := 23278387200, upper := 46556774400, M := 3 },
  { lower := 46556774400, upper := 93113548800, M := 2 },
  { lower := 93113548800, upper := 186227097600, M := 2 },
  { lower := 186227097600, upper := 372454195200, M := 2 },
  { lower := 372454195200, upper := 744908390400, M := 2 },
  { lower := 744908390400, upper := 1489816780800, M := 2 },
  { lower := 1489816780800, upper := 2979633561600, M := 1 },
  { lower := 2979633561600, upper := 5959267123200, M := 1 },
  { lower := 5959267123200, upper := 10000000000000, M := 1 }
]

def row075 : FiniteCoverRow := {
  height := row075_height,
  goods := row075_goods,
  layers := row075_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good000_checked :
    goodSegmentCheck 75 24 51
      { lower := 152, upper := 225, witness := RowWitness.topPrime 151 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good001_checked :
    goodSegmentCheck 75 24 51
      { lower := 226, upper := 297, witness := RowWitness.topPrime 223 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good002_checked :
    goodSegmentCheck 75 24 51
      { lower := 298, upper := 367, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good003_checked :
    goodSegmentCheck 75 24 51
      { lower := 368, upper := 441, witness := RowWitness.topPrime 367 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good004_checked :
    goodSegmentCheck 75 24 51
      { lower := 442, upper := 513, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good005_checked :
    goodSegmentCheck 75 24 51
      { lower := 514, upper := 583, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good006_checked :
    goodSegmentCheck 75 24 51
      { lower := 584, upper := 651, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good007_checked :
    goodSegmentCheck 75 24 51
      { lower := 652, upper := 721, witness := RowWitness.topPrime 647 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good008_checked :
    goodSegmentCheck 75 24 51
      { lower := 722, upper := 793, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good009_checked :
    goodSegmentCheck 75 24 51
      { lower := 794, upper := 861, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good010_checked :
    goodSegmentCheck 75 24 51
      { lower := 862, upper := 933, witness := RowWitness.topPrime 859 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good011_checked :
    goodSegmentCheck 75 24 51
      { lower := 934, upper := 1003, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good012_checked :
    goodSegmentCheck 75 24 51
      { lower := 1004, upper := 1071, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good013_checked :
    goodSegmentCheck 75 24 51
      { lower := 1072, upper := 1143, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good014_checked :
    goodSegmentCheck 75 24 51
      { lower := 1144, upper := 1203, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good015_checked :
    goodSegmentCheck 75 24 51
      { lower := 1204, upper := 1275, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good016_checked :
    goodSegmentCheck 75 24 51
      { lower := 1276, upper := 1333, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good017_checked :
    goodSegmentCheck 75 24 51
      { lower := 1334, upper := 1401, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good018_checked :
    goodSegmentCheck 75 24 51
      { lower := 1402, upper := 1473, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good019_checked :
    goodSegmentCheck 75 24 51
      { lower := 1474, upper := 1545, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good020_checked :
    goodSegmentCheck 75 24 51
      { lower := 1546, upper := 1617, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good021_checked :
    goodSegmentCheck 75 24 51
      { lower := 1618, upper := 1687, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good022_checked :
    goodSegmentCheck 75 24 51
      { lower := 1688, upper := 1743, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good023_checked :
    goodSegmentCheck 75 24 51
      { lower := 1744, upper := 1815, witness := RowWitness.topPrime 1741 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good024_checked :
    goodSegmentCheck 75 24 51
      { lower := 1816, upper := 1885, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good025_checked :
    goodSegmentCheck 75 24 51
      { lower := 1886, upper := 1953, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good026_checked :
    goodSegmentCheck 75 24 51
      { lower := 1954, upper := 2025, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good027_checked :
    goodSegmentCheck 75 24 51
      { lower := 2026, upper := 2091, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good028_checked :
    goodSegmentCheck 75 24 51
      { lower := 2092, upper := 2163, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good029_checked :
    goodSegmentCheck 75 24 51
      { lower := 2164, upper := 2235, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good030_checked :
    goodSegmentCheck 75 24 51
      { lower := 2236, upper := 2295, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good031_checked :
    goodSegmentCheck 75 24 51
      { lower := 2296, upper := 2367, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good032_checked :
    goodSegmentCheck 75 24 51
      { lower := 2368, upper := 2431, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good033_checked :
    goodSegmentCheck 75 24 51
      { lower := 2432, upper := 2497, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good034_checked :
    goodSegmentCheck 75 24 51
      { lower := 2498, upper := 2551, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good035_checked :
    goodSegmentCheck 75 24 51
      { lower := 2552, upper := 2625, witness := RowWitness.topPrime 2551 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good036_checked :
    goodSegmentCheck 75 24 51
      { lower := 2626, upper := 2695, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good037_checked :
    goodSegmentCheck 75 24 51
      { lower := 2696, upper := 2767, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good038_checked :
    goodSegmentCheck 75 24 51
      { lower := 2768, upper := 2841, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good039_checked :
    goodSegmentCheck 75 24 51
      { lower := 2842, upper := 2911, witness := RowWitness.topPrime 2837 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good040_checked :
    goodSegmentCheck 75 24 51
      { lower := 2912, upper := 2983, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good041_checked :
    goodSegmentCheck 75 24 51
      { lower := 2984, upper := 3045, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good042_checked :
    goodSegmentCheck 75 24 51
      { lower := 3046, upper := 3115, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good043_checked :
    goodSegmentCheck 75 24 51
      { lower := 3116, upper := 3183, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good044_checked :
    goodSegmentCheck 75 24 51
      { lower := 3184, upper := 3255, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good045_checked :
    goodSegmentCheck 75 24 51
      { lower := 3256, upper := 3327, witness := RowWitness.topPrime 3253 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good046_checked :
    goodSegmentCheck 75 24 51
      { lower := 3328, upper := 3397, witness := RowWitness.topPrime 3323 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good047_checked :
    goodSegmentCheck 75 24 51
      { lower := 3398, upper := 3465, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good048_checked :
    goodSegmentCheck 75 24 51
      { lower := 3466, upper := 3537, witness := RowWitness.topPrime 3463 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good049_checked :
    goodSegmentCheck 75 24 51
      { lower := 3538, upper := 3607, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good050_checked :
    goodSegmentCheck 75 24 51
      { lower := 3608, upper := 3681, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good051_checked :
    goodSegmentCheck 75 24 51
      { lower := 3682, upper := 3751, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good052_checked :
    goodSegmentCheck 75 24 51
      { lower := 3752, upper := 3813, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good053_checked :
    goodSegmentCheck 75 24 51
      { lower := 3814, upper := 3877, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good054_checked :
    goodSegmentCheck 75 24 51
      { lower := 3878, upper := 3951, witness := RowWitness.topPrime 3877 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good055_checked :
    goodSegmentCheck 75 24 51
      { lower := 3952, upper := 4021, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good056_checked :
    goodSegmentCheck 75 24 51
      { lower := 4022, upper := 4095, witness := RowWitness.topPrime 4021 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good057_checked :
    goodSegmentCheck 75 24 51
      { lower := 4096, upper := 4167, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good058_checked :
    goodSegmentCheck 75 24 51
      { lower := 4168, upper := 4233, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good059_checked :
    goodSegmentCheck 75 24 51
      { lower := 4234, upper := 4305, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good060_checked :
    goodSegmentCheck 75 24 51
      { lower := 4306, upper := 4371, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good061_checked :
    goodSegmentCheck 75 24 51
      { lower := 4372, upper := 4437, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good062_checked :
    goodSegmentCheck 75 24 51
      { lower := 4438, upper := 4497, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good063_checked :
    goodSegmentCheck 75 24 51
      { lower := 4498, upper := 4567, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good064_checked :
    goodSegmentCheck 75 24 51
      { lower := 4568, upper := 4641, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good065_checked :
    goodSegmentCheck 75 24 51
      { lower := 4642, upper := 4713, witness := RowWitness.topPrime 4639 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good066_checked :
    goodSegmentCheck 75 24 51
      { lower := 4714, upper := 4777, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good067_checked :
    goodSegmentCheck 75 24 51
      { lower := 4778, upper := 4833, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good068_checked :
    goodSegmentCheck 75 24 51
      { lower := 4834, upper := 4905, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good069_checked :
    goodSegmentCheck 75 24 51
      { lower := 4906, upper := 4977, witness := RowWitness.topPrime 4903 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good070_checked :
    goodSegmentCheck 75 24 51
      { lower := 4978, upper := 5047, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good071_checked :
    goodSegmentCheck 75 24 51
      { lower := 5048, upper := 5113, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good072_checked :
    goodSegmentCheck 75 24 51
      { lower := 5114, upper := 5187, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good073_checked :
    goodSegmentCheck 75 24 51
      { lower := 5188, upper := 5253, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good074_checked :
    goodSegmentCheck 75 24 51
      { lower := 5254, upper := 5311, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good075_checked :
    goodSegmentCheck 75 24 51
      { lower := 5312, upper := 5383, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good076_checked :
    goodSegmentCheck 75 24 51
      { lower := 5384, upper := 5455, witness := RowWitness.topPrime 5381 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good077_checked :
    goodSegmentCheck 75 24 51
      { lower := 5456, upper := 5523, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good078_checked :
    goodSegmentCheck 75 24 51
      { lower := 5524, upper := 5565, witness := RowWitness.topPrime 5521 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good079_checked :
    goodSegmentCheck 75 24 51
      { lower := 5577, upper := 5647, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good080_checked :
    goodSegmentCheck 75 24 51
      { lower := 5648, upper := 5692, witness := RowWitness.topPrime 5647 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good081_checked :
    goodSegmentCheck 75 24 51
      { lower := 5766, upper := 5823, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good082_checked :
    goodSegmentCheck 75 24 51
      { lower := 5824, upper := 5895, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good083_checked :
    goodSegmentCheck 75 24 51
      { lower := 5896, upper := 5955, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good084_checked :
    goodSegmentCheck 75 24 51
      { lower := 5956, upper := 5961, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good085_checked :
    goodSegmentCheck 75 24 51
      { lower := 6137, upper := 6207, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good086_checked :
    goodSegmentCheck 75 24 51
      { lower := 6208, upper := 6218, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good087_checked :
    goodSegmentCheck 75 24 51
      { lower := 6358, upper := 6427, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good088_checked :
    goodSegmentCheck 75 24 51
      { lower := 6428, upper := 6432, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good089_checked :
    goodSegmentCheck 75 24 51
      { lower := 6517, upper := 6565, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good090_checked :
    goodSegmentCheck 75 24 51
      { lower := 6566, upper := 6637, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good091_checked :
    goodSegmentCheck 75 24 51
      { lower := 6638, upper := 6711, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good092_checked :
    goodSegmentCheck 75 24 51
      { lower := 6712, upper := 6783, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good093_checked :
    goodSegmentCheck 75 24 51
      { lower := 6784, upper := 6801, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good094_checked :
    goodSegmentCheck 75 24 51
      { lower := 6859, upper := 6931, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good095_checked :
    goodSegmentCheck 75 24 51
      { lower := 6932, upper := 6991, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good096_checked :
    goodSegmentCheck 75 24 51
      { lower := 6992, upper := 7010, witness := RowWitness.topPrime 6991 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good097_checked :
    goodSegmentCheck 75 24 51
      { lower := 7203, upper := 7267, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good098_checked :
    goodSegmentCheck 75 24 51
      { lower := 7268, upper := 7299, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good099_checked :
    goodSegmentCheck 75 24 51
      { lower := 7406, upper := 7467, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good100_checked :
    goodSegmentCheck 75 24 51
      { lower := 7468, upper := 7498, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good101_checked :
    goodSegmentCheck 75 24 51
      { lower := 7514, upper := 7516, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good102_checked :
    goodSegmentCheck 75 24 51
      { lower := 7546, upper := 7615, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good103_checked :
    goodSegmentCheck 75 24 51
      { lower := 7616, upper := 7643, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good104_checked :
    goodSegmentCheck 75 24 51
      { lower := 7688, upper := 7754, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good105_checked :
    goodSegmentCheck 75 24 51
      { lower := 7935, upper := 8007, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good106_checked :
    goodSegmentCheck 75 24 51
      { lower := 8008, upper := 8016, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good107_checked :
    goodSegmentCheck 75 24 51
      { lower := 8019, upper := 8060, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good108_checked :
    goodSegmentCheck 75 24 51
      { lower := 8092, upper := 8093, witness := RowWitness.topPrime 8089 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good109_checked :
    goodSegmentCheck 75 24 51
      { lower := 8214, upper := 8283, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good110_checked :
    goodSegmentCheck 75 24 51
      { lower := 8284, upper := 8288, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good111_checked :
    goodSegmentCheck 75 24 51
      { lower := 8303, upper := 8306, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good112_checked :
    goodSegmentCheck 75 24 51
      { lower := 8405, upper := 8463, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good113_checked :
    goodSegmentCheck 75 24 51
      { lower := 8464, upper := 8522, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good114_checked :
    goodSegmentCheck 75 24 51
      { lower := 8649, upper := 8649, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good115_checked :
    goodSegmentCheck 75 24 51
      { lower := 8664, upper := 8737, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good116_checked :
    goodSegmentCheck 75 24 51
      { lower := 8738, upper := 8744, witness := RowWitness.topPrime 8737 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good117_checked :
    goodSegmentCheck 75 24 51
      { lower := 8748, upper := 8778, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good118_checked :
    goodSegmentCheck 75 24 51
      { lower := 8788, upper := 8822, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good119_checked :
    goodSegmentCheck 75 24 51
      { lower := 8836, upper := 8862, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good120_checked :
    goodSegmentCheck 75 24 51
      { lower := 8959, upper := 9025, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good121_checked :
    goodSegmentCheck 75 24 51
      { lower := 9026, upper := 9067, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good122_checked :
    goodSegmentCheck 75 24 51
      { lower := 9245, upper := 9315, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good123_checked :
    goodSegmentCheck 75 24 51
      { lower := 9316, upper := 9335, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good124_checked :
    goodSegmentCheck 75 24 51
      { lower := 9386, upper := 9391, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good125_checked :
    goodSegmentCheck 75 24 51
      { lower := 9537, upper := 9607, witness := RowWitness.topPrime 9533 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good126_checked :
    goodSegmentCheck 75 24 51
      { lower := 9608, upper := 9675, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good127_checked :
    goodSegmentCheck 75 24 51
      { lower := 9676, upper := 9678, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good128_checked :
    goodSegmentCheck 75 24 51
      { lower := 9747, upper := 9802, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good129_checked :
    goodSegmentCheck 75 24 51
      { lower := 10082, upper := 10153, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good130_checked :
    goodSegmentCheck 75 24 51
      { lower := 10154, upper := 10166, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good131_checked :
    goodSegmentCheck 75 24 51
      { lower := 10290, upper := 10314, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good132_checked :
    goodSegmentCheck 75 24 51
      { lower := 10469, upper := 10517, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good133_checked :
    goodSegmentCheck 75 24 51
      { lower := 10580, upper := 10641, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good134_checked :
    goodSegmentCheck 75 24 51
      { lower := 10642, upper := 10713, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good135_checked :
    goodSegmentCheck 75 24 51
      { lower := 10714, upper := 10722, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good136_checked :
    goodSegmentCheck 75 24 51
      { lower := 10935, upper := 10983, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good137_checked :
    goodSegmentCheck 75 24 51
      { lower := 10984, upper := 11053, witness := RowWitness.topPrime 10979 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good138_checked :
    goodSegmentCheck 75 24 51
      { lower := 11054, upper := 11059, witness := RowWitness.topPrime 11047 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good139_checked :
    goodSegmentCheck 75 24 51
      { lower := 11094, upper := 11167, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good140_checked :
    goodSegmentCheck 75 24 51
      { lower := 11168, upper := 11183, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good141_checked :
    goodSegmentCheck 75 24 51
      { lower := 11236, upper := 11237, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good142_checked :
    goodSegmentCheck 75 24 51
      { lower := 11264, upper := 11310, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good143_checked :
    goodSegmentCheck 75 24 51
      { lower := 11774, upper := 11817, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good144_checked :
    goodSegmentCheck 75 24 51
      { lower := 11818, upper := 11848, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good145_checked :
    goodSegmentCheck 75 24 51
      { lower := 12005, upper := 12053, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good146_checked :
    goodSegmentCheck 75 24 51
      { lower := 12321, upper := 12362, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good147_checked :
    goodSegmentCheck 75 24 51
      { lower := 13182, upper := 13196, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good148_checked :
    goodSegmentCheck 75 24 51
      { lower := 13225, upper := 13293, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good149_checked :
    goodSegmentCheck 75 24 51
      { lower := 13294, upper := 13299, witness := RowWitness.topPrime 13291 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good150_checked :
    goodSegmentCheck 75 24 51
      { lower := 13310, upper := 13383, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good151_checked :
    goodSegmentCheck 75 24 51
      { lower := 13384, upper := 13384, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good152_checked :
    goodSegmentCheck 75 24 51
      { lower := 13454, upper := 13525, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good153_checked :
    goodSegmentCheck 75 24 51
      { lower := 13526, upper := 13530, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good154_checked :
    goodSegmentCheck 75 24 51
      { lower := 13718, upper := 13785, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good155_checked :
    goodSegmentCheck 75 24 51
      { lower := 13786, upper := 13792, witness := RowWitness.topPrime 13781 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good156_checked :
    goodSegmentCheck 75 24 51
      { lower := 13824, upper := 13828, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good157_checked :
    goodSegmentCheck 75 24 51
      { lower := 14297, upper := 14367, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good158_checked :
    goodSegmentCheck 75 24 51
      { lower := 14368, upper := 14371, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good159_checked :
    goodSegmentCheck 75 24 51
      { lower := 14406, upper := 14410, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good160_checked :
    goodSegmentCheck 75 24 51
      { lower := 14415, upper := 14480, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good161_checked :
    goodSegmentCheck 75 24 51
      { lower := 14792, upper := 14857, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good162_checked :
    goodSegmentCheck 75 24 51
      { lower := 14858, upper := 14922, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good163_checked :
    goodSegmentCheck 75 24 51
      { lower := 15123, upper := 15195, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good164_checked :
    goodSegmentCheck 75 24 51
      { lower := 15196, upper := 15203, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good165_checked :
    goodSegmentCheck 75 24 51
      { lower := 15341, upper := 15405, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good166_checked :
    goodSegmentCheck 75 24 51
      { lower := 15406, upper := 15450, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good167_checked :
    goodSegmentCheck 75 24 51
      { lower := 15979, upper := 16047, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good168_checked :
    goodSegmentCheck 75 24 51
      { lower := 16048, upper := 16053, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good169_checked :
    goodSegmentCheck 75 24 51
      { lower := 16384, upper := 16411, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good170_checked :
    goodSegmentCheck 75 24 51
      { lower := 16428, upper := 16458, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good171_checked :
    goodSegmentCheck 75 24 51
      { lower := 16810, upper := 16861, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good172_checked :
    goodSegmentCheck 75 24 51
      { lower := 16862, upper := 16894, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good173_checked :
    goodSegmentCheck 75 24 51
      { lower := 17303, upper := 17372, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good174_checked :
    goodSegmentCheck 75 24 51
      { lower := 17408, upper := 17475, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good175_checked :
    goodSegmentCheck 75 24 51
      { lower := 17476, upper := 17479, witness := RowWitness.topPrime 17471 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good176_checked :
    goodSegmentCheck 75 24 51
      { lower := 17672, upper := 17735, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good177_checked :
    goodSegmentCheck 75 24 51
      { lower := 18490, upper := 18555, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good178_checked :
    goodSegmentCheck 75 24 51
      { lower := 18556, upper := 18565, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good179_checked :
    goodSegmentCheck 75 24 51
      { lower := 18634, upper := 18679, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good180_checked :
    goodSegmentCheck 75 24 51
      { lower := 19208, upper := 19281, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good181_checked :
    goodSegmentCheck 75 24 51
      { lower := 19282, upper := 19282, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good182_checked :
    goodSegmentCheck 75 24 51
      { lower := 19663, upper := 19735, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good183_checked :
    goodSegmentCheck 75 24 51
      { lower := 19736, upper := 19737, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good184_checked :
    goodSegmentCheck 75 24 51
      { lower := 20172, upper := 20235, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good185_checked :
    goodSegmentCheck 75 24 51
      { lower := 20236, upper := 20255, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good186_checked :
    goodSegmentCheck 75 24 51
      { lower := 20535, upper := 20554, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good187_checked :
    goodSegmentCheck 75 24 51
      { lower := 20577, upper := 20609, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good188_checked :
    goodSegmentCheck 75 24 51
      { lower := 21316, upper := 21370, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good189_checked :
    goodSegmentCheck 75 24 51
      { lower := 21866, upper := 21937, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good190_checked :
    goodSegmentCheck 75 24 51
      { lower := 21938, upper := 21944, witness := RowWitness.topPrime 21937 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good191_checked :
    goodSegmentCheck 75 24 51
      { lower := 21970, upper := 21978, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good192_checked :
    goodSegmentCheck 75 24 51
      { lower := 22103, upper := 22164, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good193_checked :
    goodSegmentCheck 75 24 51
      { lower := 22472, upper := 22519, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good194_checked :
    goodSegmentCheck 75 24 51
      { lower := 22528, upper := 22546, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good195_checked :
    goodSegmentCheck 75 24 51
      { lower := 23552, upper := 23608, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good196_checked :
    goodSegmentCheck 75 24 51
      { lower := 24010, upper := 24081, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good197_checked :
    goodSegmentCheck 75 24 51
      { lower := 24082, upper := 24099, witness := RowWitness.topPrime 24077 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good198_checked :
    goodSegmentCheck 75 24 51
      { lower := 24334, upper := 24403, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good199_checked :
    goodSegmentCheck 75 24 51
      { lower := 24404, upper := 24441, witness := RowWitness.topPrime 24391 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good200_checked :
    goodSegmentCheck 75 24 51
      { lower := 24576, upper := 24639, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good201_checked :
    goodSegmentCheck 75 24 51
      { lower := 24642, upper := 24650, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good202_checked :
    goodSegmentCheck 75 24 51
      { lower := 25215, upper := 25263, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good203_checked :
    goodSegmentCheck 75 24 51
      { lower := 25264, upper := 25279, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good204_checked :
    goodSegmentCheck 75 24 51
      { lower := 25281, upper := 25335, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good205_checked :
    goodSegmentCheck 75 24 51
      { lower := 25336, upper := 25355, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good206_checked :
    goodSegmentCheck 75 24 51
      { lower := 26047, upper := 26085, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good207_checked :
    goodSegmentCheck 75 24 51
      { lower := 26411, upper := 26438, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good208_checked :
    goodSegmentCheck 75 24 51
      { lower := 26624, upper := 26671, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good209_checked :
    goodSegmentCheck 75 24 51
      { lower := 26672, upper := 26698, witness := RowWitness.topPrime 26669 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good210_checked :
    goodSegmentCheck 75 24 51
      { lower := 26934, upper := 26970, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good211_checked :
    goodSegmentCheck 75 24 51
      { lower := 27436, upper := 27454, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good212_checked :
    goodSegmentCheck 75 24 51
      { lower := 28577, upper := 28635, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good213_checked :
    goodSegmentCheck 75 24 51
      { lower := 28717, upper := 28746, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good214_checked :
    goodSegmentCheck 75 24 51
      { lower := 28749, upper := 28791, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good215_checked :
    goodSegmentCheck 75 24 51
      { lower := 28812, upper := 28823, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good216_checked :
    goodSegmentCheck 75 24 51
      { lower := 29791, upper := 29842, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good217_checked :
    goodSegmentCheck 75 24 51
      { lower := 30258, upper := 30320, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good218_checked :
    goodSegmentCheck 75 24 51
      { lower := 30758, upper := 30794, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good219_checked :
    goodSegmentCheck 75 24 51
      { lower := 30926, upper := 30973, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good220_checked :
    goodSegmentCheck 75 24 51
      { lower := 31433, upper := 31471, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good221_checked :
    goodSegmentCheck 75 24 51
      { lower := 31472, upper := 31507, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good222_checked :
    goodSegmentCheck 75 24 51
      { lower := 31944, upper := 31981, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good223_checked :
    goodSegmentCheck 75 24 51
      { lower := 31982, upper := 32018, witness := RowWitness.topPrime 31981 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good224_checked :
    goodSegmentCheck 75 24 51
      { lower := 32805, upper := 32842, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good225_checked :
    goodSegmentCheck 75 24 51
      { lower := 32856, upper := 32879, witness := RowWitness.topPrime 32843 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good226_checked :
    goodSegmentCheck 75 24 51
      { lower := 33282, upper := 33321, witness := RowWitness.topPrime 33247 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good227_checked :
    goodSegmentCheck 75 24 51
      { lower := 33322, upper := 33349, witness := RowWitness.topPrime 33317 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good228_checked :
    goodSegmentCheck 75 24 51
      { lower := 33620, upper := 33688, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good229_checked :
    goodSegmentCheck 75 24 51
      { lower := 34295, upper := 34299, witness := RowWitness.topPrime 34283 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good230_checked :
    goodSegmentCheck 75 24 51
      { lower := 34816, upper := 34881, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good231_checked :
    goodSegmentCheck 75 24 51
      { lower := 34882, upper := 34884, witness := RowWitness.topPrime 34877 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good232_checked :
    goodSegmentCheck 75 24 51
      { lower := 35152, upper := 35205, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good233_checked :
    goodSegmentCheck 75 24 51
      { lower := 35301, upper := 35365, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good234_checked :
    goodSegmentCheck 75 24 51
      { lower := 35366, upper := 35375, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good235_checked :
    goodSegmentCheck 75 24 51
      { lower := 36517, upper := 36571, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good236_checked :
    goodSegmentCheck 75 24 51
      { lower := 36572, upper := 36575, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good237_checked :
    goodSegmentCheck 75 24 51
      { lower := 36982, upper := 37053, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good238_checked :
    goodSegmentCheck 75 24 51
      { lower := 37054, upper := 37054, witness := RowWitness.topPrime 37049 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good239_checked :
    goodSegmentCheck 75 24 51
      { lower := 37349, upper := 37377, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good240_checked :
    goodSegmentCheck 75 24 51
      { lower := 39326, upper := 39397, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good241_checked :
    goodSegmentCheck 75 24 51
      { lower := 39398, upper := 39400, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good242_checked :
    goodSegmentCheck 75 24 51
      { lower := 40344, upper := 40417, witness := RowWitness.topPrime 40343 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good243_checked :
    goodSegmentCheck 75 24 51
      { lower := 40418, upper := 40418, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good244_checked :
    goodSegmentCheck 75 24 51
      { lower := 40960, upper := 41005, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good245_checked :
    goodSegmentCheck 75 24 51
      { lower := 41772, upper := 41817, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good246_checked :
    goodSegmentCheck 75 24 51
      { lower := 42025, upper := 42045, witness := RowWitness.topPrime 42023 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good247_checked :
    goodSegmentCheck 75 24 51
      { lower := 43940, upper := 43997, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good248_checked :
    goodSegmentCheck 75 24 51
      { lower := 44217, upper := 44254, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good249_checked :
    goodSegmentCheck 75 24 51
      { lower := 44944, upper := 44964, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good250_checked :
    goodSegmentCheck 75 24 51
      { lower := 48013, upper := 48055, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good251_checked :
    goodSegmentCheck 75 24 51
      { lower := 48056, upper := 48087, witness := RowWitness.topPrime 48049 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good252_checked :
    goodSegmentCheck 75 24 51
      { lower := 48373, upper := 48408, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good253_checked :
    goodSegmentCheck 75 24 51
      { lower := 48668, upper := 48672, witness := RowWitness.topPrime 48661 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good254_checked :
    goodSegmentCheck 75 24 51
      { lower := 48734, upper := 48742, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good255_checked :
    goodSegmentCheck 75 24 51
      { lower := 48778, upper := 48808, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good256_checked :
    goodSegmentCheck 75 24 51
      { lower := 49152, upper := 49204, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good257_checked :
    goodSegmentCheck 75 24 51
      { lower := 50421, upper := 50484, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good258_checked :
    goodSegmentCheck 75 24 51
      { lower := 50562, upper := 50605, witness := RowWitness.topPrime 50551 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good259_checked :
    goodSegmentCheck 75 24 51
      { lower := 53290, upper := 53322, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good260_checked :
    goodSegmentCheck 75 24 51
      { lower := 58619, upper := 58638, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good261_checked :
    goodSegmentCheck 75 24 51
      { lower := 58989, upper := 59030, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good262_checked :
    goodSegmentCheck 75 24 51
      { lower := 59049, upper := 59063, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good263_checked :
    goodSegmentCheck 75 24 51
      { lower := 59582, upper := 59610, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good264_checked :
    goodSegmentCheck 75 24 51
      { lower := 61798, upper := 61805, witness := RowWitness.topPrime 61781 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good265_checked :
    goodSegmentCheck 75 24 51
      { lower := 65536, upper := 65595, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good266_checked :
    goodSegmentCheck 75 24 51
      { lower := 65596, upper := 65607, witness := RowWitness.topPrime 65587 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good267_checked :
    goodSegmentCheck 75 24 51
      { lower := 69632, upper := 69694, witness := RowWitness.topPrime 69623 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good268_checked :
    goodSegmentCheck 75 24 51
      { lower := 73167, upper := 73175, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good269_checked :
    goodSegmentCheck 75 24 51
      { lower := 73205, upper := 73241, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good270_checked :
    goodSegmentCheck 75 24 51
      { lower := 73728, upper := 73769, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good271_checked :
    goodSegmentCheck 75 24 51
      { lower := 81920, upper := 81936, witness := RowWitness.topPrime 81919 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_good272_checked :
    goodSegmentCheck 75 24 51
      { lower := 85291, upper := 85333, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good273_checked :
    goodSegmentCheck 75 24 51
      { lower := 85334, upper := 85338, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good274_checked :
    goodSegmentCheck 75 24 51
      { lower := 85697, upper := 85757, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good275_checked :
    goodSegmentCheck 75 24 51
      { lower := 98304, upper := 98334, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good276_checked :
    goodSegmentCheck 75 24 51
      { lower := 100842, upper := 100894, witness := RowWitness.topPrime 100829 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good277_checked :
    goodSegmentCheck 75 24 51
      { lower := 101306, upper := 101325, witness := RowWitness.topPrime 101293 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good278_checked :
    goodSegmentCheck 75 24 51
      { lower := 137842, upper := 137855, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row075_good279_checked :
    goodSegmentCheck 75 24 51
      { lower := 327701, upper := 327754, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 75) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_good279_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_goods_checked :
    row075.goods.all (goodSegmentCheck row075.height.i row075.height.r row075.height.s) = true := by
  change row075_goods.all (goodSegmentCheck 75 24 51) = true
  simp only [row075_goods, List.all_cons, List.all_nil,
    row075_good000_checked,
    row075_good001_checked,
    row075_good002_checked,
    row075_good003_checked,
    row075_good004_checked,
    row075_good005_checked,
    row075_good006_checked,
    row075_good007_checked,
    row075_good008_checked,
    row075_good009_checked,
    row075_good010_checked,
    row075_good011_checked,
    row075_good012_checked,
    row075_good013_checked,
    row075_good014_checked,
    row075_good015_checked,
    row075_good016_checked,
    row075_good017_checked,
    row075_good018_checked,
    row075_good019_checked,
    row075_good020_checked,
    row075_good021_checked,
    row075_good022_checked,
    row075_good023_checked,
    row075_good024_checked,
    row075_good025_checked,
    row075_good026_checked,
    row075_good027_checked,
    row075_good028_checked,
    row075_good029_checked,
    row075_good030_checked,
    row075_good031_checked,
    row075_good032_checked,
    row075_good033_checked,
    row075_good034_checked,
    row075_good035_checked,
    row075_good036_checked,
    row075_good037_checked,
    row075_good038_checked,
    row075_good039_checked,
    row075_good040_checked,
    row075_good041_checked,
    row075_good042_checked,
    row075_good043_checked,
    row075_good044_checked,
    row075_good045_checked,
    row075_good046_checked,
    row075_good047_checked,
    row075_good048_checked,
    row075_good049_checked,
    row075_good050_checked,
    row075_good051_checked,
    row075_good052_checked,
    row075_good053_checked,
    row075_good054_checked,
    row075_good055_checked,
    row075_good056_checked,
    row075_good057_checked,
    row075_good058_checked,
    row075_good059_checked,
    row075_good060_checked,
    row075_good061_checked,
    row075_good062_checked,
    row075_good063_checked,
    row075_good064_checked,
    row075_good065_checked,
    row075_good066_checked,
    row075_good067_checked,
    row075_good068_checked,
    row075_good069_checked,
    row075_good070_checked,
    row075_good071_checked,
    row075_good072_checked,
    row075_good073_checked,
    row075_good074_checked,
    row075_good075_checked,
    row075_good076_checked,
    row075_good077_checked,
    row075_good078_checked,
    row075_good079_checked,
    row075_good080_checked,
    row075_good081_checked,
    row075_good082_checked,
    row075_good083_checked,
    row075_good084_checked,
    row075_good085_checked,
    row075_good086_checked,
    row075_good087_checked,
    row075_good088_checked,
    row075_good089_checked,
    row075_good090_checked,
    row075_good091_checked,
    row075_good092_checked,
    row075_good093_checked,
    row075_good094_checked,
    row075_good095_checked,
    row075_good096_checked,
    row075_good097_checked,
    row075_good098_checked,
    row075_good099_checked,
    row075_good100_checked,
    row075_good101_checked,
    row075_good102_checked,
    row075_good103_checked,
    row075_good104_checked,
    row075_good105_checked,
    row075_good106_checked,
    row075_good107_checked,
    row075_good108_checked,
    row075_good109_checked,
    row075_good110_checked,
    row075_good111_checked,
    row075_good112_checked,
    row075_good113_checked,
    row075_good114_checked,
    row075_good115_checked,
    row075_good116_checked,
    row075_good117_checked,
    row075_good118_checked,
    row075_good119_checked,
    row075_good120_checked,
    row075_good121_checked,
    row075_good122_checked,
    row075_good123_checked,
    row075_good124_checked,
    row075_good125_checked,
    row075_good126_checked,
    row075_good127_checked,
    row075_good128_checked,
    row075_good129_checked,
    row075_good130_checked,
    row075_good131_checked,
    row075_good132_checked,
    row075_good133_checked,
    row075_good134_checked,
    row075_good135_checked,
    row075_good136_checked,
    row075_good137_checked,
    row075_good138_checked,
    row075_good139_checked,
    row075_good140_checked,
    row075_good141_checked,
    row075_good142_checked,
    row075_good143_checked,
    row075_good144_checked,
    row075_good145_checked,
    row075_good146_checked,
    row075_good147_checked,
    row075_good148_checked,
    row075_good149_checked,
    row075_good150_checked,
    row075_good151_checked,
    row075_good152_checked,
    row075_good153_checked,
    row075_good154_checked,
    row075_good155_checked,
    row075_good156_checked,
    row075_good157_checked,
    row075_good158_checked,
    row075_good159_checked,
    row075_good160_checked,
    row075_good161_checked,
    row075_good162_checked,
    row075_good163_checked,
    row075_good164_checked,
    row075_good165_checked,
    row075_good166_checked,
    row075_good167_checked,
    row075_good168_checked,
    row075_good169_checked,
    row075_good170_checked,
    row075_good171_checked,
    row075_good172_checked,
    row075_good173_checked,
    row075_good174_checked,
    row075_good175_checked,
    row075_good176_checked,
    row075_good177_checked,
    row075_good178_checked,
    row075_good179_checked,
    row075_good180_checked,
    row075_good181_checked,
    row075_good182_checked,
    row075_good183_checked,
    row075_good184_checked,
    row075_good185_checked,
    row075_good186_checked,
    row075_good187_checked,
    row075_good188_checked,
    row075_good189_checked,
    row075_good190_checked,
    row075_good191_checked,
    row075_good192_checked,
    row075_good193_checked,
    row075_good194_checked,
    row075_good195_checked,
    row075_good196_checked,
    row075_good197_checked,
    row075_good198_checked,
    row075_good199_checked,
    row075_good200_checked,
    row075_good201_checked,
    row075_good202_checked,
    row075_good203_checked,
    row075_good204_checked,
    row075_good205_checked,
    row075_good206_checked,
    row075_good207_checked,
    row075_good208_checked,
    row075_good209_checked,
    row075_good210_checked,
    row075_good211_checked,
    row075_good212_checked,
    row075_good213_checked,
    row075_good214_checked,
    row075_good215_checked,
    row075_good216_checked,
    row075_good217_checked,
    row075_good218_checked,
    row075_good219_checked,
    row075_good220_checked,
    row075_good221_checked,
    row075_good222_checked,
    row075_good223_checked,
    row075_good224_checked,
    row075_good225_checked,
    row075_good226_checked,
    row075_good227_checked,
    row075_good228_checked,
    row075_good229_checked,
    row075_good230_checked,
    row075_good231_checked,
    row075_good232_checked,
    row075_good233_checked,
    row075_good234_checked,
    row075_good235_checked,
    row075_good236_checked,
    row075_good237_checked,
    row075_good238_checked,
    row075_good239_checked,
    row075_good240_checked,
    row075_good241_checked,
    row075_good242_checked,
    row075_good243_checked,
    row075_good244_checked,
    row075_good245_checked,
    row075_good246_checked,
    row075_good247_checked,
    row075_good248_checked,
    row075_good249_checked,
    row075_good250_checked,
    row075_good251_checked,
    row075_good252_checked,
    row075_good253_checked,
    row075_good254_checked,
    row075_good255_checked,
    row075_good256_checked,
    row075_good257_checked,
    row075_good258_checked,
    row075_good259_checked,
    row075_good260_checked,
    row075_good261_checked,
    row075_good262_checked,
    row075_good263_checked,
    row075_good264_checked,
    row075_good265_checked,
    row075_good266_checked,
    row075_good267_checked,
    row075_good268_checked,
    row075_good269_checked,
    row075_good270_checked,
    row075_good271_checked,
    row075_good272_checked,
    row075_good273_checked,
    row075_good274_checked,
    row075_good275_checked,
    row075_good276_checked,
    row075_good277_checked,
    row075_good278_checked,
    row075_good279_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_registered :
    decide (row075.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row075_small_checked :
    coverCheck (2 * row075.height.i + 2) (row075.height.i * (row075.height.i - 1) - 1)
      (row075.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row075_layerCover_checked :
    coverCheck (row075.height.i * (row075.height.i - 1)) (row075.height.n0 - 1)
      (row075.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_bounds : List NatInterval :=
  [(152, 225), (226, 297), (298, 367), (368, 441), (442, 513), (514, 583), (584, 651), (652, 721), (722, 793), (794, 861), (862, 933), (934, 1003), (1004, 1071), (1072, 1143), (1144, 1203), (1204, 1275), (1276, 1333), (1334, 1401), (1402, 1473), (1474, 1545), (1546, 1617), (1618, 1687), (1688, 1743), (1744, 1815), (1816, 1885), (1886, 1953), (1954, 2025), (2026, 2091), (2092, 2163), (2164, 2235), (2236, 2295), (2296, 2367), (2368, 2431), (2432, 2497), (2498, 2551), (2552, 2625), (2626, 2695), (2696, 2767), (2768, 2841), (2842, 2911), (2912, 2983), (2984, 3045), (3046, 3115), (3116, 3183), (3184, 3255), (3256, 3327), (3328, 3397), (3398, 3465), (3466, 3537), (3538, 3607), (3608, 3681), (3682, 3751), (3752, 3813), (3814, 3877), (3878, 3951), (3952, 4021), (4022, 4095), (4096, 4167), (4168, 4233), (4234, 4305), (4306, 4371), (4372, 4437), (4438, 4497), (4498, 4567), (4568, 4641), (4642, 4713), (4714, 4777), (4778, 4833), (4834, 4905), (4906, 4977), (4978, 5047), (5048, 5113), (5114, 5187), (5188, 5253), (5254, 5311), (5312, 5383), (5384, 5455), (5456, 5523), (5524, 5565), (5577, 5647), (5648, 5692), (5766, 5823), (5824, 5895), (5896, 5955), (5956, 5961), (6137, 6207), (6208, 6218), (6358, 6427), (6428, 6432), (6517, 6565), (6566, 6637), (6638, 6711), (6712, 6783), (6784, 6801), (6859, 6931), (6932, 6991), (6992, 7010), (7203, 7267), (7268, 7299), (7406, 7467), (7468, 7498), (7514, 7516), (7546, 7615), (7616, 7643), (7688, 7754), (7935, 8007), (8008, 8016), (8019, 8060), (8092, 8093), (8214, 8283), (8284, 8288), (8303, 8306), (8405, 8463), (8464, 8522), (8649, 8649), (8664, 8737), (8738, 8744), (8748, 8778), (8788, 8822), (8836, 8862), (8959, 9025), (9026, 9067), (9245, 9315), (9316, 9335), (9386, 9391), (9537, 9607), (9608, 9675), (9676, 9678), (9747, 9802), (10082, 10153), (10154, 10166), (10290, 10314), (10469, 10517), (10580, 10641), (10642, 10713), (10714, 10722), (10935, 10983), (10984, 11053), (11054, 11059), (11094, 11167), (11168, 11183), (11236, 11237), (11264, 11310), (11774, 11817), (11818, 11848), (12005, 12053), (12321, 12362), (13182, 13196), (13225, 13293), (13294, 13299), (13310, 13383), (13384, 13384), (13454, 13525), (13526, 13530), (13718, 13785), (13786, 13792), (13824, 13828), (14297, 14367), (14368, 14371), (14406, 14410), (14415, 14480), (14792, 14857), (14858, 14922), (15123, 15195), (15196, 15203), (15341, 15405), (15406, 15450), (15979, 16047), (16048, 16053), (16384, 16411), (16428, 16458), (16810, 16861), (16862, 16894), (17303, 17372), (17408, 17475), (17476, 17479), (17672, 17735), (18490, 18555), (18556, 18565), (18634, 18679), (19208, 19281), (19282, 19282), (19663, 19735), (19736, 19737), (20172, 20235), (20236, 20255), (20535, 20554), (20577, 20609), (21316, 21370), (21866, 21937), (21938, 21944), (21970, 21978), (22103, 22164), (22472, 22519), (22528, 22546), (23552, 23608), (24010, 24081), (24082, 24099), (24334, 24403), (24404, 24441), (24576, 24639), (24642, 24650), (25215, 25263), (25264, 25279), (25281, 25335), (25336, 25355), (26047, 26085), (26411, 26438), (26624, 26671), (26672, 26698), (26934, 26970), (27436, 27454), (28577, 28635), (28717, 28746), (28749, 28791), (28812, 28823), (29791, 29842), (30258, 30320), (30758, 30794), (30926, 30973), (31433, 31471), (31472, 31507), (31944, 31981), (31982, 32018), (32805, 32842), (32856, 32879), (33282, 33321), (33322, 33349), (33620, 33688), (34295, 34299), (34816, 34881), (34882, 34884), (35152, 35205), (35301, 35365), (35366, 35375), (36517, 36571), (36572, 36575), (36982, 37053), (37054, 37054), (37349, 37377), (39326, 39397), (39398, 39400), (40344, 40417), (40418, 40418), (40960, 41005), (41772, 41817), (42025, 42045), (43940, 43997), (44217, 44254), (44944, 44964), (48013, 48055), (48056, 48087), (48373, 48408), (48668, 48672), (48734, 48742), (48778, 48808), (49152, 49204), (50421, 50484), (50562, 50605), (53290, 53322), (58619, 58638), (58989, 59030), (59049, 59063), (59582, 59610), (61798, 61805), (65536, 65595), (65596, 65607), (69632, 69694), (73167, 73175), (73205, 73241), (73728, 73769), (81920, 81936), (85291, 85333), (85334, 85338), (85697, 85757), (98304, 98334), (100842, 100894), (101306, 101325), (137842, 137855), (327701, 327754)]

theorem row075_bounds_eq : row075.goods.map goodSegmentBounds = row075_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_layer000_intervals : List ColouredInterval :=
  [(2, 5632, 5706), (2, 5888, 5962), (2, 6144, 6218), (2, 6400, 6474), (2, 6656, 6730), (2, 6912, 6986), (2, 7168, 7242), (2, 7424, 7498), (2, 7680, 7754), (2, 7936, 8010), (2, 8192, 8266), (2, 8448, 8522), (2, 8704, 8778), (2, 5632, 5706), (2, 6144, 6218), (2, 6656, 6730), (2, 7168, 7242), (2, 7680, 7754), (2, 8192, 8266), (2, 8704, 8778), (2, 9216, 9290), (2, 9728, 9802), (2, 10240, 10314), (2, 10752, 10826), (2, 6144, 6218), (2, 7168, 7242), (2, 8192, 8266), (2, 9216, 9290), (2, 10240, 10314), (2, 6144, 6218), (2, 8192, 8266), (2, 10240, 10314), (2, 8192, 8266), (2, 8192, 8266), (3, 5832, 5906), (3, 6561, 6635), (3, 7290, 7364), (3, 8019, 8093), (3, 6561, 6635), (3, 8748, 8822), (3, 10935, 11009), (3, 6561, 6635), (7, 5550, 5562), (7, 5831, 5905), (7, 6174, 6248), (7, 6517, 6591), (7, 6860, 6934), (7, 7203, 7277), (7, 7546, 7620), (7, 7889, 7963), (7, 8232, 8306), (7, 8575, 8649), (7, 8918, 8992), (7, 9261, 9335), (7, 9604, 9678), (7, 9947, 10021), (7, 10290, 10364), (7, 10633, 10707), (7, 10976, 11050), (7, 7203, 7277), (7, 9604, 9678), (11, 6655, 6729), (11, 7986, 8060), (11, 9317, 9391), (11, 10648, 10722), (13, 5577, 5651), (13, 5746, 5820), (13, 6591, 6665), (13, 8788, 8862), (13, 10985, 11059), (17, 5550, 5565), (17, 5780, 5854), (17, 6069, 6143), (17, 6358, 6432), (17, 6647, 6721), (17, 6936, 7010), (17, 7225, 7299), (17, 7514, 7588), (17, 7803, 7877), (17, 8092, 8166), (17, 8381, 8455), (17, 8670, 8744), (17, 8959, 9033), (17, 9248, 9322), (17, 9537, 9611), (17, 9826, 9900), (17, 9826, 9900), (19, 5776, 5850), (19, 6137, 6211), (19, 6498, 6572), (19, 6859, 6933), (19, 7220, 7294), (19, 7581, 7655), (19, 7942, 8016), (19, 8303, 8377), (19, 8664, 8738), (19, 9025, 9099), (19, 9386, 9460), (19, 9747, 9821), (19, 10108, 10182), (19, 10469, 10543), (19, 10830, 10904), (19, 6859, 6933), (23, 5819, 5893), (23, 6348, 6422), (23, 6877, 6951), (23, 7406, 7480), (23, 7935, 8009), (23, 8464, 8538), (23, 8993, 9067), (23, 9522, 9596), (23, 10051, 10125), (23, 10580, 10654), (29, 5887, 5961), (29, 6728, 6802), (29, 7569, 7643), (29, 8410, 8484), (29, 9251, 9325), (29, 10092, 10166), (29, 10933, 11007), (31, 5766, 5840), (31, 6727, 6801), (31, 7688, 7762), (31, 8649, 8723), (31, 9610, 9684), (31, 10571, 10645), (37, 5550, 5550), (37, 6845, 6919), (37, 8214, 8288), (37, 9583, 9657), (37, 10952, 11026), (41, 6724, 6798), (41, 8405, 8479), (41, 10086, 10160), (43, 5550, 5621), (43, 7396, 7470), (43, 9245, 9319), (43, 11094, 11099), (47, 6627, 6701), (47, 8836, 8910), (47, 11045, 11099), (53, 5618, 5692), (53, 8427, 8501), (59, 6962, 7036), (59, 10443, 10517), (61, 7442, 7516), (67, 8978, 9052), (71, 10082, 10156), (73, 10658, 10732)]

def row075_layer000_block000 : List ColouredInterval :=
  [(2, 5632, 5706), (2, 5888, 5962), (2, 6144, 6218), (2, 6400, 6474), (2, 6656, 6730), (2, 6912, 6986), (2, 7168, 7242), (2, 7424, 7498), (2, 7680, 7754), (2, 7936, 8010), (2, 8192, 8266), (2, 8448, 8522), (2, 8704, 8778)]

def row075_layer000_block001 : List ColouredInterval :=
  [(2, 5632, 5706), (2, 6144, 6218), (2, 6656, 6730), (2, 7168, 7242), (2, 7680, 7754), (2, 8192, 8266), (2, 8704, 8778), (2, 9216, 9290), (2, 9728, 9802), (2, 10240, 10314), (2, 10752, 10826), (2, 6144, 6218), (2, 7168, 7242)]

def row075_layer000_block002 : List ColouredInterval :=
  [(2, 8192, 8266), (2, 9216, 9290), (2, 10240, 10314), (2, 6144, 6218), (2, 8192, 8266), (2, 10240, 10314), (2, 8192, 8266), (2, 8192, 8266), (3, 5832, 5906), (3, 6561, 6635), (3, 7290, 7364), (3, 8019, 8093), (3, 6561, 6635)]

def row075_layer000_block003 : List ColouredInterval :=
  [(3, 8748, 8822), (3, 10935, 11009), (3, 6561, 6635), (7, 5550, 5562), (7, 5831, 5905), (7, 6174, 6248), (7, 6517, 6591), (7, 6860, 6934), (7, 7203, 7277), (7, 7546, 7620), (7, 7889, 7963), (7, 8232, 8306), (7, 8575, 8649)]

def row075_layer000_block004 : List ColouredInterval :=
  [(7, 8918, 8992), (7, 9261, 9335), (7, 9604, 9678), (7, 9947, 10021), (7, 10290, 10364), (7, 10633, 10707), (7, 10976, 11050), (7, 7203, 7277), (7, 9604, 9678), (11, 6655, 6729), (11, 7986, 8060), (11, 9317, 9391), (11, 10648, 10722)]

def row075_layer000_block005 : List ColouredInterval :=
  [(13, 5577, 5651), (13, 5746, 5820), (13, 6591, 6665), (13, 8788, 8862), (13, 10985, 11059), (17, 5550, 5565), (17, 5780, 5854), (17, 6069, 6143), (17, 6358, 6432), (17, 6647, 6721), (17, 6936, 7010), (17, 7225, 7299), (17, 7514, 7588)]

def row075_layer000_block006 : List ColouredInterval :=
  [(17, 7803, 7877), (17, 8092, 8166), (17, 8381, 8455), (17, 8670, 8744), (17, 8959, 9033), (17, 9248, 9322), (17, 9537, 9611), (17, 9826, 9900), (17, 9826, 9900), (19, 5776, 5850), (19, 6137, 6211), (19, 6498, 6572), (19, 6859, 6933)]

def row075_layer000_block007 : List ColouredInterval :=
  [(19, 7220, 7294), (19, 7581, 7655), (19, 7942, 8016), (19, 8303, 8377), (19, 8664, 8738), (19, 9025, 9099), (19, 9386, 9460), (19, 9747, 9821), (19, 10108, 10182), (19, 10469, 10543), (19, 10830, 10904), (19, 6859, 6933), (23, 5819, 5893)]

def row075_layer000_block008 : List ColouredInterval :=
  [(23, 6348, 6422), (23, 6877, 6951), (23, 7406, 7480), (23, 7935, 8009), (23, 8464, 8538), (23, 8993, 9067), (23, 9522, 9596), (23, 10051, 10125), (23, 10580, 10654), (29, 5887, 5961), (29, 6728, 6802), (29, 7569, 7643), (29, 8410, 8484)]

def row075_layer000_block009 : List ColouredInterval :=
  [(29, 9251, 9325), (29, 10092, 10166), (29, 10933, 11007), (31, 5766, 5840), (31, 6727, 6801), (31, 7688, 7762), (31, 8649, 8723), (31, 9610, 9684), (31, 10571, 10645), (37, 5550, 5550), (37, 6845, 6919), (37, 8214, 8288), (37, 9583, 9657)]

def row075_layer000_block010 : List ColouredInterval :=
  [(37, 10952, 11026), (41, 6724, 6798), (41, 8405, 8479), (41, 10086, 10160), (43, 5550, 5621), (43, 7396, 7470), (43, 9245, 9319), (43, 11094, 11099), (47, 6627, 6701), (47, 8836, 8910), (47, 11045, 11099), (53, 5618, 5692), (53, 8427, 8501)]

def row075_layer000_block011 : List ColouredInterval :=
  [(59, 6962, 7036), (59, 10443, 10517), (61, 7442, 7516), (67, 8978, 9052), (71, 10082, 10156), (73, 10658, 10732)]

def row075_layer000_chunks : List (List ColouredInterval) :=
  [row075_layer000_block000, row075_layer000_block001, row075_layer000_block002, row075_layer000_block003, row075_layer000_block004, row075_layer000_block005, row075_layer000_block006, row075_layer000_block007, row075_layer000_block008, row075_layer000_block009, row075_layer000_block010, row075_layer000_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_arithmetic : LayerArithmeticValid row075.height { lower := 5550, upper := 11100, M := 34 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_enumeration :
    activePowerIntervalList 75 34 5550 11100 = row075_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs000 :
    row075_layer000_block000.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs001 :
    row075_layer000_block001.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs002 :
    row075_layer000_block002.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs003 :
    row075_layer000_block003.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs004 :
    row075_layer000_block004.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs005 :
    row075_layer000_block005.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs006 :
    row075_layer000_block006.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs006
