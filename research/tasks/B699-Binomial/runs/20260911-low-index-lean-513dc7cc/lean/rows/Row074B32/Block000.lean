import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row074_height : HeightCertificateDatum := { i := 74, r := 24, s := 51, n0Power10 := 13 }

def row074_goods : List GoodSegment := [
  { lower := 150, upper := 222, witness := RowWitness.topPrime 149 },
  { lower := 223, upper := 296, witness := RowWitness.topPrime 223 },
  { lower := 297, upper := 366, witness := RowWitness.topPrime 293 },
  { lower := 367, upper := 440, witness := RowWitness.topPrime 367 },
  { lower := 441, upper := 512, witness := RowWitness.topPrime 439 },
  { lower := 513, upper := 582, witness := RowWitness.topPrime 509 },
  { lower := 583, upper := 650, witness := RowWitness.topPrime 577 },
  { lower := 651, upper := 720, witness := RowWitness.topPrime 647 },
  { lower := 721, upper := 792, witness := RowWitness.topPrime 719 },
  { lower := 793, upper := 860, witness := RowWitness.topPrime 787 },
  { lower := 861, upper := 932, witness := RowWitness.topPrime 859 },
  { lower := 933, upper := 1002, witness := RowWitness.topPrime 929 },
  { lower := 1003, upper := 1070, witness := RowWitness.topPrime 997 },
  { lower := 1071, upper := 1142, witness := RowWitness.topPrime 1069 },
  { lower := 1143, upper := 1202, witness := RowWitness.topPrime 1129 },
  { lower := 1203, upper := 1274, witness := RowWitness.topPrime 1201 },
  { lower := 1275, upper := 1332, witness := RowWitness.topPrime 1259 },
  { lower := 1333, upper := 1400, witness := RowWitness.topPrime 1327 },
  { lower := 1401, upper := 1472, witness := RowWitness.topPrime 1399 },
  { lower := 1473, upper := 1544, witness := RowWitness.topPrime 1471 },
  { lower := 1545, upper := 1616, witness := RowWitness.topPrime 1543 },
  { lower := 1617, upper := 1686, witness := RowWitness.topPrime 1613 },
  { lower := 1687, upper := 1742, witness := RowWitness.topPrime 1669 },
  { lower := 1743, upper := 1814, witness := RowWitness.topPrime 1741 },
  { lower := 1815, upper := 1884, witness := RowWitness.topPrime 1811 },
  { lower := 1885, upper := 1952, witness := RowWitness.topPrime 1879 },
  { lower := 1953, upper := 2024, witness := RowWitness.topPrime 1951 },
  { lower := 2025, upper := 2090, witness := RowWitness.topPrime 2017 },
  { lower := 2091, upper := 2162, witness := RowWitness.topPrime 2089 },
  { lower := 2163, upper := 2234, witness := RowWitness.topPrime 2161 },
  { lower := 2235, upper := 2294, witness := RowWitness.topPrime 2221 },
  { lower := 2295, upper := 2366, witness := RowWitness.topPrime 2293 },
  { lower := 2367, upper := 2430, witness := RowWitness.topPrime 2357 },
  { lower := 2431, upper := 2496, witness := RowWitness.topPrime 2423 },
  { lower := 2497, upper := 2550, witness := RowWitness.topPrime 2477 },
  { lower := 2551, upper := 2624, witness := RowWitness.topPrime 2551 },
  { lower := 2625, upper := 2694, witness := RowWitness.topPrime 2621 },
  { lower := 2695, upper := 2766, witness := RowWitness.topPrime 2693 },
  { lower := 2767, upper := 2840, witness := RowWitness.topPrime 2767 },
  { lower := 2841, upper := 2910, witness := RowWitness.topPrime 2837 },
  { lower := 2911, upper := 2982, witness := RowWitness.topPrime 2909 },
  { lower := 2983, upper := 3044, witness := RowWitness.topPrime 2971 },
  { lower := 3045, upper := 3114, witness := RowWitness.topPrime 3041 },
  { lower := 3115, upper := 3182, witness := RowWitness.topPrime 3109 },
  { lower := 3183, upper := 3254, witness := RowWitness.topPrime 3181 },
  { lower := 3255, upper := 3326, witness := RowWitness.topPrime 3253 },
  { lower := 3327, upper := 3396, witness := RowWitness.topPrime 3323 },
  { lower := 3397, upper := 3464, witness := RowWitness.topPrime 3391 },
  { lower := 3465, upper := 3536, witness := RowWitness.topPrime 3463 },
  { lower := 3537, upper := 3606, witness := RowWitness.topPrime 3533 },
  { lower := 3607, upper := 3680, witness := RowWitness.topPrime 3607 },
  { lower := 3681, upper := 3750, witness := RowWitness.topPrime 3677 },
  { lower := 3751, upper := 3812, witness := RowWitness.topPrime 3739 },
  { lower := 3813, upper := 3876, witness := RowWitness.topPrime 3803 },
  { lower := 3877, upper := 3950, witness := RowWitness.topPrime 3877 },
  { lower := 3951, upper := 4020, witness := RowWitness.topPrime 3947 },
  { lower := 4021, upper := 4094, witness := RowWitness.topPrime 4021 },
  { lower := 4095, upper := 4166, witness := RowWitness.topPrime 4093 },
  { lower := 4167, upper := 4232, witness := RowWitness.topPrime 4159 },
  { lower := 4233, upper := 4304, witness := RowWitness.topPrime 4231 },
  { lower := 4305, upper := 4370, witness := RowWitness.topPrime 4297 },
  { lower := 4371, upper := 4436, witness := RowWitness.topPrime 4363 },
  { lower := 4437, upper := 4496, witness := RowWitness.topPrime 4423 },
  { lower := 4497, upper := 4566, witness := RowWitness.topPrime 4493 },
  { lower := 4567, upper := 4640, witness := RowWitness.topPrime 4567 },
  { lower := 4641, upper := 4712, witness := RowWitness.topPrime 4639 },
  { lower := 4713, upper := 4776, witness := RowWitness.topPrime 4703 },
  { lower := 4777, upper := 4832, witness := RowWitness.topPrime 4759 },
  { lower := 4833, upper := 4904, witness := RowWitness.topPrime 4831 },
  { lower := 4905, upper := 4976, witness := RowWitness.topPrime 4903 },
  { lower := 4977, upper := 5046, witness := RowWitness.topPrime 4973 },
  { lower := 5047, upper := 5112, witness := RowWitness.topPrime 5039 },
  { lower := 5113, upper := 5186, witness := RowWitness.topPrime 5113 },
  { lower := 5187, upper := 5252, witness := RowWitness.topPrime 5179 },
  { lower := 5253, upper := 5310, witness := RowWitness.topPrime 5237 },
  { lower := 5311, upper := 5382, witness := RowWitness.topPrime 5309 },
  { lower := 5383, upper := 5402, witness := RowWitness.topPrime 5381 },
  { lower := 5408, upper := 5480, witness := RowWitness.topPrime 5407 },
  { lower := 5481, upper := 5481, witness := RowWitness.topPrime 5479 },
  { lower := 5488, upper := 5488, witness := RowWitness.topPrime 5483 },
  { lower := 5491, upper := 5556, witness := RowWitness.topPrime 5483 },
  { lower := 5557, upper := 5564, witness := RowWitness.topPrime 5557 },
  { lower := 5577, upper := 5646, witness := RowWitness.topPrime 5573 },
  { lower := 5647, upper := 5698, witness := RowWitness.topPrime 5647 },
  { lower := 5766, upper := 5822, witness := RowWitness.topPrime 5749 },
  { lower := 5823, upper := 5894, witness := RowWitness.topPrime 5821 },
  { lower := 5895, upper := 5905, witness := RowWitness.topPrime 5881 },
  { lower := 5915, upper := 5960, witness := RowWitness.topPrime 5903 },
  { lower := 6075, upper := 6146, witness := RowWitness.topPrime 6073 },
  { lower := 6147, upper := 6216, witness := RowWitness.topPrime 6143 },
  { lower := 6217, upper := 6217, witness := RowWitness.topPrime 6217 },
  { lower := 6318, upper := 6323, witness := RowWitness.topPrime 6317 },
  { lower := 6348, upper := 6416, witness := RowWitness.topPrime 6343 },
  { lower := 6417, upper := 6421, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6564, witness := RowWitness.topPrime 6491 },
  { lower := 6565, upper := 6636, witness := RowWitness.topPrime 6563 },
  { lower := 6637, upper := 6710, witness := RowWitness.topPrime 6637 },
  { lower := 6711, upper := 6782, witness := RowWitness.topPrime 6709 },
  { lower := 6783, upper := 6800, witness := RowWitness.topPrime 6781 },
  { lower := 6859, upper := 6930, witness := RowWitness.topPrime 6857 },
  { lower := 6931, upper := 6950, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7009, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7266, witness := RowWitness.topPrime 7193 },
  { lower := 7267, upper := 7298, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7466, witness := RowWitness.topPrime 7393 },
  { lower := 7467, upper := 7479, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7572, witness := RowWitness.topPrime 7499 },
  { lower := 7573, upper := 7642, witness := RowWitness.topPrime 7573 },
  { lower := 7688, upper := 7753, witness := RowWitness.topPrime 7687 },
  { lower := 7803, upper := 7849, witness := RowWitness.topPrime 7793 },
  { lower := 7935, upper := 8006, witness := RowWitness.topPrime 7933 },
  { lower := 8007, upper := 8015, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8059, witness := RowWitness.topPrime 8017 },
  { lower := 8092, upper := 8092, witness := RowWitness.topPrime 8089 },
  { lower := 8125, upper := 8165, witness := RowWitness.topPrime 8123 },
  { lower := 8192, upper := 8198, witness := RowWitness.topPrime 8191 },
  { lower := 8232, upper := 8304, witness := RowWitness.topPrime 8231 },
  { lower := 8305, upper := 8335, witness := RowWitness.topPrime 8297 },
  { lower := 8405, upper := 8462, witness := RowWitness.topPrime 8389 },
  { lower := 8463, upper := 8500, witness := RowWitness.topPrime 8461 },
  { lower := 8505, upper := 8537, witness := RowWitness.topPrime 8501 },
  { lower := 8575, upper := 8578, witness := RowWitness.topPrime 8573 },
  { lower := 8664, upper := 8736, witness := RowWitness.topPrime 8663 },
  { lower := 8737, upper := 8743, witness := RowWitness.topPrime 8737 },
  { lower := 8748, upper := 8820, witness := RowWitness.topPrime 8747 },
  { lower := 8821, upper := 8823, witness := RowWitness.topPrime 8821 },
  { lower := 8836, upper := 8861, witness := RowWitness.topPrime 8831 },
  { lower := 8959, upper := 9024, witness := RowWitness.topPrime 8951 },
  { lower := 9025, upper := 9066, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9314, witness := RowWitness.topPrime 9241 },
  { lower := 9315, upper := 9334, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9444, witness := RowWitness.topPrime 9371 },
  { lower := 9445, upper := 9448, witness := RowWitness.topPrime 9439 },
  { lower := 9522, upper := 9594, witness := RowWitness.topPrime 9521 },
  { lower := 9595, upper := 9595, witness := RowWitness.topPrime 9587 },
  { lower := 9604, upper := 9674, witness := RowWitness.topPrime 9601 },
  { lower := 9675, upper := 9677, witness := RowWitness.topPrime 9661 },
  { lower := 10000, upper := 10020, witness := RowWitness.topPrime 9973 },
  { lower := 10051, upper := 10073, witness := RowWitness.topPrime 10039 },
  { lower := 10082, upper := 10152, witness := RowWitness.topPrime 10079 },
  { lower := 10153, upper := 10181, witness := RowWitness.topPrime 10151 },
  { lower := 10240, upper := 10279, witness := RowWitness.topPrime 10223 },
  { lower := 10290, upper := 10313, witness := RowWitness.topPrime 10289 },
  { lower := 10469, upper := 10516, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10640, witness := RowWitness.topPrime 10567 },
  { lower := 10641, upper := 10712, witness := RowWitness.topPrime 10639 },
  { lower := 10713, upper := 10721, witness := RowWitness.topPrime 10711 },
  { lower := 10935, upper := 10982, witness := RowWitness.topPrime 10909 },
  { lower := 10983, upper := 11008, witness := RowWitness.topPrime 10979 },
  { lower := 11045, upper := 11058, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11166, witness := RowWitness.topPrime 11093 },
  { lower := 11167, upper := 11182, witness := RowWitness.topPrime 11161 },
  { lower := 11191, upper := 11250, witness := RowWitness.topPrime 11177 },
  { lower := 11251, upper := 11323, witness := RowWitness.topPrime 11251 },
  { lower := 11664, upper := 11711, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11816, witness := RowWitness.topPrime 11743 },
  { lower := 11817, upper := 11840, witness := RowWitness.topPrime 11813 },
  { lower := 12005, upper := 12052, witness := RowWitness.topPrime 11987 },
  { lower := 12500, upper := 12566, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13194, witness := RowWitness.topPrime 13121 },
  { lower := 13195, upper := 13198, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13292, witness := RowWitness.topPrime 13219 },
  { lower := 13293, upper := 13298, witness := RowWitness.topPrime 13291 },
  { lower := 13310, upper := 13382, witness := RowWitness.topPrime 13309 },
  { lower := 13383, upper := 13383, witness := RowWitness.topPrime 13381 },
  { lower := 13454, upper := 13524, witness := RowWitness.topPrime 13451 },
  { lower := 13525, upper := 13529, witness := RowWitness.topPrime 13523 },
  { lower := 13750, upper := 13802, witness := RowWitness.topPrime 13729 },
  { lower := 13803, upper := 13823, witness := RowWitness.topPrime 13799 },
  { lower := 13924, upper := 13924, witness := RowWitness.topPrime 13921 },
  { lower := 14297, upper := 14366, witness := RowWitness.topPrime 14293 },
  { lower := 14367, upper := 14370, witness := RowWitness.topPrime 14347 },
  { lower := 14375, upper := 14442, witness := RowWitness.topPrime 14369 },
  { lower := 14443, upper := 14479, witness := RowWitness.topPrime 14437 },
  { lower := 14641, upper := 14653, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14856, witness := RowWitness.topPrime 14783 },
  { lower := 14857, upper := 14865, witness := RowWitness.topPrime 14851 },
  { lower := 14884, upper := 14885, witness := RowWitness.topPrime 14879 },
  { lower := 15129, upper := 15194, witness := RowWitness.topPrime 15121 },
  { lower := 15195, upper := 15202, witness := RowWitness.topPrime 15193 },
  { lower := 15341, upper := 15404, witness := RowWitness.topPrime 15331 },
  { lower := 15405, upper := 15449, witness := RowWitness.topPrime 15401 },
  { lower := 15979, upper := 16046, witness := RowWitness.topPrime 15973 },
  { lower := 16047, upper := 16060, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16454, witness := RowWitness.topPrime 16381 },
  { lower := 16455, upper := 16457, witness := RowWitness.topPrime 16453 },
  { lower := 16807, upper := 16860, witness := RowWitness.topPrime 16787 },
  { lower := 16861, upper := 16916, witness := RowWitness.topPrime 16843 },
  { lower := 16917, upper := 16927, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17371, witness := RowWitness.topPrime 17299 },
  { lower := 17500, upper := 17569, witness := RowWitness.topPrime 17497 },
  { lower := 17672, upper := 17734, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18298, witness := RowWitness.topPrime 18257 },
  { lower := 18490, upper := 18554, witness := RowWitness.topPrime 18481 },
  { lower := 18555, upper := 18564, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18678, witness := RowWitness.topPrime 18617 },
  { lower := 19220, upper := 19281, witness := RowWitness.topPrime 19219 },
  { lower := 19375, upper := 19416, witness := RowWitness.topPrime 19373 },
  { lower := 19663, upper := 19734, witness := RowWitness.topPrime 19661 },
  { lower := 19735, upper := 19736, witness := RowWitness.topPrime 19727 },
  { lower := 20172, upper := 20234, witness := RowWitness.topPrime 20161 },
  { lower := 20235, upper := 20254, witness := RowWitness.topPrime 20233 },
  { lower := 20412, upper := 20412, witness := RowWitness.topPrime 20411 },
  { lower := 20480, upper := 20485, witness := RowWitness.topPrime 20479 },
  { lower := 21142, upper := 21212, witness := RowWitness.topPrime 21139 },
  { lower := 21213, upper := 21214, witness := RowWitness.topPrime 21211 },
  { lower := 21316, upper := 21369, witness := RowWitness.topPrime 21313 },
  { lower := 21866, upper := 21936, witness := RowWitness.topPrime 21863 },
  { lower := 21937, upper := 21943, witness := RowWitness.topPrime 21937 },
  { lower := 22103, upper := 22163, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22518, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22545, witness := RowWitness.topPrime 22511 },
  { lower := 23548, upper := 23607, witness := RowWitness.topPrime 23539 },
  { lower := 24010, upper := 24080, witness := RowWitness.topPrime 24007 },
  { lower := 24081, upper := 24110, witness := RowWitness.topPrime 24077 },
  { lower := 24334, upper := 24402, witness := RowWitness.topPrime 24329 },
  { lower := 24403, upper := 24440, witness := RowWitness.topPrime 24391 },
  { lower := 24576, upper := 24638, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25059, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25262, witness := RowWitness.topPrime 25189 },
  { lower := 25263, upper := 25278, witness := RowWitness.topPrime 25261 },
  { lower := 25281, upper := 25334, witness := RowWitness.topPrime 25261 },
  { lower := 25335, upper := 25354, witness := RowWitness.topPrime 25321 },
  { lower := 25947, upper := 25959, witness := RowWitness.topPrime 25943 },
  { lower := 26411, upper := 26437, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26670, witness := RowWitness.topPrime 26597 },
  { lower := 26671, upper := 26697, witness := RowWitness.topPrime 26669 },
  { lower := 26908, upper := 26976, witness := RowWitness.topPrime 26903 },
  { lower := 26977, upper := 26981, witness := RowWitness.topPrime 26959 },
  { lower := 28125, upper := 28163, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28634, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28745, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29841, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30319, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30666, witness := RowWitness.topPrime 30593 },
  { lower := 30667, upper := 30686, witness := RowWitness.topPrime 30661 },
  { lower := 30926, upper := 30972, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31286, witness := RowWitness.topPrime 31249 },
  { lower := 31433, upper := 31470, witness := RowWitness.topPrime 31397 },
  { lower := 31471, upper := 31496, witness := RowWitness.topPrime 31469 },
  { lower := 31944, upper := 31980, witness := RowWitness.topPrime 31907 },
  { lower := 31981, upper := 32017, witness := RowWitness.topPrime 31981 },
  { lower := 32805, upper := 32841, witness := RowWitness.topPrime 32803 },
  { lower := 33282, upper := 33320, witness := RowWitness.topPrime 33247 },
  { lower := 33321, upper := 33348, witness := RowWitness.topPrime 33317 },
  { lower := 33620, upper := 33687, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34448, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35204, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35364, witness := RowWitness.topPrime 35291 },
  { lower := 35365, upper := 35374, witness := RowWitness.topPrime 35363 },
  { lower := 35937, upper := 35985, witness := RowWitness.topPrime 35933 },
  { lower := 36517, upper := 36570, witness := RowWitness.topPrime 36497 },
  { lower := 36571, upper := 36574, witness := RowWitness.topPrime 36571 },
  { lower := 36982, upper := 37052, witness := RowWitness.topPrime 36979 },
  { lower := 37053, upper := 37053, witness := RowWitness.topPrime 37049 },
  { lower := 37210, upper := 37252, witness := RowWitness.topPrime 37201 },
  { lower := 37268, upper := 37283, witness := RowWitness.topPrime 37253 },
  { lower := 37303, upper := 37341, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37376, witness := RowWitness.topPrime 37339 },
  { lower := 37553, upper := 37573, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39396, witness := RowWitness.topPrime 39323 },
  { lower := 39397, upper := 39399, witness := RowWitness.topPrime 39397 },
  { lower := 40344, upper := 40416, witness := RowWitness.topPrime 40343 },
  { lower := 40417, upper := 40417, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40698, witness := RowWitness.topPrime 40639 },
  { lower := 40960, upper := 41004, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41816, witness := RowWitness.topPrime 41771 },
  { lower := 42025, upper := 42044, witness := RowWitness.topPrime 42023 },
  { lower := 43750, upper := 43794, witness := RowWitness.topPrime 43721 },
  { lower := 43795, upper := 43813, witness := RowWitness.topPrime 43793 },
  { lower := 43940, upper := 43996, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44253, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44963, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48054, witness := RowWitness.topPrime 47981 },
  { lower := 48055, upper := 48086, witness := RowWitness.topPrime 48049 },
  { lower := 48373, upper := 48407, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48671, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48741, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48807, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49203, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50483, witness := RowWitness.topPrime 50417 },
  { lower := 50562, upper := 50604, witness := RowWitness.topPrime 50551 },
  { lower := 54925, upper := 54945, witness := RowWitness.topPrime 54919 },
  { lower := 55225, upper := 55292, witness := RowWitness.topPrime 55219 },
  { lower := 55293, upper := 55296, witness := RowWitness.topPrime 55291 },
  { lower := 56250, upper := 56253, witness := RowWitness.topPrime 56249 },
  { lower := 58619, upper := 58637, witness := RowWitness.topPrime 58613 },
  { lower := 58989, upper := 59029, witness := RowWitness.topPrime 58979 },
  { lower := 59049, upper := 59062, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59609, witness := RowWitness.topPrime 59581 },
  { lower := 61798, upper := 61804, witness := RowWitness.topPrime 61781 },
  { lower := 65536, upper := 65594, witness := RowWitness.topPrime 65521 },
  { lower := 65595, upper := 65606, witness := RowWitness.topPrime 65587 },
  { lower := 65625, upper := 65683, witness := RowWitness.topPrime 65617 },
  { lower := 68782, upper := 68823, witness := RowWitness.topPrime 68777 },
  { lower := 71875, upper := 71897, witness := RowWitness.topPrime 71867 },
  { lower := 73167, upper := 73174, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73240, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73768, witness := RowWitness.topPrime 73727 },
  { lower := 78141, upper := 78198, witness := RowWitness.topPrime 78139 },
  { lower := 81920, upper := 81935, witness := RowWitness.topPrime 81919 },
  { lower := 83544, upper := 83594, witness := RowWitness.topPrime 83537 },
  { lower := 85291, upper := 85332, witness := RowWitness.topPrime 85259 },
  { lower := 85333, upper := 85364, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85756, witness := RowWitness.topPrime 85691 },
  { lower := 98304, upper := 98333, witness := RowWitness.topPrime 98299 },
  { lower := 100842, upper := 100893, witness := RowWitness.topPrime 100829 },
  { lower := 137842, upper := 137854, witness := RowWitness.topPrime 137831 },
  { lower := 327701, upper := 327753, witness := RowWitness.topPrime 327689 }
]

def row074_layers : List CoverLayer := [
  { lower := 5402, upper := 10804, M := 35 },
  { lower := 10804, upper := 21608, M := 31 },
  { lower := 21608, upper := 43216, M := 28 },
  { lower := 43216, upper := 86432, M := 25 },
  { lower := 86432, upper := 172864, M := 22 },
  { lower := 172864, upper := 345728, M := 20 },
  { lower := 345728, upper := 691456, M := 18 },
  { lower := 691456, upper := 1382912, M := 16 },
  { lower := 1382912, upper := 2765824, M := 14 },
  { lower := 2765824, upper := 5531648, M := 13 },
  { lower := 5531648, upper := 11063296, M := 12 },
  { lower := 11063296, upper := 22126592, M := 10 },
  { lower := 22126592, upper := 44253184, M := 9 },
  { lower := 44253184, upper := 88506368, M := 8 },
  { lower := 88506368, upper := 177012736, M := 8 },
  { lower := 177012736, upper := 354025472, M := 7 },
  { lower := 354025472, upper := 708050944, M := 6 },
  { lower := 708050944, upper := 1416101888, M := 5 },
  { lower := 1416101888, upper := 2832203776, M := 5 },
  { lower := 2832203776, upper := 5664407552, M := 4 },
  { lower := 5664407552, upper := 11328815104, M := 4 },
  { lower := 11328815104, upper := 22657630208, M := 4 },
  { lower := 22657630208, upper := 45315260416, M := 3 },
  { lower := 45315260416, upper := 90630520832, M := 3 },
  { lower := 90630520832, upper := 181261041664, M := 3 },
  { lower := 181261041664, upper := 362522083328, M := 2 },
  { lower := 362522083328, upper := 725044166656, M := 2 },
  { lower := 725044166656, upper := 1450088333312, M := 2 },
  { lower := 1450088333312, upper := 2900176666624, M := 2 },
  { lower := 2900176666624, upper := 5800353333248, M := 2 },
  { lower := 5800353333248, upper := 10000000000000, M := 2 }
]

def row074 : FiniteCoverRow := {
  height := row074_height,
  goods := row074_goods,
  layers := row074_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good000_checked :
    goodSegmentCheck 74 24 51
      { lower := 150, upper := 222, witness := RowWitness.topPrime 149 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good001_checked :
    goodSegmentCheck 74 24 51
      { lower := 223, upper := 296, witness := RowWitness.topPrime 223 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good002_checked :
    goodSegmentCheck 74 24 51
      { lower := 297, upper := 366, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good003_checked :
    goodSegmentCheck 74 24 51
      { lower := 367, upper := 440, witness := RowWitness.topPrime 367 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good004_checked :
    goodSegmentCheck 74 24 51
      { lower := 441, upper := 512, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good005_checked :
    goodSegmentCheck 74 24 51
      { lower := 513, upper := 582, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good006_checked :
    goodSegmentCheck 74 24 51
      { lower := 583, upper := 650, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good007_checked :
    goodSegmentCheck 74 24 51
      { lower := 651, upper := 720, witness := RowWitness.topPrime 647 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good008_checked :
    goodSegmentCheck 74 24 51
      { lower := 721, upper := 792, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good009_checked :
    goodSegmentCheck 74 24 51
      { lower := 793, upper := 860, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good010_checked :
    goodSegmentCheck 74 24 51
      { lower := 861, upper := 932, witness := RowWitness.topPrime 859 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good011_checked :
    goodSegmentCheck 74 24 51
      { lower := 933, upper := 1002, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good012_checked :
    goodSegmentCheck 74 24 51
      { lower := 1003, upper := 1070, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good013_checked :
    goodSegmentCheck 74 24 51
      { lower := 1071, upper := 1142, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good014_checked :
    goodSegmentCheck 74 24 51
      { lower := 1143, upper := 1202, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good015_checked :
    goodSegmentCheck 74 24 51
      { lower := 1203, upper := 1274, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good016_checked :
    goodSegmentCheck 74 24 51
      { lower := 1275, upper := 1332, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good017_checked :
    goodSegmentCheck 74 24 51
      { lower := 1333, upper := 1400, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good018_checked :
    goodSegmentCheck 74 24 51
      { lower := 1401, upper := 1472, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good019_checked :
    goodSegmentCheck 74 24 51
      { lower := 1473, upper := 1544, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good020_checked :
    goodSegmentCheck 74 24 51
      { lower := 1545, upper := 1616, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good021_checked :
    goodSegmentCheck 74 24 51
      { lower := 1617, upper := 1686, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good022_checked :
    goodSegmentCheck 74 24 51
      { lower := 1687, upper := 1742, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good023_checked :
    goodSegmentCheck 74 24 51
      { lower := 1743, upper := 1814, witness := RowWitness.topPrime 1741 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good024_checked :
    goodSegmentCheck 74 24 51
      { lower := 1815, upper := 1884, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good025_checked :
    goodSegmentCheck 74 24 51
      { lower := 1885, upper := 1952, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good026_checked :
    goodSegmentCheck 74 24 51
      { lower := 1953, upper := 2024, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good027_checked :
    goodSegmentCheck 74 24 51
      { lower := 2025, upper := 2090, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good028_checked :
    goodSegmentCheck 74 24 51
      { lower := 2091, upper := 2162, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good029_checked :
    goodSegmentCheck 74 24 51
      { lower := 2163, upper := 2234, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good030_checked :
    goodSegmentCheck 74 24 51
      { lower := 2235, upper := 2294, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good031_checked :
    goodSegmentCheck 74 24 51
      { lower := 2295, upper := 2366, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good032_checked :
    goodSegmentCheck 74 24 51
      { lower := 2367, upper := 2430, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good033_checked :
    goodSegmentCheck 74 24 51
      { lower := 2431, upper := 2496, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good034_checked :
    goodSegmentCheck 74 24 51
      { lower := 2497, upper := 2550, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good035_checked :
    goodSegmentCheck 74 24 51
      { lower := 2551, upper := 2624, witness := RowWitness.topPrime 2551 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good036_checked :
    goodSegmentCheck 74 24 51
      { lower := 2625, upper := 2694, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good037_checked :
    goodSegmentCheck 74 24 51
      { lower := 2695, upper := 2766, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good038_checked :
    goodSegmentCheck 74 24 51
      { lower := 2767, upper := 2840, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good039_checked :
    goodSegmentCheck 74 24 51
      { lower := 2841, upper := 2910, witness := RowWitness.topPrime 2837 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good040_checked :
    goodSegmentCheck 74 24 51
      { lower := 2911, upper := 2982, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good041_checked :
    goodSegmentCheck 74 24 51
      { lower := 2983, upper := 3044, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good042_checked :
    goodSegmentCheck 74 24 51
      { lower := 3045, upper := 3114, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good043_checked :
    goodSegmentCheck 74 24 51
      { lower := 3115, upper := 3182, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good044_checked :
    goodSegmentCheck 74 24 51
      { lower := 3183, upper := 3254, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good045_checked :
    goodSegmentCheck 74 24 51
      { lower := 3255, upper := 3326, witness := RowWitness.topPrime 3253 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good046_checked :
    goodSegmentCheck 74 24 51
      { lower := 3327, upper := 3396, witness := RowWitness.topPrime 3323 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good047_checked :
    goodSegmentCheck 74 24 51
      { lower := 3397, upper := 3464, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good048_checked :
    goodSegmentCheck 74 24 51
      { lower := 3465, upper := 3536, witness := RowWitness.topPrime 3463 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good049_checked :
    goodSegmentCheck 74 24 51
      { lower := 3537, upper := 3606, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good050_checked :
    goodSegmentCheck 74 24 51
      { lower := 3607, upper := 3680, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good051_checked :
    goodSegmentCheck 74 24 51
      { lower := 3681, upper := 3750, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good052_checked :
    goodSegmentCheck 74 24 51
      { lower := 3751, upper := 3812, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good053_checked :
    goodSegmentCheck 74 24 51
      { lower := 3813, upper := 3876, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good054_checked :
    goodSegmentCheck 74 24 51
      { lower := 3877, upper := 3950, witness := RowWitness.topPrime 3877 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good055_checked :
    goodSegmentCheck 74 24 51
      { lower := 3951, upper := 4020, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good056_checked :
    goodSegmentCheck 74 24 51
      { lower := 4021, upper := 4094, witness := RowWitness.topPrime 4021 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good057_checked :
    goodSegmentCheck 74 24 51
      { lower := 4095, upper := 4166, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good058_checked :
    goodSegmentCheck 74 24 51
      { lower := 4167, upper := 4232, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good059_checked :
    goodSegmentCheck 74 24 51
      { lower := 4233, upper := 4304, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good060_checked :
    goodSegmentCheck 74 24 51
      { lower := 4305, upper := 4370, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good061_checked :
    goodSegmentCheck 74 24 51
      { lower := 4371, upper := 4436, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good062_checked :
    goodSegmentCheck 74 24 51
      { lower := 4437, upper := 4496, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good063_checked :
    goodSegmentCheck 74 24 51
      { lower := 4497, upper := 4566, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good064_checked :
    goodSegmentCheck 74 24 51
      { lower := 4567, upper := 4640, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good065_checked :
    goodSegmentCheck 74 24 51
      { lower := 4641, upper := 4712, witness := RowWitness.topPrime 4639 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good066_checked :
    goodSegmentCheck 74 24 51
      { lower := 4713, upper := 4776, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good067_checked :
    goodSegmentCheck 74 24 51
      { lower := 4777, upper := 4832, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good068_checked :
    goodSegmentCheck 74 24 51
      { lower := 4833, upper := 4904, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good069_checked :
    goodSegmentCheck 74 24 51
      { lower := 4905, upper := 4976, witness := RowWitness.topPrime 4903 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good070_checked :
    goodSegmentCheck 74 24 51
      { lower := 4977, upper := 5046, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good071_checked :
    goodSegmentCheck 74 24 51
      { lower := 5047, upper := 5112, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good072_checked :
    goodSegmentCheck 74 24 51
      { lower := 5113, upper := 5186, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good073_checked :
    goodSegmentCheck 74 24 51
      { lower := 5187, upper := 5252, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good074_checked :
    goodSegmentCheck 74 24 51
      { lower := 5253, upper := 5310, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good075_checked :
    goodSegmentCheck 74 24 51
      { lower := 5311, upper := 5382, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good076_checked :
    goodSegmentCheck 74 24 51
      { lower := 5383, upper := 5402, witness := RowWitness.topPrime 5381 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good077_checked :
    goodSegmentCheck 74 24 51
      { lower := 5408, upper := 5480, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good078_checked :
    goodSegmentCheck 74 24 51
      { lower := 5481, upper := 5481, witness := RowWitness.topPrime 5479 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good079_checked :
    goodSegmentCheck 74 24 51
      { lower := 5488, upper := 5488, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good080_checked :
    goodSegmentCheck 74 24 51
      { lower := 5491, upper := 5556, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good081_checked :
    goodSegmentCheck 74 24 51
      { lower := 5557, upper := 5564, witness := RowWitness.topPrime 5557 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good082_checked :
    goodSegmentCheck 74 24 51
      { lower := 5577, upper := 5646, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good083_checked :
    goodSegmentCheck 74 24 51
      { lower := 5647, upper := 5698, witness := RowWitness.topPrime 5647 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good084_checked :
    goodSegmentCheck 74 24 51
      { lower := 5766, upper := 5822, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good085_checked :
    goodSegmentCheck 74 24 51
      { lower := 5823, upper := 5894, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good086_checked :
    goodSegmentCheck 74 24 51
      { lower := 5895, upper := 5905, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good087_checked :
    goodSegmentCheck 74 24 51
      { lower := 5915, upper := 5960, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good088_checked :
    goodSegmentCheck 74 24 51
      { lower := 6075, upper := 6146, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good089_checked :
    goodSegmentCheck 74 24 51
      { lower := 6147, upper := 6216, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good090_checked :
    goodSegmentCheck 74 24 51
      { lower := 6217, upper := 6217, witness := RowWitness.topPrime 6217 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good091_checked :
    goodSegmentCheck 74 24 51
      { lower := 6318, upper := 6323, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good092_checked :
    goodSegmentCheck 74 24 51
      { lower := 6348, upper := 6416, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good093_checked :
    goodSegmentCheck 74 24 51
      { lower := 6417, upper := 6421, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good094_checked :
    goodSegmentCheck 74 24 51
      { lower := 6517, upper := 6564, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good095_checked :
    goodSegmentCheck 74 24 51
      { lower := 6565, upper := 6636, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good096_checked :
    goodSegmentCheck 74 24 51
      { lower := 6637, upper := 6710, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good097_checked :
    goodSegmentCheck 74 24 51
      { lower := 6711, upper := 6782, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good098_checked :
    goodSegmentCheck 74 24 51
      { lower := 6783, upper := 6800, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good099_checked :
    goodSegmentCheck 74 24 51
      { lower := 6859, upper := 6930, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good100_checked :
    goodSegmentCheck 74 24 51
      { lower := 6931, upper := 6950, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good101_checked :
    goodSegmentCheck 74 24 51
      { lower := 6962, upper := 7009, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good102_checked :
    goodSegmentCheck 74 24 51
      { lower := 7203, upper := 7266, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good103_checked :
    goodSegmentCheck 74 24 51
      { lower := 7267, upper := 7298, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good104_checked :
    goodSegmentCheck 74 24 51
      { lower := 7406, upper := 7466, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good105_checked :
    goodSegmentCheck 74 24 51
      { lower := 7467, upper := 7479, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good106_checked :
    goodSegmentCheck 74 24 51
      { lower := 7500, upper := 7572, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good107_checked :
    goodSegmentCheck 74 24 51
      { lower := 7573, upper := 7642, witness := RowWitness.topPrime 7573 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good108_checked :
    goodSegmentCheck 74 24 51
      { lower := 7688, upper := 7753, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good109_checked :
    goodSegmentCheck 74 24 51
      { lower := 7803, upper := 7849, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good110_checked :
    goodSegmentCheck 74 24 51
      { lower := 7935, upper := 8006, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good111_checked :
    goodSegmentCheck 74 24 51
      { lower := 8007, upper := 8015, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good112_checked :
    goodSegmentCheck 74 24 51
      { lower := 8019, upper := 8059, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good113_checked :
    goodSegmentCheck 74 24 51
      { lower := 8092, upper := 8092, witness := RowWitness.topPrime 8089 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good114_checked :
    goodSegmentCheck 74 24 51
      { lower := 8125, upper := 8165, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good115_checked :
    goodSegmentCheck 74 24 51
      { lower := 8192, upper := 8198, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good116_checked :
    goodSegmentCheck 74 24 51
      { lower := 8232, upper := 8304, witness := RowWitness.topPrime 8231 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good117_checked :
    goodSegmentCheck 74 24 51
      { lower := 8305, upper := 8335, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good118_checked :
    goodSegmentCheck 74 24 51
      { lower := 8405, upper := 8462, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good119_checked :
    goodSegmentCheck 74 24 51
      { lower := 8463, upper := 8500, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good120_checked :
    goodSegmentCheck 74 24 51
      { lower := 8505, upper := 8537, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good121_checked :
    goodSegmentCheck 74 24 51
      { lower := 8575, upper := 8578, witness := RowWitness.topPrime 8573 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good122_checked :
    goodSegmentCheck 74 24 51
      { lower := 8664, upper := 8736, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good123_checked :
    goodSegmentCheck 74 24 51
      { lower := 8737, upper := 8743, witness := RowWitness.topPrime 8737 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good124_checked :
    goodSegmentCheck 74 24 51
      { lower := 8748, upper := 8820, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good125_checked :
    goodSegmentCheck 74 24 51
      { lower := 8821, upper := 8823, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good126_checked :
    goodSegmentCheck 74 24 51
      { lower := 8836, upper := 8861, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good127_checked :
    goodSegmentCheck 74 24 51
      { lower := 8959, upper := 9024, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good128_checked :
    goodSegmentCheck 74 24 51
      { lower := 9025, upper := 9066, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good129_checked :
    goodSegmentCheck 74 24 51
      { lower := 9245, upper := 9314, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good130_checked :
    goodSegmentCheck 74 24 51
      { lower := 9315, upper := 9334, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good131_checked :
    goodSegmentCheck 74 24 51
      { lower := 9375, upper := 9444, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good132_checked :
    goodSegmentCheck 74 24 51
      { lower := 9445, upper := 9448, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good133_checked :
    goodSegmentCheck 74 24 51
      { lower := 9522, upper := 9594, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good134_checked :
    goodSegmentCheck 74 24 51
      { lower := 9595, upper := 9595, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good135_checked :
    goodSegmentCheck 74 24 51
      { lower := 9604, upper := 9674, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good136_checked :
    goodSegmentCheck 74 24 51
      { lower := 9675, upper := 9677, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good137_checked :
    goodSegmentCheck 74 24 51
      { lower := 10000, upper := 10020, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good138_checked :
    goodSegmentCheck 74 24 51
      { lower := 10051, upper := 10073, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good139_checked :
    goodSegmentCheck 74 24 51
      { lower := 10082, upper := 10152, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good140_checked :
    goodSegmentCheck 74 24 51
      { lower := 10153, upper := 10181, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good141_checked :
    goodSegmentCheck 74 24 51
      { lower := 10240, upper := 10279, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good142_checked :
    goodSegmentCheck 74 24 51
      { lower := 10290, upper := 10313, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good143_checked :
    goodSegmentCheck 74 24 51
      { lower := 10469, upper := 10516, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good144_checked :
    goodSegmentCheck 74 24 51
      { lower := 10580, upper := 10640, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good145_checked :
    goodSegmentCheck 74 24 51
      { lower := 10641, upper := 10712, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good146_checked :
    goodSegmentCheck 74 24 51
      { lower := 10713, upper := 10721, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good147_checked :
    goodSegmentCheck 74 24 51
      { lower := 10935, upper := 10982, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good148_checked :
    goodSegmentCheck 74 24 51
      { lower := 10983, upper := 11008, witness := RowWitness.topPrime 10979 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good149_checked :
    goodSegmentCheck 74 24 51
      { lower := 11045, upper := 11058, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good150_checked :
    goodSegmentCheck 74 24 51
      { lower := 11094, upper := 11166, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good151_checked :
    goodSegmentCheck 74 24 51
      { lower := 11167, upper := 11182, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good152_checked :
    goodSegmentCheck 74 24 51
      { lower := 11191, upper := 11250, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good153_checked :
    goodSegmentCheck 74 24 51
      { lower := 11251, upper := 11323, witness := RowWitness.topPrime 11251 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good154_checked :
    goodSegmentCheck 74 24 51
      { lower := 11664, upper := 11711, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good155_checked :
    goodSegmentCheck 74 24 51
      { lower := 11774, upper := 11816, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good156_checked :
    goodSegmentCheck 74 24 51
      { lower := 11817, upper := 11840, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good157_checked :
    goodSegmentCheck 74 24 51
      { lower := 12005, upper := 12052, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good158_checked :
    goodSegmentCheck 74 24 51
      { lower := 12500, upper := 12566, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good159_checked :
    goodSegmentCheck 74 24 51
      { lower := 13125, upper := 13194, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good160_checked :
    goodSegmentCheck 74 24 51
      { lower := 13195, upper := 13198, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good161_checked :
    goodSegmentCheck 74 24 51
      { lower := 13225, upper := 13292, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good162_checked :
    goodSegmentCheck 74 24 51
      { lower := 13293, upper := 13298, witness := RowWitness.topPrime 13291 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good163_checked :
    goodSegmentCheck 74 24 51
      { lower := 13310, upper := 13382, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good164_checked :
    goodSegmentCheck 74 24 51
      { lower := 13383, upper := 13383, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good165_checked :
    goodSegmentCheck 74 24 51
      { lower := 13454, upper := 13524, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good166_checked :
    goodSegmentCheck 74 24 51
      { lower := 13525, upper := 13529, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good167_checked :
    goodSegmentCheck 74 24 51
      { lower := 13750, upper := 13802, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good168_checked :
    goodSegmentCheck 74 24 51
      { lower := 13803, upper := 13823, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good169_checked :
    goodSegmentCheck 74 24 51
      { lower := 13924, upper := 13924, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good170_checked :
    goodSegmentCheck 74 24 51
      { lower := 14297, upper := 14366, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good171_checked :
    goodSegmentCheck 74 24 51
      { lower := 14367, upper := 14370, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good172_checked :
    goodSegmentCheck 74 24 51
      { lower := 14375, upper := 14442, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good173_checked :
    goodSegmentCheck 74 24 51
      { lower := 14443, upper := 14479, witness := RowWitness.topPrime 14437 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good174_checked :
    goodSegmentCheck 74 24 51
      { lower := 14641, upper := 14653, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good175_checked :
    goodSegmentCheck 74 24 51
      { lower := 14792, upper := 14856, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good176_checked :
    goodSegmentCheck 74 24 51
      { lower := 14857, upper := 14865, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good177_checked :
    goodSegmentCheck 74 24 51
      { lower := 14884, upper := 14885, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good178_checked :
    goodSegmentCheck 74 24 51
      { lower := 15129, upper := 15194, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good179_checked :
    goodSegmentCheck 74 24 51
      { lower := 15195, upper := 15202, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good180_checked :
    goodSegmentCheck 74 24 51
      { lower := 15341, upper := 15404, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good181_checked :
    goodSegmentCheck 74 24 51
      { lower := 15405, upper := 15449, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good182_checked :
    goodSegmentCheck 74 24 51
      { lower := 15979, upper := 16046, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good183_checked :
    goodSegmentCheck 74 24 51
      { lower := 16047, upper := 16060, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good184_checked :
    goodSegmentCheck 74 24 51
      { lower := 16384, upper := 16454, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good185_checked :
    goodSegmentCheck 74 24 51
      { lower := 16455, upper := 16457, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good186_checked :
    goodSegmentCheck 74 24 51
      { lower := 16807, upper := 16860, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good187_checked :
    goodSegmentCheck 74 24 51
      { lower := 16861, upper := 16916, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good188_checked :
    goodSegmentCheck 74 24 51
      { lower := 16917, upper := 16927, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good189_checked :
    goodSegmentCheck 74 24 51
      { lower := 17303, upper := 17371, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good190_checked :
    goodSegmentCheck 74 24 51
      { lower := 17500, upper := 17569, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good191_checked :
    goodSegmentCheck 74 24 51
      { lower := 17672, upper := 17734, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good192_checked :
    goodSegmentCheck 74 24 51
      { lower := 18259, upper := 18298, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good193_checked :
    goodSegmentCheck 74 24 51
      { lower := 18490, upper := 18554, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good194_checked :
    goodSegmentCheck 74 24 51
      { lower := 18555, upper := 18564, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good195_checked :
    goodSegmentCheck 74 24 51
      { lower := 18634, upper := 18678, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good196_checked :
    goodSegmentCheck 74 24 51
      { lower := 19220, upper := 19281, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good197_checked :
    goodSegmentCheck 74 24 51
      { lower := 19375, upper := 19416, witness := RowWitness.topPrime 19373 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good198_checked :
    goodSegmentCheck 74 24 51
      { lower := 19663, upper := 19734, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good199_checked :
    goodSegmentCheck 74 24 51
      { lower := 19735, upper := 19736, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good200_checked :
    goodSegmentCheck 74 24 51
      { lower := 20172, upper := 20234, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good201_checked :
    goodSegmentCheck 74 24 51
      { lower := 20235, upper := 20254, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good202_checked :
    goodSegmentCheck 74 24 51
      { lower := 20412, upper := 20412, witness := RowWitness.topPrime 20411 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good203_checked :
    goodSegmentCheck 74 24 51
      { lower := 20480, upper := 20485, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good204_checked :
    goodSegmentCheck 74 24 51
      { lower := 21142, upper := 21212, witness := RowWitness.topPrime 21139 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good205_checked :
    goodSegmentCheck 74 24 51
      { lower := 21213, upper := 21214, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good206_checked :
    goodSegmentCheck 74 24 51
      { lower := 21316, upper := 21369, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good207_checked :
    goodSegmentCheck 74 24 51
      { lower := 21866, upper := 21936, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good208_checked :
    goodSegmentCheck 74 24 51
      { lower := 21937, upper := 21943, witness := RowWitness.topPrime 21937 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good209_checked :
    goodSegmentCheck 74 24 51
      { lower := 22103, upper := 22163, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good210_checked :
    goodSegmentCheck 74 24 51
      { lower := 22472, upper := 22518, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good211_checked :
    goodSegmentCheck 74 24 51
      { lower := 22528, upper := 22545, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good212_checked :
    goodSegmentCheck 74 24 51
      { lower := 23548, upper := 23607, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good213_checked :
    goodSegmentCheck 74 24 51
      { lower := 24010, upper := 24080, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good214_checked :
    goodSegmentCheck 74 24 51
      { lower := 24081, upper := 24110, witness := RowWitness.topPrime 24077 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good215_checked :
    goodSegmentCheck 74 24 51
      { lower := 24334, upper := 24402, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good216_checked :
    goodSegmentCheck 74 24 51
      { lower := 24403, upper := 24440, witness := RowWitness.topPrime 24391 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good217_checked :
    goodSegmentCheck 74 24 51
      { lower := 24576, upper := 24638, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good218_checked :
    goodSegmentCheck 74 24 51
      { lower := 25000, upper := 25059, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good219_checked :
    goodSegmentCheck 74 24 51
      { lower := 25215, upper := 25262, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good220_checked :
    goodSegmentCheck 74 24 51
      { lower := 25263, upper := 25278, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good221_checked :
    goodSegmentCheck 74 24 51
      { lower := 25281, upper := 25334, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good222_checked :
    goodSegmentCheck 74 24 51
      { lower := 25335, upper := 25354, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good223_checked :
    goodSegmentCheck 74 24 51
      { lower := 25947, upper := 25959, witness := RowWitness.topPrime 25943 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good224_checked :
    goodSegmentCheck 74 24 51
      { lower := 26411, upper := 26437, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good225_checked :
    goodSegmentCheck 74 24 51
      { lower := 26624, upper := 26670, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good226_checked :
    goodSegmentCheck 74 24 51
      { lower := 26671, upper := 26697, witness := RowWitness.topPrime 26669 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good227_checked :
    goodSegmentCheck 74 24 51
      { lower := 26908, upper := 26976, witness := RowWitness.topPrime 26903 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good228_checked :
    goodSegmentCheck 74 24 51
      { lower := 26977, upper := 26981, witness := RowWitness.topPrime 26959 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good229_checked :
    goodSegmentCheck 74 24 51
      { lower := 28125, upper := 28163, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good230_checked :
    goodSegmentCheck 74 24 51
      { lower := 28577, upper := 28634, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good231_checked :
    goodSegmentCheck 74 24 51
      { lower := 28717, upper := 28745, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good232_checked :
    goodSegmentCheck 74 24 51
      { lower := 29791, upper := 29841, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good233_checked :
    goodSegmentCheck 74 24 51
      { lower := 30258, upper := 30319, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good234_checked :
    goodSegmentCheck 74 24 51
      { lower := 30618, upper := 30666, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good235_checked :
    goodSegmentCheck 74 24 51
      { lower := 30667, upper := 30686, witness := RowWitness.topPrime 30661 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good236_checked :
    goodSegmentCheck 74 24 51
      { lower := 30926, upper := 30972, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good237_checked :
    goodSegmentCheck 74 24 51
      { lower := 31250, upper := 31286, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good238_checked :
    goodSegmentCheck 74 24 51
      { lower := 31433, upper := 31470, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good239_checked :
    goodSegmentCheck 74 24 51
      { lower := 31471, upper := 31496, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good240_checked :
    goodSegmentCheck 74 24 51
      { lower := 31944, upper := 31980, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good241_checked :
    goodSegmentCheck 74 24 51
      { lower := 31981, upper := 32017, witness := RowWitness.topPrime 31981 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good242_checked :
    goodSegmentCheck 74 24 51
      { lower := 32805, upper := 32841, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good243_checked :
    goodSegmentCheck 74 24 51
      { lower := 33282, upper := 33320, witness := RowWitness.topPrime 33247 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good244_checked :
    goodSegmentCheck 74 24 51
      { lower := 33321, upper := 33348, witness := RowWitness.topPrime 33317 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good245_checked :
    goodSegmentCheck 74 24 51
      { lower := 33620, upper := 33687, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good246_checked :
    goodSegmentCheck 74 24 51
      { lower := 34391, upper := 34448, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good247_checked :
    goodSegmentCheck 74 24 51
      { lower := 35152, upper := 35204, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good248_checked :
    goodSegmentCheck 74 24 51
      { lower := 35301, upper := 35364, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good249_checked :
    goodSegmentCheck 74 24 51
      { lower := 35365, upper := 35374, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good250_checked :
    goodSegmentCheck 74 24 51
      { lower := 35937, upper := 35985, witness := RowWitness.topPrime 35933 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good251_checked :
    goodSegmentCheck 74 24 51
      { lower := 36517, upper := 36570, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good252_checked :
    goodSegmentCheck 74 24 51
      { lower := 36571, upper := 36574, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good253_checked :
    goodSegmentCheck 74 24 51
      { lower := 36982, upper := 37052, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good254_checked :
    goodSegmentCheck 74 24 51
      { lower := 37053, upper := 37053, witness := RowWitness.topPrime 37049 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good255_checked :
    goodSegmentCheck 74 24 51
      { lower := 37210, upper := 37252, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good256_checked :
    goodSegmentCheck 74 24 51
      { lower := 37268, upper := 37283, witness := RowWitness.topPrime 37253 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good257_checked :
    goodSegmentCheck 74 24 51
      { lower := 37303, upper := 37341, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good258_checked :
    goodSegmentCheck 74 24 51
      { lower := 37349, upper := 37376, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good259_checked :
    goodSegmentCheck 74 24 51
      { lower := 37553, upper := 37573, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good260_checked :
    goodSegmentCheck 74 24 51
      { lower := 39326, upper := 39396, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good261_checked :
    goodSegmentCheck 74 24 51
      { lower := 39397, upper := 39399, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good262_checked :
    goodSegmentCheck 74 24 51
      { lower := 40344, upper := 40416, witness := RowWitness.topPrime 40343 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good263_checked :
    goodSegmentCheck 74 24 51
      { lower := 40417, upper := 40417, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good264_checked :
    goodSegmentCheck 74 24 51
      { lower := 40678, upper := 40698, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good265_checked :
    goodSegmentCheck 74 24 51
      { lower := 40960, upper := 41004, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good266_checked :
    goodSegmentCheck 74 24 51
      { lower := 41772, upper := 41816, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good267_checked :
    goodSegmentCheck 74 24 51
      { lower := 42025, upper := 42044, witness := RowWitness.topPrime 42023 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good268_checked :
    goodSegmentCheck 74 24 51
      { lower := 43750, upper := 43794, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good269_checked :
    goodSegmentCheck 74 24 51
      { lower := 43795, upper := 43813, witness := RowWitness.topPrime 43793 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good270_checked :
    goodSegmentCheck 74 24 51
      { lower := 43940, upper := 43996, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good271_checked :
    goodSegmentCheck 74 24 51
      { lower := 44217, upper := 44253, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good272_checked :
    goodSegmentCheck 74 24 51
      { lower := 44944, upper := 44963, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good273_checked :
    goodSegmentCheck 74 24 51
      { lower := 48013, upper := 48054, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good274_checked :
    goodSegmentCheck 74 24 51
      { lower := 48055, upper := 48086, witness := RowWitness.topPrime 48049 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good275_checked :
    goodSegmentCheck 74 24 51
      { lower := 48373, upper := 48407, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good276_checked :
    goodSegmentCheck 74 24 51
      { lower := 48668, upper := 48671, witness := RowWitness.topPrime 48661 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good277_checked :
    goodSegmentCheck 74 24 51
      { lower := 48734, upper := 48741, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good278_checked :
    goodSegmentCheck 74 24 51
      { lower := 48778, upper := 48807, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good279_checked :
    goodSegmentCheck 74 24 51
      { lower := 49152, upper := 49203, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good280_checked :
    goodSegmentCheck 74 24 51
      { lower := 50421, upper := 50483, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good281_checked :
    goodSegmentCheck 74 24 51
      { lower := 50562, upper := 50604, witness := RowWitness.topPrime 50551 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good282_checked :
    goodSegmentCheck 74 24 51
      { lower := 54925, upper := 54945, witness := RowWitness.topPrime 54919 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good283_checked :
    goodSegmentCheck 74 24 51
      { lower := 55225, upper := 55292, witness := RowWitness.topPrime 55219 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good284_checked :
    goodSegmentCheck 74 24 51
      { lower := 55293, upper := 55296, witness := RowWitness.topPrime 55291 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good285_checked :
    goodSegmentCheck 74 24 51
      { lower := 56250, upper := 56253, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good286_checked :
    goodSegmentCheck 74 24 51
      { lower := 58619, upper := 58637, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good287_checked :
    goodSegmentCheck 74 24 51
      { lower := 58989, upper := 59029, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good288_checked :
    goodSegmentCheck 74 24 51
      { lower := 59049, upper := 59062, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good289_checked :
    goodSegmentCheck 74 24 51
      { lower := 59582, upper := 59609, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good290_checked :
    goodSegmentCheck 74 24 51
      { lower := 61798, upper := 61804, witness := RowWitness.topPrime 61781 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good291_checked :
    goodSegmentCheck 74 24 51
      { lower := 65536, upper := 65594, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good292_checked :
    goodSegmentCheck 74 24 51
      { lower := 65595, upper := 65606, witness := RowWitness.topPrime 65587 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good293_checked :
    goodSegmentCheck 74 24 51
      { lower := 65625, upper := 65683, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good294_checked :
    goodSegmentCheck 74 24 51
      { lower := 68782, upper := 68823, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good295_checked :
    goodSegmentCheck 74 24 51
      { lower := 71875, upper := 71897, witness := RowWitness.topPrime 71867 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good296_checked :
    goodSegmentCheck 74 24 51
      { lower := 73167, upper := 73174, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good297_checked :
    goodSegmentCheck 74 24 51
      { lower := 73205, upper := 73240, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good298_checked :
    goodSegmentCheck 74 24 51
      { lower := 73728, upper := 73768, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good299_checked :
    goodSegmentCheck 74 24 51
      { lower := 78141, upper := 78198, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good300_checked :
    goodSegmentCheck 74 24 51
      { lower := 81920, upper := 81935, witness := RowWitness.topPrime 81919 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good301_checked :
    goodSegmentCheck 74 24 51
      { lower := 83544, upper := 83594, witness := RowWitness.topPrime 83537 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good302_checked :
    goodSegmentCheck 74 24 51
      { lower := 85291, upper := 85332, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good303_checked :
    goodSegmentCheck 74 24 51
      { lower := 85333, upper := 85364, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good293_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good294_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good295_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good296_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good297_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good298_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good299_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good300_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good301_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good302_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good303_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good304_checked :
    goodSegmentCheck 74 24 51
      { lower := 85697, upper := 85756, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good305_checked :
    goodSegmentCheck 74 24 51
      { lower := 98304, upper := 98333, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good306_checked :
    goodSegmentCheck 74 24 51
      { lower := 100842, upper := 100893, witness := RowWitness.topPrime 100829 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good307_checked :
    goodSegmentCheck 74 24 51
      { lower := 137842, upper := 137854, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good308_checked :
    goodSegmentCheck 74 24 51
      { lower := 327701, upper := 327753, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good307_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good308_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_goods_checked :
    row074.goods.all (goodSegmentCheck row074.height.i row074.height.r row074.height.s) = true := by
  change row074_goods.all (goodSegmentCheck 74 24 51) = true
  simp only [row074_goods, List.all_cons, List.all_nil,
    row074_good000_checked,
    row074_good001_checked,
    row074_good002_checked,
    row074_good003_checked,
    row074_good004_checked,
    row074_good005_checked,
    row074_good006_checked,
    row074_good007_checked,
    row074_good008_checked,
    row074_good009_checked,
    row074_good010_checked,
    row074_good011_checked,
    row074_good012_checked,
    row074_good013_checked,
    row074_good014_checked,
    row074_good015_checked,
    row074_good016_checked,
    row074_good017_checked,
    row074_good018_checked,
    row074_good019_checked,
    row074_good020_checked,
    row074_good021_checked,
    row074_good022_checked,
    row074_good023_checked,
    row074_good024_checked,
    row074_good025_checked,
    row074_good026_checked,
    row074_good027_checked,
    row074_good028_checked,
    row074_good029_checked,
    row074_good030_checked,
    row074_good031_checked,
    row074_good032_checked,
    row074_good033_checked,
    row074_good034_checked,
    row074_good035_checked,
    row074_good036_checked,
    row074_good037_checked,
    row074_good038_checked,
    row074_good039_checked,
    row074_good040_checked,
    row074_good041_checked,
    row074_good042_checked,
    row074_good043_checked,
    row074_good044_checked,
    row074_good045_checked,
    row074_good046_checked,
    row074_good047_checked,
    row074_good048_checked,
    row074_good049_checked,
    row074_good050_checked,
    row074_good051_checked,
    row074_good052_checked,
    row074_good053_checked,
    row074_good054_checked,
    row074_good055_checked,
    row074_good056_checked,
    row074_good057_checked,
    row074_good058_checked,
    row074_good059_checked,
    row074_good060_checked,
    row074_good061_checked,
    row074_good062_checked,
    row074_good063_checked,
    row074_good064_checked,
    row074_good065_checked,
    row074_good066_checked,
    row074_good067_checked,
    row074_good068_checked,
    row074_good069_checked,
    row074_good070_checked,
    row074_good071_checked,
    row074_good072_checked,
    row074_good073_checked,
    row074_good074_checked,
    row074_good075_checked,
    row074_good076_checked,
    row074_good077_checked,
    row074_good078_checked,
    row074_good079_checked,
    row074_good080_checked,
    row074_good081_checked,
    row074_good082_checked,
    row074_good083_checked,
    row074_good084_checked,
    row074_good085_checked,
    row074_good086_checked,
    row074_good087_checked,
    row074_good088_checked,
    row074_good089_checked,
    row074_good090_checked,
    row074_good091_checked,
    row074_good092_checked,
    row074_good093_checked,
    row074_good094_checked,
    row074_good095_checked,
    row074_good096_checked,
    row074_good097_checked,
    row074_good098_checked,
    row074_good099_checked,
    row074_good100_checked,
    row074_good101_checked,
    row074_good102_checked,
    row074_good103_checked,
    row074_good104_checked,
    row074_good105_checked,
    row074_good106_checked,
    row074_good107_checked,
    row074_good108_checked,
    row074_good109_checked,
    row074_good110_checked,
    row074_good111_checked,
    row074_good112_checked,
    row074_good113_checked,
    row074_good114_checked,
    row074_good115_checked,
    row074_good116_checked,
    row074_good117_checked,
    row074_good118_checked,
    row074_good119_checked,
    row074_good120_checked,
    row074_good121_checked,
    row074_good122_checked,
    row074_good123_checked,
    row074_good124_checked,
    row074_good125_checked,
    row074_good126_checked,
    row074_good127_checked,
    row074_good128_checked,
    row074_good129_checked,
    row074_good130_checked,
    row074_good131_checked,
    row074_good132_checked,
    row074_good133_checked,
    row074_good134_checked,
    row074_good135_checked,
    row074_good136_checked,
    row074_good137_checked,
    row074_good138_checked,
    row074_good139_checked,
    row074_good140_checked,
    row074_good141_checked,
    row074_good142_checked,
    row074_good143_checked,
    row074_good144_checked,
    row074_good145_checked,
    row074_good146_checked,
    row074_good147_checked,
    row074_good148_checked,
    row074_good149_checked,
    row074_good150_checked,
    row074_good151_checked,
    row074_good152_checked,
    row074_good153_checked,
    row074_good154_checked,
    row074_good155_checked,
    row074_good156_checked,
    row074_good157_checked,
    row074_good158_checked,
    row074_good159_checked,
    row074_good160_checked,
    row074_good161_checked,
    row074_good162_checked,
    row074_good163_checked,
    row074_good164_checked,
    row074_good165_checked,
    row074_good166_checked,
    row074_good167_checked,
    row074_good168_checked,
    row074_good169_checked,
    row074_good170_checked,
    row074_good171_checked,
    row074_good172_checked,
    row074_good173_checked,
    row074_good174_checked,
    row074_good175_checked,
    row074_good176_checked,
    row074_good177_checked,
    row074_good178_checked,
    row074_good179_checked,
    row074_good180_checked,
    row074_good181_checked,
    row074_good182_checked,
    row074_good183_checked,
    row074_good184_checked,
    row074_good185_checked,
    row074_good186_checked,
    row074_good187_checked,
    row074_good188_checked,
    row074_good189_checked,
    row074_good190_checked,
    row074_good191_checked,
    row074_good192_checked,
    row074_good193_checked,
    row074_good194_checked,
    row074_good195_checked,
    row074_good196_checked,
    row074_good197_checked,
    row074_good198_checked,
    row074_good199_checked,
    row074_good200_checked,
    row074_good201_checked,
    row074_good202_checked,
    row074_good203_checked,
    row074_good204_checked,
    row074_good205_checked,
    row074_good206_checked,
    row074_good207_checked,
    row074_good208_checked,
    row074_good209_checked,
    row074_good210_checked,
    row074_good211_checked,
    row074_good212_checked,
    row074_good213_checked,
    row074_good214_checked,
    row074_good215_checked,
    row074_good216_checked,
    row074_good217_checked,
    row074_good218_checked,
    row074_good219_checked,
    row074_good220_checked,
    row074_good221_checked,
    row074_good222_checked,
    row074_good223_checked,
    row074_good224_checked,
    row074_good225_checked,
    row074_good226_checked,
    row074_good227_checked,
    row074_good228_checked,
    row074_good229_checked,
    row074_good230_checked,
    row074_good231_checked,
    row074_good232_checked,
    row074_good233_checked,
    row074_good234_checked,
    row074_good235_checked,
    row074_good236_checked,
    row074_good237_checked,
    row074_good238_checked,
    row074_good239_checked,
    row074_good240_checked,
    row074_good241_checked,
    row074_good242_checked,
    row074_good243_checked,
    row074_good244_checked,
    row074_good245_checked,
    row074_good246_checked,
    row074_good247_checked,
    row074_good248_checked,
    row074_good249_checked,
    row074_good250_checked,
    row074_good251_checked,
    row074_good252_checked,
    row074_good253_checked,
    row074_good254_checked,
    row074_good255_checked,
    row074_good256_checked,
    row074_good257_checked,
    row074_good258_checked,
    row074_good259_checked,
    row074_good260_checked,
    row074_good261_checked,
    row074_good262_checked,
    row074_good263_checked,
    row074_good264_checked,
    row074_good265_checked,
    row074_good266_checked,
    row074_good267_checked,
    row074_good268_checked,
    row074_good269_checked,
    row074_good270_checked,
    row074_good271_checked,
    row074_good272_checked,
    row074_good273_checked,
    row074_good274_checked,
    row074_good275_checked,
    row074_good276_checked,
    row074_good277_checked,
    row074_good278_checked,
    row074_good279_checked,
    row074_good280_checked,
    row074_good281_checked,
    row074_good282_checked,
    row074_good283_checked,
    row074_good284_checked,
    row074_good285_checked,
    row074_good286_checked,
    row074_good287_checked,
    row074_good288_checked,
    row074_good289_checked,
    row074_good290_checked,
    row074_good291_checked,
    row074_good292_checked,
    row074_good293_checked,
    row074_good294_checked,
    row074_good295_checked,
    row074_good296_checked,
    row074_good297_checked,
    row074_good298_checked,
    row074_good299_checked,
    row074_good300_checked,
    row074_good301_checked,
    row074_good302_checked,
    row074_good303_checked,
    row074_good304_checked,
    row074_good305_checked,
    row074_good306_checked,
    row074_good307_checked,
    row074_good308_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_registered :
    decide (row074.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row074_small_checked :
    coverCheck (2 * row074.height.i + 2) (row074.height.i * (row074.height.i - 1) - 1)
      (row074.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row074_layerCover_checked :
    coverCheck (row074.height.i * (row074.height.i - 1)) (row074.height.n0 - 1)
      (row074.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row074_bounds : List NatInterval :=
  [(150, 222), (223, 296), (297, 366), (367, 440), (441, 512), (513, 582), (583, 650), (651, 720), (721, 792), (793, 860), (861, 932), (933, 1002), (1003, 1070), (1071, 1142), (1143, 1202), (1203, 1274), (1275, 1332), (1333, 1400), (1401, 1472), (1473, 1544), (1545, 1616), (1617, 1686), (1687, 1742), (1743, 1814), (1815, 1884), (1885, 1952), (1953, 2024), (2025, 2090), (2091, 2162), (2163, 2234), (2235, 2294), (2295, 2366), (2367, 2430), (2431, 2496), (2497, 2550), (2551, 2624), (2625, 2694), (2695, 2766), (2767, 2840), (2841, 2910), (2911, 2982), (2983, 3044), (3045, 3114), (3115, 3182), (3183, 3254), (3255, 3326), (3327, 3396), (3397, 3464), (3465, 3536), (3537, 3606), (3607, 3680), (3681, 3750), (3751, 3812), (3813, 3876), (3877, 3950), (3951, 4020), (4021, 4094), (4095, 4166), (4167, 4232), (4233, 4304), (4305, 4370), (4371, 4436), (4437, 4496), (4497, 4566), (4567, 4640), (4641, 4712), (4713, 4776), (4777, 4832), (4833, 4904), (4905, 4976), (4977, 5046), (5047, 5112), (5113, 5186), (5187, 5252), (5253, 5310), (5311, 5382), (5383, 5402), (5408, 5480), (5481, 5481), (5488, 5488), (5491, 5556), (5557, 5564), (5577, 5646), (5647, 5698), (5766, 5822), (5823, 5894), (5895, 5905), (5915, 5960), (6075, 6146), (6147, 6216), (6217, 6217), (6318, 6323), (6348, 6416), (6417, 6421), (6517, 6564), (6565, 6636), (6637, 6710), (6711, 6782), (6783, 6800), (6859, 6930), (6931, 6950), (6962, 7009), (7203, 7266), (7267, 7298), (7406, 7466), (7467, 7479), (7500, 7572), (7573, 7642), (7688, 7753), (7803, 7849), (7935, 8006), (8007, 8015), (8019, 8059), (8092, 8092), (8125, 8165), (8192, 8198), (8232, 8304), (8305, 8335), (8405, 8462), (8463, 8500), (8505, 8537), (8575, 8578), (8664, 8736), (8737, 8743), (8748, 8820), (8821, 8823), (8836, 8861), (8959, 9024), (9025, 9066), (9245, 9314), (9315, 9334), (9375, 9444), (9445, 9448), (9522, 9594), (9595, 9595), (9604, 9674), (9675, 9677), (10000, 10020), (10051, 10073), (10082, 10152), (10153, 10181), (10240, 10279), (10290, 10313), (10469, 10516), (10580, 10640), (10641, 10712), (10713, 10721), (10935, 10982), (10983, 11008), (11045, 11058), (11094, 11166), (11167, 11182), (11191, 11250), (11251, 11323), (11664, 11711), (11774, 11816), (11817, 11840), (12005, 12052), (12500, 12566), (13125, 13194), (13195, 13198), (13225, 13292), (13293, 13298), (13310, 13382), (13383, 13383), (13454, 13524), (13525, 13529), (13750, 13802), (13803, 13823), (13924, 13924), (14297, 14366), (14367, 14370), (14375, 14442), (14443, 14479), (14641, 14653), (14792, 14856), (14857, 14865), (14884, 14885), (15129, 15194), (15195, 15202), (15341, 15404), (15405, 15449), (15979, 16046), (16047, 16060), (16384, 16454), (16455, 16457), (16807, 16860), (16861, 16916), (16917, 16927), (17303, 17371), (17500, 17569), (17672, 17734), (18259, 18298), (18490, 18554), (18555, 18564), (18634, 18678), (19220, 19281), (19375, 19416), (19663, 19734), (19735, 19736), (20172, 20234), (20235, 20254), (20412, 20412), (20480, 20485), (21142, 21212), (21213, 21214), (21316, 21369), (21866, 21936), (21937, 21943), (22103, 22163), (22472, 22518), (22528, 22545), (23548, 23607), (24010, 24080), (24081, 24110), (24334, 24402), (24403, 24440), (24576, 24638), (25000, 25059), (25215, 25262), (25263, 25278), (25281, 25334), (25335, 25354), (25947, 25959), (26411, 26437), (26624, 26670), (26671, 26697), (26908, 26976), (26977, 26981), (28125, 28163), (28577, 28634), (28717, 28745), (29791, 29841), (30258, 30319), (30618, 30666), (30667, 30686), (30926, 30972), (31250, 31286), (31433, 31470), (31471, 31496), (31944, 31980), (31981, 32017), (32805, 32841), (33282, 33320), (33321, 33348), (33620, 33687), (34391, 34448), (35152, 35204), (35301, 35364), (35365, 35374), (35937, 35985), (36517, 36570), (36571, 36574), (36982, 37052), (37053, 37053), (37210, 37252), (37268, 37283), (37303, 37341), (37349, 37376), (37553, 37573), (39326, 39396), (39397, 39399), (40344, 40416), (40417, 40417), (40678, 40698), (40960, 41004), (41772, 41816), (42025, 42044), (43750, 43794), (43795, 43813), (43940, 43996), (44217, 44253), (44944, 44963), (48013, 48054), (48055, 48086), (48373, 48407), (48668, 48671), (48734, 48741), (48778, 48807), (49152, 49203), (50421, 50483), (50562, 50604), (54925, 54945), (55225, 55292), (55293, 55296), (56250, 56253), (58619, 58637), (58989, 59029), (59049, 59062), (59582, 59609), (61798, 61804), (65536, 65594), (65595, 65606), (65625, 65683), (68782, 68823), (71875, 71897), (73167, 73174), (73205, 73240), (73728, 73768), (78141, 78198), (81920, 81935), (83544, 83594), (85291, 85332), (85333, 85364), (85697, 85756), (98304, 98333), (100842, 100893), (137842, 137854), (327701, 327753)]

theorem row074_bounds_eq : row074.goods.map goodSegmentBounds = row074_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row074_layer000_intervals : List ColouredInterval :=
  [(2, 5632, 5705), (2, 6144, 6217), (2, 6656, 6729), (2, 7168, 7241), (2, 7680, 7753), (2, 8192, 8265), (2, 8704, 8777), (2, 6144, 6217), (2, 7168, 7241), (2, 8192, 8265), (2, 9216, 9289), (2, 10240, 10313), (2, 6144, 6217), (2, 8192, 8265), (2, 10240, 10313), (2, 8192, 8265), (2, 8192, 8265), (3, 5402, 5419), (3, 5589, 5662), (3, 5832, 5905), (3, 6075, 6148), (3, 6318, 6391), (3, 6561, 6634), (3, 6804, 6877), (3, 7047, 7120), (3, 7290, 7363), (3, 7533, 7606), (3, 7776, 7849), (3, 8019, 8092), (3, 8262, 8335), (3, 8505, 8578), (3, 5832, 5905), (3, 6561, 6634), (3, 7290, 7363), (3, 8019, 8092), (3, 8748, 8821), (3, 9477, 9550), (3, 10206, 10279), (3, 6561, 6634), (3, 8748, 8821), (3, 6561, 6634), (5, 5625, 5698), (5, 6250, 6323), (5, 6875, 6948), (5, 7500, 7573), (5, 8125, 8198), (5, 8750, 8823), (5, 9375, 9448), (5, 10000, 10073), (5, 10625, 10698), (5, 6250, 6323), (5, 9375, 9448), (7, 5488, 5561), (7, 5831, 5904), (7, 6174, 6247), (7, 6517, 6590), (7, 6860, 6933), (7, 7203, 7276), (7, 7546, 7619), (7, 7889, 7962), (7, 8232, 8305), (7, 8575, 8648), (7, 8918, 8991), (7, 9261, 9334), (7, 9604, 9677), (7, 9947, 10020), (7, 10290, 10363), (7, 10633, 10706), (7, 7203, 7276), (7, 9604, 9677), (11, 6655, 6728), (11, 7986, 8059), (11, 9317, 9390), (11, 10648, 10721), (13, 5408, 5481), (13, 5577, 5650), (13, 5746, 5819), (13, 5915, 5988), (13, 6591, 6664), (13, 8788, 8861), (17, 5491, 5564), (17, 5780, 5853), (17, 6069, 6142), (17, 6358, 6431), (17, 6647, 6720), (17, 6936, 7009), (17, 7225, 7298), (17, 7514, 7587), (17, 7803, 7876), (17, 8092, 8165), (17, 8381, 8454), (17, 8670, 8743), (17, 8959, 9032), (17, 9248, 9321), (17, 9537, 9610), (17, 9826, 9899), (17, 10115, 10188), (17, 9826, 9899), (19, 5415, 5488), (19, 5776, 5849), (19, 6137, 6210), (19, 6498, 6571), (19, 6859, 6932), (19, 7220, 7293), (19, 7581, 7654), (19, 7942, 8015), (19, 8303, 8376), (19, 8664, 8737), (19, 9025, 9098), (19, 9386, 9459), (19, 9747, 9820), (19, 10108, 10181), (19, 10469, 10542), (19, 6859, 6932), (23, 5819, 5892), (23, 6348, 6421), (23, 6877, 6950), (23, 7406, 7479), (23, 7935, 8008), (23, 8464, 8537), (23, 8993, 9066), (23, 9522, 9595), (23, 10051, 10124), (23, 10580, 10653), (29, 5887, 5960), (29, 6728, 6801), (29, 7569, 7642), (29, 8410, 8483), (29, 9251, 9324), (29, 10092, 10165), (31, 5766, 5839), (31, 6727, 6800), (31, 7688, 7761), (31, 8649, 8722), (31, 9610, 9683), (31, 10571, 10644), (41, 6724, 6797), (41, 8405, 8478), (41, 10086, 10159), (43, 5547, 5620), (43, 7396, 7469), (43, 9245, 9318), (47, 6627, 6700), (47, 8836, 8909), (53, 5618, 5691), (53, 8427, 8500), (59, 6962, 7035), (59, 10443, 10516), (61, 7442, 7515), (67, 8978, 9051), (71, 10082, 10155), (73, 5402, 5402), (73, 10658, 10731)]

def row074_layer000_block000 : List ColouredInterval :=
  [(2, 5632, 5705), (2, 6144, 6217), (2, 6656, 6729), (2, 7168, 7241), (2, 7680, 7753), (2, 8192, 8265), (2, 8704, 8777), (2, 6144, 6217), (2, 7168, 7241), (2, 8192, 8265), (2, 9216, 9289), (2, 10240, 10313), (2, 6144, 6217)]

def row074_layer000_block001 : List ColouredInterval :=
  [(2, 8192, 8265), (2, 10240, 10313), (2, 8192, 8265), (2, 8192, 8265), (3, 5402, 5419), (3, 5589, 5662), (3, 5832, 5905), (3, 6075, 6148), (3, 6318, 6391), (3, 6561, 6634), (3, 6804, 6877), (3, 7047, 7120), (3, 7290, 7363)]

def row074_layer000_block002 : List ColouredInterval :=
  [(3, 7533, 7606), (3, 7776, 7849), (3, 8019, 8092), (3, 8262, 8335), (3, 8505, 8578), (3, 5832, 5905), (3, 6561, 6634), (3, 7290, 7363), (3, 8019, 8092), (3, 8748, 8821), (3, 9477, 9550), (3, 10206, 10279), (3, 6561, 6634)]

def row074_layer000_block003 : List ColouredInterval :=
  [(3, 8748, 8821), (3, 6561, 6634), (5, 5625, 5698), (5, 6250, 6323), (5, 6875, 6948), (5, 7500, 7573), (5, 8125, 8198), (5, 8750, 8823), (5, 9375, 9448), (5, 10000, 10073), (5, 10625, 10698), (5, 6250, 6323), (5, 9375, 9448)]

def row074_layer000_block004 : List ColouredInterval :=
  [(7, 5488, 5561), (7, 5831, 5904), (7, 6174, 6247), (7, 6517, 6590), (7, 6860, 6933), (7, 7203, 7276), (7, 7546, 7619), (7, 7889, 7962), (7, 8232, 8305), (7, 8575, 8648), (7, 8918, 8991), (7, 9261, 9334), (7, 9604, 9677)]

def row074_layer000_block005 : List ColouredInterval :=
  [(7, 9947, 10020), (7, 10290, 10363), (7, 10633, 10706), (7, 7203, 7276), (7, 9604, 9677), (11, 6655, 6728), (11, 7986, 8059), (11, 9317, 9390), (11, 10648, 10721), (13, 5408, 5481), (13, 5577, 5650), (13, 5746, 5819), (13, 5915, 5988)]

def row074_layer000_block006 : List ColouredInterval :=
  [(13, 6591, 6664), (13, 8788, 8861), (17, 5491, 5564), (17, 5780, 5853), (17, 6069, 6142), (17, 6358, 6431), (17, 6647, 6720), (17, 6936, 7009), (17, 7225, 7298), (17, 7514, 7587), (17, 7803, 7876), (17, 8092, 8165), (17, 8381, 8454)]

def row074_layer000_block007 : List ColouredInterval :=
  [(17, 8670, 8743), (17, 8959, 9032), (17, 9248, 9321), (17, 9537, 9610), (17, 9826, 9899), (17, 10115, 10188), (17, 9826, 9899), (19, 5415, 5488), (19, 5776, 5849), (19, 6137, 6210), (19, 6498, 6571), (19, 6859, 6932), (19, 7220, 7293)]

def row074_layer000_block008 : List ColouredInterval :=
  [(19, 7581, 7654), (19, 7942, 8015), (19, 8303, 8376), (19, 8664, 8737), (19, 9025, 9098), (19, 9386, 9459), (19, 9747, 9820), (19, 10108, 10181), (19, 10469, 10542), (19, 6859, 6932), (23, 5819, 5892), (23, 6348, 6421), (23, 6877, 6950)]

def row074_layer000_block009 : List ColouredInterval :=
  [(23, 7406, 7479), (23, 7935, 8008), (23, 8464, 8537), (23, 8993, 9066), (23, 9522, 9595), (23, 10051, 10124), (23, 10580, 10653), (29, 5887, 5960), (29, 6728, 6801), (29, 7569, 7642), (29, 8410, 8483), (29, 9251, 9324), (29, 10092, 10165)]

def row074_layer000_block010 : List ColouredInterval :=
  [(31, 5766, 5839), (31, 6727, 6800), (31, 7688, 7761), (31, 8649, 8722), (31, 9610, 9683), (31, 10571, 10644), (41, 6724, 6797), (41, 8405, 8478), (41, 10086, 10159), (43, 5547, 5620), (43, 7396, 7469), (43, 9245, 9318), (47, 6627, 6700)]

def row074_layer000_block011 : List ColouredInterval :=
  [(47, 8836, 8909), (53, 5618, 5691), (53, 8427, 8500), (59, 6962, 7035), (59, 10443, 10516), (61, 7442, 7515), (67, 8978, 9051), (71, 10082, 10155), (73, 5402, 5402), (73, 10658, 10731)]

def row074_layer000_chunks : List (List ColouredInterval) :=
  [row074_layer000_block000, row074_layer000_block001, row074_layer000_block002, row074_layer000_block003, row074_layer000_block004, row074_layer000_block005, row074_layer000_block006, row074_layer000_block007, row074_layer000_block008, row074_layer000_block009, row074_layer000_block010, row074_layer000_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_arithmetic : LayerArithmeticValid row074.height { lower := 5402, upper := 10804, M := 35 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_enumeration :
    activePowerIntervalList 74 35 5402 10804 = row074_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs000 :
    row074_layer000_block000.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs001 :
    row074_layer000_block001.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs002 :
    row074_layer000_block002.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs003 :
    row074_layer000_block003.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs004 :
    row074_layer000_block004.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs004
