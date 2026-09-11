import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row184_height : HeightCertificateDatum := { i := 184, r := 61, s := 130, n0Power10 := 7 }

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

def row184 : FiniteCoverRow := {
  height := row184_height,
  goods := row184_goods,
  layers := row184_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good000_checked :
    goodSegmentCheck 184 61 130
      { lower := 370, upper := 550, witness := RowWitness.topPrime 367 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good001_checked :
    goodSegmentCheck 184 61 130
      { lower := 551, upper := 730, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good002_checked :
    goodSegmentCheck 184 61 130
      { lower := 731, upper := 910, witness := RowWitness.topPrime 727 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good003_checked :
    goodSegmentCheck 184 61 130
      { lower := 911, upper := 1094, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good004_checked :
    goodSegmentCheck 184 61 130
      { lower := 1095, upper := 1276, witness := RowWitness.topPrime 1093 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good005_checked :
    goodSegmentCheck 184 61 130
      { lower := 1277, upper := 1460, witness := RowWitness.topPrime 1277 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good006_checked :
    goodSegmentCheck 184 61 130
      { lower := 1461, upper := 1642, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good007_checked :
    goodSegmentCheck 184 61 130
      { lower := 1643, upper := 1820, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good008_checked :
    goodSegmentCheck 184 61 130
      { lower := 1821, upper := 1994, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good009_checked :
    goodSegmentCheck 184 61 130
      { lower := 1995, upper := 2176, witness := RowWitness.topPrime 1993 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good010_checked :
    goodSegmentCheck 184 61 130
      { lower := 2177, upper := 2344, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good011_checked :
    goodSegmentCheck 184 61 130
      { lower := 2345, upper := 2524, witness := RowWitness.topPrime 2341 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good012_checked :
    goodSegmentCheck 184 61 130
      { lower := 2525, upper := 2704, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good013_checked :
    goodSegmentCheck 184 61 130
      { lower := 2705, upper := 2882, witness := RowWitness.topPrime 2699 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good014_checked :
    goodSegmentCheck 184 61 130
      { lower := 2883, upper := 3062, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good015_checked :
    goodSegmentCheck 184 61 130
      { lower := 3063, upper := 3244, witness := RowWitness.topPrime 3061 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good016_checked :
    goodSegmentCheck 184 61 130
      { lower := 3245, upper := 3412, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good017_checked :
    goodSegmentCheck 184 61 130
      { lower := 3413, upper := 3596, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good018_checked :
    goodSegmentCheck 184 61 130
      { lower := 3597, upper := 3776, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good019_checked :
    goodSegmentCheck 184 61 130
      { lower := 3777, upper := 3952, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good020_checked :
    goodSegmentCheck 184 61 130
      { lower := 3953, upper := 4130, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good021_checked :
    goodSegmentCheck 184 61 130
      { lower := 4131, upper := 4312, witness := RowWitness.topPrime 4129 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good022_checked :
    goodSegmentCheck 184 61 130
      { lower := 4313, upper := 4480, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good023_checked :
    goodSegmentCheck 184 61 130
      { lower := 4481, upper := 4664, witness := RowWitness.topPrime 4481 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good024_checked :
    goodSegmentCheck 184 61 130
      { lower := 4665, upper := 4846, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good025_checked :
    goodSegmentCheck 184 61 130
      { lower := 4847, upper := 5014, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good026_checked :
    goodSegmentCheck 184 61 130
      { lower := 5015, upper := 5194, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good027_checked :
    goodSegmentCheck 184 61 130
      { lower := 5195, upper := 5372, witness := RowWitness.topPrime 5189 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good028_checked :
    goodSegmentCheck 184 61 130
      { lower := 5373, upper := 5534, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good029_checked :
    goodSegmentCheck 184 61 130
      { lower := 5535, upper := 5714, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good030_checked :
    goodSegmentCheck 184 61 130
      { lower := 5715, upper := 5894, witness := RowWitness.topPrime 5711 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good031_checked :
    goodSegmentCheck 184 61 130
      { lower := 5895, upper := 6064, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good032_checked :
    goodSegmentCheck 184 61 130
      { lower := 6065, upper := 6236, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good033_checked :
    goodSegmentCheck 184 61 130
      { lower := 6237, upper := 6412, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good034_checked :
    goodSegmentCheck 184 61 130
      { lower := 6413, upper := 6580, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good035_checked :
    goodSegmentCheck 184 61 130
      { lower := 6581, upper := 6764, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good036_checked :
    goodSegmentCheck 184 61 130
      { lower := 6765, upper := 6946, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good037_checked :
    goodSegmentCheck 184 61 130
      { lower := 6947, upper := 7130, witness := RowWitness.topPrime 6947 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good038_checked :
    goodSegmentCheck 184 61 130
      { lower := 7131, upper := 7312, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good039_checked :
    goodSegmentCheck 184 61 130
      { lower := 7313, upper := 7492, witness := RowWitness.topPrime 7309 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good040_checked :
    goodSegmentCheck 184 61 130
      { lower := 7493, upper := 7672, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good041_checked :
    goodSegmentCheck 184 61 130
      { lower := 7673, upper := 7856, witness := RowWitness.topPrime 7673 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good042_checked :
    goodSegmentCheck 184 61 130
      { lower := 7857, upper := 8036, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good043_checked :
    goodSegmentCheck 184 61 130
      { lower := 8037, upper := 8200, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good044_checked :
    goodSegmentCheck 184 61 130
      { lower := 8201, upper := 8374, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good045_checked :
    goodSegmentCheck 184 61 130
      { lower := 8375, upper := 8552, witness := RowWitness.topPrime 8369 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good046_checked :
    goodSegmentCheck 184 61 130
      { lower := 8553, upper := 8726, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good047_checked :
    goodSegmentCheck 184 61 130
      { lower := 8727, upper := 8902, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good048_checked :
    goodSegmentCheck 184 61 130
      { lower := 8903, upper := 9076, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good049_checked :
    goodSegmentCheck 184 61 130
      { lower := 9077, upper := 9250, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good050_checked :
    goodSegmentCheck 184 61 130
      { lower := 9251, upper := 9424, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good051_checked :
    goodSegmentCheck 184 61 130
      { lower := 9425, upper := 9604, witness := RowWitness.topPrime 9421 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good052_checked :
    goodSegmentCheck 184 61 130
      { lower := 9605, upper := 9784, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good053_checked :
    goodSegmentCheck 184 61 130
      { lower := 9785, upper := 9964, witness := RowWitness.topPrime 9781 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good054_checked :
    goodSegmentCheck 184 61 130
      { lower := 9965, upper := 10132, witness := RowWitness.topPrime 9949 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good055_checked :
    goodSegmentCheck 184 61 130
      { lower := 10133, upper := 10316, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good056_checked :
    goodSegmentCheck 184 61 130
      { lower := 10317, upper := 10496, witness := RowWitness.topPrime 10313 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good057_checked :
    goodSegmentCheck 184 61 130
      { lower := 10497, upper := 10670, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good058_checked :
    goodSegmentCheck 184 61 130
      { lower := 10671, upper := 10850, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good059_checked :
    goodSegmentCheck 184 61 130
      { lower := 10851, upper := 11030, witness := RowWitness.topPrime 10847 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good060_checked :
    goodSegmentCheck 184 61 130
      { lower := 11031, upper := 11210, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good061_checked :
    goodSegmentCheck 184 61 130
      { lower := 11211, upper := 11380, witness := RowWitness.topPrime 11197 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good062_checked :
    goodSegmentCheck 184 61 130
      { lower := 11381, upper := 11552, witness := RowWitness.topPrime 11369 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good063_checked :
    goodSegmentCheck 184 61 130
      { lower := 11553, upper := 11734, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good064_checked :
    goodSegmentCheck 184 61 130
      { lower := 11735, upper := 11914, witness := RowWitness.topPrime 11731 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good065_checked :
    goodSegmentCheck 184 61 130
      { lower := 11915, upper := 12092, witness := RowWitness.topPrime 11909 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good066_checked :
    goodSegmentCheck 184 61 130
      { lower := 12093, upper := 12256, witness := RowWitness.topPrime 12073 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good067_checked :
    goodSegmentCheck 184 61 130
      { lower := 12257, upper := 12436, witness := RowWitness.topPrime 12253 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good068_checked :
    goodSegmentCheck 184 61 130
      { lower := 12437, upper := 12620, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good069_checked :
    goodSegmentCheck 184 61 130
      { lower := 12621, upper := 12802, witness := RowWitness.topPrime 12619 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good070_checked :
    goodSegmentCheck 184 61 130
      { lower := 12803, upper := 12982, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good071_checked :
    goodSegmentCheck 184 61 130
      { lower := 12983, upper := 13166, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good072_checked :
    goodSegmentCheck 184 61 130
      { lower := 13167, upper := 13346, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good073_checked :
    goodSegmentCheck 184 61 130
      { lower := 13347, upper := 13522, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good074_checked :
    goodSegmentCheck 184 61 130
      { lower := 13523, upper := 13706, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good075_checked :
    goodSegmentCheck 184 61 130
      { lower := 13707, upper := 13880, witness := RowWitness.topPrime 13697 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good076_checked :
    goodSegmentCheck 184 61 130
      { lower := 13881, upper := 14062, witness := RowWitness.topPrime 13879 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good077_checked :
    goodSegmentCheck 184 61 130
      { lower := 14063, upper := 14240, witness := RowWitness.topPrime 14057 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good078_checked :
    goodSegmentCheck 184 61 130
      { lower := 14241, upper := 14404, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good079_checked :
    goodSegmentCheck 184 61 130
      { lower := 14405, upper := 14584, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good080_checked :
    goodSegmentCheck 184 61 130
      { lower := 14585, upper := 14746, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good081_checked :
    goodSegmentCheck 184 61 130
      { lower := 14747, upper := 14930, witness := RowWitness.topPrime 14747 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good082_checked :
    goodSegmentCheck 184 61 130
      { lower := 14931, upper := 15112, witness := RowWitness.topPrime 14929 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good083_checked :
    goodSegmentCheck 184 61 130
      { lower := 15113, upper := 15290, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good084_checked :
    goodSegmentCheck 184 61 130
      { lower := 15291, upper := 15472, witness := RowWitness.topPrime 15289 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good085_checked :
    goodSegmentCheck 184 61 130
      { lower := 15473, upper := 15656, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good086_checked :
    goodSegmentCheck 184 61 130
      { lower := 15657, upper := 15832, witness := RowWitness.topPrime 15649 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good087_checked :
    goodSegmentCheck 184 61 130
      { lower := 15833, upper := 16006, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good088_checked :
    goodSegmentCheck 184 61 130
      { lower := 16007, upper := 16190, witness := RowWitness.topPrime 16007 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good089_checked :
    goodSegmentCheck 184 61 130
      { lower := 16191, upper := 16372, witness := RowWitness.topPrime 16189 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good090_checked :
    goodSegmentCheck 184 61 130
      { lower := 16373, upper := 16552, witness := RowWitness.topPrime 16369 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good091_checked :
    goodSegmentCheck 184 61 130
      { lower := 16553, upper := 16736, witness := RowWitness.topPrime 16553 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good092_checked :
    goodSegmentCheck 184 61 130
      { lower := 16737, upper := 16912, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good093_checked :
    goodSegmentCheck 184 61 130
      { lower := 16913, upper := 17086, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good094_checked :
    goodSegmentCheck 184 61 130
      { lower := 17087, upper := 17260, witness := RowWitness.topPrime 17077 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good095_checked :
    goodSegmentCheck 184 61 130
      { lower := 17261, upper := 17440, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good096_checked :
    goodSegmentCheck 184 61 130
      { lower := 17441, upper := 17614, witness := RowWitness.topPrime 17431 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good097_checked :
    goodSegmentCheck 184 61 130
      { lower := 17615, upper := 17792, witness := RowWitness.topPrime 17609 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good098_checked :
    goodSegmentCheck 184 61 130
      { lower := 17793, upper := 17974, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good099_checked :
    goodSegmentCheck 184 61 130
      { lower := 17975, upper := 18154, witness := RowWitness.topPrime 17971 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good100_checked :
    goodSegmentCheck 184 61 130
      { lower := 18155, upper := 18332, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good101_checked :
    goodSegmentCheck 184 61 130
      { lower := 18333, upper := 18512, witness := RowWitness.topPrime 18329 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good102_checked :
    goodSegmentCheck 184 61 130
      { lower := 18513, upper := 18686, witness := RowWitness.topPrime 18503 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good103_checked :
    goodSegmentCheck 184 61 130
      { lower := 18687, upper := 18862, witness := RowWitness.topPrime 18679 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good104_checked :
    goodSegmentCheck 184 61 130
      { lower := 18863, upper := 19042, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good105_checked :
    goodSegmentCheck 184 61 130
      { lower := 19043, upper := 19220, witness := RowWitness.topPrime 19037 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good106_checked :
    goodSegmentCheck 184 61 130
      { lower := 19221, upper := 19402, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good107_checked :
    goodSegmentCheck 184 61 130
      { lower := 19403, upper := 19586, witness := RowWitness.topPrime 19403 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good108_checked :
    goodSegmentCheck 184 61 130
      { lower := 19587, upper := 19766, witness := RowWitness.topPrime 19583 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good109_checked :
    goodSegmentCheck 184 61 130
      { lower := 19767, upper := 19946, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good110_checked :
    goodSegmentCheck 184 61 130
      { lower := 19947, upper := 20120, witness := RowWitness.topPrime 19937 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good111_checked :
    goodSegmentCheck 184 61 130
      { lower := 20121, upper := 20300, witness := RowWitness.topPrime 20117 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good112_checked :
    goodSegmentCheck 184 61 130
      { lower := 20301, upper := 20480, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good113_checked :
    goodSegmentCheck 184 61 130
      { lower := 20481, upper := 20662, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good114_checked :
    goodSegmentCheck 184 61 130
      { lower := 20663, upper := 20846, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good115_checked :
    goodSegmentCheck 184 61 130
      { lower := 20847, upper := 20992, witness := RowWitness.topPrime 20809 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good116_checked :
    goodSegmentCheck 184 61 130
      { lower := 20993, upper := 21166, witness := RowWitness.topPrime 20983 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good117_checked :
    goodSegmentCheck 184 61 130
      { lower := 21167, upper := 21346, witness := RowWitness.topPrime 21163 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good118_checked :
    goodSegmentCheck 184 61 130
      { lower := 21347, upper := 21530, witness := RowWitness.topPrime 21347 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good119_checked :
    goodSegmentCheck 184 61 130
      { lower := 21531, upper := 21712, witness := RowWitness.topPrime 21529 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good120_checked :
    goodSegmentCheck 184 61 130
      { lower := 21713, upper := 21896, witness := RowWitness.topPrime 21713 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good121_checked :
    goodSegmentCheck 184 61 130
      { lower := 21897, upper := 22076, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good122_checked :
    goodSegmentCheck 184 61 130
      { lower := 22077, upper := 22256, witness := RowWitness.topPrime 22073 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good123_checked :
    goodSegmentCheck 184 61 130
      { lower := 22257, upper := 22430, witness := RowWitness.topPrime 22247 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good124_checked :
    goodSegmentCheck 184 61 130
      { lower := 22431, upper := 22592, witness := RowWitness.topPrime 22409 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good125_checked :
    goodSegmentCheck 184 61 130
      { lower := 22593, upper := 22756, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good126_checked :
    goodSegmentCheck 184 61 130
      { lower := 22757, upper := 22934, witness := RowWitness.topPrime 22751 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good127_checked :
    goodSegmentCheck 184 61 130
      { lower := 22935, upper := 23104, witness := RowWitness.topPrime 22921 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good128_checked :
    goodSegmentCheck 184 61 130
      { lower := 23105, upper := 23282, witness := RowWitness.topPrime 23099 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good129_checked :
    goodSegmentCheck 184 61 130
      { lower := 23283, upper := 23462, witness := RowWitness.topPrime 23279 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good130_checked :
    goodSegmentCheck 184 61 130
      { lower := 23463, upper := 23642, witness := RowWitness.topPrime 23459 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good131_checked :
    goodSegmentCheck 184 61 130
      { lower := 23643, upper := 23816, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good132_checked :
    goodSegmentCheck 184 61 130
      { lower := 23817, upper := 23996, witness := RowWitness.topPrime 23813 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good133_checked :
    goodSegmentCheck 184 61 130
      { lower := 23997, upper := 24176, witness := RowWitness.topPrime 23993 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good134_checked :
    goodSegmentCheck 184 61 130
      { lower := 24177, upper := 24352, witness := RowWitness.topPrime 24169 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good135_checked :
    goodSegmentCheck 184 61 130
      { lower := 24353, upper := 24520, witness := RowWitness.topPrime 24337 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good136_checked :
    goodSegmentCheck 184 61 130
      { lower := 24521, upper := 24700, witness := RowWitness.topPrime 24517 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good137_checked :
    goodSegmentCheck 184 61 130
      { lower := 24701, upper := 24880, witness := RowWitness.topPrime 24697 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good138_checked :
    goodSegmentCheck 184 61 130
      { lower := 24881, upper := 25060, witness := RowWitness.topPrime 24877 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good139_checked :
    goodSegmentCheck 184 61 130
      { lower := 25061, upper := 25240, witness := RowWitness.topPrime 25057 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good140_checked :
    goodSegmentCheck 184 61 130
      { lower := 25241, upper := 25420, witness := RowWitness.topPrime 25237 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good141_checked :
    goodSegmentCheck 184 61 130
      { lower := 25421, upper := 25594, witness := RowWitness.topPrime 25411 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good142_checked :
    goodSegmentCheck 184 61 130
      { lower := 25595, upper := 25772, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good143_checked :
    goodSegmentCheck 184 61 130
      { lower := 25773, upper := 25954, witness := RowWitness.topPrime 25771 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good144_checked :
    goodSegmentCheck 184 61 130
      { lower := 25955, upper := 26134, witness := RowWitness.topPrime 25951 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good145_checked :
    goodSegmentCheck 184 61 130
      { lower := 26135, upper := 26302, witness := RowWitness.topPrime 26119 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good146_checked :
    goodSegmentCheck 184 61 130
      { lower := 26303, upper := 26480, witness := RowWitness.topPrime 26297 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good147_checked :
    goodSegmentCheck 184 61 130
      { lower := 26481, upper := 26662, witness := RowWitness.topPrime 26479 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good148_checked :
    goodSegmentCheck 184 61 130
      { lower := 26663, upper := 26830, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good149_checked :
    goodSegmentCheck 184 61 130
      { lower := 26831, upper := 27004, witness := RowWitness.topPrime 26821 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good150_checked :
    goodSegmentCheck 184 61 130
      { lower := 27005, upper := 27176, witness := RowWitness.topPrime 26993 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good151_checked :
    goodSegmentCheck 184 61 130
      { lower := 27177, upper := 27326, witness := RowWitness.topPrime 27143 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good152_checked :
    goodSegmentCheck 184 61 130
      { lower := 27327, upper := 27482, witness := RowWitness.topPrime 27299 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good153_checked :
    goodSegmentCheck 184 61 130
      { lower := 27483, upper := 27664, witness := RowWitness.topPrime 27481 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good154_checked :
    goodSegmentCheck 184 61 130
      { lower := 27665, upper := 27836, witness := RowWitness.topPrime 27653 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good155_checked :
    goodSegmentCheck 184 61 130
      { lower := 27837, upper := 28010, witness := RowWitness.topPrime 27827 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good156_checked :
    goodSegmentCheck 184 61 130
      { lower := 28011, upper := 28184, witness := RowWitness.topPrime 28001 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good157_checked :
    goodSegmentCheck 184 61 130
      { lower := 28185, upper := 28366, witness := RowWitness.topPrime 28183 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good158_checked :
    goodSegmentCheck 184 61 130
      { lower := 28367, upper := 28534, witness := RowWitness.topPrime 28351 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good159_checked :
    goodSegmentCheck 184 61 130
      { lower := 28535, upper := 28700, witness := RowWitness.topPrime 28517 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good160_checked :
    goodSegmentCheck 184 61 130
      { lower := 28701, upper := 28880, witness := RowWitness.topPrime 28697 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good161_checked :
    goodSegmentCheck 184 61 130
      { lower := 28881, upper := 29062, witness := RowWitness.topPrime 28879 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good162_checked :
    goodSegmentCheck 184 61 130
      { lower := 29063, upper := 29246, witness := RowWitness.topPrime 29063 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good163_checked :
    goodSegmentCheck 184 61 130
      { lower := 29247, upper := 29426, witness := RowWitness.topPrime 29243 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good164_checked :
    goodSegmentCheck 184 61 130
      { lower := 29427, upper := 29606, witness := RowWitness.topPrime 29423 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good165_checked :
    goodSegmentCheck 184 61 130
      { lower := 29607, upper := 29782, witness := RowWitness.topPrime 29599 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good166_checked :
    goodSegmentCheck 184 61 130
      { lower := 29783, upper := 29944, witness := RowWitness.topPrime 29761 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good167_checked :
    goodSegmentCheck 184 61 130
      { lower := 29945, upper := 30110, witness := RowWitness.topPrime 29927 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good168_checked :
    goodSegmentCheck 184 61 130
      { lower := 30111, upper := 30292, witness := RowWitness.topPrime 30109 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good169_checked :
    goodSegmentCheck 184 61 130
      { lower := 30293, upper := 30476, witness := RowWitness.topPrime 30293 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good170_checked :
    goodSegmentCheck 184 61 130
      { lower := 30477, upper := 30652, witness := RowWitness.topPrime 30469 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good171_checked :
    goodSegmentCheck 184 61 130
      { lower := 30653, upper := 30832, witness := RowWitness.topPrime 30649 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good172_checked :
    goodSegmentCheck 184 61 130
      { lower := 30833, upper := 31012, witness := RowWitness.topPrime 30829 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good173_checked :
    goodSegmentCheck 184 61 130
      { lower := 31013, upper := 31196, witness := RowWitness.topPrime 31013 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good174_checked :
    goodSegmentCheck 184 61 130
      { lower := 31197, upper := 31376, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good175_checked :
    goodSegmentCheck 184 61 130
      { lower := 31377, upper := 31540, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good176_checked :
    goodSegmentCheck 184 61 130
      { lower := 31541, upper := 31724, witness := RowWitness.topPrime 31541 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good177_checked :
    goodSegmentCheck 184 61 130
      { lower := 31725, upper := 31906, witness := RowWitness.topPrime 31723 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good178_checked :
    goodSegmentCheck 184 61 130
      { lower := 31907, upper := 32090, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good179_checked :
    goodSegmentCheck 184 61 130
      { lower := 32091, upper := 32272, witness := RowWitness.topPrime 32089 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good180_checked :
    goodSegmentCheck 184 61 130
      { lower := 32273, upper := 32444, witness := RowWitness.topPrime 32261 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good181_checked :
    goodSegmentCheck 184 61 130
      { lower := 32445, upper := 32626, witness := RowWitness.topPrime 32443 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good182_checked :
    goodSegmentCheck 184 61 130
      { lower := 32627, upper := 32804, witness := RowWitness.topPrime 32621 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good183_checked :
    goodSegmentCheck 184 61 130
      { lower := 32805, upper := 32986, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good184_checked :
    goodSegmentCheck 184 61 130
      { lower := 32987, upper := 33170, witness := RowWitness.topPrime 32987 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good185_checked :
    goodSegmentCheck 184 61 130
      { lower := 33171, upper := 33344, witness := RowWitness.topPrime 33161 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good186_checked :
    goodSegmentCheck 184 61 130
      { lower := 33345, upper := 33526, witness := RowWitness.topPrime 33343 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good187_checked :
    goodSegmentCheck 184 61 130
      { lower := 33527, upper := 33672, witness := RowWitness.topPrime 33521 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good188_checked :
    goodSegmentCheck 184 61 130
      { lower := 33708, upper := 33797, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good189_checked :
    goodSegmentCheck 184 61 130
      { lower := 34322, upper := 34502, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good190_checked :
    goodSegmentCheck 184 61 130
      { lower := 34503, upper := 34574, witness := RowWitness.topPrime 34501 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good191_checked :
    goodSegmentCheck 184 61 130
      { lower := 37303, upper := 37393, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good192_checked :
    goodSegmentCheck 184 61 130
      { lower := 37446, upper := 37486, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good193_checked :
    goodSegmentCheck 184 61 130
      { lower := 37500, upper := 37676, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good194_checked :
    goodSegmentCheck 184 61 130
      { lower := 37677, upper := 37721, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good195_checked :
    goodSegmentCheck 184 61 130
      { lower := 38307, upper := 38474, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good196_checked :
    goodSegmentCheck 184 61 130
      { lower := 39326, upper := 39506, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good197_checked :
    goodSegmentCheck 184 61 130
      { lower := 39507, upper := 39509, witness := RowWitness.topPrime 39503 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good198_checked :
    goodSegmentCheck 184 61 130
      { lower := 40401, upper := 40511, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good199_checked :
    goodSegmentCheck 184 61 130
      { lower := 40804, upper := 40808, witness := RowWitness.topPrime 40801 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good200_checked :
    goodSegmentCheck 184 61 130
      { lower := 40931, upper := 40987, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good201_checked :
    goodSegmentCheck 184 61 130
      { lower := 41334, upper := 41337, witness := RowWitness.topPrime 41333 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good202_checked :
    goodSegmentCheck 184 61 130
      { lower := 43750, upper := 43870, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good203_checked :
    goodSegmentCheck 184 61 130
      { lower := 43923, upper := 43933, witness := RowWitness.topPrime 43913 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good204_checked :
    goodSegmentCheck 184 61 130
      { lower := 45369, upper := 45436, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good205_checked :
    goodSegmentCheck 184 61 130
      { lower := 45927, upper := 45979, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good206_checked :
    goodSegmentCheck 184 61 130
      { lower := 47045, upper := 47058, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good207_checked :
    goodSegmentCheck 184 61 130
      { lower := 47526, upper := 47704, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good208_checked :
    goodSegmentCheck 184 61 130
      { lower := 47705, upper := 47707, witness := RowWitness.topPrime 47701 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good209_checked :
    goodSegmentCheck 184 61 130
      { lower := 48013, upper := 48144, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good210_checked :
    goodSegmentCheck 184 61 130
      { lower := 48373, upper := 48554, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good211_checked :
    goodSegmentCheck 184 61 130
      { lower := 48555, upper := 48556, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good212_checked :
    goodSegmentCheck 184 61 130
      { lower := 48778, upper := 48917, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good213_checked :
    goodSegmentCheck 184 61 130
      { lower := 49298, upper := 49313, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good214_checked :
    goodSegmentCheck 184 61 130
      { lower := 49379, upper := 49481, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good215_checked :
    goodSegmentCheck 184 61 130
      { lower := 50421, upper := 50593, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good216_checked :
    goodSegmentCheck 184 61 130
      { lower := 51076, upper := 51188, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good217_checked :
    goodSegmentCheck 184 61 130
      { lower := 53138, upper := 53228, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good218_checked :
    goodSegmentCheck 184 61 130
      { lower := 53290, upper := 53321, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good219_checked :
    goodSegmentCheck 184 61 130
      { lower := 54043, upper := 54051, witness := RowWitness.topPrime 54037 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good220_checked :
    goodSegmentCheck 184 61 130
      { lower := 55451, upper := 55624, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good221_checked :
    goodSegmentCheck 184 61 130
      { lower := 55625, upper := 55630, witness := RowWitness.topPrime 55621 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good222_checked :
    goodSegmentCheck 184 61 130
      { lower := 56307, upper := 56352, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good223_checked :
    goodSegmentCheck 184 61 130
      { lower := 56454, upper := 56490, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good224_checked :
    goodSegmentCheck 184 61 130
      { lower := 57245, upper := 57305, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good225_checked :
    goodSegmentCheck 184 61 130
      { lower := 58619, upper := 58747, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good226_checked :
    goodSegmentCheck 184 61 130
      { lower := 59049, upper := 59139, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good227_checked :
    goodSegmentCheck 184 61 130
      { lower := 59582, upper := 59588, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good228_checked :
    goodSegmentCheck 184 61 130
      { lower := 62500, upper := 62593, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good229_checked :
    goodSegmentCheck 184 61 130
      { lower := 63869, upper := 64046, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good230_checked :
    goodSegmentCheck 184 61 130
      { lower := 64047, upper := 64052, witness := RowWitness.topPrime 64037 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good231_checked :
    goodSegmentCheck 184 61 130
      { lower := 64082, upper := 64131, witness := RowWitness.topPrime 64081 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good232_checked :
    goodSegmentCheck 184 61 130
      { lower := 65533, upper := 65704, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good233_checked :
    goodSegmentCheck 184 61 130
      { lower := 65705, upper := 65719, witness := RowWitness.topPrime 65701 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good234_checked :
    goodSegmentCheck 184 61 130
      { lower := 68644, upper := 68822, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good235_checked :
    goodSegmentCheck 184 61 130
      { lower := 68823, upper := 68827, witness := RowWitness.topPrime 68821 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good236_checked :
    goodSegmentCheck 184 61 130
      { lower := 68921, upper := 69073, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good237_checked :
    goodSegmentCheck 184 61 130
      { lower := 71289, upper := 71470, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good238_checked :
    goodSegmentCheck 184 61 130
      { lower := 71471, upper := 71472, witness := RowWitness.topPrime 71471 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good239_checked :
    goodSegmentCheck 184 61 130
      { lower := 73205, upper := 73350, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_good240_checked :
    goodSegmentCheck 184 61 130
      { lower := 83667, upper := 83704, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good241_checked :
    goodSegmentCheck 184 61 130
      { lower := 85805, upper := 85866, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good242_checked :
    goodSegmentCheck 184 61 130
      { lower := 89383, upper := 89556, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good243_checked :
    goodSegmentCheck 184 61 130
      { lower := 93845, upper := 93933, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good244_checked :
    goodSegmentCheck 184 61 130
      { lower := 96774, upper := 96788, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good245_checked :
    goodSegmentCheck 184 61 130
      { lower := 98415, upper := 98466, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good246_checked :
    goodSegmentCheck 184 61 130
      { lower := 98596, upper := 98598, witness := RowWitness.topPrime 98573 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good247_checked :
    goodSegmentCheck 184 61 130
      { lower := 102152, upper := 102193, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good248_checked :
    goodSegmentCheck 184 61 130
      { lower := 103041, upper := 103149, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good249_checked :
    goodSegmentCheck 184 61 130
      { lower := 131072, upper := 131227, witness := RowWitness.topPrime 131071 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good250_checked :
    goodSegmentCheck 184 61 130
      { lower := 137842, upper := 137964, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good251_checked :
    goodSegmentCheck 184 61 130
      { lower := 148955, upper := 149060, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good252_checked :
    goodSegmentCheck 184 61 130
      { lower := 195223, upper := 195295, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row184_good253_checked :
    goodSegmentCheck 184 61 130
      { lower := 262144, upper := 262271, witness := RowWitness.topPrime 262139 } = true := by
  exact good_top_prime_checked (i := 184) (r := 61) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_good253_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_goods_checked :
    row184.goods.all (goodSegmentCheck row184.height.i row184.height.r row184.height.s) = true := by
  change row184_goods.all (goodSegmentCheck 184 61 130) = true
  simp only [row184_goods, List.all_cons, List.all_nil,
    row184_good000_checked,
    row184_good001_checked,
    row184_good002_checked,
    row184_good003_checked,
    row184_good004_checked,
    row184_good005_checked,
    row184_good006_checked,
    row184_good007_checked,
    row184_good008_checked,
    row184_good009_checked,
    row184_good010_checked,
    row184_good011_checked,
    row184_good012_checked,
    row184_good013_checked,
    row184_good014_checked,
    row184_good015_checked,
    row184_good016_checked,
    row184_good017_checked,
    row184_good018_checked,
    row184_good019_checked,
    row184_good020_checked,
    row184_good021_checked,
    row184_good022_checked,
    row184_good023_checked,
    row184_good024_checked,
    row184_good025_checked,
    row184_good026_checked,
    row184_good027_checked,
    row184_good028_checked,
    row184_good029_checked,
    row184_good030_checked,
    row184_good031_checked,
    row184_good032_checked,
    row184_good033_checked,
    row184_good034_checked,
    row184_good035_checked,
    row184_good036_checked,
    row184_good037_checked,
    row184_good038_checked,
    row184_good039_checked,
    row184_good040_checked,
    row184_good041_checked,
    row184_good042_checked,
    row184_good043_checked,
    row184_good044_checked,
    row184_good045_checked,
    row184_good046_checked,
    row184_good047_checked,
    row184_good048_checked,
    row184_good049_checked,
    row184_good050_checked,
    row184_good051_checked,
    row184_good052_checked,
    row184_good053_checked,
    row184_good054_checked,
    row184_good055_checked,
    row184_good056_checked,
    row184_good057_checked,
    row184_good058_checked,
    row184_good059_checked,
    row184_good060_checked,
    row184_good061_checked,
    row184_good062_checked,
    row184_good063_checked,
    row184_good064_checked,
    row184_good065_checked,
    row184_good066_checked,
    row184_good067_checked,
    row184_good068_checked,
    row184_good069_checked,
    row184_good070_checked,
    row184_good071_checked,
    row184_good072_checked,
    row184_good073_checked,
    row184_good074_checked,
    row184_good075_checked,
    row184_good076_checked,
    row184_good077_checked,
    row184_good078_checked,
    row184_good079_checked,
    row184_good080_checked,
    row184_good081_checked,
    row184_good082_checked,
    row184_good083_checked,
    row184_good084_checked,
    row184_good085_checked,
    row184_good086_checked,
    row184_good087_checked,
    row184_good088_checked,
    row184_good089_checked,
    row184_good090_checked,
    row184_good091_checked,
    row184_good092_checked,
    row184_good093_checked,
    row184_good094_checked,
    row184_good095_checked,
    row184_good096_checked,
    row184_good097_checked,
    row184_good098_checked,
    row184_good099_checked,
    row184_good100_checked,
    row184_good101_checked,
    row184_good102_checked,
    row184_good103_checked,
    row184_good104_checked,
    row184_good105_checked,
    row184_good106_checked,
    row184_good107_checked,
    row184_good108_checked,
    row184_good109_checked,
    row184_good110_checked,
    row184_good111_checked,
    row184_good112_checked,
    row184_good113_checked,
    row184_good114_checked,
    row184_good115_checked,
    row184_good116_checked,
    row184_good117_checked,
    row184_good118_checked,
    row184_good119_checked,
    row184_good120_checked,
    row184_good121_checked,
    row184_good122_checked,
    row184_good123_checked,
    row184_good124_checked,
    row184_good125_checked,
    row184_good126_checked,
    row184_good127_checked,
    row184_good128_checked,
    row184_good129_checked,
    row184_good130_checked,
    row184_good131_checked,
    row184_good132_checked,
    row184_good133_checked,
    row184_good134_checked,
    row184_good135_checked,
    row184_good136_checked,
    row184_good137_checked,
    row184_good138_checked,
    row184_good139_checked,
    row184_good140_checked,
    row184_good141_checked,
    row184_good142_checked,
    row184_good143_checked,
    row184_good144_checked,
    row184_good145_checked,
    row184_good146_checked,
    row184_good147_checked,
    row184_good148_checked,
    row184_good149_checked,
    row184_good150_checked,
    row184_good151_checked,
    row184_good152_checked,
    row184_good153_checked,
    row184_good154_checked,
    row184_good155_checked,
    row184_good156_checked,
    row184_good157_checked,
    row184_good158_checked,
    row184_good159_checked,
    row184_good160_checked,
    row184_good161_checked,
    row184_good162_checked,
    row184_good163_checked,
    row184_good164_checked,
    row184_good165_checked,
    row184_good166_checked,
    row184_good167_checked,
    row184_good168_checked,
    row184_good169_checked,
    row184_good170_checked,
    row184_good171_checked,
    row184_good172_checked,
    row184_good173_checked,
    row184_good174_checked,
    row184_good175_checked,
    row184_good176_checked,
    row184_good177_checked,
    row184_good178_checked,
    row184_good179_checked,
    row184_good180_checked,
    row184_good181_checked,
    row184_good182_checked,
    row184_good183_checked,
    row184_good184_checked,
    row184_good185_checked,
    row184_good186_checked,
    row184_good187_checked,
    row184_good188_checked,
    row184_good189_checked,
    row184_good190_checked,
    row184_good191_checked,
    row184_good192_checked,
    row184_good193_checked,
    row184_good194_checked,
    row184_good195_checked,
    row184_good196_checked,
    row184_good197_checked,
    row184_good198_checked,
    row184_good199_checked,
    row184_good200_checked,
    row184_good201_checked,
    row184_good202_checked,
    row184_good203_checked,
    row184_good204_checked,
    row184_good205_checked,
    row184_good206_checked,
    row184_good207_checked,
    row184_good208_checked,
    row184_good209_checked,
    row184_good210_checked,
    row184_good211_checked,
    row184_good212_checked,
    row184_good213_checked,
    row184_good214_checked,
    row184_good215_checked,
    row184_good216_checked,
    row184_good217_checked,
    row184_good218_checked,
    row184_good219_checked,
    row184_good220_checked,
    row184_good221_checked,
    row184_good222_checked,
    row184_good223_checked,
    row184_good224_checked,
    row184_good225_checked,
    row184_good226_checked,
    row184_good227_checked,
    row184_good228_checked,
    row184_good229_checked,
    row184_good230_checked,
    row184_good231_checked,
    row184_good232_checked,
    row184_good233_checked,
    row184_good234_checked,
    row184_good235_checked,
    row184_good236_checked,
    row184_good237_checked,
    row184_good238_checked,
    row184_good239_checked,
    row184_good240_checked,
    row184_good241_checked,
    row184_good242_checked,
    row184_good243_checked,
    row184_good244_checked,
    row184_good245_checked,
    row184_good246_checked,
    row184_good247_checked,
    row184_good248_checked,
    row184_good249_checked,
    row184_good250_checked,
    row184_good251_checked,
    row184_good252_checked,
    row184_good253_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_registered :
    decide (row184.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row184_small_checked :
    coverCheck (2 * row184.height.i + 2) (row184.height.i * (row184.height.i - 1) - 1)
      (row184.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row184_layerCover_checked :
    coverCheck (row184.height.i * (row184.height.i - 1)) (row184.height.n0 - 1)
      (row184.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row184_bounds : List NatInterval :=
  [(370, 550), (551, 730), (731, 910), (911, 1094), (1095, 1276), (1277, 1460), (1461, 1642), (1643, 1820), (1821, 1994), (1995, 2176), (2177, 2344), (2345, 2524), (2525, 2704), (2705, 2882), (2883, 3062), (3063, 3244), (3245, 3412), (3413, 3596), (3597, 3776), (3777, 3952), (3953, 4130), (4131, 4312), (4313, 4480), (4481, 4664), (4665, 4846), (4847, 5014), (5015, 5194), (5195, 5372), (5373, 5534), (5535, 5714), (5715, 5894), (5895, 6064), (6065, 6236), (6237, 6412), (6413, 6580), (6581, 6764), (6765, 6946), (6947, 7130), (7131, 7312), (7313, 7492), (7493, 7672), (7673, 7856), (7857, 8036), (8037, 8200), (8201, 8374), (8375, 8552), (8553, 8726), (8727, 8902), (8903, 9076), (9077, 9250), (9251, 9424), (9425, 9604), (9605, 9784), (9785, 9964), (9965, 10132), (10133, 10316), (10317, 10496), (10497, 10670), (10671, 10850), (10851, 11030), (11031, 11210), (11211, 11380), (11381, 11552), (11553, 11734), (11735, 11914), (11915, 12092), (12093, 12256), (12257, 12436), (12437, 12620), (12621, 12802), (12803, 12982), (12983, 13166), (13167, 13346), (13347, 13522), (13523, 13706), (13707, 13880), (13881, 14062), (14063, 14240), (14241, 14404), (14405, 14584), (14585, 14746), (14747, 14930), (14931, 15112), (15113, 15290), (15291, 15472), (15473, 15656), (15657, 15832), (15833, 16006), (16007, 16190), (16191, 16372), (16373, 16552), (16553, 16736), (16737, 16912), (16913, 17086), (17087, 17260), (17261, 17440), (17441, 17614), (17615, 17792), (17793, 17974), (17975, 18154), (18155, 18332), (18333, 18512), (18513, 18686), (18687, 18862), (18863, 19042), (19043, 19220), (19221, 19402), (19403, 19586), (19587, 19766), (19767, 19946), (19947, 20120), (20121, 20300), (20301, 20480), (20481, 20662), (20663, 20846), (20847, 20992), (20993, 21166), (21167, 21346), (21347, 21530), (21531, 21712), (21713, 21896), (21897, 22076), (22077, 22256), (22257, 22430), (22431, 22592), (22593, 22756), (22757, 22934), (22935, 23104), (23105, 23282), (23283, 23462), (23463, 23642), (23643, 23816), (23817, 23996), (23997, 24176), (24177, 24352), (24353, 24520), (24521, 24700), (24701, 24880), (24881, 25060), (25061, 25240), (25241, 25420), (25421, 25594), (25595, 25772), (25773, 25954), (25955, 26134), (26135, 26302), (26303, 26480), (26481, 26662), (26663, 26830), (26831, 27004), (27005, 27176), (27177, 27326), (27327, 27482), (27483, 27664), (27665, 27836), (27837, 28010), (28011, 28184), (28185, 28366), (28367, 28534), (28535, 28700), (28701, 28880), (28881, 29062), (29063, 29246), (29247, 29426), (29427, 29606), (29607, 29782), (29783, 29944), (29945, 30110), (30111, 30292), (30293, 30476), (30477, 30652), (30653, 30832), (30833, 31012), (31013, 31196), (31197, 31376), (31377, 31540), (31541, 31724), (31725, 31906), (31907, 32090), (32091, 32272), (32273, 32444), (32445, 32626), (32627, 32804), (32805, 32986), (32987, 33170), (33171, 33344), (33345, 33526), (33527, 33672), (33708, 33797), (34322, 34502), (34503, 34574), (37303, 37393), (37446, 37486), (37500, 37676), (37677, 37721), (38307, 38474), (39326, 39506), (39507, 39509), (40401, 40511), (40804, 40808), (40931, 40987), (41334, 41337), (43750, 43870), (43923, 43933), (45369, 45436), (45927, 45979), (47045, 47058), (47526, 47704), (47705, 47707), (48013, 48144), (48373, 48554), (48555, 48556), (48778, 48917), (49298, 49313), (49379, 49481), (50421, 50593), (51076, 51188), (53138, 53228), (53290, 53321), (54043, 54051), (55451, 55624), (55625, 55630), (56307, 56352), (56454, 56490), (57245, 57305), (58619, 58747), (59049, 59139), (59582, 59588), (62500, 62593), (63869, 64046), (64047, 64052), (64082, 64131), (65533, 65704), (65705, 65719), (68644, 68822), (68823, 68827), (68921, 69073), (71289, 71470), (71471, 71472), (73205, 73350), (83667, 83704), (85805, 85866), (89383, 89556), (93845, 93933), (96774, 96788), (98415, 98466), (98596, 98598), (102152, 102193), (103041, 103149), (131072, 131227), (137842, 137964), (148955, 149060), (195223, 195295), (262144, 262271)]

theorem row184_bounds_eq : row184.goods.map goodSegmentBounds = row184_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row184_layer000_intervals : List ColouredInterval :=
  [(2, 65536, 65719), (3, 39366, 39549), (3, 45927, 46110), (3, 52488, 52671), (3, 59049, 59232), (3, 65610, 65793), (3, 39366, 39549), (3, 59049, 59232), (3, 59049, 59232), (5, 34375, 34558), (5, 37500, 37683), (5, 40625, 40808), (5, 43750, 43933), (5, 46875, 47058), (5, 62500, 62683), (7, 33672, 33797), (7, 33672, 33797), (7, 50421, 50604), (7, 67228, 67343), (11, 43923, 44106), (11, 58564, 58747), (13, 57122, 57305), (17, 34391, 34574), (17, 39304, 39487), (17, 44217, 44400), (17, 49130, 49313), (17, 54043, 54226), (17, 58956, 59139), (17, 63869, 64052), (19, 34295, 34478), (19, 41154, 41337), (19, 48013, 48196), (19, 54872, 55055), (19, 61731, 61914), (29, 48778, 48961), (31, 59582, 59765), (37, 50653, 50836), (53, 33708, 33891), (53, 36517, 36700), (53, 39326, 39509), (59, 34810, 34993), (59, 38291, 38474), (59, 41772, 41955), (59, 45253, 45436), (59, 48734, 48917), (61, 33672, 33672), (61, 37210, 37393), (61, 40931, 41114), (61, 44652, 44835), (61, 48373, 48556), (61, 52094, 52277), (67, 35912, 36095), (67, 40401, 40584), (67, 44890, 45073), (67, 49379, 49562), (67, 53868, 54051), (67, 58357, 58540), (67, 62846, 63029), (71, 35287, 35470), (71, 40328, 40511), (71, 45369, 45552), (71, 50410, 50593), (71, 55451, 55634), (71, 60492, 60675), (71, 65533, 65716), (73, 37303, 37486), (73, 42632, 42815), (73, 47961, 48144), (73, 53290, 53473), (73, 58619, 58802), (73, 63948, 64131), (79, 37446, 37629), (79, 43687, 43870), (79, 49928, 50111), (79, 56169, 56352), (79, 62410, 62593), (83, 34445, 34628), (83, 41334, 41517), (83, 48223, 48406), (83, 55112, 55295), (83, 62001, 62184), (89, 39605, 39788), (89, 47526, 47709), (89, 55447, 55630), (89, 63368, 63551), (97, 37636, 37819), (97, 47045, 47228), (97, 56454, 56637), (97, 65863, 66046), (101, 40804, 40987), (101, 51005, 51188), (101, 61206, 61389), (103, 42436, 42619), (103, 53045, 53228), (103, 63654, 63837), (107, 34347, 34530), (107, 45796, 45979), (107, 57245, 57428), (109, 35643, 35826), (109, 47524, 47707), (109, 59405, 59588), (113, 38307, 38490), (113, 51076, 51259), (113, 63845, 64028), (127, 48387, 48570), (127, 64516, 64699), (131, 34322, 34505), (131, 51483, 51666), (137, 37538, 37721), (137, 56307, 56490), (139, 38642, 38825), (139, 57963, 58146), (149, 44402, 44585), (149, 66603, 66786), (151, 45602, 45785), (157, 49298, 49481), (163, 53138, 53321), (167, 55778, 55961), (173, 59858, 60041), (179, 64082, 64265), (181, 65522, 65705)]

def row184_layer000_block000 : List ColouredInterval :=
  [(2, 65536, 65719), (3, 39366, 39549), (3, 45927, 46110), (3, 52488, 52671), (3, 59049, 59232), (3, 65610, 65793), (3, 39366, 39549), (3, 59049, 59232), (3, 59049, 59232), (5, 34375, 34558), (5, 37500, 37683), (5, 40625, 40808), (5, 43750, 43933), (5, 46875, 47058), (5, 62500, 62683), (7, 33672, 33797)]

def row184_layer000_block001 : List ColouredInterval :=
  [(7, 33672, 33797), (7, 50421, 50604), (7, 67228, 67343), (11, 43923, 44106), (11, 58564, 58747), (13, 57122, 57305), (17, 34391, 34574), (17, 39304, 39487), (17, 44217, 44400), (17, 49130, 49313), (17, 54043, 54226), (17, 58956, 59139), (17, 63869, 64052), (19, 34295, 34478), (19, 41154, 41337), (19, 48013, 48196)]

def row184_layer000_block002 : List ColouredInterval :=
  [(19, 54872, 55055), (19, 61731, 61914), (29, 48778, 48961), (31, 59582, 59765), (37, 50653, 50836), (53, 33708, 33891), (53, 36517, 36700), (53, 39326, 39509), (59, 34810, 34993), (59, 38291, 38474), (59, 41772, 41955), (59, 45253, 45436), (59, 48734, 48917), (61, 33672, 33672), (61, 37210, 37393), (61, 40931, 41114)]

def row184_layer000_block003 : List ColouredInterval :=
  [(61, 44652, 44835), (61, 48373, 48556), (61, 52094, 52277), (67, 35912, 36095), (67, 40401, 40584), (67, 44890, 45073), (67, 49379, 49562), (67, 53868, 54051), (67, 58357, 58540), (67, 62846, 63029), (71, 35287, 35470), (71, 40328, 40511), (71, 45369, 45552), (71, 50410, 50593), (71, 55451, 55634), (71, 60492, 60675)]

def row184_layer000_block004 : List ColouredInterval :=
  [(71, 65533, 65716), (73, 37303, 37486), (73, 42632, 42815), (73, 47961, 48144), (73, 53290, 53473), (73, 58619, 58802), (73, 63948, 64131), (79, 37446, 37629), (79, 43687, 43870), (79, 49928, 50111), (79, 56169, 56352), (79, 62410, 62593), (83, 34445, 34628), (83, 41334, 41517), (83, 48223, 48406), (83, 55112, 55295)]

def row184_layer000_block005 : List ColouredInterval :=
  [(83, 62001, 62184), (89, 39605, 39788), (89, 47526, 47709), (89, 55447, 55630), (89, 63368, 63551), (97, 37636, 37819), (97, 47045, 47228), (97, 56454, 56637), (97, 65863, 66046), (101, 40804, 40987), (101, 51005, 51188), (101, 61206, 61389), (103, 42436, 42619), (103, 53045, 53228), (103, 63654, 63837), (107, 34347, 34530)]

def row184_layer000_block006 : List ColouredInterval :=
  [(107, 45796, 45979), (107, 57245, 57428), (109, 35643, 35826), (109, 47524, 47707), (109, 59405, 59588), (113, 38307, 38490), (113, 51076, 51259), (113, 63845, 64028), (127, 48387, 48570), (127, 64516, 64699), (131, 34322, 34505), (131, 51483, 51666), (137, 37538, 37721), (137, 56307, 56490), (139, 38642, 38825), (139, 57963, 58146)]

def row184_layer000_block007 : List ColouredInterval :=
  [(149, 44402, 44585), (149, 66603, 66786), (151, 45602, 45785), (157, 49298, 49481), (163, 53138, 53321), (167, 55778, 55961), (173, 59858, 60041), (179, 64082, 64265), (181, 65522, 65705)]

def row184_layer000_chunks : List (List ColouredInterval) :=
  [row184_layer000_block000, row184_layer000_block001, row184_layer000_block002, row184_layer000_block003, row184_layer000_block004, row184_layer000_block005, row184_layer000_block006, row184_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_arithmetic : LayerArithmeticValid row184.height { lower := 33672, upper := 67344, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_enumeration :
    activePowerIntervalList 184 14 33672 67344 = row184_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_pairs000 :
    row184_layer000_block000.all (fun I => row184_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_pairs001 :
    row184_layer000_block001.all (fun I => row184_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_pairs002 :
    row184_layer000_block002.all (fun I => row184_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_pairs003 :
    row184_layer000_block003.all (fun I => row184_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_pairs004 :
    row184_layer000_block004.all (fun I => row184_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_pairs005 :
    row184_layer000_block005.all (fun I => row184_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_pairs006 :
    row184_layer000_block006.all (fun I => row184_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_pairs007 :
    row184_layer000_block007.all (fun I => row184_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_chunks_eq : row184_layer000_chunks.flatten = row184_layer000_intervals := by
  rfl

theorem row184_layer000_pairs : pairCoverCheck row184_layer000_intervals row184_bounds = true := by
  apply pairCoverCheck_of_chunks row184_layer000_chunks_eq
  intro block hblock
  simp only [row184_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row184_layer000_pairs000
  · exact row184_layer000_pairs001
  · exact row184_layer000_pairs002
  · exact row184_layer000_pairs003
  · exact row184_layer000_pairs004
  · exact row184_layer000_pairs005
  · exact row184_layer000_pairs006
  · exact row184_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_pairs
