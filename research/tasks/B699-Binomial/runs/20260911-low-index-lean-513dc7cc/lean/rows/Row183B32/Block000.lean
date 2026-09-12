import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row183_height : HeightCertificateDatum := { i := 183, r := 60, s := 130, n0Power10 := 8 }

def row183_goods : List GoodSegment := [
  { lower := 368, upper := 549, witness := RowWitness.topPrime 367 },
  { lower := 550, upper := 729, witness := RowWitness.topPrime 547 },
  { lower := 730, upper := 909, witness := RowWitness.topPrime 727 },
  { lower := 910, upper := 1089, witness := RowWitness.topPrime 907 },
  { lower := 1090, upper := 1269, witness := RowWitness.topPrime 1087 },
  { lower := 1270, upper := 1441, witness := RowWitness.topPrime 1259 },
  { lower := 1442, upper := 1621, witness := RowWitness.topPrime 1439 },
  { lower := 1622, upper := 1803, witness := RowWitness.topPrime 1621 },
  { lower := 1804, upper := 1983, witness := RowWitness.topPrime 1801 },
  { lower := 1984, upper := 2161, witness := RowWitness.topPrime 1979 },
  { lower := 2162, upper := 2343, witness := RowWitness.topPrime 2161 },
  { lower := 2344, upper := 2523, witness := RowWitness.topPrime 2341 },
  { lower := 2524, upper := 2703, witness := RowWitness.topPrime 2521 },
  { lower := 2704, upper := 2881, witness := RowWitness.topPrime 2699 },
  { lower := 2882, upper := 3061, witness := RowWitness.topPrime 2879 },
  { lower := 3062, upper := 3243, witness := RowWitness.topPrime 3061 },
  { lower := 3244, upper := 3411, witness := RowWitness.topPrime 3229 },
  { lower := 3412, upper := 3589, witness := RowWitness.topPrime 3407 },
  { lower := 3590, upper := 3765, witness := RowWitness.topPrime 3583 },
  { lower := 3766, upper := 3943, witness := RowWitness.topPrime 3761 },
  { lower := 3944, upper := 4125, witness := RowWitness.topPrime 3943 },
  { lower := 4126, upper := 4293, witness := RowWitness.topPrime 4111 },
  { lower := 4294, upper := 4471, witness := RowWitness.topPrime 4289 },
  { lower := 4472, upper := 4645, witness := RowWitness.topPrime 4463 },
  { lower := 4646, upper := 4825, witness := RowWitness.topPrime 4643 },
  { lower := 4826, upper := 4999, witness := RowWitness.topPrime 4817 },
  { lower := 5000, upper := 5181, witness := RowWitness.topPrime 4999 },
  { lower := 5182, upper := 5361, witness := RowWitness.topPrime 5179 },
  { lower := 5362, upper := 5533, witness := RowWitness.topPrime 5351 },
  { lower := 5534, upper := 5713, witness := RowWitness.topPrime 5531 },
  { lower := 5714, upper := 5893, witness := RowWitness.topPrime 5711 },
  { lower := 5894, upper := 6063, witness := RowWitness.topPrime 5881 },
  { lower := 6064, upper := 6235, witness := RowWitness.topPrime 6053 },
  { lower := 6236, upper := 6411, witness := RowWitness.topPrime 6229 },
  { lower := 6412, upper := 6579, witness := RowWitness.topPrime 6397 },
  { lower := 6580, upper := 6759, witness := RowWitness.topPrime 6577 },
  { lower := 6760, upper := 6919, witness := RowWitness.topPrime 6737 },
  { lower := 6920, upper := 7099, witness := RowWitness.topPrime 6917 },
  { lower := 7100, upper := 7261, witness := RowWitness.topPrime 7079 },
  { lower := 7262, upper := 7435, witness := RowWitness.topPrime 7253 },
  { lower := 7436, upper := 7615, witness := RowWitness.topPrime 7433 },
  { lower := 7616, upper := 7789, witness := RowWitness.topPrime 7607 },
  { lower := 7790, upper := 7971, witness := RowWitness.topPrime 7789 },
  { lower := 7972, upper := 8145, witness := RowWitness.topPrime 7963 },
  { lower := 8146, upper := 8305, witness := RowWitness.topPrime 8123 },
  { lower := 8306, upper := 8479, witness := RowWitness.topPrime 8297 },
  { lower := 8480, upper := 8649, witness := RowWitness.topPrime 8467 },
  { lower := 8650, upper := 8829, witness := RowWitness.topPrime 8647 },
  { lower := 8830, upper := 9003, witness := RowWitness.topPrime 8821 },
  { lower := 9004, upper := 9183, witness := RowWitness.topPrime 9001 },
  { lower := 9184, upper := 9363, witness := RowWitness.topPrime 9181 },
  { lower := 9364, upper := 9531, witness := RowWitness.topPrime 9349 },
  { lower := 9532, upper := 9703, witness := RowWitness.topPrime 9521 },
  { lower := 9704, upper := 9879, witness := RowWitness.topPrime 9697 },
  { lower := 9880, upper := 10053, witness := RowWitness.topPrime 9871 },
  { lower := 10054, upper := 10221, witness := RowWitness.topPrime 10039 },
  { lower := 10222, upper := 10393, witness := RowWitness.topPrime 10211 },
  { lower := 10394, upper := 10573, witness := RowWitness.topPrime 10391 },
  { lower := 10574, upper := 10749, witness := RowWitness.topPrime 10567 },
  { lower := 10750, upper := 10921, witness := RowWitness.topPrime 10739 },
  { lower := 10922, upper := 11091, witness := RowWitness.topPrime 10909 },
  { lower := 11092, upper := 11269, witness := RowWitness.topPrime 11087 },
  { lower := 11270, upper := 11443, witness := RowWitness.topPrime 11261 },
  { lower := 11444, upper := 11625, witness := RowWitness.topPrime 11443 },
  { lower := 11626, upper := 11803, witness := RowWitness.topPrime 11621 },
  { lower := 11804, upper := 11983, witness := RowWitness.topPrime 11801 },
  { lower := 11984, upper := 12163, witness := RowWitness.topPrime 11981 },
  { lower := 12164, upper := 12345, witness := RowWitness.topPrime 12163 },
  { lower := 12346, upper := 12525, witness := RowWitness.topPrime 12343 },
  { lower := 12526, upper := 12699, witness := RowWitness.topPrime 12517 },
  { lower := 12700, upper := 12879, witness := RowWitness.topPrime 12697 },
  { lower := 12880, upper := 13035, witness := RowWitness.topPrime 12853 },
  { lower := 13036, upper := 13215, witness := RowWitness.topPrime 13033 },
  { lower := 13216, upper := 13369, witness := RowWitness.topPrime 13187 },
  { lower := 13370, upper := 13549, witness := RowWitness.topPrime 13367 },
  { lower := 13550, upper := 13719, witness := RowWitness.topPrime 13537 },
  { lower := 13720, upper := 13893, witness := RowWitness.topPrime 13711 },
  { lower := 13894, upper := 14065, witness := RowWitness.topPrime 13883 },
  { lower := 14066, upper := 14239, witness := RowWitness.topPrime 14057 },
  { lower := 14240, upper := 14403, witness := RowWitness.topPrime 14221 },
  { lower := 14404, upper := 14583, witness := RowWitness.topPrime 14401 },
  { lower := 14584, upper := 14745, witness := RowWitness.topPrime 14563 },
  { lower := 14746, upper := 14923, witness := RowWitness.topPrime 14741 },
  { lower := 14924, upper := 15105, witness := RowWitness.topPrime 14923 },
  { lower := 15106, upper := 15283, witness := RowWitness.topPrime 15101 },
  { lower := 15284, upper := 15459, witness := RowWitness.topPrime 15277 },
  { lower := 15460, upper := 15633, witness := RowWitness.topPrime 15451 },
  { lower := 15634, upper := 15811, witness := RowWitness.topPrime 15629 },
  { lower := 15812, upper := 15991, witness := RowWitness.topPrime 15809 },
  { lower := 15992, upper := 16173, witness := RowWitness.topPrime 15991 },
  { lower := 16174, upper := 16323, witness := RowWitness.topPrime 16141 },
  { lower := 16324, upper := 16501, witness := RowWitness.topPrime 16319 },
  { lower := 16502, upper := 16675, witness := RowWitness.topPrime 16493 },
  { lower := 16676, upper := 16855, witness := RowWitness.topPrime 16673 },
  { lower := 16856, upper := 17025, witness := RowWitness.topPrime 16843 },
  { lower := 17026, upper := 17203, witness := RowWitness.topPrime 17021 },
  { lower := 17204, upper := 17385, witness := RowWitness.topPrime 17203 },
  { lower := 17386, upper := 17565, witness := RowWitness.topPrime 17383 },
  { lower := 17566, upper := 17733, witness := RowWitness.topPrime 17551 },
  { lower := 17734, upper := 17911, witness := RowWitness.topPrime 17729 },
  { lower := 17912, upper := 18093, witness := RowWitness.topPrime 17911 },
  { lower := 18094, upper := 18271, witness := RowWitness.topPrime 18089 },
  { lower := 18272, upper := 18451, witness := RowWitness.topPrime 18269 },
  { lower := 18452, upper := 18633, witness := RowWitness.topPrime 18451 },
  { lower := 18634, upper := 18799, witness := RowWitness.topPrime 18617 },
  { lower := 18800, upper := 18979, witness := RowWitness.topPrime 18797 },
  { lower := 18980, upper := 19161, witness := RowWitness.topPrime 18979 },
  { lower := 19162, upper := 19339, witness := RowWitness.topPrime 19157 },
  { lower := 19340, upper := 19515, witness := RowWitness.topPrime 19333 },
  { lower := 19516, upper := 19689, witness := RowWitness.topPrime 19507 },
  { lower := 19690, upper := 19869, witness := RowWitness.topPrime 19687 },
  { lower := 19870, upper := 20049, witness := RowWitness.topPrime 19867 },
  { lower := 20050, upper := 20229, witness := RowWitness.topPrime 20047 },
  { lower := 20230, upper := 20401, witness := RowWitness.topPrime 20219 },
  { lower := 20402, upper := 20581, witness := RowWitness.topPrime 20399 },
  { lower := 20582, upper := 20745, witness := RowWitness.topPrime 20563 },
  { lower := 20746, upper := 20925, witness := RowWitness.topPrime 20743 },
  { lower := 20926, upper := 21103, witness := RowWitness.topPrime 20921 },
  { lower := 21104, upper := 21283, witness := RowWitness.topPrime 21101 },
  { lower := 21284, upper := 21465, witness := RowWitness.topPrime 21283 },
  { lower := 21466, upper := 21615, witness := RowWitness.topPrime 21433 },
  { lower := 21616, upper := 21795, witness := RowWitness.topPrime 21613 },
  { lower := 21796, upper := 21969, witness := RowWitness.topPrime 21787 },
  { lower := 21970, upper := 22143, witness := RowWitness.topPrime 21961 },
  { lower := 22144, upper := 22315, witness := RowWitness.topPrime 22133 },
  { lower := 22316, upper := 22489, witness := RowWitness.topPrime 22307 },
  { lower := 22490, upper := 22665, witness := RowWitness.topPrime 22483 },
  { lower := 22666, upper := 22833, witness := RowWitness.topPrime 22651 },
  { lower := 22834, upper := 22999, witness := RowWitness.topPrime 22817 },
  { lower := 23000, upper := 23175, witness := RowWitness.topPrime 22993 },
  { lower := 23176, upper := 23355, witness := RowWitness.topPrime 23173 },
  { lower := 23356, upper := 23521, witness := RowWitness.topPrime 23339 },
  { lower := 23522, upper := 23691, witness := RowWitness.topPrime 23509 },
  { lower := 23692, upper := 23871, witness := RowWitness.topPrime 23689 },
  { lower := 23872, upper := 24051, witness := RowWitness.topPrime 23869 },
  { lower := 24052, upper := 24231, witness := RowWitness.topPrime 24049 },
  { lower := 24232, upper := 24411, witness := RowWitness.topPrime 24229 },
  { lower := 24412, upper := 24589, witness := RowWitness.topPrime 24407 },
  { lower := 24590, upper := 24753, witness := RowWitness.topPrime 24571 },
  { lower := 24754, upper := 24931, witness := RowWitness.topPrime 24749 },
  { lower := 24932, upper := 25105, witness := RowWitness.topPrime 24923 },
  { lower := 25106, upper := 25279, witness := RowWitness.topPrime 25097 },
  { lower := 25280, upper := 25443, witness := RowWitness.topPrime 25261 },
  { lower := 25444, upper := 25621, witness := RowWitness.topPrime 25439 },
  { lower := 25622, upper := 25803, witness := RowWitness.topPrime 25621 },
  { lower := 25804, upper := 25983, witness := RowWitness.topPrime 25801 },
  { lower := 25984, upper := 26163, witness := RowWitness.topPrime 25981 },
  { lower := 26164, upper := 26343, witness := RowWitness.topPrime 26161 },
  { lower := 26344, upper := 26521, witness := RowWitness.topPrime 26339 },
  { lower := 26522, upper := 26695, witness := RowWitness.topPrime 26513 },
  { lower := 26696, upper := 26875, witness := RowWitness.topPrime 26693 },
  { lower := 26876, upper := 27045, witness := RowWitness.topPrime 26863 },
  { lower := 27046, upper := 27225, witness := RowWitness.topPrime 27043 },
  { lower := 27226, upper := 27393, witness := RowWitness.topPrime 27211 },
  { lower := 27394, upper := 27549, witness := RowWitness.topPrime 27367 },
  { lower := 27550, upper := 27723, witness := RowWitness.topPrime 27541 },
  { lower := 27724, upper := 27883, witness := RowWitness.topPrime 27701 },
  { lower := 27884, upper := 28065, witness := RowWitness.topPrime 27883 },
  { lower := 28066, upper := 28239, witness := RowWitness.topPrime 28057 },
  { lower := 28240, upper := 28411, witness := RowWitness.topPrime 28229 },
  { lower := 28412, upper := 28593, witness := RowWitness.topPrime 28411 },
  { lower := 28594, upper := 28773, witness := RowWitness.topPrime 28591 },
  { lower := 28774, upper := 28953, witness := RowWitness.topPrime 28771 },
  { lower := 28954, upper := 29131, witness := RowWitness.topPrime 28949 },
  { lower := 29132, upper := 29313, witness := RowWitness.topPrime 29131 },
  { lower := 29314, upper := 29493, witness := RowWitness.topPrime 29311 },
  { lower := 29494, upper := 29665, witness := RowWitness.topPrime 29483 },
  { lower := 29666, upper := 29845, witness := RowWitness.topPrime 29663 },
  { lower := 29846, upper := 30019, witness := RowWitness.topPrime 29837 },
  { lower := 30020, upper := 30195, witness := RowWitness.topPrime 30013 },
  { lower := 30196, upper := 30369, witness := RowWitness.topPrime 30187 },
  { lower := 30370, upper := 30549, witness := RowWitness.topPrime 30367 },
  { lower := 30550, upper := 30721, witness := RowWitness.topPrime 30539 },
  { lower := 30722, upper := 30895, witness := RowWitness.topPrime 30713 },
  { lower := 30896, upper := 31075, witness := RowWitness.topPrime 30893 },
  { lower := 31076, upper := 31251, witness := RowWitness.topPrime 31069 },
  { lower := 31252, upper := 31431, witness := RowWitness.topPrime 31249 },
  { lower := 31432, upper := 31579, witness := RowWitness.topPrime 31397 },
  { lower := 31580, upper := 31755, witness := RowWitness.topPrime 31573 },
  { lower := 31756, upper := 31933, witness := RowWitness.topPrime 31751 },
  { lower := 31934, upper := 32089, witness := RowWitness.topPrime 31907 },
  { lower := 32090, upper := 32271, witness := RowWitness.topPrime 32089 },
  { lower := 32272, upper := 32443, witness := RowWitness.topPrime 32261 },
  { lower := 32444, upper := 32625, witness := RowWitness.topPrime 32443 },
  { lower := 32626, upper := 32803, witness := RowWitness.topPrime 32621 },
  { lower := 32804, upper := 32985, witness := RowWitness.topPrime 32803 },
  { lower := 32986, upper := 33165, witness := RowWitness.topPrime 32983 },
  { lower := 33166, upper := 33305, witness := RowWitness.topPrime 33161 },
  { lower := 33708, upper := 33796, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34501, witness := RowWitness.topPrime 34319 },
  { lower := 34502, upper := 34573, witness := RowWitness.topPrime 34501 },
  { lower := 36517, upper := 36679, witness := RowWitness.topPrime 36497 },
  { lower := 36680, upper := 36683, witness := RowWitness.topPrime 36677 },
  { lower := 37446, upper := 37485, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37675, witness := RowWitness.topPrime 37493 },
  { lower := 37676, upper := 37720, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38473, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39505, witness := RowWitness.topPrime 39323 },
  { lower := 39506, upper := 39508, witness := RowWitness.topPrime 39503 },
  { lower := 40401, upper := 40510, witness := RowWitness.topPrime 40387 },
  { lower := 40804, upper := 40807, witness := RowWitness.topPrime 40801 },
  { lower := 40960, upper := 40986, witness := RowWitness.topPrime 40949 },
  { lower := 41334, upper := 41336, witness := RowWitness.topPrime 41333 },
  { lower := 43750, upper := 43869, witness := RowWitness.topPrime 43721 },
  { lower := 43923, upper := 43932, witness := RowWitness.topPrime 43913 },
  { lower := 45056, upper := 45072, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45435, witness := RowWitness.topPrime 45361 },
  { lower := 47045, upper := 47057, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47703, witness := RowWitness.topPrime 47521 },
  { lower := 47704, upper := 47706, witness := RowWitness.topPrime 47701 },
  { lower := 48013, upper := 48143, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48405, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48915, witness := RowWitness.topPrime 48733 },
  { lower := 48916, upper := 48916, witness := RowWitness.topPrime 48907 },
  { lower := 49152, upper := 49321, witness := RowWitness.topPrime 49139 },
  { lower := 49322, upper := 49334, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49480, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50592, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51187, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53227, witness := RowWitness.topPrime 53129 },
  { lower := 53248, upper := 53421, witness := RowWitness.topPrime 53239 },
  { lower := 53422, upper := 53430, witness := RowWitness.topPrime 53419 },
  { lower := 54043, upper := 54050, witness := RowWitness.topPrime 54037 },
  { lower := 55451, upper := 55623, witness := RowWitness.topPrime 55441 },
  { lower := 55624, upper := 55629, witness := RowWitness.topPrime 55621 },
  { lower := 56307, upper := 56351, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56489, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57304, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57427, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58746, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59138, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59587, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62592, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64045, witness := RowWitness.topPrime 63863 },
  { lower := 64046, upper := 64051, witness := RowWitness.topPrime 64037 },
  { lower := 64082, upper := 64130, witness := RowWitness.topPrime 64081 },
  { lower := 65533, upper := 65703, witness := RowWitness.topPrime 65521 },
  { lower := 65704, upper := 65715, witness := RowWitness.topPrime 65701 },
  { lower := 68644, upper := 68821, witness := RowWitness.topPrime 68639 },
  { lower := 68822, upper := 68833, witness := RowWitness.topPrime 68821 },
  { lower := 68921, upper := 69072, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71469, witness := RowWitness.topPrime 71287 },
  { lower := 71470, upper := 71471, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73184, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73349, witness := RowWitness.topPrime 73189 },
  { lower := 75449, upper := 75454, witness := RowWitness.topPrime 75437 },
  { lower := 83667, upper := 83703, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85865, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89555, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93932, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96787, witness := RowWitness.topPrime 96769 },
  { lower := 98304, upper := 98465, witness := RowWitness.topPrime 98299 },
  { lower := 102152, upper := 102192, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103148, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109557, witness := RowWitness.topPrime 109481 },
  { lower := 131072, upper := 131226, witness := RowWitness.topPrime 131071 },
  { lower := 148955, upper := 149059, witness := RowWitness.topPrime 148949 },
  { lower := 163840, upper := 163987, witness := RowWitness.topPrime 163819 },
  { lower := 195223, upper := 195294, witness := RowWitness.topPrime 195203 },
  { lower := 196608, upper := 196748, witness := RowWitness.topPrime 196597 },
  { lower := 229376, upper := 229509, witness := RowWitness.topPrime 229373 },
  { lower := 262144, upper := 262270, witness := RowWitness.topPrime 262139 }
]

def row183_layers : List CoverLayer := [
  { lower := 33306, upper := 66612, M := 14 },
  { lower := 66612, upper := 133224, M := 11 },
  { lower := 133224, upper := 266448, M := 8 },
  { lower := 266448, upper := 532896, M := 6 },
  { lower := 532896, upper := 1065792, M := 5 },
  { lower := 1065792, upper := 2131584, M := 3 },
  { lower := 2131584, upper := 4263168, M := 3 },
  { lower := 4263168, upper := 8526336, M := 2 },
  { lower := 8526336, upper := 17052672, M := 2 },
  { lower := 17052672, upper := 34105344, M := 1 },
  { lower := 34105344, upper := 68210688, M := 1 },
  { lower := 68210688, upper := 100000000, M := 1 }
]

def row183 : FiniteCoverRow := {
  height := row183_height,
  goods := row183_goods,
  layers := row183_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good000_checked :
    goodSegmentCheck 183 60 130
      { lower := 368, upper := 549, witness := RowWitness.topPrime 367 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good001_checked :
    goodSegmentCheck 183 60 130
      { lower := 550, upper := 729, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good002_checked :
    goodSegmentCheck 183 60 130
      { lower := 730, upper := 909, witness := RowWitness.topPrime 727 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good003_checked :
    goodSegmentCheck 183 60 130
      { lower := 910, upper := 1089, witness := RowWitness.topPrime 907 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good004_checked :
    goodSegmentCheck 183 60 130
      { lower := 1090, upper := 1269, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good005_checked :
    goodSegmentCheck 183 60 130
      { lower := 1270, upper := 1441, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good006_checked :
    goodSegmentCheck 183 60 130
      { lower := 1442, upper := 1621, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good007_checked :
    goodSegmentCheck 183 60 130
      { lower := 1622, upper := 1803, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good008_checked :
    goodSegmentCheck 183 60 130
      { lower := 1804, upper := 1983, witness := RowWitness.topPrime 1801 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good009_checked :
    goodSegmentCheck 183 60 130
      { lower := 1984, upper := 2161, witness := RowWitness.topPrime 1979 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good010_checked :
    goodSegmentCheck 183 60 130
      { lower := 2162, upper := 2343, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good011_checked :
    goodSegmentCheck 183 60 130
      { lower := 2344, upper := 2523, witness := RowWitness.topPrime 2341 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good012_checked :
    goodSegmentCheck 183 60 130
      { lower := 2524, upper := 2703, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good013_checked :
    goodSegmentCheck 183 60 130
      { lower := 2704, upper := 2881, witness := RowWitness.topPrime 2699 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good014_checked :
    goodSegmentCheck 183 60 130
      { lower := 2882, upper := 3061, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good015_checked :
    goodSegmentCheck 183 60 130
      { lower := 3062, upper := 3243, witness := RowWitness.topPrime 3061 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good016_checked :
    goodSegmentCheck 183 60 130
      { lower := 3244, upper := 3411, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good017_checked :
    goodSegmentCheck 183 60 130
      { lower := 3412, upper := 3589, witness := RowWitness.topPrime 3407 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good018_checked :
    goodSegmentCheck 183 60 130
      { lower := 3590, upper := 3765, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good019_checked :
    goodSegmentCheck 183 60 130
      { lower := 3766, upper := 3943, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good020_checked :
    goodSegmentCheck 183 60 130
      { lower := 3944, upper := 4125, witness := RowWitness.topPrime 3943 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good021_checked :
    goodSegmentCheck 183 60 130
      { lower := 4126, upper := 4293, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good022_checked :
    goodSegmentCheck 183 60 130
      { lower := 4294, upper := 4471, witness := RowWitness.topPrime 4289 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good023_checked :
    goodSegmentCheck 183 60 130
      { lower := 4472, upper := 4645, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good024_checked :
    goodSegmentCheck 183 60 130
      { lower := 4646, upper := 4825, witness := RowWitness.topPrime 4643 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good025_checked :
    goodSegmentCheck 183 60 130
      { lower := 4826, upper := 4999, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good026_checked :
    goodSegmentCheck 183 60 130
      { lower := 5000, upper := 5181, witness := RowWitness.topPrime 4999 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good027_checked :
    goodSegmentCheck 183 60 130
      { lower := 5182, upper := 5361, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good028_checked :
    goodSegmentCheck 183 60 130
      { lower := 5362, upper := 5533, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good029_checked :
    goodSegmentCheck 183 60 130
      { lower := 5534, upper := 5713, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good030_checked :
    goodSegmentCheck 183 60 130
      { lower := 5714, upper := 5893, witness := RowWitness.topPrime 5711 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good031_checked :
    goodSegmentCheck 183 60 130
      { lower := 5894, upper := 6063, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good032_checked :
    goodSegmentCheck 183 60 130
      { lower := 6064, upper := 6235, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good033_checked :
    goodSegmentCheck 183 60 130
      { lower := 6236, upper := 6411, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good034_checked :
    goodSegmentCheck 183 60 130
      { lower := 6412, upper := 6579, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good035_checked :
    goodSegmentCheck 183 60 130
      { lower := 6580, upper := 6759, witness := RowWitness.topPrime 6577 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good036_checked :
    goodSegmentCheck 183 60 130
      { lower := 6760, upper := 6919, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good037_checked :
    goodSegmentCheck 183 60 130
      { lower := 6920, upper := 7099, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good038_checked :
    goodSegmentCheck 183 60 130
      { lower := 7100, upper := 7261, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good039_checked :
    goodSegmentCheck 183 60 130
      { lower := 7262, upper := 7435, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good040_checked :
    goodSegmentCheck 183 60 130
      { lower := 7436, upper := 7615, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good041_checked :
    goodSegmentCheck 183 60 130
      { lower := 7616, upper := 7789, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good042_checked :
    goodSegmentCheck 183 60 130
      { lower := 7790, upper := 7971, witness := RowWitness.topPrime 7789 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good043_checked :
    goodSegmentCheck 183 60 130
      { lower := 7972, upper := 8145, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good044_checked :
    goodSegmentCheck 183 60 130
      { lower := 8146, upper := 8305, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good045_checked :
    goodSegmentCheck 183 60 130
      { lower := 8306, upper := 8479, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good046_checked :
    goodSegmentCheck 183 60 130
      { lower := 8480, upper := 8649, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good047_checked :
    goodSegmentCheck 183 60 130
      { lower := 8650, upper := 8829, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good048_checked :
    goodSegmentCheck 183 60 130
      { lower := 8830, upper := 9003, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good049_checked :
    goodSegmentCheck 183 60 130
      { lower := 9004, upper := 9183, witness := RowWitness.topPrime 9001 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good050_checked :
    goodSegmentCheck 183 60 130
      { lower := 9184, upper := 9363, witness := RowWitness.topPrime 9181 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good051_checked :
    goodSegmentCheck 183 60 130
      { lower := 9364, upper := 9531, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good052_checked :
    goodSegmentCheck 183 60 130
      { lower := 9532, upper := 9703, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good053_checked :
    goodSegmentCheck 183 60 130
      { lower := 9704, upper := 9879, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good054_checked :
    goodSegmentCheck 183 60 130
      { lower := 9880, upper := 10053, witness := RowWitness.topPrime 9871 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good055_checked :
    goodSegmentCheck 183 60 130
      { lower := 10054, upper := 10221, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good056_checked :
    goodSegmentCheck 183 60 130
      { lower := 10222, upper := 10393, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good057_checked :
    goodSegmentCheck 183 60 130
      { lower := 10394, upper := 10573, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good058_checked :
    goodSegmentCheck 183 60 130
      { lower := 10574, upper := 10749, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good059_checked :
    goodSegmentCheck 183 60 130
      { lower := 10750, upper := 10921, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good060_checked :
    goodSegmentCheck 183 60 130
      { lower := 10922, upper := 11091, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good061_checked :
    goodSegmentCheck 183 60 130
      { lower := 11092, upper := 11269, witness := RowWitness.topPrime 11087 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good062_checked :
    goodSegmentCheck 183 60 130
      { lower := 11270, upper := 11443, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good063_checked :
    goodSegmentCheck 183 60 130
      { lower := 11444, upper := 11625, witness := RowWitness.topPrime 11443 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good064_checked :
    goodSegmentCheck 183 60 130
      { lower := 11626, upper := 11803, witness := RowWitness.topPrime 11621 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good065_checked :
    goodSegmentCheck 183 60 130
      { lower := 11804, upper := 11983, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good066_checked :
    goodSegmentCheck 183 60 130
      { lower := 11984, upper := 12163, witness := RowWitness.topPrime 11981 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good067_checked :
    goodSegmentCheck 183 60 130
      { lower := 12164, upper := 12345, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good068_checked :
    goodSegmentCheck 183 60 130
      { lower := 12346, upper := 12525, witness := RowWitness.topPrime 12343 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good069_checked :
    goodSegmentCheck 183 60 130
      { lower := 12526, upper := 12699, witness := RowWitness.topPrime 12517 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good070_checked :
    goodSegmentCheck 183 60 130
      { lower := 12700, upper := 12879, witness := RowWitness.topPrime 12697 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good071_checked :
    goodSegmentCheck 183 60 130
      { lower := 12880, upper := 13035, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good072_checked :
    goodSegmentCheck 183 60 130
      { lower := 13036, upper := 13215, witness := RowWitness.topPrime 13033 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good073_checked :
    goodSegmentCheck 183 60 130
      { lower := 13216, upper := 13369, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good074_checked :
    goodSegmentCheck 183 60 130
      { lower := 13370, upper := 13549, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good075_checked :
    goodSegmentCheck 183 60 130
      { lower := 13550, upper := 13719, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good076_checked :
    goodSegmentCheck 183 60 130
      { lower := 13720, upper := 13893, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good077_checked :
    goodSegmentCheck 183 60 130
      { lower := 13894, upper := 14065, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good078_checked :
    goodSegmentCheck 183 60 130
      { lower := 14066, upper := 14239, witness := RowWitness.topPrime 14057 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good079_checked :
    goodSegmentCheck 183 60 130
      { lower := 14240, upper := 14403, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good080_checked :
    goodSegmentCheck 183 60 130
      { lower := 14404, upper := 14583, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good081_checked :
    goodSegmentCheck 183 60 130
      { lower := 14584, upper := 14745, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good082_checked :
    goodSegmentCheck 183 60 130
      { lower := 14746, upper := 14923, witness := RowWitness.topPrime 14741 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good083_checked :
    goodSegmentCheck 183 60 130
      { lower := 14924, upper := 15105, witness := RowWitness.topPrime 14923 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good084_checked :
    goodSegmentCheck 183 60 130
      { lower := 15106, upper := 15283, witness := RowWitness.topPrime 15101 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good085_checked :
    goodSegmentCheck 183 60 130
      { lower := 15284, upper := 15459, witness := RowWitness.topPrime 15277 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good086_checked :
    goodSegmentCheck 183 60 130
      { lower := 15460, upper := 15633, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good087_checked :
    goodSegmentCheck 183 60 130
      { lower := 15634, upper := 15811, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good088_checked :
    goodSegmentCheck 183 60 130
      { lower := 15812, upper := 15991, witness := RowWitness.topPrime 15809 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good089_checked :
    goodSegmentCheck 183 60 130
      { lower := 15992, upper := 16173, witness := RowWitness.topPrime 15991 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good090_checked :
    goodSegmentCheck 183 60 130
      { lower := 16174, upper := 16323, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good091_checked :
    goodSegmentCheck 183 60 130
      { lower := 16324, upper := 16501, witness := RowWitness.topPrime 16319 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good092_checked :
    goodSegmentCheck 183 60 130
      { lower := 16502, upper := 16675, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good093_checked :
    goodSegmentCheck 183 60 130
      { lower := 16676, upper := 16855, witness := RowWitness.topPrime 16673 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good094_checked :
    goodSegmentCheck 183 60 130
      { lower := 16856, upper := 17025, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good095_checked :
    goodSegmentCheck 183 60 130
      { lower := 17026, upper := 17203, witness := RowWitness.topPrime 17021 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good096_checked :
    goodSegmentCheck 183 60 130
      { lower := 17204, upper := 17385, witness := RowWitness.topPrime 17203 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good097_checked :
    goodSegmentCheck 183 60 130
      { lower := 17386, upper := 17565, witness := RowWitness.topPrime 17383 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good098_checked :
    goodSegmentCheck 183 60 130
      { lower := 17566, upper := 17733, witness := RowWitness.topPrime 17551 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good099_checked :
    goodSegmentCheck 183 60 130
      { lower := 17734, upper := 17911, witness := RowWitness.topPrime 17729 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good100_checked :
    goodSegmentCheck 183 60 130
      { lower := 17912, upper := 18093, witness := RowWitness.topPrime 17911 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good101_checked :
    goodSegmentCheck 183 60 130
      { lower := 18094, upper := 18271, witness := RowWitness.topPrime 18089 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good102_checked :
    goodSegmentCheck 183 60 130
      { lower := 18272, upper := 18451, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good103_checked :
    goodSegmentCheck 183 60 130
      { lower := 18452, upper := 18633, witness := RowWitness.topPrime 18451 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good104_checked :
    goodSegmentCheck 183 60 130
      { lower := 18634, upper := 18799, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good105_checked :
    goodSegmentCheck 183 60 130
      { lower := 18800, upper := 18979, witness := RowWitness.topPrime 18797 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good106_checked :
    goodSegmentCheck 183 60 130
      { lower := 18980, upper := 19161, witness := RowWitness.topPrime 18979 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good107_checked :
    goodSegmentCheck 183 60 130
      { lower := 19162, upper := 19339, witness := RowWitness.topPrime 19157 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good108_checked :
    goodSegmentCheck 183 60 130
      { lower := 19340, upper := 19515, witness := RowWitness.topPrime 19333 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good109_checked :
    goodSegmentCheck 183 60 130
      { lower := 19516, upper := 19689, witness := RowWitness.topPrime 19507 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good110_checked :
    goodSegmentCheck 183 60 130
      { lower := 19690, upper := 19869, witness := RowWitness.topPrime 19687 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good111_checked :
    goodSegmentCheck 183 60 130
      { lower := 19870, upper := 20049, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good112_checked :
    goodSegmentCheck 183 60 130
      { lower := 20050, upper := 20229, witness := RowWitness.topPrime 20047 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good113_checked :
    goodSegmentCheck 183 60 130
      { lower := 20230, upper := 20401, witness := RowWitness.topPrime 20219 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good114_checked :
    goodSegmentCheck 183 60 130
      { lower := 20402, upper := 20581, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good115_checked :
    goodSegmentCheck 183 60 130
      { lower := 20582, upper := 20745, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good116_checked :
    goodSegmentCheck 183 60 130
      { lower := 20746, upper := 20925, witness := RowWitness.topPrime 20743 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good117_checked :
    goodSegmentCheck 183 60 130
      { lower := 20926, upper := 21103, witness := RowWitness.topPrime 20921 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good118_checked :
    goodSegmentCheck 183 60 130
      { lower := 21104, upper := 21283, witness := RowWitness.topPrime 21101 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good119_checked :
    goodSegmentCheck 183 60 130
      { lower := 21284, upper := 21465, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good120_checked :
    goodSegmentCheck 183 60 130
      { lower := 21466, upper := 21615, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good121_checked :
    goodSegmentCheck 183 60 130
      { lower := 21616, upper := 21795, witness := RowWitness.topPrime 21613 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good122_checked :
    goodSegmentCheck 183 60 130
      { lower := 21796, upper := 21969, witness := RowWitness.topPrime 21787 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good123_checked :
    goodSegmentCheck 183 60 130
      { lower := 21970, upper := 22143, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good124_checked :
    goodSegmentCheck 183 60 130
      { lower := 22144, upper := 22315, witness := RowWitness.topPrime 22133 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good125_checked :
    goodSegmentCheck 183 60 130
      { lower := 22316, upper := 22489, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good126_checked :
    goodSegmentCheck 183 60 130
      { lower := 22490, upper := 22665, witness := RowWitness.topPrime 22483 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good127_checked :
    goodSegmentCheck 183 60 130
      { lower := 22666, upper := 22833, witness := RowWitness.topPrime 22651 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good128_checked :
    goodSegmentCheck 183 60 130
      { lower := 22834, upper := 22999, witness := RowWitness.topPrime 22817 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good129_checked :
    goodSegmentCheck 183 60 130
      { lower := 23000, upper := 23175, witness := RowWitness.topPrime 22993 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good130_checked :
    goodSegmentCheck 183 60 130
      { lower := 23176, upper := 23355, witness := RowWitness.topPrime 23173 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good131_checked :
    goodSegmentCheck 183 60 130
      { lower := 23356, upper := 23521, witness := RowWitness.topPrime 23339 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good132_checked :
    goodSegmentCheck 183 60 130
      { lower := 23522, upper := 23691, witness := RowWitness.topPrime 23509 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good133_checked :
    goodSegmentCheck 183 60 130
      { lower := 23692, upper := 23871, witness := RowWitness.topPrime 23689 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good134_checked :
    goodSegmentCheck 183 60 130
      { lower := 23872, upper := 24051, witness := RowWitness.topPrime 23869 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good135_checked :
    goodSegmentCheck 183 60 130
      { lower := 24052, upper := 24231, witness := RowWitness.topPrime 24049 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good136_checked :
    goodSegmentCheck 183 60 130
      { lower := 24232, upper := 24411, witness := RowWitness.topPrime 24229 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good137_checked :
    goodSegmentCheck 183 60 130
      { lower := 24412, upper := 24589, witness := RowWitness.topPrime 24407 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good138_checked :
    goodSegmentCheck 183 60 130
      { lower := 24590, upper := 24753, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good139_checked :
    goodSegmentCheck 183 60 130
      { lower := 24754, upper := 24931, witness := RowWitness.topPrime 24749 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good140_checked :
    goodSegmentCheck 183 60 130
      { lower := 24932, upper := 25105, witness := RowWitness.topPrime 24923 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good141_checked :
    goodSegmentCheck 183 60 130
      { lower := 25106, upper := 25279, witness := RowWitness.topPrime 25097 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good142_checked :
    goodSegmentCheck 183 60 130
      { lower := 25280, upper := 25443, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good143_checked :
    goodSegmentCheck 183 60 130
      { lower := 25444, upper := 25621, witness := RowWitness.topPrime 25439 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good144_checked :
    goodSegmentCheck 183 60 130
      { lower := 25622, upper := 25803, witness := RowWitness.topPrime 25621 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good145_checked :
    goodSegmentCheck 183 60 130
      { lower := 25804, upper := 25983, witness := RowWitness.topPrime 25801 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good146_checked :
    goodSegmentCheck 183 60 130
      { lower := 25984, upper := 26163, witness := RowWitness.topPrime 25981 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good147_checked :
    goodSegmentCheck 183 60 130
      { lower := 26164, upper := 26343, witness := RowWitness.topPrime 26161 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good148_checked :
    goodSegmentCheck 183 60 130
      { lower := 26344, upper := 26521, witness := RowWitness.topPrime 26339 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good149_checked :
    goodSegmentCheck 183 60 130
      { lower := 26522, upper := 26695, witness := RowWitness.topPrime 26513 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good150_checked :
    goodSegmentCheck 183 60 130
      { lower := 26696, upper := 26875, witness := RowWitness.topPrime 26693 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good151_checked :
    goodSegmentCheck 183 60 130
      { lower := 26876, upper := 27045, witness := RowWitness.topPrime 26863 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good152_checked :
    goodSegmentCheck 183 60 130
      { lower := 27046, upper := 27225, witness := RowWitness.topPrime 27043 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good153_checked :
    goodSegmentCheck 183 60 130
      { lower := 27226, upper := 27393, witness := RowWitness.topPrime 27211 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good154_checked :
    goodSegmentCheck 183 60 130
      { lower := 27394, upper := 27549, witness := RowWitness.topPrime 27367 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good155_checked :
    goodSegmentCheck 183 60 130
      { lower := 27550, upper := 27723, witness := RowWitness.topPrime 27541 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good156_checked :
    goodSegmentCheck 183 60 130
      { lower := 27724, upper := 27883, witness := RowWitness.topPrime 27701 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good157_checked :
    goodSegmentCheck 183 60 130
      { lower := 27884, upper := 28065, witness := RowWitness.topPrime 27883 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good158_checked :
    goodSegmentCheck 183 60 130
      { lower := 28066, upper := 28239, witness := RowWitness.topPrime 28057 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good159_checked :
    goodSegmentCheck 183 60 130
      { lower := 28240, upper := 28411, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good160_checked :
    goodSegmentCheck 183 60 130
      { lower := 28412, upper := 28593, witness := RowWitness.topPrime 28411 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good161_checked :
    goodSegmentCheck 183 60 130
      { lower := 28594, upper := 28773, witness := RowWitness.topPrime 28591 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good162_checked :
    goodSegmentCheck 183 60 130
      { lower := 28774, upper := 28953, witness := RowWitness.topPrime 28771 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good163_checked :
    goodSegmentCheck 183 60 130
      { lower := 28954, upper := 29131, witness := RowWitness.topPrime 28949 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good164_checked :
    goodSegmentCheck 183 60 130
      { lower := 29132, upper := 29313, witness := RowWitness.topPrime 29131 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good165_checked :
    goodSegmentCheck 183 60 130
      { lower := 29314, upper := 29493, witness := RowWitness.topPrime 29311 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good166_checked :
    goodSegmentCheck 183 60 130
      { lower := 29494, upper := 29665, witness := RowWitness.topPrime 29483 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good167_checked :
    goodSegmentCheck 183 60 130
      { lower := 29666, upper := 29845, witness := RowWitness.topPrime 29663 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good168_checked :
    goodSegmentCheck 183 60 130
      { lower := 29846, upper := 30019, witness := RowWitness.topPrime 29837 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good169_checked :
    goodSegmentCheck 183 60 130
      { lower := 30020, upper := 30195, witness := RowWitness.topPrime 30013 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good170_checked :
    goodSegmentCheck 183 60 130
      { lower := 30196, upper := 30369, witness := RowWitness.topPrime 30187 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good171_checked :
    goodSegmentCheck 183 60 130
      { lower := 30370, upper := 30549, witness := RowWitness.topPrime 30367 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good172_checked :
    goodSegmentCheck 183 60 130
      { lower := 30550, upper := 30721, witness := RowWitness.topPrime 30539 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good173_checked :
    goodSegmentCheck 183 60 130
      { lower := 30722, upper := 30895, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good174_checked :
    goodSegmentCheck 183 60 130
      { lower := 30896, upper := 31075, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good175_checked :
    goodSegmentCheck 183 60 130
      { lower := 31076, upper := 31251, witness := RowWitness.topPrime 31069 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good176_checked :
    goodSegmentCheck 183 60 130
      { lower := 31252, upper := 31431, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good177_checked :
    goodSegmentCheck 183 60 130
      { lower := 31432, upper := 31579, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good178_checked :
    goodSegmentCheck 183 60 130
      { lower := 31580, upper := 31755, witness := RowWitness.topPrime 31573 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good179_checked :
    goodSegmentCheck 183 60 130
      { lower := 31756, upper := 31933, witness := RowWitness.topPrime 31751 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good180_checked :
    goodSegmentCheck 183 60 130
      { lower := 31934, upper := 32089, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good181_checked :
    goodSegmentCheck 183 60 130
      { lower := 32090, upper := 32271, witness := RowWitness.topPrime 32089 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good182_checked :
    goodSegmentCheck 183 60 130
      { lower := 32272, upper := 32443, witness := RowWitness.topPrime 32261 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good183_checked :
    goodSegmentCheck 183 60 130
      { lower := 32444, upper := 32625, witness := RowWitness.topPrime 32443 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good184_checked :
    goodSegmentCheck 183 60 130
      { lower := 32626, upper := 32803, witness := RowWitness.topPrime 32621 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good185_checked :
    goodSegmentCheck 183 60 130
      { lower := 32804, upper := 32985, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good186_checked :
    goodSegmentCheck 183 60 130
      { lower := 32986, upper := 33165, witness := RowWitness.topPrime 32983 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good187_checked :
    goodSegmentCheck 183 60 130
      { lower := 33166, upper := 33305, witness := RowWitness.topPrime 33161 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good188_checked :
    goodSegmentCheck 183 60 130
      { lower := 33708, upper := 33796, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good189_checked :
    goodSegmentCheck 183 60 130
      { lower := 34322, upper := 34501, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good190_checked :
    goodSegmentCheck 183 60 130
      { lower := 34502, upper := 34573, witness := RowWitness.topPrime 34501 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good191_checked :
    goodSegmentCheck 183 60 130
      { lower := 36517, upper := 36679, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good192_checked :
    goodSegmentCheck 183 60 130
      { lower := 36680, upper := 36683, witness := RowWitness.topPrime 36677 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good193_checked :
    goodSegmentCheck 183 60 130
      { lower := 37446, upper := 37485, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good194_checked :
    goodSegmentCheck 183 60 130
      { lower := 37500, upper := 37675, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good195_checked :
    goodSegmentCheck 183 60 130
      { lower := 37676, upper := 37720, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good196_checked :
    goodSegmentCheck 183 60 130
      { lower := 38307, upper := 38473, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good197_checked :
    goodSegmentCheck 183 60 130
      { lower := 39326, upper := 39505, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good198_checked :
    goodSegmentCheck 183 60 130
      { lower := 39506, upper := 39508, witness := RowWitness.topPrime 39503 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good199_checked :
    goodSegmentCheck 183 60 130
      { lower := 40401, upper := 40510, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good200_checked :
    goodSegmentCheck 183 60 130
      { lower := 40804, upper := 40807, witness := RowWitness.topPrime 40801 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good201_checked :
    goodSegmentCheck 183 60 130
      { lower := 40960, upper := 40986, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good202_checked :
    goodSegmentCheck 183 60 130
      { lower := 41334, upper := 41336, witness := RowWitness.topPrime 41333 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good203_checked :
    goodSegmentCheck 183 60 130
      { lower := 43750, upper := 43869, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good204_checked :
    goodSegmentCheck 183 60 130
      { lower := 43923, upper := 43932, witness := RowWitness.topPrime 43913 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good205_checked :
    goodSegmentCheck 183 60 130
      { lower := 45056, upper := 45072, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good206_checked :
    goodSegmentCheck 183 60 130
      { lower := 45369, upper := 45435, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good207_checked :
    goodSegmentCheck 183 60 130
      { lower := 47045, upper := 47057, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good208_checked :
    goodSegmentCheck 183 60 130
      { lower := 47526, upper := 47703, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good209_checked :
    goodSegmentCheck 183 60 130
      { lower := 47704, upper := 47706, witness := RowWitness.topPrime 47701 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good210_checked :
    goodSegmentCheck 183 60 130
      { lower := 48013, upper := 48143, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good211_checked :
    goodSegmentCheck 183 60 130
      { lower := 48387, upper := 48405, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good212_checked :
    goodSegmentCheck 183 60 130
      { lower := 48734, upper := 48915, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good213_checked :
    goodSegmentCheck 183 60 130
      { lower := 48916, upper := 48916, witness := RowWitness.topPrime 48907 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good214_checked :
    goodSegmentCheck 183 60 130
      { lower := 49152, upper := 49321, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good215_checked :
    goodSegmentCheck 183 60 130
      { lower := 49322, upper := 49334, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good216_checked :
    goodSegmentCheck 183 60 130
      { lower := 49379, upper := 49480, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good217_checked :
    goodSegmentCheck 183 60 130
      { lower := 50421, upper := 50592, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good218_checked :
    goodSegmentCheck 183 60 130
      { lower := 51076, upper := 51187, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good219_checked :
    goodSegmentCheck 183 60 130
      { lower := 53138, upper := 53227, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good220_checked :
    goodSegmentCheck 183 60 130
      { lower := 53248, upper := 53421, witness := RowWitness.topPrime 53239 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good221_checked :
    goodSegmentCheck 183 60 130
      { lower := 53422, upper := 53430, witness := RowWitness.topPrime 53419 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good222_checked :
    goodSegmentCheck 183 60 130
      { lower := 54043, upper := 54050, witness := RowWitness.topPrime 54037 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good223_checked :
    goodSegmentCheck 183 60 130
      { lower := 55451, upper := 55623, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good224_checked :
    goodSegmentCheck 183 60 130
      { lower := 55624, upper := 55629, witness := RowWitness.topPrime 55621 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good225_checked :
    goodSegmentCheck 183 60 130
      { lower := 56307, upper := 56351, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good226_checked :
    goodSegmentCheck 183 60 130
      { lower := 56454, upper := 56489, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good227_checked :
    goodSegmentCheck 183 60 130
      { lower := 57245, upper := 57304, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good228_checked :
    goodSegmentCheck 183 60 130
      { lower := 57344, upper := 57427, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good229_checked :
    goodSegmentCheck 183 60 130
      { lower := 58619, upper := 58746, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good230_checked :
    goodSegmentCheck 183 60 130
      { lower := 59049, upper := 59138, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good231_checked :
    goodSegmentCheck 183 60 130
      { lower := 59582, upper := 59587, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good232_checked :
    goodSegmentCheck 183 60 130
      { lower := 62500, upper := 62592, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good233_checked :
    goodSegmentCheck 183 60 130
      { lower := 63869, upper := 64045, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good234_checked :
    goodSegmentCheck 183 60 130
      { lower := 64046, upper := 64051, witness := RowWitness.topPrime 64037 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good235_checked :
    goodSegmentCheck 183 60 130
      { lower := 64082, upper := 64130, witness := RowWitness.topPrime 64081 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good236_checked :
    goodSegmentCheck 183 60 130
      { lower := 65533, upper := 65703, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good237_checked :
    goodSegmentCheck 183 60 130
      { lower := 65704, upper := 65715, witness := RowWitness.topPrime 65701 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good238_checked :
    goodSegmentCheck 183 60 130
      { lower := 68644, upper := 68821, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good239_checked :
    goodSegmentCheck 183 60 130
      { lower := 68822, upper := 68833, witness := RowWitness.topPrime 68821 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good240_checked :
    goodSegmentCheck 183 60 130
      { lower := 68921, upper := 69072, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good241_checked :
    goodSegmentCheck 183 60 130
      { lower := 71289, upper := 71469, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good242_checked :
    goodSegmentCheck 183 60 130
      { lower := 71470, upper := 71471, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good243_checked :
    goodSegmentCheck 183 60 130
      { lower := 73167, upper := 73184, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good244_checked :
    goodSegmentCheck 183 60 130
      { lower := 73205, upper := 73349, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good245_checked :
    goodSegmentCheck 183 60 130
      { lower := 75449, upper := 75454, witness := RowWitness.topPrime 75437 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good246_checked :
    goodSegmentCheck 183 60 130
      { lower := 83667, upper := 83703, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good247_checked :
    goodSegmentCheck 183 60 130
      { lower := 85805, upper := 85865, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good248_checked :
    goodSegmentCheck 183 60 130
      { lower := 89383, upper := 89555, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good249_checked :
    goodSegmentCheck 183 60 130
      { lower := 93845, upper := 93932, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good250_checked :
    goodSegmentCheck 183 60 130
      { lower := 96774, upper := 96787, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good251_checked :
    goodSegmentCheck 183 60 130
      { lower := 98304, upper := 98465, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good252_checked :
    goodSegmentCheck 183 60 130
      { lower := 102152, upper := 102192, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good253_checked :
    goodSegmentCheck 183 60 130
      { lower := 103041, upper := 103148, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good254_checked :
    goodSegmentCheck 183 60 130
      { lower := 109503, upper := 109557, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good255_checked :
    goodSegmentCheck 183 60 130
      { lower := 131072, upper := 131226, witness := RowWitness.topPrime 131071 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good256_checked :
    goodSegmentCheck 183 60 130
      { lower := 148955, upper := 149059, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good257_checked :
    goodSegmentCheck 183 60 130
      { lower := 163840, upper := 163987, witness := RowWitness.topPrime 163819 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good258_checked :
    goodSegmentCheck 183 60 130
      { lower := 195223, upper := 195294, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good259_checked :
    goodSegmentCheck 183 60 130
      { lower := 196608, upper := 196748, witness := RowWitness.topPrime 196597 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good260_checked :
    goodSegmentCheck 183 60 130
      { lower := 229376, upper := 229509, witness := RowWitness.topPrime 229373 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good261_checked :
    goodSegmentCheck 183 60 130
      { lower := 262144, upper := 262270, witness := RowWitness.topPrime 262139 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good261_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_goods_checked :
    row183.goods.all (goodSegmentCheck row183.height.i row183.height.r row183.height.s) = true := by
  change row183_goods.all (goodSegmentCheck 183 60 130) = true
  simp only [row183_goods, List.all_cons, List.all_nil,
    row183_good000_checked,
    row183_good001_checked,
    row183_good002_checked,
    row183_good003_checked,
    row183_good004_checked,
    row183_good005_checked,
    row183_good006_checked,
    row183_good007_checked,
    row183_good008_checked,
    row183_good009_checked,
    row183_good010_checked,
    row183_good011_checked,
    row183_good012_checked,
    row183_good013_checked,
    row183_good014_checked,
    row183_good015_checked,
    row183_good016_checked,
    row183_good017_checked,
    row183_good018_checked,
    row183_good019_checked,
    row183_good020_checked,
    row183_good021_checked,
    row183_good022_checked,
    row183_good023_checked,
    row183_good024_checked,
    row183_good025_checked,
    row183_good026_checked,
    row183_good027_checked,
    row183_good028_checked,
    row183_good029_checked,
    row183_good030_checked,
    row183_good031_checked,
    row183_good032_checked,
    row183_good033_checked,
    row183_good034_checked,
    row183_good035_checked,
    row183_good036_checked,
    row183_good037_checked,
    row183_good038_checked,
    row183_good039_checked,
    row183_good040_checked,
    row183_good041_checked,
    row183_good042_checked,
    row183_good043_checked,
    row183_good044_checked,
    row183_good045_checked,
    row183_good046_checked,
    row183_good047_checked,
    row183_good048_checked,
    row183_good049_checked,
    row183_good050_checked,
    row183_good051_checked,
    row183_good052_checked,
    row183_good053_checked,
    row183_good054_checked,
    row183_good055_checked,
    row183_good056_checked,
    row183_good057_checked,
    row183_good058_checked,
    row183_good059_checked,
    row183_good060_checked,
    row183_good061_checked,
    row183_good062_checked,
    row183_good063_checked,
    row183_good064_checked,
    row183_good065_checked,
    row183_good066_checked,
    row183_good067_checked,
    row183_good068_checked,
    row183_good069_checked,
    row183_good070_checked,
    row183_good071_checked,
    row183_good072_checked,
    row183_good073_checked,
    row183_good074_checked,
    row183_good075_checked,
    row183_good076_checked,
    row183_good077_checked,
    row183_good078_checked,
    row183_good079_checked,
    row183_good080_checked,
    row183_good081_checked,
    row183_good082_checked,
    row183_good083_checked,
    row183_good084_checked,
    row183_good085_checked,
    row183_good086_checked,
    row183_good087_checked,
    row183_good088_checked,
    row183_good089_checked,
    row183_good090_checked,
    row183_good091_checked,
    row183_good092_checked,
    row183_good093_checked,
    row183_good094_checked,
    row183_good095_checked,
    row183_good096_checked,
    row183_good097_checked,
    row183_good098_checked,
    row183_good099_checked,
    row183_good100_checked,
    row183_good101_checked,
    row183_good102_checked,
    row183_good103_checked,
    row183_good104_checked,
    row183_good105_checked,
    row183_good106_checked,
    row183_good107_checked,
    row183_good108_checked,
    row183_good109_checked,
    row183_good110_checked,
    row183_good111_checked,
    row183_good112_checked,
    row183_good113_checked,
    row183_good114_checked,
    row183_good115_checked,
    row183_good116_checked,
    row183_good117_checked,
    row183_good118_checked,
    row183_good119_checked,
    row183_good120_checked,
    row183_good121_checked,
    row183_good122_checked,
    row183_good123_checked,
    row183_good124_checked,
    row183_good125_checked,
    row183_good126_checked,
    row183_good127_checked,
    row183_good128_checked,
    row183_good129_checked,
    row183_good130_checked,
    row183_good131_checked,
    row183_good132_checked,
    row183_good133_checked,
    row183_good134_checked,
    row183_good135_checked,
    row183_good136_checked,
    row183_good137_checked,
    row183_good138_checked,
    row183_good139_checked,
    row183_good140_checked,
    row183_good141_checked,
    row183_good142_checked,
    row183_good143_checked,
    row183_good144_checked,
    row183_good145_checked,
    row183_good146_checked,
    row183_good147_checked,
    row183_good148_checked,
    row183_good149_checked,
    row183_good150_checked,
    row183_good151_checked,
    row183_good152_checked,
    row183_good153_checked,
    row183_good154_checked,
    row183_good155_checked,
    row183_good156_checked,
    row183_good157_checked,
    row183_good158_checked,
    row183_good159_checked,
    row183_good160_checked,
    row183_good161_checked,
    row183_good162_checked,
    row183_good163_checked,
    row183_good164_checked,
    row183_good165_checked,
    row183_good166_checked,
    row183_good167_checked,
    row183_good168_checked,
    row183_good169_checked,
    row183_good170_checked,
    row183_good171_checked,
    row183_good172_checked,
    row183_good173_checked,
    row183_good174_checked,
    row183_good175_checked,
    row183_good176_checked,
    row183_good177_checked,
    row183_good178_checked,
    row183_good179_checked,
    row183_good180_checked,
    row183_good181_checked,
    row183_good182_checked,
    row183_good183_checked,
    row183_good184_checked,
    row183_good185_checked,
    row183_good186_checked,
    row183_good187_checked,
    row183_good188_checked,
    row183_good189_checked,
    row183_good190_checked,
    row183_good191_checked,
    row183_good192_checked,
    row183_good193_checked,
    row183_good194_checked,
    row183_good195_checked,
    row183_good196_checked,
    row183_good197_checked,
    row183_good198_checked,
    row183_good199_checked,
    row183_good200_checked,
    row183_good201_checked,
    row183_good202_checked,
    row183_good203_checked,
    row183_good204_checked,
    row183_good205_checked,
    row183_good206_checked,
    row183_good207_checked,
    row183_good208_checked,
    row183_good209_checked,
    row183_good210_checked,
    row183_good211_checked,
    row183_good212_checked,
    row183_good213_checked,
    row183_good214_checked,
    row183_good215_checked,
    row183_good216_checked,
    row183_good217_checked,
    row183_good218_checked,
    row183_good219_checked,
    row183_good220_checked,
    row183_good221_checked,
    row183_good222_checked,
    row183_good223_checked,
    row183_good224_checked,
    row183_good225_checked,
    row183_good226_checked,
    row183_good227_checked,
    row183_good228_checked,
    row183_good229_checked,
    row183_good230_checked,
    row183_good231_checked,
    row183_good232_checked,
    row183_good233_checked,
    row183_good234_checked,
    row183_good235_checked,
    row183_good236_checked,
    row183_good237_checked,
    row183_good238_checked,
    row183_good239_checked,
    row183_good240_checked,
    row183_good241_checked,
    row183_good242_checked,
    row183_good243_checked,
    row183_good244_checked,
    row183_good245_checked,
    row183_good246_checked,
    row183_good247_checked,
    row183_good248_checked,
    row183_good249_checked,
    row183_good250_checked,
    row183_good251_checked,
    row183_good252_checked,
    row183_good253_checked,
    row183_good254_checked,
    row183_good255_checked,
    row183_good256_checked,
    row183_good257_checked,
    row183_good258_checked,
    row183_good259_checked,
    row183_good260_checked,
    row183_good261_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_registered :
    decide (row183.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row183_small_checked :
    coverCheck (2 * row183.height.i + 2) (row183.height.i * (row183.height.i - 1) - 1)
      (row183.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row183_layerCover_checked :
    coverCheck (row183.height.i * (row183.height.i - 1)) (row183.height.n0 - 1)
      (row183.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row183_bounds : List NatInterval :=
  [(368, 549), (550, 729), (730, 909), (910, 1089), (1090, 1269), (1270, 1441), (1442, 1621), (1622, 1803), (1804, 1983), (1984, 2161), (2162, 2343), (2344, 2523), (2524, 2703), (2704, 2881), (2882, 3061), (3062, 3243), (3244, 3411), (3412, 3589), (3590, 3765), (3766, 3943), (3944, 4125), (4126, 4293), (4294, 4471), (4472, 4645), (4646, 4825), (4826, 4999), (5000, 5181), (5182, 5361), (5362, 5533), (5534, 5713), (5714, 5893), (5894, 6063), (6064, 6235), (6236, 6411), (6412, 6579), (6580, 6759), (6760, 6919), (6920, 7099), (7100, 7261), (7262, 7435), (7436, 7615), (7616, 7789), (7790, 7971), (7972, 8145), (8146, 8305), (8306, 8479), (8480, 8649), (8650, 8829), (8830, 9003), (9004, 9183), (9184, 9363), (9364, 9531), (9532, 9703), (9704, 9879), (9880, 10053), (10054, 10221), (10222, 10393), (10394, 10573), (10574, 10749), (10750, 10921), (10922, 11091), (11092, 11269), (11270, 11443), (11444, 11625), (11626, 11803), (11804, 11983), (11984, 12163), (12164, 12345), (12346, 12525), (12526, 12699), (12700, 12879), (12880, 13035), (13036, 13215), (13216, 13369), (13370, 13549), (13550, 13719), (13720, 13893), (13894, 14065), (14066, 14239), (14240, 14403), (14404, 14583), (14584, 14745), (14746, 14923), (14924, 15105), (15106, 15283), (15284, 15459), (15460, 15633), (15634, 15811), (15812, 15991), (15992, 16173), (16174, 16323), (16324, 16501), (16502, 16675), (16676, 16855), (16856, 17025), (17026, 17203), (17204, 17385), (17386, 17565), (17566, 17733), (17734, 17911), (17912, 18093), (18094, 18271), (18272, 18451), (18452, 18633), (18634, 18799), (18800, 18979), (18980, 19161), (19162, 19339), (19340, 19515), (19516, 19689), (19690, 19869), (19870, 20049), (20050, 20229), (20230, 20401), (20402, 20581), (20582, 20745), (20746, 20925), (20926, 21103), (21104, 21283), (21284, 21465), (21466, 21615), (21616, 21795), (21796, 21969), (21970, 22143), (22144, 22315), (22316, 22489), (22490, 22665), (22666, 22833), (22834, 22999), (23000, 23175), (23176, 23355), (23356, 23521), (23522, 23691), (23692, 23871), (23872, 24051), (24052, 24231), (24232, 24411), (24412, 24589), (24590, 24753), (24754, 24931), (24932, 25105), (25106, 25279), (25280, 25443), (25444, 25621), (25622, 25803), (25804, 25983), (25984, 26163), (26164, 26343), (26344, 26521), (26522, 26695), (26696, 26875), (26876, 27045), (27046, 27225), (27226, 27393), (27394, 27549), (27550, 27723), (27724, 27883), (27884, 28065), (28066, 28239), (28240, 28411), (28412, 28593), (28594, 28773), (28774, 28953), (28954, 29131), (29132, 29313), (29314, 29493), (29494, 29665), (29666, 29845), (29846, 30019), (30020, 30195), (30196, 30369), (30370, 30549), (30550, 30721), (30722, 30895), (30896, 31075), (31076, 31251), (31252, 31431), (31432, 31579), (31580, 31755), (31756, 31933), (31934, 32089), (32090, 32271), (32272, 32443), (32444, 32625), (32626, 32803), (32804, 32985), (32986, 33165), (33166, 33305), (33708, 33796), (34322, 34501), (34502, 34573), (36517, 36679), (36680, 36683), (37446, 37485), (37500, 37675), (37676, 37720), (38307, 38473), (39326, 39505), (39506, 39508), (40401, 40510), (40804, 40807), (40960, 40986), (41334, 41336), (43750, 43869), (43923, 43932), (45056, 45072), (45369, 45435), (47045, 47057), (47526, 47703), (47704, 47706), (48013, 48143), (48387, 48405), (48734, 48915), (48916, 48916), (49152, 49321), (49322, 49334), (49379, 49480), (50421, 50592), (51076, 51187), (53138, 53227), (53248, 53421), (53422, 53430), (54043, 54050), (55451, 55623), (55624, 55629), (56307, 56351), (56454, 56489), (57245, 57304), (57344, 57427), (58619, 58746), (59049, 59138), (59582, 59587), (62500, 62592), (63869, 64045), (64046, 64051), (64082, 64130), (65533, 65703), (65704, 65715), (68644, 68821), (68822, 68833), (68921, 69072), (71289, 71469), (71470, 71471), (73167, 73184), (73205, 73349), (75449, 75454), (83667, 83703), (85805, 85865), (89383, 89555), (93845, 93932), (96774, 96787), (98304, 98465), (102152, 102192), (103041, 103148), (109503, 109557), (131072, 131226), (148955, 149059), (163840, 163987), (195223, 195294), (196608, 196748), (229376, 229509), (262144, 262270)]

theorem row183_bounds_eq : row183.goods.map goodSegmentBounds = row183_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row183_layer000_intervals : List ColouredInterval :=
  [(2, 36864, 37046), (2, 40960, 41142), (2, 45056, 45238), (2, 49152, 49334), (2, 53248, 53430), (2, 57344, 57526), (2, 40960, 41142), (2, 49152, 49334), (2, 57344, 57526), (2, 65536, 65718), (2, 49152, 49334), (2, 65536, 65718), (2, 65536, 65718), (2, 65536, 65718), (3, 39366, 39548), (3, 59049, 59231), (3, 59049, 59231), (5, 34375, 34557), (5, 37500, 37682), (5, 40625, 40807), (5, 43750, 43932), (5, 46875, 47057), (5, 62500, 62682), (7, 33614, 33796), (7, 33614, 33796), (7, 50421, 50603), (11, 43923, 44105), (11, 58564, 58746), (13, 57122, 57304), (17, 34391, 34573), (17, 39304, 39486), (17, 44217, 44399), (17, 49130, 49312), (17, 54043, 54225), (17, 58956, 59138), (17, 63869, 64051), (19, 34295, 34477), (19, 41154, 41336), (19, 48013, 48195), (19, 54872, 55054), (19, 61731, 61913), (23, 36501, 36683), (23, 48668, 48850), (23, 60835, 61017), (29, 48778, 48960), (31, 59582, 59764), (37, 50653, 50835), (53, 33708, 33890), (53, 36517, 36699), (53, 39326, 39508), (59, 34810, 34992), (59, 38291, 38473), (59, 41772, 41954), (59, 45253, 45435), (59, 48734, 48916), (67, 35912, 36094), (67, 40401, 40583), (67, 44890, 45072), (67, 49379, 49561), (67, 53868, 54050), (67, 58357, 58539), (67, 62846, 63028), (71, 35287, 35469), (71, 40328, 40510), (71, 45369, 45551), (71, 50410, 50592), (71, 55451, 55633), (71, 60492, 60674), (71, 65533, 65715), (73, 37303, 37485), (73, 42632, 42814), (73, 47961, 48143), (73, 53290, 53472), (73, 58619, 58801), (73, 63948, 64130), (79, 37446, 37628), (79, 43687, 43869), (79, 49928, 50110), (79, 56169, 56351), (79, 62410, 62592), (83, 34445, 34627), (83, 41334, 41516), (83, 48223, 48405), (83, 55112, 55294), (83, 62001, 62183), (89, 39605, 39787), (89, 47526, 47708), (89, 55447, 55629), (89, 63368, 63550), (97, 37636, 37818), (97, 47045, 47227), (97, 56454, 56636), (97, 65863, 66045), (101, 40804, 40986), (101, 51005, 51187), (101, 61206, 61388), (103, 42436, 42618), (103, 53045, 53227), (103, 63654, 63836), (107, 34347, 34529), (107, 45796, 45978), (107, 57245, 57427), (109, 35643, 35825), (109, 47524, 47706), (109, 59405, 59587), (113, 38307, 38489), (113, 51076, 51258), (113, 63845, 64027), (127, 48387, 48569), (127, 64516, 64698), (131, 34322, 34504), (131, 51483, 51665), (137, 37538, 37720), (137, 56307, 56489), (139, 38642, 38824), (139, 57963, 58145), (149, 44402, 44584), (149, 66603, 66611), (151, 45602, 45784), (157, 49298, 49480), (163, 53138, 53320), (167, 55778, 55960), (173, 59858, 60040), (179, 64082, 64264), (181, 65522, 65704)]

def row183_layer000_block000 : List ColouredInterval :=
  [(2, 36864, 37046), (2, 40960, 41142), (2, 45056, 45238), (2, 49152, 49334), (2, 53248, 53430), (2, 57344, 57526), (2, 40960, 41142), (2, 49152, 49334), (2, 57344, 57526), (2, 65536, 65718), (2, 49152, 49334), (2, 65536, 65718), (2, 65536, 65718), (2, 65536, 65718), (3, 39366, 39548), (3, 59049, 59231)]

def row183_layer000_block001 : List ColouredInterval :=
  [(3, 59049, 59231), (5, 34375, 34557), (5, 37500, 37682), (5, 40625, 40807), (5, 43750, 43932), (5, 46875, 47057), (5, 62500, 62682), (7, 33614, 33796), (7, 33614, 33796), (7, 50421, 50603), (11, 43923, 44105), (11, 58564, 58746), (13, 57122, 57304), (17, 34391, 34573), (17, 39304, 39486), (17, 44217, 44399)]

def row183_layer000_block002 : List ColouredInterval :=
  [(17, 49130, 49312), (17, 54043, 54225), (17, 58956, 59138), (17, 63869, 64051), (19, 34295, 34477), (19, 41154, 41336), (19, 48013, 48195), (19, 54872, 55054), (19, 61731, 61913), (23, 36501, 36683), (23, 48668, 48850), (23, 60835, 61017), (29, 48778, 48960), (31, 59582, 59764), (37, 50653, 50835), (53, 33708, 33890)]

def row183_layer000_block003 : List ColouredInterval :=
  [(53, 36517, 36699), (53, 39326, 39508), (59, 34810, 34992), (59, 38291, 38473), (59, 41772, 41954), (59, 45253, 45435), (59, 48734, 48916), (67, 35912, 36094), (67, 40401, 40583), (67, 44890, 45072), (67, 49379, 49561), (67, 53868, 54050), (67, 58357, 58539), (67, 62846, 63028), (71, 35287, 35469), (71, 40328, 40510)]

def row183_layer000_block004 : List ColouredInterval :=
  [(71, 45369, 45551), (71, 50410, 50592), (71, 55451, 55633), (71, 60492, 60674), (71, 65533, 65715), (73, 37303, 37485), (73, 42632, 42814), (73, 47961, 48143), (73, 53290, 53472), (73, 58619, 58801), (73, 63948, 64130), (79, 37446, 37628), (79, 43687, 43869), (79, 49928, 50110), (79, 56169, 56351), (79, 62410, 62592)]

def row183_layer000_block005 : List ColouredInterval :=
  [(83, 34445, 34627), (83, 41334, 41516), (83, 48223, 48405), (83, 55112, 55294), (83, 62001, 62183), (89, 39605, 39787), (89, 47526, 47708), (89, 55447, 55629), (89, 63368, 63550), (97, 37636, 37818), (97, 47045, 47227), (97, 56454, 56636), (97, 65863, 66045), (101, 40804, 40986), (101, 51005, 51187), (101, 61206, 61388)]

def row183_layer000_block006 : List ColouredInterval :=
  [(103, 42436, 42618), (103, 53045, 53227), (103, 63654, 63836), (107, 34347, 34529), (107, 45796, 45978), (107, 57245, 57427), (109, 35643, 35825), (109, 47524, 47706), (109, 59405, 59587), (113, 38307, 38489), (113, 51076, 51258), (113, 63845, 64027), (127, 48387, 48569), (127, 64516, 64698), (131, 34322, 34504), (131, 51483, 51665)]

def row183_layer000_block007 : List ColouredInterval :=
  [(137, 37538, 37720), (137, 56307, 56489), (139, 38642, 38824), (139, 57963, 58145), (149, 44402, 44584), (149, 66603, 66611), (151, 45602, 45784), (157, 49298, 49480), (163, 53138, 53320), (167, 55778, 55960), (173, 59858, 60040), (179, 64082, 64264), (181, 65522, 65704)]

def row183_layer000_chunks : List (List ColouredInterval) :=
  [row183_layer000_block000, row183_layer000_block001, row183_layer000_block002, row183_layer000_block003, row183_layer000_block004, row183_layer000_block005, row183_layer000_block006, row183_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_arithmetic : LayerArithmeticValid row183.height { lower := 33306, upper := 66612, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_enumeration :
    activePowerIntervalList 183 14 33306 66612 = row183_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_pairs000 :
    row183_layer000_block000.all (fun I => row183_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_pairs001 :
    row183_layer000_block001.all (fun I => row183_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_pairs002 :
    row183_layer000_block002.all (fun I => row183_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_pairs003 :
    row183_layer000_block003.all (fun I => row183_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_pairs004 :
    row183_layer000_block004.all (fun I => row183_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_pairs005 :
    row183_layer000_block005.all (fun I => row183_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_pairs006 :
    row183_layer000_block006.all (fun I => row183_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_pairs007 :
    row183_layer000_block007.all (fun I => row183_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_pairs007
