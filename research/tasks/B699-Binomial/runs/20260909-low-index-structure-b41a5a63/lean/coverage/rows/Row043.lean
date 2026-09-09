import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row043_height : HeightCertificateDatum := { i := 43, r := 14, s := 29, n0Power10 := 22 }

def row043_goods : List GoodSegment := [
  { lower := 88, upper := 125, witness := RowWitness.topPrime 83 },
  { lower := 126, upper := 155, witness := RowWitness.topPrime 113 },
  { lower := 156, upper := 193, witness := RowWitness.topPrime 151 },
  { lower := 194, upper := 235, witness := RowWitness.topPrime 193 },
  { lower := 236, upper := 275, witness := RowWitness.topPrime 233 },
  { lower := 276, upper := 313, witness := RowWitness.topPrime 271 },
  { lower := 314, upper := 355, witness := RowWitness.topPrime 313 },
  { lower := 356, upper := 395, witness := RowWitness.topPrime 353 },
  { lower := 396, upper := 431, witness := RowWitness.topPrime 389 },
  { lower := 432, upper := 473, witness := RowWitness.topPrime 431 },
  { lower := 474, upper := 509, witness := RowWitness.topPrime 467 },
  { lower := 510, upper := 551, witness := RowWitness.topPrime 509 },
  { lower := 552, upper := 589, witness := RowWitness.topPrime 547 },
  { lower := 590, upper := 629, witness := RowWitness.topPrime 587 },
  { lower := 630, upper := 661, witness := RowWitness.topPrime 619 },
  { lower := 662, upper := 703, witness := RowWitness.topPrime 661 },
  { lower := 704, upper := 743, witness := RowWitness.topPrime 701 },
  { lower := 744, upper := 785, witness := RowWitness.topPrime 743 },
  { lower := 786, upper := 815, witness := RowWitness.topPrime 773 },
  { lower := 816, upper := 853, witness := RowWitness.topPrime 811 },
  { lower := 854, upper := 895, witness := RowWitness.topPrime 853 },
  { lower := 896, upper := 929, witness := RowWitness.topPrime 887 },
  { lower := 930, upper := 971, witness := RowWitness.topPrime 929 },
  { lower := 972, upper := 1013, witness := RowWitness.topPrime 971 },
  { lower := 1014, upper := 1055, witness := RowWitness.topPrime 1013 },
  { lower := 1056, upper := 1093, witness := RowWitness.topPrime 1051 },
  { lower := 1094, upper := 1135, witness := RowWitness.topPrime 1093 },
  { lower := 1136, upper := 1171, witness := RowWitness.topPrime 1129 },
  { lower := 1172, upper := 1213, witness := RowWitness.topPrime 1171 },
  { lower := 1214, upper := 1255, witness := RowWitness.topPrime 1213 },
  { lower := 1256, upper := 1291, witness := RowWitness.topPrime 1249 },
  { lower := 1292, upper := 1333, witness := RowWitness.topPrime 1291 },
  { lower := 1334, upper := 1369, witness := RowWitness.topPrime 1327 },
  { lower := 1370, upper := 1409, witness := RowWitness.topPrime 1367 },
  { lower := 1410, upper := 1451, witness := RowWitness.topPrime 1409 },
  { lower := 1452, upper := 1493, witness := RowWitness.topPrime 1451 },
  { lower := 1494, upper := 1535, witness := RowWitness.topPrime 1493 },
  { lower := 1536, upper := 1573, witness := RowWitness.topPrime 1531 },
  { lower := 1574, upper := 1613, witness := RowWitness.topPrime 1571 },
  { lower := 1614, upper := 1655, witness := RowWitness.topPrime 1613 },
  { lower := 1656, upper := 1679, witness := RowWitness.topPrime 1637 },
  { lower := 1680, upper := 1711, witness := RowWitness.topPrime 1669 },
  { lower := 1712, upper := 1751, witness := RowWitness.topPrime 1709 },
  { lower := 1752, upper := 1789, witness := RowWitness.topPrime 1747 },
  { lower := 1790, upper := 1831, witness := RowWitness.topPrime 1789 },
  { lower := 1832, upper := 1847, witness := RowWitness.topPrime 1831 },
  { lower := 1856, upper := 1857, witness := RowWitness.topPrime 1847 },
  { lower := 1859, upper := 1889, witness := RowWitness.topPrime 1847 },
  { lower := 1890, upper := 1905, witness := RowWitness.topPrime 1889 },
  { lower := 1922, upper := 1955, witness := RowWitness.topPrime 1913 },
  { lower := 1956, upper := 1978, witness := RowWitness.topPrime 1951 },
  { lower := 1984, upper := 1986, witness := RowWitness.topPrime 1979 },
  { lower := 2000, upper := 2041, witness := RowWitness.topPrime 1999 },
  { lower := 2042, upper := 2081, witness := RowWitness.topPrime 2039 },
  { lower := 2082, upper := 2099, witness := RowWitness.topPrime 2081 },
  { lower := 2112, upper := 2153, witness := RowWitness.topPrime 2111 },
  { lower := 2154, upper := 2158, witness := RowWitness.topPrime 2153 },
  { lower := 2166, upper := 2167, witness := RowWitness.topPrime 2161 },
  { lower := 2176, upper := 2203, witness := RowWitness.topPrime 2161 },
  { lower := 2204, upper := 2229, witness := RowWitness.topPrime 2203 },
  { lower := 2250, upper := 2285, witness := RowWitness.topPrime 2243 },
  { lower := 2286, upper := 2292, witness := RowWitness.topPrime 2281 },
  { lower := 2299, upper := 2339, witness := RowWitness.topPrime 2297 },
  { lower := 2340, upper := 2346, witness := RowWitness.topPrime 2339 },
  { lower := 2349, upper := 2354, witness := RowWitness.topPrime 2347 },
  { lower := 2366, upper := 2399, witness := RowWitness.topPrime 2357 },
  { lower := 2400, upper := 2417, witness := RowWitness.topPrime 2399 },
  { lower := 2420, upper := 2459, witness := RowWitness.topPrime 2417 },
  { lower := 2460, upper := 2472, witness := RowWitness.topPrime 2459 },
  { lower := 2511, upper := 2545, witness := RowWitness.topPrime 2503 },
  { lower := 2546, upper := 2583, witness := RowWitness.topPrime 2543 },
  { lower := 2592, upper := 2633, witness := RowWitness.topPrime 2591 },
  { lower := 2634, upper := 2643, witness := RowWitness.topPrime 2633 },
  { lower := 2645, upper := 2675, witness := RowWitness.topPrime 2633 },
  { lower := 2676, upper := 2713, witness := RowWitness.topPrime 2671 },
  { lower := 2714, upper := 2730, witness := RowWitness.topPrime 2713 },
  { lower := 2738, upper := 2773, witness := RowWitness.topPrime 2731 },
  { lower := 2774, upper := 2796, witness := RowWitness.topPrime 2767 },
  { lower := 2816, upper := 2825, witness := RowWitness.topPrime 2803 },
  { lower := 2835, upper := 2858, witness := RowWitness.topPrime 2833 },
  { lower := 2873, upper := 2903, witness := RowWitness.topPrime 2861 },
  { lower := 2904, upper := 2945, witness := RowWitness.topPrime 2903 },
  { lower := 2946, upper := 2958, witness := RowWitness.topPrime 2939 },
  { lower := 3025, upper := 3065, witness := RowWitness.topPrime 3023 },
  { lower := 3066, upper := 3067, witness := RowWitness.topPrime 3061 },
  { lower := 3072, upper := 3084, witness := RowWitness.topPrime 3067 },
  { lower := 3087, upper := 3114, witness := RowWitness.topPrime 3083 },
  { lower := 3125, upper := 3129, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3179, witness := RowWitness.topPrime 3137 },
  { lower := 3180, upper := 3211, witness := RowWitness.topPrime 3169 },
  { lower := 3212, upper := 3242, witness := RowWitness.topPrime 3209 },
  { lower := 3249, upper := 3271, witness := RowWitness.topPrime 3229 },
  { lower := 3272, upper := 3292, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3403, witness := RowWitness.topPrime 3361 },
  { lower := 3404, upper := 3433, witness := RowWitness.topPrime 3391 },
  { lower := 3434, upper := 3444, witness := RowWitness.topPrime 3433 },
  { lower := 3456, upper := 3491, witness := RowWitness.topPrime 3449 },
  { lower := 3492, upper := 3498, witness := RowWitness.topPrime 3491 },
  { lower := 3500, upper := 3541, witness := RowWitness.topPrime 3499 },
  { lower := 3542, upper := 3542, witness := RowWitness.topPrime 3541 },
  { lower := 3549, upper := 3551, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3591, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3649, witness := RowWitness.topPrime 3607 },
  { lower := 3650, upper := 3672, witness := RowWitness.topPrime 3643 },
  { lower := 3712, upper := 3751, witness := RowWitness.topPrime 3709 },
  { lower := 3752, upper := 3781, witness := RowWitness.topPrime 3739 },
  { lower := 3782, upper := 3799, witness := RowWitness.topPrime 3779 },
  { lower := 3844, upper := 3875, witness := RowWitness.topPrime 3833 },
  { lower := 3876, upper := 3905, witness := RowWitness.topPrime 3863 },
  { lower := 3906, upper := 3929, witness := RowWitness.topPrime 3889 },
  { lower := 3971, upper := 4009, witness := RowWitness.topPrime 3967 },
  { lower := 4010, upper := 4035, witness := RowWitness.topPrime 4007 },
  { lower := 4056, upper := 4088, witness := RowWitness.topPrime 4051 },
  { lower := 4096, upper := 4098, witness := RowWitness.topPrime 4093 },
  { lower := 4107, upper := 4141, witness := RowWitness.topPrime 4099 },
  { lower := 4142, upper := 4167, witness := RowWitness.topPrime 4139 },
  { lower := 4224, upper := 4261, witness := RowWitness.topPrime 4219 },
  { lower := 4262, upper := 4267, witness := RowWitness.topPrime 4261 },
  { lower := 4335, upper := 4369, witness := RowWitness.topPrime 4327 },
  { lower := 4370, upper := 4405, witness := RowWitness.topPrime 4363 },
  { lower := 4406, upper := 4417, witness := RowWitness.topPrime 4397 },
  { lower := 4617, upper := 4645, witness := RowWitness.topPrime 4603 },
  { lower := 4646, upper := 4659, witness := RowWitness.topPrime 4643 },
  { lower := 4732, upper := 4735, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4774, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4803, witness := RowWitness.topPrime 4801 },
  { lower := 4805, upper := 4843, witness := RowWitness.topPrime 4801 },
  { lower := 4844, upper := 4844, witness := RowWitness.topPrime 4831 },
  { lower := 4864, upper := 4903, witness := RowWitness.topPrime 4861 },
  { lower := 4904, upper := 4906, witness := RowWitness.topPrime 4903 },
  { lower := 4913, upper := 4943, witness := RowWitness.topPrime 4909 },
  { lower := 5046, upper := 5081, witness := RowWitness.topPrime 5039 },
  { lower := 5082, upper := 5096, witness := RowWitness.topPrime 5081 },
  { lower := 5103, upper := 5112, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5161, witness := RowWitness.topPrime 5119 },
  { lower := 5162, upper := 5162, witness := RowWitness.topPrime 5153 },
  { lower := 5239, upper := 5244, witness := RowWitness.topPrime 5237 },
  { lower := 5324, upper := 5332, witness := RowWitness.topPrime 5323 },
  { lower := 5346, upper := 5366, witness := RowWitness.topPrime 5333 },
  { lower := 5376, upper := 5388, witness := RowWitness.topPrime 5351 },
  { lower := 5408, upper := 5449, witness := RowWitness.topPrime 5407 },
  { lower := 5450, upper := 5450, witness := RowWitness.topPrime 5449 },
  { lower := 5488, upper := 5525, witness := RowWitness.topPrime 5483 },
  { lower := 5526, upper := 5530, witness := RowWitness.topPrime 5521 },
  { lower := 5589, upper := 5619, witness := RowWitness.topPrime 5581 },
  { lower := 5625, upper := 5665, witness := RowWitness.topPrime 5623 },
  { lower := 5666, upper := 5667, witness := RowWitness.topPrime 5659 },
  { lower := 5776, upper := 5791, witness := RowWitness.topPrime 5749 },
  { lower := 5792, upper := 5822, witness := RowWitness.topPrime 5791 },
  { lower := 5831, upper := 5869, witness := RowWitness.topPrime 5827 },
  { lower := 5870, upper := 5873, witness := RowWitness.topPrime 5869 },
  { lower := 5888, upper := 5923, witness := RowWitness.topPrime 5881 },
  { lower := 5924, upper := 5929, witness := RowWitness.topPrime 5923 },
  { lower := 6075, upper := 6111, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6185, witness := RowWitness.topPrime 6143 },
  { lower := 6186, upper := 6186, witness := RowWitness.topPrime 6173 },
  { lower := 6348, upper := 6385, witness := RowWitness.topPrime 6343 },
  { lower := 6386, upper := 6390, witness := RowWitness.topPrime 6379 },
  { lower := 6400, upper := 6400, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6533, witness := RowWitness.topPrime 6491 },
  { lower := 6534, upper := 6540, witness := RowWitness.topPrime 6529 },
  { lower := 6591, upper := 6603, witness := RowWitness.topPrime 6581 },
  { lower := 6655, upper := 6695, witness := RowWitness.topPrime 6653 },
  { lower := 6696, upper := 6697, witness := RowWitness.topPrime 6691 },
  { lower := 6727, upper := 6761, witness := RowWitness.topPrime 6719 },
  { lower := 6762, upper := 6769, witness := RowWitness.topPrime 6761 },
  { lower := 6845, upper := 6846, witness := RowWitness.topPrime 6841 },
  { lower := 6859, upper := 6899, witness := RowWitness.topPrime 6857 },
  { lower := 6900, upper := 6919, witness := RowWitness.topPrime 6899 },
  { lower := 6936, upper := 6954, witness := RowWitness.topPrime 6917 },
  { lower := 7203, upper := 7210, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7261, witness := RowWitness.topPrime 7219 },
  { lower := 7262, upper := 7262, witness := RowWitness.topPrime 7253 },
  { lower := 7424, upper := 7448, witness := RowWitness.topPrime 7417 },
  { lower := 7514, upper := 7549, witness := RowWitness.topPrime 7507 },
  { lower := 7550, upper := 7591, witness := RowWitness.topPrime 7549 },
  { lower := 7592, upper := 7611, witness := RowWitness.topPrime 7591 },
  { lower := 7688, upper := 7722, witness := RowWitness.topPrime 7687 },
  { lower := 7936, upper := 7975, witness := RowWitness.topPrime 7933 },
  { lower := 7976, upper := 7978, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8028, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8134, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8251, witness := RowWitness.topPrime 8209 },
  { lower := 8252, upper := 8256, witness := RowWitness.topPrime 8243 },
  { lower := 8405, upper := 8431, witness := RowWitness.topPrime 8389 },
  { lower := 8432, upper := 8447, witness := RowWitness.topPrime 8431 },
  { lower := 8664, upper := 8705, witness := RowWitness.topPrime 8663 },
  { lower := 8706, upper := 8712, witness := RowWitness.topPrime 8699 },
  { lower := 8750, upper := 8789, witness := RowWitness.topPrime 8747 },
  { lower := 8790, upper := 8792, witness := RowWitness.topPrime 8783 },
  { lower := 8959, upper := 8960, witness := RowWitness.topPrime 8951 },
  { lower := 8993, upper := 9001, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9035, witness := RowWitness.topPrime 9013 },
  { lower := 9251, upper := 9258, witness := RowWitness.topPrime 9241 },
  { lower := 9261, upper := 9293, witness := RowWitness.topPrime 9257 },
  { lower := 9386, upper := 9417, witness := RowWitness.topPrime 9377 },
  { lower := 9604, upper := 9643, witness := RowWitness.topPrime 9601 },
  { lower := 9644, upper := 9646, witness := RowWitness.topPrime 9643 },
  { lower := 9747, upper := 9770, witness := RowWitness.topPrime 9743 },
  { lower := 10086, upper := 10121, witness := RowWitness.topPrime 10079 },
  { lower := 10122, upper := 10134, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10248, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10609, witness := RowWitness.topPrime 10567 },
  { lower := 10610, upper := 10613, witness := RowWitness.topPrime 10607 },
  { lower := 10633, upper := 10673, witness := RowWitness.topPrime 10631 },
  { lower := 10674, upper := 10675, witness := RowWitness.topPrime 10667 },
  { lower := 10935, upper := 10951, witness := RowWitness.topPrime 10909 },
  { lower := 10952, upper := 10977, witness := RowWitness.topPrime 10949 },
  { lower := 10985, upper := 10994, witness := RowWitness.topPrime 10979 },
  { lower := 11264, upper := 11292, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11680, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11785, witness := RowWitness.topPrime 11743 },
  { lower := 11786, upper := 11816, witness := RowWitness.topPrime 11783 },
  { lower := 12005, upper := 12021, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12330, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12535, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13163, witness := RowWitness.topPrime 13121 },
  { lower := 13164, upper := 13164, witness := RowWitness.topPrime 13163 },
  { lower := 13312, upper := 13351, witness := RowWitness.topPrime 13309 },
  { lower := 13352, upper := 13352, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13493, witness := RowWitness.topPrime 13451 },
  { lower := 13494, upper := 13496, witness := RowWitness.topPrime 13487 },
  { lower := 13718, upper := 13732, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13771, witness := RowWitness.topPrime 13729 },
  { lower := 13772, upper := 13792, witness := RowWitness.topPrime 13763 },
  { lower := 13851, upper := 13866, witness := RowWitness.topPrime 13841 },
  { lower := 14297, upper := 14325, witness := RowWitness.topPrime 14293 },
  { lower := 14336, upper := 14339, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14378, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14443, witness := RowWitness.topPrime 14401 },
  { lower := 14444, upper := 14448, witness := RowWitness.topPrime 14437 },
  { lower := 14848, upper := 14854, witness := RowWitness.topPrime 14843 },
  { lower := 15138, upper := 15171, witness := RowWitness.topPrime 15137 },
  { lower := 15341, upper := 15351, witness := RowWitness.topPrime 15331 },
  { lower := 15360, upper := 15401, witness := RowWitness.topPrime 15359 },
  { lower := 15402, upper := 15418, witness := RowWitness.topPrime 15401 },
  { lower := 15979, upper := 16014, witness := RowWitness.topPrime 15973 },
  { lower := 16807, upper := 16829, witness := RowWitness.topPrime 16787 },
  { lower := 16830, upper := 16852, witness := RowWitness.topPrime 16829 },
  { lower := 17303, upper := 17340, witness := RowWitness.topPrime 17299 },
  { lower := 17500, upper := 17538, witness := RowWitness.topPrime 17497 },
  { lower := 18259, upper := 18267, witness := RowWitness.topPrime 18257 },
  { lower := 18502, upper := 18533, witness := RowWitness.topPrime 18493 },
  { lower := 19208, upper := 19208, witness := RowWitness.topPrime 19207 },
  { lower := 19220, upper := 19250, witness := RowWitness.topPrime 19219 },
  { lower := 19683, upper := 19694, witness := RowWitness.topPrime 19681 },
  { lower := 20181, upper := 20219, witness := RowWitness.topPrime 20177 },
  { lower := 20220, upper := 20223, witness := RowWitness.topPrime 20219 },
  { lower := 20577, upper := 20577, witness := RowWitness.topPrime 20563 },
  { lower := 21142, upper := 21181, witness := RowWitness.topPrime 21139 },
  { lower := 21182, upper := 21183, witness := RowWitness.topPrime 21179 },
  { lower := 21866, upper := 21905, witness := RowWitness.topPrime 21863 },
  { lower := 21906, upper := 21917, witness := RowWitness.topPrime 21893 },
  { lower := 23548, upper := 23581, witness := RowWitness.topPrime 23539 },
  { lower := 23582, upper := 23590, witness := RowWitness.topPrime 23581 },
  { lower := 24025, upper := 24052, witness := RowWitness.topPrime 24023 },
  { lower := 24057, upper := 24067, witness := RowWitness.topPrime 24049 },
  { lower := 24576, upper := 24607, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25028, witness := RowWitness.topPrime 24989 },
  { lower := 26624, upper := 26639, witness := RowWitness.topPrime 26597 },
  { lower := 26640, upper := 26662, witness := RowWitness.topPrime 26633 },
  { lower := 26908, upper := 26938, witness := RowWitness.topPrime 26903 },
  { lower := 28577, upper := 28603, witness := RowWitness.topPrime 28573 },
  { lower := 30618, upper := 30635, witness := RowWitness.topPrime 30593 },
  { lower := 30636, upper := 30655, witness := RowWitness.topPrime 30631 },
  { lower := 30758, upper := 30762, witness := RowWitness.topPrime 30757 },
  { lower := 31250, upper := 31255, witness := RowWitness.topPrime 31249 },
  { lower := 31944, upper := 31949, witness := RowWitness.topPrime 31907 },
  { lower := 31950, upper := 31950, witness := RowWitness.largeDivisor 25184043894570368439654177249764853516517790401776461723875192387888070699875689185365630597640913173021900300614115233518741881 },
  { lower := 31951, upper := 31951, witness := RowWitness.largeDivisor 302615790325467409558251454421676131894042843598029232245030564868526418552737173810311118174210160508169513540775327501375450109 },
  { lower := 31952, upper := 31952, witness := RowWitness.largeDivisor 321962564347340658970606368929188724236762684424754596053982971786066733004696929195093928073467070077152114299908539701783044149 },
  { lower := 31953, upper := 31953, witness := RowWitness.largeDivisor 1074654739223918946629874157149730210543954669949251395352858863206956055541531492590706809122688111373157997307529256146565717089 },
  { lower := 31954, upper := 31954, witness := RowWitness.largeDivisor 1365822827824401639512011726098261043183578375767973076410200147757341253630343541255407102804326462127829553972030461017713822443 },
  { lower := 31955, upper := 31955, witness := RowWitness.largeDivisor 28418975860974012554398840126887858256263977234580537814501532279734099787244550996289493490288066271398809972343576902599711021 },
  { lower := 31956, upper := 31956, witness := RowWitness.largeDivisor 16600072980428557892600156011823287242033553712587842114502649804986160941748681575590901768948699381604525324928919783203121397 },
  { lower := 31957, upper := 31981, witness := RowWitness.topPrime 31957 },
  { lower := 32805, upper := 32810, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33656, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34417, witness := RowWitness.topPrime 34381 },
  { lower := 36982, upper := 37005, witness := RowWitness.topPrime 36979 },
  { lower := 43740, upper := 43748, witness := RowWitness.topPrime 43721 },
  { lower := 43750, upper := 43763, witness := RowWitness.topPrime 43721 },
  { lower := 43764, upper := 43782, witness := RowWitness.topPrime 43759 },
  { lower := 43940, upper := 43965, witness := RowWitness.topPrime 43933 },
  { lower := 47104, upper := 47110, witness := RowWitness.topPrime 47093 },
  { lower := 48020, upper := 48055, witness := RowWitness.topPrime 48017 },
  { lower := 49152, upper := 49172, witness := RowWitness.topPrime 49139 },
  { lower := 65625, upper := 65652, witness := RowWitness.topPrime 65617 },
  { lower := 68782, upper := 68792, witness := RowWitness.topPrime 68777 },
  { lower := 73205, upper := 73209, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73737, witness := RowWitness.topPrime 73727 },
  { lower := 150903, upper := 150940, witness := RowWitness.topPrime 150901 },
  { lower := 327701, upper := 327722, witness := RowWitness.topPrime 327689 },
  { lower := 655402, upper := 655402, witness := RowWitness.topPrime 655399 }
]

def row043_layers : List CoverLayer := [
  { lower := 1806, upper := 3612, M := 35 },
  { lower := 3612, upper := 7224, M := 33 },
  { lower := 7224, upper := 14448, M := 31 },
  { lower := 14448, upper := 28896, M := 29 },
  { lower := 28896, upper := 57792, M := 28 },
  { lower := 57792, upper := 115584, M := 26 },
  { lower := 115584, upper := 231168, M := 25 },
  { lower := 231168, upper := 462336, M := 23 },
  { lower := 462336, upper := 924672, M := 22 },
  { lower := 924672, upper := 1849344, M := 21 },
  { lower := 1849344, upper := 3698688, M := 20 },
  { lower := 3698688, upper := 7397376, M := 19 },
  { lower := 7397376, upper := 14794752, M := 18 },
  { lower := 14794752, upper := 29589504, M := 17 },
  { lower := 29589504, upper := 59179008, M := 16 },
  { lower := 59179008, upper := 118358016, M := 15 },
  { lower := 118358016, upper := 236716032, M := 14 },
  { lower := 236716032, upper := 473432064, M := 13 },
  { lower := 473432064, upper := 946864128, M := 13 },
  { lower := 946864128, upper := 1893728256, M := 12 },
  { lower := 1893728256, upper := 3787456512, M := 11 },
  { lower := 3787456512, upper := 7574913024, M := 11 },
  { lower := 7574913024, upper := 15149826048, M := 10 },
  { lower := 15149826048, upper := 30299652096, M := 10 },
  { lower := 30299652096, upper := 60599304192, M := 9 },
  { lower := 60599304192, upper := 121198608384, M := 9 },
  { lower := 121198608384, upper := 242397216768, M := 8 },
  { lower := 242397216768, upper := 484794433536, M := 8 },
  { lower := 484794433536, upper := 969588867072, M := 7 },
  { lower := 969588867072, upper := 1939177734144, M := 7 },
  { lower := 1939177734144, upper := 3878355468288, M := 7 },
  { lower := 3878355468288, upper := 7756710936576, M := 6 },
  { lower := 7756710936576, upper := 15513421873152, M := 6 },
  { lower := 15513421873152, upper := 31026843746304, M := 6 },
  { lower := 31026843746304, upper := 62053687492608, M := 5 },
  { lower := 62053687492608, upper := 124107374985216, M := 5 },
  { lower := 124107374985216, upper := 248214749970432, M := 5 },
  { lower := 248214749970432, upper := 496429499940864, M := 5 },
  { lower := 496429499940864, upper := 992858999881728, M := 4 },
  { lower := 992858999881728, upper := 1985717999763456, M := 4 },
  { lower := 1985717999763456, upper := 3971435999526912, M := 4 },
  { lower := 3971435999526912, upper := 7942871999053824, M := 4 },
  { lower := 7942871999053824, upper := 15885743998107648, M := 4 },
  { lower := 15885743998107648, upper := 31771487996215296, M := 3 },
  { lower := 31771487996215296, upper := 63542975992430592, M := 3 },
  { lower := 63542975992430592, upper := 127085951984861184, M := 3 },
  { lower := 127085951984861184, upper := 254171903969722368, M := 3 },
  { lower := 254171903969722368, upper := 508343807939444736, M := 3 },
  { lower := 508343807939444736, upper := 1016687615878889472, M := 3 },
  { lower := 1016687615878889472, upper := 2033375231757778944, M := 3 },
  { lower := 2033375231757778944, upper := 4066750463515557888, M := 2 },
  { lower := 4066750463515557888, upper := 8133500927031115776, M := 2 },
  { lower := 8133500927031115776, upper := 16267001854062231552, M := 2 },
  { lower := 16267001854062231552, upper := 32534003708124463104, M := 2 },
  { lower := 32534003708124463104, upper := 65068007416248926208, M := 2 },
  { lower := 65068007416248926208, upper := 130136014832497852416, M := 2 },
  { lower := 130136014832497852416, upper := 260272029664995704832, M := 2 },
  { lower := 260272029664995704832, upper := 520544059329991409664, M := 2 },
  { lower := 520544059329991409664, upper := 1041088118659982819328, M := 2 },
  { lower := 1041088118659982819328, upper := 2082176237319965638656, M := 2 },
  { lower := 2082176237319965638656, upper := 4164352474639931277312, M := 2 },
  { lower := 4164352474639931277312, upper := 8328704949279862554624, M := 2 },
  { lower := 8328704949279862554624, upper := 10000000000000000000000, M := 1 }
]

def row043 : FiniteCoverRow := {
  height := row043_height,
  goods := row043_goods,
  layers := row043_layers
}

theorem row043_registered :
    decide (row043.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row043_goods_checked :
    row043.goods.all (goodSegmentCheck row043.height.i row043.height.r row043.height.s) = true := by
  decide +kernel

theorem row043_small_checked :
    coverCheck (2 * row043.height.i + 2) (row043.height.i * (row043.height.i - 1) - 1)
      (row043.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row043_layerCover_checked :
    coverCheck (row043.height.i * (row043.height.i - 1)) (row043.height.n0 - 1)
      (row043.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row043_layer000_checked :
    coverLayerCheck row043.height row043.goods { lower := 1806, upper := 3612, M := 35 } = true := by
  decide +kernel

theorem row043_layer001_checked :
    coverLayerCheck row043.height row043.goods { lower := 3612, upper := 7224, M := 33 } = true := by
  decide +kernel

theorem row043_layer002_checked :
    coverLayerCheck row043.height row043.goods { lower := 7224, upper := 14448, M := 31 } = true := by
  decide +kernel

theorem row043_layer003_checked :
    coverLayerCheck row043.height row043.goods { lower := 14448, upper := 28896, M := 29 } = true := by
  decide +kernel

theorem row043_layer004_checked :
    coverLayerCheck row043.height row043.goods { lower := 28896, upper := 57792, M := 28 } = true := by
  decide +kernel

theorem row043_layer005_checked :
    coverLayerCheck row043.height row043.goods { lower := 57792, upper := 115584, M := 26 } = true := by
  decide +kernel

theorem row043_layer006_checked :
    coverLayerCheck row043.height row043.goods { lower := 115584, upper := 231168, M := 25 } = true := by
  decide +kernel

theorem row043_layer007_checked :
    coverLayerCheck row043.height row043.goods { lower := 231168, upper := 462336, M := 23 } = true := by
  decide +kernel

theorem row043_layer008_checked :
    coverLayerCheck row043.height row043.goods { lower := 462336, upper := 924672, M := 22 } = true := by
  decide +kernel

theorem row043_layer009_checked :
    coverLayerCheck row043.height row043.goods { lower := 924672, upper := 1849344, M := 21 } = true := by
  decide +kernel

theorem row043_layer010_checked :
    coverLayerCheck row043.height row043.goods { lower := 1849344, upper := 3698688, M := 20 } = true := by
  decide +kernel

theorem row043_layer011_checked :
    coverLayerCheck row043.height row043.goods { lower := 3698688, upper := 7397376, M := 19 } = true := by
  decide +kernel

theorem row043_layer012_checked :
    coverLayerCheck row043.height row043.goods { lower := 7397376, upper := 14794752, M := 18 } = true := by
  decide +kernel

theorem row043_layer013_checked :
    coverLayerCheck row043.height row043.goods { lower := 14794752, upper := 29589504, M := 17 } = true := by
  decide +kernel

theorem row043_layer014_checked :
    coverLayerCheck row043.height row043.goods { lower := 29589504, upper := 59179008, M := 16 } = true := by
  decide +kernel

theorem row043_layer015_checked :
    coverLayerCheck row043.height row043.goods { lower := 59179008, upper := 118358016, M := 15 } = true := by
  decide +kernel

theorem row043_layer016_checked :
    coverLayerCheck row043.height row043.goods { lower := 118358016, upper := 236716032, M := 14 } = true := by
  decide +kernel

theorem row043_layer017_checked :
    coverLayerCheck row043.height row043.goods { lower := 236716032, upper := 473432064, M := 13 } = true := by
  decide +kernel

theorem row043_layer018_checked :
    coverLayerCheck row043.height row043.goods { lower := 473432064, upper := 946864128, M := 13 } = true := by
  decide +kernel

theorem row043_layer019_checked :
    coverLayerCheck row043.height row043.goods { lower := 946864128, upper := 1893728256, M := 12 } = true := by
  decide +kernel

theorem row043_layer020_checked :
    coverLayerCheck row043.height row043.goods { lower := 1893728256, upper := 3787456512, M := 11 } = true := by
  decide +kernel

theorem row043_layer021_checked :
    coverLayerCheck row043.height row043.goods { lower := 3787456512, upper := 7574913024, M := 11 } = true := by
  decide +kernel

theorem row043_layer022_checked :
    coverLayerCheck row043.height row043.goods { lower := 7574913024, upper := 15149826048, M := 10 } = true := by
  decide +kernel

theorem row043_layer023_checked :
    coverLayerCheck row043.height row043.goods { lower := 15149826048, upper := 30299652096, M := 10 } = true := by
  decide +kernel

theorem row043_layer024_checked :
    coverLayerCheck row043.height row043.goods { lower := 30299652096, upper := 60599304192, M := 9 } = true := by
  decide +kernel

theorem row043_layer025_checked :
    coverLayerCheck row043.height row043.goods { lower := 60599304192, upper := 121198608384, M := 9 } = true := by
  decide +kernel

theorem row043_layer026_checked :
    coverLayerCheck row043.height row043.goods { lower := 121198608384, upper := 242397216768, M := 8 } = true := by
  decide +kernel

theorem row043_layer027_checked :
    coverLayerCheck row043.height row043.goods { lower := 242397216768, upper := 484794433536, M := 8 } = true := by
  decide +kernel

theorem row043_layer028_checked :
    coverLayerCheck row043.height row043.goods { lower := 484794433536, upper := 969588867072, M := 7 } = true := by
  decide +kernel

theorem row043_layer029_checked :
    coverLayerCheck row043.height row043.goods { lower := 969588867072, upper := 1939177734144, M := 7 } = true := by
  decide +kernel

theorem row043_layer030_checked :
    coverLayerCheck row043.height row043.goods { lower := 1939177734144, upper := 3878355468288, M := 7 } = true := by
  decide +kernel

theorem row043_layer031_checked :
    coverLayerCheck row043.height row043.goods { lower := 3878355468288, upper := 7756710936576, M := 6 } = true := by
  decide +kernel

theorem row043_layer032_checked :
    coverLayerCheck row043.height row043.goods { lower := 7756710936576, upper := 15513421873152, M := 6 } = true := by
  decide +kernel

theorem row043_layer033_checked :
    coverLayerCheck row043.height row043.goods { lower := 15513421873152, upper := 31026843746304, M := 6 } = true := by
  decide +kernel

theorem row043_layer034_checked :
    coverLayerCheck row043.height row043.goods { lower := 31026843746304, upper := 62053687492608, M := 5 } = true := by
  decide +kernel

theorem row043_layer035_checked :
    coverLayerCheck row043.height row043.goods { lower := 62053687492608, upper := 124107374985216, M := 5 } = true := by
  decide +kernel

theorem row043_layer036_checked :
    coverLayerCheck row043.height row043.goods { lower := 124107374985216, upper := 248214749970432, M := 5 } = true := by
  decide +kernel

theorem row043_layer037_checked :
    coverLayerCheck row043.height row043.goods { lower := 248214749970432, upper := 496429499940864, M := 5 } = true := by
  decide +kernel

theorem row043_layer038_checked :
    coverLayerCheck row043.height row043.goods { lower := 496429499940864, upper := 992858999881728, M := 4 } = true := by
  decide +kernel

theorem row043_layer039_checked :
    coverLayerCheck row043.height row043.goods { lower := 992858999881728, upper := 1985717999763456, M := 4 } = true := by
  decide +kernel

theorem row043_layer040_checked :
    coverLayerCheck row043.height row043.goods { lower := 1985717999763456, upper := 3971435999526912, M := 4 } = true := by
  decide +kernel

theorem row043_layer041_checked :
    coverLayerCheck row043.height row043.goods { lower := 3971435999526912, upper := 7942871999053824, M := 4 } = true := by
  decide +kernel

theorem row043_layer042_checked :
    coverLayerCheck row043.height row043.goods { lower := 7942871999053824, upper := 15885743998107648, M := 4 } = true := by
  decide +kernel

theorem row043_layer043_checked :
    coverLayerCheck row043.height row043.goods { lower := 15885743998107648, upper := 31771487996215296, M := 3 } = true := by
  decide +kernel

theorem row043_layer044_checked :
    coverLayerCheck row043.height row043.goods { lower := 31771487996215296, upper := 63542975992430592, M := 3 } = true := by
  decide +kernel

theorem row043_layer045_checked :
    coverLayerCheck row043.height row043.goods { lower := 63542975992430592, upper := 127085951984861184, M := 3 } = true := by
  decide +kernel

theorem row043_layer046_checked :
    coverLayerCheck row043.height row043.goods { lower := 127085951984861184, upper := 254171903969722368, M := 3 } = true := by
  decide +kernel

theorem row043_layer047_checked :
    coverLayerCheck row043.height row043.goods { lower := 254171903969722368, upper := 508343807939444736, M := 3 } = true := by
  decide +kernel

theorem row043_layer048_checked :
    coverLayerCheck row043.height row043.goods { lower := 508343807939444736, upper := 1016687615878889472, M := 3 } = true := by
  decide +kernel

theorem row043_layer049_checked :
    coverLayerCheck row043.height row043.goods { lower := 1016687615878889472, upper := 2033375231757778944, M := 3 } = true := by
  decide +kernel

theorem row043_layer050_checked :
    coverLayerCheck row043.height row043.goods { lower := 2033375231757778944, upper := 4066750463515557888, M := 2 } = true := by
  decide +kernel

theorem row043_layer051_checked :
    coverLayerCheck row043.height row043.goods { lower := 4066750463515557888, upper := 8133500927031115776, M := 2 } = true := by
  decide +kernel

theorem row043_layer052_checked :
    coverLayerCheck row043.height row043.goods { lower := 8133500927031115776, upper := 16267001854062231552, M := 2 } = true := by
  decide +kernel

theorem row043_layer053_checked :
    coverLayerCheck row043.height row043.goods { lower := 16267001854062231552, upper := 32534003708124463104, M := 2 } = true := by
  decide +kernel

theorem row043_layer054_checked :
    coverLayerCheck row043.height row043.goods { lower := 32534003708124463104, upper := 65068007416248926208, M := 2 } = true := by
  decide +kernel

theorem row043_layer055_checked :
    coverLayerCheck row043.height row043.goods { lower := 65068007416248926208, upper := 130136014832497852416, M := 2 } = true := by
  decide +kernel

theorem row043_layer056_checked :
    coverLayerCheck row043.height row043.goods { lower := 130136014832497852416, upper := 260272029664995704832, M := 2 } = true := by
  decide +kernel

theorem row043_layer057_checked :
    coverLayerCheck row043.height row043.goods { lower := 260272029664995704832, upper := 520544059329991409664, M := 2 } = true := by
  decide +kernel

theorem row043_layer058_checked :
    coverLayerCheck row043.height row043.goods { lower := 520544059329991409664, upper := 1041088118659982819328, M := 2 } = true := by
  decide +kernel

theorem row043_layer059_checked :
    coverLayerCheck row043.height row043.goods { lower := 1041088118659982819328, upper := 2082176237319965638656, M := 2 } = true := by
  decide +kernel

theorem row043_layer060_checked :
    coverLayerCheck row043.height row043.goods { lower := 2082176237319965638656, upper := 4164352474639931277312, M := 2 } = true := by
  decide +kernel

theorem row043_layer061_checked :
    coverLayerCheck row043.height row043.goods { lower := 4164352474639931277312, upper := 8328704949279862554624, M := 2 } = true := by
  decide +kernel

theorem row043_layer062_checked :
    coverLayerCheck row043.height row043.goods { lower := 8328704949279862554624, upper := 10000000000000000000000, M := 1 } = true := by
  decide +kernel

theorem row043_layers_checked :
    row043.layers.all (coverLayerCheck row043.height row043.goods) = true := by
  change List.all [
    { lower := 1806, upper := 3612, M := 35 },
    { lower := 3612, upper := 7224, M := 33 },
    { lower := 7224, upper := 14448, M := 31 },
    { lower := 14448, upper := 28896, M := 29 },
    { lower := 28896, upper := 57792, M := 28 },
    { lower := 57792, upper := 115584, M := 26 },
    { lower := 115584, upper := 231168, M := 25 },
    { lower := 231168, upper := 462336, M := 23 },
    { lower := 462336, upper := 924672, M := 22 },
    { lower := 924672, upper := 1849344, M := 21 },
    { lower := 1849344, upper := 3698688, M := 20 },
    { lower := 3698688, upper := 7397376, M := 19 },
    { lower := 7397376, upper := 14794752, M := 18 },
    { lower := 14794752, upper := 29589504, M := 17 },
    { lower := 29589504, upper := 59179008, M := 16 },
    { lower := 59179008, upper := 118358016, M := 15 },
    { lower := 118358016, upper := 236716032, M := 14 },
    { lower := 236716032, upper := 473432064, M := 13 },
    { lower := 473432064, upper := 946864128, M := 13 },
    { lower := 946864128, upper := 1893728256, M := 12 },
    { lower := 1893728256, upper := 3787456512, M := 11 },
    { lower := 3787456512, upper := 7574913024, M := 11 },
    { lower := 7574913024, upper := 15149826048, M := 10 },
    { lower := 15149826048, upper := 30299652096, M := 10 },
    { lower := 30299652096, upper := 60599304192, M := 9 },
    { lower := 60599304192, upper := 121198608384, M := 9 },
    { lower := 121198608384, upper := 242397216768, M := 8 },
    { lower := 242397216768, upper := 484794433536, M := 8 },
    { lower := 484794433536, upper := 969588867072, M := 7 },
    { lower := 969588867072, upper := 1939177734144, M := 7 },
    { lower := 1939177734144, upper := 3878355468288, M := 7 },
    { lower := 3878355468288, upper := 7756710936576, M := 6 },
    { lower := 7756710936576, upper := 15513421873152, M := 6 },
    { lower := 15513421873152, upper := 31026843746304, M := 6 },
    { lower := 31026843746304, upper := 62053687492608, M := 5 },
    { lower := 62053687492608, upper := 124107374985216, M := 5 },
    { lower := 124107374985216, upper := 248214749970432, M := 5 },
    { lower := 248214749970432, upper := 496429499940864, M := 5 },
    { lower := 496429499940864, upper := 992858999881728, M := 4 },
    { lower := 992858999881728, upper := 1985717999763456, M := 4 },
    { lower := 1985717999763456, upper := 3971435999526912, M := 4 },
    { lower := 3971435999526912, upper := 7942871999053824, M := 4 },
    { lower := 7942871999053824, upper := 15885743998107648, M := 4 },
    { lower := 15885743998107648, upper := 31771487996215296, M := 3 },
    { lower := 31771487996215296, upper := 63542975992430592, M := 3 },
    { lower := 63542975992430592, upper := 127085951984861184, M := 3 },
    { lower := 127085951984861184, upper := 254171903969722368, M := 3 },
    { lower := 254171903969722368, upper := 508343807939444736, M := 3 },
    { lower := 508343807939444736, upper := 1016687615878889472, M := 3 },
    { lower := 1016687615878889472, upper := 2033375231757778944, M := 3 },
    { lower := 2033375231757778944, upper := 4066750463515557888, M := 2 },
    { lower := 4066750463515557888, upper := 8133500927031115776, M := 2 },
    { lower := 8133500927031115776, upper := 16267001854062231552, M := 2 },
    { lower := 16267001854062231552, upper := 32534003708124463104, M := 2 },
    { lower := 32534003708124463104, upper := 65068007416248926208, M := 2 },
    { lower := 65068007416248926208, upper := 130136014832497852416, M := 2 },
    { lower := 130136014832497852416, upper := 260272029664995704832, M := 2 },
    { lower := 260272029664995704832, upper := 520544059329991409664, M := 2 },
    { lower := 520544059329991409664, upper := 1041088118659982819328, M := 2 },
    { lower := 1041088118659982819328, upper := 2082176237319965638656, M := 2 },
    { lower := 2082176237319965638656, upper := 4164352474639931277312, M := 2 },
    { lower := 4164352474639931277312, upper := 8328704949279862554624, M := 2 },
    { lower := 8328704949279862554624, upper := 10000000000000000000000, M := 1 }
  ] (coverLayerCheck row043.height row043.goods) = true
  simp only [List.all_cons, List.all_nil,
    row043_layer000_checked,
    row043_layer001_checked,
    row043_layer002_checked,
    row043_layer003_checked,
    row043_layer004_checked,
    row043_layer005_checked,
    row043_layer006_checked,
    row043_layer007_checked,
    row043_layer008_checked,
    row043_layer009_checked,
    row043_layer010_checked,
    row043_layer011_checked,
    row043_layer012_checked,
    row043_layer013_checked,
    row043_layer014_checked,
    row043_layer015_checked,
    row043_layer016_checked,
    row043_layer017_checked,
    row043_layer018_checked,
    row043_layer019_checked,
    row043_layer020_checked,
    row043_layer021_checked,
    row043_layer022_checked,
    row043_layer023_checked,
    row043_layer024_checked,
    row043_layer025_checked,
    row043_layer026_checked,
    row043_layer027_checked,
    row043_layer028_checked,
    row043_layer029_checked,
    row043_layer030_checked,
    row043_layer031_checked,
    row043_layer032_checked,
    row043_layer033_checked,
    row043_layer034_checked,
    row043_layer035_checked,
    row043_layer036_checked,
    row043_layer037_checked,
    row043_layer038_checked,
    row043_layer039_checked,
    row043_layer040_checked,
    row043_layer041_checked,
    row043_layer042_checked,
    row043_layer043_checked,
    row043_layer044_checked,
    row043_layer045_checked,
    row043_layer046_checked,
    row043_layer047_checked,
    row043_layer048_checked,
    row043_layer049_checked,
    row043_layer050_checked,
    row043_layer051_checked,
    row043_layer052_checked,
    row043_layer053_checked,
    row043_layer054_checked,
    row043_layer055_checked,
    row043_layer056_checked,
    row043_layer057_checked,
    row043_layer058_checked,
    row043_layer059_checked,
    row043_layer060_checked,
    row043_layer061_checked,
    row043_layer062_checked,
    Bool.true_and]

theorem row043_checked : finiteCoverRowCheck row043 = true := by
  simp only [finiteCoverRowCheck, row043_registered, row043_goods_checked,
    row043_small_checked, row043_layerCover_checked, row043_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row043_checked

end B699LowIndex
