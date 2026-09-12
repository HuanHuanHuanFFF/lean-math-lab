import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good000_checked :
    goodSegmentCheck 169 56 120
      { lower := 340, upper := 505, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good001_checked :
    goodSegmentCheck 169 56 120
      { lower := 506, upper := 671, witness := RowWitness.topPrime 503 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good002_checked :
    goodSegmentCheck 169 56 120
      { lower := 672, upper := 829, witness := RowWitness.topPrime 661 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good003_checked :
    goodSegmentCheck 169 56 120
      { lower := 830, upper := 997, witness := RowWitness.topPrime 829 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good004_checked :
    goodSegmentCheck 169 56 120
      { lower := 998, upper := 1165, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good005_checked :
    goodSegmentCheck 169 56 120
      { lower := 1166, upper := 1331, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good006_checked :
    goodSegmentCheck 169 56 120
      { lower := 1332, upper := 1495, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good007_checked :
    goodSegmentCheck 169 56 120
      { lower := 1496, upper := 1661, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good008_checked :
    goodSegmentCheck 169 56 120
      { lower := 1662, upper := 1825, witness := RowWitness.topPrime 1657 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good009_checked :
    goodSegmentCheck 169 56 120
      { lower := 1826, upper := 1991, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good010_checked :
    goodSegmentCheck 169 56 120
      { lower := 1992, upper := 2155, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good011_checked :
    goodSegmentCheck 169 56 120
      { lower := 2156, upper := 2321, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good012_checked :
    goodSegmentCheck 169 56 120
      { lower := 2322, upper := 2479, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good013_checked :
    goodSegmentCheck 169 56 120
      { lower := 2480, upper := 2645, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good014_checked :
    goodSegmentCheck 169 56 120
      { lower := 2646, upper := 2801, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good015_checked :
    goodSegmentCheck 169 56 120
      { lower := 2802, upper := 2969, witness := RowWitness.topPrime 2801 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good016_checked :
    goodSegmentCheck 169 56 120
      { lower := 2970, upper := 3137, witness := RowWitness.topPrime 2969 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good017_checked :
    goodSegmentCheck 169 56 120
      { lower := 3138, upper := 3305, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good018_checked :
    goodSegmentCheck 169 56 120
      { lower := 3306, upper := 3469, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good019_checked :
    goodSegmentCheck 169 56 120
      { lower := 3470, upper := 3637, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good020_checked :
    goodSegmentCheck 169 56 120
      { lower := 3638, upper := 3805, witness := RowWitness.topPrime 3637 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good021_checked :
    goodSegmentCheck 169 56 120
      { lower := 3806, upper := 3971, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good022_checked :
    goodSegmentCheck 169 56 120
      { lower := 3972, upper := 4135, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good023_checked :
    goodSegmentCheck 169 56 120
      { lower := 4136, upper := 4301, witness := RowWitness.topPrime 4133 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good024_checked :
    goodSegmentCheck 169 56 120
      { lower := 4302, upper := 4465, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good025_checked :
    goodSegmentCheck 169 56 120
      { lower := 4466, upper := 4631, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good026_checked :
    goodSegmentCheck 169 56 120
      { lower := 4632, upper := 4789, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good027_checked :
    goodSegmentCheck 169 56 120
      { lower := 4790, upper := 4957, witness := RowWitness.topPrime 4789 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good028_checked :
    goodSegmentCheck 169 56 120
      { lower := 4958, upper := 5125, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good029_checked :
    goodSegmentCheck 169 56 120
      { lower := 5126, upper := 5287, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good030_checked :
    goodSegmentCheck 169 56 120
      { lower := 5288, upper := 5449, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good031_checked :
    goodSegmentCheck 169 56 120
      { lower := 5450, upper := 5617, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good032_checked :
    goodSegmentCheck 169 56 120
      { lower := 5618, upper := 5759, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good033_checked :
    goodSegmentCheck 169 56 120
      { lower := 5760, upper := 5917, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good034_checked :
    goodSegmentCheck 169 56 120
      { lower := 5918, upper := 6071, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good035_checked :
    goodSegmentCheck 169 56 120
      { lower := 6072, upper := 6235, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good036_checked :
    goodSegmentCheck 169 56 120
      { lower := 6236, upper := 6397, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good037_checked :
    goodSegmentCheck 169 56 120
      { lower := 6398, upper := 6565, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good038_checked :
    goodSegmentCheck 169 56 120
      { lower := 6566, upper := 6731, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good039_checked :
    goodSegmentCheck 169 56 120
      { lower := 6732, upper := 6887, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good040_checked :
    goodSegmentCheck 169 56 120
      { lower := 6888, upper := 7051, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good041_checked :
    goodSegmentCheck 169 56 120
      { lower := 7052, upper := 7211, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good042_checked :
    goodSegmentCheck 169 56 120
      { lower := 7212, upper := 7379, witness := RowWitness.topPrime 7211 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good043_checked :
    goodSegmentCheck 169 56 120
      { lower := 7380, upper := 7537, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good044_checked :
    goodSegmentCheck 169 56 120
      { lower := 7538, upper := 7705, witness := RowWitness.topPrime 7537 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good045_checked :
    goodSegmentCheck 169 56 120
      { lower := 7706, upper := 7871, witness := RowWitness.topPrime 7703 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good046_checked :
    goodSegmentCheck 169 56 120
      { lower := 7872, upper := 8035, witness := RowWitness.topPrime 7867 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good047_checked :
    goodSegmentCheck 169 56 120
      { lower := 8036, upper := 8185, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good048_checked :
    goodSegmentCheck 169 56 120
      { lower := 8186, upper := 8347, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good049_checked :
    goodSegmentCheck 169 56 120
      { lower := 8348, upper := 8497, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good050_checked :
    goodSegmentCheck 169 56 120
      { lower := 8498, upper := 8635, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good051_checked :
    goodSegmentCheck 169 56 120
      { lower := 8636, upper := 8797, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good052_checked :
    goodSegmentCheck 169 56 120
      { lower := 8798, upper := 8951, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good053_checked :
    goodSegmentCheck 169 56 120
      { lower := 8952, upper := 9119, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good054_checked :
    goodSegmentCheck 169 56 120
      { lower := 9120, upper := 9277, witness := RowWitness.topPrime 9109 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good055_checked :
    goodSegmentCheck 169 56 120
      { lower := 9278, upper := 9445, witness := RowWitness.topPrime 9277 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good056_checked :
    goodSegmentCheck 169 56 120
      { lower := 9446, upper := 9607, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good057_checked :
    goodSegmentCheck 169 56 120
      { lower := 9608, upper := 9769, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good058_checked :
    goodSegmentCheck 169 56 120
      { lower := 9770, upper := 9937, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good059_checked :
    goodSegmentCheck 169 56 120
      { lower := 9938, upper := 10099, witness := RowWitness.topPrime 9931 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good060_checked :
    goodSegmentCheck 169 56 120
      { lower := 10100, upper := 10267, witness := RowWitness.topPrime 10099 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good061_checked :
    goodSegmentCheck 169 56 120
      { lower := 10268, upper := 10435, witness := RowWitness.topPrime 10267 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good062_checked :
    goodSegmentCheck 169 56 120
      { lower := 10436, upper := 10601, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good063_checked :
    goodSegmentCheck 169 56 120
      { lower := 10602, upper := 10769, witness := RowWitness.topPrime 10601 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good064_checked :
    goodSegmentCheck 169 56 120
      { lower := 10770, upper := 10921, witness := RowWitness.topPrime 10753 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good065_checked :
    goodSegmentCheck 169 56 120
      { lower := 10922, upper := 11077, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good066_checked :
    goodSegmentCheck 169 56 120
      { lower := 11078, upper := 11239, witness := RowWitness.topPrime 11071 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good067_checked :
    goodSegmentCheck 169 56 120
      { lower := 11240, upper := 11407, witness := RowWitness.topPrime 11239 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good068_checked :
    goodSegmentCheck 169 56 120
      { lower := 11408, upper := 11567, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good069_checked :
    goodSegmentCheck 169 56 120
      { lower := 11568, upper := 11719, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good070_checked :
    goodSegmentCheck 169 56 120
      { lower := 11720, upper := 11887, witness := RowWitness.topPrime 11719 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good071_checked :
    goodSegmentCheck 169 56 120
      { lower := 11888, upper := 12055, witness := RowWitness.topPrime 11887 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good072_checked :
    goodSegmentCheck 169 56 120
      { lower := 12056, upper := 12217, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good073_checked :
    goodSegmentCheck 169 56 120
      { lower := 12218, upper := 12379, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good074_checked :
    goodSegmentCheck 169 56 120
      { lower := 12380, upper := 12547, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good075_checked :
    goodSegmentCheck 169 56 120
      { lower := 12548, upper := 12715, witness := RowWitness.topPrime 12547 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good076_checked :
    goodSegmentCheck 169 56 120
      { lower := 12716, upper := 12881, witness := RowWitness.topPrime 12713 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good077_checked :
    goodSegmentCheck 169 56 120
      { lower := 12882, upper := 13021, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good078_checked :
    goodSegmentCheck 169 56 120
      { lower := 13022, upper := 13177, witness := RowWitness.topPrime 13009 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good079_checked :
    goodSegmentCheck 169 56 120
      { lower := 13178, upper := 13345, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good080_checked :
    goodSegmentCheck 169 56 120
      { lower := 13346, upper := 13507, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good081_checked :
    goodSegmentCheck 169 56 120
      { lower := 13508, upper := 13667, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good082_checked :
    goodSegmentCheck 169 56 120
      { lower := 13668, upper := 13817, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good083_checked :
    goodSegmentCheck 169 56 120
      { lower := 13818, upper := 13975, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good084_checked :
    goodSegmentCheck 169 56 120
      { lower := 13976, upper := 14135, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good085_checked :
    goodSegmentCheck 169 56 120
      { lower := 14136, upper := 14275, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good086_checked :
    goodSegmentCheck 169 56 120
      { lower := 14276, upper := 14419, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good087_checked :
    goodSegmentCheck 169 56 120
      { lower := 14420, upper := 14587, witness := RowWitness.topPrime 14419 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good088_checked :
    goodSegmentCheck 169 56 120
      { lower := 14588, upper := 14731, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good089_checked :
    goodSegmentCheck 169 56 120
      { lower := 14732, upper := 14899, witness := RowWitness.topPrime 14731 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good090_checked :
    goodSegmentCheck 169 56 120
      { lower := 14900, upper := 15065, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good091_checked :
    goodSegmentCheck 169 56 120
      { lower := 15066, upper := 15229, witness := RowWitness.topPrime 15061 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good092_checked :
    goodSegmentCheck 169 56 120
      { lower := 15230, upper := 15395, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good093_checked :
    goodSegmentCheck 169 56 120
      { lower := 15396, upper := 15559, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good094_checked :
    goodSegmentCheck 169 56 120
      { lower := 15560, upper := 15727, witness := RowWitness.topPrime 15559 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good095_checked :
    goodSegmentCheck 169 56 120
      { lower := 15728, upper := 15895, witness := RowWitness.topPrime 15727 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good096_checked :
    goodSegmentCheck 169 56 120
      { lower := 15896, upper := 16057, witness := RowWitness.topPrime 15889 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good097_checked :
    goodSegmentCheck 169 56 120
      { lower := 16058, upper := 16225, witness := RowWitness.topPrime 16057 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good098_checked :
    goodSegmentCheck 169 56 120
      { lower := 16226, upper := 16391, witness := RowWitness.topPrime 16223 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good099_checked :
    goodSegmentCheck 169 56 120
      { lower := 16392, upper := 16549, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good100_checked :
    goodSegmentCheck 169 56 120
      { lower := 16550, upper := 16715, witness := RowWitness.topPrime 16547 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good101_checked :
    goodSegmentCheck 169 56 120
      { lower := 16716, upper := 16871, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good102_checked :
    goodSegmentCheck 169 56 120
      { lower := 16872, upper := 17039, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good103_checked :
    goodSegmentCheck 169 56 120
      { lower := 17040, upper := 17201, witness := RowWitness.topPrime 17033 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good104_checked :
    goodSegmentCheck 169 56 120
      { lower := 17202, upper := 17359, witness := RowWitness.topPrime 17191 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good105_checked :
    goodSegmentCheck 169 56 120
      { lower := 17360, upper := 17527, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good106_checked :
    goodSegmentCheck 169 56 120
      { lower := 17528, upper := 17687, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good107_checked :
    goodSegmentCheck 169 56 120
      { lower := 17688, upper := 17851, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good108_checked :
    goodSegmentCheck 169 56 120
      { lower := 17852, upper := 18019, witness := RowWitness.topPrime 17851 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good109_checked :
    goodSegmentCheck 169 56 120
      { lower := 18020, upper := 18181, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good110_checked :
    goodSegmentCheck 169 56 120
      { lower := 18182, upper := 18349, witness := RowWitness.topPrime 18181 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good111_checked :
    goodSegmentCheck 169 56 120
      { lower := 18350, upper := 18509, witness := RowWitness.topPrime 18341 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good112_checked :
    goodSegmentCheck 169 56 120
      { lower := 18510, upper := 18671, witness := RowWitness.topPrime 18503 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good113_checked :
    goodSegmentCheck 169 56 120
      { lower := 18672, upper := 18839, witness := RowWitness.topPrime 18671 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good114_checked :
    goodSegmentCheck 169 56 120
      { lower := 18840, upper := 19007, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good115_checked :
    goodSegmentCheck 169 56 120
      { lower := 19008, upper := 19169, witness := RowWitness.topPrime 19001 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good116_checked :
    goodSegmentCheck 169 56 120
      { lower := 19170, upper := 19331, witness := RowWitness.topPrime 19163 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good117_checked :
    goodSegmentCheck 169 56 120
      { lower := 19332, upper := 19487, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good118_checked :
    goodSegmentCheck 169 56 120
      { lower := 19488, upper := 19651, witness := RowWitness.topPrime 19483 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good119_checked :
    goodSegmentCheck 169 56 120
      { lower := 19652, upper := 19777, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good120_checked :
    goodSegmentCheck 169 56 120
      { lower := 19778, upper := 19945, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good121_checked :
    goodSegmentCheck 169 56 120
      { lower := 19946, upper := 20105, witness := RowWitness.topPrime 19937 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good122_checked :
    goodSegmentCheck 169 56 120
      { lower := 20106, upper := 20269, witness := RowWitness.topPrime 20101 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good123_checked :
    goodSegmentCheck 169 56 120
      { lower := 20270, upper := 20437, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good124_checked :
    goodSegmentCheck 169 56 120
      { lower := 20438, upper := 20599, witness := RowWitness.topPrime 20431 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good125_checked :
    goodSegmentCheck 169 56 120
      { lower := 20600, upper := 20767, witness := RowWitness.topPrime 20599 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good126_checked :
    goodSegmentCheck 169 56 120
      { lower := 20768, upper := 20927, witness := RowWitness.topPrime 20759 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good127_checked :
    goodSegmentCheck 169 56 120
      { lower := 20928, upper := 21089, witness := RowWitness.topPrime 20921 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good128_checked :
    goodSegmentCheck 169 56 120
      { lower := 21090, upper := 21257, witness := RowWitness.topPrime 21089 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good129_checked :
    goodSegmentCheck 169 56 120
      { lower := 21258, upper := 21415, witness := RowWitness.topPrime 21247 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good130_checked :
    goodSegmentCheck 169 56 120
      { lower := 21416, upper := 21575, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good131_checked :
    goodSegmentCheck 169 56 120
      { lower := 21576, upper := 21737, witness := RowWitness.topPrime 21569 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good132_checked :
    goodSegmentCheck 169 56 120
      { lower := 21738, upper := 21905, witness := RowWitness.topPrime 21737 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good133_checked :
    goodSegmentCheck 169 56 120
      { lower := 21906, upper := 22061, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good134_checked :
    goodSegmentCheck 169 56 120
      { lower := 22062, upper := 22219, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good135_checked :
    goodSegmentCheck 169 56 120
      { lower := 22220, upper := 22361, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good136_checked :
    goodSegmentCheck 169 56 120
      { lower := 22362, upper := 22517, witness := RowWitness.topPrime 22349 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good137_checked :
    goodSegmentCheck 169 56 120
      { lower := 22518, upper := 22679, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good138_checked :
    goodSegmentCheck 169 56 120
      { lower := 22680, upper := 22847, witness := RowWitness.topPrime 22679 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good139_checked :
    goodSegmentCheck 169 56 120
      { lower := 22848, upper := 22985, witness := RowWitness.topPrime 22817 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good140_checked :
    goodSegmentCheck 169 56 120
      { lower := 22986, upper := 23141, witness := RowWitness.topPrime 22973 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good141_checked :
    goodSegmentCheck 169 56 120
      { lower := 23142, upper := 23299, witness := RowWitness.topPrime 23131 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good142_checked :
    goodSegmentCheck 169 56 120
      { lower := 23300, upper := 23465, witness := RowWitness.topPrime 23297 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good143_checked :
    goodSegmentCheck 169 56 120
      { lower := 23466, upper := 23627, witness := RowWitness.topPrime 23459 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good144_checked :
    goodSegmentCheck 169 56 120
      { lower := 23628, upper := 23795, witness := RowWitness.topPrime 23627 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good145_checked :
    goodSegmentCheck 169 56 120
      { lower := 23796, upper := 23957, witness := RowWitness.topPrime 23789 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good146_checked :
    goodSegmentCheck 169 56 120
      { lower := 23958, upper := 24125, witness := RowWitness.topPrime 23957 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good147_checked :
    goodSegmentCheck 169 56 120
      { lower := 24126, upper := 24289, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good148_checked :
    goodSegmentCheck 169 56 120
      { lower := 24290, upper := 24449, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good149_checked :
    goodSegmentCheck 169 56 120
      { lower := 24450, upper := 24611, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good150_checked :
    goodSegmentCheck 169 56 120
      { lower := 24612, upper := 24779, witness := RowWitness.topPrime 24611 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good151_checked :
    goodSegmentCheck 169 56 120
      { lower := 24780, upper := 24935, witness := RowWitness.topPrime 24767 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good152_checked :
    goodSegmentCheck 169 56 120
      { lower := 24936, upper := 25091, witness := RowWitness.topPrime 24923 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good153_checked :
    goodSegmentCheck 169 56 120
      { lower := 25092, upper := 25255, witness := RowWitness.topPrime 25087 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good154_checked :
    goodSegmentCheck 169 56 120
      { lower := 25256, upper := 25421, witness := RowWitness.topPrime 25253 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good155_checked :
    goodSegmentCheck 169 56 120
      { lower := 25422, upper := 25579, witness := RowWitness.topPrime 25411 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good156_checked :
    goodSegmentCheck 169 56 120
      { lower := 25580, upper := 25747, witness := RowWitness.topPrime 25579 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good157_checked :
    goodSegmentCheck 169 56 120
      { lower := 25748, upper := 25915, witness := RowWitness.topPrime 25747 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good158_checked :
    goodSegmentCheck 169 56 120
      { lower := 25916, upper := 26081, witness := RowWitness.topPrime 25913 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good159_checked :
    goodSegmentCheck 169 56 120
      { lower := 26082, upper := 26221, witness := RowWitness.topPrime 26053 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good160_checked :
    goodSegmentCheck 169 56 120
      { lower := 26222, upper := 26377, witness := RowWitness.topPrime 26209 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good161_checked :
    goodSegmentCheck 169 56 120
      { lower := 26378, upper := 26539, witness := RowWitness.topPrime 26371 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good162_checked :
    goodSegmentCheck 169 56 120
      { lower := 26540, upper := 26707, witness := RowWitness.topPrime 26539 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good163_checked :
    goodSegmentCheck 169 56 120
      { lower := 26708, upper := 26869, witness := RowWitness.topPrime 26701 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good164_checked :
    goodSegmentCheck 169 56 120
      { lower := 26870, upper := 27031, witness := RowWitness.topPrime 26863 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good165_checked :
    goodSegmentCheck 169 56 120
      { lower := 27032, upper := 27199, witness := RowWitness.topPrime 27031 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good166_checked :
    goodSegmentCheck 169 56 120
      { lower := 27200, upper := 27365, witness := RowWitness.topPrime 27197 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good167_checked :
    goodSegmentCheck 169 56 120
      { lower := 27366, upper := 27529, witness := RowWitness.topPrime 27361 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good168_checked :
    goodSegmentCheck 169 56 120
      { lower := 27530, upper := 27697, witness := RowWitness.topPrime 27529 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good169_checked :
    goodSegmentCheck 169 56 120
      { lower := 27698, upper := 27865, witness := RowWitness.topPrime 27697 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good170_checked :
    goodSegmentCheck 169 56 120
      { lower := 27866, upper := 28019, witness := RowWitness.topPrime 27851 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good171_checked :
    goodSegmentCheck 169 56 120
      { lower := 28020, upper := 28187, witness := RowWitness.topPrime 28019 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good172_checked :
    goodSegmentCheck 169 56 120
      { lower := 28188, upper := 28351, witness := RowWitness.topPrime 28183 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good173_checked :
    goodSegmentCheck 169 56 120
      { lower := 28352, upper := 28391, witness := RowWitness.topPrime 28351 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good174_checked :
    goodSegmentCheck 169 56 120
      { lower := 28717, upper := 28879, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good175_checked :
    goodSegmentCheck 169 56 120
      { lower := 28880, upper := 28885, witness := RowWitness.topPrime 28879 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good176_checked :
    goodSegmentCheck 169 56 120
      { lower := 29791, upper := 29936, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good177_checked :
    goodSegmentCheck 169 56 120
      { lower := 30618, upper := 30761, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good178_checked :
    goodSegmentCheck 169 56 120
      { lower := 30762, upper := 30771, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good179_checked :
    goodSegmentCheck 169 56 120
      { lower := 30926, upper := 31067, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good180_checked :
    goodSegmentCheck 169 56 120
      { lower := 31213, upper := 31361, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good181_checked :
    goodSegmentCheck 169 56 120
      { lower := 31362, upper := 31418, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good182_checked :
    goodSegmentCheck 169 56 120
      { lower := 31423, upper := 31497, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good183_checked :
    goodSegmentCheck 169 56 120
      { lower := 31827, upper := 31852, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good184_checked :
    goodSegmentCheck 169 56 120
      { lower := 31974, upper := 31995, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good185_checked :
    goodSegmentCheck 169 56 120
      { lower := 32805, upper := 32936, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good186_checked :
    goodSegmentCheck 169 56 120
      { lower := 33614, upper := 33657, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good187_checked :
    goodSegmentCheck 169 56 120
      { lower := 33708, upper := 33782, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good188_checked :
    goodSegmentCheck 169 56 120
      { lower := 34322, upper := 34487, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good189_checked :
    goodSegmentCheck 169 56 120
      { lower := 34488, upper := 34559, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good190_checked :
    goodSegmentCheck 169 56 120
      { lower := 36517, upper := 36665, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good191_checked :
    goodSegmentCheck 169 56 120
      { lower := 36666, upper := 36669, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good192_checked :
    goodSegmentCheck 169 56 120
      { lower := 37303, upper := 37378, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good193_checked :
    goodSegmentCheck 169 56 120
      { lower := 37446, upper := 37471, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good194_checked :
    goodSegmentCheck 169 56 120
      { lower := 37500, upper := 37661, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good195_checked :
    goodSegmentCheck 169 56 120
      { lower := 37662, upper := 37706, witness := RowWitness.topPrime 37657 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good196_checked :
    goodSegmentCheck 169 56 120
      { lower := 38307, upper := 38459, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good197_checked :
    goodSegmentCheck 169 56 120
      { lower := 39326, upper := 39491, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good198_checked :
    goodSegmentCheck 169 56 120
      { lower := 39492, upper := 39494, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good199_checked :
    goodSegmentCheck 169 56 120
      { lower := 40401, upper := 40496, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good200_checked :
    goodSegmentCheck 169 56 120
      { lower := 40931, upper := 41095, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good201_checked :
    goodSegmentCheck 169 56 120
      { lower := 41096, upper := 41099, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good202_checked :
    goodSegmentCheck 169 56 120
      { lower := 43750, upper := 43855, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good203_checked :
    goodSegmentCheck 169 56 120
      { lower := 45056, upper := 45058, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good204_checked :
    goodSegmentCheck 169 56 120
      { lower := 45369, upper := 45421, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good205_checked :
    goodSegmentCheck 169 56 120
      { lower := 45927, upper := 45964, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good206_checked :
    goodSegmentCheck 169 56 120
      { lower := 47526, upper := 47689, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good207_checked :
    goodSegmentCheck 169 56 120
      { lower := 47690, upper := 47692, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good208_checked :
    goodSegmentCheck 169 56 120
      { lower := 48013, upper := 48129, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good209_checked :
    goodSegmentCheck 169 56 120
      { lower := 48373, upper := 48539, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good210_checked :
    goodSegmentCheck 169 56 120
      { lower := 48540, upper := 48541, witness := RowWitness.topPrime 48539 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good211_checked :
    goodSegmentCheck 169 56 120
      { lower := 48734, upper := 48901, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good212_checked :
    goodSegmentCheck 169 56 120
      { lower := 48902, upper := 48902, witness := RowWitness.topPrime 48889 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good213_checked :
    goodSegmentCheck 169 56 120
      { lower := 49152, upper := 49307, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good214_checked :
    goodSegmentCheck 169 56 120
      { lower := 49308, upper := 49320, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good215_checked :
    goodSegmentCheck 169 56 120
      { lower := 49379, upper := 49466, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good216_checked :
    goodSegmentCheck 169 56 120
      { lower := 50421, upper := 50578, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good217_checked :
    goodSegmentCheck 169 56 120
      { lower := 51076, upper := 51173, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good218_checked :
    goodSegmentCheck 169 56 120
      { lower := 53138, upper := 53213, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good219_checked :
    goodSegmentCheck 169 56 120
      { lower := 53248, upper := 53407, witness := RowWitness.topPrime 53239 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good220_checked :
    goodSegmentCheck 169 56 120
      { lower := 53408, upper := 53416, witness := RowWitness.topPrime 53407 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good221_checked :
    goodSegmentCheck 169 56 120
      { lower := 55451, upper := 55609, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good222_checked :
    goodSegmentCheck 169 56 120
      { lower := 55610, upper := 55615, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good223_checked :
    goodSegmentCheck 169 56 120
      { lower := 56307, upper := 56337, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good224_checked :
    goodSegmentCheck 169 56 120
      { lower := 56454, upper := 56475, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good225_checked :
    goodSegmentCheck 169 56 120
      { lower := 57344, upper := 57413, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good226_checked :
    goodSegmentCheck 169 56 120
      { lower := 58619, upper := 58732, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good227_checked :
    goodSegmentCheck 169 56 120
      { lower := 62500, upper := 62578, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good228_checked :
    goodSegmentCheck 169 56 120
      { lower := 65610, upper := 65704, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good229_checked :
    goodSegmentCheck 169 56 120
      { lower := 68644, upper := 68807, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good230_checked :
    goodSegmentCheck 169 56 120
      { lower := 68808, upper := 68819, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good231_checked :
    goodSegmentCheck 169 56 120
      { lower := 68921, upper := 69058, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good232_checked :
    goodSegmentCheck 169 56 120
      { lower := 71289, upper := 71455, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good233_checked :
    goodSegmentCheck 169 56 120
      { lower := 71456, upper := 71457, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good234_checked :
    goodSegmentCheck 169 56 120
      { lower := 73167, upper := 73170, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good235_checked :
    goodSegmentCheck 169 56 120
      { lower := 73205, upper := 73335, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good236_checked :
    goodSegmentCheck 169 56 120
      { lower := 83667, upper := 83689, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good237_checked :
    goodSegmentCheck 169 56 120
      { lower := 89383, upper := 89541, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good238_checked :
    goodSegmentCheck 169 56 120
      { lower := 93845, upper := 93918, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good239_checked :
    goodSegmentCheck 169 56 120
      { lower := 98415, upper := 98472, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good240_checked :
    goodSegmentCheck 169 56 120
      { lower := 102152, upper := 102178, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good241_checked :
    goodSegmentCheck 169 56 120
      { lower := 103041, upper := 103134, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good242_checked :
    goodSegmentCheck 169 56 120
      { lower := 109503, upper := 109543, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good243_checked :
    goodSegmentCheck 169 56 120
      { lower := 137842, upper := 137949, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good244_checked :
    goodSegmentCheck 169 56 120
      { lower := 148955, upper := 149045, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good245_checked :
    goodSegmentCheck 169 56 120
      { lower := 195223, upper := 195280, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good245_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_goods_checked :
    row169.goods.all (goodSegmentCheck row169.height.i row169.height.r row169.height.s) = true := by
  change row169_goods.all (goodSegmentCheck 169 56 120) = true
  simp only [row169_goods, List.all_cons, List.all_nil,
    row169_good000_checked,
    row169_good001_checked,
    row169_good002_checked,
    row169_good003_checked,
    row169_good004_checked,
    row169_good005_checked,
    row169_good006_checked,
    row169_good007_checked,
    row169_good008_checked,
    row169_good009_checked,
    row169_good010_checked,
    row169_good011_checked,
    row169_good012_checked,
    row169_good013_checked,
    row169_good014_checked,
    row169_good015_checked,
    row169_good016_checked,
    row169_good017_checked,
    row169_good018_checked,
    row169_good019_checked,
    row169_good020_checked,
    row169_good021_checked,
    row169_good022_checked,
    row169_good023_checked,
    row169_good024_checked,
    row169_good025_checked,
    row169_good026_checked,
    row169_good027_checked,
    row169_good028_checked,
    row169_good029_checked,
    row169_good030_checked,
    row169_good031_checked,
    row169_good032_checked,
    row169_good033_checked,
    row169_good034_checked,
    row169_good035_checked,
    row169_good036_checked,
    row169_good037_checked,
    row169_good038_checked,
    row169_good039_checked,
    row169_good040_checked,
    row169_good041_checked,
    row169_good042_checked,
    row169_good043_checked,
    row169_good044_checked,
    row169_good045_checked,
    row169_good046_checked,
    row169_good047_checked,
    row169_good048_checked,
    row169_good049_checked,
    row169_good050_checked,
    row169_good051_checked,
    row169_good052_checked,
    row169_good053_checked,
    row169_good054_checked,
    row169_good055_checked,
    row169_good056_checked,
    row169_good057_checked,
    row169_good058_checked,
    row169_good059_checked,
    row169_good060_checked,
    row169_good061_checked,
    row169_good062_checked,
    row169_good063_checked,
    row169_good064_checked,
    row169_good065_checked,
    row169_good066_checked,
    row169_good067_checked,
    row169_good068_checked,
    row169_good069_checked,
    row169_good070_checked,
    row169_good071_checked,
    row169_good072_checked,
    row169_good073_checked,
    row169_good074_checked,
    row169_good075_checked,
    row169_good076_checked,
    row169_good077_checked,
    row169_good078_checked,
    row169_good079_checked,
    row169_good080_checked,
    row169_good081_checked,
    row169_good082_checked,
    row169_good083_checked,
    row169_good084_checked,
    row169_good085_checked,
    row169_good086_checked,
    row169_good087_checked,
    row169_good088_checked,
    row169_good089_checked,
    row169_good090_checked,
    row169_good091_checked,
    row169_good092_checked,
    row169_good093_checked,
    row169_good094_checked,
    row169_good095_checked,
    row169_good096_checked,
    row169_good097_checked,
    row169_good098_checked,
    row169_good099_checked,
    row169_good100_checked,
    row169_good101_checked,
    row169_good102_checked,
    row169_good103_checked,
    row169_good104_checked,
    row169_good105_checked,
    row169_good106_checked,
    row169_good107_checked,
    row169_good108_checked,
    row169_good109_checked,
    row169_good110_checked,
    row169_good111_checked,
    row169_good112_checked,
    row169_good113_checked,
    row169_good114_checked,
    row169_good115_checked,
    row169_good116_checked,
    row169_good117_checked,
    row169_good118_checked,
    row169_good119_checked,
    row169_good120_checked,
    row169_good121_checked,
    row169_good122_checked,
    row169_good123_checked,
    row169_good124_checked,
    row169_good125_checked,
    row169_good126_checked,
    row169_good127_checked,
    row169_good128_checked,
    row169_good129_checked,
    row169_good130_checked,
    row169_good131_checked,
    row169_good132_checked,
    row169_good133_checked,
    row169_good134_checked,
    row169_good135_checked,
    row169_good136_checked,
    row169_good137_checked,
    row169_good138_checked,
    row169_good139_checked,
    row169_good140_checked,
    row169_good141_checked,
    row169_good142_checked,
    row169_good143_checked,
    row169_good144_checked,
    row169_good145_checked,
    row169_good146_checked,
    row169_good147_checked,
    row169_good148_checked,
    row169_good149_checked,
    row169_good150_checked,
    row169_good151_checked,
    row169_good152_checked,
    row169_good153_checked,
    row169_good154_checked,
    row169_good155_checked,
    row169_good156_checked,
    row169_good157_checked,
    row169_good158_checked,
    row169_good159_checked,
    row169_good160_checked,
    row169_good161_checked,
    row169_good162_checked,
    row169_good163_checked,
    row169_good164_checked,
    row169_good165_checked,
    row169_good166_checked,
    row169_good167_checked,
    row169_good168_checked,
    row169_good169_checked,
    row169_good170_checked,
    row169_good171_checked,
    row169_good172_checked,
    row169_good173_checked,
    row169_good174_checked,
    row169_good175_checked,
    row169_good176_checked,
    row169_good177_checked,
    row169_good178_checked,
    row169_good179_checked,
    row169_good180_checked,
    row169_good181_checked,
    row169_good182_checked,
    row169_good183_checked,
    row169_good184_checked,
    row169_good185_checked,
    row169_good186_checked,
    row169_good187_checked,
    row169_good188_checked,
    row169_good189_checked,
    row169_good190_checked,
    row169_good191_checked,
    row169_good192_checked,
    row169_good193_checked,
    row169_good194_checked,
    row169_good195_checked,
    row169_good196_checked,
    row169_good197_checked,
    row169_good198_checked,
    row169_good199_checked,
    row169_good200_checked,
    row169_good201_checked,
    row169_good202_checked,
    row169_good203_checked,
    row169_good204_checked,
    row169_good205_checked,
    row169_good206_checked,
    row169_good207_checked,
    row169_good208_checked,
    row169_good209_checked,
    row169_good210_checked,
    row169_good211_checked,
    row169_good212_checked,
    row169_good213_checked,
    row169_good214_checked,
    row169_good215_checked,
    row169_good216_checked,
    row169_good217_checked,
    row169_good218_checked,
    row169_good219_checked,
    row169_good220_checked,
    row169_good221_checked,
    row169_good222_checked,
    row169_good223_checked,
    row169_good224_checked,
    row169_good225_checked,
    row169_good226_checked,
    row169_good227_checked,
    row169_good228_checked,
    row169_good229_checked,
    row169_good230_checked,
    row169_good231_checked,
    row169_good232_checked,
    row169_good233_checked,
    row169_good234_checked,
    row169_good235_checked,
    row169_good236_checked,
    row169_good237_checked,
    row169_good238_checked,
    row169_good239_checked,
    row169_good240_checked,
    row169_good241_checked,
    row169_good242_checked,
    row169_good243_checked,
    row169_good244_checked,
    row169_good245_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_registered :
    decide (row169.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row169_small_checked :
    coverCheck (2 * row169.height.i + 2) (row169.height.i * (row169.height.i - 1) - 1)
      (row169.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row169_layerCover_checked :
    coverCheck (row169.height.i * (row169.height.i - 1)) (row169.height.n0 - 1)
      (row169.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row169_bounds : List NatInterval :=
  [(340, 505), (506, 671), (672, 829), (830, 997), (998, 1165), (1166, 1331), (1332, 1495), (1496, 1661), (1662, 1825), (1826, 1991), (1992, 2155), (2156, 2321), (2322, 2479), (2480, 2645), (2646, 2801), (2802, 2969), (2970, 3137), (3138, 3305), (3306, 3469), (3470, 3637), (3638, 3805), (3806, 3971), (3972, 4135), (4136, 4301), (4302, 4465), (4466, 4631), (4632, 4789), (4790, 4957), (4958, 5125), (5126, 5287), (5288, 5449), (5450, 5617), (5618, 5759), (5760, 5917), (5918, 6071), (6072, 6235), (6236, 6397), (6398, 6565), (6566, 6731), (6732, 6887), (6888, 7051), (7052, 7211), (7212, 7379), (7380, 7537), (7538, 7705), (7706, 7871), (7872, 8035), (8036, 8185), (8186, 8347), (8348, 8497), (8498, 8635), (8636, 8797), (8798, 8951), (8952, 9119), (9120, 9277), (9278, 9445), (9446, 9607), (9608, 9769), (9770, 9937), (9938, 10099), (10100, 10267), (10268, 10435), (10436, 10601), (10602, 10769), (10770, 10921), (10922, 11077), (11078, 11239), (11240, 11407), (11408, 11567), (11568, 11719), (11720, 11887), (11888, 12055), (12056, 12217), (12218, 12379), (12380, 12547), (12548, 12715), (12716, 12881), (12882, 13021), (13022, 13177), (13178, 13345), (13346, 13507), (13508, 13667), (13668, 13817), (13818, 13975), (13976, 14135), (14136, 14275), (14276, 14419), (14420, 14587), (14588, 14731), (14732, 14899), (14900, 15065), (15066, 15229), (15230, 15395), (15396, 15559), (15560, 15727), (15728, 15895), (15896, 16057), (16058, 16225), (16226, 16391), (16392, 16549), (16550, 16715), (16716, 16871), (16872, 17039), (17040, 17201), (17202, 17359), (17360, 17527), (17528, 17687), (17688, 17851), (17852, 18019), (18020, 18181), (18182, 18349), (18350, 18509), (18510, 18671), (18672, 18839), (18840, 19007), (19008, 19169), (19170, 19331), (19332, 19487), (19488, 19651), (19652, 19777), (19778, 19945), (19946, 20105), (20106, 20269), (20270, 20437), (20438, 20599), (20600, 20767), (20768, 20927), (20928, 21089), (21090, 21257), (21258, 21415), (21416, 21575), (21576, 21737), (21738, 21905), (21906, 22061), (22062, 22219), (22220, 22361), (22362, 22517), (22518, 22679), (22680, 22847), (22848, 22985), (22986, 23141), (23142, 23299), (23300, 23465), (23466, 23627), (23628, 23795), (23796, 23957), (23958, 24125), (24126, 24289), (24290, 24449), (24450, 24611), (24612, 24779), (24780, 24935), (24936, 25091), (25092, 25255), (25256, 25421), (25422, 25579), (25580, 25747), (25748, 25915), (25916, 26081), (26082, 26221), (26222, 26377), (26378, 26539), (26540, 26707), (26708, 26869), (26870, 27031), (27032, 27199), (27200, 27365), (27366, 27529), (27530, 27697), (27698, 27865), (27866, 28019), (28020, 28187), (28188, 28351), (28352, 28391), (28717, 28879), (28880, 28885), (29791, 29936), (30618, 30761), (30762, 30771), (30926, 31067), (31213, 31361), (31362, 31418), (31423, 31497), (31827, 31852), (31974, 31995), (32805, 32936), (33614, 33657), (33708, 33782), (34322, 34487), (34488, 34559), (36517, 36665), (36666, 36669), (37303, 37378), (37446, 37471), (37500, 37661), (37662, 37706), (38307, 38459), (39326, 39491), (39492, 39494), (40401, 40496), (40931, 41095), (41096, 41099), (43750, 43855), (45056, 45058), (45369, 45421), (45927, 45964), (47526, 47689), (47690, 47692), (48013, 48129), (48373, 48539), (48540, 48541), (48734, 48901), (48902, 48902), (49152, 49307), (49308, 49320), (49379, 49466), (50421, 50578), (51076, 51173), (53138, 53213), (53248, 53407), (53408, 53416), (55451, 55609), (55610, 55615), (56307, 56337), (56454, 56475), (57344, 57413), (58619, 58732), (62500, 62578), (65610, 65704), (68644, 68807), (68808, 68819), (68921, 69058), (71289, 71455), (71456, 71457), (73167, 73170), (73205, 73335), (83667, 83689), (89383, 89541), (93845, 93918), (98415, 98472), (102152, 102178), (103041, 103134), (109503, 109543), (137842, 137949), (148955, 149045), (195223, 195280)]

theorem row169_bounds_eq : row169.goods.map goodSegmentBounds = row169_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row169_layer000_intervals : List ColouredInterval :=
  [(2, 28672, 28840), (2, 28672, 28840), (2, 32768, 32936), (2, 36864, 37032), (2, 40960, 41128), (2, 45056, 45224), (2, 49152, 49320), (2, 53248, 53416), (2, 32768, 32936), (2, 40960, 41128), (2, 49152, 49320), (2, 32768, 32936), (2, 49152, 49320), (2, 32768, 32936), (3, 28431, 28599), (3, 30618, 30786), (3, 32805, 32973), (3, 39366, 39534), (3, 45927, 46095), (3, 52488, 52656), (3, 39366, 39534), (5, 31250, 31418), (5, 34375, 34543), (5, 37500, 37668), (5, 40625, 40793), (5, 43750, 43918), (5, 31250, 31418), (5, 46875, 47043), (7, 28812, 28980), (7, 31213, 31381), (7, 33614, 33782), (7, 33614, 33782), (7, 50421, 50589), (11, 29282, 29450), (11, 43923, 44091), (17, 29478, 29646), (17, 34391, 34559), (17, 39304, 39472), (17, 44217, 44385), (17, 49130, 49298), (17, 54043, 54211), (19, 34295, 34463), (19, 41154, 41322), (19, 48013, 48181), (19, 54872, 55040), (23, 36501, 36669), (23, 48668, 48836), (29, 48778, 48946), (31, 29791, 29959), (37, 50653, 50821), (47, 28717, 28885), (47, 30926, 31094), (53, 30899, 31067), (53, 33708, 33876), (53, 36517, 36685), (53, 39326, 39494), (59, 31329, 31497), (59, 34810, 34978), (59, 38291, 38459), (59, 41772, 41940), (59, 45253, 45421), (59, 48734, 48902), (61, 29768, 29936), (61, 33489, 33657), (61, 37210, 37378), (61, 40931, 41099), (61, 44652, 44820), (61, 48373, 48541), (61, 52094, 52262), (67, 31423, 31591), (67, 35912, 36080), (67, 40401, 40569), (67, 44890, 45058), (67, 49379, 49547), (67, 53868, 54036), (71, 30246, 30414), (71, 35287, 35455), (71, 40328, 40496), (71, 45369, 45537), (71, 50410, 50578), (71, 55451, 55619), (73, 31974, 32142), (73, 37303, 37471), (73, 42632, 42800), (73, 47961, 48129), (73, 53290, 53458), (79, 31205, 31373), (79, 37446, 37614), (79, 43687, 43855), (79, 49928, 50096), (79, 56169, 56337), (83, 34445, 34613), (83, 41334, 41502), (83, 48223, 48391), (83, 55112, 55280), (89, 31684, 31852), (89, 39605, 39773), (89, 47526, 47694), (89, 55447, 55615), (97, 28392, 28395), (97, 37636, 37804), (97, 47045, 47213), (97, 56454, 56622), (101, 30603, 30771), (101, 40804, 40972), (101, 51005, 51173), (103, 31827, 31995), (103, 42436, 42604), (103, 53045, 53213), (107, 34347, 34515), (107, 45796, 45964), (109, 35643, 35811), (109, 47524, 47692), (113, 38307, 38475), (113, 51076, 51244), (127, 32258, 32426), (127, 48387, 48555), (131, 34322, 34490), (131, 51483, 51651), (137, 37538, 37706), (137, 56307, 56475), (139, 38642, 38810), (149, 44402, 44570), (151, 45602, 45770), (157, 49298, 49466), (163, 53138, 53306), (167, 55778, 55946)]

def row169_layer000_block000 : List ColouredInterval :=
  [(2, 28672, 28840), (2, 28672, 28840), (2, 32768, 32936), (2, 36864, 37032), (2, 40960, 41128), (2, 45056, 45224), (2, 49152, 49320), (2, 53248, 53416), (2, 32768, 32936), (2, 40960, 41128), (2, 49152, 49320), (2, 32768, 32936), (2, 49152, 49320), (2, 32768, 32936), (3, 28431, 28599), (3, 30618, 30786)]

def row169_layer000_block001 : List ColouredInterval :=
  [(3, 32805, 32973), (3, 39366, 39534), (3, 45927, 46095), (3, 52488, 52656), (3, 39366, 39534), (5, 31250, 31418), (5, 34375, 34543), (5, 37500, 37668), (5, 40625, 40793), (5, 43750, 43918), (5, 31250, 31418), (5, 46875, 47043), (7, 28812, 28980), (7, 31213, 31381), (7, 33614, 33782), (7, 33614, 33782)]

def row169_layer000_block002 : List ColouredInterval :=
  [(7, 50421, 50589), (11, 29282, 29450), (11, 43923, 44091), (17, 29478, 29646), (17, 34391, 34559), (17, 39304, 39472), (17, 44217, 44385), (17, 49130, 49298), (17, 54043, 54211), (19, 34295, 34463), (19, 41154, 41322), (19, 48013, 48181), (19, 54872, 55040), (23, 36501, 36669), (23, 48668, 48836), (29, 48778, 48946)]

def row169_layer000_block003 : List ColouredInterval :=
  [(31, 29791, 29959), (37, 50653, 50821), (47, 28717, 28885), (47, 30926, 31094), (53, 30899, 31067), (53, 33708, 33876), (53, 36517, 36685), (53, 39326, 39494), (59, 31329, 31497), (59, 34810, 34978), (59, 38291, 38459), (59, 41772, 41940), (59, 45253, 45421), (59, 48734, 48902), (61, 29768, 29936), (61, 33489, 33657)]

def row169_layer000_block004 : List ColouredInterval :=
  [(61, 37210, 37378), (61, 40931, 41099), (61, 44652, 44820), (61, 48373, 48541), (61, 52094, 52262), (67, 31423, 31591), (67, 35912, 36080), (67, 40401, 40569), (67, 44890, 45058), (67, 49379, 49547), (67, 53868, 54036), (71, 30246, 30414), (71, 35287, 35455), (71, 40328, 40496), (71, 45369, 45537), (71, 50410, 50578)]

def row169_layer000_block005 : List ColouredInterval :=
  [(71, 55451, 55619), (73, 31974, 32142), (73, 37303, 37471), (73, 42632, 42800), (73, 47961, 48129), (73, 53290, 53458), (79, 31205, 31373), (79, 37446, 37614), (79, 43687, 43855), (79, 49928, 50096), (79, 56169, 56337), (83, 34445, 34613), (83, 41334, 41502), (83, 48223, 48391), (83, 55112, 55280), (89, 31684, 31852)]

def row169_layer000_block006 : List ColouredInterval :=
  [(89, 39605, 39773), (89, 47526, 47694), (89, 55447, 55615), (97, 28392, 28395), (97, 37636, 37804), (97, 47045, 47213), (97, 56454, 56622), (101, 30603, 30771), (101, 40804, 40972), (101, 51005, 51173), (103, 31827, 31995), (103, 42436, 42604), (103, 53045, 53213), (107, 34347, 34515), (107, 45796, 45964), (109, 35643, 35811)]

def row169_layer000_block007 : List ColouredInterval :=
  [(109, 47524, 47692), (113, 38307, 38475), (113, 51076, 51244), (127, 32258, 32426), (127, 48387, 48555), (131, 34322, 34490), (131, 51483, 51651), (137, 37538, 37706), (137, 56307, 56475), (139, 38642, 38810), (149, 44402, 44570), (151, 45602, 45770), (157, 49298, 49466), (163, 53138, 53306), (167, 55778, 55946)]

def row169_layer000_chunks : List (List ColouredInterval) :=
  [row169_layer000_block000, row169_layer000_block001, row169_layer000_block002, row169_layer000_block003, row169_layer000_block004, row169_layer000_block005, row169_layer000_block006, row169_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_arithmetic : LayerArithmeticValid row169.height { lower := 28392, upper := 56784, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_enumeration :
    activePowerIntervalList 169 14 28392 56784 = row169_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_pairs000 :
    row169_layer000_block000.all (fun I => row169_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_pairs001 :
    row169_layer000_block001.all (fun I => row169_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_pairs002 :
    row169_layer000_block002.all (fun I => row169_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_pairs003 :
    row169_layer000_block003.all (fun I => row169_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_pairs004 :
    row169_layer000_block004.all (fun I => row169_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_pairs005 :
    row169_layer000_block005.all (fun I => row169_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_pairs006 :
    row169_layer000_block006.all (fun I => row169_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_pairs007 :
    row169_layer000_block007.all (fun I => row169_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_chunks_eq : row169_layer000_chunks.flatten = row169_layer000_intervals := by
  rfl

theorem row169_layer000_pairs : pairCoverCheck row169_layer000_intervals row169_bounds = true := by
  apply pairCoverCheck_of_chunks row169_layer000_chunks_eq
  intro block hblock
  simp only [row169_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row169_layer000_pairs000
  · exact row169_layer000_pairs001
  · exact row169_layer000_pairs002
  · exact row169_layer000_pairs003
  · exact row169_layer000_pairs004
  · exact row169_layer000_pairs005
  · exact row169_layer000_pairs006
  · exact row169_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_pairs
