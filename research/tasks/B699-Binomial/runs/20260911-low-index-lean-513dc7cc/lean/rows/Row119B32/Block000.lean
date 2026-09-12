import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good000_checked :
    goodSegmentCheck 119 39 83
      { lower := 240, upper := 357, witness := RowWitness.topPrime 239 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good001_checked :
    goodSegmentCheck 119 39 83
      { lower := 358, upper := 471, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good002_checked :
    goodSegmentCheck 119 39 83
      { lower := 472, upper := 585, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good003_checked :
    goodSegmentCheck 119 39 83
      { lower := 586, upper := 695, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good004_checked :
    goodSegmentCheck 119 39 83
      { lower := 696, upper := 809, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good005_checked :
    goodSegmentCheck 119 39 83
      { lower := 810, upper := 927, witness := RowWitness.topPrime 809 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good006_checked :
    goodSegmentCheck 119 39 83
      { lower := 928, upper := 1037, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good007_checked :
    goodSegmentCheck 119 39 83
      { lower := 1038, upper := 1151, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good008_checked :
    goodSegmentCheck 119 39 83
      { lower := 1152, upper := 1269, witness := RowWitness.topPrime 1151 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good009_checked :
    goodSegmentCheck 119 39 83
      { lower := 1270, upper := 1377, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good010_checked :
    goodSegmentCheck 119 39 83
      { lower := 1378, upper := 1491, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good011_checked :
    goodSegmentCheck 119 39 83
      { lower := 1492, upper := 1607, witness := RowWitness.topPrime 1489 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good012_checked :
    goodSegmentCheck 119 39 83
      { lower := 1608, upper := 1725, witness := RowWitness.topPrime 1607 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good013_checked :
    goodSegmentCheck 119 39 83
      { lower := 1726, upper := 1841, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good014_checked :
    goodSegmentCheck 119 39 83
      { lower := 1842, upper := 1949, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good015_checked :
    goodSegmentCheck 119 39 83
      { lower := 1950, upper := 2067, witness := RowWitness.topPrime 1949 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good016_checked :
    goodSegmentCheck 119 39 83
      { lower := 2068, upper := 2181, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good017_checked :
    goodSegmentCheck 119 39 83
      { lower := 2182, upper := 2297, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good018_checked :
    goodSegmentCheck 119 39 83
      { lower := 2298, upper := 2415, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good019_checked :
    goodSegmentCheck 119 39 83
      { lower := 2416, upper := 2529, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good020_checked :
    goodSegmentCheck 119 39 83
      { lower := 2530, upper := 2639, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good021_checked :
    goodSegmentCheck 119 39 83
      { lower := 2640, upper := 2751, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good022_checked :
    goodSegmentCheck 119 39 83
      { lower := 2752, upper := 2867, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good023_checked :
    goodSegmentCheck 119 39 83
      { lower := 2868, upper := 2979, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good024_checked :
    goodSegmentCheck 119 39 83
      { lower := 2980, upper := 3089, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good025_checked :
    goodSegmentCheck 119 39 83
      { lower := 3090, upper := 3207, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good026_checked :
    goodSegmentCheck 119 39 83
      { lower := 3208, upper := 3321, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good027_checked :
    goodSegmentCheck 119 39 83
      { lower := 3322, upper := 3437, witness := RowWitness.topPrime 3319 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good028_checked :
    goodSegmentCheck 119 39 83
      { lower := 3438, upper := 3551, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good029_checked :
    goodSegmentCheck 119 39 83
      { lower := 3552, upper := 3665, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good030_checked :
    goodSegmentCheck 119 39 83
      { lower := 3666, upper := 3777, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good031_checked :
    goodSegmentCheck 119 39 83
      { lower := 3778, upper := 3887, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good032_checked :
    goodSegmentCheck 119 39 83
      { lower := 3888, upper := 3999, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good033_checked :
    goodSegmentCheck 119 39 83
      { lower := 4000, upper := 4107, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good034_checked :
    goodSegmentCheck 119 39 83
      { lower := 4108, upper := 4217, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good035_checked :
    goodSegmentCheck 119 39 83
      { lower := 4218, upper := 4335, witness := RowWitness.topPrime 4217 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good036_checked :
    goodSegmentCheck 119 39 83
      { lower := 4336, upper := 4445, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good037_checked :
    goodSegmentCheck 119 39 83
      { lower := 4446, upper := 4559, witness := RowWitness.topPrime 4441 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good038_checked :
    goodSegmentCheck 119 39 83
      { lower := 4560, upper := 4667, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good039_checked :
    goodSegmentCheck 119 39 83
      { lower := 4668, upper := 4781, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good040_checked :
    goodSegmentCheck 119 39 83
      { lower := 4782, upper := 4877, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good041_checked :
    goodSegmentCheck 119 39 83
      { lower := 4878, upper := 4995, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good042_checked :
    goodSegmentCheck 119 39 83
      { lower := 4996, upper := 5111, witness := RowWitness.topPrime 4993 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good043_checked :
    goodSegmentCheck 119 39 83
      { lower := 5112, upper := 5225, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good044_checked :
    goodSegmentCheck 119 39 83
      { lower := 5226, upper := 5327, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good045_checked :
    goodSegmentCheck 119 39 83
      { lower := 5328, upper := 5441, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good046_checked :
    goodSegmentCheck 119 39 83
      { lower := 5442, upper := 5559, witness := RowWitness.topPrime 5441 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good047_checked :
    goodSegmentCheck 119 39 83
      { lower := 5560, upper := 5675, witness := RowWitness.topPrime 5557 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good048_checked :
    goodSegmentCheck 119 39 83
      { lower := 5676, upper := 5787, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good049_checked :
    goodSegmentCheck 119 39 83
      { lower := 5788, upper := 5901, witness := RowWitness.topPrime 5783 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good050_checked :
    goodSegmentCheck 119 39 83
      { lower := 5902, upper := 6015, witness := RowWitness.topPrime 5897 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good051_checked :
    goodSegmentCheck 119 39 83
      { lower := 6016, upper := 6129, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good052_checked :
    goodSegmentCheck 119 39 83
      { lower := 6130, upper := 6239, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good053_checked :
    goodSegmentCheck 119 39 83
      { lower := 6240, upper := 6347, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good054_checked :
    goodSegmentCheck 119 39 83
      { lower := 6348, upper := 6461, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good055_checked :
    goodSegmentCheck 119 39 83
      { lower := 6462, upper := 6569, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good056_checked :
    goodSegmentCheck 119 39 83
      { lower := 6570, upper := 6687, witness := RowWitness.topPrime 6569 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good057_checked :
    goodSegmentCheck 119 39 83
      { lower := 6688, upper := 6797, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good058_checked :
    goodSegmentCheck 119 39 83
      { lower := 6798, upper := 6911, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good059_checked :
    goodSegmentCheck 119 39 83
      { lower := 6912, upper := 7029, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good060_checked :
    goodSegmentCheck 119 39 83
      { lower := 7030, upper := 7145, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good061_checked :
    goodSegmentCheck 119 39 83
      { lower := 7146, upper := 7247, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good062_checked :
    goodSegmentCheck 119 39 83
      { lower := 7248, upper := 7365, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good063_checked :
    goodSegmentCheck 119 39 83
      { lower := 7366, upper := 7469, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good064_checked :
    goodSegmentCheck 119 39 83
      { lower := 7470, upper := 7577, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good065_checked :
    goodSegmentCheck 119 39 83
      { lower := 7578, upper := 7695, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good066_checked :
    goodSegmentCheck 119 39 83
      { lower := 7696, upper := 7809, witness := RowWitness.topPrime 7691 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good067_checked :
    goodSegmentCheck 119 39 83
      { lower := 7810, upper := 7911, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good068_checked :
    goodSegmentCheck 119 39 83
      { lower := 7912, upper := 8025, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good069_checked :
    goodSegmentCheck 119 39 83
      { lower := 8026, upper := 8135, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good070_checked :
    goodSegmentCheck 119 39 83
      { lower := 8136, upper := 8241, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good071_checked :
    goodSegmentCheck 119 39 83
      { lower := 8242, upper := 8355, witness := RowWitness.topPrime 8237 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good072_checked :
    goodSegmentCheck 119 39 83
      { lower := 8356, upper := 8471, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good073_checked :
    goodSegmentCheck 119 39 83
      { lower := 8472, upper := 8585, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good074_checked :
    goodSegmentCheck 119 39 83
      { lower := 8586, upper := 8699, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good075_checked :
    goodSegmentCheck 119 39 83
      { lower := 8700, upper := 8817, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good076_checked :
    goodSegmentCheck 119 39 83
      { lower := 8818, upper := 8925, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good077_checked :
    goodSegmentCheck 119 39 83
      { lower := 8926, upper := 9041, witness := RowWitness.topPrime 8923 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good078_checked :
    goodSegmentCheck 119 39 83
      { lower := 9042, upper := 9159, witness := RowWitness.topPrime 9041 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good079_checked :
    goodSegmentCheck 119 39 83
      { lower := 9160, upper := 9275, witness := RowWitness.topPrime 9157 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good080_checked :
    goodSegmentCheck 119 39 83
      { lower := 9276, upper := 9375, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good081_checked :
    goodSegmentCheck 119 39 83
      { lower := 9376, upper := 9489, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good082_checked :
    goodSegmentCheck 119 39 83
      { lower := 9490, upper := 9597, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good083_checked :
    goodSegmentCheck 119 39 83
      { lower := 9598, upper := 9705, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good084_checked :
    goodSegmentCheck 119 39 83
      { lower := 9706, upper := 9815, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good085_checked :
    goodSegmentCheck 119 39 83
      { lower := 9816, upper := 9929, witness := RowWitness.topPrime 9811 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good086_checked :
    goodSegmentCheck 119 39 83
      { lower := 9930, upper := 10047, witness := RowWitness.topPrime 9929 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good087_checked :
    goodSegmentCheck 119 39 83
      { lower := 10048, upper := 10157, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good088_checked :
    goodSegmentCheck 119 39 83
      { lower := 10158, upper := 10269, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good089_checked :
    goodSegmentCheck 119 39 83
      { lower := 10270, upper := 10385, witness := RowWitness.topPrime 10267 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good090_checked :
    goodSegmentCheck 119 39 83
      { lower := 10386, upper := 10487, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good091_checked :
    goodSegmentCheck 119 39 83
      { lower := 10488, upper := 10605, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good092_checked :
    goodSegmentCheck 119 39 83
      { lower := 10606, upper := 10719, witness := RowWitness.topPrime 10601 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good093_checked :
    goodSegmentCheck 119 39 83
      { lower := 10720, upper := 10829, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good094_checked :
    goodSegmentCheck 119 39 83
      { lower := 10830, upper := 10917, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good095_checked :
    goodSegmentCheck 119 39 83
      { lower := 10918, upper := 11027, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good096_checked :
    goodSegmentCheck 119 39 83
      { lower := 11028, upper := 11145, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good097_checked :
    goodSegmentCheck 119 39 83
      { lower := 11146, upper := 11249, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good098_checked :
    goodSegmentCheck 119 39 83
      { lower := 11250, upper := 11361, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good099_checked :
    goodSegmentCheck 119 39 83
      { lower := 11362, upper := 11471, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good100_checked :
    goodSegmentCheck 119 39 83
      { lower := 11472, upper := 11589, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good101_checked :
    goodSegmentCheck 119 39 83
      { lower := 11590, upper := 11705, witness := RowWitness.topPrime 11587 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good102_checked :
    goodSegmentCheck 119 39 83
      { lower := 11706, upper := 11819, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good103_checked :
    goodSegmentCheck 119 39 83
      { lower := 11820, upper := 11931, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good104_checked :
    goodSegmentCheck 119 39 83
      { lower := 11932, upper := 12045, witness := RowWitness.topPrime 11927 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good105_checked :
    goodSegmentCheck 119 39 83
      { lower := 12046, upper := 12161, witness := RowWitness.topPrime 12043 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good106_checked :
    goodSegmentCheck 119 39 83
      { lower := 12162, upper := 12279, witness := RowWitness.topPrime 12161 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good107_checked :
    goodSegmentCheck 119 39 83
      { lower := 12280, upper := 12395, witness := RowWitness.topPrime 12277 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good108_checked :
    goodSegmentCheck 119 39 83
      { lower := 12396, upper := 12509, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good109_checked :
    goodSegmentCheck 119 39 83
      { lower := 12510, upper := 12621, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good110_checked :
    goodSegmentCheck 119 39 83
      { lower := 12622, upper := 12737, witness := RowWitness.topPrime 12619 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good111_checked :
    goodSegmentCheck 119 39 83
      { lower := 12738, upper := 12839, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good112_checked :
    goodSegmentCheck 119 39 83
      { lower := 12840, upper := 12947, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good113_checked :
    goodSegmentCheck 119 39 83
      { lower := 12948, upper := 13059, witness := RowWitness.topPrime 12941 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good114_checked :
    goodSegmentCheck 119 39 83
      { lower := 13060, upper := 13167, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good115_checked :
    goodSegmentCheck 119 39 83
      { lower := 13168, upper := 13281, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good116_checked :
    goodSegmentCheck 119 39 83
      { lower := 13282, upper := 13385, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good117_checked :
    goodSegmentCheck 119 39 83
      { lower := 13386, upper := 13499, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good118_checked :
    goodSegmentCheck 119 39 83
      { lower := 13500, upper := 13617, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good119_checked :
    goodSegmentCheck 119 39 83
      { lower := 13618, upper := 13731, witness := RowWitness.topPrime 13613 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good120_checked :
    goodSegmentCheck 119 39 83
      { lower := 13732, upper := 13847, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good121_checked :
    goodSegmentCheck 119 39 83
      { lower := 13848, upper := 13959, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good122_checked :
    goodSegmentCheck 119 39 83
      { lower := 13960, upper := 14041, witness := RowWitness.topPrime 13933 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good123_checked :
    goodSegmentCheck 119 39 83
      { lower := 14336, upper := 14445, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good124_checked :
    goodSegmentCheck 119 39 83
      { lower := 14446, upper := 14493, witness := RowWitness.topPrime 14437 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good125_checked :
    goodSegmentCheck 119 39 83
      { lower := 14641, upper := 14698, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good126_checked :
    goodSegmentCheck 119 39 83
      { lower := 14884, upper := 14910, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good127_checked :
    goodSegmentCheck 119 39 83
      { lower := 15123, upper := 15239, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good128_checked :
    goodSegmentCheck 119 39 83
      { lower := 15240, upper := 15247, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good129_checked :
    goodSegmentCheck 119 39 83
      { lower := 15360, upper := 15477, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good130_checked :
    goodSegmentCheck 119 39 83
      { lower := 15478, upper := 15497, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good131_checked :
    goodSegmentCheck 119 39 83
      { lower := 15979, upper := 16091, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good132_checked :
    goodSegmentCheck 119 39 83
      { lower := 16092, upper := 16105, witness := RowWitness.topPrime 16091 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good133_checked :
    goodSegmentCheck 119 39 83
      { lower := 16384, upper := 16499, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good134_checked :
    goodSegmentCheck 119 39 83
      { lower := 16500, upper := 16502, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good135_checked :
    goodSegmentCheck 119 39 83
      { lower := 16807, upper := 16905, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good136_checked :
    goodSegmentCheck 119 39 83
      { lower := 16906, upper := 16938, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good137_checked :
    goodSegmentCheck 119 39 83
      { lower := 17303, upper := 17417, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good138_checked :
    goodSegmentCheck 119 39 83
      { lower := 17418, upper := 17526, witness := RowWitness.topPrime 17417 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good139_checked :
    goodSegmentCheck 119 39 83
      { lower := 17576, upper := 17614, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good140_checked :
    goodSegmentCheck 119 39 83
      { lower := 17661, upper := 17777, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good141_checked :
    goodSegmentCheck 119 39 83
      { lower := 17778, upper := 17779, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good142_checked :
    goodSegmentCheck 119 39 83
      { lower := 18490, upper := 18599, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good143_checked :
    goodSegmentCheck 119 39 83
      { lower := 18600, upper := 18620, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good144_checked :
    goodSegmentCheck 119 39 83
      { lower := 18634, upper := 18735, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good145_checked :
    goodSegmentCheck 119 39 83
      { lower := 18736, upper := 18849, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good146_checked :
    goodSegmentCheck 119 39 83
      { lower := 18850, upper := 18868, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good147_checked :
    goodSegmentCheck 119 39 83
      { lower := 19220, upper := 19284, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good148_checked :
    goodSegmentCheck 119 39 83
      { lower := 19456, upper := 19461, witness := RowWitness.topPrime 19447 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good149_checked :
    goodSegmentCheck 119 39 83
      { lower := 19683, upper := 19799, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good150_checked :
    goodSegmentCheck 119 39 83
      { lower := 19800, upper := 19801, witness := RowWitness.topPrime 19793 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good151_checked :
    goodSegmentCheck 119 39 83
      { lower := 19881, upper := 19891, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good152_checked :
    goodSegmentCheck 119 39 83
      { lower := 19965, upper := 19999, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good153_checked :
    goodSegmentCheck 119 39 83
      { lower := 20172, upper := 20279, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good154_checked :
    goodSegmentCheck 119 39 83
      { lower := 20280, upper := 20290, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good155_checked :
    goodSegmentCheck 119 39 83
      { lower := 20402, upper := 20457, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good156_checked :
    goodSegmentCheck 119 39 83
      { lower := 20480, upper := 20520, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good157_checked :
    goodSegmentCheck 119 39 83
      { lower := 20535, upper := 20651, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good158_checked :
    goodSegmentCheck 119 39 83
      { lower := 20652, upper := 20653, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good159_checked :
    goodSegmentCheck 119 39 83
      { lower := 20667, upper := 20695, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good160_checked :
    goodSegmentCheck 119 39 83
      { lower := 21218, upper := 21260, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good161_checked :
    goodSegmentCheck 119 39 83
      { lower := 21296, upper := 21401, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good162_checked :
    goodSegmentCheck 119 39 83
      { lower := 21402, upper := 21414, witness := RowWitness.topPrime 21401 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good163_checked :
    goodSegmentCheck 119 39 83
      { lower := 21870, upper := 21981, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good164_checked :
    goodSegmentCheck 119 39 83
      { lower := 21982, upper := 22022, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good165_checked :
    goodSegmentCheck 119 39 83
      { lower := 22103, upper := 22211, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good166_checked :
    goodSegmentCheck 119 39 83
      { lower := 22212, upper := 22221, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good167_checked :
    goodSegmentCheck 119 39 83
      { lower := 22472, upper := 22587, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good168_checked :
    goodSegmentCheck 119 39 83
      { lower := 22588, upper := 22590, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good169_checked :
    goodSegmentCheck 119 39 83
      { lower := 22627, upper := 22646, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good170_checked :
    goodSegmentCheck 119 39 83
      { lower := 23552, upper := 23652, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good171_checked :
    goodSegmentCheck 119 39 83
      { lower := 23763, upper := 23879, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good172_checked :
    goodSegmentCheck 119 39 83
      { lower := 23880, upper := 23880, witness := RowWitness.topPrime 23879 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good173_checked :
    goodSegmentCheck 119 39 83
      { lower := 24037, upper := 24147, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good174_checked :
    goodSegmentCheck 119 39 83
      { lower := 24148, upper := 24155, witness := RowWitness.topPrime 24137 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good175_checked :
    goodSegmentCheck 119 39 83
      { lower := 24167, upper := 24175, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good176_checked :
    goodSegmentCheck 119 39 83
      { lower := 24334, upper := 24447, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good177_checked :
    goodSegmentCheck 119 39 83
      { lower := 24448, upper := 24485, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good178_checked :
    goodSegmentCheck 119 39 83
      { lower := 24642, upper := 24694, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good179_checked :
    goodSegmentCheck 119 39 83
      { lower := 25000, upper := 25082, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good180_checked :
    goodSegmentCheck 119 39 83
      { lower := 25215, upper := 25307, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good181_checked :
    goodSegmentCheck 119 39 83
      { lower := 25308, upper := 25399, witness := RowWitness.topPrime 25307 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good182_checked :
    goodSegmentCheck 119 39 83
      { lower := 26047, upper := 26129, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good183_checked :
    goodSegmentCheck 119 39 83
      { lower := 26620, upper := 26715, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good184_checked :
    goodSegmentCheck 119 39 83
      { lower := 26716, upper := 26742, witness := RowWitness.topPrime 26713 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good185_checked :
    goodSegmentCheck 119 39 83
      { lower := 26934, upper := 27014, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good186_checked :
    goodSegmentCheck 119 39 83
      { lower := 27436, upper := 27498, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good187_checked :
    goodSegmentCheck 119 39 83
      { lower := 27848, upper := 27853, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good188_checked :
    goodSegmentCheck 119 39 83
      { lower := 27951, upper := 27966, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good189_checked :
    goodSegmentCheck 119 39 83
      { lower := 28125, upper := 28208, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good190_checked :
    goodSegmentCheck 119 39 83
      { lower := 28227, upper := 28243, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good191_checked :
    goodSegmentCheck 119 39 83
      { lower := 28577, upper := 28691, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good192_checked :
    goodSegmentCheck 119 39 83
      { lower := 28692, upper := 28695, witness := RowWitness.topPrime 28687 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good193_checked :
    goodSegmentCheck 119 39 83
      { lower := 28717, upper := 28790, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good194_checked :
    goodSegmentCheck 119 39 83
      { lower := 29791, upper := 29886, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good195_checked :
    goodSegmentCheck 119 39 83
      { lower := 30258, upper := 30364, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good196_checked :
    goodSegmentCheck 119 39 83
      { lower := 30618, upper := 30711, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good197_checked :
    goodSegmentCheck 119 39 83
      { lower := 30712, upper := 30736, witness := RowWitness.topPrime 30707 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good198_checked :
    goodSegmentCheck 119 39 83
      { lower := 30758, upper := 30838, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good199_checked :
    goodSegmentCheck 119 39 83
      { lower := 30926, upper := 31017, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good200_checked :
    goodSegmentCheck 119 39 83
      { lower := 31250, upper := 31323, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good201_checked :
    goodSegmentCheck 119 39 83
      { lower := 31329, upper := 31368, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good202_checked :
    goodSegmentCheck 119 39 83
      { lower := 31423, upper := 31515, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good203_checked :
    goodSegmentCheck 119 39 83
      { lower := 31516, upper := 31541, witness := RowWitness.topPrime 31513 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good204_checked :
    goodSegmentCheck 119 39 83
      { lower := 31939, upper := 31945, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good205_checked :
    goodSegmentCheck 119 39 83
      { lower := 31974, upper := 32057, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good206_checked :
    goodSegmentCheck 119 39 83
      { lower := 32805, upper := 32886, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good207_checked :
    goodSegmentCheck 119 39 83
      { lower := 33708, upper := 33732, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good208_checked :
    goodSegmentCheck 119 39 83
      { lower := 34347, upper := 34455, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good209_checked :
    goodSegmentCheck 119 39 83
      { lower := 34456, upper := 34493, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good210_checked :
    goodSegmentCheck 119 39 83
      { lower := 34816, upper := 34925, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good211_checked :
    goodSegmentCheck 119 39 83
      { lower := 34926, upper := 34928, witness := RowWitness.topPrime 34919 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good212_checked :
    goodSegmentCheck 119 39 83
      { lower := 35152, upper := 35249, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good213_checked :
    goodSegmentCheck 119 39 83
      { lower := 35344, upper := 35405, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good214_checked :
    goodSegmentCheck 119 39 83
      { lower := 36517, upper := 36615, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good215_checked :
    goodSegmentCheck 119 39 83
      { lower := 36616, upper := 36619, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good216_checked :
    goodSegmentCheck 119 39 83
      { lower := 37210, upper := 37297, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good217_checked :
    goodSegmentCheck 119 39 83
      { lower := 37303, upper := 37328, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good218_checked :
    goodSegmentCheck 119 39 83
      { lower := 37349, upper := 37421, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good219_checked :
    goodSegmentCheck 119 39 83
      { lower := 37446, upper := 37467, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good220_checked :
    goodSegmentCheck 119 39 83
      { lower := 37500, upper := 37611, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good221_checked :
    goodSegmentCheck 119 39 83
      { lower := 37612, upper := 37618, witness := RowWitness.topPrime 37607 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good222_checked :
    goodSegmentCheck 119 39 83
      { lower := 37636, upper := 37671, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good223_checked :
    goodSegmentCheck 119 39 83
      { lower := 38307, upper := 38409, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good224_checked :
    goodSegmentCheck 119 39 83
      { lower := 39366, upper := 39444, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good225_checked :
    goodSegmentCheck 119 39 83
      { lower := 39605, upper := 39664, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good226_checked :
    goodSegmentCheck 119 39 83
      { lower := 40401, upper := 40446, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good227_checked :
    goodSegmentCheck 119 39 83
      { lower := 40960, upper := 41049, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good228_checked :
    goodSegmentCheck 119 39 83
      { lower := 41772, upper := 41861, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good229_checked :
    goodSegmentCheck 119 39 83
      { lower := 43750, upper := 43805, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good230_checked :
    goodSegmentCheck 119 39 83
      { lower := 44944, upper := 45008, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good231_checked :
    goodSegmentCheck 119 39 83
      { lower := 45056, upper := 45062, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good232_checked :
    goodSegmentCheck 119 39 83
      { lower := 45369, upper := 45371, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good233_checked :
    goodSegmentCheck 119 39 83
      { lower := 47526, upper := 47639, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good234_checked :
    goodSegmentCheck 119 39 83
      { lower := 47640, upper := 47642, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good235_checked :
    goodSegmentCheck 119 39 83
      { lower := 48013, upper := 48079, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good236_checked :
    goodSegmentCheck 119 39 83
      { lower := 48734, upper := 48851, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good237_checked :
    goodSegmentCheck 119 39 83
      { lower := 48852, upper := 48852, witness := RowWitness.topPrime 48847 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good238_checked :
    goodSegmentCheck 119 39 83
      { lower := 50000, upper := 50046, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good239_checked :
    goodSegmentCheck 119 39 83
      { lower := 50653, upper := 50680, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good240_checked :
    goodSegmentCheck 119 39 83
      { lower := 51076, upper := 51123, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good241_checked :
    goodSegmentCheck 119 39 83
      { lower := 53125, upper := 53163, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good242_checked :
    goodSegmentCheck 119 39 83
      { lower := 53290, upper := 53366, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good243_checked :
    goodSegmentCheck 119 39 83
      { lower := 53371, upper := 53408, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good244_checked :
    goodSegmentCheck 119 39 83
      { lower := 55451, upper := 55559, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good245_checked :
    goodSegmentCheck 119 39 83
      { lower := 55560, upper := 55565, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good246_checked :
    goodSegmentCheck 119 39 83
      { lower := 57344, upper := 57363, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good247_checked :
    goodSegmentCheck 119 39 83
      { lower := 58619, upper := 58682, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good248_checked :
    goodSegmentCheck 119 39 83
      { lower := 62500, upper := 62528, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good249_checked :
    goodSegmentCheck 119 39 83
      { lower := 63948, upper := 63963, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good250_checked :
    goodSegmentCheck 119 39 83
      { lower := 65536, upper := 65639, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good251_checked :
    goodSegmentCheck 119 39 83
      { lower := 65640, upper := 65654, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good252_checked :
    goodSegmentCheck 119 39 83
      { lower := 68651, upper := 68757, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good253_checked :
    goodSegmentCheck 119 39 83
      { lower := 68758, upper := 68769, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good254_checked :
    goodSegmentCheck 119 39 83
      { lower := 68921, upper := 69008, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good255_checked :
    goodSegmentCheck 119 39 83
      { lower := 71289, upper := 71404, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_good256_checked :
    goodSegmentCheck 119 39 83
      { lower := 71407, upper := 71407, witness := RowWitness.topPrime 71399 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good257_checked :
    goodSegmentCheck 119 39 83
      { lower := 73205, upper := 73285, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good258_checked :
    goodSegmentCheck 119 39 83
      { lower := 89383, upper := 89491, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good259_checked :
    goodSegmentCheck 119 39 83
      { lower := 91854, upper := 91927, witness := RowWitness.topPrime 91841 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good260_checked :
    goodSegmentCheck 119 39 83
      { lower := 95052, upper := 95145, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good261_checked :
    goodSegmentCheck 119 39 83
      { lower := 95146, upper := 95166, witness := RowWitness.topPrime 95143 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good262_checked :
    goodSegmentCheck 119 39 83
      { lower := 98415, upper := 98422, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good263_checked :
    goodSegmentCheck 119 39 83
      { lower := 102973, upper := 103003, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good264_checked :
    goodSegmentCheck 119 39 83
      { lower := 103041, upper := 103091, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good265_checked :
    goodSegmentCheck 119 39 83
      { lower := 137842, upper := 137899, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good266_checked :
    goodSegmentCheck 119 39 83
      { lower := 146410, upper := 146452, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row119_good267_checked :
    goodSegmentCheck 119 39 83
      { lower := 148955, upper := 148995, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 119) (r := 39) (s := 83) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_good267_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_goods_checked :
    row119.goods.all (goodSegmentCheck row119.height.i row119.height.r row119.height.s) = true := by
  change row119_goods.all (goodSegmentCheck 119 39 83) = true
  simp only [row119_goods, List.all_cons, List.all_nil,
    row119_good000_checked,
    row119_good001_checked,
    row119_good002_checked,
    row119_good003_checked,
    row119_good004_checked,
    row119_good005_checked,
    row119_good006_checked,
    row119_good007_checked,
    row119_good008_checked,
    row119_good009_checked,
    row119_good010_checked,
    row119_good011_checked,
    row119_good012_checked,
    row119_good013_checked,
    row119_good014_checked,
    row119_good015_checked,
    row119_good016_checked,
    row119_good017_checked,
    row119_good018_checked,
    row119_good019_checked,
    row119_good020_checked,
    row119_good021_checked,
    row119_good022_checked,
    row119_good023_checked,
    row119_good024_checked,
    row119_good025_checked,
    row119_good026_checked,
    row119_good027_checked,
    row119_good028_checked,
    row119_good029_checked,
    row119_good030_checked,
    row119_good031_checked,
    row119_good032_checked,
    row119_good033_checked,
    row119_good034_checked,
    row119_good035_checked,
    row119_good036_checked,
    row119_good037_checked,
    row119_good038_checked,
    row119_good039_checked,
    row119_good040_checked,
    row119_good041_checked,
    row119_good042_checked,
    row119_good043_checked,
    row119_good044_checked,
    row119_good045_checked,
    row119_good046_checked,
    row119_good047_checked,
    row119_good048_checked,
    row119_good049_checked,
    row119_good050_checked,
    row119_good051_checked,
    row119_good052_checked,
    row119_good053_checked,
    row119_good054_checked,
    row119_good055_checked,
    row119_good056_checked,
    row119_good057_checked,
    row119_good058_checked,
    row119_good059_checked,
    row119_good060_checked,
    row119_good061_checked,
    row119_good062_checked,
    row119_good063_checked,
    row119_good064_checked,
    row119_good065_checked,
    row119_good066_checked,
    row119_good067_checked,
    row119_good068_checked,
    row119_good069_checked,
    row119_good070_checked,
    row119_good071_checked,
    row119_good072_checked,
    row119_good073_checked,
    row119_good074_checked,
    row119_good075_checked,
    row119_good076_checked,
    row119_good077_checked,
    row119_good078_checked,
    row119_good079_checked,
    row119_good080_checked,
    row119_good081_checked,
    row119_good082_checked,
    row119_good083_checked,
    row119_good084_checked,
    row119_good085_checked,
    row119_good086_checked,
    row119_good087_checked,
    row119_good088_checked,
    row119_good089_checked,
    row119_good090_checked,
    row119_good091_checked,
    row119_good092_checked,
    row119_good093_checked,
    row119_good094_checked,
    row119_good095_checked,
    row119_good096_checked,
    row119_good097_checked,
    row119_good098_checked,
    row119_good099_checked,
    row119_good100_checked,
    row119_good101_checked,
    row119_good102_checked,
    row119_good103_checked,
    row119_good104_checked,
    row119_good105_checked,
    row119_good106_checked,
    row119_good107_checked,
    row119_good108_checked,
    row119_good109_checked,
    row119_good110_checked,
    row119_good111_checked,
    row119_good112_checked,
    row119_good113_checked,
    row119_good114_checked,
    row119_good115_checked,
    row119_good116_checked,
    row119_good117_checked,
    row119_good118_checked,
    row119_good119_checked,
    row119_good120_checked,
    row119_good121_checked,
    row119_good122_checked,
    row119_good123_checked,
    row119_good124_checked,
    row119_good125_checked,
    row119_good126_checked,
    row119_good127_checked,
    row119_good128_checked,
    row119_good129_checked,
    row119_good130_checked,
    row119_good131_checked,
    row119_good132_checked,
    row119_good133_checked,
    row119_good134_checked,
    row119_good135_checked,
    row119_good136_checked,
    row119_good137_checked,
    row119_good138_checked,
    row119_good139_checked,
    row119_good140_checked,
    row119_good141_checked,
    row119_good142_checked,
    row119_good143_checked,
    row119_good144_checked,
    row119_good145_checked,
    row119_good146_checked,
    row119_good147_checked,
    row119_good148_checked,
    row119_good149_checked,
    row119_good150_checked,
    row119_good151_checked,
    row119_good152_checked,
    row119_good153_checked,
    row119_good154_checked,
    row119_good155_checked,
    row119_good156_checked,
    row119_good157_checked,
    row119_good158_checked,
    row119_good159_checked,
    row119_good160_checked,
    row119_good161_checked,
    row119_good162_checked,
    row119_good163_checked,
    row119_good164_checked,
    row119_good165_checked,
    row119_good166_checked,
    row119_good167_checked,
    row119_good168_checked,
    row119_good169_checked,
    row119_good170_checked,
    row119_good171_checked,
    row119_good172_checked,
    row119_good173_checked,
    row119_good174_checked,
    row119_good175_checked,
    row119_good176_checked,
    row119_good177_checked,
    row119_good178_checked,
    row119_good179_checked,
    row119_good180_checked,
    row119_good181_checked,
    row119_good182_checked,
    row119_good183_checked,
    row119_good184_checked,
    row119_good185_checked,
    row119_good186_checked,
    row119_good187_checked,
    row119_good188_checked,
    row119_good189_checked,
    row119_good190_checked,
    row119_good191_checked,
    row119_good192_checked,
    row119_good193_checked,
    row119_good194_checked,
    row119_good195_checked,
    row119_good196_checked,
    row119_good197_checked,
    row119_good198_checked,
    row119_good199_checked,
    row119_good200_checked,
    row119_good201_checked,
    row119_good202_checked,
    row119_good203_checked,
    row119_good204_checked,
    row119_good205_checked,
    row119_good206_checked,
    row119_good207_checked,
    row119_good208_checked,
    row119_good209_checked,
    row119_good210_checked,
    row119_good211_checked,
    row119_good212_checked,
    row119_good213_checked,
    row119_good214_checked,
    row119_good215_checked,
    row119_good216_checked,
    row119_good217_checked,
    row119_good218_checked,
    row119_good219_checked,
    row119_good220_checked,
    row119_good221_checked,
    row119_good222_checked,
    row119_good223_checked,
    row119_good224_checked,
    row119_good225_checked,
    row119_good226_checked,
    row119_good227_checked,
    row119_good228_checked,
    row119_good229_checked,
    row119_good230_checked,
    row119_good231_checked,
    row119_good232_checked,
    row119_good233_checked,
    row119_good234_checked,
    row119_good235_checked,
    row119_good236_checked,
    row119_good237_checked,
    row119_good238_checked,
    row119_good239_checked,
    row119_good240_checked,
    row119_good241_checked,
    row119_good242_checked,
    row119_good243_checked,
    row119_good244_checked,
    row119_good245_checked,
    row119_good246_checked,
    row119_good247_checked,
    row119_good248_checked,
    row119_good249_checked,
    row119_good250_checked,
    row119_good251_checked,
    row119_good252_checked,
    row119_good253_checked,
    row119_good254_checked,
    row119_good255_checked,
    row119_good256_checked,
    row119_good257_checked,
    row119_good258_checked,
    row119_good259_checked,
    row119_good260_checked,
    row119_good261_checked,
    row119_good262_checked,
    row119_good263_checked,
    row119_good264_checked,
    row119_good265_checked,
    row119_good266_checked,
    row119_good267_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_registered :
    decide (row119.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row119_small_checked :
    coverCheck (2 * row119.height.i + 2) (row119.height.i * (row119.height.i - 1) - 1)
      (row119.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row119_layerCover_checked :
    coverCheck (row119.height.i * (row119.height.i - 1)) (row119.height.n0 - 1)
      (row119.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row119_bounds : List NatInterval :=
  [(240, 357), (358, 471), (472, 585), (586, 695), (696, 809), (810, 927), (928, 1037), (1038, 1151), (1152, 1269), (1270, 1377), (1378, 1491), (1492, 1607), (1608, 1725), (1726, 1841), (1842, 1949), (1950, 2067), (2068, 2181), (2182, 2297), (2298, 2415), (2416, 2529), (2530, 2639), (2640, 2751), (2752, 2867), (2868, 2979), (2980, 3089), (3090, 3207), (3208, 3321), (3322, 3437), (3438, 3551), (3552, 3665), (3666, 3777), (3778, 3887), (3888, 3999), (4000, 4107), (4108, 4217), (4218, 4335), (4336, 4445), (4446, 4559), (4560, 4667), (4668, 4781), (4782, 4877), (4878, 4995), (4996, 5111), (5112, 5225), (5226, 5327), (5328, 5441), (5442, 5559), (5560, 5675), (5676, 5787), (5788, 5901), (5902, 6015), (6016, 6129), (6130, 6239), (6240, 6347), (6348, 6461), (6462, 6569), (6570, 6687), (6688, 6797), (6798, 6911), (6912, 7029), (7030, 7145), (7146, 7247), (7248, 7365), (7366, 7469), (7470, 7577), (7578, 7695), (7696, 7809), (7810, 7911), (7912, 8025), (8026, 8135), (8136, 8241), (8242, 8355), (8356, 8471), (8472, 8585), (8586, 8699), (8700, 8817), (8818, 8925), (8926, 9041), (9042, 9159), (9160, 9275), (9276, 9375), (9376, 9489), (9490, 9597), (9598, 9705), (9706, 9815), (9816, 9929), (9930, 10047), (10048, 10157), (10158, 10269), (10270, 10385), (10386, 10487), (10488, 10605), (10606, 10719), (10720, 10829), (10830, 10917), (10918, 11027), (11028, 11145), (11146, 11249), (11250, 11361), (11362, 11471), (11472, 11589), (11590, 11705), (11706, 11819), (11820, 11931), (11932, 12045), (12046, 12161), (12162, 12279), (12280, 12395), (12396, 12509), (12510, 12621), (12622, 12737), (12738, 12839), (12840, 12947), (12948, 13059), (13060, 13167), (13168, 13281), (13282, 13385), (13386, 13499), (13500, 13617), (13618, 13731), (13732, 13847), (13848, 13959), (13960, 14041), (14336, 14445), (14446, 14493), (14641, 14698), (14884, 14910), (15123, 15239), (15240, 15247), (15360, 15477), (15478, 15497), (15979, 16091), (16092, 16105), (16384, 16499), (16500, 16502), (16807, 16905), (16906, 16938), (17303, 17417), (17418, 17526), (17576, 17614), (17661, 17777), (17778, 17779), (18490, 18599), (18600, 18620), (18634, 18735), (18736, 18849), (18850, 18868), (19220, 19284), (19456, 19461), (19683, 19799), (19800, 19801), (19881, 19891), (19965, 19999), (20172, 20279), (20280, 20290), (20402, 20457), (20480, 20520), (20535, 20651), (20652, 20653), (20667, 20695), (21218, 21260), (21296, 21401), (21402, 21414), (21870, 21981), (21982, 22022), (22103, 22211), (22212, 22221), (22472, 22587), (22588, 22590), (22627, 22646), (23552, 23652), (23763, 23879), (23880, 23880), (24037, 24147), (24148, 24155), (24167, 24175), (24334, 24447), (24448, 24485), (24642, 24694), (25000, 25082), (25215, 25307), (25308, 25399), (26047, 26129), (26620, 26715), (26716, 26742), (26934, 27014), (27436, 27498), (27848, 27853), (27951, 27966), (28125, 28208), (28227, 28243), (28577, 28691), (28692, 28695), (28717, 28790), (29791, 29886), (30258, 30364), (30618, 30711), (30712, 30736), (30758, 30838), (30926, 31017), (31250, 31323), (31329, 31368), (31423, 31515), (31516, 31541), (31939, 31945), (31974, 32057), (32805, 32886), (33708, 33732), (34347, 34455), (34456, 34493), (34816, 34925), (34926, 34928), (35152, 35249), (35344, 35405), (36517, 36615), (36616, 36619), (37210, 37297), (37303, 37328), (37349, 37421), (37446, 37467), (37500, 37611), (37612, 37618), (37636, 37671), (38307, 38409), (39366, 39444), (39605, 39664), (40401, 40446), (40960, 41049), (41772, 41861), (43750, 43805), (44944, 45008), (45056, 45062), (45369, 45371), (47526, 47639), (47640, 47642), (48013, 48079), (48734, 48851), (48852, 48852), (50000, 50046), (50653, 50680), (51076, 51123), (53125, 53163), (53290, 53366), (53371, 53408), (55451, 55559), (55560, 55565), (57344, 57363), (58619, 58682), (62500, 62528), (63948, 63963), (65536, 65639), (65640, 65654), (68651, 68757), (68758, 68769), (68921, 69008), (71289, 71404), (71407, 71407), (73205, 73285), (89383, 89491), (91854, 91927), (95052, 95145), (95146, 95166), (98415, 98422), (102973, 103003), (103041, 103091), (137842, 137899), (146410, 146452), (148955, 148995)]

theorem row119_bounds_eq : row119.goods.map goodSegmentBounds = row119_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row119_layer000_intervals : List ColouredInterval :=
  [(2, 14336, 14454), (2, 15360, 15478), (2, 16384, 16502), (2, 17408, 17526), (2, 18432, 18550), (2, 19456, 19574), (2, 20480, 20598), (2, 21504, 21622), (2, 22528, 22646), (2, 23552, 23670), (2, 14336, 14454), (2, 16384, 16502), (2, 18432, 18550), (2, 20480, 20598), (2, 22528, 22646), (2, 24576, 24694), (2, 26624, 26742), (2, 16384, 16502), (2, 20480, 20598), (2, 24576, 24694), (2, 16384, 16502), (2, 24576, 24694), (2, 16384, 16502), (3, 14580, 14698), (3, 15309, 15427), (3, 16038, 16156), (3, 16767, 16885), (3, 15309, 15427), (3, 17496, 17614), (3, 19683, 19801), (3, 21870, 21988), (3, 24057, 24175), (3, 26244, 26362), (3, 19683, 19801), (3, 26244, 26362), (3, 19683, 19801), (5, 14375, 14493), (5, 15625, 15743), (5, 18750, 18868), (5, 21875, 21993), (5, 25000, 25118), (5, 15625, 15743), (7, 16807, 16925), (11, 14641, 14759), (11, 15972, 16090), (11, 17303, 17421), (11, 18634, 18752), (11, 19965, 20083), (11, 21296, 21414), (11, 22627, 22745), (11, 23958, 24076), (11, 25289, 25407), (11, 26620, 26738), (11, 27951, 28069), (11, 14641, 14759), (13, 15379, 15497), (13, 17576, 17694), (13, 19773, 19891), (13, 21970, 22088), (13, 24167, 24285), (13, 26364, 26482), (19, 20577, 20695), (19, 27436, 27554), (23, 24334, 24452), (29, 14297, 14415), (29, 15138, 15256), (29, 15979, 16097), (29, 16820, 16938), (29, 17661, 17779), (29, 18502, 18620), (29, 19343, 19461), (29, 24389, 24507), (31, 14415, 14533), (31, 15376, 15494), (31, 16337, 16455), (31, 17298, 17416), (31, 18259, 18377), (31, 19220, 19338), (31, 20181, 20299), (31, 21142, 21260), (31, 22103, 22221), (37, 15059, 15177), (37, 16428, 16546), (37, 17797, 17915), (37, 19166, 19284), (37, 20535, 20653), (37, 21904, 22022), (37, 23273, 23391), (37, 24642, 24760), (37, 26011, 26129), (37, 27380, 27498), (41, 15129, 15247), (41, 16810, 16928), (41, 18491, 18609), (41, 20172, 20290), (41, 21853, 21971), (41, 23534, 23652), (41, 25215, 25333), (41, 26896, 27014), (43, 14792, 14910), (43, 16641, 16759), (43, 18490, 18608), (43, 20339, 20457), (43, 22188, 22306), (43, 24037, 24155), (43, 25886, 26004), (43, 27735, 27853), (47, 15463, 15581), (47, 17672, 17790), (47, 19881, 19999), (47, 22090, 22208), (47, 24299, 24417), (47, 26508, 26626), (53, 14045, 14163), (53, 16854, 16972), (53, 19663, 19781), (53, 22472, 22590), (53, 25281, 25399), (59, 14042, 14042), (59, 17405, 17523), (59, 20886, 21004), (59, 24367, 24485), (59, 27848, 27966), (61, 14884, 15002), (61, 18605, 18723), (61, 22326, 22444), (61, 26047, 26165), (67, 17956, 18074), (67, 22445, 22563), (67, 26934, 27052), (71, 15123, 15241), (71, 20164, 20282), (71, 25205, 25323), (73, 15987, 16105), (73, 21316, 21434), (73, 26645, 26763), (79, 18723, 18841), (79, 24964, 25082), (83, 20667, 20785), (83, 27556, 27674), (89, 15842, 15960), (89, 23763, 23881), (97, 18818, 18936), (101, 20402, 20520), (103, 21218, 21336), (107, 22898, 23016), (109, 23762, 23880), (113, 25538, 25656)]

def row119_layer000_block000 : List ColouredInterval :=
  [(2, 14336, 14454), (2, 15360, 15478), (2, 16384, 16502), (2, 17408, 17526), (2, 18432, 18550), (2, 19456, 19574), (2, 20480, 20598), (2, 21504, 21622), (2, 22528, 22646), (2, 23552, 23670), (2, 14336, 14454), (2, 16384, 16502), (2, 18432, 18550)]

def row119_layer000_block001 : List ColouredInterval :=
  [(2, 20480, 20598), (2, 22528, 22646), (2, 24576, 24694), (2, 26624, 26742), (2, 16384, 16502), (2, 20480, 20598), (2, 24576, 24694), (2, 16384, 16502), (2, 24576, 24694), (2, 16384, 16502), (3, 14580, 14698), (3, 15309, 15427), (3, 16038, 16156)]

def row119_layer000_block002 : List ColouredInterval :=
  [(3, 16767, 16885), (3, 15309, 15427), (3, 17496, 17614), (3, 19683, 19801), (3, 21870, 21988), (3, 24057, 24175), (3, 26244, 26362), (3, 19683, 19801), (3, 26244, 26362), (3, 19683, 19801), (5, 14375, 14493), (5, 15625, 15743), (5, 18750, 18868)]

def row119_layer000_block003 : List ColouredInterval :=
  [(5, 21875, 21993), (5, 25000, 25118), (5, 15625, 15743), (7, 16807, 16925), (11, 14641, 14759), (11, 15972, 16090), (11, 17303, 17421), (11, 18634, 18752), (11, 19965, 20083), (11, 21296, 21414), (11, 22627, 22745), (11, 23958, 24076), (11, 25289, 25407)]

def row119_layer000_block004 : List ColouredInterval :=
  [(11, 26620, 26738), (11, 27951, 28069), (11, 14641, 14759), (13, 15379, 15497), (13, 17576, 17694), (13, 19773, 19891), (13, 21970, 22088), (13, 24167, 24285), (13, 26364, 26482), (19, 20577, 20695), (19, 27436, 27554), (23, 24334, 24452), (29, 14297, 14415)]

def row119_layer000_block005 : List ColouredInterval :=
  [(29, 15138, 15256), (29, 15979, 16097), (29, 16820, 16938), (29, 17661, 17779), (29, 18502, 18620), (29, 19343, 19461), (29, 24389, 24507), (31, 14415, 14533), (31, 15376, 15494), (31, 16337, 16455), (31, 17298, 17416), (31, 18259, 18377), (31, 19220, 19338)]

def row119_layer000_block006 : List ColouredInterval :=
  [(31, 20181, 20299), (31, 21142, 21260), (31, 22103, 22221), (37, 15059, 15177), (37, 16428, 16546), (37, 17797, 17915), (37, 19166, 19284), (37, 20535, 20653), (37, 21904, 22022), (37, 23273, 23391), (37, 24642, 24760), (37, 26011, 26129), (37, 27380, 27498)]

def row119_layer000_block007 : List ColouredInterval :=
  [(41, 15129, 15247), (41, 16810, 16928), (41, 18491, 18609), (41, 20172, 20290), (41, 21853, 21971), (41, 23534, 23652), (41, 25215, 25333), (41, 26896, 27014), (43, 14792, 14910), (43, 16641, 16759), (43, 18490, 18608), (43, 20339, 20457), (43, 22188, 22306)]

def row119_layer000_block008 : List ColouredInterval :=
  [(43, 24037, 24155), (43, 25886, 26004), (43, 27735, 27853), (47, 15463, 15581), (47, 17672, 17790), (47, 19881, 19999), (47, 22090, 22208), (47, 24299, 24417), (47, 26508, 26626), (53, 14045, 14163), (53, 16854, 16972), (53, 19663, 19781), (53, 22472, 22590)]

def row119_layer000_block009 : List ColouredInterval :=
  [(53, 25281, 25399), (59, 14042, 14042), (59, 17405, 17523), (59, 20886, 21004), (59, 24367, 24485), (59, 27848, 27966), (61, 14884, 15002), (61, 18605, 18723), (61, 22326, 22444), (61, 26047, 26165), (67, 17956, 18074), (67, 22445, 22563), (67, 26934, 27052)]

def row119_layer000_block010 : List ColouredInterval :=
  [(71, 15123, 15241), (71, 20164, 20282), (71, 25205, 25323), (73, 15987, 16105), (73, 21316, 21434), (73, 26645, 26763), (79, 18723, 18841), (79, 24964, 25082), (83, 20667, 20785), (83, 27556, 27674), (89, 15842, 15960), (89, 23763, 23881), (97, 18818, 18936)]

def row119_layer000_block011 : List ColouredInterval :=
  [(101, 20402, 20520), (103, 21218, 21336), (107, 22898, 23016), (109, 23762, 23880), (113, 25538, 25656)]

def row119_layer000_chunks : List (List ColouredInterval) :=
  [row119_layer000_block000, row119_layer000_block001, row119_layer000_block002, row119_layer000_block003, row119_layer000_block004, row119_layer000_block005, row119_layer000_block006, row119_layer000_block007, row119_layer000_block008, row119_layer000_block009, row119_layer000_block010, row119_layer000_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_arithmetic : LayerArithmeticValid row119.height { lower := 14042, upper := 28084, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_enumeration :
    activePowerIntervalList 119 23 14042 28084 = row119_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs000 :
    row119_layer000_block000.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs001 :
    row119_layer000_block001.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs002 :
    row119_layer000_block002.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs003 :
    row119_layer000_block003.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs004 :
    row119_layer000_block004.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs005 :
    row119_layer000_block005.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs006 :
    row119_layer000_block006.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs007 :
    row119_layer000_block007.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs007
