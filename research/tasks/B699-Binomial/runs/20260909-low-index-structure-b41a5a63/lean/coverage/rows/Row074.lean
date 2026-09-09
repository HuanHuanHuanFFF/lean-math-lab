import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row074_registered :
    decide (row074.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row074_goods_checked :
    row074.goods.all (goodSegmentCheck row074.height.i row074.height.r row074.height.s) = true := by
  decide +kernel

theorem row074_small_checked :
    coverCheck (2 * row074.height.i + 2) (row074.height.i * (row074.height.i - 1) - 1)
      (row074.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row074_layerCover_checked :
    coverCheck (row074.height.i * (row074.height.i - 1)) (row074.height.n0 - 1)
      (row074.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row074_layer000_checked :
    coverLayerCheck row074.height row074.goods { lower := 5402, upper := 10804, M := 35 } = true := by
  decide +kernel

theorem row074_layer001_checked :
    coverLayerCheck row074.height row074.goods { lower := 10804, upper := 21608, M := 31 } = true := by
  decide +kernel

theorem row074_layer002_checked :
    coverLayerCheck row074.height row074.goods { lower := 21608, upper := 43216, M := 28 } = true := by
  decide +kernel

theorem row074_layer003_checked :
    coverLayerCheck row074.height row074.goods { lower := 43216, upper := 86432, M := 25 } = true := by
  decide +kernel

theorem row074_layer004_checked :
    coverLayerCheck row074.height row074.goods { lower := 86432, upper := 172864, M := 22 } = true := by
  decide +kernel

theorem row074_layer005_checked :
    coverLayerCheck row074.height row074.goods { lower := 172864, upper := 345728, M := 20 } = true := by
  decide +kernel

theorem row074_layer006_checked :
    coverLayerCheck row074.height row074.goods { lower := 345728, upper := 691456, M := 18 } = true := by
  decide +kernel

theorem row074_layer007_checked :
    coverLayerCheck row074.height row074.goods { lower := 691456, upper := 1382912, M := 16 } = true := by
  decide +kernel

theorem row074_layer008_checked :
    coverLayerCheck row074.height row074.goods { lower := 1382912, upper := 2765824, M := 14 } = true := by
  decide +kernel

theorem row074_layer009_checked :
    coverLayerCheck row074.height row074.goods { lower := 2765824, upper := 5531648, M := 13 } = true := by
  decide +kernel

theorem row074_layer010_checked :
    coverLayerCheck row074.height row074.goods { lower := 5531648, upper := 11063296, M := 12 } = true := by
  decide +kernel

theorem row074_layer011_checked :
    coverLayerCheck row074.height row074.goods { lower := 11063296, upper := 22126592, M := 10 } = true := by
  decide +kernel

theorem row074_layer012_checked :
    coverLayerCheck row074.height row074.goods { lower := 22126592, upper := 44253184, M := 9 } = true := by
  decide +kernel

theorem row074_layer013_checked :
    coverLayerCheck row074.height row074.goods { lower := 44253184, upper := 88506368, M := 8 } = true := by
  decide +kernel

theorem row074_layer014_checked :
    coverLayerCheck row074.height row074.goods { lower := 88506368, upper := 177012736, M := 8 } = true := by
  decide +kernel

theorem row074_layer015_checked :
    coverLayerCheck row074.height row074.goods { lower := 177012736, upper := 354025472, M := 7 } = true := by
  decide +kernel

theorem row074_layer016_checked :
    coverLayerCheck row074.height row074.goods { lower := 354025472, upper := 708050944, M := 6 } = true := by
  decide +kernel

theorem row074_layer017_checked :
    coverLayerCheck row074.height row074.goods { lower := 708050944, upper := 1416101888, M := 5 } = true := by
  decide +kernel

theorem row074_layer018_checked :
    coverLayerCheck row074.height row074.goods { lower := 1416101888, upper := 2832203776, M := 5 } = true := by
  decide +kernel

theorem row074_layer019_checked :
    coverLayerCheck row074.height row074.goods { lower := 2832203776, upper := 5664407552, M := 4 } = true := by
  decide +kernel

theorem row074_layer020_checked :
    coverLayerCheck row074.height row074.goods { lower := 5664407552, upper := 11328815104, M := 4 } = true := by
  decide +kernel

theorem row074_layer021_checked :
    coverLayerCheck row074.height row074.goods { lower := 11328815104, upper := 22657630208, M := 4 } = true := by
  decide +kernel

theorem row074_layer022_checked :
    coverLayerCheck row074.height row074.goods { lower := 22657630208, upper := 45315260416, M := 3 } = true := by
  decide +kernel

theorem row074_layer023_checked :
    coverLayerCheck row074.height row074.goods { lower := 45315260416, upper := 90630520832, M := 3 } = true := by
  decide +kernel

theorem row074_layer024_checked :
    coverLayerCheck row074.height row074.goods { lower := 90630520832, upper := 181261041664, M := 3 } = true := by
  decide +kernel

theorem row074_layer025_checked :
    coverLayerCheck row074.height row074.goods { lower := 181261041664, upper := 362522083328, M := 2 } = true := by
  decide +kernel

theorem row074_layer026_checked :
    coverLayerCheck row074.height row074.goods { lower := 362522083328, upper := 725044166656, M := 2 } = true := by
  decide +kernel

theorem row074_layer027_checked :
    coverLayerCheck row074.height row074.goods { lower := 725044166656, upper := 1450088333312, M := 2 } = true := by
  decide +kernel

theorem row074_layer028_checked :
    coverLayerCheck row074.height row074.goods { lower := 1450088333312, upper := 2900176666624, M := 2 } = true := by
  decide +kernel

theorem row074_layer029_checked :
    coverLayerCheck row074.height row074.goods { lower := 2900176666624, upper := 5800353333248, M := 2 } = true := by
  decide +kernel

theorem row074_layer030_checked :
    coverLayerCheck row074.height row074.goods { lower := 5800353333248, upper := 10000000000000, M := 2 } = true := by
  decide +kernel

theorem row074_layers_checked :
    row074.layers.all (coverLayerCheck row074.height row074.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row074.height row074.goods) = true
  simp only [List.all_cons, List.all_nil,
    row074_layer000_checked,
    row074_layer001_checked,
    row074_layer002_checked,
    row074_layer003_checked,
    row074_layer004_checked,
    row074_layer005_checked,
    row074_layer006_checked,
    row074_layer007_checked,
    row074_layer008_checked,
    row074_layer009_checked,
    row074_layer010_checked,
    row074_layer011_checked,
    row074_layer012_checked,
    row074_layer013_checked,
    row074_layer014_checked,
    row074_layer015_checked,
    row074_layer016_checked,
    row074_layer017_checked,
    row074_layer018_checked,
    row074_layer019_checked,
    row074_layer020_checked,
    row074_layer021_checked,
    row074_layer022_checked,
    row074_layer023_checked,
    row074_layer024_checked,
    row074_layer025_checked,
    row074_layer026_checked,
    row074_layer027_checked,
    row074_layer028_checked,
    row074_layer029_checked,
    row074_layer030_checked,
    Bool.true_and]

theorem row074_checked : finiteCoverRowCheck row074 = true := by
  simp only [finiteCoverRowCheck, row074_registered, row074_goods_checked,
    row074_small_checked, row074_layerCover_checked, row074_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row074_checked

end B699LowIndex
