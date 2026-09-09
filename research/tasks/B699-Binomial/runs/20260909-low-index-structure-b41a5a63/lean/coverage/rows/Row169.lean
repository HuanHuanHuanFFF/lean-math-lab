import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row169_height : HeightCertificateDatum := { i := 169, r := 56, s := 120, n0Power10 := 8 }

def row169_goods : List GoodSegment := [
  { lower := 340, upper := 505, witness := RowWitness.topPrime 337 },
  { lower := 506, upper := 671, witness := RowWitness.topPrime 503 },
  { lower := 672, upper := 829, witness := RowWitness.topPrime 661 },
  { lower := 830, upper := 997, witness := RowWitness.topPrime 829 },
  { lower := 998, upper := 1165, witness := RowWitness.topPrime 997 },
  { lower := 1166, upper := 1331, witness := RowWitness.topPrime 1163 },
  { lower := 1332, upper := 1495, witness := RowWitness.topPrime 1327 },
  { lower := 1496, upper := 1661, witness := RowWitness.topPrime 1493 },
  { lower := 1662, upper := 1825, witness := RowWitness.topPrime 1657 },
  { lower := 1826, upper := 1991, witness := RowWitness.topPrime 1823 },
  { lower := 1992, upper := 2155, witness := RowWitness.topPrime 1987 },
  { lower := 2156, upper := 2321, witness := RowWitness.topPrime 2153 },
  { lower := 2322, upper := 2479, witness := RowWitness.topPrime 2311 },
  { lower := 2480, upper := 2645, witness := RowWitness.topPrime 2477 },
  { lower := 2646, upper := 2801, witness := RowWitness.topPrime 2633 },
  { lower := 2802, upper := 2969, witness := RowWitness.topPrime 2801 },
  { lower := 2970, upper := 3137, witness := RowWitness.topPrime 2969 },
  { lower := 3138, upper := 3305, witness := RowWitness.topPrime 3137 },
  { lower := 3306, upper := 3469, witness := RowWitness.topPrime 3301 },
  { lower := 3470, upper := 3637, witness := RowWitness.topPrime 3469 },
  { lower := 3638, upper := 3805, witness := RowWitness.topPrime 3637 },
  { lower := 3806, upper := 3971, witness := RowWitness.topPrime 3803 },
  { lower := 3972, upper := 4135, witness := RowWitness.topPrime 3967 },
  { lower := 4136, upper := 4301, witness := RowWitness.topPrime 4133 },
  { lower := 4302, upper := 4465, witness := RowWitness.topPrime 4297 },
  { lower := 4466, upper := 4631, witness := RowWitness.topPrime 4463 },
  { lower := 4632, upper := 4789, witness := RowWitness.topPrime 4621 },
  { lower := 4790, upper := 4957, witness := RowWitness.topPrime 4789 },
  { lower := 4958, upper := 5125, witness := RowWitness.topPrime 4957 },
  { lower := 5126, upper := 5287, witness := RowWitness.topPrime 5119 },
  { lower := 5288, upper := 5449, witness := RowWitness.topPrime 5281 },
  { lower := 5450, upper := 5617, witness := RowWitness.topPrime 5449 },
  { lower := 5618, upper := 5759, witness := RowWitness.topPrime 5591 },
  { lower := 5760, upper := 5917, witness := RowWitness.topPrime 5749 },
  { lower := 5918, upper := 6071, witness := RowWitness.topPrime 5903 },
  { lower := 6072, upper := 6235, witness := RowWitness.topPrime 6067 },
  { lower := 6236, upper := 6397, witness := RowWitness.topPrime 6229 },
  { lower := 6398, upper := 6565, witness := RowWitness.topPrime 6397 },
  { lower := 6566, upper := 6731, witness := RowWitness.topPrime 6563 },
  { lower := 6732, upper := 6887, witness := RowWitness.topPrime 6719 },
  { lower := 6888, upper := 7051, witness := RowWitness.topPrime 6883 },
  { lower := 7052, upper := 7211, witness := RowWitness.topPrime 7043 },
  { lower := 7212, upper := 7379, witness := RowWitness.topPrime 7211 },
  { lower := 7380, upper := 7537, witness := RowWitness.topPrime 7369 },
  { lower := 7538, upper := 7705, witness := RowWitness.topPrime 7537 },
  { lower := 7706, upper := 7871, witness := RowWitness.topPrime 7703 },
  { lower := 7872, upper := 8035, witness := RowWitness.topPrime 7867 },
  { lower := 8036, upper := 8185, witness := RowWitness.topPrime 8017 },
  { lower := 8186, upper := 8347, witness := RowWitness.topPrime 8179 },
  { lower := 8348, upper := 8497, witness := RowWitness.topPrime 8329 },
  { lower := 8498, upper := 8635, witness := RowWitness.topPrime 8467 },
  { lower := 8636, upper := 8797, witness := RowWitness.topPrime 8629 },
  { lower := 8798, upper := 8951, witness := RowWitness.topPrime 8783 },
  { lower := 8952, upper := 9119, witness := RowWitness.topPrime 8951 },
  { lower := 9120, upper := 9277, witness := RowWitness.topPrime 9109 },
  { lower := 9278, upper := 9445, witness := RowWitness.topPrime 9277 },
  { lower := 9446, upper := 9607, witness := RowWitness.topPrime 9439 },
  { lower := 9608, upper := 9769, witness := RowWitness.topPrime 9601 },
  { lower := 9770, upper := 9937, witness := RowWitness.topPrime 9769 },
  { lower := 9938, upper := 10099, witness := RowWitness.topPrime 9931 },
  { lower := 10100, upper := 10267, witness := RowWitness.topPrime 10099 },
  { lower := 10268, upper := 10435, witness := RowWitness.topPrime 10267 },
  { lower := 10436, upper := 10601, witness := RowWitness.topPrime 10433 },
  { lower := 10602, upper := 10769, witness := RowWitness.topPrime 10601 },
  { lower := 10770, upper := 10921, witness := RowWitness.topPrime 10753 },
  { lower := 10922, upper := 11077, witness := RowWitness.topPrime 10909 },
  { lower := 11078, upper := 11239, witness := RowWitness.topPrime 11071 },
  { lower := 11240, upper := 11407, witness := RowWitness.topPrime 11239 },
  { lower := 11408, upper := 11567, witness := RowWitness.topPrime 11399 },
  { lower := 11568, upper := 11719, witness := RowWitness.topPrime 11551 },
  { lower := 11720, upper := 11887, witness := RowWitness.topPrime 11719 },
  { lower := 11888, upper := 12055, witness := RowWitness.topPrime 11887 },
  { lower := 12056, upper := 12217, witness := RowWitness.topPrime 12049 },
  { lower := 12218, upper := 12379, witness := RowWitness.topPrime 12211 },
  { lower := 12380, upper := 12547, witness := RowWitness.topPrime 12379 },
  { lower := 12548, upper := 12715, witness := RowWitness.topPrime 12547 },
  { lower := 12716, upper := 12881, witness := RowWitness.topPrime 12713 },
  { lower := 12882, upper := 13021, witness := RowWitness.topPrime 12853 },
  { lower := 13022, upper := 13177, witness := RowWitness.topPrime 13009 },
  { lower := 13178, upper := 13345, witness := RowWitness.topPrime 13177 },
  { lower := 13346, upper := 13507, witness := RowWitness.topPrime 13339 },
  { lower := 13508, upper := 13667, witness := RowWitness.topPrime 13499 },
  { lower := 13668, upper := 13817, witness := RowWitness.topPrime 13649 },
  { lower := 13818, upper := 13975, witness := RowWitness.topPrime 13807 },
  { lower := 13976, upper := 14135, witness := RowWitness.topPrime 13967 },
  { lower := 14136, upper := 14275, witness := RowWitness.topPrime 14107 },
  { lower := 14276, upper := 14419, witness := RowWitness.topPrime 14251 },
  { lower := 14420, upper := 14587, witness := RowWitness.topPrime 14419 },
  { lower := 14588, upper := 14731, witness := RowWitness.topPrime 14563 },
  { lower := 14732, upper := 14899, witness := RowWitness.topPrime 14731 },
  { lower := 14900, upper := 15065, witness := RowWitness.topPrime 14897 },
  { lower := 15066, upper := 15229, witness := RowWitness.topPrime 15061 },
  { lower := 15230, upper := 15395, witness := RowWitness.topPrime 15227 },
  { lower := 15396, upper := 15559, witness := RowWitness.topPrime 15391 },
  { lower := 15560, upper := 15727, witness := RowWitness.topPrime 15559 },
  { lower := 15728, upper := 15895, witness := RowWitness.topPrime 15727 },
  { lower := 15896, upper := 16057, witness := RowWitness.topPrime 15889 },
  { lower := 16058, upper := 16225, witness := RowWitness.topPrime 16057 },
  { lower := 16226, upper := 16391, witness := RowWitness.topPrime 16223 },
  { lower := 16392, upper := 16549, witness := RowWitness.topPrime 16381 },
  { lower := 16550, upper := 16715, witness := RowWitness.topPrime 16547 },
  { lower := 16716, upper := 16871, witness := RowWitness.topPrime 16703 },
  { lower := 16872, upper := 17039, witness := RowWitness.topPrime 16871 },
  { lower := 17040, upper := 17201, witness := RowWitness.topPrime 17033 },
  { lower := 17202, upper := 17359, witness := RowWitness.topPrime 17191 },
  { lower := 17360, upper := 17527, witness := RowWitness.topPrime 17359 },
  { lower := 17528, upper := 17687, witness := RowWitness.topPrime 17519 },
  { lower := 17688, upper := 17851, witness := RowWitness.topPrime 17683 },
  { lower := 17852, upper := 18019, witness := RowWitness.topPrime 17851 },
  { lower := 18020, upper := 18181, witness := RowWitness.topPrime 18013 },
  { lower := 18182, upper := 18349, witness := RowWitness.topPrime 18181 },
  { lower := 18350, upper := 18509, witness := RowWitness.topPrime 18341 },
  { lower := 18510, upper := 18671, witness := RowWitness.topPrime 18503 },
  { lower := 18672, upper := 18839, witness := RowWitness.topPrime 18671 },
  { lower := 18840, upper := 19007, witness := RowWitness.topPrime 18839 },
  { lower := 19008, upper := 19169, witness := RowWitness.topPrime 19001 },
  { lower := 19170, upper := 19331, witness := RowWitness.topPrime 19163 },
  { lower := 19332, upper := 19487, witness := RowWitness.topPrime 19319 },
  { lower := 19488, upper := 19651, witness := RowWitness.topPrime 19483 },
  { lower := 19652, upper := 19777, witness := RowWitness.topPrime 19609 },
  { lower := 19778, upper := 19945, witness := RowWitness.topPrime 19777 },
  { lower := 19946, upper := 20105, witness := RowWitness.topPrime 19937 },
  { lower := 20106, upper := 20269, witness := RowWitness.topPrime 20101 },
  { lower := 20270, upper := 20437, witness := RowWitness.topPrime 20269 },
  { lower := 20438, upper := 20599, witness := RowWitness.topPrime 20431 },
  { lower := 20600, upper := 20767, witness := RowWitness.topPrime 20599 },
  { lower := 20768, upper := 20927, witness := RowWitness.topPrime 20759 },
  { lower := 20928, upper := 21089, witness := RowWitness.topPrime 20921 },
  { lower := 21090, upper := 21257, witness := RowWitness.topPrime 21089 },
  { lower := 21258, upper := 21415, witness := RowWitness.topPrime 21247 },
  { lower := 21416, upper := 21575, witness := RowWitness.topPrime 21407 },
  { lower := 21576, upper := 21737, witness := RowWitness.topPrime 21569 },
  { lower := 21738, upper := 21905, witness := RowWitness.topPrime 21737 },
  { lower := 21906, upper := 22061, witness := RowWitness.topPrime 21893 },
  { lower := 22062, upper := 22219, witness := RowWitness.topPrime 22051 },
  { lower := 22220, upper := 22361, witness := RowWitness.topPrime 22193 },
  { lower := 22362, upper := 22517, witness := RowWitness.topPrime 22349 },
  { lower := 22518, upper := 22679, witness := RowWitness.topPrime 22511 },
  { lower := 22680, upper := 22847, witness := RowWitness.topPrime 22679 },
  { lower := 22848, upper := 22985, witness := RowWitness.topPrime 22817 },
  { lower := 22986, upper := 23141, witness := RowWitness.topPrime 22973 },
  { lower := 23142, upper := 23299, witness := RowWitness.topPrime 23131 },
  { lower := 23300, upper := 23465, witness := RowWitness.topPrime 23297 },
  { lower := 23466, upper := 23627, witness := RowWitness.topPrime 23459 },
  { lower := 23628, upper := 23795, witness := RowWitness.topPrime 23627 },
  { lower := 23796, upper := 23957, witness := RowWitness.topPrime 23789 },
  { lower := 23958, upper := 24125, witness := RowWitness.topPrime 23957 },
  { lower := 24126, upper := 24289, witness := RowWitness.topPrime 24121 },
  { lower := 24290, upper := 24449, witness := RowWitness.topPrime 24281 },
  { lower := 24450, upper := 24611, witness := RowWitness.topPrime 24443 },
  { lower := 24612, upper := 24779, witness := RowWitness.topPrime 24611 },
  { lower := 24780, upper := 24935, witness := RowWitness.topPrime 24767 },
  { lower := 24936, upper := 25091, witness := RowWitness.topPrime 24923 },
  { lower := 25092, upper := 25255, witness := RowWitness.topPrime 25087 },
  { lower := 25256, upper := 25421, witness := RowWitness.topPrime 25253 },
  { lower := 25422, upper := 25579, witness := RowWitness.topPrime 25411 },
  { lower := 25580, upper := 25747, witness := RowWitness.topPrime 25579 },
  { lower := 25748, upper := 25915, witness := RowWitness.topPrime 25747 },
  { lower := 25916, upper := 26081, witness := RowWitness.topPrime 25913 },
  { lower := 26082, upper := 26221, witness := RowWitness.topPrime 26053 },
  { lower := 26222, upper := 26377, witness := RowWitness.topPrime 26209 },
  { lower := 26378, upper := 26539, witness := RowWitness.topPrime 26371 },
  { lower := 26540, upper := 26707, witness := RowWitness.topPrime 26539 },
  { lower := 26708, upper := 26869, witness := RowWitness.topPrime 26701 },
  { lower := 26870, upper := 27031, witness := RowWitness.topPrime 26863 },
  { lower := 27032, upper := 27199, witness := RowWitness.topPrime 27031 },
  { lower := 27200, upper := 27365, witness := RowWitness.topPrime 27197 },
  { lower := 27366, upper := 27529, witness := RowWitness.topPrime 27361 },
  { lower := 27530, upper := 27697, witness := RowWitness.topPrime 27529 },
  { lower := 27698, upper := 27865, witness := RowWitness.topPrime 27697 },
  { lower := 27866, upper := 28019, witness := RowWitness.topPrime 27851 },
  { lower := 28020, upper := 28187, witness := RowWitness.topPrime 28019 },
  { lower := 28188, upper := 28351, witness := RowWitness.topPrime 28183 },
  { lower := 28352, upper := 28391, witness := RowWitness.topPrime 28351 },
  { lower := 28717, upper := 28879, witness := RowWitness.topPrime 28711 },
  { lower := 28880, upper := 28885, witness := RowWitness.topPrime 28879 },
  { lower := 29791, upper := 29936, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30761, witness := RowWitness.topPrime 30593 },
  { lower := 30762, upper := 30771, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31067, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31361, witness := RowWitness.topPrime 31193 },
  { lower := 31362, upper := 31418, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31497, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31852, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31995, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32936, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33657, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33782, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34487, witness := RowWitness.topPrime 34319 },
  { lower := 34488, upper := 34559, witness := RowWitness.topPrime 34487 },
  { lower := 36517, upper := 36665, witness := RowWitness.topPrime 36497 },
  { lower := 36666, upper := 36669, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37378, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37471, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37661, witness := RowWitness.topPrime 37493 },
  { lower := 37662, upper := 37706, witness := RowWitness.topPrime 37657 },
  { lower := 38307, upper := 38459, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39491, witness := RowWitness.topPrime 39323 },
  { lower := 39492, upper := 39494, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40496, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41095, witness := RowWitness.topPrime 40927 },
  { lower := 41096, upper := 41099, witness := RowWitness.topPrime 41081 },
  { lower := 43750, upper := 43855, witness := RowWitness.topPrime 43721 },
  { lower := 45056, upper := 45058, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45421, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45964, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47689, witness := RowWitness.topPrime 47521 },
  { lower := 47690, upper := 47692, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48129, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48539, witness := RowWitness.topPrime 48371 },
  { lower := 48540, upper := 48541, witness := RowWitness.topPrime 48539 },
  { lower := 48734, upper := 48901, witness := RowWitness.topPrime 48733 },
  { lower := 48902, upper := 48902, witness := RowWitness.topPrime 48889 },
  { lower := 49152, upper := 49307, witness := RowWitness.topPrime 49139 },
  { lower := 49308, upper := 49320, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49466, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50578, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51173, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53213, witness := RowWitness.topPrime 53129 },
  { lower := 53248, upper := 53407, witness := RowWitness.topPrime 53239 },
  { lower := 53408, upper := 53416, witness := RowWitness.topPrime 53407 },
  { lower := 55451, upper := 55609, witness := RowWitness.topPrime 55441 },
  { lower := 55610, upper := 55615, witness := RowWitness.topPrime 55609 },
  { lower := 56307, upper := 56337, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56475, witness := RowWitness.topPrime 56453 },
  { lower := 57344, upper := 57413, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58732, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62578, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65704, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68807, witness := RowWitness.topPrime 68639 },
  { lower := 68808, upper := 68819, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69058, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71455, witness := RowWitness.topPrime 71287 },
  { lower := 71456, upper := 71457, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73170, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73335, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83689, witness := RowWitness.topPrime 83663 },
  { lower := 89383, upper := 89541, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93918, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98472, witness := RowWitness.topPrime 98411 },
  { lower := 102152, upper := 102178, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103134, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109543, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137949, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149045, witness := RowWitness.topPrime 148949 },
  { lower := 195223, upper := 195280, witness := RowWitness.topPrime 195203 }
]

def row169_layers : List CoverLayer := [
  { lower := 28392, upper := 56784, M := 14 },
  { lower := 56784, upper := 113568, M := 11 },
  { lower := 113568, upper := 227136, M := 8 },
  { lower := 227136, upper := 454272, M := 6 },
  { lower := 454272, upper := 908544, M := 5 },
  { lower := 908544, upper := 1817088, M := 4 },
  { lower := 1817088, upper := 3634176, M := 3 },
  { lower := 3634176, upper := 7268352, M := 2 },
  { lower := 7268352, upper := 14536704, M := 2 },
  { lower := 14536704, upper := 29073408, M := 1 },
  { lower := 29073408, upper := 58146816, M := 1 },
  { lower := 58146816, upper := 100000000, M := 1 }
]

def row169 : FiniteCoverRow := {
  height := row169_height,
  goods := row169_goods,
  layers := row169_layers
}

theorem row169_registered :
    decide (row169.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row169_goods_checked :
    row169.goods.all (goodSegmentCheck row169.height.i row169.height.r row169.height.s) = true := by
  decide +kernel

theorem row169_small_checked :
    coverCheck (2 * row169.height.i + 2) (row169.height.i * (row169.height.i - 1) - 1)
      (row169.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row169_layerCover_checked :
    coverCheck (row169.height.i * (row169.height.i - 1)) (row169.height.n0 - 1)
      (row169.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row169_layer000_checked :
    coverLayerCheck row169.height row169.goods { lower := 28392, upper := 56784, M := 14 } = true := by
  decide +kernel

theorem row169_layer001_checked :
    coverLayerCheck row169.height row169.goods { lower := 56784, upper := 113568, M := 11 } = true := by
  decide +kernel

theorem row169_layer002_checked :
    coverLayerCheck row169.height row169.goods { lower := 113568, upper := 227136, M := 8 } = true := by
  decide +kernel

theorem row169_layer003_checked :
    coverLayerCheck row169.height row169.goods { lower := 227136, upper := 454272, M := 6 } = true := by
  decide +kernel

theorem row169_layer004_checked :
    coverLayerCheck row169.height row169.goods { lower := 454272, upper := 908544, M := 5 } = true := by
  decide +kernel

theorem row169_layer005_checked :
    coverLayerCheck row169.height row169.goods { lower := 908544, upper := 1817088, M := 4 } = true := by
  decide +kernel

theorem row169_layer006_checked :
    coverLayerCheck row169.height row169.goods { lower := 1817088, upper := 3634176, M := 3 } = true := by
  decide +kernel

theorem row169_layer007_checked :
    coverLayerCheck row169.height row169.goods { lower := 3634176, upper := 7268352, M := 2 } = true := by
  decide +kernel

theorem row169_layer008_checked :
    coverLayerCheck row169.height row169.goods { lower := 7268352, upper := 14536704, M := 2 } = true := by
  decide +kernel

theorem row169_layer009_checked :
    coverLayerCheck row169.height row169.goods { lower := 14536704, upper := 29073408, M := 1 } = true := by
  decide +kernel

theorem row169_layer010_checked :
    coverLayerCheck row169.height row169.goods { lower := 29073408, upper := 58146816, M := 1 } = true := by
  decide +kernel

theorem row169_layer011_checked :
    coverLayerCheck row169.height row169.goods { lower := 58146816, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row169_layers_checked :
    row169.layers.all (coverLayerCheck row169.height row169.goods) = true := by
  change List.all [
    { lower := 28392, upper := 56784, M := 14 },
    { lower := 56784, upper := 113568, M := 11 },
    { lower := 113568, upper := 227136, M := 8 },
    { lower := 227136, upper := 454272, M := 6 },
    { lower := 454272, upper := 908544, M := 5 },
    { lower := 908544, upper := 1817088, M := 4 },
    { lower := 1817088, upper := 3634176, M := 3 },
    { lower := 3634176, upper := 7268352, M := 2 },
    { lower := 7268352, upper := 14536704, M := 2 },
    { lower := 14536704, upper := 29073408, M := 1 },
    { lower := 29073408, upper := 58146816, M := 1 },
    { lower := 58146816, upper := 100000000, M := 1 }
  ] (coverLayerCheck row169.height row169.goods) = true
  simp only [List.all_cons, List.all_nil,
    row169_layer000_checked,
    row169_layer001_checked,
    row169_layer002_checked,
    row169_layer003_checked,
    row169_layer004_checked,
    row169_layer005_checked,
    row169_layer006_checked,
    row169_layer007_checked,
    row169_layer008_checked,
    row169_layer009_checked,
    row169_layer010_checked,
    row169_layer011_checked,
    Bool.true_and]

theorem row169_checked : finiteCoverRowCheck row169 = true := by
  simp only [finiteCoverRowCheck, row169_registered, row169_goods_checked,
    row169_small_checked, row169_layerCover_checked, row169_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row169_checked

end B699LowIndex
