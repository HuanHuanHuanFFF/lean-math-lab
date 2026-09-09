import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row119_height : HeightCertificateDatum := { i := 119, r := 39, s := 83, n0Power10 := 9 }

def row119_goods : List GoodSegment := [
  { lower := 240, upper := 357, witness := RowWitness.topPrime 239 },
  { lower := 358, upper := 471, witness := RowWitness.topPrime 353 },
  { lower := 472, upper := 585, witness := RowWitness.topPrime 467 },
  { lower := 586, upper := 695, witness := RowWitness.topPrime 577 },
  { lower := 696, upper := 809, witness := RowWitness.topPrime 691 },
  { lower := 810, upper := 927, witness := RowWitness.topPrime 809 },
  { lower := 928, upper := 1037, witness := RowWitness.topPrime 919 },
  { lower := 1038, upper := 1151, witness := RowWitness.topPrime 1033 },
  { lower := 1152, upper := 1269, witness := RowWitness.topPrime 1151 },
  { lower := 1270, upper := 1377, witness := RowWitness.topPrime 1259 },
  { lower := 1378, upper := 1491, witness := RowWitness.topPrime 1373 },
  { lower := 1492, upper := 1607, witness := RowWitness.topPrime 1489 },
  { lower := 1608, upper := 1725, witness := RowWitness.topPrime 1607 },
  { lower := 1726, upper := 1841, witness := RowWitness.topPrime 1723 },
  { lower := 1842, upper := 1949, witness := RowWitness.topPrime 1831 },
  { lower := 1950, upper := 2067, witness := RowWitness.topPrime 1949 },
  { lower := 2068, upper := 2181, witness := RowWitness.topPrime 2063 },
  { lower := 2182, upper := 2297, witness := RowWitness.topPrime 2179 },
  { lower := 2298, upper := 2415, witness := RowWitness.topPrime 2297 },
  { lower := 2416, upper := 2529, witness := RowWitness.topPrime 2411 },
  { lower := 2530, upper := 2639, witness := RowWitness.topPrime 2521 },
  { lower := 2640, upper := 2751, witness := RowWitness.topPrime 2633 },
  { lower := 2752, upper := 2867, witness := RowWitness.topPrime 2749 },
  { lower := 2868, upper := 2979, witness := RowWitness.topPrime 2861 },
  { lower := 2980, upper := 3089, witness := RowWitness.topPrime 2971 },
  { lower := 3090, upper := 3207, witness := RowWitness.topPrime 3089 },
  { lower := 3208, upper := 3321, witness := RowWitness.topPrime 3203 },
  { lower := 3322, upper := 3437, witness := RowWitness.topPrime 3319 },
  { lower := 3438, upper := 3551, witness := RowWitness.topPrime 3433 },
  { lower := 3552, upper := 3665, witness := RowWitness.topPrime 3547 },
  { lower := 3666, upper := 3777, witness := RowWitness.topPrime 3659 },
  { lower := 3778, upper := 3887, witness := RowWitness.topPrime 3769 },
  { lower := 3888, upper := 3999, witness := RowWitness.topPrime 3881 },
  { lower := 4000, upper := 4107, witness := RowWitness.topPrime 3989 },
  { lower := 4108, upper := 4217, witness := RowWitness.topPrime 4099 },
  { lower := 4218, upper := 4335, witness := RowWitness.topPrime 4217 },
  { lower := 4336, upper := 4445, witness := RowWitness.topPrime 4327 },
  { lower := 4446, upper := 4559, witness := RowWitness.topPrime 4441 },
  { lower := 4560, upper := 4667, witness := RowWitness.topPrime 4549 },
  { lower := 4668, upper := 4781, witness := RowWitness.topPrime 4663 },
  { lower := 4782, upper := 4877, witness := RowWitness.topPrime 4759 },
  { lower := 4878, upper := 4995, witness := RowWitness.topPrime 4877 },
  { lower := 4996, upper := 5111, witness := RowWitness.topPrime 4993 },
  { lower := 5112, upper := 5225, witness := RowWitness.topPrime 5107 },
  { lower := 5226, upper := 5327, witness := RowWitness.topPrime 5209 },
  { lower := 5328, upper := 5441, witness := RowWitness.topPrime 5323 },
  { lower := 5442, upper := 5559, witness := RowWitness.topPrime 5441 },
  { lower := 5560, upper := 5675, witness := RowWitness.topPrime 5557 },
  { lower := 5676, upper := 5787, witness := RowWitness.topPrime 5669 },
  { lower := 5788, upper := 5901, witness := RowWitness.topPrime 5783 },
  { lower := 5902, upper := 6015, witness := RowWitness.topPrime 5897 },
  { lower := 6016, upper := 6129, witness := RowWitness.topPrime 6011 },
  { lower := 6130, upper := 6239, witness := RowWitness.topPrime 6121 },
  { lower := 6240, upper := 6347, witness := RowWitness.topPrime 6229 },
  { lower := 6348, upper := 6461, witness := RowWitness.topPrime 6343 },
  { lower := 6462, upper := 6569, witness := RowWitness.topPrime 6451 },
  { lower := 6570, upper := 6687, witness := RowWitness.topPrime 6569 },
  { lower := 6688, upper := 6797, witness := RowWitness.topPrime 6679 },
  { lower := 6798, upper := 6911, witness := RowWitness.topPrime 6793 },
  { lower := 6912, upper := 7029, witness := RowWitness.topPrime 6911 },
  { lower := 7030, upper := 7145, witness := RowWitness.topPrime 7027 },
  { lower := 7146, upper := 7247, witness := RowWitness.topPrime 7129 },
  { lower := 7248, upper := 7365, witness := RowWitness.topPrime 7247 },
  { lower := 7366, upper := 7469, witness := RowWitness.topPrime 7351 },
  { lower := 7470, upper := 7577, witness := RowWitness.topPrime 7459 },
  { lower := 7578, upper := 7695, witness := RowWitness.topPrime 7577 },
  { lower := 7696, upper := 7809, witness := RowWitness.topPrime 7691 },
  { lower := 7810, upper := 7911, witness := RowWitness.topPrime 7793 },
  { lower := 7912, upper := 8025, witness := RowWitness.topPrime 7907 },
  { lower := 8026, upper := 8135, witness := RowWitness.topPrime 8017 },
  { lower := 8136, upper := 8241, witness := RowWitness.topPrime 8123 },
  { lower := 8242, upper := 8355, witness := RowWitness.topPrime 8237 },
  { lower := 8356, upper := 8471, witness := RowWitness.topPrime 8353 },
  { lower := 8472, upper := 8585, witness := RowWitness.topPrime 8467 },
  { lower := 8586, upper := 8699, witness := RowWitness.topPrime 8581 },
  { lower := 8700, upper := 8817, witness := RowWitness.topPrime 8699 },
  { lower := 8818, upper := 8925, witness := RowWitness.topPrime 8807 },
  { lower := 8926, upper := 9041, witness := RowWitness.topPrime 8923 },
  { lower := 9042, upper := 9159, witness := RowWitness.topPrime 9041 },
  { lower := 9160, upper := 9275, witness := RowWitness.topPrime 9157 },
  { lower := 9276, upper := 9375, witness := RowWitness.topPrime 9257 },
  { lower := 9376, upper := 9489, witness := RowWitness.topPrime 9371 },
  { lower := 9490, upper := 9597, witness := RowWitness.topPrime 9479 },
  { lower := 9598, upper := 9705, witness := RowWitness.topPrime 9587 },
  { lower := 9706, upper := 9815, witness := RowWitness.topPrime 9697 },
  { lower := 9816, upper := 9929, witness := RowWitness.topPrime 9811 },
  { lower := 9930, upper := 10047, witness := RowWitness.topPrime 9929 },
  { lower := 10048, upper := 10157, witness := RowWitness.topPrime 10039 },
  { lower := 10158, upper := 10269, witness := RowWitness.topPrime 10151 },
  { lower := 10270, upper := 10385, witness := RowWitness.topPrime 10267 },
  { lower := 10386, upper := 10487, witness := RowWitness.topPrime 10369 },
  { lower := 10488, upper := 10605, witness := RowWitness.topPrime 10487 },
  { lower := 10606, upper := 10719, witness := RowWitness.topPrime 10601 },
  { lower := 10720, upper := 10829, witness := RowWitness.topPrime 10711 },
  { lower := 10830, upper := 10917, witness := RowWitness.topPrime 10799 },
  { lower := 10918, upper := 11027, witness := RowWitness.topPrime 10909 },
  { lower := 11028, upper := 11145, witness := RowWitness.topPrime 11027 },
  { lower := 11146, upper := 11249, witness := RowWitness.topPrime 11131 },
  { lower := 11250, upper := 11361, witness := RowWitness.topPrime 11243 },
  { lower := 11362, upper := 11471, witness := RowWitness.topPrime 11353 },
  { lower := 11472, upper := 11589, witness := RowWitness.topPrime 11471 },
  { lower := 11590, upper := 11705, witness := RowWitness.topPrime 11587 },
  { lower := 11706, upper := 11819, witness := RowWitness.topPrime 11701 },
  { lower := 11820, upper := 11931, witness := RowWitness.topPrime 11813 },
  { lower := 11932, upper := 12045, witness := RowWitness.topPrime 11927 },
  { lower := 12046, upper := 12161, witness := RowWitness.topPrime 12043 },
  { lower := 12162, upper := 12279, witness := RowWitness.topPrime 12161 },
  { lower := 12280, upper := 12395, witness := RowWitness.topPrime 12277 },
  { lower := 12396, upper := 12509, witness := RowWitness.topPrime 12391 },
  { lower := 12510, upper := 12621, witness := RowWitness.topPrime 12503 },
  { lower := 12622, upper := 12737, witness := RowWitness.topPrime 12619 },
  { lower := 12738, upper := 12839, witness := RowWitness.topPrime 12721 },
  { lower := 12840, upper := 12947, witness := RowWitness.topPrime 12829 },
  { lower := 12948, upper := 13059, witness := RowWitness.topPrime 12941 },
  { lower := 13060, upper := 13167, witness := RowWitness.topPrime 13049 },
  { lower := 13168, upper := 13281, witness := RowWitness.topPrime 13163 },
  { lower := 13282, upper := 13385, witness := RowWitness.topPrime 13267 },
  { lower := 13386, upper := 13499, witness := RowWitness.topPrime 13381 },
  { lower := 13500, upper := 13617, witness := RowWitness.topPrime 13499 },
  { lower := 13618, upper := 13731, witness := RowWitness.topPrime 13613 },
  { lower := 13732, upper := 13847, witness := RowWitness.topPrime 13729 },
  { lower := 13848, upper := 13959, witness := RowWitness.topPrime 13841 },
  { lower := 13960, upper := 14041, witness := RowWitness.topPrime 13933 },
  { lower := 14336, upper := 14445, witness := RowWitness.topPrime 14327 },
  { lower := 14446, upper := 14493, witness := RowWitness.topPrime 14437 },
  { lower := 14641, upper := 14698, witness := RowWitness.topPrime 14639 },
  { lower := 14884, upper := 14910, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15239, witness := RowWitness.topPrime 15121 },
  { lower := 15240, upper := 15247, witness := RowWitness.topPrime 15233 },
  { lower := 15360, upper := 15477, witness := RowWitness.topPrime 15359 },
  { lower := 15478, upper := 15497, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16091, witness := RowWitness.topPrime 15973 },
  { lower := 16092, upper := 16105, witness := RowWitness.topPrime 16091 },
  { lower := 16384, upper := 16499, witness := RowWitness.topPrime 16381 },
  { lower := 16500, upper := 16502, witness := RowWitness.topPrime 16493 },
  { lower := 16807, upper := 16905, witness := RowWitness.topPrime 16787 },
  { lower := 16906, upper := 16938, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17417, witness := RowWitness.topPrime 17299 },
  { lower := 17418, upper := 17526, witness := RowWitness.topPrime 17417 },
  { lower := 17576, upper := 17614, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17777, witness := RowWitness.topPrime 17659 },
  { lower := 17778, upper := 17779, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18599, witness := RowWitness.topPrime 18481 },
  { lower := 18600, upper := 18620, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18735, witness := RowWitness.topPrime 18617 },
  { lower := 18736, upper := 18849, witness := RowWitness.topPrime 18731 },
  { lower := 18850, upper := 18868, witness := RowWitness.topPrime 18839 },
  { lower := 19220, upper := 19284, witness := RowWitness.topPrime 19219 },
  { lower := 19456, upper := 19461, witness := RowWitness.topPrime 19447 },
  { lower := 19683, upper := 19799, witness := RowWitness.topPrime 19681 },
  { lower := 19800, upper := 19801, witness := RowWitness.topPrime 19793 },
  { lower := 19881, upper := 19891, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 19999, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20279, witness := RowWitness.topPrime 20161 },
  { lower := 20280, upper := 20290, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20457, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20520, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20651, witness := RowWitness.topPrime 20533 },
  { lower := 20652, upper := 20653, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20695, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21260, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21401, witness := RowWitness.topPrime 21283 },
  { lower := 21402, upper := 21414, witness := RowWitness.topPrime 21401 },
  { lower := 21870, upper := 21981, witness := RowWitness.topPrime 21863 },
  { lower := 21982, upper := 22022, witness := RowWitness.topPrime 21977 },
  { lower := 22103, upper := 22211, witness := RowWitness.topPrime 22093 },
  { lower := 22212, upper := 22221, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22587, witness := RowWitness.topPrime 22469 },
  { lower := 22588, upper := 22590, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22646, witness := RowWitness.topPrime 22621 },
  { lower := 23552, upper := 23652, witness := RowWitness.topPrime 23549 },
  { lower := 23763, upper := 23879, witness := RowWitness.topPrime 23761 },
  { lower := 23880, upper := 23880, witness := RowWitness.topPrime 23879 },
  { lower := 24037, upper := 24147, witness := RowWitness.topPrime 24029 },
  { lower := 24148, upper := 24155, witness := RowWitness.topPrime 24137 },
  { lower := 24167, upper := 24175, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24447, witness := RowWitness.topPrime 24329 },
  { lower := 24448, upper := 24485, witness := RowWitness.topPrime 24443 },
  { lower := 24642, upper := 24694, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25082, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25307, witness := RowWitness.topPrime 25189 },
  { lower := 25308, upper := 25399, witness := RowWitness.topPrime 25307 },
  { lower := 26047, upper := 26129, witness := RowWitness.topPrime 26041 },
  { lower := 26620, upper := 26715, witness := RowWitness.topPrime 26597 },
  { lower := 26716, upper := 26742, witness := RowWitness.topPrime 26713 },
  { lower := 26934, upper := 27014, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27498, witness := RowWitness.topPrime 27431 },
  { lower := 27848, upper := 27853, witness := RowWitness.topPrime 27847 },
  { lower := 27951, upper := 27966, witness := RowWitness.topPrime 27947 },
  { lower := 28125, upper := 28208, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28243, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28691, witness := RowWitness.topPrime 28573 },
  { lower := 28692, upper := 28695, witness := RowWitness.topPrime 28687 },
  { lower := 28717, upper := 28790, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29886, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30364, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30711, witness := RowWitness.topPrime 30593 },
  { lower := 30712, upper := 30736, witness := RowWitness.topPrime 30707 },
  { lower := 30758, upper := 30838, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31017, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31323, witness := RowWitness.topPrime 31249 },
  { lower := 31329, upper := 31368, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31515, witness := RowWitness.topPrime 31397 },
  { lower := 31516, upper := 31541, witness := RowWitness.topPrime 31513 },
  { lower := 31939, upper := 31945, witness := RowWitness.topPrime 31907 },
  { lower := 31974, upper := 32057, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32886, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33732, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34455, witness := RowWitness.topPrime 34337 },
  { lower := 34456, upper := 34493, witness := RowWitness.topPrime 34439 },
  { lower := 34816, upper := 34925, witness := RowWitness.topPrime 34807 },
  { lower := 34926, upper := 34928, witness := RowWitness.topPrime 34919 },
  { lower := 35152, upper := 35249, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35405, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36615, witness := RowWitness.topPrime 36497 },
  { lower := 36616, upper := 36619, witness := RowWitness.topPrime 36607 },
  { lower := 37210, upper := 37297, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37328, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37421, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37467, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37611, witness := RowWitness.topPrime 37493 },
  { lower := 37612, upper := 37618, witness := RowWitness.topPrime 37607 },
  { lower := 37636, upper := 37671, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38409, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39444, witness := RowWitness.topPrime 39359 },
  { lower := 39605, upper := 39664, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40446, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41049, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41861, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43805, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 45008, witness := RowWitness.topPrime 44939 },
  { lower := 45056, upper := 45062, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45371, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47639, witness := RowWitness.topPrime 47521 },
  { lower := 47640, upper := 47642, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48079, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48851, witness := RowWitness.topPrime 48733 },
  { lower := 48852, upper := 48852, witness := RowWitness.topPrime 48847 },
  { lower := 50000, upper := 50046, witness := RowWitness.topPrime 49999 },
  { lower := 50653, upper := 50680, witness := RowWitness.topPrime 50651 },
  { lower := 51076, upper := 51123, witness := RowWitness.topPrime 51071 },
  { lower := 53125, upper := 53163, witness := RowWitness.topPrime 53117 },
  { lower := 53290, upper := 53366, witness := RowWitness.topPrime 53281 },
  { lower := 53371, upper := 53408, witness := RowWitness.topPrime 53359 },
  { lower := 55451, upper := 55559, witness := RowWitness.topPrime 55441 },
  { lower := 55560, upper := 55565, witness := RowWitness.topPrime 55547 },
  { lower := 57344, upper := 57363, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58682, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62528, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63963, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65639, witness := RowWitness.topPrime 65521 },
  { lower := 65640, upper := 65654, witness := RowWitness.topPrime 65633 },
  { lower := 68651, upper := 68757, witness := RowWitness.topPrime 68639 },
  { lower := 68758, upper := 68769, witness := RowWitness.topPrime 68749 },
  { lower := 68921, upper := 69008, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71404, witness := RowWitness.topPrime 71287 },
  { lower := 71407, upper := 71407, witness := RowWitness.topPrime 71399 },
  { lower := 73205, upper := 73285, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89491, witness := RowWitness.topPrime 89381 },
  { lower := 91854, upper := 91927, witness := RowWitness.topPrime 91841 },
  { lower := 95052, upper := 95145, witness := RowWitness.topPrime 95027 },
  { lower := 95146, upper := 95166, witness := RowWitness.topPrime 95143 },
  { lower := 98415, upper := 98422, witness := RowWitness.topPrime 98411 },
  { lower := 102973, upper := 103003, witness := RowWitness.topPrime 102967 },
  { lower := 103041, upper := 103091, witness := RowWitness.topPrime 103007 },
  { lower := 137842, upper := 137899, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146452, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148995, witness := RowWitness.topPrime 148949 }
]

def row119_layers : List CoverLayer := [
  { lower := 14042, upper := 28084, M := 23 },
  { lower := 28084, upper := 56168, M := 19 },
  { lower := 56168, upper := 112336, M := 15 },
  { lower := 112336, upper := 224672, M := 12 },
  { lower := 224672, upper := 449344, M := 10 },
  { lower := 449344, upper := 898688, M := 8 },
  { lower := 898688, upper := 1797376, M := 7 },
  { lower := 1797376, upper := 3594752, M := 5 },
  { lower := 3594752, upper := 7189504, M := 4 },
  { lower := 7189504, upper := 14379008, M := 4 },
  { lower := 14379008, upper := 28758016, M := 3 },
  { lower := 28758016, upper := 57516032, M := 2 },
  { lower := 57516032, upper := 115032064, M := 2 },
  { lower := 115032064, upper := 230064128, M := 2 },
  { lower := 230064128, upper := 460128256, M := 2 },
  { lower := 460128256, upper := 920256512, M := 1 },
  { lower := 920256512, upper := 1000000000, M := 1 }
]

def row119 : FiniteCoverRow := {
  height := row119_height,
  goods := row119_goods,
  layers := row119_layers
}

theorem row119_registered :
    decide (row119.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row119_goods_checked :
    row119.goods.all (goodSegmentCheck row119.height.i row119.height.r row119.height.s) = true := by
  decide +kernel

theorem row119_small_checked :
    coverCheck (2 * row119.height.i + 2) (row119.height.i * (row119.height.i - 1) - 1)
      (row119.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row119_layerCover_checked :
    coverCheck (row119.height.i * (row119.height.i - 1)) (row119.height.n0 - 1)
      (row119.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row119_layer000_checked :
    coverLayerCheck row119.height row119.goods { lower := 14042, upper := 28084, M := 23 } = true := by
  decide +kernel

theorem row119_layer001_checked :
    coverLayerCheck row119.height row119.goods { lower := 28084, upper := 56168, M := 19 } = true := by
  decide +kernel

theorem row119_layer002_checked :
    coverLayerCheck row119.height row119.goods { lower := 56168, upper := 112336, M := 15 } = true := by
  decide +kernel

theorem row119_layer003_checked :
    coverLayerCheck row119.height row119.goods { lower := 112336, upper := 224672, M := 12 } = true := by
  decide +kernel

theorem row119_layer004_checked :
    coverLayerCheck row119.height row119.goods { lower := 224672, upper := 449344, M := 10 } = true := by
  decide +kernel

theorem row119_layer005_checked :
    coverLayerCheck row119.height row119.goods { lower := 449344, upper := 898688, M := 8 } = true := by
  decide +kernel

theorem row119_layer006_checked :
    coverLayerCheck row119.height row119.goods { lower := 898688, upper := 1797376, M := 7 } = true := by
  decide +kernel

theorem row119_layer007_checked :
    coverLayerCheck row119.height row119.goods { lower := 1797376, upper := 3594752, M := 5 } = true := by
  decide +kernel

theorem row119_layer008_checked :
    coverLayerCheck row119.height row119.goods { lower := 3594752, upper := 7189504, M := 4 } = true := by
  decide +kernel

theorem row119_layer009_checked :
    coverLayerCheck row119.height row119.goods { lower := 7189504, upper := 14379008, M := 4 } = true := by
  decide +kernel

theorem row119_layer010_checked :
    coverLayerCheck row119.height row119.goods { lower := 14379008, upper := 28758016, M := 3 } = true := by
  decide +kernel

theorem row119_layer011_checked :
    coverLayerCheck row119.height row119.goods { lower := 28758016, upper := 57516032, M := 2 } = true := by
  decide +kernel

theorem row119_layer012_checked :
    coverLayerCheck row119.height row119.goods { lower := 57516032, upper := 115032064, M := 2 } = true := by
  decide +kernel

theorem row119_layer013_checked :
    coverLayerCheck row119.height row119.goods { lower := 115032064, upper := 230064128, M := 2 } = true := by
  decide +kernel

theorem row119_layer014_checked :
    coverLayerCheck row119.height row119.goods { lower := 230064128, upper := 460128256, M := 2 } = true := by
  decide +kernel

theorem row119_layer015_checked :
    coverLayerCheck row119.height row119.goods { lower := 460128256, upper := 920256512, M := 1 } = true := by
  decide +kernel

theorem row119_layer016_checked :
    coverLayerCheck row119.height row119.goods { lower := 920256512, upper := 1000000000, M := 1 } = true := by
  decide +kernel

theorem row119_layers_checked :
    row119.layers.all (coverLayerCheck row119.height row119.goods) = true := by
  change List.all [
    { lower := 14042, upper := 28084, M := 23 },
    { lower := 28084, upper := 56168, M := 19 },
    { lower := 56168, upper := 112336, M := 15 },
    { lower := 112336, upper := 224672, M := 12 },
    { lower := 224672, upper := 449344, M := 10 },
    { lower := 449344, upper := 898688, M := 8 },
    { lower := 898688, upper := 1797376, M := 7 },
    { lower := 1797376, upper := 3594752, M := 5 },
    { lower := 3594752, upper := 7189504, M := 4 },
    { lower := 7189504, upper := 14379008, M := 4 },
    { lower := 14379008, upper := 28758016, M := 3 },
    { lower := 28758016, upper := 57516032, M := 2 },
    { lower := 57516032, upper := 115032064, M := 2 },
    { lower := 115032064, upper := 230064128, M := 2 },
    { lower := 230064128, upper := 460128256, M := 2 },
    { lower := 460128256, upper := 920256512, M := 1 },
    { lower := 920256512, upper := 1000000000, M := 1 }
  ] (coverLayerCheck row119.height row119.goods) = true
  simp only [List.all_cons, List.all_nil,
    row119_layer000_checked,
    row119_layer001_checked,
    row119_layer002_checked,
    row119_layer003_checked,
    row119_layer004_checked,
    row119_layer005_checked,
    row119_layer006_checked,
    row119_layer007_checked,
    row119_layer008_checked,
    row119_layer009_checked,
    row119_layer010_checked,
    row119_layer011_checked,
    row119_layer012_checked,
    row119_layer013_checked,
    row119_layer014_checked,
    row119_layer015_checked,
    row119_layer016_checked,
    Bool.true_and]

theorem row119_checked : finiteCoverRowCheck row119 = true := by
  simp only [finiteCoverRowCheck, row119_registered, row119_goods_checked,
    row119_small_checked, row119_layerCover_checked, row119_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row119_checked

end B699LowIndex
