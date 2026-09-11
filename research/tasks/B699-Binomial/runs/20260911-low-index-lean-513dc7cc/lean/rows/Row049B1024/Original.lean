import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_height : HeightCertificateDatum := { i := 49, r := 16, s := 33, n0Power10 := 26 }

def row049_goods : List GoodSegment := [
  { lower := 100, upper := 145, witness := RowWitness.topPrime 97 },
  { lower := 146, upper := 187, witness := RowWitness.topPrime 139 },
  { lower := 188, upper := 229, witness := RowWitness.topPrime 181 },
  { lower := 230, upper := 277, witness := RowWitness.topPrime 229 },
  { lower := 278, upper := 325, witness := RowWitness.topPrime 277 },
  { lower := 326, upper := 365, witness := RowWitness.topPrime 317 },
  { lower := 366, upper := 407, witness := RowWitness.topPrime 359 },
  { lower := 408, upper := 449, witness := RowWitness.topPrime 401 },
  { lower := 450, upper := 497, witness := RowWitness.topPrime 449 },
  { lower := 498, upper := 539, witness := RowWitness.topPrime 491 },
  { lower := 540, upper := 571, witness := RowWitness.topPrime 523 },
  { lower := 572, upper := 619, witness := RowWitness.topPrime 571 },
  { lower := 620, upper := 667, witness := RowWitness.topPrime 619 },
  { lower := 668, upper := 709, witness := RowWitness.topPrime 661 },
  { lower := 710, upper := 757, witness := RowWitness.topPrime 709 },
  { lower := 758, upper := 805, witness := RowWitness.topPrime 757 },
  { lower := 806, upper := 845, witness := RowWitness.topPrime 797 },
  { lower := 846, upper := 887, witness := RowWitness.topPrime 839 },
  { lower := 888, upper := 935, witness := RowWitness.topPrime 887 },
  { lower := 936, upper := 977, witness := RowWitness.topPrime 929 },
  { lower := 978, upper := 1025, witness := RowWitness.topPrime 977 },
  { lower := 1026, upper := 1069, witness := RowWitness.topPrime 1021 },
  { lower := 1070, upper := 1117, witness := RowWitness.topPrime 1069 },
  { lower := 1118, upper := 1165, witness := RowWitness.topPrime 1117 },
  { lower := 1166, upper := 1211, witness := RowWitness.topPrime 1163 },
  { lower := 1212, upper := 1249, witness := RowWitness.topPrime 1201 },
  { lower := 1250, upper := 1297, witness := RowWitness.topPrime 1249 },
  { lower := 1298, upper := 1345, witness := RowWitness.topPrime 1297 },
  { lower := 1346, upper := 1375, witness := RowWitness.topPrime 1327 },
  { lower := 1376, upper := 1421, witness := RowWitness.topPrime 1373 },
  { lower := 1422, upper := 1457, witness := RowWitness.topPrime 1409 },
  { lower := 1458, upper := 1501, witness := RowWitness.topPrime 1453 },
  { lower := 1502, upper := 1547, witness := RowWitness.topPrime 1499 },
  { lower := 1548, upper := 1591, witness := RowWitness.topPrime 1543 },
  { lower := 1592, upper := 1631, witness := RowWitness.topPrime 1583 },
  { lower := 1632, upper := 1675, witness := RowWitness.topPrime 1627 },
  { lower := 1676, upper := 1717, witness := RowWitness.topPrime 1669 },
  { lower := 1718, upper := 1757, witness := RowWitness.topPrime 1709 },
  { lower := 1758, upper := 1801, witness := RowWitness.topPrime 1753 },
  { lower := 1802, upper := 1849, witness := RowWitness.topPrime 1801 },
  { lower := 1850, upper := 1895, witness := RowWitness.topPrime 1847 },
  { lower := 1896, upper := 1937, witness := RowWitness.topPrime 1889 },
  { lower := 1938, upper := 1981, witness := RowWitness.topPrime 1933 },
  { lower := 1982, upper := 2027, witness := RowWitness.topPrime 1979 },
  { lower := 2028, upper := 2075, witness := RowWitness.topPrime 2027 },
  { lower := 2076, upper := 2117, witness := RowWitness.topPrime 2069 },
  { lower := 2118, upper := 2161, witness := RowWitness.topPrime 2113 },
  { lower := 2162, upper := 2209, witness := RowWitness.topPrime 2161 },
  { lower := 2210, upper := 2255, witness := RowWitness.topPrime 2207 },
  { lower := 2256, upper := 2299, witness := RowWitness.topPrime 2251 },
  { lower := 2300, upper := 2345, witness := RowWitness.topPrime 2297 },
  { lower := 2346, upper := 2360, witness := RowWitness.topPrime 2341 },
  { lower := 2366, upper := 2405, witness := RowWitness.topPrime 2357 },
  { lower := 2406, upper := 2416, witness := RowWitness.topPrime 2399 },
  { lower := 2420, upper := 2423, witness := RowWitness.topPrime 2417 },
  { lower := 2430, upper := 2471, witness := RowWitness.topPrime 2423 },
  { lower := 2472, upper := 2478, witness := RowWitness.topPrime 2467 },
  { lower := 2500, upper := 2525, witness := RowWitness.topPrime 2477 },
  { lower := 2526, upper := 2569, witness := RowWitness.topPrime 2521 },
  { lower := 2570, upper := 2589, witness := RowWitness.topPrime 2557 },
  { lower := 2592, upper := 2639, witness := RowWitness.topPrime 2591 },
  { lower := 2640, upper := 2681, witness := RowWitness.topPrime 2633 },
  { lower := 2682, upper := 2725, witness := RowWitness.topPrime 2677 },
  { lower := 2726, upper := 2736, witness := RowWitness.topPrime 2719 },
  { lower := 2738, upper := 2779, witness := RowWitness.topPrime 2731 },
  { lower := 2780, upper := 2802, witness := RowWitness.topPrime 2777 },
  { lower := 2816, upper := 2831, witness := RowWitness.topPrime 2803 },
  { lower := 2835, upper := 2864, witness := RowWitness.topPrime 2833 },
  { lower := 2873, upper := 2909, witness := RowWitness.topPrime 2861 },
  { lower := 2910, upper := 2957, witness := RowWitness.topPrime 2909 },
  { lower := 2958, upper := 2964, witness := RowWitness.topPrime 2957 },
  { lower := 3000, upper := 3047, witness := RowWitness.topPrime 2999 },
  { lower := 3048, upper := 3089, witness := RowWitness.topPrime 3041 },
  { lower := 3090, upper := 3120, witness := RowWitness.topPrime 3089 },
  { lower := 3125, upper := 3126, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3185, witness := RowWitness.topPrime 3137 },
  { lower := 3186, upper := 3229, witness := RowWitness.topPrime 3181 },
  { lower := 3230, upper := 3277, witness := RowWitness.topPrime 3229 },
  { lower := 3278, upper := 3298, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3409, witness := RowWitness.topPrime 3361 },
  { lower := 3410, upper := 3436, witness := RowWitness.topPrime 3407 },
  { lower := 3468, upper := 3515, witness := RowWitness.topPrime 3467 },
  { lower := 3516, upper := 3557, witness := RowWitness.topPrime 3511 },
  { lower := 3584, upper := 3597, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3655, witness := RowWitness.topPrime 3607 },
  { lower := 3656, upper := 3678, witness := RowWitness.topPrime 3643 },
  { lower := 3703, upper := 3749, witness := RowWitness.topPrime 3701 },
  { lower := 3750, upper := 3787, witness := RowWitness.topPrime 3739 },
  { lower := 3788, upper := 3799, witness := RowWitness.topPrime 3779 },
  { lower := 3844, upper := 3881, witness := RowWitness.topPrime 3833 },
  { lower := 3882, upper := 3929, witness := RowWitness.topPrime 3881 },
  { lower := 3930, upper := 3935, witness := RowWitness.topPrime 3929 },
  { lower := 3971, upper := 4015, witness := RowWitness.topPrime 3967 },
  { lower := 4016, upper := 4041, witness := RowWitness.topPrime 4013 },
  { lower := 4046, upper := 4048, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4094, witness := RowWitness.topPrime 4051 },
  { lower := 4096, upper := 4104, witness := RowWitness.topPrime 4093 },
  { lower := 4107, upper := 4147, witness := RowWitness.topPrime 4099 },
  { lower := 4148, upper := 4173, witness := RowWitness.topPrime 4139 },
  { lower := 4224, upper := 4267, witness := RowWitness.topPrime 4219 },
  { lower := 4268, upper := 4283, witness := RowWitness.topPrime 4261 },
  { lower := 4335, upper := 4375, witness := RowWitness.topPrime 4327 },
  { lower := 4376, upper := 4421, witness := RowWitness.topPrime 4373 },
  { lower := 4422, upper := 4442, witness := RowWitness.topPrime 4421 },
  { lower := 4480, upper := 4511, witness := RowWitness.topPrime 4463 },
  { lower := 4512, upper := 4528, witness := RowWitness.topPrime 4507 },
  { lower := 4598, upper := 4645, witness := RowWitness.topPrime 4597 },
  { lower := 4646, upper := 4672, witness := RowWitness.topPrime 4643 },
  { lower := 4732, upper := 4777, witness := RowWitness.topPrime 4729 },
  { lower := 4778, upper := 4798, witness := RowWitness.topPrime 4759 },
  { lower := 4805, upper := 4809, witness := RowWitness.topPrime 4801 },
  { lower := 4864, upper := 4909, witness := RowWitness.topPrime 4861 },
  { lower := 4910, upper := 4949, witness := RowWitness.topPrime 4909 },
  { lower := 5043, upper := 5087, witness := RowWitness.topPrime 5039 },
  { lower := 5088, upper := 5118, witness := RowWitness.topPrime 5087 },
  { lower := 5120, upper := 5151, witness := RowWitness.topPrime 5119 },
  { lower := 5239, upper := 5250, witness := RowWitness.topPrime 5237 },
  { lower := 5324, upper := 5338, witness := RowWitness.topPrime 5323 },
  { lower := 5346, upper := 5372, witness := RowWitness.topPrime 5333 },
  { lower := 5376, upper := 5394, witness := RowWitness.topPrime 5351 },
  { lower := 5408, upper := 5455, witness := RowWitness.topPrime 5407 },
  { lower := 5456, upper := 5456, witness := RowWitness.topPrime 5449 },
  { lower := 5491, upper := 5524, witness := RowWitness.topPrime 5483 },
  { lower := 5577, upper := 5621, witness := RowWitness.topPrime 5573 },
  { lower := 5622, upper := 5639, witness := RowWitness.topPrime 5591 },
  { lower := 5640, upper := 5673, witness := RowWitness.topPrime 5639 },
  { lower := 5766, upper := 5797, witness := RowWitness.topPrime 5749 },
  { lower := 5798, upper := 5828, witness := RowWitness.topPrime 5791 },
  { lower := 5832, upper := 5867, witness := RowWitness.topPrime 5827 },
  { lower := 5888, upper := 5929, witness := RowWitness.topPrime 5881 },
  { lower := 5930, upper := 5936, witness := RowWitness.topPrime 5927 },
  { lower := 6075, upper := 6121, witness := RowWitness.topPrime 6073 },
  { lower := 6122, upper := 6123, witness := RowWitness.topPrime 6121 },
  { lower := 6144, upper := 6185, witness := RowWitness.topPrime 6143 },
  { lower := 6253, upper := 6295, witness := RowWitness.topPrime 6247 },
  { lower := 6296, upper := 6298, witness := RowWitness.topPrime 6287 },
  { lower := 6348, upper := 6391, witness := RowWitness.topPrime 6343 },
  { lower := 6392, upper := 6396, witness := RowWitness.topPrime 6389 },
  { lower := 6400, upper := 6406, witness := RowWitness.topPrime 6397 },
  { lower := 6422, upper := 6448, witness := RowWitness.topPrime 6421 },
  { lower := 6591, upper := 6609, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6639, witness := RowWitness.topPrime 6619 },
  { lower := 6647, upper := 6685, witness := RowWitness.topPrime 6637 },
  { lower := 6686, upper := 6703, witness := RowWitness.topPrime 6679 },
  { lower := 6727, upper := 6767, witness := RowWitness.topPrime 6719 },
  { lower := 6768, upper := 6775, witness := RowWitness.topPrime 6763 },
  { lower := 6845, upper := 6852, witness := RowWitness.topPrime 6841 },
  { lower := 6859, upper := 6905, witness := RowWitness.topPrime 6857 },
  { lower := 6906, upper := 6925, witness := RowWitness.topPrime 6899 },
  { lower := 6936, upper := 6960, witness := RowWitness.topPrime 6917 },
  { lower := 7225, upper := 7267, witness := RowWitness.topPrime 7219 },
  { lower := 7268, upper := 7268, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7441, witness := RowWitness.topPrime 7393 },
  { lower := 7442, upper := 7454, witness := RowWitness.topPrime 7433 },
  { lower := 7514, upper := 7555, witness := RowWitness.topPrime 7507 },
  { lower := 7556, upper := 7562, witness := RowWitness.topPrime 7549 },
  { lower := 7569, upper := 7609, witness := RowWitness.topPrime 7561 },
  { lower := 7610, upper := 7617, witness := RowWitness.topPrime 7607 },
  { lower := 7688, upper := 7728, witness := RowWitness.topPrime 7687 },
  { lower := 7803, upper := 7824, witness := RowWitness.topPrime 7793 },
  { lower := 7936, upper := 7981, witness := RowWitness.topPrime 7933 },
  { lower := 7982, upper := 7984, witness := RowWitness.topPrime 7963 },
  { lower := 7986, upper := 7990, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8034, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8140, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8240, witness := RowWitness.topPrime 8209 },
  { lower := 8262, upper := 8262, witness := RowWitness.topPrime 8243 },
  { lower := 8303, upper := 8310, witness := RowWitness.topPrime 8297 },
  { lower := 8405, upper := 8437, witness := RowWitness.topPrime 8389 },
  { lower := 8438, upper := 8458, witness := RowWitness.topPrime 8431 },
  { lower := 8464, upper := 8496, witness := RowWitness.topPrime 8461 },
  { lower := 8505, upper := 8512, witness := RowWitness.topPrime 8501 },
  { lower := 8664, upper := 8711, witness := RowWitness.topPrime 8663 },
  { lower := 8712, upper := 8718, witness := RowWitness.topPrime 8707 },
  { lower := 8748, upper := 8795, witness := RowWitness.topPrime 8747 },
  { lower := 8796, upper := 8798, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8836, witness := RowWitness.topPrime 8831 },
  { lower := 8960, upper := 8999, witness := RowWitness.topPrime 8951 },
  { lower := 9000, upper := 9041, witness := RowWitness.topPrime 8999 },
  { lower := 9234, upper := 9275, witness := RowWitness.topPrime 9227 },
  { lower := 9276, upper := 9296, witness := RowWitness.topPrime 9257 },
  { lower := 9386, upper := 9423, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9525, witness := RowWitness.topPrime 9521 },
  { lower := 9537, upper := 9570, witness := RowWitness.topPrime 9533 },
  { lower := 9583, upper := 9585, witness := RowWitness.topPrime 9551 },
  { lower := 9610, upper := 9631, witness := RowWitness.topPrime 9601 },
  { lower := 9747, upper := 9776, witness := RowWitness.topPrime 9743 },
  { lower := 10086, upper := 10127, witness := RowWitness.topPrime 10079 },
  { lower := 10128, upper := 10156, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10254, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10615, witness := RowWitness.topPrime 10567 },
  { lower := 10616, upper := 10619, witness := RowWitness.topPrime 10613 },
  { lower := 10625, upper := 10628, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10673, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10957, witness := RowWitness.topPrime 10909 },
  { lower := 10958, upper := 10983, witness := RowWitness.topPrime 10957 },
  { lower := 10985, upper := 11000, witness := RowWitness.topPrime 10979 },
  { lower := 11109, upper := 11141, witness := RowWitness.topPrime 11093 },
  { lower := 11142, upper := 11142, witness := RowWitness.topPrime 11131 },
  { lower := 11264, upper := 11298, witness := RowWitness.topPrime 11261 },
  { lower := 11552, upper := 11580, witness := RowWitness.topPrime 11551 },
  { lower := 11664, upper := 11686, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11791, witness := RowWitness.topPrime 11743 },
  { lower := 11792, upper := 11822, witness := RowWitness.topPrime 11789 },
  { lower := 11913, upper := 11923, witness := RowWitness.topPrime 11909 },
  { lower := 12288, upper := 12329, witness := RowWitness.topPrime 12281 },
  { lower := 12330, upper := 12336, witness := RowWitness.topPrime 12329 },
  { lower := 12500, upper := 12541, witness := RowWitness.topPrime 12497 },
  { lower := 12635, upper := 12663, witness := RowWitness.topPrime 12619 },
  { lower := 13125, upper := 13169, witness := RowWitness.topPrime 13121 },
  { lower := 13170, upper := 13170, witness := RowWitness.topPrime 13163 },
  { lower := 13225, upper := 13230, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13273, witness := RowWitness.topPrime 13249 },
  { lower := 13312, upper := 13357, witness := RowWitness.topPrime 13309 },
  { lower := 13358, upper := 13358, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13499, witness := RowWitness.topPrime 13451 },
  { lower := 13500, upper := 13502, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13738, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13777, witness := RowWitness.topPrime 13729 },
  { lower := 13778, upper := 13798, witness := RowWitness.topPrime 13763 },
  { lower := 13851, upper := 13872, witness := RowWitness.topPrime 13841 },
  { lower := 14297, upper := 14331, witness := RowWitness.topPrime 14293 },
  { lower := 14336, upper := 14345, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14384, witness := RowWitness.topPrime 14369 },
  { lower := 14415, upper := 14423, witness := RowWitness.topPrime 14411 },
  { lower := 14812, upper := 14840, witness := RowWitness.topPrime 14797 },
  { lower := 14848, upper := 14860, witness := RowWitness.topPrime 14843 },
  { lower := 15138, upper := 15177, witness := RowWitness.topPrime 15137 },
  { lower := 15341, upper := 15357, witness := RowWitness.topPrime 15331 },
  { lower := 15360, upper := 15407, witness := RowWitness.topPrime 15359 },
  { lower := 15408, upper := 15424, witness := RowWitness.topPrime 15401 },
  { lower := 15872, upper := 15907, witness := RowWitness.topPrime 15859 },
  { lower := 15908, upper := 15918, witness := RowWitness.topPrime 15907 },
  { lower := 15979, upper := 16020, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16385, witness := RowWitness.topPrime 16381 },
  { lower := 16399, upper := 16429, witness := RowWitness.topPrime 16381 },
  { lower := 16430, upper := 16447, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16815, witness := RowWitness.topPrime 16787 },
  { lower := 16820, upper := 16858, witness := RowWitness.topPrime 16811 },
  { lower := 16896, upper := 16923, witness := RowWitness.topPrime 16889 },
  { lower := 16928, upper := 16944, witness := RowWitness.topPrime 16927 },
  { lower := 17303, upper := 17346, witness := RowWitness.topPrime 17299 },
  { lower := 17496, upper := 17539, witness := RowWitness.topPrime 17491 },
  { lower := 17540, upper := 17544, witness := RowWitness.topPrime 17539 },
  { lower := 17672, upper := 17709, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18273, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18529, witness := RowWitness.topPrime 18481 },
  { lower := 18530, upper := 18550, witness := RowWitness.topPrime 18523 },
  { lower := 19375, upper := 19391, witness := RowWitness.topPrime 19373 },
  { lower := 19683, upper := 19700, witness := RowWitness.topPrime 19681 },
  { lower := 20000, upper := 20013, witness := RowWitness.topPrime 19997 },
  { lower := 20181, upper := 20225, witness := RowWitness.topPrime 20177 },
  { lower := 20226, upper := 20229, witness := RowWitness.topPrime 20219 },
  { lower := 20577, upper := 20583, witness := RowWitness.topPrime 20563 },
  { lower := 20625, upper := 20625, witness := RowWitness.topPrime 20611 },
  { lower := 21142, upper := 21187, witness := RowWitness.topPrime 21139 },
  { lower := 21188, upper := 21189, witness := RowWitness.topPrime 21187 },
  { lower := 21296, upper := 21298, witness := RowWitness.topPrime 21283 },
  { lower := 21866, upper := 21911, witness := RowWitness.topPrime 21863 },
  { lower := 21912, upper := 21923, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22138, witness := RowWitness.topPrime 22093 },
  { lower := 22627, upper := 22647, witness := RowWitness.topPrime 22621 },
  { lower := 23548, upper := 23587, witness := RowWitness.topPrime 23539 },
  { lower := 23588, upper := 23596, witness := RowWitness.topPrime 23581 },
  { lower := 24037, upper := 24077, witness := RowWitness.topPrime 24029 },
  { lower := 24078, upper := 24085, witness := RowWitness.topPrime 24077 },
  { lower := 24334, upper := 24347, witness := RowWitness.topPrime 24329 },
  { lower := 24576, upper := 24613, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25034, witness := RowWitness.topPrime 24989 },
  { lower := 25230, upper := 25263, witness := RowWitness.topPrime 25229 },
  { lower := 26624, upper := 26645, witness := RowWitness.topPrime 26597 },
  { lower := 26646, upper := 26668, witness := RowWitness.topPrime 26641 },
  { lower := 26908, upper := 26951, witness := RowWitness.topPrime 26903 },
  { lower := 26952, upper := 26956, witness := RowWitness.topPrime 26951 },
  { lower := 27753, upper := 27783, witness := RowWitness.topPrime 27751 },
  { lower := 28577, upper := 28621, witness := RowWitness.topPrime 28573 },
  { lower := 28622, upper := 28625, witness := RowWitness.topPrime 28621 },
  { lower := 28717, upper := 28720, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28765, witness := RowWitness.topPrime 28729 },
  { lower := 29478, upper := 29483, witness := RowWitness.topPrime 29473 },
  { lower := 30618, upper := 30641, witness := RowWitness.topPrime 30593 },
  { lower := 30642, upper := 30661, witness := RowWitness.topPrime 30637 },
  { lower := 30752, upper := 30775, witness := RowWitness.topPrime 30727 },
  { lower := 30776, upper := 30800, witness := RowWitness.topPrime 30773 },
  { lower := 31744, upper := 31761, witness := RowWitness.topPrime 31741 },
  { lower := 31944, upper := 31955, witness := RowWitness.topPrime 31907 },
  { lower := 31956, upper := 31956, witness := RowWitness.largeDivisor 98919441616773975955811129907407298488070269945319970538018660376269040792004787607208138144549122598650871412337422748908407071730462751562605671 },
  { lower := 31957, upper := 31987, witness := RowWitness.topPrime 31957 },
  { lower := 32805, upper := 32816, witness := RowWitness.topPrime 32803 },
  { lower := 33282, upper := 33295, witness := RowWitness.topPrime 33247 },
  { lower := 33296, upper := 33323, witness := RowWitness.topPrime 33289 },
  { lower := 33635, upper := 33668, witness := RowWitness.topPrime 33629 },
  { lower := 34391, upper := 34423, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35179, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35349, witness := RowWitness.topPrime 35339 },
  { lower := 36980, upper := 37027, witness := RowWitness.topPrime 36979 },
  { lower := 37028, upper := 37028, witness := RowWitness.topPrime 37021 },
  { lower := 43740, upper := 43769, witness := RowWitness.topPrime 43721 },
  { lower := 43770, upper := 43788, witness := RowWitness.topPrime 43759 },
  { lower := 43940, upper := 43971, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44228, witness := RowWitness.topPrime 44207 },
  { lower := 47104, upper := 47116, witness := RowWitness.topPrime 47093 },
  { lower := 48114, upper := 48122, witness := RowWitness.topPrime 48109 },
  { lower := 48778, upper := 48797, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49178, witness := RowWitness.topPrime 49139 },
  { lower := 55473, upper := 55517, witness := RowWitness.topPrime 55469 },
  { lower := 55518, upper := 55518, witness := RowWitness.topPrime 55511 },
  { lower := 57344, upper := 57367, witness := RowWitness.topPrime 57331 },
  { lower := 59392, upper := 59423, witness := RowWitness.topPrime 59387 },
  { lower := 65625, upper := 65658, witness := RowWitness.topPrime 65617 },
  { lower := 68782, upper := 68798, witness := RowWitness.topPrime 68777 },
  { lower := 73205, upper := 73215, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73743, witness := RowWitness.topPrime 73727 },
  { lower := 98304, upper := 98308, witness := RowWitness.topPrime 98299 },
  { lower := 150903, upper := 150946, witness := RowWitness.topPrime 150901 },
  { lower := 327701, upper := 327728, witness := RowWitness.topPrime 327689 },
  { lower := 655402, upper := 655408, witness := RowWitness.topPrime 655399 },
  { lower := 658503, upper := 658535, witness := RowWitness.topPrime 658487 },
  { lower := 658536, upper := 658537, witness := RowWitness.topPrime 658507 }
]

def row049_layers : List CoverLayer := [
  { lower := 2352, upper := 4704, M := 40 },
  { lower := 4704, upper := 9408, M := 38 },
  { lower := 9408, upper := 18816, M := 36 },
  { lower := 18816, upper := 37632, M := 35 },
  { lower := 37632, upper := 75264, M := 33 },
  { lower := 75264, upper := 150528, M := 31 },
  { lower := 150528, upper := 301056, M := 30 },
  { lower := 301056, upper := 602112, M := 29 },
  { lower := 602112, upper := 1204224, M := 27 },
  { lower := 1204224, upper := 2408448, M := 26 },
  { lower := 2408448, upper := 4816896, M := 25 },
  { lower := 4816896, upper := 9633792, M := 23 },
  { lower := 9633792, upper := 19267584, M := 22 },
  { lower := 19267584, upper := 38535168, M := 21 },
  { lower := 38535168, upper := 77070336, M := 20 },
  { lower := 77070336, upper := 154140672, M := 19 },
  { lower := 154140672, upper := 308281344, M := 18 },
  { lower := 308281344, upper := 616562688, M := 18 },
  { lower := 616562688, upper := 1233125376, M := 17 },
  { lower := 1233125376, upper := 2466250752, M := 16 },
  { lower := 2466250752, upper := 4932501504, M := 15 },
  { lower := 4932501504, upper := 9865003008, M := 15 },
  { lower := 9865003008, upper := 19730006016, M := 14 },
  { lower := 19730006016, upper := 39460012032, M := 13 },
  { lower := 39460012032, upper := 78920024064, M := 13 },
  { lower := 78920024064, upper := 157840048128, M := 12 },
  { lower := 157840048128, upper := 315680096256, M := 11 },
  { lower := 315680096256, upper := 631360192512, M := 11 },
  { lower := 631360192512, upper := 1262720385024, M := 10 },
  { lower := 1262720385024, upper := 2525440770048, M := 10 },
  { lower := 2525440770048, upper := 5050881540096, M := 9 },
  { lower := 5050881540096, upper := 10101763080192, M := 9 },
  { lower := 10101763080192, upper := 20203526160384, M := 9 },
  { lower := 20203526160384, upper := 40407052320768, M := 8 },
  { lower := 40407052320768, upper := 80814104641536, M := 8 },
  { lower := 80814104641536, upper := 161628209283072, M := 8 },
  { lower := 161628209283072, upper := 323256418566144, M := 7 },
  { lower := 323256418566144, upper := 646512837132288, M := 7 },
  { lower := 646512837132288, upper := 1293025674264576, M := 7 },
  { lower := 1293025674264576, upper := 2586051348529152, M := 6 },
  { lower := 2586051348529152, upper := 5172102697058304, M := 6 },
  { lower := 5172102697058304, upper := 10344205394116608, M := 6 },
  { lower := 10344205394116608, upper := 20688410788233216, M := 5 },
  { lower := 20688410788233216, upper := 41376821576466432, M := 5 },
  { lower := 41376821576466432, upper := 82753643152932864, M := 5 },
  { lower := 82753643152932864, upper := 165507286305865728, M := 5 },
  { lower := 165507286305865728, upper := 331014572611731456, M := 5 },
  { lower := 331014572611731456, upper := 662029145223462912, M := 4 },
  { lower := 662029145223462912, upper := 1324058290446925824, M := 4 },
  { lower := 1324058290446925824, upper := 2648116580893851648, M := 4 },
  { lower := 2648116580893851648, upper := 5296233161787703296, M := 4 },
  { lower := 5296233161787703296, upper := 10592466323575406592, M := 4 },
  { lower := 10592466323575406592, upper := 21184932647150813184, M := 4 },
  { lower := 21184932647150813184, upper := 42369865294301626368, M := 3 },
  { lower := 42369865294301626368, upper := 84739730588603252736, M := 3 },
  { lower := 84739730588603252736, upper := 169479461177206505472, M := 3 },
  { lower := 169479461177206505472, upper := 338958922354413010944, M := 3 },
  { lower := 338958922354413010944, upper := 677917844708826021888, M := 3 },
  { lower := 677917844708826021888, upper := 1355835689417652043776, M := 3 },
  { lower := 1355835689417652043776, upper := 2711671378835304087552, M := 3 },
  { lower := 2711671378835304087552, upper := 5423342757670608175104, M := 3 },
  { lower := 5423342757670608175104, upper := 10846685515341216350208, M := 2 },
  { lower := 10846685515341216350208, upper := 21693371030682432700416, M := 2 },
  { lower := 21693371030682432700416, upper := 43386742061364865400832, M := 2 },
  { lower := 43386742061364865400832, upper := 86773484122729730801664, M := 2 },
  { lower := 86773484122729730801664, upper := 173546968245459461603328, M := 2 },
  { lower := 173546968245459461603328, upper := 347093936490918923206656, M := 2 },
  { lower := 347093936490918923206656, upper := 694187872981837846413312, M := 2 },
  { lower := 694187872981837846413312, upper := 1388375745963675692826624, M := 2 },
  { lower := 1388375745963675692826624, upper := 2776751491927351385653248, M := 2 },
  { lower := 2776751491927351385653248, upper := 5553502983854702771306496, M := 2 },
  { lower := 5553502983854702771306496, upper := 11107005967709405542612992, M := 2 },
  { lower := 11107005967709405542612992, upper := 22214011935418811085225984, M := 2 },
  { lower := 22214011935418811085225984, upper := 44428023870837622170451968, M := 2 },
  { lower := 44428023870837622170451968, upper := 88856047741675244340903936, M := 2 },
  { lower := 88856047741675244340903936, upper := 100000000000000000000000000, M := 1 }
]

def row049 : FiniteCoverRow := {
  height := row049_height,
  goods := row049_goods,
  layers := row049_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good000_checked :
    goodSegmentCheck 49 16 33
      { lower := 100, upper := 145, witness := RowWitness.topPrime 97 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good001_checked :
    goodSegmentCheck 49 16 33
      { lower := 146, upper := 187, witness := RowWitness.topPrime 139 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good002_checked :
    goodSegmentCheck 49 16 33
      { lower := 188, upper := 229, witness := RowWitness.topPrime 181 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good003_checked :
    goodSegmentCheck 49 16 33
      { lower := 230, upper := 277, witness := RowWitness.topPrime 229 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good004_checked :
    goodSegmentCheck 49 16 33
      { lower := 278, upper := 325, witness := RowWitness.topPrime 277 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good005_checked :
    goodSegmentCheck 49 16 33
      { lower := 326, upper := 365, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good006_checked :
    goodSegmentCheck 49 16 33
      { lower := 366, upper := 407, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good007_checked :
    goodSegmentCheck 49 16 33
      { lower := 408, upper := 449, witness := RowWitness.topPrime 401 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good008_checked :
    goodSegmentCheck 49 16 33
      { lower := 450, upper := 497, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good009_checked :
    goodSegmentCheck 49 16 33
      { lower := 498, upper := 539, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good010_checked :
    goodSegmentCheck 49 16 33
      { lower := 540, upper := 571, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good011_checked :
    goodSegmentCheck 49 16 33
      { lower := 572, upper := 619, witness := RowWitness.topPrime 571 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good012_checked :
    goodSegmentCheck 49 16 33
      { lower := 620, upper := 667, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good013_checked :
    goodSegmentCheck 49 16 33
      { lower := 668, upper := 709, witness := RowWitness.topPrime 661 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good014_checked :
    goodSegmentCheck 49 16 33
      { lower := 710, upper := 757, witness := RowWitness.topPrime 709 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good015_checked :
    goodSegmentCheck 49 16 33
      { lower := 758, upper := 805, witness := RowWitness.topPrime 757 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good016_checked :
    goodSegmentCheck 49 16 33
      { lower := 806, upper := 845, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good017_checked :
    goodSegmentCheck 49 16 33
      { lower := 846, upper := 887, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good018_checked :
    goodSegmentCheck 49 16 33
      { lower := 888, upper := 935, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good019_checked :
    goodSegmentCheck 49 16 33
      { lower := 936, upper := 977, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good020_checked :
    goodSegmentCheck 49 16 33
      { lower := 978, upper := 1025, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good021_checked :
    goodSegmentCheck 49 16 33
      { lower := 1026, upper := 1069, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good022_checked :
    goodSegmentCheck 49 16 33
      { lower := 1070, upper := 1117, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good023_checked :
    goodSegmentCheck 49 16 33
      { lower := 1118, upper := 1165, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good024_checked :
    goodSegmentCheck 49 16 33
      { lower := 1166, upper := 1211, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good025_checked :
    goodSegmentCheck 49 16 33
      { lower := 1212, upper := 1249, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good026_checked :
    goodSegmentCheck 49 16 33
      { lower := 1250, upper := 1297, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good027_checked :
    goodSegmentCheck 49 16 33
      { lower := 1298, upper := 1345, witness := RowWitness.topPrime 1297 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good028_checked :
    goodSegmentCheck 49 16 33
      { lower := 1346, upper := 1375, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good029_checked :
    goodSegmentCheck 49 16 33
      { lower := 1376, upper := 1421, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good030_checked :
    goodSegmentCheck 49 16 33
      { lower := 1422, upper := 1457, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good031_checked :
    goodSegmentCheck 49 16 33
      { lower := 1458, upper := 1501, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good032_checked :
    goodSegmentCheck 49 16 33
      { lower := 1502, upper := 1547, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good033_checked :
    goodSegmentCheck 49 16 33
      { lower := 1548, upper := 1591, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good034_checked :
    goodSegmentCheck 49 16 33
      { lower := 1592, upper := 1631, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good035_checked :
    goodSegmentCheck 49 16 33
      { lower := 1632, upper := 1675, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good036_checked :
    goodSegmentCheck 49 16 33
      { lower := 1676, upper := 1717, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good037_checked :
    goodSegmentCheck 49 16 33
      { lower := 1718, upper := 1757, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good038_checked :
    goodSegmentCheck 49 16 33
      { lower := 1758, upper := 1801, witness := RowWitness.topPrime 1753 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good039_checked :
    goodSegmentCheck 49 16 33
      { lower := 1802, upper := 1849, witness := RowWitness.topPrime 1801 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good040_checked :
    goodSegmentCheck 49 16 33
      { lower := 1850, upper := 1895, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good041_checked :
    goodSegmentCheck 49 16 33
      { lower := 1896, upper := 1937, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good042_checked :
    goodSegmentCheck 49 16 33
      { lower := 1938, upper := 1981, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good043_checked :
    goodSegmentCheck 49 16 33
      { lower := 1982, upper := 2027, witness := RowWitness.topPrime 1979 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good044_checked :
    goodSegmentCheck 49 16 33
      { lower := 2028, upper := 2075, witness := RowWitness.topPrime 2027 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good045_checked :
    goodSegmentCheck 49 16 33
      { lower := 2076, upper := 2117, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good046_checked :
    goodSegmentCheck 49 16 33
      { lower := 2118, upper := 2161, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good047_checked :
    goodSegmentCheck 49 16 33
      { lower := 2162, upper := 2209, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good048_checked :
    goodSegmentCheck 49 16 33
      { lower := 2210, upper := 2255, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good049_checked :
    goodSegmentCheck 49 16 33
      { lower := 2256, upper := 2299, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good050_checked :
    goodSegmentCheck 49 16 33
      { lower := 2300, upper := 2345, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good051_checked :
    goodSegmentCheck 49 16 33
      { lower := 2346, upper := 2360, witness := RowWitness.topPrime 2341 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good052_checked :
    goodSegmentCheck 49 16 33
      { lower := 2366, upper := 2405, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good053_checked :
    goodSegmentCheck 49 16 33
      { lower := 2406, upper := 2416, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good054_checked :
    goodSegmentCheck 49 16 33
      { lower := 2420, upper := 2423, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good055_checked :
    goodSegmentCheck 49 16 33
      { lower := 2430, upper := 2471, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good056_checked :
    goodSegmentCheck 49 16 33
      { lower := 2472, upper := 2478, witness := RowWitness.topPrime 2467 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good057_checked :
    goodSegmentCheck 49 16 33
      { lower := 2500, upper := 2525, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good058_checked :
    goodSegmentCheck 49 16 33
      { lower := 2526, upper := 2569, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good059_checked :
    goodSegmentCheck 49 16 33
      { lower := 2570, upper := 2589, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good060_checked :
    goodSegmentCheck 49 16 33
      { lower := 2592, upper := 2639, witness := RowWitness.topPrime 2591 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good061_checked :
    goodSegmentCheck 49 16 33
      { lower := 2640, upper := 2681, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good062_checked :
    goodSegmentCheck 49 16 33
      { lower := 2682, upper := 2725, witness := RowWitness.topPrime 2677 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good063_checked :
    goodSegmentCheck 49 16 33
      { lower := 2726, upper := 2736, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good064_checked :
    goodSegmentCheck 49 16 33
      { lower := 2738, upper := 2779, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good065_checked :
    goodSegmentCheck 49 16 33
      { lower := 2780, upper := 2802, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good066_checked :
    goodSegmentCheck 49 16 33
      { lower := 2816, upper := 2831, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good067_checked :
    goodSegmentCheck 49 16 33
      { lower := 2835, upper := 2864, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good068_checked :
    goodSegmentCheck 49 16 33
      { lower := 2873, upper := 2909, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good069_checked :
    goodSegmentCheck 49 16 33
      { lower := 2910, upper := 2957, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good070_checked :
    goodSegmentCheck 49 16 33
      { lower := 2958, upper := 2964, witness := RowWitness.topPrime 2957 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good071_checked :
    goodSegmentCheck 49 16 33
      { lower := 3000, upper := 3047, witness := RowWitness.topPrime 2999 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good072_checked :
    goodSegmentCheck 49 16 33
      { lower := 3048, upper := 3089, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good073_checked :
    goodSegmentCheck 49 16 33
      { lower := 3090, upper := 3120, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good074_checked :
    goodSegmentCheck 49 16 33
      { lower := 3125, upper := 3126, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good075_checked :
    goodSegmentCheck 49 16 33
      { lower := 3146, upper := 3185, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good076_checked :
    goodSegmentCheck 49 16 33
      { lower := 3186, upper := 3229, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good077_checked :
    goodSegmentCheck 49 16 33
      { lower := 3230, upper := 3277, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good078_checked :
    goodSegmentCheck 49 16 33
      { lower := 3278, upper := 3298, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good079_checked :
    goodSegmentCheck 49 16 33
      { lower := 3362, upper := 3409, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good080_checked :
    goodSegmentCheck 49 16 33
      { lower := 3410, upper := 3436, witness := RowWitness.topPrime 3407 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good081_checked :
    goodSegmentCheck 49 16 33
      { lower := 3468, upper := 3515, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good082_checked :
    goodSegmentCheck 49 16 33
      { lower := 3516, upper := 3557, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good083_checked :
    goodSegmentCheck 49 16 33
      { lower := 3584, upper := 3597, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good084_checked :
    goodSegmentCheck 49 16 33
      { lower := 3610, upper := 3655, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good085_checked :
    goodSegmentCheck 49 16 33
      { lower := 3656, upper := 3678, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good086_checked :
    goodSegmentCheck 49 16 33
      { lower := 3703, upper := 3749, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good087_checked :
    goodSegmentCheck 49 16 33
      { lower := 3750, upper := 3787, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good088_checked :
    goodSegmentCheck 49 16 33
      { lower := 3788, upper := 3799, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good089_checked :
    goodSegmentCheck 49 16 33
      { lower := 3844, upper := 3881, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good090_checked :
    goodSegmentCheck 49 16 33
      { lower := 3882, upper := 3929, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good091_checked :
    goodSegmentCheck 49 16 33
      { lower := 3930, upper := 3935, witness := RowWitness.topPrime 3929 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good092_checked :
    goodSegmentCheck 49 16 33
      { lower := 3971, upper := 4015, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good093_checked :
    goodSegmentCheck 49 16 33
      { lower := 4016, upper := 4041, witness := RowWitness.topPrime 4013 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good094_checked :
    goodSegmentCheck 49 16 33
      { lower := 4046, upper := 4048, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good095_checked :
    goodSegmentCheck 49 16 33
      { lower := 4056, upper := 4094, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good096_checked :
    goodSegmentCheck 49 16 33
      { lower := 4096, upper := 4104, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good097_checked :
    goodSegmentCheck 49 16 33
      { lower := 4107, upper := 4147, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good098_checked :
    goodSegmentCheck 49 16 33
      { lower := 4148, upper := 4173, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good099_checked :
    goodSegmentCheck 49 16 33
      { lower := 4224, upper := 4267, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good100_checked :
    goodSegmentCheck 49 16 33
      { lower := 4268, upper := 4283, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good101_checked :
    goodSegmentCheck 49 16 33
      { lower := 4335, upper := 4375, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good102_checked :
    goodSegmentCheck 49 16 33
      { lower := 4376, upper := 4421, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good103_checked :
    goodSegmentCheck 49 16 33
      { lower := 4422, upper := 4442, witness := RowWitness.topPrime 4421 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good104_checked :
    goodSegmentCheck 49 16 33
      { lower := 4480, upper := 4511, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good105_checked :
    goodSegmentCheck 49 16 33
      { lower := 4512, upper := 4528, witness := RowWitness.topPrime 4507 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good106_checked :
    goodSegmentCheck 49 16 33
      { lower := 4598, upper := 4645, witness := RowWitness.topPrime 4597 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good107_checked :
    goodSegmentCheck 49 16 33
      { lower := 4646, upper := 4672, witness := RowWitness.topPrime 4643 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good108_checked :
    goodSegmentCheck 49 16 33
      { lower := 4732, upper := 4777, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good109_checked :
    goodSegmentCheck 49 16 33
      { lower := 4778, upper := 4798, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good110_checked :
    goodSegmentCheck 49 16 33
      { lower := 4805, upper := 4809, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good111_checked :
    goodSegmentCheck 49 16 33
      { lower := 4864, upper := 4909, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good112_checked :
    goodSegmentCheck 49 16 33
      { lower := 4910, upper := 4949, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good113_checked :
    goodSegmentCheck 49 16 33
      { lower := 5043, upper := 5087, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good114_checked :
    goodSegmentCheck 49 16 33
      { lower := 5088, upper := 5118, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good115_checked :
    goodSegmentCheck 49 16 33
      { lower := 5120, upper := 5151, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good116_checked :
    goodSegmentCheck 49 16 33
      { lower := 5239, upper := 5250, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good117_checked :
    goodSegmentCheck 49 16 33
      { lower := 5324, upper := 5338, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good118_checked :
    goodSegmentCheck 49 16 33
      { lower := 5346, upper := 5372, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good119_checked :
    goodSegmentCheck 49 16 33
      { lower := 5376, upper := 5394, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good120_checked :
    goodSegmentCheck 49 16 33
      { lower := 5408, upper := 5455, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good121_checked :
    goodSegmentCheck 49 16 33
      { lower := 5456, upper := 5456, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good122_checked :
    goodSegmentCheck 49 16 33
      { lower := 5491, upper := 5524, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good123_checked :
    goodSegmentCheck 49 16 33
      { lower := 5577, upper := 5621, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good124_checked :
    goodSegmentCheck 49 16 33
      { lower := 5622, upper := 5639, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good125_checked :
    goodSegmentCheck 49 16 33
      { lower := 5640, upper := 5673, witness := RowWitness.topPrime 5639 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good126_checked :
    goodSegmentCheck 49 16 33
      { lower := 5766, upper := 5797, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good127_checked :
    goodSegmentCheck 49 16 33
      { lower := 5798, upper := 5828, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good128_checked :
    goodSegmentCheck 49 16 33
      { lower := 5832, upper := 5867, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good129_checked :
    goodSegmentCheck 49 16 33
      { lower := 5888, upper := 5929, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good130_checked :
    goodSegmentCheck 49 16 33
      { lower := 5930, upper := 5936, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good131_checked :
    goodSegmentCheck 49 16 33
      { lower := 6075, upper := 6121, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good132_checked :
    goodSegmentCheck 49 16 33
      { lower := 6122, upper := 6123, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good133_checked :
    goodSegmentCheck 49 16 33
      { lower := 6144, upper := 6185, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good134_checked :
    goodSegmentCheck 49 16 33
      { lower := 6253, upper := 6295, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good135_checked :
    goodSegmentCheck 49 16 33
      { lower := 6296, upper := 6298, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good136_checked :
    goodSegmentCheck 49 16 33
      { lower := 6348, upper := 6391, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good137_checked :
    goodSegmentCheck 49 16 33
      { lower := 6392, upper := 6396, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good138_checked :
    goodSegmentCheck 49 16 33
      { lower := 6400, upper := 6406, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good139_checked :
    goodSegmentCheck 49 16 33
      { lower := 6422, upper := 6448, witness := RowWitness.topPrime 6421 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good140_checked :
    goodSegmentCheck 49 16 33
      { lower := 6591, upper := 6609, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good141_checked :
    goodSegmentCheck 49 16 33
      { lower := 6627, upper := 6639, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good142_checked :
    goodSegmentCheck 49 16 33
      { lower := 6647, upper := 6685, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good143_checked :
    goodSegmentCheck 49 16 33
      { lower := 6686, upper := 6703, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good144_checked :
    goodSegmentCheck 49 16 33
      { lower := 6727, upper := 6767, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good145_checked :
    goodSegmentCheck 49 16 33
      { lower := 6768, upper := 6775, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good146_checked :
    goodSegmentCheck 49 16 33
      { lower := 6845, upper := 6852, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good147_checked :
    goodSegmentCheck 49 16 33
      { lower := 6859, upper := 6905, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good148_checked :
    goodSegmentCheck 49 16 33
      { lower := 6906, upper := 6925, witness := RowWitness.topPrime 6899 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good149_checked :
    goodSegmentCheck 49 16 33
      { lower := 6936, upper := 6960, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good150_checked :
    goodSegmentCheck 49 16 33
      { lower := 7225, upper := 7267, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good151_checked :
    goodSegmentCheck 49 16 33
      { lower := 7268, upper := 7268, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good152_checked :
    goodSegmentCheck 49 16 33
      { lower := 7406, upper := 7441, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good153_checked :
    goodSegmentCheck 49 16 33
      { lower := 7442, upper := 7454, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good154_checked :
    goodSegmentCheck 49 16 33
      { lower := 7514, upper := 7555, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good155_checked :
    goodSegmentCheck 49 16 33
      { lower := 7556, upper := 7562, witness := RowWitness.topPrime 7549 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good156_checked :
    goodSegmentCheck 49 16 33
      { lower := 7569, upper := 7609, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good157_checked :
    goodSegmentCheck 49 16 33
      { lower := 7610, upper := 7617, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good158_checked :
    goodSegmentCheck 49 16 33
      { lower := 7688, upper := 7728, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good159_checked :
    goodSegmentCheck 49 16 33
      { lower := 7803, upper := 7824, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good160_checked :
    goodSegmentCheck 49 16 33
      { lower := 7936, upper := 7981, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good161_checked :
    goodSegmentCheck 49 16 33
      { lower := 7982, upper := 7984, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good162_checked :
    goodSegmentCheck 49 16 33
      { lower := 7986, upper := 7990, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good163_checked :
    goodSegmentCheck 49 16 33
      { lower := 8019, upper := 8034, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good164_checked :
    goodSegmentCheck 49 16 33
      { lower := 8125, upper := 8140, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good165_checked :
    goodSegmentCheck 49 16 33
      { lower := 8214, upper := 8240, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good166_checked :
    goodSegmentCheck 49 16 33
      { lower := 8262, upper := 8262, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good167_checked :
    goodSegmentCheck 49 16 33
      { lower := 8303, upper := 8310, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good168_checked :
    goodSegmentCheck 49 16 33
      { lower := 8405, upper := 8437, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good169_checked :
    goodSegmentCheck 49 16 33
      { lower := 8438, upper := 8458, witness := RowWitness.topPrime 8431 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good170_checked :
    goodSegmentCheck 49 16 33
      { lower := 8464, upper := 8496, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good171_checked :
    goodSegmentCheck 49 16 33
      { lower := 8505, upper := 8512, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good172_checked :
    goodSegmentCheck 49 16 33
      { lower := 8664, upper := 8711, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good173_checked :
    goodSegmentCheck 49 16 33
      { lower := 8712, upper := 8718, witness := RowWitness.topPrime 8707 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good174_checked :
    goodSegmentCheck 49 16 33
      { lower := 8748, upper := 8795, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good175_checked :
    goodSegmentCheck 49 16 33
      { lower := 8796, upper := 8798, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good176_checked :
    goodSegmentCheck 49 16 33
      { lower := 8836, upper := 8836, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good177_checked :
    goodSegmentCheck 49 16 33
      { lower := 8960, upper := 8999, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good178_checked :
    goodSegmentCheck 49 16 33
      { lower := 9000, upper := 9041, witness := RowWitness.topPrime 8999 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good179_checked :
    goodSegmentCheck 49 16 33
      { lower := 9234, upper := 9275, witness := RowWitness.topPrime 9227 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good180_checked :
    goodSegmentCheck 49 16 33
      { lower := 9276, upper := 9296, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good181_checked :
    goodSegmentCheck 49 16 33
      { lower := 9386, upper := 9423, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good182_checked :
    goodSegmentCheck 49 16 33
      { lower := 9522, upper := 9525, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good183_checked :
    goodSegmentCheck 49 16 33
      { lower := 9537, upper := 9570, witness := RowWitness.topPrime 9533 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good184_checked :
    goodSegmentCheck 49 16 33
      { lower := 9583, upper := 9585, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good185_checked :
    goodSegmentCheck 49 16 33
      { lower := 9610, upper := 9631, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good186_checked :
    goodSegmentCheck 49 16 33
      { lower := 9747, upper := 9776, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good187_checked :
    goodSegmentCheck 49 16 33
      { lower := 10086, upper := 10127, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good188_checked :
    goodSegmentCheck 49 16 33
      { lower := 10128, upper := 10156, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good189_checked :
    goodSegmentCheck 49 16 33
      { lower := 10240, upper := 10254, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good190_checked :
    goodSegmentCheck 49 16 33
      { lower := 10580, upper := 10615, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good191_checked :
    goodSegmentCheck 49 16 33
      { lower := 10616, upper := 10619, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good192_checked :
    goodSegmentCheck 49 16 33
      { lower := 10625, upper := 10628, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good193_checked :
    goodSegmentCheck 49 16 33
      { lower := 10648, upper := 10673, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good194_checked :
    goodSegmentCheck 49 16 33
      { lower := 10935, upper := 10957, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good195_checked :
    goodSegmentCheck 49 16 33
      { lower := 10958, upper := 10983, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good196_checked :
    goodSegmentCheck 49 16 33
      { lower := 10985, upper := 11000, witness := RowWitness.topPrime 10979 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good197_checked :
    goodSegmentCheck 49 16 33
      { lower := 11109, upper := 11141, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good198_checked :
    goodSegmentCheck 49 16 33
      { lower := 11142, upper := 11142, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good199_checked :
    goodSegmentCheck 49 16 33
      { lower := 11264, upper := 11298, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good200_checked :
    goodSegmentCheck 49 16 33
      { lower := 11552, upper := 11580, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good201_checked :
    goodSegmentCheck 49 16 33
      { lower := 11664, upper := 11686, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good202_checked :
    goodSegmentCheck 49 16 33
      { lower := 11774, upper := 11791, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good203_checked :
    goodSegmentCheck 49 16 33
      { lower := 11792, upper := 11822, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good204_checked :
    goodSegmentCheck 49 16 33
      { lower := 11913, upper := 11923, witness := RowWitness.topPrime 11909 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good205_checked :
    goodSegmentCheck 49 16 33
      { lower := 12288, upper := 12329, witness := RowWitness.topPrime 12281 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good206_checked :
    goodSegmentCheck 49 16 33
      { lower := 12330, upper := 12336, witness := RowWitness.topPrime 12329 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good207_checked :
    goodSegmentCheck 49 16 33
      { lower := 12500, upper := 12541, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good208_checked :
    goodSegmentCheck 49 16 33
      { lower := 12635, upper := 12663, witness := RowWitness.topPrime 12619 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good209_checked :
    goodSegmentCheck 49 16 33
      { lower := 13125, upper := 13169, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good210_checked :
    goodSegmentCheck 49 16 33
      { lower := 13170, upper := 13170, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good211_checked :
    goodSegmentCheck 49 16 33
      { lower := 13225, upper := 13230, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good212_checked :
    goodSegmentCheck 49 16 33
      { lower := 13254, upper := 13273, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good213_checked :
    goodSegmentCheck 49 16 33
      { lower := 13312, upper := 13357, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good214_checked :
    goodSegmentCheck 49 16 33
      { lower := 13358, upper := 13358, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good215_checked :
    goodSegmentCheck 49 16 33
      { lower := 13454, upper := 13499, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good216_checked :
    goodSegmentCheck 49 16 33
      { lower := 13500, upper := 13502, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good217_checked :
    goodSegmentCheck 49 16 33
      { lower := 13718, upper := 13738, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good218_checked :
    goodSegmentCheck 49 16 33
      { lower := 13750, upper := 13777, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good219_checked :
    goodSegmentCheck 49 16 33
      { lower := 13778, upper := 13798, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good220_checked :
    goodSegmentCheck 49 16 33
      { lower := 13851, upper := 13872, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good221_checked :
    goodSegmentCheck 49 16 33
      { lower := 14297, upper := 14331, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good222_checked :
    goodSegmentCheck 49 16 33
      { lower := 14336, upper := 14345, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good223_checked :
    goodSegmentCheck 49 16 33
      { lower := 14375, upper := 14384, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good224_checked :
    goodSegmentCheck 49 16 33
      { lower := 14415, upper := 14423, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good225_checked :
    goodSegmentCheck 49 16 33
      { lower := 14812, upper := 14840, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good226_checked :
    goodSegmentCheck 49 16 33
      { lower := 14848, upper := 14860, witness := RowWitness.topPrime 14843 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good227_checked :
    goodSegmentCheck 49 16 33
      { lower := 15138, upper := 15177, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good228_checked :
    goodSegmentCheck 49 16 33
      { lower := 15341, upper := 15357, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good229_checked :
    goodSegmentCheck 49 16 33
      { lower := 15360, upper := 15407, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good230_checked :
    goodSegmentCheck 49 16 33
      { lower := 15408, upper := 15424, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good231_checked :
    goodSegmentCheck 49 16 33
      { lower := 15872, upper := 15907, witness := RowWitness.topPrime 15859 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good232_checked :
    goodSegmentCheck 49 16 33
      { lower := 15908, upper := 15918, witness := RowWitness.topPrime 15907 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good233_checked :
    goodSegmentCheck 49 16 33
      { lower := 15979, upper := 16020, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good234_checked :
    goodSegmentCheck 49 16 33
      { lower := 16384, upper := 16385, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good235_checked :
    goodSegmentCheck 49 16 33
      { lower := 16399, upper := 16429, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good236_checked :
    goodSegmentCheck 49 16 33
      { lower := 16430, upper := 16447, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good237_checked :
    goodSegmentCheck 49 16 33
      { lower := 16810, upper := 16815, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good238_checked :
    goodSegmentCheck 49 16 33
      { lower := 16820, upper := 16858, witness := RowWitness.topPrime 16811 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good239_checked :
    goodSegmentCheck 49 16 33
      { lower := 16896, upper := 16923, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good240_checked :
    goodSegmentCheck 49 16 33
      { lower := 16928, upper := 16944, witness := RowWitness.topPrime 16927 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good241_checked :
    goodSegmentCheck 49 16 33
      { lower := 17303, upper := 17346, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good242_checked :
    goodSegmentCheck 49 16 33
      { lower := 17496, upper := 17539, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good243_checked :
    goodSegmentCheck 49 16 33
      { lower := 17540, upper := 17544, witness := RowWitness.topPrime 17539 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good244_checked :
    goodSegmentCheck 49 16 33
      { lower := 17672, upper := 17709, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good245_checked :
    goodSegmentCheck 49 16 33
      { lower := 18259, upper := 18273, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good246_checked :
    goodSegmentCheck 49 16 33
      { lower := 18491, upper := 18529, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good247_checked :
    goodSegmentCheck 49 16 33
      { lower := 18530, upper := 18550, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good248_checked :
    goodSegmentCheck 49 16 33
      { lower := 19375, upper := 19391, witness := RowWitness.topPrime 19373 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good249_checked :
    goodSegmentCheck 49 16 33
      { lower := 19683, upper := 19700, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good250_checked :
    goodSegmentCheck 49 16 33
      { lower := 20000, upper := 20013, witness := RowWitness.topPrime 19997 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good251_checked :
    goodSegmentCheck 49 16 33
      { lower := 20181, upper := 20225, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good252_checked :
    goodSegmentCheck 49 16 33
      { lower := 20226, upper := 20229, witness := RowWitness.topPrime 20219 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good253_checked :
    goodSegmentCheck 49 16 33
      { lower := 20577, upper := 20583, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good254_checked :
    goodSegmentCheck 49 16 33
      { lower := 20625, upper := 20625, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good255_checked :
    goodSegmentCheck 49 16 33
      { lower := 21142, upper := 21187, witness := RowWitness.topPrime 21139 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good256_checked :
    goodSegmentCheck 49 16 33
      { lower := 21188, upper := 21189, witness := RowWitness.topPrime 21187 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good257_checked :
    goodSegmentCheck 49 16 33
      { lower := 21296, upper := 21298, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good258_checked :
    goodSegmentCheck 49 16 33
      { lower := 21866, upper := 21911, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good259_checked :
    goodSegmentCheck 49 16 33
      { lower := 21912, upper := 21923, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good260_checked :
    goodSegmentCheck 49 16 33
      { lower := 22103, upper := 22138, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good261_checked :
    goodSegmentCheck 49 16 33
      { lower := 22627, upper := 22647, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good262_checked :
    goodSegmentCheck 49 16 33
      { lower := 23548, upper := 23587, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good263_checked :
    goodSegmentCheck 49 16 33
      { lower := 23588, upper := 23596, witness := RowWitness.topPrime 23581 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good264_checked :
    goodSegmentCheck 49 16 33
      { lower := 24037, upper := 24077, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good265_checked :
    goodSegmentCheck 49 16 33
      { lower := 24078, upper := 24085, witness := RowWitness.topPrime 24077 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good266_checked :
    goodSegmentCheck 49 16 33
      { lower := 24334, upper := 24347, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good267_checked :
    goodSegmentCheck 49 16 33
      { lower := 24576, upper := 24613, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good268_checked :
    goodSegmentCheck 49 16 33
      { lower := 25000, upper := 25034, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good269_checked :
    goodSegmentCheck 49 16 33
      { lower := 25230, upper := 25263, witness := RowWitness.topPrime 25229 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good270_checked :
    goodSegmentCheck 49 16 33
      { lower := 26624, upper := 26645, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good271_checked :
    goodSegmentCheck 49 16 33
      { lower := 26646, upper := 26668, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good272_checked :
    goodSegmentCheck 49 16 33
      { lower := 26908, upper := 26951, witness := RowWitness.topPrime 26903 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good273_checked :
    goodSegmentCheck 49 16 33
      { lower := 26952, upper := 26956, witness := RowWitness.topPrime 26951 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good274_checked :
    goodSegmentCheck 49 16 33
      { lower := 27753, upper := 27783, witness := RowWitness.topPrime 27751 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good275_checked :
    goodSegmentCheck 49 16 33
      { lower := 28577, upper := 28621, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good276_checked :
    goodSegmentCheck 49 16 33
      { lower := 28622, upper := 28625, witness := RowWitness.topPrime 28621 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good277_checked :
    goodSegmentCheck 49 16 33
      { lower := 28717, upper := 28720, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good278_checked :
    goodSegmentCheck 49 16 33
      { lower := 28749, upper := 28765, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good279_checked :
    goodSegmentCheck 49 16 33
      { lower := 29478, upper := 29483, witness := RowWitness.topPrime 29473 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good280_checked :
    goodSegmentCheck 49 16 33
      { lower := 30618, upper := 30641, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good281_checked :
    goodSegmentCheck 49 16 33
      { lower := 30642, upper := 30661, witness := RowWitness.topPrime 30637 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good282_checked :
    goodSegmentCheck 49 16 33
      { lower := 30752, upper := 30775, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good283_checked :
    goodSegmentCheck 49 16 33
      { lower := 30776, upper := 30800, witness := RowWitness.topPrime 30773 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good284_checked :
    goodSegmentCheck 49 16 33
      { lower := 31744, upper := 31761, witness := RowWitness.topPrime 31741 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good285_checked :
    goodSegmentCheck 49 16 33
      { lower := 31944, upper := 31955, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good286_checked :
    goodSegmentCheck 49 16 33
      { lower := 31956, upper := 31956, witness := RowWitness.largeDivisor 98919441616773975955811129907407298488070269945319970538018660376269040792004787607208138144549122598650871412337422748908407071730462751562605671 } = true := by
  decide +kernel

theorem row049_good287_checked :
    goodSegmentCheck 49 16 33
      { lower := 31957, upper := 31987, witness := RowWitness.topPrime 31957 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good288_checked :
    goodSegmentCheck 49 16 33
      { lower := 32805, upper := 32816, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good289_checked :
    goodSegmentCheck 49 16 33
      { lower := 33282, upper := 33295, witness := RowWitness.topPrime 33247 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good290_checked :
    goodSegmentCheck 49 16 33
      { lower := 33296, upper := 33323, witness := RowWitness.topPrime 33289 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good291_checked :
    goodSegmentCheck 49 16 33
      { lower := 33635, upper := 33668, witness := RowWitness.topPrime 33629 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good292_checked :
    goodSegmentCheck 49 16 33
      { lower := 34391, upper := 34423, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good293_checked :
    goodSegmentCheck 49 16 33
      { lower := 35152, upper := 35179, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good294_checked :
    goodSegmentCheck 49 16 33
      { lower := 35344, upper := 35349, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good295_checked :
    goodSegmentCheck 49 16 33
      { lower := 36980, upper := 37027, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good296_checked :
    goodSegmentCheck 49 16 33
      { lower := 37028, upper := 37028, witness := RowWitness.topPrime 37021 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good297_checked :
    goodSegmentCheck 49 16 33
      { lower := 43740, upper := 43769, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good298_checked :
    goodSegmentCheck 49 16 33
      { lower := 43770, upper := 43788, witness := RowWitness.topPrime 43759 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good299_checked :
    goodSegmentCheck 49 16 33
      { lower := 43940, upper := 43971, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good300_checked :
    goodSegmentCheck 49 16 33
      { lower := 44217, upper := 44228, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good301_checked :
    goodSegmentCheck 49 16 33
      { lower := 47104, upper := 47116, witness := RowWitness.topPrime 47093 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good302_checked :
    goodSegmentCheck 49 16 33
      { lower := 48114, upper := 48122, witness := RowWitness.topPrime 48109 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good303_checked :
    goodSegmentCheck 49 16 33
      { lower := 48778, upper := 48797, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good293_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good294_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good295_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good296_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good297_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good298_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good299_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good300_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good301_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good302_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good303_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_good304_checked :
    goodSegmentCheck 49 16 33
      { lower := 49152, upper := 49178, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good305_checked :
    goodSegmentCheck 49 16 33
      { lower := 55473, upper := 55517, witness := RowWitness.topPrime 55469 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good306_checked :
    goodSegmentCheck 49 16 33
      { lower := 55518, upper := 55518, witness := RowWitness.topPrime 55511 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good307_checked :
    goodSegmentCheck 49 16 33
      { lower := 57344, upper := 57367, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good308_checked :
    goodSegmentCheck 49 16 33
      { lower := 59392, upper := 59423, witness := RowWitness.topPrime 59387 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good309_checked :
    goodSegmentCheck 49 16 33
      { lower := 65625, upper := 65658, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good310_checked :
    goodSegmentCheck 49 16 33
      { lower := 68782, upper := 68798, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good311_checked :
    goodSegmentCheck 49 16 33
      { lower := 73205, upper := 73215, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good312_checked :
    goodSegmentCheck 49 16 33
      { lower := 73728, upper := 73743, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good313_checked :
    goodSegmentCheck 49 16 33
      { lower := 98304, upper := 98308, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good314_checked :
    goodSegmentCheck 49 16 33
      { lower := 150903, upper := 150946, witness := RowWitness.topPrime 150901 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good315_checked :
    goodSegmentCheck 49 16 33
      { lower := 327701, upper := 327728, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good316_checked :
    goodSegmentCheck 49 16 33
      { lower := 655402, upper := 655408, witness := RowWitness.topPrime 655399 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good317_checked :
    goodSegmentCheck 49 16 33
      { lower := 658503, upper := 658535, witness := RowWitness.topPrime 658487 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row049_good318_checked :
    goodSegmentCheck 49 16 33
      { lower := 658536, upper := 658537, witness := RowWitness.topPrime 658507 } = true := by
  exact good_top_prime_checked (i := 49) (r := 16) (s := 33) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good307_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good308_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good309_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good310_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good311_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good312_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good313_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good314_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good315_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good316_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good317_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_good318_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_goods_checked :
    row049.goods.all (goodSegmentCheck row049.height.i row049.height.r row049.height.s) = true := by
  change row049_goods.all (goodSegmentCheck 49 16 33) = true
  simp only [row049_goods, List.all_cons, List.all_nil,
    row049_good000_checked,
    row049_good001_checked,
    row049_good002_checked,
    row049_good003_checked,
    row049_good004_checked,
    row049_good005_checked,
    row049_good006_checked,
    row049_good007_checked,
    row049_good008_checked,
    row049_good009_checked,
    row049_good010_checked,
    row049_good011_checked,
    row049_good012_checked,
    row049_good013_checked,
    row049_good014_checked,
    row049_good015_checked,
    row049_good016_checked,
    row049_good017_checked,
    row049_good018_checked,
    row049_good019_checked,
    row049_good020_checked,
    row049_good021_checked,
    row049_good022_checked,
    row049_good023_checked,
    row049_good024_checked,
    row049_good025_checked,
    row049_good026_checked,
    row049_good027_checked,
    row049_good028_checked,
    row049_good029_checked,
    row049_good030_checked,
    row049_good031_checked,
    row049_good032_checked,
    row049_good033_checked,
    row049_good034_checked,
    row049_good035_checked,
    row049_good036_checked,
    row049_good037_checked,
    row049_good038_checked,
    row049_good039_checked,
    row049_good040_checked,
    row049_good041_checked,
    row049_good042_checked,
    row049_good043_checked,
    row049_good044_checked,
    row049_good045_checked,
    row049_good046_checked,
    row049_good047_checked,
    row049_good048_checked,
    row049_good049_checked,
    row049_good050_checked,
    row049_good051_checked,
    row049_good052_checked,
    row049_good053_checked,
    row049_good054_checked,
    row049_good055_checked,
    row049_good056_checked,
    row049_good057_checked,
    row049_good058_checked,
    row049_good059_checked,
    row049_good060_checked,
    row049_good061_checked,
    row049_good062_checked,
    row049_good063_checked,
    row049_good064_checked,
    row049_good065_checked,
    row049_good066_checked,
    row049_good067_checked,
    row049_good068_checked,
    row049_good069_checked,
    row049_good070_checked,
    row049_good071_checked,
    row049_good072_checked,
    row049_good073_checked,
    row049_good074_checked,
    row049_good075_checked,
    row049_good076_checked,
    row049_good077_checked,
    row049_good078_checked,
    row049_good079_checked,
    row049_good080_checked,
    row049_good081_checked,
    row049_good082_checked,
    row049_good083_checked,
    row049_good084_checked,
    row049_good085_checked,
    row049_good086_checked,
    row049_good087_checked,
    row049_good088_checked,
    row049_good089_checked,
    row049_good090_checked,
    row049_good091_checked,
    row049_good092_checked,
    row049_good093_checked,
    row049_good094_checked,
    row049_good095_checked,
    row049_good096_checked,
    row049_good097_checked,
    row049_good098_checked,
    row049_good099_checked,
    row049_good100_checked,
    row049_good101_checked,
    row049_good102_checked,
    row049_good103_checked,
    row049_good104_checked,
    row049_good105_checked,
    row049_good106_checked,
    row049_good107_checked,
    row049_good108_checked,
    row049_good109_checked,
    row049_good110_checked,
    row049_good111_checked,
    row049_good112_checked,
    row049_good113_checked,
    row049_good114_checked,
    row049_good115_checked,
    row049_good116_checked,
    row049_good117_checked,
    row049_good118_checked,
    row049_good119_checked,
    row049_good120_checked,
    row049_good121_checked,
    row049_good122_checked,
    row049_good123_checked,
    row049_good124_checked,
    row049_good125_checked,
    row049_good126_checked,
    row049_good127_checked,
    row049_good128_checked,
    row049_good129_checked,
    row049_good130_checked,
    row049_good131_checked,
    row049_good132_checked,
    row049_good133_checked,
    row049_good134_checked,
    row049_good135_checked,
    row049_good136_checked,
    row049_good137_checked,
    row049_good138_checked,
    row049_good139_checked,
    row049_good140_checked,
    row049_good141_checked,
    row049_good142_checked,
    row049_good143_checked,
    row049_good144_checked,
    row049_good145_checked,
    row049_good146_checked,
    row049_good147_checked,
    row049_good148_checked,
    row049_good149_checked,
    row049_good150_checked,
    row049_good151_checked,
    row049_good152_checked,
    row049_good153_checked,
    row049_good154_checked,
    row049_good155_checked,
    row049_good156_checked,
    row049_good157_checked,
    row049_good158_checked,
    row049_good159_checked,
    row049_good160_checked,
    row049_good161_checked,
    row049_good162_checked,
    row049_good163_checked,
    row049_good164_checked,
    row049_good165_checked,
    row049_good166_checked,
    row049_good167_checked,
    row049_good168_checked,
    row049_good169_checked,
    row049_good170_checked,
    row049_good171_checked,
    row049_good172_checked,
    row049_good173_checked,
    row049_good174_checked,
    row049_good175_checked,
    row049_good176_checked,
    row049_good177_checked,
    row049_good178_checked,
    row049_good179_checked,
    row049_good180_checked,
    row049_good181_checked,
    row049_good182_checked,
    row049_good183_checked,
    row049_good184_checked,
    row049_good185_checked,
    row049_good186_checked,
    row049_good187_checked,
    row049_good188_checked,
    row049_good189_checked,
    row049_good190_checked,
    row049_good191_checked,
    row049_good192_checked,
    row049_good193_checked,
    row049_good194_checked,
    row049_good195_checked,
    row049_good196_checked,
    row049_good197_checked,
    row049_good198_checked,
    row049_good199_checked,
    row049_good200_checked,
    row049_good201_checked,
    row049_good202_checked,
    row049_good203_checked,
    row049_good204_checked,
    row049_good205_checked,
    row049_good206_checked,
    row049_good207_checked,
    row049_good208_checked,
    row049_good209_checked,
    row049_good210_checked,
    row049_good211_checked,
    row049_good212_checked,
    row049_good213_checked,
    row049_good214_checked,
    row049_good215_checked,
    row049_good216_checked,
    row049_good217_checked,
    row049_good218_checked,
    row049_good219_checked,
    row049_good220_checked,
    row049_good221_checked,
    row049_good222_checked,
    row049_good223_checked,
    row049_good224_checked,
    row049_good225_checked,
    row049_good226_checked,
    row049_good227_checked,
    row049_good228_checked,
    row049_good229_checked,
    row049_good230_checked,
    row049_good231_checked,
    row049_good232_checked,
    row049_good233_checked,
    row049_good234_checked,
    row049_good235_checked,
    row049_good236_checked,
    row049_good237_checked,
    row049_good238_checked,
    row049_good239_checked,
    row049_good240_checked,
    row049_good241_checked,
    row049_good242_checked,
    row049_good243_checked,
    row049_good244_checked,
    row049_good245_checked,
    row049_good246_checked,
    row049_good247_checked,
    row049_good248_checked,
    row049_good249_checked,
    row049_good250_checked,
    row049_good251_checked,
    row049_good252_checked,
    row049_good253_checked,
    row049_good254_checked,
    row049_good255_checked,
    row049_good256_checked,
    row049_good257_checked,
    row049_good258_checked,
    row049_good259_checked,
    row049_good260_checked,
    row049_good261_checked,
    row049_good262_checked,
    row049_good263_checked,
    row049_good264_checked,
    row049_good265_checked,
    row049_good266_checked,
    row049_good267_checked,
    row049_good268_checked,
    row049_good269_checked,
    row049_good270_checked,
    row049_good271_checked,
    row049_good272_checked,
    row049_good273_checked,
    row049_good274_checked,
    row049_good275_checked,
    row049_good276_checked,
    row049_good277_checked,
    row049_good278_checked,
    row049_good279_checked,
    row049_good280_checked,
    row049_good281_checked,
    row049_good282_checked,
    row049_good283_checked,
    row049_good284_checked,
    row049_good285_checked,
    row049_good286_checked,
    row049_good287_checked,
    row049_good288_checked,
    row049_good289_checked,
    row049_good290_checked,
    row049_good291_checked,
    row049_good292_checked,
    row049_good293_checked,
    row049_good294_checked,
    row049_good295_checked,
    row049_good296_checked,
    row049_good297_checked,
    row049_good298_checked,
    row049_good299_checked,
    row049_good300_checked,
    row049_good301_checked,
    row049_good302_checked,
    row049_good303_checked,
    row049_good304_checked,
    row049_good305_checked,
    row049_good306_checked,
    row049_good307_checked,
    row049_good308_checked,
    row049_good309_checked,
    row049_good310_checked,
    row049_good311_checked,
    row049_good312_checked,
    row049_good313_checked,
    row049_good314_checked,
    row049_good315_checked,
    row049_good316_checked,
    row049_good317_checked,
    row049_good318_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_registered :
    decide (row049.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row049_small_checked :
    coverCheck (2 * row049.height.i + 2) (row049.height.i * (row049.height.i - 1) - 1)
      (row049.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row049_layerCover_checked :
    coverCheck (row049.height.i * (row049.height.i - 1)) (row049.height.n0 - 1)
      (row049.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_bounds : List NatInterval :=
  [(100, 145), (146, 187), (188, 229), (230, 277), (278, 325), (326, 365), (366, 407), (408, 449), (450, 497), (498, 539), (540, 571), (572, 619), (620, 667), (668, 709), (710, 757), (758, 805), (806, 845), (846, 887), (888, 935), (936, 977), (978, 1025), (1026, 1069), (1070, 1117), (1118, 1165), (1166, 1211), (1212, 1249), (1250, 1297), (1298, 1345), (1346, 1375), (1376, 1421), (1422, 1457), (1458, 1501), (1502, 1547), (1548, 1591), (1592, 1631), (1632, 1675), (1676, 1717), (1718, 1757), (1758, 1801), (1802, 1849), (1850, 1895), (1896, 1937), (1938, 1981), (1982, 2027), (2028, 2075), (2076, 2117), (2118, 2161), (2162, 2209), (2210, 2255), (2256, 2299), (2300, 2345), (2346, 2360), (2366, 2405), (2406, 2416), (2420, 2423), (2430, 2471), (2472, 2478), (2500, 2525), (2526, 2569), (2570, 2589), (2592, 2639), (2640, 2681), (2682, 2725), (2726, 2736), (2738, 2779), (2780, 2802), (2816, 2831), (2835, 2864), (2873, 2909), (2910, 2957), (2958, 2964), (3000, 3047), (3048, 3089), (3090, 3120), (3125, 3126), (3146, 3185), (3186, 3229), (3230, 3277), (3278, 3298), (3362, 3409), (3410, 3436), (3468, 3515), (3516, 3557), (3584, 3597), (3610, 3655), (3656, 3678), (3703, 3749), (3750, 3787), (3788, 3799), (3844, 3881), (3882, 3929), (3930, 3935), (3971, 4015), (4016, 4041), (4046, 4048), (4056, 4094), (4096, 4104), (4107, 4147), (4148, 4173), (4224, 4267), (4268, 4283), (4335, 4375), (4376, 4421), (4422, 4442), (4480, 4511), (4512, 4528), (4598, 4645), (4646, 4672), (4732, 4777), (4778, 4798), (4805, 4809), (4864, 4909), (4910, 4949), (5043, 5087), (5088, 5118), (5120, 5151), (5239, 5250), (5324, 5338), (5346, 5372), (5376, 5394), (5408, 5455), (5456, 5456), (5491, 5524), (5577, 5621), (5622, 5639), (5640, 5673), (5766, 5797), (5798, 5828), (5832, 5867), (5888, 5929), (5930, 5936), (6075, 6121), (6122, 6123), (6144, 6185), (6253, 6295), (6296, 6298), (6348, 6391), (6392, 6396), (6400, 6406), (6422, 6448), (6591, 6609), (6627, 6639), (6647, 6685), (6686, 6703), (6727, 6767), (6768, 6775), (6845, 6852), (6859, 6905), (6906, 6925), (6936, 6960), (7225, 7267), (7268, 7268), (7406, 7441), (7442, 7454), (7514, 7555), (7556, 7562), (7569, 7609), (7610, 7617), (7688, 7728), (7803, 7824), (7936, 7981), (7982, 7984), (7986, 7990), (8019, 8034), (8125, 8140), (8214, 8240), (8262, 8262), (8303, 8310), (8405, 8437), (8438, 8458), (8464, 8496), (8505, 8512), (8664, 8711), (8712, 8718), (8748, 8795), (8796, 8798), (8836, 8836), (8960, 8999), (9000, 9041), (9234, 9275), (9276, 9296), (9386, 9423), (9522, 9525), (9537, 9570), (9583, 9585), (9610, 9631), (9747, 9776), (10086, 10127), (10128, 10156), (10240, 10254), (10580, 10615), (10616, 10619), (10625, 10628), (10648, 10673), (10935, 10957), (10958, 10983), (10985, 11000), (11109, 11141), (11142, 11142), (11264, 11298), (11552, 11580), (11664, 11686), (11774, 11791), (11792, 11822), (11913, 11923), (12288, 12329), (12330, 12336), (12500, 12541), (12635, 12663), (13125, 13169), (13170, 13170), (13225, 13230), (13254, 13273), (13312, 13357), (13358, 13358), (13454, 13499), (13500, 13502), (13718, 13738), (13750, 13777), (13778, 13798), (13851, 13872), (14297, 14331), (14336, 14345), (14375, 14384), (14415, 14423), (14812, 14840), (14848, 14860), (15138, 15177), (15341, 15357), (15360, 15407), (15408, 15424), (15872, 15907), (15908, 15918), (15979, 16020), (16384, 16385), (16399, 16429), (16430, 16447), (16810, 16815), (16820, 16858), (16896, 16923), (16928, 16944), (17303, 17346), (17496, 17539), (17540, 17544), (17672, 17709), (18259, 18273), (18491, 18529), (18530, 18550), (19375, 19391), (19683, 19700), (20000, 20013), (20181, 20225), (20226, 20229), (20577, 20583), (20625, 20625), (21142, 21187), (21188, 21189), (21296, 21298), (21866, 21911), (21912, 21923), (22103, 22138), (22627, 22647), (23548, 23587), (23588, 23596), (24037, 24077), (24078, 24085), (24334, 24347), (24576, 24613), (25000, 25034), (25230, 25263), (26624, 26645), (26646, 26668), (26908, 26951), (26952, 26956), (27753, 27783), (28577, 28621), (28622, 28625), (28717, 28720), (28749, 28765), (29478, 29483), (30618, 30641), (30642, 30661), (30752, 30775), (30776, 30800), (31744, 31761), (31944, 31955), (31956, 31956), (31957, 31987), (32805, 32816), (33282, 33295), (33296, 33323), (33635, 33668), (34391, 34423), (35152, 35179), (35344, 35349), (36980, 37027), (37028, 37028), (43740, 43769), (43770, 43788), (43940, 43971), (44217, 44228), (47104, 47116), (48114, 48122), (48778, 48797), (49152, 49178), (55473, 55517), (55518, 55518), (57344, 57367), (59392, 59423), (65625, 65658), (68782, 68798), (73205, 73215), (73728, 73743), (98304, 98308), (150903, 150946), (327701, 327728), (655402, 655408), (658503, 658535), (658536, 658537)]

theorem row049_bounds_eq : row049.goods.map goodSegmentBounds = row049_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer000_intervals : List ColouredInterval :=
  [(2, 2352, 2352), (2, 2368, 2416), (2, 2432, 2480), (2, 2496, 2544), (2, 2560, 2608), (2, 2352, 2352), (2, 2432, 2480), (2, 2560, 2608), (2, 2688, 2736), (2, 2816, 2864), (2, 2944, 2992), (2, 3072, 3120), (2, 3200, 3248), (2, 3328, 3376), (2, 3456, 3504), (2, 3584, 3632), (2, 3712, 3760), (2, 3840, 3888), (2, 3968, 4016), (2, 4096, 4144), (2, 4224, 4272), (2, 4352, 4400), (2, 4480, 4528), (2, 4608, 4656), (2, 2352, 2352), (2, 2560, 2608), (2, 2816, 2864), (2, 3072, 3120), (2, 3328, 3376), (2, 3584, 3632), (2, 3840, 3888), (2, 4096, 4144), (2, 4352, 4400), (2, 4608, 4656), (2, 2560, 2608), (2, 3072, 3120), (2, 3584, 3632), (2, 4096, 4144), (2, 4608, 4656), (2, 3072, 3120), (2, 4096, 4144), (2, 4096, 4144), (2, 4096, 4144), (3, 2352, 2397), (3, 2430, 2478), (3, 2511, 2559), (3, 2592, 2640), (3, 2673, 2721), (3, 2754, 2802), (3, 2835, 2883), (3, 2916, 2964), (3, 2997, 3045), (3, 3078, 3126), (3, 3159, 3207), (3, 3240, 3288), (3, 2430, 2478), (3, 2673, 2721), (3, 2916, 2964), (3, 3159, 3207), (3, 3402, 3450), (3, 3645, 3693), (3, 3888, 3936), (3, 4131, 4179), (3, 4374, 4422), (3, 4617, 4665), (3, 2916, 2964), (3, 3645, 3693), (3, 4374, 4422), (3, 4374, 4422), (5, 2375, 2423), (5, 2500, 2548), (5, 2625, 2673), (5, 2750, 2798), (5, 2875, 2923), (5, 3000, 3048), (5, 3125, 3173), (5, 3250, 3298), (5, 3375, 3423), (5, 3500, 3548), (5, 3625, 3673), (5, 3750, 3798), (5, 3875, 3923), (5, 4000, 4048), (5, 4125, 4173), (5, 4250, 4298), (5, 4375, 4423), (5, 4500, 4548), (5, 4625, 4673), (5, 2500, 2548), (5, 3125, 3173), (5, 3750, 3798), (5, 4375, 4423), (5, 3125, 3173), (11, 2420, 2468), (11, 2541, 2589), (11, 2662, 2710), (11, 2783, 2831), (11, 2904, 2952), (11, 3025, 3073), (11, 3146, 3194), (11, 3267, 3315), (11, 3388, 3436), (11, 3509, 3557), (11, 3630, 3678), (11, 3751, 3799), (11, 3872, 3920), (11, 3993, 4041), (11, 4114, 4162), (11, 4235, 4283), (11, 4356, 4404), (11, 4477, 4525), (11, 4598, 4646), (11, 2662, 2710), (11, 3993, 4041), (13, 2366, 2414), (13, 2535, 2583), (13, 2704, 2752), (13, 2873, 2921), (13, 3042, 3090), (13, 3211, 3259), (13, 3380, 3428), (13, 3549, 3597), (13, 3718, 3766), (13, 3887, 3935), (13, 4056, 4104), (13, 4225, 4273), (13, 4394, 4442), (13, 4563, 4611), (13, 4394, 4442), (17, 2352, 2360), (17, 2601, 2649), (17, 2890, 2938), (17, 3179, 3227), (17, 3468, 3516), (17, 3757, 3805), (17, 4046, 4094), (17, 4335, 4383), (17, 4624, 4672), (19, 2527, 2575), (19, 2888, 2936), (19, 3249, 3297), (19, 3610, 3658), (19, 3971, 4019), (19, 4332, 4380), (19, 4693, 4703), (23, 2645, 2693), (23, 3174, 3222), (23, 3703, 3751), (23, 4232, 4280), (29, 2523, 2571), (29, 3364, 3412), (29, 4205, 4253), (31, 2883, 2931), (31, 3844, 3892), (37, 2738, 2786), (37, 4107, 4155), (41, 3362, 3410), (43, 3698, 3746), (47, 4418, 4466)]

def row049_layer000_block000 : List ColouredInterval :=
  [(2, 2352, 2352), (2, 2368, 2416), (2, 2432, 2480), (2, 2496, 2544), (2, 2560, 2608), (2, 2352, 2352), (2, 2432, 2480), (2, 2560, 2608), (2, 2688, 2736), (2, 2816, 2864), (2, 2944, 2992), (2, 3072, 3120)]

def row049_layer000_block001 : List ColouredInterval :=
  [(2, 3200, 3248), (2, 3328, 3376), (2, 3456, 3504), (2, 3584, 3632), (2, 3712, 3760), (2, 3840, 3888), (2, 3968, 4016), (2, 4096, 4144), (2, 4224, 4272), (2, 4352, 4400), (2, 4480, 4528), (2, 4608, 4656)]

def row049_layer000_block002 : List ColouredInterval :=
  [(2, 2352, 2352), (2, 2560, 2608), (2, 2816, 2864), (2, 3072, 3120), (2, 3328, 3376), (2, 3584, 3632), (2, 3840, 3888), (2, 4096, 4144), (2, 4352, 4400), (2, 4608, 4656), (2, 2560, 2608), (2, 3072, 3120)]

def row049_layer000_block003 : List ColouredInterval :=
  [(2, 3584, 3632), (2, 4096, 4144), (2, 4608, 4656), (2, 3072, 3120), (2, 4096, 4144), (2, 4096, 4144), (2, 4096, 4144), (3, 2352, 2397), (3, 2430, 2478), (3, 2511, 2559), (3, 2592, 2640), (3, 2673, 2721)]

def row049_layer000_block004 : List ColouredInterval :=
  [(3, 2754, 2802), (3, 2835, 2883), (3, 2916, 2964), (3, 2997, 3045), (3, 3078, 3126), (3, 3159, 3207), (3, 3240, 3288), (3, 2430, 2478), (3, 2673, 2721), (3, 2916, 2964), (3, 3159, 3207), (3, 3402, 3450)]

def row049_layer000_block005 : List ColouredInterval :=
  [(3, 3645, 3693), (3, 3888, 3936), (3, 4131, 4179), (3, 4374, 4422), (3, 4617, 4665), (3, 2916, 2964), (3, 3645, 3693), (3, 4374, 4422), (3, 4374, 4422), (5, 2375, 2423), (5, 2500, 2548), (5, 2625, 2673)]

def row049_layer000_block006 : List ColouredInterval :=
  [(5, 2750, 2798), (5, 2875, 2923), (5, 3000, 3048), (5, 3125, 3173), (5, 3250, 3298), (5, 3375, 3423), (5, 3500, 3548), (5, 3625, 3673), (5, 3750, 3798), (5, 3875, 3923), (5, 4000, 4048), (5, 4125, 4173)]

def row049_layer000_block007 : List ColouredInterval :=
  [(5, 4250, 4298), (5, 4375, 4423), (5, 4500, 4548), (5, 4625, 4673), (5, 2500, 2548), (5, 3125, 3173), (5, 3750, 3798), (5, 4375, 4423), (5, 3125, 3173), (11, 2420, 2468), (11, 2541, 2589), (11, 2662, 2710)]

def row049_layer000_block008 : List ColouredInterval :=
  [(11, 2783, 2831), (11, 2904, 2952), (11, 3025, 3073), (11, 3146, 3194), (11, 3267, 3315), (11, 3388, 3436), (11, 3509, 3557), (11, 3630, 3678), (11, 3751, 3799), (11, 3872, 3920), (11, 3993, 4041), (11, 4114, 4162)]

def row049_layer000_block009 : List ColouredInterval :=
  [(11, 4235, 4283), (11, 4356, 4404), (11, 4477, 4525), (11, 4598, 4646), (11, 2662, 2710), (11, 3993, 4041), (13, 2366, 2414), (13, 2535, 2583), (13, 2704, 2752), (13, 2873, 2921), (13, 3042, 3090), (13, 3211, 3259)]

def row049_layer000_block010 : List ColouredInterval :=
  [(13, 3380, 3428), (13, 3549, 3597), (13, 3718, 3766), (13, 3887, 3935), (13, 4056, 4104), (13, 4225, 4273), (13, 4394, 4442), (13, 4563, 4611), (13, 4394, 4442), (17, 2352, 2360), (17, 2601, 2649), (17, 2890, 2938)]

def row049_layer000_block011 : List ColouredInterval :=
  [(17, 3179, 3227), (17, 3468, 3516), (17, 3757, 3805), (17, 4046, 4094), (17, 4335, 4383), (17, 4624, 4672), (19, 2527, 2575), (19, 2888, 2936), (19, 3249, 3297), (19, 3610, 3658), (19, 3971, 4019), (19, 4332, 4380)]

def row049_layer000_block012 : List ColouredInterval :=
  [(19, 4693, 4703), (23, 2645, 2693), (23, 3174, 3222), (23, 3703, 3751), (23, 4232, 4280), (29, 2523, 2571), (29, 3364, 3412), (29, 4205, 4253), (31, 2883, 2931), (31, 3844, 3892), (37, 2738, 2786), (37, 4107, 4155)]

def row049_layer000_block013 : List ColouredInterval :=
  [(41, 3362, 3410), (43, 3698, 3746), (47, 4418, 4466)]

def row049_layer000_chunks : List (List ColouredInterval) :=
  [row049_layer000_block000, row049_layer000_block001, row049_layer000_block002, row049_layer000_block003, row049_layer000_block004, row049_layer000_block005, row049_layer000_block006, row049_layer000_block007, row049_layer000_block008, row049_layer000_block009, row049_layer000_block010, row049_layer000_block011, row049_layer000_block012, row049_layer000_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_arithmetic : LayerArithmeticValid row049.height { lower := 2352, upper := 4704, M := 40 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_enumeration :
    activePowerIntervalList 49 40 2352 4704 = row049_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs000 :
    row049_layer000_block000.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs001 :
    row049_layer000_block001.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs002 :
    row049_layer000_block002.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs003 :
    row049_layer000_block003.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs004 :
    row049_layer000_block004.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs005 :
    row049_layer000_block005.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs006 :
    row049_layer000_block006.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs007 :
    row049_layer000_block007.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs008 :
    row049_layer000_block008.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs009 :
    row049_layer000_block009.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs010 :
    row049_layer000_block010.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs011 :
    row049_layer000_block011.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs012 :
    row049_layer000_block012.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_pairs013 :
    row049_layer000_block013.all (fun I => row049_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_chunks_eq : row049_layer000_chunks.flatten = row049_layer000_intervals := by
  rfl

theorem row049_layer000_pairs : pairCoverCheck row049_layer000_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer000_chunks_eq
  intro block hblock
  simp only [row049_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer000_pairs000
  · exact row049_layer000_pairs001
  · exact row049_layer000_pairs002
  · exact row049_layer000_pairs003
  · exact row049_layer000_pairs004
  · exact row049_layer000_pairs005
  · exact row049_layer000_pairs006
  · exact row049_layer000_pairs007
  · exact row049_layer000_pairs008
  · exact row049_layer000_pairs009
  · exact row049_layer000_pairs010
  · exact row049_layer000_pairs011
  · exact row049_layer000_pairs012
  · exact row049_layer000_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer000_checked :
    coverLayerCheck row049.height row049.goods { lower := 2352, upper := 4704, M := 40 } = true := by
  exact coverLayerCheck_of_parts row049_layer000_arithmetic row049_layer000_enumeration row049_bounds_eq row049_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer001_intervals : List ColouredInterval :=
  [(2, 4736, 4784), (2, 4864, 4912), (2, 4864, 4912), (2, 5120, 5168), (2, 5376, 5424), (2, 5632, 5680), (2, 5888, 5936), (2, 6144, 6192), (2, 6400, 6448), (2, 6656, 6704), (2, 6912, 6960), (2, 7168, 7216), (2, 7424, 7472), (2, 7680, 7728), (2, 7936, 7984), (2, 8192, 8240), (2, 8448, 8496), (2, 8704, 8752), (2, 8960, 9008), (2, 9216, 9264), (2, 5120, 5168), (2, 5632, 5680), (2, 6144, 6192), (2, 6656, 6704), (2, 7168, 7216), (2, 7680, 7728), (2, 8192, 8240), (2, 8704, 8752), (2, 9216, 9264), (2, 5120, 5168), (2, 6144, 6192), (2, 7168, 7216), (2, 8192, 8240), (2, 9216, 9264), (2, 6144, 6192), (2, 8192, 8240), (2, 8192, 8240), (2, 8192, 8240), (3, 4860, 4908), (3, 5103, 5151), (3, 5346, 5394), (3, 5589, 5637), (3, 5832, 5880), (3, 6075, 6123), (3, 6318, 6366), (3, 6561, 6609), (3, 6804, 6852), (3, 7047, 7095), (3, 7290, 7338), (3, 7533, 7581), (3, 7776, 7824), (3, 8019, 8067), (3, 8262, 8310), (3, 8505, 8553), (3, 8748, 8796), (3, 8991, 9039), (3, 9234, 9282), (3, 5103, 5151), (3, 5832, 5880), (3, 6561, 6609), (3, 7290, 7338), (3, 8019, 8067), (3, 8748, 8796), (3, 6561, 6609), (3, 8748, 8796), (3, 6561, 6609), (5, 4750, 4798), (5, 5000, 5048), (5, 5625, 5673), (5, 6250, 6298), (5, 6875, 6923), (5, 7500, 7548), (5, 8125, 8173), (5, 8750, 8798), (5, 9375, 9407), (5, 6250, 6298), (5, 9375, 9407), (11, 5324, 5372), (11, 6655, 6703), (11, 7986, 8034), (11, 9317, 9365), (13, 4732, 4780), (13, 4901, 4949), (13, 5070, 5118), (13, 5239, 5287), (13, 5408, 5456), (13, 5577, 5625), (13, 5746, 5794), (13, 5915, 5963), (13, 6084, 6132), (13, 6253, 6301), (13, 6422, 6470), (13, 6591, 6639), (13, 8788, 8836), (17, 4913, 4961), (17, 5202, 5250), (17, 5491, 5539), (17, 5780, 5828), (17, 6069, 6117), (17, 6358, 6406), (17, 6647, 6695), (17, 6936, 6984), (17, 7225, 7273), (17, 7514, 7562), (17, 7803, 7851), (17, 8092, 8140), (17, 8381, 8429), (17, 8670, 8718), (17, 8959, 9007), (17, 9248, 9296), (17, 4913, 4961), (19, 4704, 4741), (19, 5054, 5102), (19, 5415, 5463), (19, 5776, 5824), (19, 6137, 6185), (19, 6498, 6546), (19, 6859, 6907), (19, 7220, 7268), (19, 7581, 7629), (19, 7942, 7990), (19, 8303, 8351), (19, 8664, 8712), (19, 9025, 9073), (19, 9386, 9407), (19, 6859, 6907), (23, 4761, 4809), (23, 5290, 5338), (23, 5819, 5867), (23, 6348, 6396), (23, 6877, 6925), (23, 7406, 7454), (23, 7935, 7983), (23, 8464, 8512), (23, 8993, 9041), (29, 5046, 5094), (29, 5887, 5935), (29, 6728, 6776), (29, 7569, 7617), (29, 8410, 8458), (29, 9251, 9299), (31, 4805, 4853), (31, 5766, 5814), (31, 6727, 6775), (31, 7688, 7736), (31, 8649, 8697), (37, 5476, 5524), (37, 6845, 6893), (37, 8214, 8262), (41, 5043, 5091), (41, 6724, 6772), (41, 8405, 8453), (43, 5547, 5595), (43, 7396, 7444), (43, 9245, 9293), (47, 6627, 6675), (47, 8836, 8884)]

def row049_layer001_block000 : List ColouredInterval :=
  [(2, 4736, 4784), (2, 4864, 4912), (2, 4864, 4912), (2, 5120, 5168), (2, 5376, 5424), (2, 5632, 5680), (2, 5888, 5936), (2, 6144, 6192), (2, 6400, 6448), (2, 6656, 6704), (2, 6912, 6960), (2, 7168, 7216), (2, 7424, 7472)]

def row049_layer001_block001 : List ColouredInterval :=
  [(2, 7680, 7728), (2, 7936, 7984), (2, 8192, 8240), (2, 8448, 8496), (2, 8704, 8752), (2, 8960, 9008), (2, 9216, 9264), (2, 5120, 5168), (2, 5632, 5680), (2, 6144, 6192), (2, 6656, 6704), (2, 7168, 7216), (2, 7680, 7728)]

def row049_layer001_block002 : List ColouredInterval :=
  [(2, 8192, 8240), (2, 8704, 8752), (2, 9216, 9264), (2, 5120, 5168), (2, 6144, 6192), (2, 7168, 7216), (2, 8192, 8240), (2, 9216, 9264), (2, 6144, 6192), (2, 8192, 8240), (2, 8192, 8240), (2, 8192, 8240), (3, 4860, 4908)]

def row049_layer001_block003 : List ColouredInterval :=
  [(3, 5103, 5151), (3, 5346, 5394), (3, 5589, 5637), (3, 5832, 5880), (3, 6075, 6123), (3, 6318, 6366), (3, 6561, 6609), (3, 6804, 6852), (3, 7047, 7095), (3, 7290, 7338), (3, 7533, 7581), (3, 7776, 7824), (3, 8019, 8067)]

def row049_layer001_block004 : List ColouredInterval :=
  [(3, 8262, 8310), (3, 8505, 8553), (3, 8748, 8796), (3, 8991, 9039), (3, 9234, 9282), (3, 5103, 5151), (3, 5832, 5880), (3, 6561, 6609), (3, 7290, 7338), (3, 8019, 8067), (3, 8748, 8796), (3, 6561, 6609), (3, 8748, 8796)]

def row049_layer001_block005 : List ColouredInterval :=
  [(3, 6561, 6609), (5, 4750, 4798), (5, 5000, 5048), (5, 5625, 5673), (5, 6250, 6298), (5, 6875, 6923), (5, 7500, 7548), (5, 8125, 8173), (5, 8750, 8798), (5, 9375, 9407), (5, 6250, 6298), (5, 9375, 9407), (11, 5324, 5372)]

def row049_layer001_block006 : List ColouredInterval :=
  [(11, 6655, 6703), (11, 7986, 8034), (11, 9317, 9365), (13, 4732, 4780), (13, 4901, 4949), (13, 5070, 5118), (13, 5239, 5287), (13, 5408, 5456), (13, 5577, 5625), (13, 5746, 5794), (13, 5915, 5963), (13, 6084, 6132), (13, 6253, 6301)]

def row049_layer001_block007 : List ColouredInterval :=
  [(13, 6422, 6470), (13, 6591, 6639), (13, 8788, 8836), (17, 4913, 4961), (17, 5202, 5250), (17, 5491, 5539), (17, 5780, 5828), (17, 6069, 6117), (17, 6358, 6406), (17, 6647, 6695), (17, 6936, 6984), (17, 7225, 7273), (17, 7514, 7562)]

def row049_layer001_block008 : List ColouredInterval :=
  [(17, 7803, 7851), (17, 8092, 8140), (17, 8381, 8429), (17, 8670, 8718), (17, 8959, 9007), (17, 9248, 9296), (17, 4913, 4961), (19, 4704, 4741), (19, 5054, 5102), (19, 5415, 5463), (19, 5776, 5824), (19, 6137, 6185), (19, 6498, 6546)]

def row049_layer001_block009 : List ColouredInterval :=
  [(19, 6859, 6907), (19, 7220, 7268), (19, 7581, 7629), (19, 7942, 7990), (19, 8303, 8351), (19, 8664, 8712), (19, 9025, 9073), (19, 9386, 9407), (19, 6859, 6907), (23, 4761, 4809), (23, 5290, 5338), (23, 5819, 5867), (23, 6348, 6396)]

def row049_layer001_block010 : List ColouredInterval :=
  [(23, 6877, 6925), (23, 7406, 7454), (23, 7935, 7983), (23, 8464, 8512), (23, 8993, 9041), (29, 5046, 5094), (29, 5887, 5935), (29, 6728, 6776), (29, 7569, 7617), (29, 8410, 8458), (29, 9251, 9299), (31, 4805, 4853), (31, 5766, 5814)]

def row049_layer001_block011 : List ColouredInterval :=
  [(31, 6727, 6775), (31, 7688, 7736), (31, 8649, 8697), (37, 5476, 5524), (37, 6845, 6893), (37, 8214, 8262), (41, 5043, 5091), (41, 6724, 6772), (41, 8405, 8453), (43, 5547, 5595), (43, 7396, 7444), (43, 9245, 9293), (47, 6627, 6675)]

def row049_layer001_block012 : List ColouredInterval :=
  [(47, 8836, 8884)]

def row049_layer001_chunks : List (List ColouredInterval) :=
  [row049_layer001_block000, row049_layer001_block001, row049_layer001_block002, row049_layer001_block003, row049_layer001_block004, row049_layer001_block005, row049_layer001_block006, row049_layer001_block007, row049_layer001_block008, row049_layer001_block009, row049_layer001_block010, row049_layer001_block011, row049_layer001_block012]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_arithmetic : LayerArithmeticValid row049.height { lower := 4704, upper := 9408, M := 38 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_enumeration :
    activePowerIntervalList 49 38 4704 9408 = row049_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs000 :
    row049_layer001_block000.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs001 :
    row049_layer001_block001.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs002 :
    row049_layer001_block002.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs003 :
    row049_layer001_block003.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs004 :
    row049_layer001_block004.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs005 :
    row049_layer001_block005.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs006 :
    row049_layer001_block006.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs007 :
    row049_layer001_block007.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs008 :
    row049_layer001_block008.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs009 :
    row049_layer001_block009.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs010 :
    row049_layer001_block010.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs011 :
    row049_layer001_block011.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_pairs012 :
    row049_layer001_block012.all (fun I => row049_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_chunks_eq : row049_layer001_chunks.flatten = row049_layer001_intervals := by
  rfl

theorem row049_layer001_pairs : pairCoverCheck row049_layer001_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer001_chunks_eq
  intro block hblock
  simp only [row049_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer001_pairs000
  · exact row049_layer001_pairs001
  · exact row049_layer001_pairs002
  · exact row049_layer001_pairs003
  · exact row049_layer001_pairs004
  · exact row049_layer001_pairs005
  · exact row049_layer001_pairs006
  · exact row049_layer001_pairs007
  · exact row049_layer001_pairs008
  · exact row049_layer001_pairs009
  · exact row049_layer001_pairs010
  · exact row049_layer001_pairs011
  · exact row049_layer001_pairs012

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer001_checked :
    coverLayerCheck row049.height row049.goods { lower := 4704, upper := 9408, M := 38 } = true := by
  exact coverLayerCheck_of_parts row049_layer001_arithmetic row049_layer001_enumeration row049_bounds_eq row049_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer002_intervals : List ColouredInterval :=
  [(2, 9728, 9776), (2, 10240, 10288), (2, 10752, 10800), (2, 11264, 11312), (2, 11776, 11824), (2, 12288, 12336), (2, 12800, 12848), (2, 13312, 13360), (2, 13824, 13872), (2, 14336, 14384), (2, 14848, 14896), (2, 15360, 15408), (2, 15872, 15920), (2, 16384, 16432), (2, 16896, 16944), (2, 17408, 17456), (2, 17920, 17968), (2, 18432, 18480), (2, 10240, 10288), (2, 11264, 11312), (2, 12288, 12336), (2, 13312, 13360), (2, 14336, 14384), (2, 15360, 15408), (2, 16384, 16432), (2, 17408, 17456), (2, 18432, 18480), (2, 10240, 10288), (2, 12288, 12336), (2, 14336, 14384), (2, 16384, 16432), (2, 18432, 18480), (2, 12288, 12336), (2, 16384, 16432), (2, 16384, 16432), (2, 16384, 16432), (3, 9477, 9525), (3, 10206, 10254), (3, 10935, 10983), (3, 11664, 11712), (3, 12393, 12441), (3, 13122, 13170), (3, 13851, 13899), (3, 14580, 14628), (3, 15309, 15357), (3, 16038, 16086), (3, 16767, 16815), (3, 17496, 17544), (3, 18225, 18273), (3, 10935, 10983), (3, 13122, 13170), (3, 15309, 15357), (3, 17496, 17544), (3, 13122, 13170), (5, 9408, 9423), (5, 10000, 10048), (5, 10625, 10673), (5, 11250, 11298), (5, 11875, 11923), (5, 12500, 12548), (5, 13125, 13173), (5, 13750, 13798), (5, 14375, 14423), (5, 15000, 15048), (5, 15625, 15673), (5, 16250, 16298), (5, 16875, 16923), (5, 17500, 17548), (5, 18125, 18173), (5, 18750, 18798), (5, 9408, 9423), (5, 12500, 12548), (5, 15625, 15673), (5, 18750, 18798), (5, 15625, 15673), (11, 10648, 10696), (11, 11979, 12027), (11, 13310, 13358), (11, 14641, 14689), (11, 15972, 16020), (11, 17303, 17351), (11, 18634, 18682), (11, 14641, 14689), (13, 10985, 11033), (13, 13182, 13230), (13, 15379, 15427), (13, 17576, 17624), (17, 9537, 9585), (17, 9826, 9874), (17, 10115, 10163), (17, 10404, 10452), (17, 9826, 9874), (17, 14739, 14787), (19, 9408, 9434), (19, 9747, 9795), (19, 10108, 10156), (19, 10469, 10517), (19, 10830, 10878), (19, 11191, 11239), (19, 11552, 11600), (19, 11913, 11961), (19, 12274, 12322), (19, 12635, 12683), (19, 12996, 13044), (19, 13718, 13766), (23, 9522, 9570), (23, 10051, 10099), (23, 10580, 10628), (23, 11109, 11157), (23, 11638, 11686), (23, 12167, 12215), (23, 12696, 12744), (23, 13225, 13273), (23, 13754, 13802), (23, 14283, 14331), (23, 14812, 14860), (23, 15341, 15389), (23, 15870, 15918), (23, 16399, 16447), (23, 16928, 16976), (23, 17457, 17505), (23, 17986, 18034), (23, 18515, 18563), (23, 12167, 12215), (29, 10092, 10140), (29, 10933, 10981), (29, 11774, 11822), (29, 12615, 12663), (29, 13456, 13504), (29, 14297, 14345), (29, 15138, 15186), (29, 15979, 16027), (29, 16820, 16868), (29, 17661, 17709), (29, 18502, 18550), (31, 9610, 9658), (31, 10571, 10619), (31, 11532, 11580), (31, 12493, 12541), (31, 13454, 13502), (31, 14415, 14463), (31, 15376, 15424), (31, 16337, 16385), (31, 17298, 17346), (31, 18259, 18307), (37, 9583, 9631), (37, 10952, 11000), (37, 12321, 12369), (37, 13690, 13738), (37, 15059, 15107), (37, 16428, 16476), (37, 17797, 17845), (41, 10086, 10134), (41, 11767, 11815), (41, 13448, 13496), (41, 15129, 15177), (41, 16810, 16858), (41, 18491, 18539), (43, 11094, 11142), (43, 12943, 12991), (43, 14792, 14840), (43, 16641, 16689), (43, 18490, 18538), (47, 11045, 11093), (47, 13254, 13302), (47, 15463, 15511), (47, 17672, 17720)]

def row049_layer002_block000 : List ColouredInterval :=
  [(2, 9728, 9776), (2, 10240, 10288), (2, 10752, 10800), (2, 11264, 11312), (2, 11776, 11824), (2, 12288, 12336), (2, 12800, 12848), (2, 13312, 13360), (2, 13824, 13872), (2, 14336, 14384), (2, 14848, 14896), (2, 15360, 15408)]

def row049_layer002_block001 : List ColouredInterval :=
  [(2, 15872, 15920), (2, 16384, 16432), (2, 16896, 16944), (2, 17408, 17456), (2, 17920, 17968), (2, 18432, 18480), (2, 10240, 10288), (2, 11264, 11312), (2, 12288, 12336), (2, 13312, 13360), (2, 14336, 14384), (2, 15360, 15408)]

def row049_layer002_block002 : List ColouredInterval :=
  [(2, 16384, 16432), (2, 17408, 17456), (2, 18432, 18480), (2, 10240, 10288), (2, 12288, 12336), (2, 14336, 14384), (2, 16384, 16432), (2, 18432, 18480), (2, 12288, 12336), (2, 16384, 16432), (2, 16384, 16432), (2, 16384, 16432)]

def row049_layer002_block003 : List ColouredInterval :=
  [(3, 9477, 9525), (3, 10206, 10254), (3, 10935, 10983), (3, 11664, 11712), (3, 12393, 12441), (3, 13122, 13170), (3, 13851, 13899), (3, 14580, 14628), (3, 15309, 15357), (3, 16038, 16086), (3, 16767, 16815), (3, 17496, 17544)]

def row049_layer002_block004 : List ColouredInterval :=
  [(3, 18225, 18273), (3, 10935, 10983), (3, 13122, 13170), (3, 15309, 15357), (3, 17496, 17544), (3, 13122, 13170), (5, 9408, 9423), (5, 10000, 10048), (5, 10625, 10673), (5, 11250, 11298), (5, 11875, 11923), (5, 12500, 12548)]

def row049_layer002_block005 : List ColouredInterval :=
  [(5, 13125, 13173), (5, 13750, 13798), (5, 14375, 14423), (5, 15000, 15048), (5, 15625, 15673), (5, 16250, 16298), (5, 16875, 16923), (5, 17500, 17548), (5, 18125, 18173), (5, 18750, 18798), (5, 9408, 9423), (5, 12500, 12548)]

def row049_layer002_block006 : List ColouredInterval :=
  [(5, 15625, 15673), (5, 18750, 18798), (5, 15625, 15673), (11, 10648, 10696), (11, 11979, 12027), (11, 13310, 13358), (11, 14641, 14689), (11, 15972, 16020), (11, 17303, 17351), (11, 18634, 18682), (11, 14641, 14689), (13, 10985, 11033)]

def row049_layer002_block007 : List ColouredInterval :=
  [(13, 13182, 13230), (13, 15379, 15427), (13, 17576, 17624), (17, 9537, 9585), (17, 9826, 9874), (17, 10115, 10163), (17, 10404, 10452), (17, 9826, 9874), (17, 14739, 14787), (19, 9408, 9434), (19, 9747, 9795), (19, 10108, 10156)]

def row049_layer002_block008 : List ColouredInterval :=
  [(19, 10469, 10517), (19, 10830, 10878), (19, 11191, 11239), (19, 11552, 11600), (19, 11913, 11961), (19, 12274, 12322), (19, 12635, 12683), (19, 12996, 13044), (19, 13718, 13766), (23, 9522, 9570), (23, 10051, 10099), (23, 10580, 10628)]

def row049_layer002_block009 : List ColouredInterval :=
  [(23, 11109, 11157), (23, 11638, 11686), (23, 12167, 12215), (23, 12696, 12744), (23, 13225, 13273), (23, 13754, 13802), (23, 14283, 14331), (23, 14812, 14860), (23, 15341, 15389), (23, 15870, 15918), (23, 16399, 16447), (23, 16928, 16976)]

def row049_layer002_block010 : List ColouredInterval :=
  [(23, 17457, 17505), (23, 17986, 18034), (23, 18515, 18563), (23, 12167, 12215), (29, 10092, 10140), (29, 10933, 10981), (29, 11774, 11822), (29, 12615, 12663), (29, 13456, 13504), (29, 14297, 14345), (29, 15138, 15186), (29, 15979, 16027)]

def row049_layer002_block011 : List ColouredInterval :=
  [(29, 16820, 16868), (29, 17661, 17709), (29, 18502, 18550), (31, 9610, 9658), (31, 10571, 10619), (31, 11532, 11580), (31, 12493, 12541), (31, 13454, 13502), (31, 14415, 14463), (31, 15376, 15424), (31, 16337, 16385), (31, 17298, 17346)]

def row049_layer002_block012 : List ColouredInterval :=
  [(31, 18259, 18307), (37, 9583, 9631), (37, 10952, 11000), (37, 12321, 12369), (37, 13690, 13738), (37, 15059, 15107), (37, 16428, 16476), (37, 17797, 17845), (41, 10086, 10134), (41, 11767, 11815), (41, 13448, 13496), (41, 15129, 15177)]

def row049_layer002_block013 : List ColouredInterval :=
  [(41, 16810, 16858), (41, 18491, 18539), (43, 11094, 11142), (43, 12943, 12991), (43, 14792, 14840), (43, 16641, 16689), (43, 18490, 18538), (47, 11045, 11093), (47, 13254, 13302), (47, 15463, 15511), (47, 17672, 17720)]

def row049_layer002_chunks : List (List ColouredInterval) :=
  [row049_layer002_block000, row049_layer002_block001, row049_layer002_block002, row049_layer002_block003, row049_layer002_block004, row049_layer002_block005, row049_layer002_block006, row049_layer002_block007, row049_layer002_block008, row049_layer002_block009, row049_layer002_block010, row049_layer002_block011, row049_layer002_block012, row049_layer002_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_arithmetic : LayerArithmeticValid row049.height { lower := 9408, upper := 18816, M := 36 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_enumeration :
    activePowerIntervalList 49 36 9408 18816 = row049_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs000 :
    row049_layer002_block000.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs001 :
    row049_layer002_block001.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs002 :
    row049_layer002_block002.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs003 :
    row049_layer002_block003.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs004 :
    row049_layer002_block004.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs005 :
    row049_layer002_block005.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs006 :
    row049_layer002_block006.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs007 :
    row049_layer002_block007.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs008 :
    row049_layer002_block008.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs009 :
    row049_layer002_block009.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs010 :
    row049_layer002_block010.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs011 :
    row049_layer002_block011.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs012 :
    row049_layer002_block012.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_pairs013 :
    row049_layer002_block013.all (fun I => row049_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_chunks_eq : row049_layer002_chunks.flatten = row049_layer002_intervals := by
  rfl

theorem row049_layer002_pairs : pairCoverCheck row049_layer002_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer002_chunks_eq
  intro block hblock
  simp only [row049_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer002_pairs000
  · exact row049_layer002_pairs001
  · exact row049_layer002_pairs002
  · exact row049_layer002_pairs003
  · exact row049_layer002_pairs004
  · exact row049_layer002_pairs005
  · exact row049_layer002_pairs006
  · exact row049_layer002_pairs007
  · exact row049_layer002_pairs008
  · exact row049_layer002_pairs009
  · exact row049_layer002_pairs010
  · exact row049_layer002_pairs011
  · exact row049_layer002_pairs012
  · exact row049_layer002_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer002_checked :
    coverLayerCheck row049.height row049.goods { lower := 9408, upper := 18816, M := 36 } = true := by
  exact coverLayerCheck_of_parts row049_layer002_arithmetic row049_layer002_enumeration row049_bounds_eq row049_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer003_intervals : List ColouredInterval :=
  [(2, 19456, 19504), (2, 20480, 20528), (2, 21504, 21552), (2, 22528, 22576), (2, 23552, 23600), (2, 24576, 24624), (2, 25600, 25648), (2, 26624, 26672), (2, 27648, 27696), (2, 28672, 28720), (2, 29696, 29744), (2, 30720, 30768), (2, 31744, 31792), (2, 32768, 32816), (2, 33792, 33840), (2, 34816, 34864), (2, 35840, 35888), (2, 20480, 20528), (2, 22528, 22576), (2, 24576, 24624), (2, 26624, 26672), (2, 28672, 28720), (2, 30720, 30768), (2, 32768, 32816), (2, 34816, 34864), (2, 36864, 36912), (2, 20480, 20528), (2, 24576, 24624), (2, 28672, 28720), (2, 32768, 32816), (2, 36864, 36912), (2, 24576, 24624), (2, 32768, 32816), (2, 32768, 32816), (2, 32768, 32816), (3, 18954, 19002), (3, 19683, 19731), (3, 20412, 20460), (3, 21141, 21189), (3, 21870, 21918), (3, 22599, 22647), (3, 23328, 23376), (3, 24057, 24105), (3, 24786, 24834), (3, 25515, 25563), (3, 19683, 19731), (3, 21870, 21918), (3, 24057, 24105), (3, 26244, 26292), (3, 28431, 28479), (3, 30618, 30666), (3, 32805, 32853), (3, 34992, 35040), (3, 37179, 37227), (3, 19683, 19731), (3, 26244, 26292), (3, 32805, 32853), (3, 19683, 19731), (5, 19375, 19423), (5, 20000, 20048), (5, 20625, 20673), (5, 21250, 21298), (5, 21875, 21923), (5, 21875, 21923), (5, 25000, 25048), (5, 28125, 28173), (5, 31250, 31298), (5, 34375, 34423), (5, 37500, 37548), (5, 31250, 31298), (11, 19965, 20013), (11, 21296, 21344), (11, 22627, 22675), (11, 23958, 24006), (11, 25289, 25337), (11, 26620, 26668), (11, 27951, 27999), (11, 29282, 29330), (11, 30613, 30661), (11, 31944, 31992), (11, 33275, 33323), (11, 34606, 34654), (11, 35937, 35985), (11, 37268, 37316), (11, 29282, 29330), (13, 19773, 19821), (13, 21970, 22018), (13, 24167, 24215), (13, 26364, 26412), (13, 28561, 28609), (13, 30758, 30806), (13, 32955, 33003), (13, 35152, 35200), (13, 37349, 37397), (13, 28561, 28609), (17, 19652, 19700), (17, 24565, 24613), (17, 29478, 29526), (17, 34391, 34439), (19, 20577, 20625), (19, 27436, 27484), (19, 34295, 34343), (23, 24334, 24382), (23, 36501, 36549), (29, 19343, 19391), (29, 20184, 20232), (29, 21025, 21073), (29, 21866, 21914), (29, 22707, 22755), (29, 23548, 23596), (29, 24389, 24437), (29, 25230, 25278), (29, 26071, 26119), (29, 26912, 26960), (29, 27753, 27801), (29, 28594, 28642), (29, 29435, 29483), (29, 24389, 24437), (31, 19220, 19268), (31, 20181, 20229), (31, 21142, 21190), (31, 22103, 22151), (31, 23064, 23112), (31, 24025, 24073), (31, 24986, 25034), (31, 25947, 25995), (31, 26908, 26956), (31, 27869, 27917), (31, 28830, 28878), (31, 29791, 29839), (31, 30752, 30800), (31, 31713, 31761), (31, 32674, 32722), (31, 33635, 33683), (31, 29791, 29839), (37, 19166, 19214), (37, 20535, 20583), (37, 21904, 21952), (37, 23273, 23321), (37, 24642, 24690), (37, 26011, 26059), (37, 27380, 27428), (37, 28749, 28797), (37, 30118, 30166), (37, 31487, 31535), (37, 32856, 32904), (37, 34225, 34273), (37, 35594, 35642), (37, 36963, 37011), (41, 20172, 20220), (41, 21853, 21901), (41, 23534, 23582), (41, 25215, 25263), (41, 26896, 26944), (41, 28577, 28625), (41, 30258, 30306), (41, 31939, 31987), (41, 33620, 33668), (41, 35301, 35349), (41, 36982, 37030), (43, 20339, 20387), (43, 22188, 22236), (43, 24037, 24085), (43, 25886, 25934), (43, 27735, 27783), (43, 29584, 29632), (43, 31433, 31481), (43, 33282, 33330), (43, 35131, 35179), (43, 36980, 37028), (47, 19881, 19929), (47, 22090, 22138), (47, 24299, 24347), (47, 26508, 26556), (47, 28717, 28765), (47, 30926, 30974), (47, 33135, 33183), (47, 35344, 35392), (47, 37553, 37601)]

def row049_layer003_block000 : List ColouredInterval :=
  [(2, 19456, 19504), (2, 20480, 20528), (2, 21504, 21552), (2, 22528, 22576), (2, 23552, 23600), (2, 24576, 24624), (2, 25600, 25648), (2, 26624, 26672), (2, 27648, 27696), (2, 28672, 28720), (2, 29696, 29744)]

def row049_layer003_block001 : List ColouredInterval :=
  [(2, 30720, 30768), (2, 31744, 31792), (2, 32768, 32816), (2, 33792, 33840), (2, 34816, 34864), (2, 35840, 35888), (2, 20480, 20528), (2, 22528, 22576), (2, 24576, 24624), (2, 26624, 26672), (2, 28672, 28720)]

def row049_layer003_block002 : List ColouredInterval :=
  [(2, 30720, 30768), (2, 32768, 32816), (2, 34816, 34864), (2, 36864, 36912), (2, 20480, 20528), (2, 24576, 24624), (2, 28672, 28720), (2, 32768, 32816), (2, 36864, 36912), (2, 24576, 24624), (2, 32768, 32816)]

def row049_layer003_block003 : List ColouredInterval :=
  [(2, 32768, 32816), (2, 32768, 32816), (3, 18954, 19002), (3, 19683, 19731), (3, 20412, 20460), (3, 21141, 21189), (3, 21870, 21918), (3, 22599, 22647), (3, 23328, 23376), (3, 24057, 24105), (3, 24786, 24834)]

def row049_layer003_block004 : List ColouredInterval :=
  [(3, 25515, 25563), (3, 19683, 19731), (3, 21870, 21918), (3, 24057, 24105), (3, 26244, 26292), (3, 28431, 28479), (3, 30618, 30666), (3, 32805, 32853), (3, 34992, 35040), (3, 37179, 37227), (3, 19683, 19731)]

def row049_layer003_block005 : List ColouredInterval :=
  [(3, 26244, 26292), (3, 32805, 32853), (3, 19683, 19731), (5, 19375, 19423), (5, 20000, 20048), (5, 20625, 20673), (5, 21250, 21298), (5, 21875, 21923), (5, 21875, 21923), (5, 25000, 25048), (5, 28125, 28173)]

def row049_layer003_block006 : List ColouredInterval :=
  [(5, 31250, 31298), (5, 34375, 34423), (5, 37500, 37548), (5, 31250, 31298), (11, 19965, 20013), (11, 21296, 21344), (11, 22627, 22675), (11, 23958, 24006), (11, 25289, 25337), (11, 26620, 26668), (11, 27951, 27999)]

def row049_layer003_block007 : List ColouredInterval :=
  [(11, 29282, 29330), (11, 30613, 30661), (11, 31944, 31992), (11, 33275, 33323), (11, 34606, 34654), (11, 35937, 35985), (11, 37268, 37316), (11, 29282, 29330), (13, 19773, 19821), (13, 21970, 22018), (13, 24167, 24215)]

def row049_layer003_block008 : List ColouredInterval :=
  [(13, 26364, 26412), (13, 28561, 28609), (13, 30758, 30806), (13, 32955, 33003), (13, 35152, 35200), (13, 37349, 37397), (13, 28561, 28609), (17, 19652, 19700), (17, 24565, 24613), (17, 29478, 29526), (17, 34391, 34439)]

def row049_layer003_block009 : List ColouredInterval :=
  [(19, 20577, 20625), (19, 27436, 27484), (19, 34295, 34343), (23, 24334, 24382), (23, 36501, 36549), (29, 19343, 19391), (29, 20184, 20232), (29, 21025, 21073), (29, 21866, 21914), (29, 22707, 22755), (29, 23548, 23596)]

def row049_layer003_block010 : List ColouredInterval :=
  [(29, 24389, 24437), (29, 25230, 25278), (29, 26071, 26119), (29, 26912, 26960), (29, 27753, 27801), (29, 28594, 28642), (29, 29435, 29483), (29, 24389, 24437), (31, 19220, 19268), (31, 20181, 20229), (31, 21142, 21190)]

def row049_layer003_block011 : List ColouredInterval :=
  [(31, 22103, 22151), (31, 23064, 23112), (31, 24025, 24073), (31, 24986, 25034), (31, 25947, 25995), (31, 26908, 26956), (31, 27869, 27917), (31, 28830, 28878), (31, 29791, 29839), (31, 30752, 30800), (31, 31713, 31761)]

def row049_layer003_block012 : List ColouredInterval :=
  [(31, 32674, 32722), (31, 33635, 33683), (31, 29791, 29839), (37, 19166, 19214), (37, 20535, 20583), (37, 21904, 21952), (37, 23273, 23321), (37, 24642, 24690), (37, 26011, 26059), (37, 27380, 27428), (37, 28749, 28797)]

def row049_layer003_block013 : List ColouredInterval :=
  [(37, 30118, 30166), (37, 31487, 31535), (37, 32856, 32904), (37, 34225, 34273), (37, 35594, 35642), (37, 36963, 37011), (41, 20172, 20220), (41, 21853, 21901), (41, 23534, 23582), (41, 25215, 25263), (41, 26896, 26944)]

def row049_layer003_block014 : List ColouredInterval :=
  [(41, 28577, 28625), (41, 30258, 30306), (41, 31939, 31987), (41, 33620, 33668), (41, 35301, 35349), (41, 36982, 37030), (43, 20339, 20387), (43, 22188, 22236), (43, 24037, 24085), (43, 25886, 25934), (43, 27735, 27783)]

def row049_layer003_block015 : List ColouredInterval :=
  [(43, 29584, 29632), (43, 31433, 31481), (43, 33282, 33330), (43, 35131, 35179), (43, 36980, 37028), (47, 19881, 19929), (47, 22090, 22138), (47, 24299, 24347), (47, 26508, 26556), (47, 28717, 28765), (47, 30926, 30974)]

def row049_layer003_block016 : List ColouredInterval :=
  [(47, 33135, 33183), (47, 35344, 35392), (47, 37553, 37601)]

def row049_layer003_chunks : List (List ColouredInterval) :=
  [row049_layer003_block000, row049_layer003_block001, row049_layer003_block002, row049_layer003_block003, row049_layer003_block004, row049_layer003_block005, row049_layer003_block006, row049_layer003_block007, row049_layer003_block008, row049_layer003_block009, row049_layer003_block010, row049_layer003_block011, row049_layer003_block012, row049_layer003_block013, row049_layer003_block014, row049_layer003_block015, row049_layer003_block016]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_arithmetic : LayerArithmeticValid row049.height { lower := 18816, upper := 37632, M := 35 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_enumeration :
    activePowerIntervalList 49 35 18816 37632 = row049_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs000 :
    row049_layer003_block000.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs001 :
    row049_layer003_block001.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs002 :
    row049_layer003_block002.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs003 :
    row049_layer003_block003.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs004 :
    row049_layer003_block004.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs005 :
    row049_layer003_block005.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs006 :
    row049_layer003_block006.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs007 :
    row049_layer003_block007.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs008 :
    row049_layer003_block008.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs009 :
    row049_layer003_block009.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs010 :
    row049_layer003_block010.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs011 :
    row049_layer003_block011.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs012 :
    row049_layer003_block012.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs013 :
    row049_layer003_block013.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs014 :
    row049_layer003_block014.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs014

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs015 :
    row049_layer003_block015.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs015

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_pairs016 :
    row049_layer003_block016.all (fun I => row049_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_chunks_eq : row049_layer003_chunks.flatten = row049_layer003_intervals := by
  rfl

theorem row049_layer003_pairs : pairCoverCheck row049_layer003_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer003_chunks_eq
  intro block hblock
  simp only [row049_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer003_pairs000
  · exact row049_layer003_pairs001
  · exact row049_layer003_pairs002
  · exact row049_layer003_pairs003
  · exact row049_layer003_pairs004
  · exact row049_layer003_pairs005
  · exact row049_layer003_pairs006
  · exact row049_layer003_pairs007
  · exact row049_layer003_pairs008
  · exact row049_layer003_pairs009
  · exact row049_layer003_pairs010
  · exact row049_layer003_pairs011
  · exact row049_layer003_pairs012
  · exact row049_layer003_pairs013
  · exact row049_layer003_pairs014
  · exact row049_layer003_pairs015
  · exact row049_layer003_pairs016

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer003_checked :
    coverLayerCheck row049.height row049.goods { lower := 18816, upper := 37632, M := 35 } = true := by
  exact coverLayerCheck_of_parts row049_layer003_arithmetic row049_layer003_enumeration row049_bounds_eq row049_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer004_intervals : List ColouredInterval :=
  [(2, 38912, 38960), (2, 40960, 41008), (2, 43008, 43056), (2, 45056, 45104), (2, 47104, 47152), (2, 49152, 49200), (2, 51200, 51248), (2, 53248, 53296), (2, 55296, 55344), (2, 57344, 57392), (2, 59392, 59440), (2, 61440, 61488), (2, 63488, 63536), (2, 65536, 65584), (2, 67584, 67632), (2, 40960, 41008), (2, 45056, 45104), (2, 49152, 49200), (2, 53248, 53296), (2, 57344, 57392), (2, 61440, 61488), (2, 65536, 65584), (2, 69632, 69680), (2, 73728, 73776), (2, 40960, 41008), (2, 49152, 49200), (2, 57344, 57392), (2, 65536, 65584), (2, 73728, 73776), (2, 49152, 49200), (2, 65536, 65584), (2, 65536, 65584), (2, 65536, 65584), (3, 39366, 39414), (3, 41553, 41601), (3, 43740, 43788), (3, 45927, 45975), (3, 48114, 48162), (3, 50301, 50349), (3, 52488, 52536), (3, 54675, 54723), (3, 56862, 56910), (3, 59049, 59097), (3, 61236, 61284), (3, 63423, 63471), (3, 65610, 65658), (3, 67797, 67845), (3, 69984, 70032), (3, 72171, 72219), (3, 39366, 39414), (3, 45927, 45975), (3, 52488, 52536), (3, 59049, 59097), (3, 65610, 65658), (3, 72171, 72219), (3, 39366, 39414), (3, 59049, 59097), (3, 59049, 59097), (5, 40625, 40673), (5, 43750, 43798), (5, 46875, 46923), (5, 50000, 50048), (5, 53125, 53173), (5, 56250, 56298), (5, 59375, 59423), (5, 62500, 62548), (5, 65625, 65673), (5, 68750, 68798), (5, 71875, 71923), (5, 75000, 75048), (5, 46875, 46923), (5, 62500, 62548), (11, 38599, 38647), (11, 39930, 39978), (11, 41261, 41309), (11, 42592, 42640), (11, 43923, 43971), (11, 43923, 43971), (11, 58564, 58612), (11, 73205, 73253), (13, 39546, 39594), (13, 41743, 41791), (13, 43940, 43988), (13, 46137, 46185), (13, 48334, 48382), (13, 50531, 50579), (13, 52728, 52776), (13, 54925, 54973), (13, 57122, 57170), (13, 59319, 59367), (13, 61516, 61564), (13, 63713, 63761), (13, 65910, 65958), (13, 68107, 68155), (13, 70304, 70352), (13, 72501, 72549), (13, 57122, 57170), (17, 39304, 39352), (17, 44217, 44265), (17, 49130, 49178), (17, 54043, 54091), (17, 58956, 59004), (17, 63869, 63917), (17, 68782, 68830), (17, 73695, 73743), (19, 41154, 41202), (19, 48013, 48061), (19, 54872, 54920), (19, 61731, 61779), (19, 68590, 68638), (23, 48668, 48716), (23, 60835, 60883), (23, 73002, 73050), (29, 48778, 48826), (29, 73167, 73215), (31, 59582, 59630), (37, 38332, 38380), (37, 39701, 39749), (37, 41070, 41118), (37, 42439, 42487), (37, 43808, 43856), (37, 45177, 45225), (37, 50653, 50701), (41, 38663, 38711), (41, 40344, 40392), (41, 42025, 42073), (41, 43706, 43754), (41, 45387, 45435), (41, 47068, 47116), (41, 48749, 48797), (41, 50430, 50478), (41, 52111, 52159), (41, 53792, 53840), (41, 55473, 55521), (41, 68921, 68969), (43, 38829, 38877), (43, 40678, 40726), (43, 42527, 42575), (43, 44376, 44424), (43, 46225, 46273), (43, 48074, 48122), (43, 49923, 49971), (43, 51772, 51820), (43, 53621, 53669), (43, 55470, 55518), (43, 57319, 57367), (43, 59168, 59216), (43, 61017, 61065), (47, 39762, 39810), (47, 41971, 42019), (47, 44180, 44228), (47, 46389, 46437), (47, 48598, 48646), (47, 50807, 50855), (47, 53016, 53064), (47, 55225, 55273), (47, 57434, 57482), (47, 59643, 59691), (47, 61852, 61900), (47, 64061, 64109), (47, 66270, 66318), (47, 68479, 68527), (47, 70688, 70736), (47, 72897, 72945)]

def row049_layer004_block000 : List ColouredInterval :=
  [(2, 38912, 38960), (2, 40960, 41008), (2, 43008, 43056), (2, 45056, 45104), (2, 47104, 47152), (2, 49152, 49200), (2, 51200, 51248), (2, 53248, 53296), (2, 55296, 55344), (2, 57344, 57392), (2, 59392, 59440), (2, 61440, 61488)]

def row049_layer004_block001 : List ColouredInterval :=
  [(2, 63488, 63536), (2, 65536, 65584), (2, 67584, 67632), (2, 40960, 41008), (2, 45056, 45104), (2, 49152, 49200), (2, 53248, 53296), (2, 57344, 57392), (2, 61440, 61488), (2, 65536, 65584), (2, 69632, 69680), (2, 73728, 73776)]

def row049_layer004_block002 : List ColouredInterval :=
  [(2, 40960, 41008), (2, 49152, 49200), (2, 57344, 57392), (2, 65536, 65584), (2, 73728, 73776), (2, 49152, 49200), (2, 65536, 65584), (2, 65536, 65584), (2, 65536, 65584), (3, 39366, 39414), (3, 41553, 41601), (3, 43740, 43788)]

def row049_layer004_block003 : List ColouredInterval :=
  [(3, 45927, 45975), (3, 48114, 48162), (3, 50301, 50349), (3, 52488, 52536), (3, 54675, 54723), (3, 56862, 56910), (3, 59049, 59097), (3, 61236, 61284), (3, 63423, 63471), (3, 65610, 65658), (3, 67797, 67845), (3, 69984, 70032)]

def row049_layer004_block004 : List ColouredInterval :=
  [(3, 72171, 72219), (3, 39366, 39414), (3, 45927, 45975), (3, 52488, 52536), (3, 59049, 59097), (3, 65610, 65658), (3, 72171, 72219), (3, 39366, 39414), (3, 59049, 59097), (3, 59049, 59097), (5, 40625, 40673), (5, 43750, 43798)]

def row049_layer004_block005 : List ColouredInterval :=
  [(5, 46875, 46923), (5, 50000, 50048), (5, 53125, 53173), (5, 56250, 56298), (5, 59375, 59423), (5, 62500, 62548), (5, 65625, 65673), (5, 68750, 68798), (5, 71875, 71923), (5, 75000, 75048), (5, 46875, 46923), (5, 62500, 62548)]

def row049_layer004_block006 : List ColouredInterval :=
  [(11, 38599, 38647), (11, 39930, 39978), (11, 41261, 41309), (11, 42592, 42640), (11, 43923, 43971), (11, 43923, 43971), (11, 58564, 58612), (11, 73205, 73253), (13, 39546, 39594), (13, 41743, 41791), (13, 43940, 43988), (13, 46137, 46185)]

def row049_layer004_block007 : List ColouredInterval :=
  [(13, 48334, 48382), (13, 50531, 50579), (13, 52728, 52776), (13, 54925, 54973), (13, 57122, 57170), (13, 59319, 59367), (13, 61516, 61564), (13, 63713, 63761), (13, 65910, 65958), (13, 68107, 68155), (13, 70304, 70352), (13, 72501, 72549)]

def row049_layer004_block008 : List ColouredInterval :=
  [(13, 57122, 57170), (17, 39304, 39352), (17, 44217, 44265), (17, 49130, 49178), (17, 54043, 54091), (17, 58956, 59004), (17, 63869, 63917), (17, 68782, 68830), (17, 73695, 73743), (19, 41154, 41202), (19, 48013, 48061), (19, 54872, 54920)]

def row049_layer004_block009 : List ColouredInterval :=
  [(19, 61731, 61779), (19, 68590, 68638), (23, 48668, 48716), (23, 60835, 60883), (23, 73002, 73050), (29, 48778, 48826), (29, 73167, 73215), (31, 59582, 59630), (37, 38332, 38380), (37, 39701, 39749), (37, 41070, 41118), (37, 42439, 42487)]

def row049_layer004_block010 : List ColouredInterval :=
  [(37, 43808, 43856), (37, 45177, 45225), (37, 50653, 50701), (41, 38663, 38711), (41, 40344, 40392), (41, 42025, 42073), (41, 43706, 43754), (41, 45387, 45435), (41, 47068, 47116), (41, 48749, 48797), (41, 50430, 50478), (41, 52111, 52159)]

def row049_layer004_block011 : List ColouredInterval :=
  [(41, 53792, 53840), (41, 55473, 55521), (41, 68921, 68969), (43, 38829, 38877), (43, 40678, 40726), (43, 42527, 42575), (43, 44376, 44424), (43, 46225, 46273), (43, 48074, 48122), (43, 49923, 49971), (43, 51772, 51820), (43, 53621, 53669)]

def row049_layer004_block012 : List ColouredInterval :=
  [(43, 55470, 55518), (43, 57319, 57367), (43, 59168, 59216), (43, 61017, 61065), (47, 39762, 39810), (47, 41971, 42019), (47, 44180, 44228), (47, 46389, 46437), (47, 48598, 48646), (47, 50807, 50855), (47, 53016, 53064), (47, 55225, 55273)]

def row049_layer004_block013 : List ColouredInterval :=
  [(47, 57434, 57482), (47, 59643, 59691), (47, 61852, 61900), (47, 64061, 64109), (47, 66270, 66318), (47, 68479, 68527), (47, 70688, 70736), (47, 72897, 72945)]

def row049_layer004_chunks : List (List ColouredInterval) :=
  [row049_layer004_block000, row049_layer004_block001, row049_layer004_block002, row049_layer004_block003, row049_layer004_block004, row049_layer004_block005, row049_layer004_block006, row049_layer004_block007, row049_layer004_block008, row049_layer004_block009, row049_layer004_block010, row049_layer004_block011, row049_layer004_block012, row049_layer004_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_arithmetic : LayerArithmeticValid row049.height { lower := 37632, upper := 75264, M := 33 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_enumeration :
    activePowerIntervalList 49 33 37632 75264 = row049_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs000 :
    row049_layer004_block000.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs001 :
    row049_layer004_block001.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs002 :
    row049_layer004_block002.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs003 :
    row049_layer004_block003.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs004 :
    row049_layer004_block004.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs005 :
    row049_layer004_block005.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs006 :
    row049_layer004_block006.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs007 :
    row049_layer004_block007.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs008 :
    row049_layer004_block008.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs009 :
    row049_layer004_block009.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs010 :
    row049_layer004_block010.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs011 :
    row049_layer004_block011.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs012 :
    row049_layer004_block012.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_pairs013 :
    row049_layer004_block013.all (fun I => row049_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_chunks_eq : row049_layer004_chunks.flatten = row049_layer004_intervals := by
  rfl

theorem row049_layer004_pairs : pairCoverCheck row049_layer004_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer004_chunks_eq
  intro block hblock
  simp only [row049_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer004_pairs000
  · exact row049_layer004_pairs001
  · exact row049_layer004_pairs002
  · exact row049_layer004_pairs003
  · exact row049_layer004_pairs004
  · exact row049_layer004_pairs005
  · exact row049_layer004_pairs006
  · exact row049_layer004_pairs007
  · exact row049_layer004_pairs008
  · exact row049_layer004_pairs009
  · exact row049_layer004_pairs010
  · exact row049_layer004_pairs011
  · exact row049_layer004_pairs012
  · exact row049_layer004_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_checked :
    coverLayerCheck row049.height row049.goods { lower := 37632, upper := 75264, M := 33 } = true := by
  exact coverLayerCheck_of_parts row049_layer004_arithmetic row049_layer004_enumeration row049_bounds_eq row049_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer005_intervals : List ColouredInterval :=
  [(2, 77824, 77872), (2, 81920, 81968), (2, 86016, 86064), (2, 90112, 90160), (2, 94208, 94256), (2, 98304, 98352), (2, 102400, 102448), (2, 106496, 106544), (2, 110592, 110640), (2, 114688, 114736), (2, 118784, 118832), (2, 122880, 122928), (2, 126976, 127024), (2, 81920, 81968), (2, 90112, 90160), (2, 98304, 98352), (2, 106496, 106544), (2, 114688, 114736), (2, 122880, 122928), (2, 131072, 131120), (2, 139264, 139312), (2, 147456, 147504), (2, 81920, 81968), (2, 98304, 98352), (2, 114688, 114736), (2, 131072, 131120), (2, 147456, 147504), (2, 98304, 98352), (2, 131072, 131120), (2, 131072, 131120), (2, 131072, 131120), (3, 78732, 78780), (3, 85293, 85341), (3, 91854, 91902), (3, 98415, 98463), (3, 104976, 105024), (3, 111537, 111585), (3, 118098, 118146), (3, 124659, 124707), (3, 131220, 131268), (3, 137781, 137829), (3, 144342, 144390), (3, 78732, 78780), (3, 98415, 98463), (3, 118098, 118146), (3, 137781, 137829), (3, 118098, 118146), (5, 78125, 78173), (5, 81250, 81298), (5, 84375, 84423), (5, 87500, 87548), (5, 90625, 90673), (5, 93750, 93798), (5, 96875, 96923), (5, 78125, 78173), (5, 93750, 93798), (5, 109375, 109423), (5, 125000, 125048), (5, 140625, 140673), (5, 78125, 78173), (11, 87846, 87894), (11, 102487, 102535), (11, 117128, 117176), (11, 131769, 131817), (11, 146410, 146458), (13, 85683, 85731), (13, 114244, 114292), (13, 142805, 142853), (17, 78608, 78656), (17, 83521, 83569), (17, 88434, 88482), (17, 93347, 93395), (17, 98260, 98308), (17, 103173, 103221), (17, 108086, 108134), (17, 112999, 113047), (17, 117912, 117960), (17, 122825, 122873), (17, 127738, 127786), (17, 132651, 132699), (17, 137564, 137612), (17, 142477, 142525), (17, 147390, 147438), (17, 83521, 83569), (19, 75449, 75497), (19, 82308, 82356), (19, 89167, 89215), (19, 96026, 96074), (19, 102885, 102933), (19, 109744, 109792), (19, 116603, 116651), (19, 123462, 123510), (19, 130321, 130369), (19, 137180, 137228), (19, 144039, 144087), (19, 130321, 130369), (23, 85169, 85217), (23, 97336, 97384), (23, 109503, 109551), (23, 121670, 121718), (23, 133837, 133885), (23, 146004, 146052), (29, 97556, 97604), (29, 121945, 121993), (29, 146334, 146382), (31, 89373, 89421), (31, 119164, 119212), (31, 148955, 149003), (37, 101306, 101354), (41, 137842, 137890), (43, 79507, 79555), (47, 103823, 103871)]

def row049_layer005_block000 : List ColouredInterval :=
  [(2, 77824, 77872), (2, 81920, 81968), (2, 86016, 86064), (2, 90112, 90160), (2, 94208, 94256), (2, 98304, 98352), (2, 102400, 102448), (2, 106496, 106544), (2, 110592, 110640), (2, 114688, 114736), (2, 118784, 118832), (2, 122880, 122928), (2, 126976, 127024), (2, 81920, 81968), (2, 90112, 90160), (2, 98304, 98352)]

def row049_layer005_block001 : List ColouredInterval :=
  [(2, 106496, 106544), (2, 114688, 114736), (2, 122880, 122928), (2, 131072, 131120), (2, 139264, 139312), (2, 147456, 147504), (2, 81920, 81968), (2, 98304, 98352), (2, 114688, 114736), (2, 131072, 131120), (2, 147456, 147504), (2, 98304, 98352), (2, 131072, 131120), (2, 131072, 131120), (2, 131072, 131120), (3, 78732, 78780)]

def row049_layer005_block002 : List ColouredInterval :=
  [(3, 85293, 85341), (3, 91854, 91902), (3, 98415, 98463), (3, 104976, 105024), (3, 111537, 111585), (3, 118098, 118146), (3, 124659, 124707), (3, 131220, 131268), (3, 137781, 137829), (3, 144342, 144390), (3, 78732, 78780), (3, 98415, 98463), (3, 118098, 118146), (3, 137781, 137829), (3, 118098, 118146), (5, 78125, 78173)]

def row049_layer005_block003 : List ColouredInterval :=
  [(5, 81250, 81298), (5, 84375, 84423), (5, 87500, 87548), (5, 90625, 90673), (5, 93750, 93798), (5, 96875, 96923), (5, 78125, 78173), (5, 93750, 93798), (5, 109375, 109423), (5, 125000, 125048), (5, 140625, 140673), (5, 78125, 78173), (11, 87846, 87894), (11, 102487, 102535), (11, 117128, 117176), (11, 131769, 131817)]

def row049_layer005_block004 : List ColouredInterval :=
  [(11, 146410, 146458), (13, 85683, 85731), (13, 114244, 114292), (13, 142805, 142853), (17, 78608, 78656), (17, 83521, 83569), (17, 88434, 88482), (17, 93347, 93395), (17, 98260, 98308), (17, 103173, 103221), (17, 108086, 108134), (17, 112999, 113047), (17, 117912, 117960), (17, 122825, 122873), (17, 127738, 127786), (17, 132651, 132699)]

def row049_layer005_block005 : List ColouredInterval :=
  [(17, 137564, 137612), (17, 142477, 142525), (17, 147390, 147438), (17, 83521, 83569), (19, 75449, 75497), (19, 82308, 82356), (19, 89167, 89215), (19, 96026, 96074), (19, 102885, 102933), (19, 109744, 109792), (19, 116603, 116651), (19, 123462, 123510), (19, 130321, 130369), (19, 137180, 137228), (19, 144039, 144087), (19, 130321, 130369)]

def row049_layer005_block006 : List ColouredInterval :=
  [(23, 85169, 85217), (23, 97336, 97384), (23, 109503, 109551), (23, 121670, 121718), (23, 133837, 133885), (23, 146004, 146052), (29, 97556, 97604), (29, 121945, 121993), (29, 146334, 146382), (31, 89373, 89421), (31, 119164, 119212), (31, 148955, 149003), (37, 101306, 101354), (41, 137842, 137890), (43, 79507, 79555), (47, 103823, 103871)]

def row049_layer005_chunks : List (List ColouredInterval) :=
  [row049_layer005_block000, row049_layer005_block001, row049_layer005_block002, row049_layer005_block003, row049_layer005_block004, row049_layer005_block005, row049_layer005_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_arithmetic : LayerArithmeticValid row049.height { lower := 75264, upper := 150528, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_enumeration :
    activePowerIntervalList 49 31 75264 150528 = row049_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs000 :
    row049_layer005_block000.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs001 :
    row049_layer005_block001.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs002 :
    row049_layer005_block002.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs003 :
    row049_layer005_block003.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs004 :
    row049_layer005_block004.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs005 :
    row049_layer005_block005.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs006 :
    row049_layer005_block006.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_chunks_eq : row049_layer005_chunks.flatten = row049_layer005_intervals := by
  rfl

theorem row049_layer005_pairs : pairCoverCheck row049_layer005_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer005_chunks_eq
  intro block hblock
  simp only [row049_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer005_pairs000
  · exact row049_layer005_pairs001
  · exact row049_layer005_pairs002
  · exact row049_layer005_pairs003
  · exact row049_layer005_pairs004
  · exact row049_layer005_pairs005
  · exact row049_layer005_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_checked :
    coverLayerCheck row049.height row049.goods { lower := 75264, upper := 150528, M := 31 } = true := by
  exact coverLayerCheck_of_parts row049_layer005_arithmetic row049_layer005_enumeration row049_bounds_eq row049_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer006_intervals : List ColouredInterval :=
  [(2, 155648, 155696), (2, 163840, 163888), (2, 172032, 172080), (2, 180224, 180272), (2, 188416, 188464), (2, 196608, 196656), (2, 204800, 204848), (2, 212992, 213040), (2, 221184, 221232), (2, 229376, 229424), (2, 237568, 237616), (2, 245760, 245808), (2, 163840, 163888), (2, 180224, 180272), (2, 196608, 196656), (2, 212992, 213040), (2, 229376, 229424), (2, 245760, 245808), (2, 262144, 262192), (2, 278528, 278576), (2, 294912, 294960), (2, 163840, 163888), (2, 196608, 196656), (2, 229376, 229424), (2, 262144, 262192), (2, 294912, 294960), (2, 196608, 196656), (2, 262144, 262192), (2, 262144, 262192), (2, 262144, 262192), (3, 150903, 150951), (3, 157464, 157512), (3, 164025, 164073), (3, 170586, 170634), (3, 177147, 177195), (3, 183708, 183756), (3, 190269, 190317), (3, 196830, 196878), (3, 157464, 157512), (3, 177147, 177195), (3, 196830, 196878), (3, 216513, 216561), (3, 236196, 236244), (3, 255879, 255927), (3, 275562, 275610), (3, 295245, 295293), (3, 177147, 177195), (3, 236196, 236244), (3, 295245, 295293), (3, 177147, 177195), (5, 156250, 156298), (5, 171875, 171923), (5, 187500, 187548), (5, 203125, 203173), (5, 218750, 218798), (5, 234375, 234423), (5, 250000, 250048), (5, 265625, 265673), (5, 281250, 281298), (5, 296875, 296923), (5, 156250, 156298), (5, 234375, 234423), (11, 161051, 161099), (11, 175692, 175740), (11, 190333, 190381), (11, 204974, 205022), (11, 219615, 219663), (11, 234256, 234304), (11, 248897, 248945), (11, 263538, 263586), (11, 278179, 278227), (11, 292820, 292868), (11, 161051, 161099), (13, 171366, 171414), (13, 199927, 199975), (13, 228488, 228536), (13, 257049, 257097), (13, 285610, 285658), (17, 167042, 167090), (17, 250563, 250611), (19, 150898, 150946), (19, 157757, 157805), (19, 164616, 164664), (19, 171475, 171523), (19, 178334, 178382), (19, 185193, 185241), (19, 192052, 192100), (19, 198911, 198959), (19, 205770, 205818), (19, 260642, 260690), (23, 158171, 158219), (23, 170338, 170386), (23, 182505, 182553), (23, 194672, 194720), (23, 206839, 206887), (23, 219006, 219054), (23, 231173, 231221), (23, 243340, 243388), (23, 255507, 255555), (23, 267674, 267722), (23, 279841, 279889), (23, 292008, 292056), (23, 279841, 279889), (29, 170723, 170771), (29, 195112, 195160), (29, 219501, 219549), (29, 243890, 243938), (29, 268279, 268327), (29, 292668, 292716), (31, 178746, 178794), (31, 208537, 208585), (31, 238328, 238376), (31, 268119, 268167), (31, 297910, 297958), (37, 151959, 152007), (37, 202612, 202660), (37, 253265, 253313), (41, 206763, 206811), (41, 275684, 275732), (43, 159014, 159062), (43, 238521, 238569), (47, 207646, 207694)]

def row049_layer006_block000 : List ColouredInterval :=
  [(2, 155648, 155696), (2, 163840, 163888), (2, 172032, 172080), (2, 180224, 180272), (2, 188416, 188464), (2, 196608, 196656), (2, 204800, 204848), (2, 212992, 213040), (2, 221184, 221232), (2, 229376, 229424), (2, 237568, 237616), (2, 245760, 245808), (2, 163840, 163888), (2, 180224, 180272), (2, 196608, 196656), (2, 212992, 213040)]

def row049_layer006_block001 : List ColouredInterval :=
  [(2, 229376, 229424), (2, 245760, 245808), (2, 262144, 262192), (2, 278528, 278576), (2, 294912, 294960), (2, 163840, 163888), (2, 196608, 196656), (2, 229376, 229424), (2, 262144, 262192), (2, 294912, 294960), (2, 196608, 196656), (2, 262144, 262192), (2, 262144, 262192), (2, 262144, 262192), (3, 150903, 150951), (3, 157464, 157512)]

def row049_layer006_block002 : List ColouredInterval :=
  [(3, 164025, 164073), (3, 170586, 170634), (3, 177147, 177195), (3, 183708, 183756), (3, 190269, 190317), (3, 196830, 196878), (3, 157464, 157512), (3, 177147, 177195), (3, 196830, 196878), (3, 216513, 216561), (3, 236196, 236244), (3, 255879, 255927), (3, 275562, 275610), (3, 295245, 295293), (3, 177147, 177195), (3, 236196, 236244)]

def row049_layer006_block003 : List ColouredInterval :=
  [(3, 295245, 295293), (3, 177147, 177195), (5, 156250, 156298), (5, 171875, 171923), (5, 187500, 187548), (5, 203125, 203173), (5, 218750, 218798), (5, 234375, 234423), (5, 250000, 250048), (5, 265625, 265673), (5, 281250, 281298), (5, 296875, 296923), (5, 156250, 156298), (5, 234375, 234423), (11, 161051, 161099), (11, 175692, 175740)]

def row049_layer006_block004 : List ColouredInterval :=
  [(11, 190333, 190381), (11, 204974, 205022), (11, 219615, 219663), (11, 234256, 234304), (11, 248897, 248945), (11, 263538, 263586), (11, 278179, 278227), (11, 292820, 292868), (11, 161051, 161099), (13, 171366, 171414), (13, 199927, 199975), (13, 228488, 228536), (13, 257049, 257097), (13, 285610, 285658), (17, 167042, 167090), (17, 250563, 250611)]

def row049_layer006_block005 : List ColouredInterval :=
  [(19, 150898, 150946), (19, 157757, 157805), (19, 164616, 164664), (19, 171475, 171523), (19, 178334, 178382), (19, 185193, 185241), (19, 192052, 192100), (19, 198911, 198959), (19, 205770, 205818), (19, 260642, 260690), (23, 158171, 158219), (23, 170338, 170386), (23, 182505, 182553), (23, 194672, 194720), (23, 206839, 206887), (23, 219006, 219054)]

def row049_layer006_block006 : List ColouredInterval :=
  [(23, 231173, 231221), (23, 243340, 243388), (23, 255507, 255555), (23, 267674, 267722), (23, 279841, 279889), (23, 292008, 292056), (23, 279841, 279889), (29, 170723, 170771), (29, 195112, 195160), (29, 219501, 219549), (29, 243890, 243938), (29, 268279, 268327), (29, 292668, 292716), (31, 178746, 178794), (31, 208537, 208585), (31, 238328, 238376)]

def row049_layer006_block007 : List ColouredInterval :=
  [(31, 268119, 268167), (31, 297910, 297958), (37, 151959, 152007), (37, 202612, 202660), (37, 253265, 253313), (41, 206763, 206811), (41, 275684, 275732), (43, 159014, 159062), (43, 238521, 238569), (47, 207646, 207694)]

def row049_layer006_chunks : List (List ColouredInterval) :=
  [row049_layer006_block000, row049_layer006_block001, row049_layer006_block002, row049_layer006_block003, row049_layer006_block004, row049_layer006_block005, row049_layer006_block006, row049_layer006_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_arithmetic : LayerArithmeticValid row049.height { lower := 150528, upper := 301056, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_enumeration :
    activePowerIntervalList 49 30 150528 301056 = row049_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs000 :
    row049_layer006_block000.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs001 :
    row049_layer006_block001.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs002 :
    row049_layer006_block002.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs003 :
    row049_layer006_block003.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs004 :
    row049_layer006_block004.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs005 :
    row049_layer006_block005.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs006 :
    row049_layer006_block006.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs007 :
    row049_layer006_block007.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_chunks_eq : row049_layer006_chunks.flatten = row049_layer006_intervals := by
  rfl

theorem row049_layer006_pairs : pairCoverCheck row049_layer006_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer006_chunks_eq
  intro block hblock
  simp only [row049_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer006_pairs000
  · exact row049_layer006_pairs001
  · exact row049_layer006_pairs002
  · exact row049_layer006_pairs003
  · exact row049_layer006_pairs004
  · exact row049_layer006_pairs005
  · exact row049_layer006_pairs006
  · exact row049_layer006_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_checked :
    coverLayerCheck row049.height row049.goods { lower := 150528, upper := 301056, M := 30 } = true := by
  exact coverLayerCheck_of_parts row049_layer006_arithmetic row049_layer006_enumeration row049_bounds_eq row049_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer007_intervals : List ColouredInterval :=
  [(2, 311296, 311344), (2, 327680, 327728), (2, 344064, 344112), (2, 360448, 360496), (2, 376832, 376880), (2, 393216, 393264), (2, 409600, 409648), (2, 425984, 426032), (2, 442368, 442416), (2, 458752, 458800), (2, 475136, 475184), (2, 327680, 327728), (2, 360448, 360496), (2, 393216, 393264), (2, 425984, 426032), (2, 458752, 458800), (2, 491520, 491568), (2, 524288, 524336), (2, 557056, 557104), (2, 589824, 589872), (2, 327680, 327728), (2, 393216, 393264), (2, 458752, 458800), (2, 524288, 524336), (2, 589824, 589872), (2, 393216, 393264), (2, 524288, 524336), (2, 524288, 524336), (2, 524288, 524336), (3, 314928, 314976), (3, 334611, 334659), (3, 354294, 354342), (3, 373977, 374025), (3, 393660, 393708), (3, 413343, 413391), (3, 433026, 433074), (3, 452709, 452757), (3, 472392, 472440), (3, 492075, 492123), (3, 511758, 511806), (3, 531441, 531489), (3, 551124, 551172), (3, 570807, 570855), (3, 354294, 354342), (3, 413343, 413391), (3, 472392, 472440), (3, 531441, 531489), (3, 590490, 590538), (3, 354294, 354342), (3, 531441, 531489), (3, 531441, 531489), (5, 312500, 312548), (5, 328125, 328173), (5, 343750, 343798), (5, 359375, 359423), (5, 375000, 375048), (5, 390625, 390673), (5, 406250, 406298), (5, 421875, 421923), (5, 437500, 437548), (5, 453125, 453173), (5, 312500, 312548), (5, 390625, 390673), (5, 468750, 468798), (5, 546875, 546923), (5, 390625, 390673), (11, 307461, 307509), (11, 322102, 322150), (11, 336743, 336791), (11, 351384, 351432), (11, 366025, 366073), (11, 380666, 380714), (11, 395307, 395355), (11, 409948, 409996), (11, 424589, 424637), (11, 322102, 322150), (11, 483153, 483201), (13, 314171, 314219), (13, 342732, 342780), (13, 371293, 371341), (13, 399854, 399902), (13, 428415, 428463), (13, 456976, 457024), (13, 485537, 485585), (13, 514098, 514146), (13, 542659, 542707), (13, 571220, 571268), (13, 599781, 599829), (13, 371293, 371341), (17, 334084, 334132), (17, 417605, 417653), (17, 501126, 501174), (17, 584647, 584695), (19, 390963, 391011), (19, 521284, 521332), (23, 304175, 304223), (23, 316342, 316390), (23, 328509, 328557), (23, 340676, 340724), (23, 352843, 352891), (23, 559682, 559730), (29, 317057, 317105), (29, 341446, 341494), (29, 365835, 365883), (29, 390224, 390272), (29, 414613, 414661), (29, 439002, 439050), (29, 463391, 463439), (29, 487780, 487828), (29, 512169, 512217), (29, 536558, 536606), (29, 560947, 560995), (29, 585336, 585384), (31, 327701, 327749), (31, 357492, 357540), (31, 387283, 387331), (31, 417074, 417122), (31, 446865, 446913), (31, 476656, 476704), (31, 506447, 506495), (31, 536238, 536286), (31, 566029, 566077), (31, 595820, 595868), (37, 303918, 303966), (37, 354571, 354619), (37, 405224, 405272), (37, 455877, 455925), (37, 506530, 506578), (37, 557183, 557231), (41, 344605, 344653), (41, 413526, 413574), (41, 482447, 482495), (41, 551368, 551416), (43, 318028, 318076), (43, 397535, 397583), (43, 477042, 477090), (43, 556549, 556597), (47, 311469, 311517), (47, 415292, 415340), (47, 519115, 519163)]

def row049_layer007_block000 : List ColouredInterval :=
  [(2, 311296, 311344), (2, 327680, 327728), (2, 344064, 344112), (2, 360448, 360496), (2, 376832, 376880), (2, 393216, 393264), (2, 409600, 409648), (2, 425984, 426032), (2, 442368, 442416), (2, 458752, 458800), (2, 475136, 475184), (2, 327680, 327728), (2, 360448, 360496), (2, 393216, 393264)]

def row049_layer007_block001 : List ColouredInterval :=
  [(2, 425984, 426032), (2, 458752, 458800), (2, 491520, 491568), (2, 524288, 524336), (2, 557056, 557104), (2, 589824, 589872), (2, 327680, 327728), (2, 393216, 393264), (2, 458752, 458800), (2, 524288, 524336), (2, 589824, 589872), (2, 393216, 393264), (2, 524288, 524336), (2, 524288, 524336)]

def row049_layer007_block002 : List ColouredInterval :=
  [(2, 524288, 524336), (3, 314928, 314976), (3, 334611, 334659), (3, 354294, 354342), (3, 373977, 374025), (3, 393660, 393708), (3, 413343, 413391), (3, 433026, 433074), (3, 452709, 452757), (3, 472392, 472440), (3, 492075, 492123), (3, 511758, 511806), (3, 531441, 531489), (3, 551124, 551172)]

def row049_layer007_block003 : List ColouredInterval :=
  [(3, 570807, 570855), (3, 354294, 354342), (3, 413343, 413391), (3, 472392, 472440), (3, 531441, 531489), (3, 590490, 590538), (3, 354294, 354342), (3, 531441, 531489), (3, 531441, 531489), (5, 312500, 312548), (5, 328125, 328173), (5, 343750, 343798), (5, 359375, 359423), (5, 375000, 375048)]

def row049_layer007_block004 : List ColouredInterval :=
  [(5, 390625, 390673), (5, 406250, 406298), (5, 421875, 421923), (5, 437500, 437548), (5, 453125, 453173), (5, 312500, 312548), (5, 390625, 390673), (5, 468750, 468798), (5, 546875, 546923), (5, 390625, 390673), (11, 307461, 307509), (11, 322102, 322150), (11, 336743, 336791), (11, 351384, 351432)]

def row049_layer007_block005 : List ColouredInterval :=
  [(11, 366025, 366073), (11, 380666, 380714), (11, 395307, 395355), (11, 409948, 409996), (11, 424589, 424637), (11, 322102, 322150), (11, 483153, 483201), (13, 314171, 314219), (13, 342732, 342780), (13, 371293, 371341), (13, 399854, 399902), (13, 428415, 428463), (13, 456976, 457024), (13, 485537, 485585)]

def row049_layer007_block006 : List ColouredInterval :=
  [(13, 514098, 514146), (13, 542659, 542707), (13, 571220, 571268), (13, 599781, 599829), (13, 371293, 371341), (17, 334084, 334132), (17, 417605, 417653), (17, 501126, 501174), (17, 584647, 584695), (19, 390963, 391011), (19, 521284, 521332), (23, 304175, 304223), (23, 316342, 316390), (23, 328509, 328557)]

def row049_layer007_block007 : List ColouredInterval :=
  [(23, 340676, 340724), (23, 352843, 352891), (23, 559682, 559730), (29, 317057, 317105), (29, 341446, 341494), (29, 365835, 365883), (29, 390224, 390272), (29, 414613, 414661), (29, 439002, 439050), (29, 463391, 463439), (29, 487780, 487828), (29, 512169, 512217), (29, 536558, 536606), (29, 560947, 560995)]

def row049_layer007_block008 : List ColouredInterval :=
  [(29, 585336, 585384), (31, 327701, 327749), (31, 357492, 357540), (31, 387283, 387331), (31, 417074, 417122), (31, 446865, 446913), (31, 476656, 476704), (31, 506447, 506495), (31, 536238, 536286), (31, 566029, 566077), (31, 595820, 595868), (37, 303918, 303966), (37, 354571, 354619), (37, 405224, 405272)]

def row049_layer007_block009 : List ColouredInterval :=
  [(37, 455877, 455925), (37, 506530, 506578), (37, 557183, 557231), (41, 344605, 344653), (41, 413526, 413574), (41, 482447, 482495), (41, 551368, 551416), (43, 318028, 318076), (43, 397535, 397583), (43, 477042, 477090), (43, 556549, 556597), (47, 311469, 311517), (47, 415292, 415340), (47, 519115, 519163)]

def row049_layer007_chunks : List (List ColouredInterval) :=
  [row049_layer007_block000, row049_layer007_block001, row049_layer007_block002, row049_layer007_block003, row049_layer007_block004, row049_layer007_block005, row049_layer007_block006, row049_layer007_block007, row049_layer007_block008, row049_layer007_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_arithmetic : LayerArithmeticValid row049.height { lower := 301056, upper := 602112, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_enumeration :
    activePowerIntervalList 49 29 301056 602112 = row049_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs000 :
    row049_layer007_block000.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs001 :
    row049_layer007_block001.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs002 :
    row049_layer007_block002.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs003 :
    row049_layer007_block003.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs004 :
    row049_layer007_block004.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs005 :
    row049_layer007_block005.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs006 :
    row049_layer007_block006.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs007 :
    row049_layer007_block007.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs008 :
    row049_layer007_block008.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs009 :
    row049_layer007_block009.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_chunks_eq : row049_layer007_chunks.flatten = row049_layer007_intervals := by
  rfl

theorem row049_layer007_pairs : pairCoverCheck row049_layer007_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer007_chunks_eq
  intro block hblock
  simp only [row049_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer007_pairs000
  · exact row049_layer007_pairs001
  · exact row049_layer007_pairs002
  · exact row049_layer007_pairs003
  · exact row049_layer007_pairs004
  · exact row049_layer007_pairs005
  · exact row049_layer007_pairs006
  · exact row049_layer007_pairs007
  · exact row049_layer007_pairs008
  · exact row049_layer007_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_checked :
    coverLayerCheck row049.height row049.goods { lower := 301056, upper := 602112, M := 29 } = true := by
  exact coverLayerCheck_of_parts row049_layer007_arithmetic row049_layer007_enumeration row049_bounds_eq row049_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer008_intervals : List ColouredInterval :=
  [(2, 622592, 622640), (2, 655360, 655408), (2, 688128, 688176), (2, 720896, 720944), (2, 753664, 753712), (2, 786432, 786480), (2, 819200, 819248), (2, 851968, 852016), (2, 884736, 884784), (2, 655360, 655408), (2, 720896, 720944), (2, 786432, 786480), (2, 851968, 852016), (2, 917504, 917552), (2, 983040, 983088), (2, 1048576, 1048624), (2, 1114112, 1114160), (2, 1179648, 1179696), (2, 655360, 655408), (2, 786432, 786480), (2, 917504, 917552), (2, 1048576, 1048624), (2, 1179648, 1179696), (2, 786432, 786480), (2, 1048576, 1048624), (2, 1048576, 1048624), (2, 1048576, 1048624), (3, 649539, 649587), (3, 708588, 708636), (3, 767637, 767685), (3, 826686, 826734), (3, 885735, 885783), (3, 944784, 944832), (3, 1003833, 1003881), (3, 1062882, 1062930), (3, 1121931, 1121979), (3, 1180980, 1181028), (3, 708588, 708636), (3, 885735, 885783), (3, 1062882, 1062930), (3, 1062882, 1062930), (5, 625000, 625048), (5, 703125, 703173), (5, 781250, 781298), (5, 859375, 859423), (5, 937500, 937548), (5, 1015625, 1015673), (5, 1093750, 1093798), (5, 1171875, 1171923), (5, 781250, 781298), (5, 1171875, 1171923), (11, 644204, 644252), (11, 805255, 805303), (11, 966306, 966354), (11, 1127357, 1127405), (13, 628342, 628390), (13, 656903, 656951), (13, 685464, 685512), (13, 714025, 714073), (13, 742586, 742634), (13, 771147, 771195), (13, 742586, 742634), (13, 1113879, 1113927), (17, 668168, 668216), (17, 751689, 751737), (17, 835210, 835258), (17, 918731, 918779), (17, 1002252, 1002300), (17, 1085773, 1085821), (17, 1169294, 1169342), (19, 651605, 651653), (19, 781926, 781974), (19, 912247, 912295), (19, 1042568, 1042616), (19, 1172889, 1172937), (23, 839523, 839571), (23, 1119364, 1119412), (29, 609725, 609773), (29, 634114, 634162), (29, 658503, 658551), (29, 707281, 707329), (31, 625611, 625659), (31, 655402, 655450), (31, 685193, 685241), (31, 714984, 715032), (31, 744775, 744823), (31, 774566, 774614), (31, 804357, 804405), (31, 923521, 923569), (37, 607836, 607884), (37, 658489, 658537), (37, 709142, 709190), (37, 759795, 759843), (37, 810448, 810496), (37, 861101, 861149), (37, 911754, 911802), (37, 962407, 962455), (37, 1013060, 1013108), (37, 1063713, 1063761), (37, 1114366, 1114414), (37, 1165019, 1165067), (41, 620289, 620337), (41, 689210, 689258), (41, 758131, 758179), (41, 827052, 827100), (41, 895973, 896021), (41, 964894, 964942), (41, 1033815, 1033863), (41, 1102736, 1102784), (41, 1171657, 1171705), (43, 636056, 636104), (43, 715563, 715611), (43, 795070, 795118), (43, 874577, 874625), (43, 954084, 954132), (43, 1033591, 1033639), (43, 1113098, 1113146), (43, 1192605, 1192653), (47, 622938, 622986), (47, 726761, 726809), (47, 830584, 830632), (47, 934407, 934455), (47, 1038230, 1038278), (47, 1142053, 1142101)]

def row049_layer008_block000 : List ColouredInterval :=
  [(2, 622592, 622640), (2, 655360, 655408), (2, 688128, 688176), (2, 720896, 720944), (2, 753664, 753712), (2, 786432, 786480), (2, 819200, 819248), (2, 851968, 852016), (2, 884736, 884784), (2, 655360, 655408), (2, 720896, 720944), (2, 786432, 786480), (2, 851968, 852016), (2, 917504, 917552), (2, 983040, 983088), (2, 1048576, 1048624)]

def row049_layer008_block001 : List ColouredInterval :=
  [(2, 1114112, 1114160), (2, 1179648, 1179696), (2, 655360, 655408), (2, 786432, 786480), (2, 917504, 917552), (2, 1048576, 1048624), (2, 1179648, 1179696), (2, 786432, 786480), (2, 1048576, 1048624), (2, 1048576, 1048624), (2, 1048576, 1048624), (3, 649539, 649587), (3, 708588, 708636), (3, 767637, 767685), (3, 826686, 826734), (3, 885735, 885783)]

def row049_layer008_block002 : List ColouredInterval :=
  [(3, 944784, 944832), (3, 1003833, 1003881), (3, 1062882, 1062930), (3, 1121931, 1121979), (3, 1180980, 1181028), (3, 708588, 708636), (3, 885735, 885783), (3, 1062882, 1062930), (3, 1062882, 1062930), (5, 625000, 625048), (5, 703125, 703173), (5, 781250, 781298), (5, 859375, 859423), (5, 937500, 937548), (5, 1015625, 1015673), (5, 1093750, 1093798)]

def row049_layer008_block003 : List ColouredInterval :=
  [(5, 1171875, 1171923), (5, 781250, 781298), (5, 1171875, 1171923), (11, 644204, 644252), (11, 805255, 805303), (11, 966306, 966354), (11, 1127357, 1127405), (13, 628342, 628390), (13, 656903, 656951), (13, 685464, 685512), (13, 714025, 714073), (13, 742586, 742634), (13, 771147, 771195), (13, 742586, 742634), (13, 1113879, 1113927), (17, 668168, 668216)]

def row049_layer008_block004 : List ColouredInterval :=
  [(17, 751689, 751737), (17, 835210, 835258), (17, 918731, 918779), (17, 1002252, 1002300), (17, 1085773, 1085821), (17, 1169294, 1169342), (19, 651605, 651653), (19, 781926, 781974), (19, 912247, 912295), (19, 1042568, 1042616), (19, 1172889, 1172937), (23, 839523, 839571), (23, 1119364, 1119412), (29, 609725, 609773), (29, 634114, 634162), (29, 658503, 658551)]

def row049_layer008_block005 : List ColouredInterval :=
  [(29, 707281, 707329), (31, 625611, 625659), (31, 655402, 655450), (31, 685193, 685241), (31, 714984, 715032), (31, 744775, 744823), (31, 774566, 774614), (31, 804357, 804405), (31, 923521, 923569), (37, 607836, 607884), (37, 658489, 658537), (37, 709142, 709190), (37, 759795, 759843), (37, 810448, 810496), (37, 861101, 861149), (37, 911754, 911802)]

def row049_layer008_block006 : List ColouredInterval :=
  [(37, 962407, 962455), (37, 1013060, 1013108), (37, 1063713, 1063761), (37, 1114366, 1114414), (37, 1165019, 1165067), (41, 620289, 620337), (41, 689210, 689258), (41, 758131, 758179), (41, 827052, 827100), (41, 895973, 896021), (41, 964894, 964942), (41, 1033815, 1033863), (41, 1102736, 1102784), (41, 1171657, 1171705), (43, 636056, 636104), (43, 715563, 715611)]

def row049_layer008_block007 : List ColouredInterval :=
  [(43, 795070, 795118), (43, 874577, 874625), (43, 954084, 954132), (43, 1033591, 1033639), (43, 1113098, 1113146), (43, 1192605, 1192653), (47, 622938, 622986), (47, 726761, 726809), (47, 830584, 830632), (47, 934407, 934455), (47, 1038230, 1038278), (47, 1142053, 1142101)]

def row049_layer008_chunks : List (List ColouredInterval) :=
  [row049_layer008_block000, row049_layer008_block001, row049_layer008_block002, row049_layer008_block003, row049_layer008_block004, row049_layer008_block005, row049_layer008_block006, row049_layer008_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_arithmetic : LayerArithmeticValid row049.height { lower := 602112, upper := 1204224, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_enumeration :
    activePowerIntervalList 49 27 602112 1204224 = row049_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs000 :
    row049_layer008_block000.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs001 :
    row049_layer008_block001.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs002 :
    row049_layer008_block002.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs003 :
    row049_layer008_block003.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs004 :
    row049_layer008_block004.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs005 :
    row049_layer008_block005.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs006 :
    row049_layer008_block006.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs007 :
    row049_layer008_block007.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_chunks_eq : row049_layer008_chunks.flatten = row049_layer008_intervals := by
  rfl

theorem row049_layer008_pairs : pairCoverCheck row049_layer008_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer008_chunks_eq
  intro block hblock
  simp only [row049_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer008_pairs000
  · exact row049_layer008_pairs001
  · exact row049_layer008_pairs002
  · exact row049_layer008_pairs003
  · exact row049_layer008_pairs004
  · exact row049_layer008_pairs005
  · exact row049_layer008_pairs006
  · exact row049_layer008_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_checked :
    coverLayerCheck row049.height row049.goods { lower := 602112, upper := 1204224, M := 27 } = true := by
  exact coverLayerCheck_of_parts row049_layer008_arithmetic row049_layer008_enumeration row049_bounds_eq row049_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer009_intervals : List ColouredInterval :=
  [(2, 1245184, 1245232), (2, 1310720, 1310768), (2, 1376256, 1376304), (2, 1441792, 1441840), (2, 1507328, 1507376), (2, 1572864, 1572912), (2, 1638400, 1638448), (2, 1703936, 1703984), (2, 1310720, 1310768), (2, 1441792, 1441840), (2, 1572864, 1572912), (2, 1703936, 1703984), (2, 1835008, 1835056), (2, 1966080, 1966128), (2, 2097152, 2097200), (2, 2228224, 2228272), (2, 2359296, 2359344), (2, 1310720, 1310768), (2, 1572864, 1572912), (2, 1835008, 1835056), (2, 2097152, 2097200), (2, 2359296, 2359344), (2, 1572864, 1572912), (2, 2097152, 2097200), (2, 2097152, 2097200), (2, 2097152, 2097200), (3, 1240029, 1240077), (3, 1299078, 1299126), (3, 1358127, 1358175), (3, 1417176, 1417224), (3, 1476225, 1476273), (3, 1535274, 1535322), (3, 1240029, 1240077), (3, 1417176, 1417224), (3, 1594323, 1594371), (3, 1771470, 1771518), (3, 1948617, 1948665), (3, 2125764, 2125812), (3, 2302911, 2302959), (3, 1594323, 1594371), (3, 2125764, 2125812), (3, 1594323, 1594371), (5, 1250000, 1250048), (5, 1328125, 1328173), (5, 1406250, 1406298), (5, 1484375, 1484423), (5, 1562500, 1562548), (5, 1640625, 1640673), (5, 1718750, 1718798), (5, 1796875, 1796923), (5, 1875000, 1875048), (5, 1953125, 1953173), (5, 2031250, 2031298), (5, 1562500, 1562548), (5, 1953125, 1953173), (5, 2343750, 2343798), (5, 1953125, 1953173), (11, 1288408, 1288456), (11, 1449459, 1449507), (11, 1610510, 1610558), (11, 1771561, 1771609), (11, 1932612, 1932660), (11, 2093663, 2093711), (11, 2254714, 2254762), (11, 1771561, 1771609), (13, 1485172, 1485220), (13, 1856465, 1856513), (13, 2227758, 2227806), (17, 1252815, 1252863), (17, 1336336, 1336384), (17, 1419857, 1419905), (17, 1503378, 1503426), (17, 1586899, 1586947), (17, 1670420, 1670468), (17, 1753941, 1753989), (17, 1837462, 1837510), (17, 1920983, 1921031), (17, 2004504, 2004552), (17, 2088025, 2088073), (17, 2171546, 2171594), (17, 1419857, 1419905), (19, 1303210, 1303258), (19, 1433531, 1433579), (19, 1563852, 1563900), (19, 1694173, 1694221), (19, 1824494, 1824542), (19, 1954815, 1954863), (19, 2085136, 2085184), (19, 2215457, 2215505), (19, 2345778, 2345826), (23, 1399205, 1399253), (23, 1679046, 1679094), (23, 1958887, 1958935), (23, 2238728, 2238776), (29, 1414562, 1414610), (29, 2121843, 2121891), (31, 1847042, 1847090), (37, 1215672, 1215720), (37, 1266325, 1266373), (37, 1316978, 1317026), (37, 1874161, 1874209), (41, 1240578, 1240626), (41, 1309499, 1309547), (41, 1378420, 1378468), (41, 1447341, 1447389), (41, 1516262, 1516310), (41, 1585183, 1585231), (41, 1654104, 1654152), (41, 1723025, 1723073), (41, 1791946, 1791994), (43, 1272112, 1272160), (43, 1351619, 1351667), (43, 1431126, 1431174), (43, 1510633, 1510681), (43, 1590140, 1590188), (43, 1669647, 1669695), (43, 1749154, 1749202), (43, 1828661, 1828709), (43, 1908168, 1908216), (43, 1987675, 1987723), (43, 2067182, 2067230), (47, 1245876, 1245924), (47, 1349699, 1349747), (47, 1453522, 1453570), (47, 1557345, 1557393), (47, 1661168, 1661216), (47, 1764991, 1765039), (47, 1868814, 1868862), (47, 1972637, 1972685), (47, 2076460, 2076508), (47, 2180283, 2180331), (47, 2284106, 2284154), (47, 2387929, 2387977)]

def row049_layer009_block000 : List ColouredInterval :=
  [(2, 1245184, 1245232), (2, 1310720, 1310768), (2, 1376256, 1376304), (2, 1441792, 1441840), (2, 1507328, 1507376), (2, 1572864, 1572912), (2, 1638400, 1638448), (2, 1703936, 1703984), (2, 1310720, 1310768), (2, 1441792, 1441840), (2, 1572864, 1572912), (2, 1703936, 1703984), (2, 1835008, 1835056), (2, 1966080, 1966128), (2, 2097152, 2097200)]

def row049_layer009_block001 : List ColouredInterval :=
  [(2, 2228224, 2228272), (2, 2359296, 2359344), (2, 1310720, 1310768), (2, 1572864, 1572912), (2, 1835008, 1835056), (2, 2097152, 2097200), (2, 2359296, 2359344), (2, 1572864, 1572912), (2, 2097152, 2097200), (2, 2097152, 2097200), (2, 2097152, 2097200), (3, 1240029, 1240077), (3, 1299078, 1299126), (3, 1358127, 1358175), (3, 1417176, 1417224)]

def row049_layer009_block002 : List ColouredInterval :=
  [(3, 1476225, 1476273), (3, 1535274, 1535322), (3, 1240029, 1240077), (3, 1417176, 1417224), (3, 1594323, 1594371), (3, 1771470, 1771518), (3, 1948617, 1948665), (3, 2125764, 2125812), (3, 2302911, 2302959), (3, 1594323, 1594371), (3, 2125764, 2125812), (3, 1594323, 1594371), (5, 1250000, 1250048), (5, 1328125, 1328173), (5, 1406250, 1406298)]

def row049_layer009_block003 : List ColouredInterval :=
  [(5, 1484375, 1484423), (5, 1562500, 1562548), (5, 1640625, 1640673), (5, 1718750, 1718798), (5, 1796875, 1796923), (5, 1875000, 1875048), (5, 1953125, 1953173), (5, 2031250, 2031298), (5, 1562500, 1562548), (5, 1953125, 1953173), (5, 2343750, 2343798), (5, 1953125, 1953173), (11, 1288408, 1288456), (11, 1449459, 1449507), (11, 1610510, 1610558)]

def row049_layer009_block004 : List ColouredInterval :=
  [(11, 1771561, 1771609), (11, 1932612, 1932660), (11, 2093663, 2093711), (11, 2254714, 2254762), (11, 1771561, 1771609), (13, 1485172, 1485220), (13, 1856465, 1856513), (13, 2227758, 2227806), (17, 1252815, 1252863), (17, 1336336, 1336384), (17, 1419857, 1419905), (17, 1503378, 1503426), (17, 1586899, 1586947), (17, 1670420, 1670468), (17, 1753941, 1753989)]

def row049_layer009_block005 : List ColouredInterval :=
  [(17, 1837462, 1837510), (17, 1920983, 1921031), (17, 2004504, 2004552), (17, 2088025, 2088073), (17, 2171546, 2171594), (17, 1419857, 1419905), (19, 1303210, 1303258), (19, 1433531, 1433579), (19, 1563852, 1563900), (19, 1694173, 1694221), (19, 1824494, 1824542), (19, 1954815, 1954863), (19, 2085136, 2085184), (19, 2215457, 2215505), (19, 2345778, 2345826)]

def row049_layer009_block006 : List ColouredInterval :=
  [(23, 1399205, 1399253), (23, 1679046, 1679094), (23, 1958887, 1958935), (23, 2238728, 2238776), (29, 1414562, 1414610), (29, 2121843, 2121891), (31, 1847042, 1847090), (37, 1215672, 1215720), (37, 1266325, 1266373), (37, 1316978, 1317026), (37, 1874161, 1874209), (41, 1240578, 1240626), (41, 1309499, 1309547), (41, 1378420, 1378468), (41, 1447341, 1447389)]

def row049_layer009_block007 : List ColouredInterval :=
  [(41, 1516262, 1516310), (41, 1585183, 1585231), (41, 1654104, 1654152), (41, 1723025, 1723073), (41, 1791946, 1791994), (43, 1272112, 1272160), (43, 1351619, 1351667), (43, 1431126, 1431174), (43, 1510633, 1510681), (43, 1590140, 1590188), (43, 1669647, 1669695), (43, 1749154, 1749202), (43, 1828661, 1828709), (43, 1908168, 1908216), (43, 1987675, 1987723)]

def row049_layer009_block008 : List ColouredInterval :=
  [(43, 2067182, 2067230), (47, 1245876, 1245924), (47, 1349699, 1349747), (47, 1453522, 1453570), (47, 1557345, 1557393), (47, 1661168, 1661216), (47, 1764991, 1765039), (47, 1868814, 1868862), (47, 1972637, 1972685), (47, 2076460, 2076508), (47, 2180283, 2180331), (47, 2284106, 2284154), (47, 2387929, 2387977)]

def row049_layer009_chunks : List (List ColouredInterval) :=
  [row049_layer009_block000, row049_layer009_block001, row049_layer009_block002, row049_layer009_block003, row049_layer009_block004, row049_layer009_block005, row049_layer009_block006, row049_layer009_block007, row049_layer009_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_arithmetic : LayerArithmeticValid row049.height { lower := 1204224, upper := 2408448, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_enumeration :
    activePowerIntervalList 49 26 1204224 2408448 = row049_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs000 :
    row049_layer009_block000.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs001 :
    row049_layer009_block001.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs002 :
    row049_layer009_block002.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs003 :
    row049_layer009_block003.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs004 :
    row049_layer009_block004.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs005 :
    row049_layer009_block005.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs006 :
    row049_layer009_block006.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs007 :
    row049_layer009_block007.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs008 :
    row049_layer009_block008.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_chunks_eq : row049_layer009_chunks.flatten = row049_layer009_intervals := by
  rfl

theorem row049_layer009_pairs : pairCoverCheck row049_layer009_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer009_chunks_eq
  intro block hblock
  simp only [row049_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer009_pairs000
  · exact row049_layer009_pairs001
  · exact row049_layer009_pairs002
  · exact row049_layer009_pairs003
  · exact row049_layer009_pairs004
  · exact row049_layer009_pairs005
  · exact row049_layer009_pairs006
  · exact row049_layer009_pairs007
  · exact row049_layer009_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_checked :
    coverLayerCheck row049.height row049.goods { lower := 1204224, upper := 2408448, M := 26 } = true := by
  exact coverLayerCheck_of_parts row049_layer009_arithmetic row049_layer009_enumeration row049_bounds_eq row049_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer010_intervals : List ColouredInterval :=
  [(2, 2490368, 2490416), (2, 2621440, 2621488), (2, 2752512, 2752560), (2, 2883584, 2883632), (2, 3014656, 3014704), (2, 3145728, 3145776), (2, 3276800, 3276848), (2, 2621440, 2621488), (2, 2883584, 2883632), (2, 3145728, 3145776), (2, 3407872, 3407920), (2, 3670016, 3670064), (2, 3932160, 3932208), (2, 4194304, 4194352), (2, 4456448, 4456496), (2, 4718592, 4718640), (2, 2621440, 2621488), (2, 3145728, 3145776), (2, 3670016, 3670064), (2, 4194304, 4194352), (2, 4718592, 4718640), (2, 3145728, 3145776), (2, 4194304, 4194352), (2, 4194304, 4194352), (2, 4194304, 4194352), (3, 2480058, 2480106), (3, 2657205, 2657253), (3, 2834352, 2834400), (3, 3011499, 3011547), (3, 3188646, 3188694), (3, 3365793, 3365841), (3, 3542940, 3542988), (3, 3720087, 3720135), (3, 3897234, 3897282), (3, 4074381, 4074429), (3, 4251528, 4251576), (3, 4428675, 4428723), (3, 2657205, 2657253), (3, 3188646, 3188694), (3, 3720087, 3720135), (3, 4251528, 4251576), (3, 4782969, 4783017), (3, 3188646, 3188694), (3, 4782969, 4783017), (3, 4782969, 4783017), (5, 2734375, 2734423), (5, 3125000, 3125048), (5, 3515625, 3515673), (5, 3906250, 3906298), (5, 4296875, 4296923), (5, 4687500, 4687548), (5, 3906250, 3906298), (11, 2415765, 2415813), (11, 2576816, 2576864), (11, 2737867, 2737915), (11, 2898918, 2898966), (11, 3059969, 3060017), (11, 3221020, 3221068), (11, 3382071, 3382119), (11, 3543122, 3543170), (11, 3704173, 3704221), (11, 3865224, 3865272), (11, 4026275, 4026323), (11, 3543122, 3543170), (13, 2599051, 2599099), (13, 2970344, 2970392), (13, 3341637, 3341685), (13, 3712930, 3712978), (13, 4084223, 4084271), (13, 4455516, 4455564), (17, 2839714, 2839762), (17, 4259571, 4259619), (19, 2476099, 2476147), (19, 2606420, 2606468), (19, 2736741, 2736789), (19, 2867062, 2867110), (19, 2997383, 2997431), (19, 3127704, 3127752), (19, 3258025, 3258073), (19, 2476099, 2476147), (23, 2518569, 2518617), (23, 2798410, 2798458), (23, 3078251, 3078299), (23, 3358092, 3358140), (23, 3637933, 3637981), (23, 3917774, 3917822), (23, 4197615, 4197663), (23, 4477456, 4477504), (23, 4757297, 4757345), (29, 2829124, 2829172), (29, 3536405, 3536453), (29, 4243686, 4243734), (31, 2770563, 2770611), (31, 3694084, 3694132), (31, 4617605, 4617653), (37, 3748322, 3748370), (41, 2825761, 2825809), (43, 3418801, 3418849), (47, 2491752, 2491800), (47, 2595575, 2595623)]

def row049_layer010_block000 : List ColouredInterval :=
  [(2, 2490368, 2490416), (2, 2621440, 2621488), (2, 2752512, 2752560), (2, 2883584, 2883632), (2, 3014656, 3014704), (2, 3145728, 3145776), (2, 3276800, 3276848), (2, 2621440, 2621488), (2, 2883584, 2883632), (2, 3145728, 3145776), (2, 3407872, 3407920), (2, 3670016, 3670064), (2, 3932160, 3932208), (2, 4194304, 4194352), (2, 4456448, 4456496), (2, 4718592, 4718640)]

def row049_layer010_block001 : List ColouredInterval :=
  [(2, 2621440, 2621488), (2, 3145728, 3145776), (2, 3670016, 3670064), (2, 4194304, 4194352), (2, 4718592, 4718640), (2, 3145728, 3145776), (2, 4194304, 4194352), (2, 4194304, 4194352), (2, 4194304, 4194352), (3, 2480058, 2480106), (3, 2657205, 2657253), (3, 2834352, 2834400), (3, 3011499, 3011547), (3, 3188646, 3188694), (3, 3365793, 3365841), (3, 3542940, 3542988)]

def row049_layer010_block002 : List ColouredInterval :=
  [(3, 3720087, 3720135), (3, 3897234, 3897282), (3, 4074381, 4074429), (3, 4251528, 4251576), (3, 4428675, 4428723), (3, 2657205, 2657253), (3, 3188646, 3188694), (3, 3720087, 3720135), (3, 4251528, 4251576), (3, 4782969, 4783017), (3, 3188646, 3188694), (3, 4782969, 4783017), (3, 4782969, 4783017), (5, 2734375, 2734423), (5, 3125000, 3125048), (5, 3515625, 3515673)]

def row049_layer010_block003 : List ColouredInterval :=
  [(5, 3906250, 3906298), (5, 4296875, 4296923), (5, 4687500, 4687548), (5, 3906250, 3906298), (11, 2415765, 2415813), (11, 2576816, 2576864), (11, 2737867, 2737915), (11, 2898918, 2898966), (11, 3059969, 3060017), (11, 3221020, 3221068), (11, 3382071, 3382119), (11, 3543122, 3543170), (11, 3704173, 3704221), (11, 3865224, 3865272), (11, 4026275, 4026323), (11, 3543122, 3543170)]

def row049_layer010_block004 : List ColouredInterval :=
  [(13, 2599051, 2599099), (13, 2970344, 2970392), (13, 3341637, 3341685), (13, 3712930, 3712978), (13, 4084223, 4084271), (13, 4455516, 4455564), (17, 2839714, 2839762), (17, 4259571, 4259619), (19, 2476099, 2476147), (19, 2606420, 2606468), (19, 2736741, 2736789), (19, 2867062, 2867110), (19, 2997383, 2997431), (19, 3127704, 3127752), (19, 3258025, 3258073), (19, 2476099, 2476147)]

def row049_layer010_block005 : List ColouredInterval :=
  [(23, 2518569, 2518617), (23, 2798410, 2798458), (23, 3078251, 3078299), (23, 3358092, 3358140), (23, 3637933, 3637981), (23, 3917774, 3917822), (23, 4197615, 4197663), (23, 4477456, 4477504), (23, 4757297, 4757345), (29, 2829124, 2829172), (29, 3536405, 3536453), (29, 4243686, 4243734), (31, 2770563, 2770611), (31, 3694084, 3694132), (31, 4617605, 4617653), (37, 3748322, 3748370)]

def row049_layer010_block006 : List ColouredInterval :=
  [(41, 2825761, 2825809), (43, 3418801, 3418849), (47, 2491752, 2491800), (47, 2595575, 2595623)]

def row049_layer010_chunks : List (List ColouredInterval) :=
  [row049_layer010_block000, row049_layer010_block001, row049_layer010_block002, row049_layer010_block003, row049_layer010_block004, row049_layer010_block005, row049_layer010_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_arithmetic : LayerArithmeticValid row049.height { lower := 2408448, upper := 4816896, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_enumeration :
    activePowerIntervalList 49 25 2408448 4816896 = row049_layer010_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs000 :
    row049_layer010_block000.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs001 :
    row049_layer010_block001.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs002 :
    row049_layer010_block002.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs003 :
    row049_layer010_block003.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs004 :
    row049_layer010_block004.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs005 :
    row049_layer010_block005.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs006 :
    row049_layer010_block006.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_chunks_eq : row049_layer010_chunks.flatten = row049_layer010_intervals := by
  rfl

theorem row049_layer010_pairs : pairCoverCheck row049_layer010_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer010_chunks_eq
  intro block hblock
  simp only [row049_layer010_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer010_pairs000
  · exact row049_layer010_pairs001
  · exact row049_layer010_pairs002
  · exact row049_layer010_pairs003
  · exact row049_layer010_pairs004
  · exact row049_layer010_pairs005
  · exact row049_layer010_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_checked :
    coverLayerCheck row049.height row049.goods { lower := 2408448, upper := 4816896, M := 25 } = true := by
  exact coverLayerCheck_of_parts row049_layer010_arithmetic row049_layer010_enumeration row049_bounds_eq row049_layer010_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer011_intervals : List ColouredInterval :=
  [(2, 4980736, 4980784), (2, 5242880, 5242928), (2, 5505024, 5505072), (2, 5767168, 5767216), (2, 6029312, 6029360), (2, 5242880, 5242928), (2, 5767168, 5767216), (2, 6291456, 6291504), (2, 6815744, 6815792), (2, 7340032, 7340080), (2, 7864320, 7864368), (2, 8388608, 8388656), (2, 8912896, 8912944), (2, 9437184, 9437232), (2, 5242880, 5242928), (2, 6291456, 6291504), (2, 7340032, 7340080), (2, 8388608, 8388656), (2, 9437184, 9437232), (2, 6291456, 6291504), (2, 8388608, 8388656), (2, 8388608, 8388656), (2, 8388608, 8388656), (3, 5314410, 5314458), (3, 5845851, 5845899), (3, 6377292, 6377340), (3, 6908733, 6908781), (3, 7440174, 7440222), (3, 7971615, 7971663), (3, 8503056, 8503104), (3, 9034497, 9034545), (3, 9565938, 9565986), (3, 6377292, 6377340), (3, 7971615, 7971663), (3, 9565938, 9565986), (3, 9565938, 9565986), (5, 5078125, 5078173), (5, 5468750, 5468798), (5, 5859375, 5859423), (5, 6250000, 6250048), (5, 6640625, 6640673), (5, 7031250, 7031298), (5, 7421875, 7421923), (5, 7812500, 7812548), (5, 8203125, 8203173), (5, 8593750, 8593798), (5, 8984375, 8984423), (5, 5859375, 5859423), (5, 7812500, 7812548), (11, 5314683, 5314731), (11, 7086244, 7086292), (11, 8857805, 8857853), (13, 4826809, 4826857), (13, 5198102, 5198150), (13, 5569395, 5569443), (13, 5940688, 5940736), (13, 6311981, 6312029), (13, 6683274, 6683322), (13, 7054567, 7054615), (13, 7425860, 7425908), (13, 7797153, 7797201), (13, 8168446, 8168494), (13, 8539739, 8539787), (13, 4826809, 4826857), (17, 5679428, 5679476), (17, 7099285, 7099333), (17, 8519142, 8519190), (19, 4952198, 4952246), (19, 7428297, 7428345), (23, 5037138, 5037186), (23, 5316979, 5317027), (23, 5596820, 5596868), (23, 5876661, 5876709), (23, 6156502, 6156550), (23, 6436343, 6436391), (23, 6436343, 6436391), (29, 4950967, 4951015), (29, 5658248, 5658296), (29, 6365529, 6365577), (29, 7072810, 7072858), (29, 7780091, 7780139), (29, 8487372, 8487420), (29, 9194653, 9194701), (31, 5541126, 5541174), (31, 6464647, 6464695), (31, 7388168, 7388216), (31, 8311689, 8311737), (31, 9235210, 9235258), (37, 5622483, 5622531), (37, 7496644, 7496692), (37, 9370805, 9370853), (41, 5651522, 5651570), (41, 8477283, 8477331), (43, 6837602, 6837650), (47, 4879681, 4879729)]

def row049_layer011_block000 : List ColouredInterval :=
  [(2, 4980736, 4980784), (2, 5242880, 5242928), (2, 5505024, 5505072), (2, 5767168, 5767216), (2, 6029312, 6029360), (2, 5242880, 5242928), (2, 5767168, 5767216), (2, 6291456, 6291504), (2, 6815744, 6815792), (2, 7340032, 7340080), (2, 7864320, 7864368), (2, 8388608, 8388656), (2, 8912896, 8912944), (2, 9437184, 9437232), (2, 5242880, 5242928), (2, 6291456, 6291504)]

def row049_layer011_block001 : List ColouredInterval :=
  [(2, 7340032, 7340080), (2, 8388608, 8388656), (2, 9437184, 9437232), (2, 6291456, 6291504), (2, 8388608, 8388656), (2, 8388608, 8388656), (2, 8388608, 8388656), (3, 5314410, 5314458), (3, 5845851, 5845899), (3, 6377292, 6377340), (3, 6908733, 6908781), (3, 7440174, 7440222), (3, 7971615, 7971663), (3, 8503056, 8503104), (3, 9034497, 9034545), (3, 9565938, 9565986)]

def row049_layer011_block002 : List ColouredInterval :=
  [(3, 6377292, 6377340), (3, 7971615, 7971663), (3, 9565938, 9565986), (3, 9565938, 9565986), (5, 5078125, 5078173), (5, 5468750, 5468798), (5, 5859375, 5859423), (5, 6250000, 6250048), (5, 6640625, 6640673), (5, 7031250, 7031298), (5, 7421875, 7421923), (5, 7812500, 7812548), (5, 8203125, 8203173), (5, 8593750, 8593798), (5, 8984375, 8984423), (5, 5859375, 5859423)]

def row049_layer011_block003 : List ColouredInterval :=
  [(5, 7812500, 7812548), (11, 5314683, 5314731), (11, 7086244, 7086292), (11, 8857805, 8857853), (13, 4826809, 4826857), (13, 5198102, 5198150), (13, 5569395, 5569443), (13, 5940688, 5940736), (13, 6311981, 6312029), (13, 6683274, 6683322), (13, 7054567, 7054615), (13, 7425860, 7425908), (13, 7797153, 7797201), (13, 8168446, 8168494), (13, 8539739, 8539787), (13, 4826809, 4826857)]

def row049_layer011_block004 : List ColouredInterval :=
  [(17, 5679428, 5679476), (17, 7099285, 7099333), (17, 8519142, 8519190), (19, 4952198, 4952246), (19, 7428297, 7428345), (23, 5037138, 5037186), (23, 5316979, 5317027), (23, 5596820, 5596868), (23, 5876661, 5876709), (23, 6156502, 6156550), (23, 6436343, 6436391), (23, 6436343, 6436391), (29, 4950967, 4951015), (29, 5658248, 5658296), (29, 6365529, 6365577), (29, 7072810, 7072858)]

def row049_layer011_block005 : List ColouredInterval :=
  [(29, 7780091, 7780139), (29, 8487372, 8487420), (29, 9194653, 9194701), (31, 5541126, 5541174), (31, 6464647, 6464695), (31, 7388168, 7388216), (31, 8311689, 8311737), (31, 9235210, 9235258), (37, 5622483, 5622531), (37, 7496644, 7496692), (37, 9370805, 9370853), (41, 5651522, 5651570), (41, 8477283, 8477331), (43, 6837602, 6837650), (47, 4879681, 4879729)]

def row049_layer011_chunks : List (List ColouredInterval) :=
  [row049_layer011_block000, row049_layer011_block001, row049_layer011_block002, row049_layer011_block003, row049_layer011_block004, row049_layer011_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_arithmetic : LayerArithmeticValid row049.height { lower := 4816896, upper := 9633792, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_enumeration :
    activePowerIntervalList 49 23 4816896 9633792 = row049_layer011_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs000 :
    row049_layer011_block000.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs001 :
    row049_layer011_block001.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs002 :
    row049_layer011_block002.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs003 :
    row049_layer011_block003.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs004 :
    row049_layer011_block004.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs005 :
    row049_layer011_block005.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_chunks_eq : row049_layer011_chunks.flatten = row049_layer011_intervals := by
  rfl

theorem row049_layer011_pairs : pairCoverCheck row049_layer011_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer011_chunks_eq
  intro block hblock
  simp only [row049_layer011_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer011_pairs000
  · exact row049_layer011_pairs001
  · exact row049_layer011_pairs002
  · exact row049_layer011_pairs003
  · exact row049_layer011_pairs004
  · exact row049_layer011_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_checked :
    coverLayerCheck row049.height row049.goods { lower := 4816896, upper := 9633792, M := 23 } = true := by
  exact coverLayerCheck_of_parts row049_layer011_arithmetic row049_layer011_enumeration row049_bounds_eq row049_layer011_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer012_intervals : List ColouredInterval :=
  [(2, 9961472, 9961520), (2, 10485760, 10485808), (2, 11010048, 11010096), (2, 11534336, 11534384), (2, 10485760, 10485808), (2, 11534336, 11534384), (2, 12582912, 12582960), (2, 13631488, 13631536), (2, 14680064, 14680112), (2, 15728640, 15728688), (2, 16777216, 16777264), (2, 17825792, 17825840), (2, 18874368, 18874416), (2, 10485760, 10485808), (2, 12582912, 12582960), (2, 14680064, 14680112), (2, 16777216, 16777264), (2, 18874368, 18874416), (2, 12582912, 12582960), (2, 16777216, 16777264), (2, 16777216, 16777264), (2, 16777216, 16777264), (3, 10097379, 10097427), (3, 10628820, 10628868), (3, 11160261, 11160309), (3, 11691702, 11691750), (3, 11160261, 11160309), (3, 12754584, 12754632), (3, 14348907, 14348955), (3, 15943230, 15943278), (3, 17537553, 17537601), (3, 19131876, 19131924), (3, 14348907, 14348955), (3, 19131876, 19131924), (3, 14348907, 14348955), (5, 9765625, 9765673), (5, 11718750, 11718798), (5, 13671875, 13671923), (5, 15625000, 15625048), (5, 17578125, 17578173), (5, 9765625, 9765673), (11, 10629366, 10629414), (11, 12400927, 12400975), (11, 14172488, 14172536), (11, 15944049, 15944097), (11, 17715610, 17715658), (13, 9653618, 9653666), (13, 14480427, 14480475), (17, 9938999, 9939047), (17, 11358856, 11358904), (17, 12778713, 12778761), (17, 14198570, 14198618), (17, 15618427, 15618475), (17, 17038284, 17038332), (17, 18458141, 18458189), (19, 9904396, 9904444), (19, 12380495, 12380543), (19, 14856594, 14856642), (19, 17332693, 17332741), (23, 12872686, 12872734), (29, 9901934, 9901982), (29, 10609215, 10609263), (29, 11316496, 11316544), (29, 12023777, 12023825), (29, 12731058, 12731106), (29, 13438339, 13438387), (29, 14145620, 14145668), (29, 14852901, 14852949), (29, 15560182, 15560230), (31, 10158731, 10158779), (31, 11082252, 11082300), (31, 12005773, 12005821), (31, 12929294, 12929342), (31, 13852815, 13852863), (31, 14776336, 14776384), (31, 15699857, 15699905), (31, 16623378, 16623426), (31, 17546899, 17546947), (31, 18470420, 18470468), (37, 11244966, 11245014), (37, 13119127, 13119175), (37, 14993288, 14993336), (37, 16867449, 16867497), (37, 18741610, 18741658), (41, 11303044, 11303092), (41, 14128805, 14128853), (41, 16954566, 16954614), (43, 10256403, 10256451), (43, 13675204, 13675252), (43, 17094005, 17094053), (47, 9759362, 9759410), (47, 14639043, 14639091)]

def row049_layer012_block000 : List ColouredInterval :=
  [(2, 9961472, 9961520), (2, 10485760, 10485808), (2, 11010048, 11010096), (2, 11534336, 11534384), (2, 10485760, 10485808), (2, 11534336, 11534384), (2, 12582912, 12582960), (2, 13631488, 13631536), (2, 14680064, 14680112), (2, 15728640, 15728688), (2, 16777216, 16777264), (2, 17825792, 17825840), (2, 18874368, 18874416), (2, 10485760, 10485808), (2, 12582912, 12582960), (2, 14680064, 14680112)]

def row049_layer012_block001 : List ColouredInterval :=
  [(2, 16777216, 16777264), (2, 18874368, 18874416), (2, 12582912, 12582960), (2, 16777216, 16777264), (2, 16777216, 16777264), (2, 16777216, 16777264), (3, 10097379, 10097427), (3, 10628820, 10628868), (3, 11160261, 11160309), (3, 11691702, 11691750), (3, 11160261, 11160309), (3, 12754584, 12754632), (3, 14348907, 14348955), (3, 15943230, 15943278), (3, 17537553, 17537601), (3, 19131876, 19131924)]

def row049_layer012_block002 : List ColouredInterval :=
  [(3, 14348907, 14348955), (3, 19131876, 19131924), (3, 14348907, 14348955), (5, 9765625, 9765673), (5, 11718750, 11718798), (5, 13671875, 13671923), (5, 15625000, 15625048), (5, 17578125, 17578173), (5, 9765625, 9765673), (11, 10629366, 10629414), (11, 12400927, 12400975), (11, 14172488, 14172536), (11, 15944049, 15944097), (11, 17715610, 17715658), (13, 9653618, 9653666), (13, 14480427, 14480475)]

def row049_layer012_block003 : List ColouredInterval :=
  [(17, 9938999, 9939047), (17, 11358856, 11358904), (17, 12778713, 12778761), (17, 14198570, 14198618), (17, 15618427, 15618475), (17, 17038284, 17038332), (17, 18458141, 18458189), (19, 9904396, 9904444), (19, 12380495, 12380543), (19, 14856594, 14856642), (19, 17332693, 17332741), (23, 12872686, 12872734), (29, 9901934, 9901982), (29, 10609215, 10609263), (29, 11316496, 11316544), (29, 12023777, 12023825)]

def row049_layer012_block004 : List ColouredInterval :=
  [(29, 12731058, 12731106), (29, 13438339, 13438387), (29, 14145620, 14145668), (29, 14852901, 14852949), (29, 15560182, 15560230), (31, 10158731, 10158779), (31, 11082252, 11082300), (31, 12005773, 12005821), (31, 12929294, 12929342), (31, 13852815, 13852863), (31, 14776336, 14776384), (31, 15699857, 15699905), (31, 16623378, 16623426), (31, 17546899, 17546947), (31, 18470420, 18470468), (37, 11244966, 11245014)]

def row049_layer012_block005 : List ColouredInterval :=
  [(37, 13119127, 13119175), (37, 14993288, 14993336), (37, 16867449, 16867497), (37, 18741610, 18741658), (41, 11303044, 11303092), (41, 14128805, 14128853), (41, 16954566, 16954614), (43, 10256403, 10256451), (43, 13675204, 13675252), (43, 17094005, 17094053), (47, 9759362, 9759410), (47, 14639043, 14639091)]

def row049_layer012_chunks : List (List ColouredInterval) :=
  [row049_layer012_block000, row049_layer012_block001, row049_layer012_block002, row049_layer012_block003, row049_layer012_block004, row049_layer012_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_arithmetic : LayerArithmeticValid row049.height { lower := 9633792, upper := 19267584, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_enumeration :
    activePowerIntervalList 49 22 9633792 19267584 = row049_layer012_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs000 :
    row049_layer012_block000.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs001 :
    row049_layer012_block001.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs002 :
    row049_layer012_block002.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs003 :
    row049_layer012_block003.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs004 :
    row049_layer012_block004.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs005 :
    row049_layer012_block005.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_chunks_eq : row049_layer012_chunks.flatten = row049_layer012_intervals := by
  rfl

theorem row049_layer012_pairs : pairCoverCheck row049_layer012_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer012_chunks_eq
  intro block hblock
  simp only [row049_layer012_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer012_pairs000
  · exact row049_layer012_pairs001
  · exact row049_layer012_pairs002
  · exact row049_layer012_pairs003
  · exact row049_layer012_pairs004
  · exact row049_layer012_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_checked :
    coverLayerCheck row049.height row049.goods { lower := 9633792, upper := 19267584, M := 22 } = true := by
  exact coverLayerCheck_of_parts row049_layer012_arithmetic row049_layer012_enumeration row049_bounds_eq row049_layer012_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer013_intervals : List ColouredInterval :=
  [(2, 19922944, 19922992), (2, 20971520, 20971568), (2, 22020096, 22020144), (2, 20971520, 20971568), (2, 23068672, 23068720), (2, 25165824, 25165872), (2, 27262976, 27263024), (2, 29360128, 29360176), (2, 31457280, 31457328), (2, 33554432, 33554480), (2, 35651584, 35651632), (2, 37748736, 37748784), (2, 20971520, 20971568), (2, 25165824, 25165872), (2, 29360128, 29360176), (2, 33554432, 33554480), (2, 37748736, 37748784), (2, 25165824, 25165872), (2, 33554432, 33554480), (2, 33554432, 33554480), (2, 33554432, 33554480), (3, 20726199, 20726247), (3, 22320522, 22320570), (3, 23914845, 23914893), (3, 25509168, 25509216), (3, 27103491, 27103539), (3, 28697814, 28697862), (3, 30292137, 30292185), (3, 31886460, 31886508), (3, 33480783, 33480831), (3, 23914845, 23914893), (3, 28697814, 28697862), (3, 33480783, 33480831), (3, 38263752, 38263800), (3, 28697814, 28697862), (5, 19531250, 19531298), (5, 21484375, 21484423), (5, 23437500, 23437548), (5, 25390625, 25390673), (5, 27343750, 27343798), (5, 29296875, 29296923), (5, 31250000, 31250048), (5, 33203125, 33203173), (5, 35156250, 35156298), (5, 37109375, 37109423), (5, 19531250, 19531298), (5, 29296875, 29296923), (11, 19487171, 19487219), (11, 21258732, 21258780), (11, 23030293, 23030341), (11, 24801854, 24801902), (11, 26573415, 26573463), (11, 28344976, 28345024), (11, 30116537, 30116585), (11, 31888098, 31888146), (11, 33659659, 33659707), (11, 35431220, 35431268), (11, 37202781, 37202829), (11, 19487171, 19487219), (13, 19307236, 19307284), (13, 24134045, 24134093), (13, 28960854, 28960902), (13, 33787663, 33787711), (17, 19877998, 19878046), (17, 21297855, 21297903), (17, 22717712, 22717760), (17, 24137569, 24137617), (17, 25557426, 25557474), (17, 26977283, 26977331), (17, 28397140, 28397188), (17, 29816997, 29817045), (17, 24137569, 24137617), (19, 19808792, 19808840), (19, 22284891, 22284939), (19, 24760990, 24761038), (19, 27237089, 27237137), (19, 29713188, 29713236), (19, 32189287, 32189335), (19, 34665386, 34665434), (19, 37141485, 37141533), (23, 19309029, 19309077), (23, 25745372, 25745420), (23, 32181715, 32181763), (29, 20511149, 20511197), (31, 19393941, 19393989), (31, 28629151, 28629199), (37, 20615771, 20615819), (37, 22489932, 22489980), (37, 24364093, 24364141), (37, 26238254, 26238302), (37, 28112415, 28112463), (37, 29986576, 29986624), (37, 31860737, 31860785), (37, 33734898, 33734946), (37, 35609059, 35609107), (37, 37483220, 37483268), (41, 19780327, 19780375), (41, 22606088, 22606136), (41, 25431849, 25431897), (41, 28257610, 28257658), (41, 31083371, 31083419), (41, 33909132, 33909180), (41, 36734893, 36734941), (43, 20512806, 20512854), (43, 23931607, 23931655), (43, 27350408, 27350456), (43, 30769209, 30769257), (43, 34188010, 34188058), (43, 37606811, 37606859), (47, 19518724, 19518772), (47, 24398405, 24398453), (47, 29278086, 29278134), (47, 34157767, 34157815)]

def row049_layer013_block000 : List ColouredInterval :=
  [(2, 19922944, 19922992), (2, 20971520, 20971568), (2, 22020096, 22020144), (2, 20971520, 20971568), (2, 23068672, 23068720), (2, 25165824, 25165872), (2, 27262976, 27263024), (2, 29360128, 29360176), (2, 31457280, 31457328), (2, 33554432, 33554480), (2, 35651584, 35651632), (2, 37748736, 37748784), (2, 20971520, 20971568), (2, 25165824, 25165872), (2, 29360128, 29360176), (2, 33554432, 33554480)]

def row049_layer013_block001 : List ColouredInterval :=
  [(2, 37748736, 37748784), (2, 25165824, 25165872), (2, 33554432, 33554480), (2, 33554432, 33554480), (2, 33554432, 33554480), (3, 20726199, 20726247), (3, 22320522, 22320570), (3, 23914845, 23914893), (3, 25509168, 25509216), (3, 27103491, 27103539), (3, 28697814, 28697862), (3, 30292137, 30292185), (3, 31886460, 31886508), (3, 33480783, 33480831), (3, 23914845, 23914893), (3, 28697814, 28697862)]

def row049_layer013_block002 : List ColouredInterval :=
  [(3, 33480783, 33480831), (3, 38263752, 38263800), (3, 28697814, 28697862), (5, 19531250, 19531298), (5, 21484375, 21484423), (5, 23437500, 23437548), (5, 25390625, 25390673), (5, 27343750, 27343798), (5, 29296875, 29296923), (5, 31250000, 31250048), (5, 33203125, 33203173), (5, 35156250, 35156298), (5, 37109375, 37109423), (5, 19531250, 19531298), (5, 29296875, 29296923), (11, 19487171, 19487219)]

def row049_layer013_block003 : List ColouredInterval :=
  [(11, 21258732, 21258780), (11, 23030293, 23030341), (11, 24801854, 24801902), (11, 26573415, 26573463), (11, 28344976, 28345024), (11, 30116537, 30116585), (11, 31888098, 31888146), (11, 33659659, 33659707), (11, 35431220, 35431268), (11, 37202781, 37202829), (11, 19487171, 19487219), (13, 19307236, 19307284), (13, 24134045, 24134093), (13, 28960854, 28960902), (13, 33787663, 33787711), (17, 19877998, 19878046)]

def row049_layer013_block004 : List ColouredInterval :=
  [(17, 21297855, 21297903), (17, 22717712, 22717760), (17, 24137569, 24137617), (17, 25557426, 25557474), (17, 26977283, 26977331), (17, 28397140, 28397188), (17, 29816997, 29817045), (17, 24137569, 24137617), (19, 19808792, 19808840), (19, 22284891, 22284939), (19, 24760990, 24761038), (19, 27237089, 27237137), (19, 29713188, 29713236), (19, 32189287, 32189335), (19, 34665386, 34665434), (19, 37141485, 37141533)]

def row049_layer013_block005 : List ColouredInterval :=
  [(23, 19309029, 19309077), (23, 25745372, 25745420), (23, 32181715, 32181763), (29, 20511149, 20511197), (31, 19393941, 19393989), (31, 28629151, 28629199), (37, 20615771, 20615819), (37, 22489932, 22489980), (37, 24364093, 24364141), (37, 26238254, 26238302), (37, 28112415, 28112463), (37, 29986576, 29986624), (37, 31860737, 31860785), (37, 33734898, 33734946), (37, 35609059, 35609107), (37, 37483220, 37483268)]

def row049_layer013_block006 : List ColouredInterval :=
  [(41, 19780327, 19780375), (41, 22606088, 22606136), (41, 25431849, 25431897), (41, 28257610, 28257658), (41, 31083371, 31083419), (41, 33909132, 33909180), (41, 36734893, 36734941), (43, 20512806, 20512854), (43, 23931607, 23931655), (43, 27350408, 27350456), (43, 30769209, 30769257), (43, 34188010, 34188058), (43, 37606811, 37606859), (47, 19518724, 19518772), (47, 24398405, 24398453), (47, 29278086, 29278134)]

def row049_layer013_block007 : List ColouredInterval :=
  [(47, 34157767, 34157815)]

def row049_layer013_chunks : List (List ColouredInterval) :=
  [row049_layer013_block000, row049_layer013_block001, row049_layer013_block002, row049_layer013_block003, row049_layer013_block004, row049_layer013_block005, row049_layer013_block006, row049_layer013_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_arithmetic : LayerArithmeticValid row049.height { lower := 19267584, upper := 38535168, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_enumeration :
    activePowerIntervalList 49 21 19267584 38535168 = row049_layer013_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs000 :
    row049_layer013_block000.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs001 :
    row049_layer013_block001.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs002 :
    row049_layer013_block002.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs003 :
    row049_layer013_block003.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs004 :
    row049_layer013_block004.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs005 :
    row049_layer013_block005.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs006 :
    row049_layer013_block006.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs007 :
    row049_layer013_block007.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_chunks_eq : row049_layer013_chunks.flatten = row049_layer013_intervals := by
  rfl

theorem row049_layer013_pairs : pairCoverCheck row049_layer013_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer013_chunks_eq
  intro block hblock
  simp only [row049_layer013_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer013_pairs000
  · exact row049_layer013_pairs001
  · exact row049_layer013_pairs002
  · exact row049_layer013_pairs003
  · exact row049_layer013_pairs004
  · exact row049_layer013_pairs005
  · exact row049_layer013_pairs006
  · exact row049_layer013_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_checked :
    coverLayerCheck row049.height row049.goods { lower := 19267584, upper := 38535168, M := 21 } = true := by
  exact coverLayerCheck_of_parts row049_layer013_arithmetic row049_layer013_enumeration row049_bounds_eq row049_layer013_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer014_intervals : List ColouredInterval :=
  [(2, 39845888, 39845936), (2, 41943040, 41943088), (2, 41943040, 41943088), (2, 46137344, 46137392), (2, 50331648, 50331696), (2, 54525952, 54526000), (2, 58720256, 58720304), (2, 62914560, 62914608), (2, 67108864, 67108912), (2, 71303168, 71303216), (2, 75497472, 75497520), (2, 41943040, 41943088), (2, 50331648, 50331696), (2, 58720256, 58720304), (2, 67108864, 67108912), (2, 75497472, 75497520), (2, 50331648, 50331696), (2, 67108864, 67108912), (2, 67108864, 67108912), (2, 67108864, 67108912), (3, 43046721, 43046769), (3, 47829690, 47829738), (3, 52612659, 52612707), (3, 57395628, 57395676), (3, 62178597, 62178645), (3, 66961566, 66961614), (3, 71744535, 71744583), (3, 76527504, 76527552), (3, 43046721, 43046769), (3, 57395628, 57395676), (3, 71744535, 71744583), (3, 43046721, 43046769), (5, 39062500, 39062548), (5, 39062500, 39062548), (5, 48828125, 48828173), (5, 58593750, 58593798), (5, 68359375, 68359423), (5, 48828125, 48828173), (11, 38974342, 38974390), (11, 58461513, 58461561), (13, 38614472, 38614520), (13, 43441281, 43441329), (13, 48268090, 48268138), (13, 53094899, 53094947), (13, 57921708, 57921756), (13, 62748517, 62748565), (13, 67575326, 67575374), (13, 72402135, 72402183), (13, 62748517, 62748565), (17, 48275138, 48275186), (17, 72412707, 72412755), (19, 39617584, 39617632), (19, 42093683, 42093731), (19, 44569782, 44569830), (19, 47045881, 47045929), (19, 49521980, 49522028), (19, 47045881, 47045929), (23, 38618058, 38618106), (23, 45054401, 45054449), (23, 51490744, 51490792), (23, 57927087, 57927135), (23, 64363430, 64363478), (23, 70799773, 70799821), (29, 41022298, 41022346), (29, 61533447, 61533495), (31, 57258302, 57258350), (37, 69343957, 69344005), (41, 39560654, 39560702), (41, 42386415, 42386463), (41, 45212176, 45212224), (41, 48037937, 48037985), (41, 50863698, 50863746), (41, 53689459, 53689507), (41, 56515220, 56515268), (43, 41025612, 41025660), (43, 44444413, 44444461), (43, 47863214, 47863262), (43, 51282015, 51282063), (43, 54700816, 54700864), (43, 58119617, 58119665), (43, 61538418, 61538466), (43, 64957219, 64957267), (43, 68376020, 68376068), (47, 39037448, 39037496), (47, 43917129, 43917177), (47, 48796810, 48796858), (47, 53676491, 53676539), (47, 58556172, 58556220), (47, 63435853, 63435901), (47, 68315534, 68315582), (47, 73195215, 73195263)]

def row049_layer014_block000 : List ColouredInterval :=
  [(2, 39845888, 39845936), (2, 41943040, 41943088), (2, 41943040, 41943088), (2, 46137344, 46137392), (2, 50331648, 50331696), (2, 54525952, 54526000), (2, 58720256, 58720304), (2, 62914560, 62914608), (2, 67108864, 67108912), (2, 71303168, 71303216), (2, 75497472, 75497520), (2, 41943040, 41943088), (2, 50331648, 50331696), (2, 58720256, 58720304), (2, 67108864, 67108912), (2, 75497472, 75497520)]

def row049_layer014_block001 : List ColouredInterval :=
  [(2, 50331648, 50331696), (2, 67108864, 67108912), (2, 67108864, 67108912), (2, 67108864, 67108912), (3, 43046721, 43046769), (3, 47829690, 47829738), (3, 52612659, 52612707), (3, 57395628, 57395676), (3, 62178597, 62178645), (3, 66961566, 66961614), (3, 71744535, 71744583), (3, 76527504, 76527552), (3, 43046721, 43046769), (3, 57395628, 57395676), (3, 71744535, 71744583), (3, 43046721, 43046769)]

def row049_layer014_block002 : List ColouredInterval :=
  [(5, 39062500, 39062548), (5, 39062500, 39062548), (5, 48828125, 48828173), (5, 58593750, 58593798), (5, 68359375, 68359423), (5, 48828125, 48828173), (11, 38974342, 38974390), (11, 58461513, 58461561), (13, 38614472, 38614520), (13, 43441281, 43441329), (13, 48268090, 48268138), (13, 53094899, 53094947), (13, 57921708, 57921756), (13, 62748517, 62748565), (13, 67575326, 67575374), (13, 72402135, 72402183)]

def row049_layer014_block003 : List ColouredInterval :=
  [(13, 62748517, 62748565), (17, 48275138, 48275186), (17, 72412707, 72412755), (19, 39617584, 39617632), (19, 42093683, 42093731), (19, 44569782, 44569830), (19, 47045881, 47045929), (19, 49521980, 49522028), (19, 47045881, 47045929), (23, 38618058, 38618106), (23, 45054401, 45054449), (23, 51490744, 51490792), (23, 57927087, 57927135), (23, 64363430, 64363478), (23, 70799773, 70799821), (29, 41022298, 41022346)]

def row049_layer014_block004 : List ColouredInterval :=
  [(29, 61533447, 61533495), (31, 57258302, 57258350), (37, 69343957, 69344005), (41, 39560654, 39560702), (41, 42386415, 42386463), (41, 45212176, 45212224), (41, 48037937, 48037985), (41, 50863698, 50863746), (41, 53689459, 53689507), (41, 56515220, 56515268), (43, 41025612, 41025660), (43, 44444413, 44444461), (43, 47863214, 47863262), (43, 51282015, 51282063), (43, 54700816, 54700864), (43, 58119617, 58119665)]

def row049_layer014_block005 : List ColouredInterval :=
  [(43, 61538418, 61538466), (43, 64957219, 64957267), (43, 68376020, 68376068), (47, 39037448, 39037496), (47, 43917129, 43917177), (47, 48796810, 48796858), (47, 53676491, 53676539), (47, 58556172, 58556220), (47, 63435853, 63435901), (47, 68315534, 68315582), (47, 73195215, 73195263)]

def row049_layer014_chunks : List (List ColouredInterval) :=
  [row049_layer014_block000, row049_layer014_block001, row049_layer014_block002, row049_layer014_block003, row049_layer014_block004, row049_layer014_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_arithmetic : LayerArithmeticValid row049.height { lower := 38535168, upper := 77070336, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_enumeration :
    activePowerIntervalList 49 20 38535168 77070336 = row049_layer014_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs000 :
    row049_layer014_block000.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs001 :
    row049_layer014_block001.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs002 :
    row049_layer014_block002.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs003 :
    row049_layer014_block003.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs004 :
    row049_layer014_block004.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs005 :
    row049_layer014_block005.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_chunks_eq : row049_layer014_chunks.flatten = row049_layer014_intervals := by
  rfl

theorem row049_layer014_pairs : pairCoverCheck row049_layer014_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer014_chunks_eq
  intro block hblock
  simp only [row049_layer014_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer014_pairs000
  · exact row049_layer014_pairs001
  · exact row049_layer014_pairs002
  · exact row049_layer014_pairs003
  · exact row049_layer014_pairs004
  · exact row049_layer014_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_checked :
    coverLayerCheck row049.height row049.goods { lower := 38535168, upper := 77070336, M := 20 } = true := by
  exact coverLayerCheck_of_parts row049_layer014_arithmetic row049_layer014_enumeration row049_bounds_eq row049_layer014_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer015_intervals : List ColouredInterval :=
  [(2, 79691776, 79691824), (2, 83886080, 83886128), (2, 92274688, 92274736), (2, 100663296, 100663344), (2, 109051904, 109051952), (2, 117440512, 117440560), (2, 125829120, 125829168), (2, 134217728, 134217776), (2, 142606336, 142606384), (2, 150994944, 150994992), (2, 83886080, 83886128), (2, 100663296, 100663344), (2, 117440512, 117440560), (2, 134217728, 134217776), (2, 150994944, 150994992), (2, 100663296, 100663344), (2, 134217728, 134217776), (2, 134217728, 134217776), (2, 134217728, 134217776), (3, 81310473, 81310521), (3, 86093442, 86093490), (3, 90876411, 90876459), (3, 86093442, 86093490), (3, 100442349, 100442397), (3, 114791256, 114791304), (3, 129140163, 129140211), (3, 143489070, 143489118), (3, 86093442, 86093490), (3, 129140163, 129140211), (3, 129140163, 129140211), (5, 78125000, 78125048), (5, 87890625, 87890673), (5, 97656250, 97656298), (5, 107421875, 107421923), (5, 117187500, 117187548), (5, 126953125, 126953173), (5, 136718750, 136718798), (5, 146484375, 146484423), (5, 97656250, 97656298), (5, 146484375, 146484423), (11, 77948684, 77948732), (11, 97435855, 97435903), (11, 116923026, 116923074), (11, 136410197, 136410245), (13, 77228944, 77228992), (13, 82055753, 82055801), (13, 86882562, 86882610), (13, 91709371, 91709419), (13, 125497034, 125497082), (17, 96550276, 96550324), (17, 120687845, 120687893), (17, 144825414, 144825462), (19, 94091762, 94091810), (19, 141137643, 141137691), (23, 77236116, 77236164), (23, 83672459, 83672507), (23, 90108802, 90108850), (23, 96545145, 96545193), (23, 102981488, 102981536), (23, 109417831, 109417879), (23, 115854174, 115854222), (23, 122290517, 122290565), (23, 148035889, 148035937), (29, 82044596, 82044644), (29, 102555745, 102555793), (29, 123066894, 123066942), (29, 143578043, 143578091), (31, 85887453, 85887501), (31, 114516604, 114516652), (31, 143145755, 143145803), (37, 138687914, 138687962), (41, 115856201, 115856249), (43, 147008443, 147008491), (47, 78074896, 78074944), (47, 82954577, 82954625), (47, 87834258, 87834306), (47, 92713939, 92713987)]

def row049_layer015_block000 : List ColouredInterval :=
  [(2, 79691776, 79691824), (2, 83886080, 83886128), (2, 92274688, 92274736), (2, 100663296, 100663344), (2, 109051904, 109051952), (2, 117440512, 117440560), (2, 125829120, 125829168), (2, 134217728, 134217776), (2, 142606336, 142606384), (2, 150994944, 150994992), (2, 83886080, 83886128), (2, 100663296, 100663344), (2, 117440512, 117440560), (2, 134217728, 134217776), (2, 150994944, 150994992), (2, 100663296, 100663344)]

def row049_layer015_block001 : List ColouredInterval :=
  [(2, 134217728, 134217776), (2, 134217728, 134217776), (2, 134217728, 134217776), (3, 81310473, 81310521), (3, 86093442, 86093490), (3, 90876411, 90876459), (3, 86093442, 86093490), (3, 100442349, 100442397), (3, 114791256, 114791304), (3, 129140163, 129140211), (3, 143489070, 143489118), (3, 86093442, 86093490), (3, 129140163, 129140211), (3, 129140163, 129140211), (5, 78125000, 78125048), (5, 87890625, 87890673)]

def row049_layer015_block002 : List ColouredInterval :=
  [(5, 97656250, 97656298), (5, 107421875, 107421923), (5, 117187500, 117187548), (5, 126953125, 126953173), (5, 136718750, 136718798), (5, 146484375, 146484423), (5, 97656250, 97656298), (5, 146484375, 146484423), (11, 77948684, 77948732), (11, 97435855, 97435903), (11, 116923026, 116923074), (11, 136410197, 136410245), (13, 77228944, 77228992), (13, 82055753, 82055801), (13, 86882562, 86882610), (13, 91709371, 91709419)]

def row049_layer015_block003 : List ColouredInterval :=
  [(13, 125497034, 125497082), (17, 96550276, 96550324), (17, 120687845, 120687893), (17, 144825414, 144825462), (19, 94091762, 94091810), (19, 141137643, 141137691), (23, 77236116, 77236164), (23, 83672459, 83672507), (23, 90108802, 90108850), (23, 96545145, 96545193), (23, 102981488, 102981536), (23, 109417831, 109417879), (23, 115854174, 115854222), (23, 122290517, 122290565), (23, 148035889, 148035937), (29, 82044596, 82044644)]

def row049_layer015_block004 : List ColouredInterval :=
  [(29, 102555745, 102555793), (29, 123066894, 123066942), (29, 143578043, 143578091), (31, 85887453, 85887501), (31, 114516604, 114516652), (31, 143145755, 143145803), (37, 138687914, 138687962), (41, 115856201, 115856249), (43, 147008443, 147008491), (47, 78074896, 78074944), (47, 82954577, 82954625), (47, 87834258, 87834306), (47, 92713939, 92713987)]

def row049_layer015_chunks : List (List ColouredInterval) :=
  [row049_layer015_block000, row049_layer015_block001, row049_layer015_block002, row049_layer015_block003, row049_layer015_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_arithmetic : LayerArithmeticValid row049.height { lower := 77070336, upper := 154140672, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_enumeration :
    activePowerIntervalList 49 19 77070336 154140672 = row049_layer015_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs000 :
    row049_layer015_block000.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs001 :
    row049_layer015_block001.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs002 :
    row049_layer015_block002.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs003 :
    row049_layer015_block003.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs004 :
    row049_layer015_block004.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_chunks_eq : row049_layer015_chunks.flatten = row049_layer015_intervals := by
  rfl

theorem row049_layer015_pairs : pairCoverCheck row049_layer015_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer015_chunks_eq
  intro block hblock
  simp only [row049_layer015_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row049_layer015_pairs000
  · exact row049_layer015_pairs001
  · exact row049_layer015_pairs002
  · exact row049_layer015_pairs003
  · exact row049_layer015_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_checked :
    coverLayerCheck row049.height row049.goods { lower := 77070336, upper := 154140672, M := 19 } = true := by
  exact coverLayerCheck_of_parts row049_layer015_arithmetic row049_layer015_enumeration row049_bounds_eq row049_layer015_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer016_intervals : List ColouredInterval :=
  [(2, 167772160, 167772208), (2, 184549376, 184549424), (2, 201326592, 201326640), (2, 218103808, 218103856), (2, 234881024, 234881072), (2, 251658240, 251658288), (2, 268435456, 268435504), (2, 285212672, 285212720), (2, 301989888, 301989936), (2, 167772160, 167772208), (2, 201326592, 201326640), (2, 234881024, 234881072), (2, 268435456, 268435504), (2, 301989888, 301989936), (2, 201326592, 201326640), (2, 268435456, 268435504), (2, 268435456, 268435504), (2, 268435456, 268435504), (3, 157837977, 157838025), (3, 172186884, 172186932), (3, 186535791, 186535839), (3, 200884698, 200884746), (3, 215233605, 215233653), (3, 229582512, 229582560), (3, 243931419, 243931467), (3, 258280326, 258280374), (3, 172186884, 172186932), (3, 215233605, 215233653), (3, 258280326, 258280374), (3, 301327047, 301327095), (3, 258280326, 258280374), (5, 156250000, 156250048), (5, 166015625, 166015673), (5, 175781250, 175781298), (5, 195312500, 195312548), (5, 244140625, 244140673), (5, 292968750, 292968798), (5, 244140625, 244140673), (11, 155897368, 155897416), (11, 175384539, 175384587), (11, 194871710, 194871758), (11, 214358881, 214358929), (11, 233846052, 233846100), (11, 253333223, 253333271), (11, 272820394, 272820442), (11, 292307565, 292307613), (11, 214358881, 214358929), (13, 188245551, 188245599), (13, 250994068, 250994116), (17, 168962983, 168963031), (17, 193100552, 193100600), (17, 217238121, 217238169), (17, 241375690, 241375738), (17, 265513259, 265513307), (17, 289650828, 289650876), (19, 188183524, 188183572), (19, 235229405, 235229453), (19, 282275286, 282275334), (23, 296071778, 296071826), (29, 164089192, 164089240), (29, 184600341, 184600389), (29, 205111490, 205111538), (29, 225622639, 225622687), (29, 246133788, 246133836), (29, 266644937, 266644985), (29, 287156086, 287156134), (29, 307667235, 307667283), (31, 171774906, 171774954), (31, 200404057, 200404105), (31, 229033208, 229033256), (31, 257662359, 257662407), (31, 286291510, 286291558), (37, 208031871, 208031919), (37, 277375828, 277375876), (41, 231712402, 231712450), (43, 294016886, 294016934), (47, 229345007, 229345055)]

def row049_layer016_block000 : List ColouredInterval :=
  [(2, 167772160, 167772208), (2, 184549376, 184549424), (2, 201326592, 201326640), (2, 218103808, 218103856), (2, 234881024, 234881072), (2, 251658240, 251658288), (2, 268435456, 268435504), (2, 285212672, 285212720), (2, 301989888, 301989936), (2, 167772160, 167772208), (2, 201326592, 201326640), (2, 234881024, 234881072), (2, 268435456, 268435504), (2, 301989888, 301989936), (2, 201326592, 201326640), (2, 268435456, 268435504)]

def row049_layer016_block001 : List ColouredInterval :=
  [(2, 268435456, 268435504), (2, 268435456, 268435504), (3, 157837977, 157838025), (3, 172186884, 172186932), (3, 186535791, 186535839), (3, 200884698, 200884746), (3, 215233605, 215233653), (3, 229582512, 229582560), (3, 243931419, 243931467), (3, 258280326, 258280374), (3, 172186884, 172186932), (3, 215233605, 215233653), (3, 258280326, 258280374), (3, 301327047, 301327095), (3, 258280326, 258280374), (5, 156250000, 156250048)]

def row049_layer016_block002 : List ColouredInterval :=
  [(5, 166015625, 166015673), (5, 175781250, 175781298), (5, 195312500, 195312548), (5, 244140625, 244140673), (5, 292968750, 292968798), (5, 244140625, 244140673), (11, 155897368, 155897416), (11, 175384539, 175384587), (11, 194871710, 194871758), (11, 214358881, 214358929), (11, 233846052, 233846100), (11, 253333223, 253333271), (11, 272820394, 272820442), (11, 292307565, 292307613), (11, 214358881, 214358929), (13, 188245551, 188245599)]

def row049_layer016_block003 : List ColouredInterval :=
  [(13, 250994068, 250994116), (17, 168962983, 168963031), (17, 193100552, 193100600), (17, 217238121, 217238169), (17, 241375690, 241375738), (17, 265513259, 265513307), (17, 289650828, 289650876), (19, 188183524, 188183572), (19, 235229405, 235229453), (19, 282275286, 282275334), (23, 296071778, 296071826), (29, 164089192, 164089240), (29, 184600341, 184600389), (29, 205111490, 205111538), (29, 225622639, 225622687), (29, 246133788, 246133836)]

def row049_layer016_block004 : List ColouredInterval :=
  [(29, 266644937, 266644985), (29, 287156086, 287156134), (29, 307667235, 307667283), (31, 171774906, 171774954), (31, 200404057, 200404105), (31, 229033208, 229033256), (31, 257662359, 257662407), (31, 286291510, 286291558), (37, 208031871, 208031919), (37, 277375828, 277375876), (41, 231712402, 231712450), (43, 294016886, 294016934), (47, 229345007, 229345055)]

def row049_layer016_chunks : List (List ColouredInterval) :=
  [row049_layer016_block000, row049_layer016_block001, row049_layer016_block002, row049_layer016_block003, row049_layer016_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_arithmetic : LayerArithmeticValid row049.height { lower := 154140672, upper := 308281344, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_enumeration :
    activePowerIntervalList 49 18 154140672 308281344 = row049_layer016_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs000 :
    row049_layer016_block000.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs001 :
    row049_layer016_block001.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs002 :
    row049_layer016_block002.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs003 :
    row049_layer016_block003.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs004 :
    row049_layer016_block004.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_chunks_eq : row049_layer016_chunks.flatten = row049_layer016_intervals := by
  rfl

theorem row049_layer016_pairs : pairCoverCheck row049_layer016_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer016_chunks_eq
  intro block hblock
  simp only [row049_layer016_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row049_layer016_pairs000
  · exact row049_layer016_pairs001
  · exact row049_layer016_pairs002
  · exact row049_layer016_pairs003
  · exact row049_layer016_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_checked :
    coverLayerCheck row049.height row049.goods { lower := 154140672, upper := 308281344, M := 18 } = true := by
  exact coverLayerCheck_of_parts row049_layer016_arithmetic row049_layer016_enumeration row049_bounds_eq row049_layer016_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer017_intervals : List ColouredInterval :=
  [(2, 335544320, 335544368), (2, 369098752, 369098800), (2, 402653184, 402653232), (2, 436207616, 436207664), (2, 469762048, 469762096), (2, 503316480, 503316528), (2, 536870912, 536870960), (2, 570425344, 570425392), (2, 603979776, 603979824), (2, 335544320, 335544368), (2, 402653184, 402653232), (2, 469762048, 469762096), (2, 536870912, 536870960), (2, 603979776, 603979824), (2, 402653184, 402653232), (2, 536870912, 536870960), (2, 536870912, 536870960), (2, 536870912, 536870960), (3, 344373768, 344373816), (3, 387420489, 387420537), (3, 430467210, 430467258), (3, 473513931, 473513979), (3, 516560652, 516560700), (3, 559607373, 559607421), (3, 602654094, 602654142), (3, 387420489, 387420537), (3, 516560652, 516560700), (3, 387420489, 387420537), (5, 341796875, 341796923), (5, 390625000, 390625048), (5, 439453125, 439453173), (5, 488281250, 488281298), (5, 537109375, 537109423), (5, 585937500, 585937548), (5, 488281250, 488281298), (11, 311794736, 311794784), (11, 331281907, 331281955), (11, 350769078, 350769126), (11, 428717762, 428717810), (13, 313742585, 313742633), (13, 376491102, 376491150), (13, 439239619, 439239667), (13, 501988136, 501988184), (13, 564736653, 564736701), (17, 313788397, 313788445), (17, 337925966, 337926014), (17, 362063535, 362063583), (17, 386201104, 386201152), (17, 410338673, 410338721), (17, 434476242, 434476290), (17, 410338673, 410338721), (19, 329321167, 329321215), (19, 376367048, 376367096), (19, 423412929, 423412977), (19, 470458810, 470458858), (19, 517504691, 517504739), (19, 564550572, 564550620), (19, 611596453, 611596501), (23, 444107667, 444107715), (23, 592143556, 592143604), (29, 328178384, 328178432), (29, 348689533, 348689581), (29, 369200682, 369200730), (29, 594823321, 594823369), (31, 314920661, 314920709), (31, 343549812, 343549860), (31, 372178963, 372179011), (31, 400808114, 400808162), (31, 429437265, 429437313), (31, 458066416, 458066464), (31, 486695567, 486695615), (31, 515324718, 515324766), (37, 346719785, 346719833), (37, 416063742, 416063790), (37, 485407699, 485407747), (37, 554751656, 554751704), (41, 347568603, 347568651), (41, 463424804, 463424852), (41, 579281005, 579281053), (43, 441025329, 441025377), (43, 588033772, 588033820), (47, 458690014, 458690062)]

def row049_layer017_block000 : List ColouredInterval :=
  [(2, 335544320, 335544368), (2, 369098752, 369098800), (2, 402653184, 402653232), (2, 436207616, 436207664), (2, 469762048, 469762096), (2, 503316480, 503316528), (2, 536870912, 536870960), (2, 570425344, 570425392), (2, 603979776, 603979824), (2, 335544320, 335544368), (2, 402653184, 402653232), (2, 469762048, 469762096), (2, 536870912, 536870960), (2, 603979776, 603979824), (2, 402653184, 402653232), (2, 536870912, 536870960)]

def row049_layer017_block001 : List ColouredInterval :=
  [(2, 536870912, 536870960), (2, 536870912, 536870960), (3, 344373768, 344373816), (3, 387420489, 387420537), (3, 430467210, 430467258), (3, 473513931, 473513979), (3, 516560652, 516560700), (3, 559607373, 559607421), (3, 602654094, 602654142), (3, 387420489, 387420537), (3, 516560652, 516560700), (3, 387420489, 387420537), (5, 341796875, 341796923), (5, 390625000, 390625048), (5, 439453125, 439453173), (5, 488281250, 488281298)]

def row049_layer017_block002 : List ColouredInterval :=
  [(5, 537109375, 537109423), (5, 585937500, 585937548), (5, 488281250, 488281298), (11, 311794736, 311794784), (11, 331281907, 331281955), (11, 350769078, 350769126), (11, 428717762, 428717810), (13, 313742585, 313742633), (13, 376491102, 376491150), (13, 439239619, 439239667), (13, 501988136, 501988184), (13, 564736653, 564736701), (17, 313788397, 313788445), (17, 337925966, 337926014), (17, 362063535, 362063583), (17, 386201104, 386201152)]

def row049_layer017_block003 : List ColouredInterval :=
  [(17, 410338673, 410338721), (17, 434476242, 434476290), (17, 410338673, 410338721), (19, 329321167, 329321215), (19, 376367048, 376367096), (19, 423412929, 423412977), (19, 470458810, 470458858), (19, 517504691, 517504739), (19, 564550572, 564550620), (19, 611596453, 611596501), (23, 444107667, 444107715), (23, 592143556, 592143604), (29, 328178384, 328178432), (29, 348689533, 348689581), (29, 369200682, 369200730), (29, 594823321, 594823369)]

def row049_layer017_block004 : List ColouredInterval :=
  [(31, 314920661, 314920709), (31, 343549812, 343549860), (31, 372178963, 372179011), (31, 400808114, 400808162), (31, 429437265, 429437313), (31, 458066416, 458066464), (31, 486695567, 486695615), (31, 515324718, 515324766), (37, 346719785, 346719833), (37, 416063742, 416063790), (37, 485407699, 485407747), (37, 554751656, 554751704), (41, 347568603, 347568651), (41, 463424804, 463424852), (41, 579281005, 579281053), (43, 441025329, 441025377)]

def row049_layer017_block005 : List ColouredInterval :=
  [(43, 588033772, 588033820), (47, 458690014, 458690062)]

def row049_layer017_chunks : List (List ColouredInterval) :=
  [row049_layer017_block000, row049_layer017_block001, row049_layer017_block002, row049_layer017_block003, row049_layer017_block004, row049_layer017_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_arithmetic : LayerArithmeticValid row049.height { lower := 308281344, upper := 616562688, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_enumeration :
    activePowerIntervalList 49 18 308281344 616562688 = row049_layer017_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs000 :
    row049_layer017_block000.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs001 :
    row049_layer017_block001.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs002 :
    row049_layer017_block002.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs003 :
    row049_layer017_block003.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs004 :
    row049_layer017_block004.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs005 :
    row049_layer017_block005.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_chunks_eq : row049_layer017_chunks.flatten = row049_layer017_intervals := by
  rfl

theorem row049_layer017_pairs : pairCoverCheck row049_layer017_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer017_chunks_eq
  intro block hblock
  simp only [row049_layer017_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer017_pairs000
  · exact row049_layer017_pairs001
  · exact row049_layer017_pairs002
  · exact row049_layer017_pairs003
  · exact row049_layer017_pairs004
  · exact row049_layer017_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_checked :
    coverLayerCheck row049.height row049.goods { lower := 308281344, upper := 616562688, M := 18 } = true := by
  exact coverLayerCheck_of_parts row049_layer017_arithmetic row049_layer017_enumeration row049_bounds_eq row049_layer017_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer018_intervals : List ColouredInterval :=
  [(2, 671088640, 671088688), (2, 738197504, 738197552), (2, 805306368, 805306416), (2, 872415232, 872415280), (2, 939524096, 939524144), (2, 1006632960, 1006633008), (2, 1073741824, 1073741872), (2, 1140850688, 1140850736), (2, 671088640, 671088688), (2, 805306368, 805306416), (2, 939524096, 939524144), (2, 1073741824, 1073741872), (2, 1207959552, 1207959600), (2, 805306368, 805306416), (2, 1073741824, 1073741872), (2, 1073741824, 1073741872), (2, 1073741824, 1073741872), (3, 645700815, 645700863), (3, 688747536, 688747584), (3, 731794257, 731794305), (3, 645700815, 645700863), (3, 774840978, 774841026), (3, 903981141, 903981189), (3, 1033121304, 1033121352), (3, 1162261467, 1162261515), (3, 774840978, 774841026), (3, 1162261467, 1162261515), (3, 1162261467, 1162261515), (5, 634765625, 634765673), (5, 683593750, 683593798), (5, 732421875, 732421923), (5, 781250000, 781250048), (5, 830078125, 830078173), (5, 732421875, 732421923), (5, 976562500, 976562548), (5, 1220703125, 1220703173), (5, 1220703125, 1220703173), (11, 643076643, 643076691), (11, 857435524, 857435572), (11, 1071794405, 1071794453), (13, 627485170, 627485218), (13, 690233687, 690233735), (13, 752982204, 752982252), (13, 815730721, 815730769), (13, 878479238, 878479286), (13, 941227755, 941227803), (13, 1003976272, 1003976320), (13, 1066724789, 1066724837), (13, 815730721, 815730769), (17, 820677346, 820677394), (17, 1231016019, 1231016067), (19, 658642334, 658642382), (19, 705688215, 705688263), (19, 752734096, 752734144), (19, 799779977, 799780025), (19, 893871739, 893871787), (23, 740179445, 740179493), (23, 888215334, 888215382), (23, 1036251223, 1036251271), (23, 1184287112, 1184287160), (29, 1189646642, 1189646690), (31, 887503681, 887503729), (37, 624095613, 624095661), (37, 693439570, 693439618), (37, 762783527, 762783575), (37, 832127484, 832127532), (37, 901471441, 901471489), (37, 970815398, 970815446), (37, 1040159355, 1040159403), (37, 1109503312, 1109503360), (37, 1178847269, 1178847317), (41, 695137206, 695137254), (41, 810993407, 810993455), (41, 926849608, 926849656), (41, 1042705809, 1042705857), (41, 1158562010, 1158562058), (43, 735042215, 735042263), (43, 882050658, 882050706), (43, 1029059101, 1029059149), (43, 1176067544, 1176067592), (47, 688035021, 688035069), (47, 917380028, 917380076), (47, 1146725035, 1146725083)]

def row049_layer018_block000 : List ColouredInterval :=
  [(2, 671088640, 671088688), (2, 738197504, 738197552), (2, 805306368, 805306416), (2, 872415232, 872415280), (2, 939524096, 939524144), (2, 1006632960, 1006633008), (2, 1073741824, 1073741872), (2, 1140850688, 1140850736), (2, 671088640, 671088688), (2, 805306368, 805306416), (2, 939524096, 939524144), (2, 1073741824, 1073741872), (2, 1207959552, 1207959600), (2, 805306368, 805306416), (2, 1073741824, 1073741872), (2, 1073741824, 1073741872)]

def row049_layer018_block001 : List ColouredInterval :=
  [(2, 1073741824, 1073741872), (3, 645700815, 645700863), (3, 688747536, 688747584), (3, 731794257, 731794305), (3, 645700815, 645700863), (3, 774840978, 774841026), (3, 903981141, 903981189), (3, 1033121304, 1033121352), (3, 1162261467, 1162261515), (3, 774840978, 774841026), (3, 1162261467, 1162261515), (3, 1162261467, 1162261515), (5, 634765625, 634765673), (5, 683593750, 683593798), (5, 732421875, 732421923), (5, 781250000, 781250048)]

def row049_layer018_block002 : List ColouredInterval :=
  [(5, 830078125, 830078173), (5, 732421875, 732421923), (5, 976562500, 976562548), (5, 1220703125, 1220703173), (5, 1220703125, 1220703173), (11, 643076643, 643076691), (11, 857435524, 857435572), (11, 1071794405, 1071794453), (13, 627485170, 627485218), (13, 690233687, 690233735), (13, 752982204, 752982252), (13, 815730721, 815730769), (13, 878479238, 878479286), (13, 941227755, 941227803), (13, 1003976272, 1003976320), (13, 1066724789, 1066724837)]

def row049_layer018_block003 : List ColouredInterval :=
  [(13, 815730721, 815730769), (17, 820677346, 820677394), (17, 1231016019, 1231016067), (19, 658642334, 658642382), (19, 705688215, 705688263), (19, 752734096, 752734144), (19, 799779977, 799780025), (19, 893871739, 893871787), (23, 740179445, 740179493), (23, 888215334, 888215382), (23, 1036251223, 1036251271), (23, 1184287112, 1184287160), (29, 1189646642, 1189646690), (31, 887503681, 887503729), (37, 624095613, 624095661), (37, 693439570, 693439618)]

def row049_layer018_block004 : List ColouredInterval :=
  [(37, 762783527, 762783575), (37, 832127484, 832127532), (37, 901471441, 901471489), (37, 970815398, 970815446), (37, 1040159355, 1040159403), (37, 1109503312, 1109503360), (37, 1178847269, 1178847317), (41, 695137206, 695137254), (41, 810993407, 810993455), (41, 926849608, 926849656), (41, 1042705809, 1042705857), (41, 1158562010, 1158562058), (43, 735042215, 735042263), (43, 882050658, 882050706), (43, 1029059101, 1029059149), (43, 1176067544, 1176067592)]

def row049_layer018_block005 : List ColouredInterval :=
  [(47, 688035021, 688035069), (47, 917380028, 917380076), (47, 1146725035, 1146725083)]

def row049_layer018_chunks : List (List ColouredInterval) :=
  [row049_layer018_block000, row049_layer018_block001, row049_layer018_block002, row049_layer018_block003, row049_layer018_block004, row049_layer018_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_arithmetic : LayerArithmeticValid row049.height { lower := 616562688, upper := 1233125376, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_enumeration :
    activePowerIntervalList 49 17 616562688 1233125376 = row049_layer018_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs000 :
    row049_layer018_block000.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs001 :
    row049_layer018_block001.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs002 :
    row049_layer018_block002.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs003 :
    row049_layer018_block003.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs004 :
    row049_layer018_block004.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs005 :
    row049_layer018_block005.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_chunks_eq : row049_layer018_chunks.flatten = row049_layer018_intervals := by
  rfl

theorem row049_layer018_pairs : pairCoverCheck row049_layer018_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer018_chunks_eq
  intro block hblock
  simp only [row049_layer018_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer018_pairs000
  · exact row049_layer018_pairs001
  · exact row049_layer018_pairs002
  · exact row049_layer018_pairs003
  · exact row049_layer018_pairs004
  · exact row049_layer018_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_checked :
    coverLayerCheck row049.height row049.goods { lower := 616562688, upper := 1233125376, M := 17 } = true := by
  exact coverLayerCheck_of_parts row049_layer018_arithmetic row049_layer018_enumeration row049_bounds_eq row049_layer018_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer019_intervals : List ColouredInterval :=
  [(2, 1342177280, 1342177328), (2, 1476395008, 1476395056), (2, 1610612736, 1610612784), (2, 1744830464, 1744830512), (2, 1879048192, 1879048240), (2, 2013265920, 2013265968), (2, 2147483648, 2147483696), (2, 1342177280, 1342177328), (2, 1610612736, 1610612784), (2, 1879048192, 1879048240), (2, 2147483648, 2147483696), (2, 2415919104, 2415919152), (2, 1610612736, 1610612784), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696), (3, 1291401630, 1291401678), (3, 1420541793, 1420541841), (3, 1549681956, 1549682004), (3, 1678822119, 1678822167), (3, 1807962282, 1807962330), (3, 1937102445, 1937102493), (3, 2066242608, 2066242656), (3, 1549681956, 1549682004), (3, 1937102445, 1937102493), (3, 2324522934, 2324522982), (3, 2324522934, 2324522982), (5, 1464843750, 1464843798), (5, 1708984375, 1708984423), (5, 1953125000, 1953125048), (5, 2197265625, 2197265673), (5, 2441406250, 2441406298), (5, 2441406250, 2441406298), (11, 1286153286, 1286153334), (11, 1500512167, 1500512215), (11, 1714871048, 1714871096), (11, 1929229929, 1929229977), (11, 2143588810, 2143588858), (11, 2357947691, 2357947739), (11, 2357947691, 2357947739), (13, 1631461442, 1631461490), (13, 2447192163, 2447192211), (17, 1641354692, 1641354740), (17, 2051693365, 2051693413), (17, 2462032038, 2462032086), (19, 1787743478, 1787743526), (23, 1332323001, 1332323049), (23, 1480358890, 1480358938), (23, 1628394779, 1628394827), (23, 1776430668, 1776430716), (23, 1924466557, 1924466605), (23, 2072502446, 2072502494), (23, 2220538335, 2220538383), (23, 2368574224, 2368574272), (29, 1784469963, 1784470011), (29, 2379293284, 2379293332), (31, 1775007362, 1775007410), (41, 1274418211, 1274418259), (41, 1390274412, 1390274460), (41, 1506130613, 1506130661), (41, 1621986814, 1621986862), (41, 1737843015, 1737843063), (41, 1853699216, 1853699264), (43, 1323075987, 1323076035), (43, 1470084430, 1470084478), (43, 1617092873, 1617092921), (43, 1764101316, 1764101364), (43, 1911109759, 1911109807), (43, 2058118202, 2058118250), (43, 2205126645, 2205126693), (43, 2352135088, 2352135136), (47, 1376070042, 1376070090), (47, 1605415049, 1605415097), (47, 1834760056, 1834760104), (47, 2064105063, 2064105111), (47, 2293450070, 2293450118)]

def row049_layer019_block000 : List ColouredInterval :=
  [(2, 1342177280, 1342177328), (2, 1476395008, 1476395056), (2, 1610612736, 1610612784), (2, 1744830464, 1744830512), (2, 1879048192, 1879048240), (2, 2013265920, 2013265968), (2, 2147483648, 2147483696), (2, 1342177280, 1342177328), (2, 1610612736, 1610612784), (2, 1879048192, 1879048240), (2, 2147483648, 2147483696), (2, 2415919104, 2415919152), (2, 1610612736, 1610612784), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696)]

def row049_layer019_block001 : List ColouredInterval :=
  [(3, 1291401630, 1291401678), (3, 1420541793, 1420541841), (3, 1549681956, 1549682004), (3, 1678822119, 1678822167), (3, 1807962282, 1807962330), (3, 1937102445, 1937102493), (3, 2066242608, 2066242656), (3, 1549681956, 1549682004), (3, 1937102445, 1937102493), (3, 2324522934, 2324522982), (3, 2324522934, 2324522982), (5, 1464843750, 1464843798), (5, 1708984375, 1708984423), (5, 1953125000, 1953125048), (5, 2197265625, 2197265673), (5, 2441406250, 2441406298)]

def row049_layer019_block002 : List ColouredInterval :=
  [(5, 2441406250, 2441406298), (11, 1286153286, 1286153334), (11, 1500512167, 1500512215), (11, 1714871048, 1714871096), (11, 1929229929, 1929229977), (11, 2143588810, 2143588858), (11, 2357947691, 2357947739), (11, 2357947691, 2357947739), (13, 1631461442, 1631461490), (13, 2447192163, 2447192211), (17, 1641354692, 1641354740), (17, 2051693365, 2051693413), (17, 2462032038, 2462032086), (19, 1787743478, 1787743526), (23, 1332323001, 1332323049), (23, 1480358890, 1480358938)]

def row049_layer019_block003 : List ColouredInterval :=
  [(23, 1628394779, 1628394827), (23, 1776430668, 1776430716), (23, 1924466557, 1924466605), (23, 2072502446, 2072502494), (23, 2220538335, 2220538383), (23, 2368574224, 2368574272), (29, 1784469963, 1784470011), (29, 2379293284, 2379293332), (31, 1775007362, 1775007410), (41, 1274418211, 1274418259), (41, 1390274412, 1390274460), (41, 1506130613, 1506130661), (41, 1621986814, 1621986862), (41, 1737843015, 1737843063), (41, 1853699216, 1853699264), (43, 1323075987, 1323076035)]

def row049_layer019_block004 : List ColouredInterval :=
  [(43, 1470084430, 1470084478), (43, 1617092873, 1617092921), (43, 1764101316, 1764101364), (43, 1911109759, 1911109807), (43, 2058118202, 2058118250), (43, 2205126645, 2205126693), (43, 2352135088, 2352135136), (47, 1376070042, 1376070090), (47, 1605415049, 1605415097), (47, 1834760056, 1834760104), (47, 2064105063, 2064105111), (47, 2293450070, 2293450118)]

def row049_layer019_chunks : List (List ColouredInterval) :=
  [row049_layer019_block000, row049_layer019_block001, row049_layer019_block002, row049_layer019_block003, row049_layer019_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_arithmetic : LayerArithmeticValid row049.height { lower := 1233125376, upper := 2466250752, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_enumeration :
    activePowerIntervalList 49 16 1233125376 2466250752 = row049_layer019_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs000 :
    row049_layer019_block000.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs001 :
    row049_layer019_block001.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs002 :
    row049_layer019_block002.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs003 :
    row049_layer019_block003.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs004 :
    row049_layer019_block004.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_chunks_eq : row049_layer019_chunks.flatten = row049_layer019_intervals := by
  rfl

theorem row049_layer019_pairs : pairCoverCheck row049_layer019_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer019_chunks_eq
  intro block hblock
  simp only [row049_layer019_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row049_layer019_pairs000
  · exact row049_layer019_pairs001
  · exact row049_layer019_pairs002
  · exact row049_layer019_pairs003
  · exact row049_layer019_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_checked :
    coverLayerCheck row049.height row049.goods { lower := 1233125376, upper := 2466250752, M := 16 } = true := by
  exact coverLayerCheck_of_parts row049_layer019_arithmetic row049_layer019_enumeration row049_bounds_eq row049_layer019_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer020_checked :
    coverLayerCheck row049.height row049.goods { lower := 2466250752, upper := 4932501504, M := 15 } = true := by
  decide +kernel

theorem row049_layer021_checked :
    coverLayerCheck row049.height row049.goods { lower := 4932501504, upper := 9865003008, M := 15 } = true := by
  decide +kernel

theorem row049_layer022_checked :
    coverLayerCheck row049.height row049.goods { lower := 9865003008, upper := 19730006016, M := 14 } = true := by
  decide +kernel

theorem row049_layer023_checked :
    coverLayerCheck row049.height row049.goods { lower := 19730006016, upper := 39460012032, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer024_checked :
    coverLayerCheck row049.height row049.goods { lower := 39460012032, upper := 78920024064, M := 13 } = true := by
  decide +kernel

theorem row049_layer025_checked :
    coverLayerCheck row049.height row049.goods { lower := 78920024064, upper := 157840048128, M := 12 } = true := by
  decide +kernel

theorem row049_layer026_checked :
    coverLayerCheck row049.height row049.goods { lower := 157840048128, upper := 315680096256, M := 11 } = true := by
  decide +kernel

theorem row049_layer027_checked :
    coverLayerCheck row049.height row049.goods { lower := 315680096256, upper := 631360192512, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer028_checked :
    coverLayerCheck row049.height row049.goods { lower := 631360192512, upper := 1262720385024, M := 10 } = true := by
  decide +kernel

theorem row049_layer029_checked :
    coverLayerCheck row049.height row049.goods { lower := 1262720385024, upper := 2525440770048, M := 10 } = true := by
  decide +kernel

theorem row049_layer030_checked :
    coverLayerCheck row049.height row049.goods { lower := 2525440770048, upper := 5050881540096, M := 9 } = true := by
  decide +kernel

theorem row049_layer031_checked :
    coverLayerCheck row049.height row049.goods { lower := 5050881540096, upper := 10101763080192, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer032_checked :
    coverLayerCheck row049.height row049.goods { lower := 10101763080192, upper := 20203526160384, M := 9 } = true := by
  decide +kernel

theorem row049_layer033_checked :
    coverLayerCheck row049.height row049.goods { lower := 20203526160384, upper := 40407052320768, M := 8 } = true := by
  decide +kernel

theorem row049_layer034_checked :
    coverLayerCheck row049.height row049.goods { lower := 40407052320768, upper := 80814104641536, M := 8 } = true := by
  decide +kernel

theorem row049_layer035_checked :
    coverLayerCheck row049.height row049.goods { lower := 80814104641536, upper := 161628209283072, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer036_checked :
    coverLayerCheck row049.height row049.goods { lower := 161628209283072, upper := 323256418566144, M := 7 } = true := by
  decide +kernel

theorem row049_layer037_checked :
    coverLayerCheck row049.height row049.goods { lower := 323256418566144, upper := 646512837132288, M := 7 } = true := by
  decide +kernel

theorem row049_layer038_checked :
    coverLayerCheck row049.height row049.goods { lower := 646512837132288, upper := 1293025674264576, M := 7 } = true := by
  decide +kernel

theorem row049_layer039_checked :
    coverLayerCheck row049.height row049.goods { lower := 1293025674264576, upper := 2586051348529152, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer039_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer040_checked :
    coverLayerCheck row049.height row049.goods { lower := 2586051348529152, upper := 5172102697058304, M := 6 } = true := by
  decide +kernel

theorem row049_layer041_checked :
    coverLayerCheck row049.height row049.goods { lower := 5172102697058304, upper := 10344205394116608, M := 6 } = true := by
  decide +kernel

theorem row049_layer042_checked :
    coverLayerCheck row049.height row049.goods { lower := 10344205394116608, upper := 20688410788233216, M := 5 } = true := by
  decide +kernel

theorem row049_layer043_checked :
    coverLayerCheck row049.height row049.goods { lower := 20688410788233216, upper := 41376821576466432, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer043_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer044_checked :
    coverLayerCheck row049.height row049.goods { lower := 41376821576466432, upper := 82753643152932864, M := 5 } = true := by
  decide +kernel

theorem row049_layer045_checked :
    coverLayerCheck row049.height row049.goods { lower := 82753643152932864, upper := 165507286305865728, M := 5 } = true := by
  decide +kernel

theorem row049_layer046_checked :
    coverLayerCheck row049.height row049.goods { lower := 165507286305865728, upper := 331014572611731456, M := 5 } = true := by
  decide +kernel

theorem row049_layer047_checked :
    coverLayerCheck row049.height row049.goods { lower := 331014572611731456, upper := 662029145223462912, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer048_checked :
    coverLayerCheck row049.height row049.goods { lower := 662029145223462912, upper := 1324058290446925824, M := 4 } = true := by
  decide +kernel

theorem row049_layer049_checked :
    coverLayerCheck row049.height row049.goods { lower := 1324058290446925824, upper := 2648116580893851648, M := 4 } = true := by
  decide +kernel

theorem row049_layer050_checked :
    coverLayerCheck row049.height row049.goods { lower := 2648116580893851648, upper := 5296233161787703296, M := 4 } = true := by
  decide +kernel

theorem row049_layer051_checked :
    coverLayerCheck row049.height row049.goods { lower := 5296233161787703296, upper := 10592466323575406592, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer051_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer052_checked :
    coverLayerCheck row049.height row049.goods { lower := 10592466323575406592, upper := 21184932647150813184, M := 4 } = true := by
  decide +kernel

theorem row049_layer053_checked :
    coverLayerCheck row049.height row049.goods { lower := 21184932647150813184, upper := 42369865294301626368, M := 3 } = true := by
  decide +kernel

theorem row049_layer054_checked :
    coverLayerCheck row049.height row049.goods { lower := 42369865294301626368, upper := 84739730588603252736, M := 3 } = true := by
  decide +kernel

theorem row049_layer055_checked :
    coverLayerCheck row049.height row049.goods { lower := 84739730588603252736, upper := 169479461177206505472, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer055_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer056_checked :
    coverLayerCheck row049.height row049.goods { lower := 169479461177206505472, upper := 338958922354413010944, M := 3 } = true := by
  decide +kernel

theorem row049_layer057_checked :
    coverLayerCheck row049.height row049.goods { lower := 338958922354413010944, upper := 677917844708826021888, M := 3 } = true := by
  decide +kernel

theorem row049_layer058_checked :
    coverLayerCheck row049.height row049.goods { lower := 677917844708826021888, upper := 1355835689417652043776, M := 3 } = true := by
  decide +kernel

theorem row049_layer059_checked :
    coverLayerCheck row049.height row049.goods { lower := 1355835689417652043776, upper := 2711671378835304087552, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer059_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer060_checked :
    coverLayerCheck row049.height row049.goods { lower := 2711671378835304087552, upper := 5423342757670608175104, M := 3 } = true := by
  decide +kernel

theorem row049_layer061_checked :
    coverLayerCheck row049.height row049.goods { lower := 5423342757670608175104, upper := 10846685515341216350208, M := 2 } = true := by
  decide +kernel

theorem row049_layer062_checked :
    coverLayerCheck row049.height row049.goods { lower := 10846685515341216350208, upper := 21693371030682432700416, M := 2 } = true := by
  decide +kernel

theorem row049_layer063_checked :
    coverLayerCheck row049.height row049.goods { lower := 21693371030682432700416, upper := 43386742061364865400832, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer064_checked :
    coverLayerCheck row049.height row049.goods { lower := 43386742061364865400832, upper := 86773484122729730801664, M := 2 } = true := by
  decide +kernel

theorem row049_layer065_checked :
    coverLayerCheck row049.height row049.goods { lower := 86773484122729730801664, upper := 173546968245459461603328, M := 2 } = true := by
  decide +kernel

theorem row049_layer066_checked :
    coverLayerCheck row049.height row049.goods { lower := 173546968245459461603328, upper := 347093936490918923206656, M := 2 } = true := by
  decide +kernel

theorem row049_layer067_checked :
    coverLayerCheck row049.height row049.goods { lower := 347093936490918923206656, upper := 694187872981837846413312, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer067_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer068_checked :
    coverLayerCheck row049.height row049.goods { lower := 694187872981837846413312, upper := 1388375745963675692826624, M := 2 } = true := by
  decide +kernel

theorem row049_layer069_checked :
    coverLayerCheck row049.height row049.goods { lower := 1388375745963675692826624, upper := 2776751491927351385653248, M := 2 } = true := by
  decide +kernel

theorem row049_layer070_checked :
    coverLayerCheck row049.height row049.goods { lower := 2776751491927351385653248, upper := 5553502983854702771306496, M := 2 } = true := by
  decide +kernel

theorem row049_layer071_checked :
    coverLayerCheck row049.height row049.goods { lower := 5553502983854702771306496, upper := 11107005967709405542612992, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer071_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer072_checked :
    coverLayerCheck row049.height row049.goods { lower := 11107005967709405542612992, upper := 22214011935418811085225984, M := 2 } = true := by
  decide +kernel

theorem row049_layer073_checked :
    coverLayerCheck row049.height row049.goods { lower := 22214011935418811085225984, upper := 44428023870837622170451968, M := 2 } = true := by
  decide +kernel

theorem row049_layer074_checked :
    coverLayerCheck row049.height row049.goods { lower := 44428023870837622170451968, upper := 88856047741675244340903936, M := 2 } = true := by
  decide +kernel

theorem row049_layer075_checked :
    coverLayerCheck row049.height row049.goods { lower := 88856047741675244340903936, upper := 100000000000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer075_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layers_checked :
    row049.layers.all (coverLayerCheck row049.height row049.goods) = true := by
  change row049_layers.all (coverLayerCheck row049.height row049.goods) = true
  simp only [row049_layers, List.all_cons, List.all_nil,
    row049_layer000_checked,
    row049_layer001_checked,
    row049_layer002_checked,
    row049_layer003_checked,
    row049_layer004_checked,
    row049_layer005_checked,
    row049_layer006_checked,
    row049_layer007_checked,
    row049_layer008_checked,
    row049_layer009_checked,
    row049_layer010_checked,
    row049_layer011_checked,
    row049_layer012_checked,
    row049_layer013_checked,
    row049_layer014_checked,
    row049_layer015_checked,
    row049_layer016_checked,
    row049_layer017_checked,
    row049_layer018_checked,
    row049_layer019_checked,
    row049_layer020_checked,
    row049_layer021_checked,
    row049_layer022_checked,
    row049_layer023_checked,
    row049_layer024_checked,
    row049_layer025_checked,
    row049_layer026_checked,
    row049_layer027_checked,
    row049_layer028_checked,
    row049_layer029_checked,
    row049_layer030_checked,
    row049_layer031_checked,
    row049_layer032_checked,
    row049_layer033_checked,
    row049_layer034_checked,
    row049_layer035_checked,
    row049_layer036_checked,
    row049_layer037_checked,
    row049_layer038_checked,
    row049_layer039_checked,
    row049_layer040_checked,
    row049_layer041_checked,
    row049_layer042_checked,
    row049_layer043_checked,
    row049_layer044_checked,
    row049_layer045_checked,
    row049_layer046_checked,
    row049_layer047_checked,
    row049_layer048_checked,
    row049_layer049_checked,
    row049_layer050_checked,
    row049_layer051_checked,
    row049_layer052_checked,
    row049_layer053_checked,
    row049_layer054_checked,
    row049_layer055_checked,
    row049_layer056_checked,
    row049_layer057_checked,
    row049_layer058_checked,
    row049_layer059_checked,
    row049_layer060_checked,
    row049_layer061_checked,
    row049_layer062_checked,
    row049_layer063_checked,
    row049_layer064_checked,
    row049_layer065_checked,
    row049_layer066_checked,
    row049_layer067_checked,
    row049_layer068_checked,
    row049_layer069_checked,
    row049_layer070_checked,
    row049_layer071_checked,
    row049_layer072_checked,
    row049_layer073_checked,
    row049_layer074_checked,
    row049_layer075_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_checked : finiteCoverRowCheck row049 = true := by
  simp only [finiteCoverRowCheck, row049_registered, row049_goods_checked,
    row049_small_checked, row049_layerCover_checked, row049_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i049 :
    ∀ n j : ℕ, 1 ≤ 49 ∧ 49 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 49 ≤ p ∧ p ∣ Nat.choose n 49 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row049_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i049
