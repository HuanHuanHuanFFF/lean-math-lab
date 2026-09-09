import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row049_registered :
    decide (row049.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row049_goods_checked :
    row049.goods.all (goodSegmentCheck row049.height.i row049.height.r row049.height.s) = true := by
  decide +kernel

theorem row049_small_checked :
    coverCheck (2 * row049.height.i + 2) (row049.height.i * (row049.height.i - 1) - 1)
      (row049.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row049_layerCover_checked :
    coverCheck (row049.height.i * (row049.height.i - 1)) (row049.height.n0 - 1)
      (row049.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row049_layer000_checked :
    coverLayerCheck row049.height row049.goods { lower := 2352, upper := 4704, M := 40 } = true := by
  decide +kernel

theorem row049_layer001_checked :
    coverLayerCheck row049.height row049.goods { lower := 4704, upper := 9408, M := 38 } = true := by
  decide +kernel

theorem row049_layer002_checked :
    coverLayerCheck row049.height row049.goods { lower := 9408, upper := 18816, M := 36 } = true := by
  decide +kernel

theorem row049_layer003_checked :
    coverLayerCheck row049.height row049.goods { lower := 18816, upper := 37632, M := 35 } = true := by
  decide +kernel

theorem row049_layer004_checked :
    coverLayerCheck row049.height row049.goods { lower := 37632, upper := 75264, M := 33 } = true := by
  decide +kernel

theorem row049_layer005_checked :
    coverLayerCheck row049.height row049.goods { lower := 75264, upper := 150528, M := 31 } = true := by
  decide +kernel

theorem row049_layer006_checked :
    coverLayerCheck row049.height row049.goods { lower := 150528, upper := 301056, M := 30 } = true := by
  decide +kernel

theorem row049_layer007_checked :
    coverLayerCheck row049.height row049.goods { lower := 301056, upper := 602112, M := 29 } = true := by
  decide +kernel

theorem row049_layer008_checked :
    coverLayerCheck row049.height row049.goods { lower := 602112, upper := 1204224, M := 27 } = true := by
  decide +kernel

theorem row049_layer009_checked :
    coverLayerCheck row049.height row049.goods { lower := 1204224, upper := 2408448, M := 26 } = true := by
  decide +kernel

theorem row049_layer010_checked :
    coverLayerCheck row049.height row049.goods { lower := 2408448, upper := 4816896, M := 25 } = true := by
  decide +kernel

theorem row049_layer011_checked :
    coverLayerCheck row049.height row049.goods { lower := 4816896, upper := 9633792, M := 23 } = true := by
  decide +kernel

theorem row049_layer012_checked :
    coverLayerCheck row049.height row049.goods { lower := 9633792, upper := 19267584, M := 22 } = true := by
  decide +kernel

theorem row049_layer013_checked :
    coverLayerCheck row049.height row049.goods { lower := 19267584, upper := 38535168, M := 21 } = true := by
  decide +kernel

theorem row049_layer014_checked :
    coverLayerCheck row049.height row049.goods { lower := 38535168, upper := 77070336, M := 20 } = true := by
  decide +kernel

theorem row049_layer015_checked :
    coverLayerCheck row049.height row049.goods { lower := 77070336, upper := 154140672, M := 19 } = true := by
  decide +kernel

theorem row049_layer016_checked :
    coverLayerCheck row049.height row049.goods { lower := 154140672, upper := 308281344, M := 18 } = true := by
  decide +kernel

theorem row049_layer017_checked :
    coverLayerCheck row049.height row049.goods { lower := 308281344, upper := 616562688, M := 18 } = true := by
  decide +kernel

theorem row049_layer018_checked :
    coverLayerCheck row049.height row049.goods { lower := 616562688, upper := 1233125376, M := 17 } = true := by
  decide +kernel

theorem row049_layer019_checked :
    coverLayerCheck row049.height row049.goods { lower := 1233125376, upper := 2466250752, M := 16 } = true := by
  decide +kernel

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

theorem row049_layers_checked :
    row049.layers.all (coverLayerCheck row049.height row049.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row049.height row049.goods) = true
  simp only [List.all_cons, List.all_nil,
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
    row049_layer075_checked,
    Bool.true_and]

theorem row049_checked : finiteCoverRowCheck row049 = true := by
  simp only [finiteCoverRowCheck, row049_registered, row049_goods_checked,
    row049_small_checked, row049_layerCover_checked, row049_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row049_checked

end B699LowIndex
