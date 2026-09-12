import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row168_height : HeightCertificateDatum := { i := 168, r := 55, s := 119, n0Power10 := 8 }

def row168_goods : List GoodSegment := [
  { lower := 338, upper := 504, witness := RowWitness.topPrime 337 },
  { lower := 505, upper := 670, witness := RowWitness.topPrime 503 },
  { lower := 671, upper := 828, witness := RowWitness.topPrime 661 },
  { lower := 829, upper := 996, witness := RowWitness.topPrime 829 },
  { lower := 997, upper := 1164, witness := RowWitness.topPrime 997 },
  { lower := 1165, upper := 1330, witness := RowWitness.topPrime 1163 },
  { lower := 1331, upper := 1494, witness := RowWitness.topPrime 1327 },
  { lower := 1495, upper := 1660, witness := RowWitness.topPrime 1493 },
  { lower := 1661, upper := 1824, witness := RowWitness.topPrime 1657 },
  { lower := 1825, upper := 1990, witness := RowWitness.topPrime 1823 },
  { lower := 1991, upper := 2154, witness := RowWitness.topPrime 1987 },
  { lower := 2155, upper := 2320, witness := RowWitness.topPrime 2153 },
  { lower := 2321, upper := 2478, witness := RowWitness.topPrime 2311 },
  { lower := 2479, upper := 2644, witness := RowWitness.topPrime 2477 },
  { lower := 2645, upper := 2800, witness := RowWitness.topPrime 2633 },
  { lower := 2801, upper := 2968, witness := RowWitness.topPrime 2801 },
  { lower := 2969, upper := 3136, witness := RowWitness.topPrime 2969 },
  { lower := 3137, upper := 3304, witness := RowWitness.topPrime 3137 },
  { lower := 3305, upper := 3468, witness := RowWitness.topPrime 3301 },
  { lower := 3469, upper := 3636, witness := RowWitness.topPrime 3469 },
  { lower := 3637, upper := 3804, witness := RowWitness.topPrime 3637 },
  { lower := 3805, upper := 3970, witness := RowWitness.topPrime 3803 },
  { lower := 3971, upper := 4134, witness := RowWitness.topPrime 3967 },
  { lower := 4135, upper := 4300, witness := RowWitness.topPrime 4133 },
  { lower := 4301, upper := 4464, witness := RowWitness.topPrime 4297 },
  { lower := 4465, upper := 4630, witness := RowWitness.topPrime 4463 },
  { lower := 4631, upper := 4788, witness := RowWitness.topPrime 4621 },
  { lower := 4789, upper := 4956, witness := RowWitness.topPrime 4789 },
  { lower := 4957, upper := 5124, witness := RowWitness.topPrime 4957 },
  { lower := 5125, upper := 5286, witness := RowWitness.topPrime 5119 },
  { lower := 5287, upper := 5448, witness := RowWitness.topPrime 5281 },
  { lower := 5449, upper := 5616, witness := RowWitness.topPrime 5449 },
  { lower := 5617, upper := 5758, witness := RowWitness.topPrime 5591 },
  { lower := 5759, upper := 5916, witness := RowWitness.topPrime 5749 },
  { lower := 5917, upper := 6070, witness := RowWitness.topPrime 5903 },
  { lower := 6071, upper := 6234, witness := RowWitness.topPrime 6067 },
  { lower := 6235, upper := 6396, witness := RowWitness.topPrime 6229 },
  { lower := 6397, upper := 6564, witness := RowWitness.topPrime 6397 },
  { lower := 6565, upper := 6730, witness := RowWitness.topPrime 6563 },
  { lower := 6731, upper := 6886, witness := RowWitness.topPrime 6719 },
  { lower := 6887, upper := 7050, witness := RowWitness.topPrime 6883 },
  { lower := 7051, upper := 7210, witness := RowWitness.topPrime 7043 },
  { lower := 7211, upper := 7378, witness := RowWitness.topPrime 7211 },
  { lower := 7379, upper := 7536, witness := RowWitness.topPrime 7369 },
  { lower := 7537, upper := 7704, witness := RowWitness.topPrime 7537 },
  { lower := 7705, upper := 7870, witness := RowWitness.topPrime 7703 },
  { lower := 7871, upper := 8034, witness := RowWitness.topPrime 7867 },
  { lower := 8035, upper := 8184, witness := RowWitness.topPrime 8017 },
  { lower := 8185, upper := 8346, witness := RowWitness.topPrime 8179 },
  { lower := 8347, upper := 8496, witness := RowWitness.topPrime 8329 },
  { lower := 8497, upper := 8634, witness := RowWitness.topPrime 8467 },
  { lower := 8635, upper := 8796, witness := RowWitness.topPrime 8629 },
  { lower := 8797, upper := 8950, witness := RowWitness.topPrime 8783 },
  { lower := 8951, upper := 9118, witness := RowWitness.topPrime 8951 },
  { lower := 9119, upper := 9276, witness := RowWitness.topPrime 9109 },
  { lower := 9277, upper := 9444, witness := RowWitness.topPrime 9277 },
  { lower := 9445, upper := 9606, witness := RowWitness.topPrime 9439 },
  { lower := 9607, upper := 9768, witness := RowWitness.topPrime 9601 },
  { lower := 9769, upper := 9936, witness := RowWitness.topPrime 9769 },
  { lower := 9937, upper := 10098, witness := RowWitness.topPrime 9931 },
  { lower := 10099, upper := 10266, witness := RowWitness.topPrime 10099 },
  { lower := 10267, upper := 10434, witness := RowWitness.topPrime 10267 },
  { lower := 10435, upper := 10600, witness := RowWitness.topPrime 10433 },
  { lower := 10601, upper := 10768, witness := RowWitness.topPrime 10601 },
  { lower := 10769, upper := 10920, witness := RowWitness.topPrime 10753 },
  { lower := 10921, upper := 11076, witness := RowWitness.topPrime 10909 },
  { lower := 11077, upper := 11238, witness := RowWitness.topPrime 11071 },
  { lower := 11239, upper := 11406, witness := RowWitness.topPrime 11239 },
  { lower := 11407, upper := 11566, witness := RowWitness.topPrime 11399 },
  { lower := 11567, upper := 11718, witness := RowWitness.topPrime 11551 },
  { lower := 11719, upper := 11886, witness := RowWitness.topPrime 11719 },
  { lower := 11887, upper := 12054, witness := RowWitness.topPrime 11887 },
  { lower := 12055, upper := 12216, witness := RowWitness.topPrime 12049 },
  { lower := 12217, upper := 12378, witness := RowWitness.topPrime 12211 },
  { lower := 12379, upper := 12546, witness := RowWitness.topPrime 12379 },
  { lower := 12547, upper := 12714, witness := RowWitness.topPrime 12547 },
  { lower := 12715, upper := 12880, witness := RowWitness.topPrime 12713 },
  { lower := 12881, upper := 13020, witness := RowWitness.topPrime 12853 },
  { lower := 13021, upper := 13176, witness := RowWitness.topPrime 13009 },
  { lower := 13177, upper := 13344, witness := RowWitness.topPrime 13177 },
  { lower := 13345, upper := 13506, witness := RowWitness.topPrime 13339 },
  { lower := 13507, upper := 13666, witness := RowWitness.topPrime 13499 },
  { lower := 13667, upper := 13816, witness := RowWitness.topPrime 13649 },
  { lower := 13817, upper := 13974, witness := RowWitness.topPrime 13807 },
  { lower := 13975, upper := 14134, witness := RowWitness.topPrime 13967 },
  { lower := 14135, upper := 14274, witness := RowWitness.topPrime 14107 },
  { lower := 14275, upper := 14418, witness := RowWitness.topPrime 14251 },
  { lower := 14419, upper := 14586, witness := RowWitness.topPrime 14419 },
  { lower := 14587, upper := 14730, witness := RowWitness.topPrime 14563 },
  { lower := 14731, upper := 14898, witness := RowWitness.topPrime 14731 },
  { lower := 14899, upper := 15064, witness := RowWitness.topPrime 14897 },
  { lower := 15065, upper := 15228, witness := RowWitness.topPrime 15061 },
  { lower := 15229, upper := 15394, witness := RowWitness.topPrime 15227 },
  { lower := 15395, upper := 15558, witness := RowWitness.topPrime 15391 },
  { lower := 15559, upper := 15726, witness := RowWitness.topPrime 15559 },
  { lower := 15727, upper := 15894, witness := RowWitness.topPrime 15727 },
  { lower := 15895, upper := 16056, witness := RowWitness.topPrime 15889 },
  { lower := 16057, upper := 16224, witness := RowWitness.topPrime 16057 },
  { lower := 16225, upper := 16390, witness := RowWitness.topPrime 16223 },
  { lower := 16391, upper := 16548, witness := RowWitness.topPrime 16381 },
  { lower := 16549, upper := 16714, witness := RowWitness.topPrime 16547 },
  { lower := 16715, upper := 16870, witness := RowWitness.topPrime 16703 },
  { lower := 16871, upper := 17038, witness := RowWitness.topPrime 16871 },
  { lower := 17039, upper := 17200, witness := RowWitness.topPrime 17033 },
  { lower := 17201, upper := 17358, witness := RowWitness.topPrime 17191 },
  { lower := 17359, upper := 17526, witness := RowWitness.topPrime 17359 },
  { lower := 17527, upper := 17686, witness := RowWitness.topPrime 17519 },
  { lower := 17687, upper := 17850, witness := RowWitness.topPrime 17683 },
  { lower := 17851, upper := 18018, witness := RowWitness.topPrime 17851 },
  { lower := 18019, upper := 18180, witness := RowWitness.topPrime 18013 },
  { lower := 18181, upper := 18348, witness := RowWitness.topPrime 18181 },
  { lower := 18349, upper := 18508, witness := RowWitness.topPrime 18341 },
  { lower := 18509, upper := 18670, witness := RowWitness.topPrime 18503 },
  { lower := 18671, upper := 18838, witness := RowWitness.topPrime 18671 },
  { lower := 18839, upper := 19006, witness := RowWitness.topPrime 18839 },
  { lower := 19007, upper := 19168, witness := RowWitness.topPrime 19001 },
  { lower := 19169, upper := 19330, witness := RowWitness.topPrime 19163 },
  { lower := 19331, upper := 19486, witness := RowWitness.topPrime 19319 },
  { lower := 19487, upper := 19650, witness := RowWitness.topPrime 19483 },
  { lower := 19651, upper := 19776, witness := RowWitness.topPrime 19609 },
  { lower := 19777, upper := 19944, witness := RowWitness.topPrime 19777 },
  { lower := 19945, upper := 20104, witness := RowWitness.topPrime 19937 },
  { lower := 20105, upper := 20268, witness := RowWitness.topPrime 20101 },
  { lower := 20269, upper := 20436, witness := RowWitness.topPrime 20269 },
  { lower := 20437, upper := 20598, witness := RowWitness.topPrime 20431 },
  { lower := 20599, upper := 20766, witness := RowWitness.topPrime 20599 },
  { lower := 20767, upper := 20926, witness := RowWitness.topPrime 20759 },
  { lower := 20927, upper := 21088, witness := RowWitness.topPrime 20921 },
  { lower := 21089, upper := 21256, witness := RowWitness.topPrime 21089 },
  { lower := 21257, upper := 21414, witness := RowWitness.topPrime 21247 },
  { lower := 21415, upper := 21574, witness := RowWitness.topPrime 21407 },
  { lower := 21575, upper := 21736, witness := RowWitness.topPrime 21569 },
  { lower := 21737, upper := 21904, witness := RowWitness.topPrime 21737 },
  { lower := 21905, upper := 22060, witness := RowWitness.topPrime 21893 },
  { lower := 22061, upper := 22218, witness := RowWitness.topPrime 22051 },
  { lower := 22219, upper := 22360, witness := RowWitness.topPrime 22193 },
  { lower := 22361, upper := 22516, witness := RowWitness.topPrime 22349 },
  { lower := 22517, upper := 22678, witness := RowWitness.topPrime 22511 },
  { lower := 22679, upper := 22846, witness := RowWitness.topPrime 22679 },
  { lower := 22847, upper := 22984, witness := RowWitness.topPrime 22817 },
  { lower := 22985, upper := 23140, witness := RowWitness.topPrime 22973 },
  { lower := 23141, upper := 23298, witness := RowWitness.topPrime 23131 },
  { lower := 23299, upper := 23464, witness := RowWitness.topPrime 23297 },
  { lower := 23465, upper := 23626, witness := RowWitness.topPrime 23459 },
  { lower := 23627, upper := 23794, witness := RowWitness.topPrime 23627 },
  { lower := 23795, upper := 23956, witness := RowWitness.topPrime 23789 },
  { lower := 23957, upper := 24124, witness := RowWitness.topPrime 23957 },
  { lower := 24125, upper := 24288, witness := RowWitness.topPrime 24121 },
  { lower := 24289, upper := 24448, witness := RowWitness.topPrime 24281 },
  { lower := 24449, upper := 24610, witness := RowWitness.topPrime 24443 },
  { lower := 24611, upper := 24778, witness := RowWitness.topPrime 24611 },
  { lower := 24779, upper := 24934, witness := RowWitness.topPrime 24767 },
  { lower := 24935, upper := 25090, witness := RowWitness.topPrime 24923 },
  { lower := 25091, upper := 25254, witness := RowWitness.topPrime 25087 },
  { lower := 25255, upper := 25420, witness := RowWitness.topPrime 25253 },
  { lower := 25421, upper := 25578, witness := RowWitness.topPrime 25411 },
  { lower := 25579, upper := 25746, witness := RowWitness.topPrime 25579 },
  { lower := 25747, upper := 25914, witness := RowWitness.topPrime 25747 },
  { lower := 25915, upper := 26080, witness := RowWitness.topPrime 25913 },
  { lower := 26081, upper := 26220, witness := RowWitness.topPrime 26053 },
  { lower := 26221, upper := 26376, witness := RowWitness.topPrime 26209 },
  { lower := 26377, upper := 26538, witness := RowWitness.topPrime 26371 },
  { lower := 26539, upper := 26706, witness := RowWitness.topPrime 26539 },
  { lower := 26707, upper := 26868, witness := RowWitness.topPrime 26701 },
  { lower := 26869, upper := 27030, witness := RowWitness.topPrime 26863 },
  { lower := 27031, upper := 27198, witness := RowWitness.topPrime 27031 },
  { lower := 27199, upper := 27364, witness := RowWitness.topPrime 27197 },
  { lower := 27365, upper := 27528, witness := RowWitness.topPrime 27361 },
  { lower := 27529, upper := 27696, witness := RowWitness.topPrime 27529 },
  { lower := 27697, upper := 27864, witness := RowWitness.topPrime 27697 },
  { lower := 27865, upper := 28018, witness := RowWitness.topPrime 27851 },
  { lower := 28019, upper := 28055, witness := RowWitness.topPrime 28019 },
  { lower := 28125, upper := 28290, witness := RowWitness.topPrime 28123 },
  { lower := 28291, upper := 28292, witness := RowWitness.topPrime 28289 },
  { lower := 28717, upper := 28728, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29935, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30770, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 31060, witness := RowWitness.topPrime 30893 },
  { lower := 31061, upper := 31066, witness := RowWitness.topPrime 31051 },
  { lower := 31250, upper := 31416, witness := RowWitness.topPrime 31249 },
  { lower := 31417, upper := 31417, witness := RowWitness.topPrime 31397 },
  { lower := 31423, upper := 31496, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31851, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31994, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32935, witness := RowWitness.topPrime 32803 },
  { lower := 32955, upper := 32972, witness := RowWitness.topPrime 32941 },
  { lower := 33614, upper := 33656, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33781, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34486, witness := RowWitness.topPrime 34319 },
  { lower := 34487, upper := 34558, witness := RowWitness.topPrime 34487 },
  { lower := 36517, upper := 36664, witness := RowWitness.topPrime 36497 },
  { lower := 36665, upper := 36668, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37377, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37470, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37660, witness := RowWitness.topPrime 37493 },
  { lower := 37661, upper := 37705, witness := RowWitness.topPrime 37657 },
  { lower := 38307, upper := 38458, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39490, witness := RowWitness.topPrime 39323 },
  { lower := 39491, upper := 39493, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40495, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40971, witness := RowWitness.topPrime 40927 },
  { lower := 43750, upper := 43854, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45420, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47688, witness := RowWitness.topPrime 47521 },
  { lower := 47689, upper := 47691, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48128, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48538, witness := RowWitness.topPrime 48371 },
  { lower := 48539, upper := 48540, witness := RowWitness.topPrime 48539 },
  { lower := 48734, upper := 48900, witness := RowWitness.topPrime 48733 },
  { lower := 48901, upper := 48901, witness := RowWitness.topPrime 48889 },
  { lower := 49379, upper := 49465, witness := RowWitness.topPrime 49369 },
  { lower := 51076, upper := 51172, witness := RowWitness.topPrime 51071 },
  { lower := 52215, upper := 52261, witness := RowWitness.topPrime 52201 },
  { lower := 53138, upper := 53212, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53305, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55608, witness := RowWitness.topPrime 55441 },
  { lower := 55609, upper := 55614, witness := RowWitness.topPrime 55609 },
  { lower := 55815, upper := 55945, witness := RowWitness.topPrime 55813 },
  { lower := 56307, upper := 56336, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56474, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57289, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58731, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62577, witness := RowWitness.topPrime 62497 },
  { lower := 68644, upper := 68806, witness := RowWitness.topPrime 68639 },
  { lower := 68807, upper := 68818, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69057, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71454, witness := RowWitness.topPrime 71287 },
  { lower := 71455, upper := 71456, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73169, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73334, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83688, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85850, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89540, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93917, witness := RowWitness.topPrime 93827 },
  { lower := 102152, upper := 102177, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103133, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109542, witness := RowWitness.topPrime 109481 },
  { lower := 148955, upper := 149044, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154616, witness := RowWitness.topPrime 154543 },
  { lower := 195223, upper := 195279, witness := RowWitness.topPrime 195203 },
  { lower := 199927, upper := 199976, witness := RowWitness.topPrime 199921 }
]

def row168_layers : List CoverLayer := [
  { lower := 28056, upper := 56112, M := 15 },
  { lower := 56112, upper := 112224, M := 11 },
  { lower := 112224, upper := 224448, M := 9 },
  { lower := 224448, upper := 448896, M := 6 },
  { lower := 448896, upper := 897792, M := 5 },
  { lower := 897792, upper := 1795584, M := 4 },
  { lower := 1795584, upper := 3591168, M := 3 },
  { lower := 3591168, upper := 7182336, M := 2 },
  { lower := 7182336, upper := 14364672, M := 2 },
  { lower := 14364672, upper := 28729344, M := 1 },
  { lower := 28729344, upper := 57458688, M := 1 },
  { lower := 57458688, upper := 100000000, M := 1 }
]

def row168 : FiniteCoverRow := {
  height := row168_height,
  goods := row168_goods,
  layers := row168_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good000_checked :
    goodSegmentCheck 168 55 119
      { lower := 338, upper := 504, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good001_checked :
    goodSegmentCheck 168 55 119
      { lower := 505, upper := 670, witness := RowWitness.topPrime 503 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good002_checked :
    goodSegmentCheck 168 55 119
      { lower := 671, upper := 828, witness := RowWitness.topPrime 661 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good003_checked :
    goodSegmentCheck 168 55 119
      { lower := 829, upper := 996, witness := RowWitness.topPrime 829 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good004_checked :
    goodSegmentCheck 168 55 119
      { lower := 997, upper := 1164, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good005_checked :
    goodSegmentCheck 168 55 119
      { lower := 1165, upper := 1330, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good006_checked :
    goodSegmentCheck 168 55 119
      { lower := 1331, upper := 1494, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good007_checked :
    goodSegmentCheck 168 55 119
      { lower := 1495, upper := 1660, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good008_checked :
    goodSegmentCheck 168 55 119
      { lower := 1661, upper := 1824, witness := RowWitness.topPrime 1657 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good009_checked :
    goodSegmentCheck 168 55 119
      { lower := 1825, upper := 1990, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good010_checked :
    goodSegmentCheck 168 55 119
      { lower := 1991, upper := 2154, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good011_checked :
    goodSegmentCheck 168 55 119
      { lower := 2155, upper := 2320, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good012_checked :
    goodSegmentCheck 168 55 119
      { lower := 2321, upper := 2478, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good013_checked :
    goodSegmentCheck 168 55 119
      { lower := 2479, upper := 2644, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good014_checked :
    goodSegmentCheck 168 55 119
      { lower := 2645, upper := 2800, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good015_checked :
    goodSegmentCheck 168 55 119
      { lower := 2801, upper := 2968, witness := RowWitness.topPrime 2801 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good016_checked :
    goodSegmentCheck 168 55 119
      { lower := 2969, upper := 3136, witness := RowWitness.topPrime 2969 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good017_checked :
    goodSegmentCheck 168 55 119
      { lower := 3137, upper := 3304, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good018_checked :
    goodSegmentCheck 168 55 119
      { lower := 3305, upper := 3468, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good019_checked :
    goodSegmentCheck 168 55 119
      { lower := 3469, upper := 3636, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good020_checked :
    goodSegmentCheck 168 55 119
      { lower := 3637, upper := 3804, witness := RowWitness.topPrime 3637 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good021_checked :
    goodSegmentCheck 168 55 119
      { lower := 3805, upper := 3970, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good022_checked :
    goodSegmentCheck 168 55 119
      { lower := 3971, upper := 4134, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good023_checked :
    goodSegmentCheck 168 55 119
      { lower := 4135, upper := 4300, witness := RowWitness.topPrime 4133 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good024_checked :
    goodSegmentCheck 168 55 119
      { lower := 4301, upper := 4464, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good025_checked :
    goodSegmentCheck 168 55 119
      { lower := 4465, upper := 4630, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good026_checked :
    goodSegmentCheck 168 55 119
      { lower := 4631, upper := 4788, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good027_checked :
    goodSegmentCheck 168 55 119
      { lower := 4789, upper := 4956, witness := RowWitness.topPrime 4789 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good028_checked :
    goodSegmentCheck 168 55 119
      { lower := 4957, upper := 5124, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good029_checked :
    goodSegmentCheck 168 55 119
      { lower := 5125, upper := 5286, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good030_checked :
    goodSegmentCheck 168 55 119
      { lower := 5287, upper := 5448, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good031_checked :
    goodSegmentCheck 168 55 119
      { lower := 5449, upper := 5616, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good032_checked :
    goodSegmentCheck 168 55 119
      { lower := 5617, upper := 5758, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good033_checked :
    goodSegmentCheck 168 55 119
      { lower := 5759, upper := 5916, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good034_checked :
    goodSegmentCheck 168 55 119
      { lower := 5917, upper := 6070, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good035_checked :
    goodSegmentCheck 168 55 119
      { lower := 6071, upper := 6234, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good036_checked :
    goodSegmentCheck 168 55 119
      { lower := 6235, upper := 6396, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good037_checked :
    goodSegmentCheck 168 55 119
      { lower := 6397, upper := 6564, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good038_checked :
    goodSegmentCheck 168 55 119
      { lower := 6565, upper := 6730, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good039_checked :
    goodSegmentCheck 168 55 119
      { lower := 6731, upper := 6886, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good040_checked :
    goodSegmentCheck 168 55 119
      { lower := 6887, upper := 7050, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good041_checked :
    goodSegmentCheck 168 55 119
      { lower := 7051, upper := 7210, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good042_checked :
    goodSegmentCheck 168 55 119
      { lower := 7211, upper := 7378, witness := RowWitness.topPrime 7211 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good043_checked :
    goodSegmentCheck 168 55 119
      { lower := 7379, upper := 7536, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good044_checked :
    goodSegmentCheck 168 55 119
      { lower := 7537, upper := 7704, witness := RowWitness.topPrime 7537 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good045_checked :
    goodSegmentCheck 168 55 119
      { lower := 7705, upper := 7870, witness := RowWitness.topPrime 7703 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good046_checked :
    goodSegmentCheck 168 55 119
      { lower := 7871, upper := 8034, witness := RowWitness.topPrime 7867 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good047_checked :
    goodSegmentCheck 168 55 119
      { lower := 8035, upper := 8184, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good048_checked :
    goodSegmentCheck 168 55 119
      { lower := 8185, upper := 8346, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good049_checked :
    goodSegmentCheck 168 55 119
      { lower := 8347, upper := 8496, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good050_checked :
    goodSegmentCheck 168 55 119
      { lower := 8497, upper := 8634, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good051_checked :
    goodSegmentCheck 168 55 119
      { lower := 8635, upper := 8796, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good052_checked :
    goodSegmentCheck 168 55 119
      { lower := 8797, upper := 8950, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good053_checked :
    goodSegmentCheck 168 55 119
      { lower := 8951, upper := 9118, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good054_checked :
    goodSegmentCheck 168 55 119
      { lower := 9119, upper := 9276, witness := RowWitness.topPrime 9109 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good055_checked :
    goodSegmentCheck 168 55 119
      { lower := 9277, upper := 9444, witness := RowWitness.topPrime 9277 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good056_checked :
    goodSegmentCheck 168 55 119
      { lower := 9445, upper := 9606, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good057_checked :
    goodSegmentCheck 168 55 119
      { lower := 9607, upper := 9768, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good058_checked :
    goodSegmentCheck 168 55 119
      { lower := 9769, upper := 9936, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good059_checked :
    goodSegmentCheck 168 55 119
      { lower := 9937, upper := 10098, witness := RowWitness.topPrime 9931 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good060_checked :
    goodSegmentCheck 168 55 119
      { lower := 10099, upper := 10266, witness := RowWitness.topPrime 10099 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good061_checked :
    goodSegmentCheck 168 55 119
      { lower := 10267, upper := 10434, witness := RowWitness.topPrime 10267 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good062_checked :
    goodSegmentCheck 168 55 119
      { lower := 10435, upper := 10600, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good063_checked :
    goodSegmentCheck 168 55 119
      { lower := 10601, upper := 10768, witness := RowWitness.topPrime 10601 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good064_checked :
    goodSegmentCheck 168 55 119
      { lower := 10769, upper := 10920, witness := RowWitness.topPrime 10753 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good065_checked :
    goodSegmentCheck 168 55 119
      { lower := 10921, upper := 11076, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good066_checked :
    goodSegmentCheck 168 55 119
      { lower := 11077, upper := 11238, witness := RowWitness.topPrime 11071 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good067_checked :
    goodSegmentCheck 168 55 119
      { lower := 11239, upper := 11406, witness := RowWitness.topPrime 11239 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good068_checked :
    goodSegmentCheck 168 55 119
      { lower := 11407, upper := 11566, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good069_checked :
    goodSegmentCheck 168 55 119
      { lower := 11567, upper := 11718, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good070_checked :
    goodSegmentCheck 168 55 119
      { lower := 11719, upper := 11886, witness := RowWitness.topPrime 11719 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good071_checked :
    goodSegmentCheck 168 55 119
      { lower := 11887, upper := 12054, witness := RowWitness.topPrime 11887 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good072_checked :
    goodSegmentCheck 168 55 119
      { lower := 12055, upper := 12216, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good073_checked :
    goodSegmentCheck 168 55 119
      { lower := 12217, upper := 12378, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good074_checked :
    goodSegmentCheck 168 55 119
      { lower := 12379, upper := 12546, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good075_checked :
    goodSegmentCheck 168 55 119
      { lower := 12547, upper := 12714, witness := RowWitness.topPrime 12547 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good076_checked :
    goodSegmentCheck 168 55 119
      { lower := 12715, upper := 12880, witness := RowWitness.topPrime 12713 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good077_checked :
    goodSegmentCheck 168 55 119
      { lower := 12881, upper := 13020, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good078_checked :
    goodSegmentCheck 168 55 119
      { lower := 13021, upper := 13176, witness := RowWitness.topPrime 13009 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good079_checked :
    goodSegmentCheck 168 55 119
      { lower := 13177, upper := 13344, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good080_checked :
    goodSegmentCheck 168 55 119
      { lower := 13345, upper := 13506, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good081_checked :
    goodSegmentCheck 168 55 119
      { lower := 13507, upper := 13666, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good082_checked :
    goodSegmentCheck 168 55 119
      { lower := 13667, upper := 13816, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good083_checked :
    goodSegmentCheck 168 55 119
      { lower := 13817, upper := 13974, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good084_checked :
    goodSegmentCheck 168 55 119
      { lower := 13975, upper := 14134, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good085_checked :
    goodSegmentCheck 168 55 119
      { lower := 14135, upper := 14274, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good086_checked :
    goodSegmentCheck 168 55 119
      { lower := 14275, upper := 14418, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good087_checked :
    goodSegmentCheck 168 55 119
      { lower := 14419, upper := 14586, witness := RowWitness.topPrime 14419 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good088_checked :
    goodSegmentCheck 168 55 119
      { lower := 14587, upper := 14730, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good089_checked :
    goodSegmentCheck 168 55 119
      { lower := 14731, upper := 14898, witness := RowWitness.topPrime 14731 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good090_checked :
    goodSegmentCheck 168 55 119
      { lower := 14899, upper := 15064, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good091_checked :
    goodSegmentCheck 168 55 119
      { lower := 15065, upper := 15228, witness := RowWitness.topPrime 15061 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good092_checked :
    goodSegmentCheck 168 55 119
      { lower := 15229, upper := 15394, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good093_checked :
    goodSegmentCheck 168 55 119
      { lower := 15395, upper := 15558, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good094_checked :
    goodSegmentCheck 168 55 119
      { lower := 15559, upper := 15726, witness := RowWitness.topPrime 15559 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good095_checked :
    goodSegmentCheck 168 55 119
      { lower := 15727, upper := 15894, witness := RowWitness.topPrime 15727 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good096_checked :
    goodSegmentCheck 168 55 119
      { lower := 15895, upper := 16056, witness := RowWitness.topPrime 15889 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good097_checked :
    goodSegmentCheck 168 55 119
      { lower := 16057, upper := 16224, witness := RowWitness.topPrime 16057 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good098_checked :
    goodSegmentCheck 168 55 119
      { lower := 16225, upper := 16390, witness := RowWitness.topPrime 16223 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good099_checked :
    goodSegmentCheck 168 55 119
      { lower := 16391, upper := 16548, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good100_checked :
    goodSegmentCheck 168 55 119
      { lower := 16549, upper := 16714, witness := RowWitness.topPrime 16547 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good101_checked :
    goodSegmentCheck 168 55 119
      { lower := 16715, upper := 16870, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good102_checked :
    goodSegmentCheck 168 55 119
      { lower := 16871, upper := 17038, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good103_checked :
    goodSegmentCheck 168 55 119
      { lower := 17039, upper := 17200, witness := RowWitness.topPrime 17033 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good104_checked :
    goodSegmentCheck 168 55 119
      { lower := 17201, upper := 17358, witness := RowWitness.topPrime 17191 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good105_checked :
    goodSegmentCheck 168 55 119
      { lower := 17359, upper := 17526, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good106_checked :
    goodSegmentCheck 168 55 119
      { lower := 17527, upper := 17686, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good107_checked :
    goodSegmentCheck 168 55 119
      { lower := 17687, upper := 17850, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good108_checked :
    goodSegmentCheck 168 55 119
      { lower := 17851, upper := 18018, witness := RowWitness.topPrime 17851 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good109_checked :
    goodSegmentCheck 168 55 119
      { lower := 18019, upper := 18180, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good110_checked :
    goodSegmentCheck 168 55 119
      { lower := 18181, upper := 18348, witness := RowWitness.topPrime 18181 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good111_checked :
    goodSegmentCheck 168 55 119
      { lower := 18349, upper := 18508, witness := RowWitness.topPrime 18341 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good112_checked :
    goodSegmentCheck 168 55 119
      { lower := 18509, upper := 18670, witness := RowWitness.topPrime 18503 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good113_checked :
    goodSegmentCheck 168 55 119
      { lower := 18671, upper := 18838, witness := RowWitness.topPrime 18671 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good114_checked :
    goodSegmentCheck 168 55 119
      { lower := 18839, upper := 19006, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good115_checked :
    goodSegmentCheck 168 55 119
      { lower := 19007, upper := 19168, witness := RowWitness.topPrime 19001 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good116_checked :
    goodSegmentCheck 168 55 119
      { lower := 19169, upper := 19330, witness := RowWitness.topPrime 19163 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good117_checked :
    goodSegmentCheck 168 55 119
      { lower := 19331, upper := 19486, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good118_checked :
    goodSegmentCheck 168 55 119
      { lower := 19487, upper := 19650, witness := RowWitness.topPrime 19483 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good119_checked :
    goodSegmentCheck 168 55 119
      { lower := 19651, upper := 19776, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good120_checked :
    goodSegmentCheck 168 55 119
      { lower := 19777, upper := 19944, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good121_checked :
    goodSegmentCheck 168 55 119
      { lower := 19945, upper := 20104, witness := RowWitness.topPrime 19937 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good122_checked :
    goodSegmentCheck 168 55 119
      { lower := 20105, upper := 20268, witness := RowWitness.topPrime 20101 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good123_checked :
    goodSegmentCheck 168 55 119
      { lower := 20269, upper := 20436, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good124_checked :
    goodSegmentCheck 168 55 119
      { lower := 20437, upper := 20598, witness := RowWitness.topPrime 20431 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good125_checked :
    goodSegmentCheck 168 55 119
      { lower := 20599, upper := 20766, witness := RowWitness.topPrime 20599 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good126_checked :
    goodSegmentCheck 168 55 119
      { lower := 20767, upper := 20926, witness := RowWitness.topPrime 20759 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good127_checked :
    goodSegmentCheck 168 55 119
      { lower := 20927, upper := 21088, witness := RowWitness.topPrime 20921 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good128_checked :
    goodSegmentCheck 168 55 119
      { lower := 21089, upper := 21256, witness := RowWitness.topPrime 21089 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good129_checked :
    goodSegmentCheck 168 55 119
      { lower := 21257, upper := 21414, witness := RowWitness.topPrime 21247 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good130_checked :
    goodSegmentCheck 168 55 119
      { lower := 21415, upper := 21574, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good131_checked :
    goodSegmentCheck 168 55 119
      { lower := 21575, upper := 21736, witness := RowWitness.topPrime 21569 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good132_checked :
    goodSegmentCheck 168 55 119
      { lower := 21737, upper := 21904, witness := RowWitness.topPrime 21737 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good133_checked :
    goodSegmentCheck 168 55 119
      { lower := 21905, upper := 22060, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good134_checked :
    goodSegmentCheck 168 55 119
      { lower := 22061, upper := 22218, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good135_checked :
    goodSegmentCheck 168 55 119
      { lower := 22219, upper := 22360, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good136_checked :
    goodSegmentCheck 168 55 119
      { lower := 22361, upper := 22516, witness := RowWitness.topPrime 22349 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good137_checked :
    goodSegmentCheck 168 55 119
      { lower := 22517, upper := 22678, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good138_checked :
    goodSegmentCheck 168 55 119
      { lower := 22679, upper := 22846, witness := RowWitness.topPrime 22679 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good139_checked :
    goodSegmentCheck 168 55 119
      { lower := 22847, upper := 22984, witness := RowWitness.topPrime 22817 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good140_checked :
    goodSegmentCheck 168 55 119
      { lower := 22985, upper := 23140, witness := RowWitness.topPrime 22973 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good141_checked :
    goodSegmentCheck 168 55 119
      { lower := 23141, upper := 23298, witness := RowWitness.topPrime 23131 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good142_checked :
    goodSegmentCheck 168 55 119
      { lower := 23299, upper := 23464, witness := RowWitness.topPrime 23297 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good143_checked :
    goodSegmentCheck 168 55 119
      { lower := 23465, upper := 23626, witness := RowWitness.topPrime 23459 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good144_checked :
    goodSegmentCheck 168 55 119
      { lower := 23627, upper := 23794, witness := RowWitness.topPrime 23627 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good145_checked :
    goodSegmentCheck 168 55 119
      { lower := 23795, upper := 23956, witness := RowWitness.topPrime 23789 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good146_checked :
    goodSegmentCheck 168 55 119
      { lower := 23957, upper := 24124, witness := RowWitness.topPrime 23957 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good147_checked :
    goodSegmentCheck 168 55 119
      { lower := 24125, upper := 24288, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good148_checked :
    goodSegmentCheck 168 55 119
      { lower := 24289, upper := 24448, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good149_checked :
    goodSegmentCheck 168 55 119
      { lower := 24449, upper := 24610, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good150_checked :
    goodSegmentCheck 168 55 119
      { lower := 24611, upper := 24778, witness := RowWitness.topPrime 24611 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good151_checked :
    goodSegmentCheck 168 55 119
      { lower := 24779, upper := 24934, witness := RowWitness.topPrime 24767 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good152_checked :
    goodSegmentCheck 168 55 119
      { lower := 24935, upper := 25090, witness := RowWitness.topPrime 24923 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good153_checked :
    goodSegmentCheck 168 55 119
      { lower := 25091, upper := 25254, witness := RowWitness.topPrime 25087 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good154_checked :
    goodSegmentCheck 168 55 119
      { lower := 25255, upper := 25420, witness := RowWitness.topPrime 25253 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good155_checked :
    goodSegmentCheck 168 55 119
      { lower := 25421, upper := 25578, witness := RowWitness.topPrime 25411 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good156_checked :
    goodSegmentCheck 168 55 119
      { lower := 25579, upper := 25746, witness := RowWitness.topPrime 25579 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good157_checked :
    goodSegmentCheck 168 55 119
      { lower := 25747, upper := 25914, witness := RowWitness.topPrime 25747 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good158_checked :
    goodSegmentCheck 168 55 119
      { lower := 25915, upper := 26080, witness := RowWitness.topPrime 25913 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good159_checked :
    goodSegmentCheck 168 55 119
      { lower := 26081, upper := 26220, witness := RowWitness.topPrime 26053 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good160_checked :
    goodSegmentCheck 168 55 119
      { lower := 26221, upper := 26376, witness := RowWitness.topPrime 26209 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good161_checked :
    goodSegmentCheck 168 55 119
      { lower := 26377, upper := 26538, witness := RowWitness.topPrime 26371 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good162_checked :
    goodSegmentCheck 168 55 119
      { lower := 26539, upper := 26706, witness := RowWitness.topPrime 26539 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good163_checked :
    goodSegmentCheck 168 55 119
      { lower := 26707, upper := 26868, witness := RowWitness.topPrime 26701 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good164_checked :
    goodSegmentCheck 168 55 119
      { lower := 26869, upper := 27030, witness := RowWitness.topPrime 26863 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good165_checked :
    goodSegmentCheck 168 55 119
      { lower := 27031, upper := 27198, witness := RowWitness.topPrime 27031 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good166_checked :
    goodSegmentCheck 168 55 119
      { lower := 27199, upper := 27364, witness := RowWitness.topPrime 27197 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good167_checked :
    goodSegmentCheck 168 55 119
      { lower := 27365, upper := 27528, witness := RowWitness.topPrime 27361 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good168_checked :
    goodSegmentCheck 168 55 119
      { lower := 27529, upper := 27696, witness := RowWitness.topPrime 27529 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good169_checked :
    goodSegmentCheck 168 55 119
      { lower := 27697, upper := 27864, witness := RowWitness.topPrime 27697 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good170_checked :
    goodSegmentCheck 168 55 119
      { lower := 27865, upper := 28018, witness := RowWitness.topPrime 27851 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good171_checked :
    goodSegmentCheck 168 55 119
      { lower := 28019, upper := 28055, witness := RowWitness.topPrime 28019 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good172_checked :
    goodSegmentCheck 168 55 119
      { lower := 28125, upper := 28290, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good173_checked :
    goodSegmentCheck 168 55 119
      { lower := 28291, upper := 28292, witness := RowWitness.topPrime 28289 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good174_checked :
    goodSegmentCheck 168 55 119
      { lower := 28717, upper := 28728, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good175_checked :
    goodSegmentCheck 168 55 119
      { lower := 29791, upper := 29935, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good176_checked :
    goodSegmentCheck 168 55 119
      { lower := 30758, upper := 30770, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good177_checked :
    goodSegmentCheck 168 55 119
      { lower := 30899, upper := 31060, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good178_checked :
    goodSegmentCheck 168 55 119
      { lower := 31061, upper := 31066, witness := RowWitness.topPrime 31051 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good179_checked :
    goodSegmentCheck 168 55 119
      { lower := 31250, upper := 31416, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good180_checked :
    goodSegmentCheck 168 55 119
      { lower := 31417, upper := 31417, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good181_checked :
    goodSegmentCheck 168 55 119
      { lower := 31423, upper := 31496, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good182_checked :
    goodSegmentCheck 168 55 119
      { lower := 31827, upper := 31851, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good183_checked :
    goodSegmentCheck 168 55 119
      { lower := 31974, upper := 31994, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good184_checked :
    goodSegmentCheck 168 55 119
      { lower := 32805, upper := 32935, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good185_checked :
    goodSegmentCheck 168 55 119
      { lower := 32955, upper := 32972, witness := RowWitness.topPrime 32941 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good186_checked :
    goodSegmentCheck 168 55 119
      { lower := 33614, upper := 33656, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good187_checked :
    goodSegmentCheck 168 55 119
      { lower := 33708, upper := 33781, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good188_checked :
    goodSegmentCheck 168 55 119
      { lower := 34322, upper := 34486, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good189_checked :
    goodSegmentCheck 168 55 119
      { lower := 34487, upper := 34558, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good190_checked :
    goodSegmentCheck 168 55 119
      { lower := 36517, upper := 36664, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good191_checked :
    goodSegmentCheck 168 55 119
      { lower := 36665, upper := 36668, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good192_checked :
    goodSegmentCheck 168 55 119
      { lower := 37303, upper := 37377, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good193_checked :
    goodSegmentCheck 168 55 119
      { lower := 37446, upper := 37470, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good194_checked :
    goodSegmentCheck 168 55 119
      { lower := 37500, upper := 37660, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good195_checked :
    goodSegmentCheck 168 55 119
      { lower := 37661, upper := 37705, witness := RowWitness.topPrime 37657 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good196_checked :
    goodSegmentCheck 168 55 119
      { lower := 38307, upper := 38458, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good197_checked :
    goodSegmentCheck 168 55 119
      { lower := 39326, upper := 39490, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good198_checked :
    goodSegmentCheck 168 55 119
      { lower := 39491, upper := 39493, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good199_checked :
    goodSegmentCheck 168 55 119
      { lower := 40401, upper := 40495, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good200_checked :
    goodSegmentCheck 168 55 119
      { lower := 40931, upper := 40971, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good201_checked :
    goodSegmentCheck 168 55 119
      { lower := 43750, upper := 43854, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good202_checked :
    goodSegmentCheck 168 55 119
      { lower := 45369, upper := 45420, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good203_checked :
    goodSegmentCheck 168 55 119
      { lower := 47526, upper := 47688, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good204_checked :
    goodSegmentCheck 168 55 119
      { lower := 47689, upper := 47691, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good205_checked :
    goodSegmentCheck 168 55 119
      { lower := 48013, upper := 48128, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good206_checked :
    goodSegmentCheck 168 55 119
      { lower := 48373, upper := 48538, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good207_checked :
    goodSegmentCheck 168 55 119
      { lower := 48539, upper := 48540, witness := RowWitness.topPrime 48539 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good208_checked :
    goodSegmentCheck 168 55 119
      { lower := 48734, upper := 48900, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good209_checked :
    goodSegmentCheck 168 55 119
      { lower := 48901, upper := 48901, witness := RowWitness.topPrime 48889 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good210_checked :
    goodSegmentCheck 168 55 119
      { lower := 49379, upper := 49465, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good211_checked :
    goodSegmentCheck 168 55 119
      { lower := 51076, upper := 51172, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good212_checked :
    goodSegmentCheck 168 55 119
      { lower := 52215, upper := 52261, witness := RowWitness.topPrime 52201 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good213_checked :
    goodSegmentCheck 168 55 119
      { lower := 53138, upper := 53212, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good214_checked :
    goodSegmentCheck 168 55 119
      { lower := 53290, upper := 53305, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good215_checked :
    goodSegmentCheck 168 55 119
      { lower := 55451, upper := 55608, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good216_checked :
    goodSegmentCheck 168 55 119
      { lower := 55609, upper := 55614, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good217_checked :
    goodSegmentCheck 168 55 119
      { lower := 55815, upper := 55945, witness := RowWitness.topPrime 55813 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good218_checked :
    goodSegmentCheck 168 55 119
      { lower := 56307, upper := 56336, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good219_checked :
    goodSegmentCheck 168 55 119
      { lower := 56454, upper := 56474, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good220_checked :
    goodSegmentCheck 168 55 119
      { lower := 57245, upper := 57289, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good221_checked :
    goodSegmentCheck 168 55 119
      { lower := 58619, upper := 58731, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good222_checked :
    goodSegmentCheck 168 55 119
      { lower := 62500, upper := 62577, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good223_checked :
    goodSegmentCheck 168 55 119
      { lower := 68644, upper := 68806, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good224_checked :
    goodSegmentCheck 168 55 119
      { lower := 68807, upper := 68818, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good225_checked :
    goodSegmentCheck 168 55 119
      { lower := 68921, upper := 69057, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good226_checked :
    goodSegmentCheck 168 55 119
      { lower := 71289, upper := 71454, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good227_checked :
    goodSegmentCheck 168 55 119
      { lower := 71455, upper := 71456, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good228_checked :
    goodSegmentCheck 168 55 119
      { lower := 73167, upper := 73169, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good229_checked :
    goodSegmentCheck 168 55 119
      { lower := 73205, upper := 73334, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good230_checked :
    goodSegmentCheck 168 55 119
      { lower := 83667, upper := 83688, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good231_checked :
    goodSegmentCheck 168 55 119
      { lower := 85805, upper := 85850, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good232_checked :
    goodSegmentCheck 168 55 119
      { lower := 89383, upper := 89540, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good233_checked :
    goodSegmentCheck 168 55 119
      { lower := 93845, upper := 93917, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good234_checked :
    goodSegmentCheck 168 55 119
      { lower := 102152, upper := 102177, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good235_checked :
    goodSegmentCheck 168 55 119
      { lower := 103041, upper := 103133, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good236_checked :
    goodSegmentCheck 168 55 119
      { lower := 109503, upper := 109542, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good237_checked :
    goodSegmentCheck 168 55 119
      { lower := 148955, upper := 149044, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good238_checked :
    goodSegmentCheck 168 55 119
      { lower := 154568, upper := 154616, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row168_good239_checked :
    goodSegmentCheck 168 55 119
      { lower := 195223, upper := 195279, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good240_checked :
    goodSegmentCheck 168 55 119
      { lower := 199927, upper := 199976, witness := RowWitness.topPrime 199921 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good240_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_goods_checked :
    row168.goods.all (goodSegmentCheck row168.height.i row168.height.r row168.height.s) = true := by
  change row168_goods.all (goodSegmentCheck 168 55 119) = true
  simp only [row168_goods, List.all_cons, List.all_nil,
    row168_good000_checked,
    row168_good001_checked,
    row168_good002_checked,
    row168_good003_checked,
    row168_good004_checked,
    row168_good005_checked,
    row168_good006_checked,
    row168_good007_checked,
    row168_good008_checked,
    row168_good009_checked,
    row168_good010_checked,
    row168_good011_checked,
    row168_good012_checked,
    row168_good013_checked,
    row168_good014_checked,
    row168_good015_checked,
    row168_good016_checked,
    row168_good017_checked,
    row168_good018_checked,
    row168_good019_checked,
    row168_good020_checked,
    row168_good021_checked,
    row168_good022_checked,
    row168_good023_checked,
    row168_good024_checked,
    row168_good025_checked,
    row168_good026_checked,
    row168_good027_checked,
    row168_good028_checked,
    row168_good029_checked,
    row168_good030_checked,
    row168_good031_checked,
    row168_good032_checked,
    row168_good033_checked,
    row168_good034_checked,
    row168_good035_checked,
    row168_good036_checked,
    row168_good037_checked,
    row168_good038_checked,
    row168_good039_checked,
    row168_good040_checked,
    row168_good041_checked,
    row168_good042_checked,
    row168_good043_checked,
    row168_good044_checked,
    row168_good045_checked,
    row168_good046_checked,
    row168_good047_checked,
    row168_good048_checked,
    row168_good049_checked,
    row168_good050_checked,
    row168_good051_checked,
    row168_good052_checked,
    row168_good053_checked,
    row168_good054_checked,
    row168_good055_checked,
    row168_good056_checked,
    row168_good057_checked,
    row168_good058_checked,
    row168_good059_checked,
    row168_good060_checked,
    row168_good061_checked,
    row168_good062_checked,
    row168_good063_checked,
    row168_good064_checked,
    row168_good065_checked,
    row168_good066_checked,
    row168_good067_checked,
    row168_good068_checked,
    row168_good069_checked,
    row168_good070_checked,
    row168_good071_checked,
    row168_good072_checked,
    row168_good073_checked,
    row168_good074_checked,
    row168_good075_checked,
    row168_good076_checked,
    row168_good077_checked,
    row168_good078_checked,
    row168_good079_checked,
    row168_good080_checked,
    row168_good081_checked,
    row168_good082_checked,
    row168_good083_checked,
    row168_good084_checked,
    row168_good085_checked,
    row168_good086_checked,
    row168_good087_checked,
    row168_good088_checked,
    row168_good089_checked,
    row168_good090_checked,
    row168_good091_checked,
    row168_good092_checked,
    row168_good093_checked,
    row168_good094_checked,
    row168_good095_checked,
    row168_good096_checked,
    row168_good097_checked,
    row168_good098_checked,
    row168_good099_checked,
    row168_good100_checked,
    row168_good101_checked,
    row168_good102_checked,
    row168_good103_checked,
    row168_good104_checked,
    row168_good105_checked,
    row168_good106_checked,
    row168_good107_checked,
    row168_good108_checked,
    row168_good109_checked,
    row168_good110_checked,
    row168_good111_checked,
    row168_good112_checked,
    row168_good113_checked,
    row168_good114_checked,
    row168_good115_checked,
    row168_good116_checked,
    row168_good117_checked,
    row168_good118_checked,
    row168_good119_checked,
    row168_good120_checked,
    row168_good121_checked,
    row168_good122_checked,
    row168_good123_checked,
    row168_good124_checked,
    row168_good125_checked,
    row168_good126_checked,
    row168_good127_checked,
    row168_good128_checked,
    row168_good129_checked,
    row168_good130_checked,
    row168_good131_checked,
    row168_good132_checked,
    row168_good133_checked,
    row168_good134_checked,
    row168_good135_checked,
    row168_good136_checked,
    row168_good137_checked,
    row168_good138_checked,
    row168_good139_checked,
    row168_good140_checked,
    row168_good141_checked,
    row168_good142_checked,
    row168_good143_checked,
    row168_good144_checked,
    row168_good145_checked,
    row168_good146_checked,
    row168_good147_checked,
    row168_good148_checked,
    row168_good149_checked,
    row168_good150_checked,
    row168_good151_checked,
    row168_good152_checked,
    row168_good153_checked,
    row168_good154_checked,
    row168_good155_checked,
    row168_good156_checked,
    row168_good157_checked,
    row168_good158_checked,
    row168_good159_checked,
    row168_good160_checked,
    row168_good161_checked,
    row168_good162_checked,
    row168_good163_checked,
    row168_good164_checked,
    row168_good165_checked,
    row168_good166_checked,
    row168_good167_checked,
    row168_good168_checked,
    row168_good169_checked,
    row168_good170_checked,
    row168_good171_checked,
    row168_good172_checked,
    row168_good173_checked,
    row168_good174_checked,
    row168_good175_checked,
    row168_good176_checked,
    row168_good177_checked,
    row168_good178_checked,
    row168_good179_checked,
    row168_good180_checked,
    row168_good181_checked,
    row168_good182_checked,
    row168_good183_checked,
    row168_good184_checked,
    row168_good185_checked,
    row168_good186_checked,
    row168_good187_checked,
    row168_good188_checked,
    row168_good189_checked,
    row168_good190_checked,
    row168_good191_checked,
    row168_good192_checked,
    row168_good193_checked,
    row168_good194_checked,
    row168_good195_checked,
    row168_good196_checked,
    row168_good197_checked,
    row168_good198_checked,
    row168_good199_checked,
    row168_good200_checked,
    row168_good201_checked,
    row168_good202_checked,
    row168_good203_checked,
    row168_good204_checked,
    row168_good205_checked,
    row168_good206_checked,
    row168_good207_checked,
    row168_good208_checked,
    row168_good209_checked,
    row168_good210_checked,
    row168_good211_checked,
    row168_good212_checked,
    row168_good213_checked,
    row168_good214_checked,
    row168_good215_checked,
    row168_good216_checked,
    row168_good217_checked,
    row168_good218_checked,
    row168_good219_checked,
    row168_good220_checked,
    row168_good221_checked,
    row168_good222_checked,
    row168_good223_checked,
    row168_good224_checked,
    row168_good225_checked,
    row168_good226_checked,
    row168_good227_checked,
    row168_good228_checked,
    row168_good229_checked,
    row168_good230_checked,
    row168_good231_checked,
    row168_good232_checked,
    row168_good233_checked,
    row168_good234_checked,
    row168_good235_checked,
    row168_good236_checked,
    row168_good237_checked,
    row168_good238_checked,
    row168_good239_checked,
    row168_good240_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_registered :
    decide (row168.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row168_small_checked :
    coverCheck (2 * row168.height.i + 2) (row168.height.i * (row168.height.i - 1) - 1)
      (row168.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row168_layerCover_checked :
    coverCheck (row168.height.i * (row168.height.i - 1)) (row168.height.n0 - 1)
      (row168.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row168_bounds : List NatInterval :=
  [(338, 504), (505, 670), (671, 828), (829, 996), (997, 1164), (1165, 1330), (1331, 1494), (1495, 1660), (1661, 1824), (1825, 1990), (1991, 2154), (2155, 2320), (2321, 2478), (2479, 2644), (2645, 2800), (2801, 2968), (2969, 3136), (3137, 3304), (3305, 3468), (3469, 3636), (3637, 3804), (3805, 3970), (3971, 4134), (4135, 4300), (4301, 4464), (4465, 4630), (4631, 4788), (4789, 4956), (4957, 5124), (5125, 5286), (5287, 5448), (5449, 5616), (5617, 5758), (5759, 5916), (5917, 6070), (6071, 6234), (6235, 6396), (6397, 6564), (6565, 6730), (6731, 6886), (6887, 7050), (7051, 7210), (7211, 7378), (7379, 7536), (7537, 7704), (7705, 7870), (7871, 8034), (8035, 8184), (8185, 8346), (8347, 8496), (8497, 8634), (8635, 8796), (8797, 8950), (8951, 9118), (9119, 9276), (9277, 9444), (9445, 9606), (9607, 9768), (9769, 9936), (9937, 10098), (10099, 10266), (10267, 10434), (10435, 10600), (10601, 10768), (10769, 10920), (10921, 11076), (11077, 11238), (11239, 11406), (11407, 11566), (11567, 11718), (11719, 11886), (11887, 12054), (12055, 12216), (12217, 12378), (12379, 12546), (12547, 12714), (12715, 12880), (12881, 13020), (13021, 13176), (13177, 13344), (13345, 13506), (13507, 13666), (13667, 13816), (13817, 13974), (13975, 14134), (14135, 14274), (14275, 14418), (14419, 14586), (14587, 14730), (14731, 14898), (14899, 15064), (15065, 15228), (15229, 15394), (15395, 15558), (15559, 15726), (15727, 15894), (15895, 16056), (16057, 16224), (16225, 16390), (16391, 16548), (16549, 16714), (16715, 16870), (16871, 17038), (17039, 17200), (17201, 17358), (17359, 17526), (17527, 17686), (17687, 17850), (17851, 18018), (18019, 18180), (18181, 18348), (18349, 18508), (18509, 18670), (18671, 18838), (18839, 19006), (19007, 19168), (19169, 19330), (19331, 19486), (19487, 19650), (19651, 19776), (19777, 19944), (19945, 20104), (20105, 20268), (20269, 20436), (20437, 20598), (20599, 20766), (20767, 20926), (20927, 21088), (21089, 21256), (21257, 21414), (21415, 21574), (21575, 21736), (21737, 21904), (21905, 22060), (22061, 22218), (22219, 22360), (22361, 22516), (22517, 22678), (22679, 22846), (22847, 22984), (22985, 23140), (23141, 23298), (23299, 23464), (23465, 23626), (23627, 23794), (23795, 23956), (23957, 24124), (24125, 24288), (24289, 24448), (24449, 24610), (24611, 24778), (24779, 24934), (24935, 25090), (25091, 25254), (25255, 25420), (25421, 25578), (25579, 25746), (25747, 25914), (25915, 26080), (26081, 26220), (26221, 26376), (26377, 26538), (26539, 26706), (26707, 26868), (26869, 27030), (27031, 27198), (27199, 27364), (27365, 27528), (27529, 27696), (27697, 27864), (27865, 28018), (28019, 28055), (28125, 28290), (28291, 28292), (28717, 28728), (29791, 29935), (30758, 30770), (30899, 31060), (31061, 31066), (31250, 31416), (31417, 31417), (31423, 31496), (31827, 31851), (31974, 31994), (32805, 32935), (32955, 32972), (33614, 33656), (33708, 33781), (34322, 34486), (34487, 34558), (36517, 36664), (36665, 36668), (37303, 37377), (37446, 37470), (37500, 37660), (37661, 37705), (38307, 38458), (39326, 39490), (39491, 39493), (40401, 40495), (40931, 40971), (43750, 43854), (45369, 45420), (47526, 47688), (47689, 47691), (48013, 48128), (48373, 48538), (48539, 48540), (48734, 48900), (48901, 48901), (49379, 49465), (51076, 51172), (52215, 52261), (53138, 53212), (53290, 53305), (55451, 55608), (55609, 55614), (55815, 55945), (56307, 56336), (56454, 56474), (57245, 57289), (58619, 58731), (62500, 62577), (68644, 68806), (68807, 68818), (68921, 69057), (71289, 71454), (71455, 71456), (73167, 73169), (73205, 73334), (83667, 83688), (85805, 85850), (89383, 89540), (93845, 93917), (102152, 102177), (103041, 103133), (109503, 109542), (148955, 149044), (154568, 154616), (195223, 195279), (199927, 199976)]

theorem row168_bounds_eq : row168.goods.map goodSegmentBounds = row168_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row168_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32935), (3, 32805, 32972), (3, 39366, 39533), (5, 28125, 28292), (5, 31250, 31417), (5, 34375, 34542), (5, 37500, 37667), (5, 40625, 40792), (5, 43750, 43917), (5, 46875, 47042), (5, 31250, 31417), (5, 46875, 47042), (7, 33614, 33781), (11, 29282, 29449), (11, 43923, 44090), (13, 28561, 28728), (13, 30758, 30925), (13, 32955, 33122), (13, 28561, 28728), (17, 29478, 29645), (17, 34391, 34558), (17, 39304, 39471), (17, 44217, 44384), (17, 49130, 49297), (17, 54043, 54210), (19, 34295, 34462), (19, 41154, 41321), (19, 48013, 48180), (19, 54872, 55039), (23, 36501, 36668), (23, 48668, 48835), (29, 48778, 48945), (31, 29791, 29958), (37, 50653, 50820), (47, 28717, 28884), (47, 30926, 31093), (47, 33135, 33302), (53, 28090, 28257), (53, 30899, 31066), (53, 33708, 33875), (53, 36517, 36684), (53, 39326, 39493), (53, 42135, 42302), (59, 31329, 31496), (59, 34810, 34977), (59, 38291, 38458), (59, 41772, 41939), (59, 45253, 45420), (59, 48734, 48901), (59, 52215, 52382), (61, 29768, 29935), (61, 33489, 33656), (61, 37210, 37377), (61, 40931, 41098), (61, 44652, 44819), (61, 48373, 48540), (61, 52094, 52261), (61, 55815, 55982), (67, 31423, 31590), (67, 35912, 36079), (67, 40401, 40568), (67, 44890, 45057), (67, 49379, 49546), (67, 53868, 54035), (71, 30246, 30413), (71, 35287, 35454), (71, 40328, 40495), (71, 45369, 45536), (71, 50410, 50577), (71, 55451, 55618), (73, 31974, 32141), (73, 37303, 37470), (73, 42632, 42799), (73, 47961, 48128), (73, 53290, 53457), (79, 31205, 31372), (79, 37446, 37613), (79, 43687, 43854), (79, 49928, 50095), (83, 34445, 34612), (83, 41334, 41501), (83, 48223, 48390), (83, 55112, 55279), (89, 31684, 31851), (89, 39605, 39772), (89, 47526, 47693), (89, 55447, 55614), (97, 28227, 28394), (97, 37636, 37803), (97, 47045, 47212), (101, 30603, 30770), (101, 40804, 40971), (101, 51005, 51172), (103, 31827, 31994), (103, 42436, 42603), (103, 53045, 53212), (107, 34347, 34514), (107, 45796, 45963), (109, 35643, 35810), (109, 47524, 47691), (113, 38307, 38474), (113, 51076, 51243), (127, 32258, 32425), (127, 48387, 48554), (131, 34322, 34489), (131, 51483, 51650), (137, 37538, 37705), (139, 38642, 38809), (149, 44402, 44569), (151, 45602, 45769), (157, 49298, 49465), (163, 53138, 53305), (167, 28056, 28056), (167, 55778, 55945)]

def row168_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32935), (3, 32805, 32972), (3, 39366, 39533), (5, 28125, 28292), (5, 31250, 31417), (5, 34375, 34542), (5, 37500, 37667), (5, 40625, 40792), (5, 43750, 43917), (5, 46875, 47042), (5, 31250, 31417), (5, 46875, 47042), (7, 33614, 33781), (11, 29282, 29449), (11, 43923, 44090), (13, 28561, 28728)]

def row168_layer000_block001 : List ColouredInterval :=
  [(13, 30758, 30925), (13, 32955, 33122), (13, 28561, 28728), (17, 29478, 29645), (17, 34391, 34558), (17, 39304, 39471), (17, 44217, 44384), (17, 49130, 49297), (17, 54043, 54210), (19, 34295, 34462), (19, 41154, 41321), (19, 48013, 48180), (19, 54872, 55039), (23, 36501, 36668), (23, 48668, 48835), (29, 48778, 48945)]

def row168_layer000_block002 : List ColouredInterval :=
  [(31, 29791, 29958), (37, 50653, 50820), (47, 28717, 28884), (47, 30926, 31093), (47, 33135, 33302), (53, 28090, 28257), (53, 30899, 31066), (53, 33708, 33875), (53, 36517, 36684), (53, 39326, 39493), (53, 42135, 42302), (59, 31329, 31496), (59, 34810, 34977), (59, 38291, 38458), (59, 41772, 41939), (59, 45253, 45420)]

def row168_layer000_block003 : List ColouredInterval :=
  [(59, 48734, 48901), (59, 52215, 52382), (61, 29768, 29935), (61, 33489, 33656), (61, 37210, 37377), (61, 40931, 41098), (61, 44652, 44819), (61, 48373, 48540), (61, 52094, 52261), (61, 55815, 55982), (67, 31423, 31590), (67, 35912, 36079), (67, 40401, 40568), (67, 44890, 45057), (67, 49379, 49546), (67, 53868, 54035)]

def row168_layer000_block004 : List ColouredInterval :=
  [(71, 30246, 30413), (71, 35287, 35454), (71, 40328, 40495), (71, 45369, 45536), (71, 50410, 50577), (71, 55451, 55618), (73, 31974, 32141), (73, 37303, 37470), (73, 42632, 42799), (73, 47961, 48128), (73, 53290, 53457), (79, 31205, 31372), (79, 37446, 37613), (79, 43687, 43854), (79, 49928, 50095), (83, 34445, 34612)]

def row168_layer000_block005 : List ColouredInterval :=
  [(83, 41334, 41501), (83, 48223, 48390), (83, 55112, 55279), (89, 31684, 31851), (89, 39605, 39772), (89, 47526, 47693), (89, 55447, 55614), (97, 28227, 28394), (97, 37636, 37803), (97, 47045, 47212), (101, 30603, 30770), (101, 40804, 40971), (101, 51005, 51172), (103, 31827, 31994), (103, 42436, 42603), (103, 53045, 53212)]

def row168_layer000_block006 : List ColouredInterval :=
  [(107, 34347, 34514), (107, 45796, 45963), (109, 35643, 35810), (109, 47524, 47691), (113, 38307, 38474), (113, 51076, 51243), (127, 32258, 32425), (127, 48387, 48554), (131, 34322, 34489), (131, 51483, 51650), (137, 37538, 37705), (139, 38642, 38809), (149, 44402, 44569), (151, 45602, 45769), (157, 49298, 49465), (163, 53138, 53305)]

def row168_layer000_block007 : List ColouredInterval :=
  [(167, 28056, 28056), (167, 55778, 55945)]

def row168_layer000_chunks : List (List ColouredInterval) :=
  [row168_layer000_block000, row168_layer000_block001, row168_layer000_block002, row168_layer000_block003, row168_layer000_block004, row168_layer000_block005, row168_layer000_block006, row168_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_arithmetic : LayerArithmeticValid row168.height { lower := 28056, upper := 56112, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_enumeration :
    activePowerIntervalList 168 15 28056 56112 = row168_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_pairs000 :
    row168_layer000_block000.all (fun I => row168_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_pairs001 :
    row168_layer000_block001.all (fun I => row168_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_pairs002 :
    row168_layer000_block002.all (fun I => row168_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_pairs003 :
    row168_layer000_block003.all (fun I => row168_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_pairs004 :
    row168_layer000_block004.all (fun I => row168_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_pairs005 :
    row168_layer000_block005.all (fun I => row168_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_pairs006 :
    row168_layer000_block006.all (fun I => row168_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_pairs007 :
    row168_layer000_block007.all (fun I => row168_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_chunks_eq : row168_layer000_chunks.flatten = row168_layer000_intervals := by
  rfl

theorem row168_layer000_pairs : pairCoverCheck row168_layer000_intervals row168_bounds = true := by
  apply pairCoverCheck_of_chunks row168_layer000_chunks_eq
  intro block hblock
  simp only [row168_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row168_layer000_pairs000
  · exact row168_layer000_pairs001
  · exact row168_layer000_pairs002
  · exact row168_layer000_pairs003
  · exact row168_layer000_pairs004
  · exact row168_layer000_pairs005
  · exact row168_layer000_pairs006
  · exact row168_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_pairs
