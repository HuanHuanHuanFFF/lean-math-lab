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
