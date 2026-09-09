import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

#eval IO.eprintln "PROBE row184_height"

def row184_height : HeightCertificateDatum := { i := 184, r := 61, s := 130, n0Power10 := 7 }

#eval IO.eprintln "PROBE row184_goods"

def row184_goods : List GoodSegment := [
  { lower := 370, upper := 550, witness := RowWitness.topPrime 367 },
  { lower := 551, upper := 730, witness := RowWitness.topPrime 547 },
  { lower := 731, upper := 910, witness := RowWitness.topPrime 727 },
  { lower := 911, upper := 1094, witness := RowWitness.topPrime 911 },
  { lower := 1095, upper := 1276, witness := RowWitness.topPrime 1093 },
  { lower := 1277, upper := 1460, witness := RowWitness.topPrime 1277 },
  { lower := 1461, upper := 1642, witness := RowWitness.topPrime 1459 },
  { lower := 1643, upper := 1820, witness := RowWitness.topPrime 1637 },
  { lower := 1821, upper := 1994, witness := RowWitness.topPrime 1811 },
  { lower := 1995, upper := 2176, witness := RowWitness.topPrime 1993 },
  { lower := 2177, upper := 2344, witness := RowWitness.topPrime 2161 },
  { lower := 2345, upper := 2524, witness := RowWitness.topPrime 2341 },
  { lower := 2525, upper := 2704, witness := RowWitness.topPrime 2521 },
  { lower := 2705, upper := 2882, witness := RowWitness.topPrime 2699 },
  { lower := 2883, upper := 3062, witness := RowWitness.topPrime 2879 },
  { lower := 3063, upper := 3244, witness := RowWitness.topPrime 3061 },
  { lower := 3245, upper := 3412, witness := RowWitness.topPrime 3229 },
  { lower := 3413, upper := 3596, witness := RowWitness.topPrime 3413 },
  { lower := 3597, upper := 3776, witness := RowWitness.topPrime 3593 },
  { lower := 3777, upper := 3952, witness := RowWitness.topPrime 3769 },
  { lower := 3953, upper := 4130, witness := RowWitness.topPrime 3947 },
  { lower := 4131, upper := 4312, witness := RowWitness.topPrime 4129 },
  { lower := 4313, upper := 4480, witness := RowWitness.topPrime 4297 },
  { lower := 4481, upper := 4664, witness := RowWitness.topPrime 4481 },
  { lower := 4665, upper := 4846, witness := RowWitness.topPrime 4663 },
  { lower := 4847, upper := 5014, witness := RowWitness.topPrime 4831 },
  { lower := 5015, upper := 5194, witness := RowWitness.topPrime 5011 },
  { lower := 5195, upper := 5372, witness := RowWitness.topPrime 5189 },
  { lower := 5373, upper := 5534, witness := RowWitness.topPrime 5351 },
  { lower := 5535, upper := 5714, witness := RowWitness.topPrime 5531 },
  { lower := 5715, upper := 5894, witness := RowWitness.topPrime 5711 },
  { lower := 5895, upper := 6064, witness := RowWitness.topPrime 5881 },
  { lower := 6065, upper := 6236, witness := RowWitness.topPrime 6053 },
  { lower := 6237, upper := 6412, witness := RowWitness.topPrime 6229 },
  { lower := 6413, upper := 6580, witness := RowWitness.topPrime 6397 },
  { lower := 6581, upper := 6764, witness := RowWitness.topPrime 6581 },
  { lower := 6765, upper := 6946, witness := RowWitness.topPrime 6763 },
  { lower := 6947, upper := 7130, witness := RowWitness.topPrime 6947 },
  { lower := 7131, upper := 7312, witness := RowWitness.topPrime 7129 },
  { lower := 7313, upper := 7492, witness := RowWitness.topPrime 7309 },
  { lower := 7493, upper := 7672, witness := RowWitness.topPrime 7489 },
  { lower := 7673, upper := 7856, witness := RowWitness.topPrime 7673 },
  { lower := 7857, upper := 8036, witness := RowWitness.topPrime 7853 },
  { lower := 8037, upper := 8200, witness := RowWitness.topPrime 8017 },
  { lower := 8201, upper := 8374, witness := RowWitness.topPrime 8191 },
  { lower := 8375, upper := 8552, witness := RowWitness.topPrime 8369 },
  { lower := 8553, upper := 8726, witness := RowWitness.topPrime 8543 },
  { lower := 8727, upper := 8902, witness := RowWitness.topPrime 8719 },
  { lower := 8903, upper := 9076, witness := RowWitness.topPrime 8893 },
  { lower := 9077, upper := 9250, witness := RowWitness.topPrime 9067 },
  { lower := 9251, upper := 9424, witness := RowWitness.topPrime 9241 },
  { lower := 9425, upper := 9604, witness := RowWitness.topPrime 9421 },
  { lower := 9605, upper := 9784, witness := RowWitness.topPrime 9601 },
  { lower := 9785, upper := 9964, witness := RowWitness.topPrime 9781 },
  { lower := 9965, upper := 10132, witness := RowWitness.topPrime 9949 },
  { lower := 10133, upper := 10316, witness := RowWitness.topPrime 10133 },
  { lower := 10317, upper := 10496, witness := RowWitness.topPrime 10313 },
  { lower := 10497, upper := 10670, witness := RowWitness.topPrime 10487 },
  { lower := 10671, upper := 10850, witness := RowWitness.topPrime 10667 },
  { lower := 10851, upper := 11030, witness := RowWitness.topPrime 10847 },
  { lower := 11031, upper := 11210, witness := RowWitness.topPrime 11027 },
  { lower := 11211, upper := 11380, witness := RowWitness.topPrime 11197 },
  { lower := 11381, upper := 11552, witness := RowWitness.topPrime 11369 },
  { lower := 11553, upper := 11734, witness := RowWitness.topPrime 11551 },
  { lower := 11735, upper := 11914, witness := RowWitness.topPrime 11731 },
  { lower := 11915, upper := 12092, witness := RowWitness.topPrime 11909 },
  { lower := 12093, upper := 12256, witness := RowWitness.topPrime 12073 },
  { lower := 12257, upper := 12436, witness := RowWitness.topPrime 12253 },
  { lower := 12437, upper := 12620, witness := RowWitness.topPrime 12437 },
  { lower := 12621, upper := 12802, witness := RowWitness.topPrime 12619 },
  { lower := 12803, upper := 12982, witness := RowWitness.topPrime 12799 },
  { lower := 12983, upper := 13166, witness := RowWitness.topPrime 12983 },
  { lower := 13167, upper := 13346, witness := RowWitness.topPrime 13163 },
  { lower := 13347, upper := 13522, witness := RowWitness.topPrime 13339 },
  { lower := 13523, upper := 13706, witness := RowWitness.topPrime 13523 },
  { lower := 13707, upper := 13880, witness := RowWitness.topPrime 13697 },
  { lower := 13881, upper := 14062, witness := RowWitness.topPrime 13879 },
  { lower := 14063, upper := 14240, witness := RowWitness.topPrime 14057 },
  { lower := 14241, upper := 14404, witness := RowWitness.topPrime 14221 },
  { lower := 14405, upper := 14584, witness := RowWitness.topPrime 14401 },
  { lower := 14585, upper := 14746, witness := RowWitness.topPrime 14563 },
  { lower := 14747, upper := 14930, witness := RowWitness.topPrime 14747 },
  { lower := 14931, upper := 15112, witness := RowWitness.topPrime 14929 },
  { lower := 15113, upper := 15290, witness := RowWitness.topPrime 15107 },
  { lower := 15291, upper := 15472, witness := RowWitness.topPrime 15289 },
  { lower := 15473, upper := 15656, witness := RowWitness.topPrime 15473 },
  { lower := 15657, upper := 15832, witness := RowWitness.topPrime 15649 },
  { lower := 15833, upper := 16006, witness := RowWitness.topPrime 15823 },
  { lower := 16007, upper := 16190, witness := RowWitness.topPrime 16007 },
  { lower := 16191, upper := 16372, witness := RowWitness.topPrime 16189 },
  { lower := 16373, upper := 16552, witness := RowWitness.topPrime 16369 },
  { lower := 16553, upper := 16736, witness := RowWitness.topPrime 16553 },
  { lower := 16737, upper := 16912, witness := RowWitness.topPrime 16729 },
  { lower := 16913, upper := 17086, witness := RowWitness.topPrime 16903 },
  { lower := 17087, upper := 17260, witness := RowWitness.topPrime 17077 },
  { lower := 17261, upper := 17440, witness := RowWitness.topPrime 17257 },
  { lower := 17441, upper := 17614, witness := RowWitness.topPrime 17431 },
  { lower := 17615, upper := 17792, witness := RowWitness.topPrime 17609 },
  { lower := 17793, upper := 17974, witness := RowWitness.topPrime 17791 },
  { lower := 17975, upper := 18154, witness := RowWitness.topPrime 17971 },
  { lower := 18155, upper := 18332, witness := RowWitness.topPrime 18149 },
  { lower := 18333, upper := 18512, witness := RowWitness.topPrime 18329 },
  { lower := 18513, upper := 18686, witness := RowWitness.topPrime 18503 },
  { lower := 18687, upper := 18862, witness := RowWitness.topPrime 18679 },
  { lower := 18863, upper := 19042, witness := RowWitness.topPrime 18859 },
  { lower := 19043, upper := 19220, witness := RowWitness.topPrime 19037 },
  { lower := 19221, upper := 19402, witness := RowWitness.topPrime 19219 },
  { lower := 19403, upper := 19586, witness := RowWitness.topPrime 19403 },
  { lower := 19587, upper := 19766, witness := RowWitness.topPrime 19583 },
  { lower := 19767, upper := 19946, witness := RowWitness.topPrime 19763 },
  { lower := 19947, upper := 20120, witness := RowWitness.topPrime 19937 },
  { lower := 20121, upper := 20300, witness := RowWitness.topPrime 20117 },
  { lower := 20301, upper := 20480, witness := RowWitness.topPrime 20297 },
  { lower := 20481, upper := 20662, witness := RowWitness.topPrime 20479 },
  { lower := 20663, upper := 20846, witness := RowWitness.topPrime 20663 },
  { lower := 20847, upper := 20992, witness := RowWitness.topPrime 20809 },
  { lower := 20993, upper := 21166, witness := RowWitness.topPrime 20983 },
  { lower := 21167, upper := 21346, witness := RowWitness.topPrime 21163 },
  { lower := 21347, upper := 21530, witness := RowWitness.topPrime 21347 },
  { lower := 21531, upper := 21712, witness := RowWitness.topPrime 21529 },
  { lower := 21713, upper := 21896, witness := RowWitness.topPrime 21713 },
  { lower := 21897, upper := 22076, witness := RowWitness.topPrime 21893 },
  { lower := 22077, upper := 22256, witness := RowWitness.topPrime 22073 },
  { lower := 22257, upper := 22430, witness := RowWitness.topPrime 22247 },
  { lower := 22431, upper := 22592, witness := RowWitness.topPrime 22409 },
  { lower := 22593, upper := 22756, witness := RowWitness.topPrime 22573 },
  { lower := 22757, upper := 22934, witness := RowWitness.topPrime 22751 },
  { lower := 22935, upper := 23104, witness := RowWitness.topPrime 22921 },
  { lower := 23105, upper := 23282, witness := RowWitness.topPrime 23099 },
  { lower := 23283, upper := 23462, witness := RowWitness.topPrime 23279 },
  { lower := 23463, upper := 23642, witness := RowWitness.topPrime 23459 },
  { lower := 23643, upper := 23816, witness := RowWitness.topPrime 23633 },
  { lower := 23817, upper := 23996, witness := RowWitness.topPrime 23813 },
  { lower := 23997, upper := 24176, witness := RowWitness.topPrime 23993 },
  { lower := 24177, upper := 24352, witness := RowWitness.topPrime 24169 },
  { lower := 24353, upper := 24520, witness := RowWitness.topPrime 24337 },
  { lower := 24521, upper := 24700, witness := RowWitness.topPrime 24517 },
  { lower := 24701, upper := 24880, witness := RowWitness.topPrime 24697 },
  { lower := 24881, upper := 25060, witness := RowWitness.topPrime 24877 },
  { lower := 25061, upper := 25240, witness := RowWitness.topPrime 25057 },
  { lower := 25241, upper := 25420, witness := RowWitness.topPrime 25237 },
  { lower := 25421, upper := 25594, witness := RowWitness.topPrime 25411 },
  { lower := 25595, upper := 25772, witness := RowWitness.topPrime 25589 },
  { lower := 25773, upper := 25954, witness := RowWitness.topPrime 25771 },
  { lower := 25955, upper := 26134, witness := RowWitness.topPrime 25951 },
  { lower := 26135, upper := 26302, witness := RowWitness.topPrime 26119 },
  { lower := 26303, upper := 26480, witness := RowWitness.topPrime 26297 },
  { lower := 26481, upper := 26662, witness := RowWitness.topPrime 26479 },
  { lower := 26663, upper := 26830, witness := RowWitness.topPrime 26647 },
  { lower := 26831, upper := 27004, witness := RowWitness.topPrime 26821 },
  { lower := 27005, upper := 27176, witness := RowWitness.topPrime 26993 },
  { lower := 27177, upper := 27326, witness := RowWitness.topPrime 27143 },
  { lower := 27327, upper := 27482, witness := RowWitness.topPrime 27299 },
  { lower := 27483, upper := 27664, witness := RowWitness.topPrime 27481 },
  { lower := 27665, upper := 27836, witness := RowWitness.topPrime 27653 },
  { lower := 27837, upper := 28010, witness := RowWitness.topPrime 27827 },
  { lower := 28011, upper := 28184, witness := RowWitness.topPrime 28001 },
  { lower := 28185, upper := 28366, witness := RowWitness.topPrime 28183 },
  { lower := 28367, upper := 28534, witness := RowWitness.topPrime 28351 },
  { lower := 28535, upper := 28700, witness := RowWitness.topPrime 28517 },
  { lower := 28701, upper := 28880, witness := RowWitness.topPrime 28697 },
  { lower := 28881, upper := 29062, witness := RowWitness.topPrime 28879 },
  { lower := 29063, upper := 29246, witness := RowWitness.topPrime 29063 },
  { lower := 29247, upper := 29426, witness := RowWitness.topPrime 29243 },
  { lower := 29427, upper := 29606, witness := RowWitness.topPrime 29423 },
  { lower := 29607, upper := 29782, witness := RowWitness.topPrime 29599 },
  { lower := 29783, upper := 29944, witness := RowWitness.topPrime 29761 },
  { lower := 29945, upper := 30110, witness := RowWitness.topPrime 29927 },
  { lower := 30111, upper := 30292, witness := RowWitness.topPrime 30109 },
  { lower := 30293, upper := 30476, witness := RowWitness.topPrime 30293 },
  { lower := 30477, upper := 30652, witness := RowWitness.topPrime 30469 },
  { lower := 30653, upper := 30832, witness := RowWitness.topPrime 30649 },
  { lower := 30833, upper := 31012, witness := RowWitness.topPrime 30829 },
  { lower := 31013, upper := 31196, witness := RowWitness.topPrime 31013 },
  { lower := 31197, upper := 31376, witness := RowWitness.topPrime 31193 },
  { lower := 31377, upper := 31540, witness := RowWitness.topPrime 31357 },
  { lower := 31541, upper := 31724, witness := RowWitness.topPrime 31541 },
  { lower := 31725, upper := 31906, witness := RowWitness.topPrime 31723 },
  { lower := 31907, upper := 32090, witness := RowWitness.topPrime 31907 },
  { lower := 32091, upper := 32272, witness := RowWitness.topPrime 32089 },
  { lower := 32273, upper := 32444, witness := RowWitness.topPrime 32261 },
  { lower := 32445, upper := 32626, witness := RowWitness.topPrime 32443 },
  { lower := 32627, upper := 32804, witness := RowWitness.topPrime 32621 },
  { lower := 32805, upper := 32986, witness := RowWitness.topPrime 32803 },
  { lower := 32987, upper := 33170, witness := RowWitness.topPrime 32987 },
  { lower := 33171, upper := 33344, witness := RowWitness.topPrime 33161 },
  { lower := 33345, upper := 33526, witness := RowWitness.topPrime 33343 },
  { lower := 33527, upper := 33672, witness := RowWitness.topPrime 33521 },
  { lower := 33708, upper := 33797, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34502, witness := RowWitness.topPrime 34319 },
  { lower := 34503, upper := 34574, witness := RowWitness.topPrime 34501 },
  { lower := 37303, upper := 37393, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37486, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37676, witness := RowWitness.topPrime 37493 },
  { lower := 37677, upper := 37721, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38474, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39506, witness := RowWitness.topPrime 39323 },
  { lower := 39507, upper := 39509, witness := RowWitness.topPrime 39503 },
  { lower := 40401, upper := 40511, witness := RowWitness.topPrime 40387 },
  { lower := 40804, upper := 40808, witness := RowWitness.topPrime 40801 },
  { lower := 40931, upper := 40987, witness := RowWitness.topPrime 40927 },
  { lower := 41334, upper := 41337, witness := RowWitness.topPrime 41333 },
  { lower := 43750, upper := 43870, witness := RowWitness.topPrime 43721 },
  { lower := 43923, upper := 43933, witness := RowWitness.topPrime 43913 },
  { lower := 45369, upper := 45436, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45979, witness := RowWitness.topPrime 45893 },
  { lower := 47045, upper := 47058, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47704, witness := RowWitness.topPrime 47521 },
  { lower := 47705, upper := 47707, witness := RowWitness.topPrime 47701 },
  { lower := 48013, upper := 48144, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48554, witness := RowWitness.topPrime 48371 },
  { lower := 48555, upper := 48556, witness := RowWitness.topPrime 48541 },
  { lower := 48778, upper := 48917, witness := RowWitness.topPrime 48767 },
  { lower := 49298, upper := 49313, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49481, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50593, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51188, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53228, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53321, witness := RowWitness.topPrime 53281 },
  { lower := 54043, upper := 54051, witness := RowWitness.topPrime 54037 },
  { lower := 55451, upper := 55624, witness := RowWitness.topPrime 55441 },
  { lower := 55625, upper := 55630, witness := RowWitness.topPrime 55621 },
  { lower := 56307, upper := 56352, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56490, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57305, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58747, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59139, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59588, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62593, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64046, witness := RowWitness.topPrime 63863 },
  { lower := 64047, upper := 64052, witness := RowWitness.topPrime 64037 },
  { lower := 64082, upper := 64131, witness := RowWitness.topPrime 64081 },
  { lower := 65533, upper := 65704, witness := RowWitness.topPrime 65521 },
  { lower := 65705, upper := 65719, witness := RowWitness.topPrime 65701 },
  { lower := 68644, upper := 68822, witness := RowWitness.topPrime 68639 },
  { lower := 68823, upper := 68827, witness := RowWitness.topPrime 68821 },
  { lower := 68921, upper := 69073, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71470, witness := RowWitness.topPrime 71287 },
  { lower := 71471, upper := 71472, witness := RowWitness.topPrime 71471 },
  { lower := 73205, upper := 73350, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83704, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85866, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89556, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93933, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96788, witness := RowWitness.topPrime 96769 },
  { lower := 98415, upper := 98466, witness := RowWitness.topPrime 98411 },
  { lower := 98596, upper := 98598, witness := RowWitness.topPrime 98573 },
  { lower := 102152, upper := 102193, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103149, witness := RowWitness.topPrime 103007 },
  { lower := 131072, upper := 131227, witness := RowWitness.topPrime 131071 },
  { lower := 137842, upper := 137964, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149060, witness := RowWitness.topPrime 148949 },
  { lower := 195223, upper := 195295, witness := RowWitness.topPrime 195203 },
  { lower := 262144, upper := 262271, witness := RowWitness.topPrime 262139 }
]

#eval IO.eprintln "PROBE row184_layers"

def row184_layers : List CoverLayer := [
  { lower := 33672, upper := 67344, M := 14 },
  { lower := 67344, upper := 134688, M := 10 },
  { lower := 134688, upper := 269376, M := 8 },
  { lower := 269376, upper := 538752, M := 6 },
  { lower := 538752, upper := 1077504, M := 4 },
  { lower := 1077504, upper := 2155008, M := 3 },
  { lower := 2155008, upper := 4310016, M := 3 },
  { lower := 4310016, upper := 8620032, M := 2 },
  { lower := 8620032, upper := 10000000, M := 2 }
]

#eval IO.eprintln "PROBE row184"

def row184 : FiniteCoverRow := {
  height := row184_height,
  goods := row184_goods,
  layers := row184_layers
}

#eval IO.eprintln "PROBE row184_registered"

theorem row184_registered :
    decide (row184.height ∈ heightCertificateData) = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_goods_checked"

theorem row184_goods_checked :
    row184.goods.all (goodSegmentCheck row184.height.i row184.height.r row184.height.s) = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_small_checked"

theorem row184_small_checked :
    coverCheck (2 * row184.height.i + 2) (row184.height.i * (row184.height.i - 1) - 1)
      (row184.goods.map goodSegmentBounds) = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layerCover_checked"

theorem row184_layerCover_checked :
    coverCheck (row184.height.i * (row184.height.i - 1)) (row184.height.n0 - 1)
      (row184.layers.map CoverLayer.bounds) = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layer000_checked"

theorem row184_layer000_checked :
    coverLayerCheck row184.height row184.goods { lower := 33672, upper := 67344, M := 14 } = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layer001_checked"

theorem row184_layer001_checked :
    coverLayerCheck row184.height row184.goods { lower := 67344, upper := 134688, M := 10 } = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layer002_checked"

theorem row184_layer002_checked :
    coverLayerCheck row184.height row184.goods { lower := 134688, upper := 269376, M := 8 } = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layer003_checked"

theorem row184_layer003_checked :
    coverLayerCheck row184.height row184.goods { lower := 269376, upper := 538752, M := 6 } = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layer004_checked"

theorem row184_layer004_checked :
    coverLayerCheck row184.height row184.goods { lower := 538752, upper := 1077504, M := 4 } = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layer005_checked"

theorem row184_layer005_checked :
    coverLayerCheck row184.height row184.goods { lower := 1077504, upper := 2155008, M := 3 } = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layer006_checked"

theorem row184_layer006_checked :
    coverLayerCheck row184.height row184.goods { lower := 2155008, upper := 4310016, M := 3 } = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layer007_checked"

theorem row184_layer007_checked :
    coverLayerCheck row184.height row184.goods { lower := 4310016, upper := 8620032, M := 2 } = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layer008_checked"

theorem row184_layer008_checked :
    coverLayerCheck row184.height row184.goods { lower := 8620032, upper := 10000000, M := 2 } = true := by
  decide +kernel

#eval IO.eprintln "PROBE row184_layers_checked"

theorem row184_layers_checked :
    row184.layers.all (coverLayerCheck row184.height row184.goods) = true := by
  change List.all [
    { lower := 33672, upper := 67344, M := 14 },
    { lower := 67344, upper := 134688, M := 10 },
    { lower := 134688, upper := 269376, M := 8 },
    { lower := 269376, upper := 538752, M := 6 },
    { lower := 538752, upper := 1077504, M := 4 },
    { lower := 1077504, upper := 2155008, M := 3 },
    { lower := 2155008, upper := 4310016, M := 3 },
    { lower := 4310016, upper := 8620032, M := 2 },
    { lower := 8620032, upper := 10000000, M := 2 }
  ] (coverLayerCheck row184.height row184.goods) = true
  simp only [List.all_cons, List.all_nil,
    row184_layer000_checked,
    row184_layer001_checked,
    row184_layer002_checked,
    row184_layer003_checked,
    row184_layer004_checked,
    row184_layer005_checked,
    row184_layer006_checked,
    row184_layer007_checked,
    row184_layer008_checked,
    Bool.true_and]

#eval IO.eprintln "PROBE row184_checked"

theorem row184_checked : finiteCoverRowCheck row184 = true := by
  simp only [finiteCoverRowCheck, row184_registered, row184_goods_checked,
    row184_small_checked, row184_layerCover_checked, row184_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row184_checked

end B699LowIndex
