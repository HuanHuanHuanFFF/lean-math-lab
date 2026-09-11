import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row182_height : HeightCertificateDatum := { i := 182, r := 60, s := 129, n0Power10 := 8 }

def row182_goods : List GoodSegment := [
  { lower := 366, upper := 540, witness := RowWitness.topPrime 359 },
  { lower := 541, upper := 722, witness := RowWitness.topPrime 541 },
  { lower := 723, upper := 900, witness := RowWitness.topPrime 719 },
  { lower := 901, upper := 1068, witness := RowWitness.topPrime 887 },
  { lower := 1069, upper := 1250, witness := RowWitness.topPrime 1069 },
  { lower := 1251, upper := 1430, witness := RowWitness.topPrime 1249 },
  { lower := 1431, upper := 1610, witness := RowWitness.topPrime 1429 },
  { lower := 1611, upper := 1790, witness := RowWitness.topPrime 1609 },
  { lower := 1791, upper := 1970, witness := RowWitness.topPrime 1789 },
  { lower := 1971, upper := 2132, witness := RowWitness.topPrime 1951 },
  { lower := 2133, upper := 2312, witness := RowWitness.topPrime 2131 },
  { lower := 2313, upper := 2492, witness := RowWitness.topPrime 2311 },
  { lower := 2493, upper := 2658, witness := RowWitness.topPrime 2477 },
  { lower := 2659, upper := 2840, witness := RowWitness.topPrime 2659 },
  { lower := 2841, upper := 3018, witness := RowWitness.topPrime 2837 },
  { lower := 3019, upper := 3200, witness := RowWitness.topPrime 3019 },
  { lower := 3201, upper := 3372, witness := RowWitness.topPrime 3191 },
  { lower := 3373, upper := 3554, witness := RowWitness.topPrime 3373 },
  { lower := 3555, upper := 3728, witness := RowWitness.topPrime 3547 },
  { lower := 3729, upper := 3908, witness := RowWitness.topPrime 3727 },
  { lower := 3909, upper := 4088, witness := RowWitness.topPrime 3907 },
  { lower := 4089, upper := 4260, witness := RowWitness.topPrime 4079 },
  { lower := 4261, upper := 4442, witness := RowWitness.topPrime 4261 },
  { lower := 4443, upper := 4622, witness := RowWitness.topPrime 4441 },
  { lower := 4623, upper := 4802, witness := RowWitness.topPrime 4621 },
  { lower := 4803, upper := 4982, witness := RowWitness.topPrime 4801 },
  { lower := 4983, upper := 5154, witness := RowWitness.topPrime 4973 },
  { lower := 5155, upper := 5334, witness := RowWitness.topPrime 5153 },
  { lower := 5335, upper := 5514, witness := RowWitness.topPrime 5333 },
  { lower := 5515, upper := 5688, witness := RowWitness.topPrime 5507 },
  { lower := 5689, upper := 5870, witness := RowWitness.topPrime 5689 },
  { lower := 5871, upper := 6050, witness := RowWitness.topPrime 5869 },
  { lower := 6051, upper := 6228, witness := RowWitness.topPrime 6047 },
  { lower := 6229, upper := 6410, witness := RowWitness.topPrime 6229 },
  { lower := 6411, upper := 6578, witness := RowWitness.topPrime 6397 },
  { lower := 6579, upper := 6758, witness := RowWitness.topPrime 6577 },
  { lower := 6759, upper := 6918, witness := RowWitness.topPrime 6737 },
  { lower := 6919, upper := 7098, witness := RowWitness.topPrime 6917 },
  { lower := 7099, upper := 7260, witness := RowWitness.topPrime 7079 },
  { lower := 7261, upper := 7434, witness := RowWitness.topPrime 7253 },
  { lower := 7435, upper := 7614, witness := RowWitness.topPrime 7433 },
  { lower := 7615, upper := 7788, witness := RowWitness.topPrime 7607 },
  { lower := 7789, upper := 7970, witness := RowWitness.topPrime 7789 },
  { lower := 7971, upper := 8144, witness := RowWitness.topPrime 7963 },
  { lower := 8145, upper := 8304, witness := RowWitness.topPrime 8123 },
  { lower := 8305, upper := 8478, witness := RowWitness.topPrime 8297 },
  { lower := 8479, upper := 8648, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8828, witness := RowWitness.topPrime 8647 },
  { lower := 8829, upper := 9002, witness := RowWitness.topPrime 8821 },
  { lower := 9003, upper := 9182, witness := RowWitness.topPrime 9001 },
  { lower := 9183, upper := 9362, witness := RowWitness.topPrime 9181 },
  { lower := 9363, upper := 9530, witness := RowWitness.topPrime 9349 },
  { lower := 9531, upper := 9702, witness := RowWitness.topPrime 9521 },
  { lower := 9703, upper := 9878, witness := RowWitness.topPrime 9697 },
  { lower := 9879, upper := 10052, witness := RowWitness.topPrime 9871 },
  { lower := 10053, upper := 10220, witness := RowWitness.topPrime 10039 },
  { lower := 10221, upper := 10392, witness := RowWitness.topPrime 10211 },
  { lower := 10393, upper := 10572, witness := RowWitness.topPrime 10391 },
  { lower := 10573, upper := 10748, witness := RowWitness.topPrime 10567 },
  { lower := 10749, upper := 10920, witness := RowWitness.topPrime 10739 },
  { lower := 10921, upper := 11090, witness := RowWitness.topPrime 10909 },
  { lower := 11091, upper := 11268, witness := RowWitness.topPrime 11087 },
  { lower := 11269, upper := 11442, witness := RowWitness.topPrime 11261 },
  { lower := 11443, upper := 11624, witness := RowWitness.topPrime 11443 },
  { lower := 11625, upper := 11802, witness := RowWitness.topPrime 11621 },
  { lower := 11803, upper := 11982, witness := RowWitness.topPrime 11801 },
  { lower := 11983, upper := 12162, witness := RowWitness.topPrime 11981 },
  { lower := 12163, upper := 12344, witness := RowWitness.topPrime 12163 },
  { lower := 12345, upper := 12524, witness := RowWitness.topPrime 12343 },
  { lower := 12525, upper := 12698, witness := RowWitness.topPrime 12517 },
  { lower := 12699, upper := 12878, witness := RowWitness.topPrime 12697 },
  { lower := 12879, upper := 13034, witness := RowWitness.topPrime 12853 },
  { lower := 13035, upper := 13214, witness := RowWitness.topPrime 13033 },
  { lower := 13215, upper := 13368, witness := RowWitness.topPrime 13187 },
  { lower := 13369, upper := 13548, witness := RowWitness.topPrime 13367 },
  { lower := 13549, upper := 13718, witness := RowWitness.topPrime 13537 },
  { lower := 13719, upper := 13892, witness := RowWitness.topPrime 13711 },
  { lower := 13893, upper := 14064, witness := RowWitness.topPrime 13883 },
  { lower := 14065, upper := 14238, witness := RowWitness.topPrime 14057 },
  { lower := 14239, upper := 14402, witness := RowWitness.topPrime 14221 },
  { lower := 14403, upper := 14582, witness := RowWitness.topPrime 14401 },
  { lower := 14583, upper := 14744, witness := RowWitness.topPrime 14563 },
  { lower := 14745, upper := 14922, witness := RowWitness.topPrime 14741 },
  { lower := 14923, upper := 15104, witness := RowWitness.topPrime 14923 },
  { lower := 15105, upper := 15282, witness := RowWitness.topPrime 15101 },
  { lower := 15283, upper := 15458, witness := RowWitness.topPrime 15277 },
  { lower := 15459, upper := 15632, witness := RowWitness.topPrime 15451 },
  { lower := 15633, upper := 15810, witness := RowWitness.topPrime 15629 },
  { lower := 15811, upper := 15990, witness := RowWitness.topPrime 15809 },
  { lower := 15991, upper := 16172, witness := RowWitness.topPrime 15991 },
  { lower := 16173, upper := 16322, witness := RowWitness.topPrime 16141 },
  { lower := 16323, upper := 16500, witness := RowWitness.topPrime 16319 },
  { lower := 16501, upper := 16674, witness := RowWitness.topPrime 16493 },
  { lower := 16675, upper := 16854, witness := RowWitness.topPrime 16673 },
  { lower := 16855, upper := 17024, witness := RowWitness.topPrime 16843 },
  { lower := 17025, upper := 17202, witness := RowWitness.topPrime 17021 },
  { lower := 17203, upper := 17384, witness := RowWitness.topPrime 17203 },
  { lower := 17385, upper := 17564, witness := RowWitness.topPrime 17383 },
  { lower := 17565, upper := 17732, witness := RowWitness.topPrime 17551 },
  { lower := 17733, upper := 17910, witness := RowWitness.topPrime 17729 },
  { lower := 17911, upper := 18092, witness := RowWitness.topPrime 17911 },
  { lower := 18093, upper := 18270, witness := RowWitness.topPrime 18089 },
  { lower := 18271, upper := 18450, witness := RowWitness.topPrime 18269 },
  { lower := 18451, upper := 18632, witness := RowWitness.topPrime 18451 },
  { lower := 18633, upper := 18798, witness := RowWitness.topPrime 18617 },
  { lower := 18799, upper := 18978, witness := RowWitness.topPrime 18797 },
  { lower := 18979, upper := 19160, witness := RowWitness.topPrime 18979 },
  { lower := 19161, upper := 19338, witness := RowWitness.topPrime 19157 },
  { lower := 19339, upper := 19514, witness := RowWitness.topPrime 19333 },
  { lower := 19515, upper := 19688, witness := RowWitness.topPrime 19507 },
  { lower := 19689, upper := 19868, witness := RowWitness.topPrime 19687 },
  { lower := 19869, upper := 20048, witness := RowWitness.topPrime 19867 },
  { lower := 20049, upper := 20228, witness := RowWitness.topPrime 20047 },
  { lower := 20229, upper := 20400, witness := RowWitness.topPrime 20219 },
  { lower := 20401, upper := 20580, witness := RowWitness.topPrime 20399 },
  { lower := 20581, upper := 20744, witness := RowWitness.topPrime 20563 },
  { lower := 20745, upper := 20924, witness := RowWitness.topPrime 20743 },
  { lower := 20925, upper := 21102, witness := RowWitness.topPrime 20921 },
  { lower := 21103, upper := 21282, witness := RowWitness.topPrime 21101 },
  { lower := 21283, upper := 21464, witness := RowWitness.topPrime 21283 },
  { lower := 21465, upper := 21614, witness := RowWitness.topPrime 21433 },
  { lower := 21615, upper := 21794, witness := RowWitness.topPrime 21613 },
  { lower := 21795, upper := 21968, witness := RowWitness.topPrime 21787 },
  { lower := 21969, upper := 22142, witness := RowWitness.topPrime 21961 },
  { lower := 22143, upper := 22314, witness := RowWitness.topPrime 22133 },
  { lower := 22315, upper := 22488, witness := RowWitness.topPrime 22307 },
  { lower := 22489, upper := 22664, witness := RowWitness.topPrime 22483 },
  { lower := 22665, upper := 22832, witness := RowWitness.topPrime 22651 },
  { lower := 22833, upper := 22998, witness := RowWitness.topPrime 22817 },
  { lower := 22999, upper := 23174, witness := RowWitness.topPrime 22993 },
  { lower := 23175, upper := 23354, witness := RowWitness.topPrime 23173 },
  { lower := 23355, upper := 23520, witness := RowWitness.topPrime 23339 },
  { lower := 23521, upper := 23690, witness := RowWitness.topPrime 23509 },
  { lower := 23691, upper := 23870, witness := RowWitness.topPrime 23689 },
  { lower := 23871, upper := 24050, witness := RowWitness.topPrime 23869 },
  { lower := 24051, upper := 24230, witness := RowWitness.topPrime 24049 },
  { lower := 24231, upper := 24410, witness := RowWitness.topPrime 24229 },
  { lower := 24411, upper := 24588, witness := RowWitness.topPrime 24407 },
  { lower := 24589, upper := 24752, witness := RowWitness.topPrime 24571 },
  { lower := 24753, upper := 24930, witness := RowWitness.topPrime 24749 },
  { lower := 24931, upper := 25104, witness := RowWitness.topPrime 24923 },
  { lower := 25105, upper := 25278, witness := RowWitness.topPrime 25097 },
  { lower := 25279, upper := 25442, witness := RowWitness.topPrime 25261 },
  { lower := 25443, upper := 25620, witness := RowWitness.topPrime 25439 },
  { lower := 25621, upper := 25802, witness := RowWitness.topPrime 25621 },
  { lower := 25803, upper := 25982, witness := RowWitness.topPrime 25801 },
  { lower := 25983, upper := 26162, witness := RowWitness.topPrime 25981 },
  { lower := 26163, upper := 26342, witness := RowWitness.topPrime 26161 },
  { lower := 26343, upper := 26520, witness := RowWitness.topPrime 26339 },
  { lower := 26521, upper := 26694, witness := RowWitness.topPrime 26513 },
  { lower := 26695, upper := 26874, witness := RowWitness.topPrime 26693 },
  { lower := 26875, upper := 27044, witness := RowWitness.topPrime 26863 },
  { lower := 27045, upper := 27224, witness := RowWitness.topPrime 27043 },
  { lower := 27225, upper := 27392, witness := RowWitness.topPrime 27211 },
  { lower := 27393, upper := 27548, witness := RowWitness.topPrime 27367 },
  { lower := 27549, upper := 27722, witness := RowWitness.topPrime 27541 },
  { lower := 27723, upper := 27882, witness := RowWitness.topPrime 27701 },
  { lower := 27883, upper := 28064, witness := RowWitness.topPrime 27883 },
  { lower := 28065, upper := 28238, witness := RowWitness.topPrime 28057 },
  { lower := 28239, upper := 28410, witness := RowWitness.topPrime 28229 },
  { lower := 28411, upper := 28592, witness := RowWitness.topPrime 28411 },
  { lower := 28593, upper := 28772, witness := RowWitness.topPrime 28591 },
  { lower := 28773, upper := 28952, witness := RowWitness.topPrime 28771 },
  { lower := 28953, upper := 29130, witness := RowWitness.topPrime 28949 },
  { lower := 29131, upper := 29312, witness := RowWitness.topPrime 29131 },
  { lower := 29313, upper := 29492, witness := RowWitness.topPrime 29311 },
  { lower := 29493, upper := 29664, witness := RowWitness.topPrime 29483 },
  { lower := 29665, upper := 29844, witness := RowWitness.topPrime 29663 },
  { lower := 29845, upper := 30018, witness := RowWitness.topPrime 29837 },
  { lower := 30019, upper := 30194, witness := RowWitness.topPrime 30013 },
  { lower := 30195, upper := 30368, witness := RowWitness.topPrime 30187 },
  { lower := 30369, upper := 30548, witness := RowWitness.topPrime 30367 },
  { lower := 30549, upper := 30720, witness := RowWitness.topPrime 30539 },
  { lower := 30721, upper := 30894, witness := RowWitness.topPrime 30713 },
  { lower := 30895, upper := 31074, witness := RowWitness.topPrime 30893 },
  { lower := 31075, upper := 31250, witness := RowWitness.topPrime 31069 },
  { lower := 31251, upper := 31430, witness := RowWitness.topPrime 31249 },
  { lower := 31431, upper := 31578, witness := RowWitness.topPrime 31397 },
  { lower := 31579, upper := 31754, witness := RowWitness.topPrime 31573 },
  { lower := 31755, upper := 31932, witness := RowWitness.topPrime 31751 },
  { lower := 31933, upper := 32088, witness := RowWitness.topPrime 31907 },
  { lower := 32089, upper := 32270, witness := RowWitness.topPrime 32089 },
  { lower := 32271, upper := 32442, witness := RowWitness.topPrime 32261 },
  { lower := 32443, upper := 32624, witness := RowWitness.topPrime 32443 },
  { lower := 32625, upper := 32802, witness := RowWitness.topPrime 32621 },
  { lower := 32803, upper := 32949, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33670, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33795, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34500, witness := RowWitness.topPrime 34319 },
  { lower := 34501, upper := 34572, witness := RowWitness.topPrime 34501 },
  { lower := 36517, upper := 36678, witness := RowWitness.topPrime 36497 },
  { lower := 36679, upper := 36682, witness := RowWitness.topPrime 36677 },
  { lower := 37303, upper := 37391, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37484, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37674, witness := RowWitness.topPrime 37493 },
  { lower := 37675, upper := 37719, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38472, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39504, witness := RowWitness.topPrime 39323 },
  { lower := 39505, upper := 39507, witness := RowWitness.topPrime 39503 },
  { lower := 40401, upper := 40509, witness := RowWitness.topPrime 40387 },
  { lower := 40804, upper := 40806, witness := RowWitness.topPrime 40801 },
  { lower := 40931, upper := 41108, witness := RowWitness.topPrime 40927 },
  { lower := 41109, upper := 41112, witness := RowWitness.topPrime 41081 },
  { lower := 41334, upper := 41335, witness := RowWitness.topPrime 41333 },
  { lower := 43750, upper := 43868, witness := RowWitness.topPrime 43721 },
  { lower := 43923, upper := 43931, witness := RowWitness.topPrime 43913 },
  { lower := 45369, upper := 45434, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45977, witness := RowWitness.topPrime 45893 },
  { lower := 47045, upper := 47056, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47702, witness := RowWitness.topPrime 47521 },
  { lower := 47703, upper := 47705, witness := RowWitness.topPrime 47701 },
  { lower := 48013, upper := 48142, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48552, witness := RowWitness.topPrime 48371 },
  { lower := 48553, upper := 48554, witness := RowWitness.topPrime 48541 },
  { lower := 48734, upper := 48914, witness := RowWitness.topPrime 48733 },
  { lower := 48915, upper := 48915, witness := RowWitness.topPrime 48907 },
  { lower := 49152, upper := 49320, witness := RowWitness.topPrime 49139 },
  { lower := 49321, upper := 49333, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49479, witness := RowWitness.topPrime 49369 },
  { lower := 51076, upper := 51186, witness := RowWitness.topPrime 51071 },
  { lower := 52215, upper := 52275, witness := RowWitness.topPrime 52201 },
  { lower := 53138, upper := 53226, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53319, witness := RowWitness.topPrime 53281 },
  { lower := 54043, upper := 54049, witness := RowWitness.topPrime 54037 },
  { lower := 55451, upper := 55622, witness := RowWitness.topPrime 55441 },
  { lower := 55623, upper := 55628, witness := RowWitness.topPrime 55621 },
  { lower := 55815, upper := 55959, witness := RowWitness.topPrime 55813 },
  { lower := 56307, upper := 56350, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56488, witness := RowWitness.topPrime 56453 },
  { lower := 57344, upper := 57426, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58745, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59137, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59586, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62591, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64044, witness := RowWitness.topPrime 63863 },
  { lower := 64045, upper := 64050, witness := RowWitness.topPrime 64037 },
  { lower := 64082, upper := 64129, witness := RowWitness.topPrime 64081 },
  { lower := 65533, upper := 65702, witness := RowWitness.topPrime 65521 },
  { lower := 65703, upper := 65717, witness := RowWitness.topPrime 65701 },
  { lower := 68644, upper := 68820, witness := RowWitness.topPrime 68639 },
  { lower := 68821, upper := 68832, witness := RowWitness.topPrime 68821 },
  { lower := 68921, upper := 69071, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71468, witness := RowWitness.topPrime 71287 },
  { lower := 71469, upper := 71470, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73183, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73348, witness := RowWitness.topPrime 73189 },
  { lower := 75449, upper := 75453, witness := RowWitness.topPrime 75437 },
  { lower := 83667, upper := 83702, witness := RowWitness.topPrime 83663 },
  { lower := 89383, upper := 89554, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93931, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96786, witness := RowWitness.topPrime 96769 },
  { lower := 98304, upper := 98480, witness := RowWitness.topPrime 98299 },
  { lower := 98481, upper := 98485, witness := RowWitness.topPrime 98479 },
  { lower := 98596, upper := 98596, witness := RowWitness.topPrime 98573 },
  { lower := 102152, upper := 102191, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103147, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109556, witness := RowWitness.topPrime 109481 },
  { lower := 131072, upper := 131225, witness := RowWitness.topPrime 131071 },
  { lower := 137842, upper := 137962, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149058, witness := RowWitness.topPrime 148949 },
  { lower := 195223, upper := 195293, witness := RowWitness.topPrime 195203 },
  { lower := 196608, upper := 196747, witness := RowWitness.topPrime 196597 },
  { lower := 262144, upper := 262269, witness := RowWitness.topPrime 262139 }
]

def row182_layers : List CoverLayer := [
  { lower := 32942, upper := 65884, M := 15 },
  { lower := 65884, upper := 131768, M := 11 },
  { lower := 131768, upper := 263536, M := 8 },
  { lower := 263536, upper := 527072, M := 6 },
  { lower := 527072, upper := 1054144, M := 5 },
  { lower := 1054144, upper := 2108288, M := 4 },
  { lower := 2108288, upper := 4216576, M := 3 },
  { lower := 4216576, upper := 8433152, M := 2 },
  { lower := 8433152, upper := 16866304, M := 2 },
  { lower := 16866304, upper := 33732608, M := 1 },
  { lower := 33732608, upper := 67465216, M := 1 },
  { lower := 67465216, upper := 100000000, M := 1 }
]

def row182 : FiniteCoverRow := {
  height := row182_height,
  goods := row182_goods,
  layers := row182_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good000_checked :
    goodSegmentCheck 182 60 129
      { lower := 366, upper := 540, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good001_checked :
    goodSegmentCheck 182 60 129
      { lower := 541, upper := 722, witness := RowWitness.topPrime 541 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good002_checked :
    goodSegmentCheck 182 60 129
      { lower := 723, upper := 900, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good003_checked :
    goodSegmentCheck 182 60 129
      { lower := 901, upper := 1068, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good004_checked :
    goodSegmentCheck 182 60 129
      { lower := 1069, upper := 1250, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good005_checked :
    goodSegmentCheck 182 60 129
      { lower := 1251, upper := 1430, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good006_checked :
    goodSegmentCheck 182 60 129
      { lower := 1431, upper := 1610, witness := RowWitness.topPrime 1429 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good007_checked :
    goodSegmentCheck 182 60 129
      { lower := 1611, upper := 1790, witness := RowWitness.topPrime 1609 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good008_checked :
    goodSegmentCheck 182 60 129
      { lower := 1791, upper := 1970, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good009_checked :
    goodSegmentCheck 182 60 129
      { lower := 1971, upper := 2132, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good010_checked :
    goodSegmentCheck 182 60 129
      { lower := 2133, upper := 2312, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good011_checked :
    goodSegmentCheck 182 60 129
      { lower := 2313, upper := 2492, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good012_checked :
    goodSegmentCheck 182 60 129
      { lower := 2493, upper := 2658, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good013_checked :
    goodSegmentCheck 182 60 129
      { lower := 2659, upper := 2840, witness := RowWitness.topPrime 2659 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good014_checked :
    goodSegmentCheck 182 60 129
      { lower := 2841, upper := 3018, witness := RowWitness.topPrime 2837 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good015_checked :
    goodSegmentCheck 182 60 129
      { lower := 3019, upper := 3200, witness := RowWitness.topPrime 3019 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good016_checked :
    goodSegmentCheck 182 60 129
      { lower := 3201, upper := 3372, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good017_checked :
    goodSegmentCheck 182 60 129
      { lower := 3373, upper := 3554, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good018_checked :
    goodSegmentCheck 182 60 129
      { lower := 3555, upper := 3728, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good019_checked :
    goodSegmentCheck 182 60 129
      { lower := 3729, upper := 3908, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good020_checked :
    goodSegmentCheck 182 60 129
      { lower := 3909, upper := 4088, witness := RowWitness.topPrime 3907 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good021_checked :
    goodSegmentCheck 182 60 129
      { lower := 4089, upper := 4260, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good022_checked :
    goodSegmentCheck 182 60 129
      { lower := 4261, upper := 4442, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good023_checked :
    goodSegmentCheck 182 60 129
      { lower := 4443, upper := 4622, witness := RowWitness.topPrime 4441 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good024_checked :
    goodSegmentCheck 182 60 129
      { lower := 4623, upper := 4802, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good025_checked :
    goodSegmentCheck 182 60 129
      { lower := 4803, upper := 4982, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good026_checked :
    goodSegmentCheck 182 60 129
      { lower := 4983, upper := 5154, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good027_checked :
    goodSegmentCheck 182 60 129
      { lower := 5155, upper := 5334, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good028_checked :
    goodSegmentCheck 182 60 129
      { lower := 5335, upper := 5514, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good029_checked :
    goodSegmentCheck 182 60 129
      { lower := 5515, upper := 5688, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good030_checked :
    goodSegmentCheck 182 60 129
      { lower := 5689, upper := 5870, witness := RowWitness.topPrime 5689 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good031_checked :
    goodSegmentCheck 182 60 129
      { lower := 5871, upper := 6050, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good032_checked :
    goodSegmentCheck 182 60 129
      { lower := 6051, upper := 6228, witness := RowWitness.topPrime 6047 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good033_checked :
    goodSegmentCheck 182 60 129
      { lower := 6229, upper := 6410, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good034_checked :
    goodSegmentCheck 182 60 129
      { lower := 6411, upper := 6578, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good035_checked :
    goodSegmentCheck 182 60 129
      { lower := 6579, upper := 6758, witness := RowWitness.topPrime 6577 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good036_checked :
    goodSegmentCheck 182 60 129
      { lower := 6759, upper := 6918, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good037_checked :
    goodSegmentCheck 182 60 129
      { lower := 6919, upper := 7098, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good038_checked :
    goodSegmentCheck 182 60 129
      { lower := 7099, upper := 7260, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good039_checked :
    goodSegmentCheck 182 60 129
      { lower := 7261, upper := 7434, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good040_checked :
    goodSegmentCheck 182 60 129
      { lower := 7435, upper := 7614, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good041_checked :
    goodSegmentCheck 182 60 129
      { lower := 7615, upper := 7788, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good042_checked :
    goodSegmentCheck 182 60 129
      { lower := 7789, upper := 7970, witness := RowWitness.topPrime 7789 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good043_checked :
    goodSegmentCheck 182 60 129
      { lower := 7971, upper := 8144, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good044_checked :
    goodSegmentCheck 182 60 129
      { lower := 8145, upper := 8304, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good045_checked :
    goodSegmentCheck 182 60 129
      { lower := 8305, upper := 8478, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good046_checked :
    goodSegmentCheck 182 60 129
      { lower := 8479, upper := 8648, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good047_checked :
    goodSegmentCheck 182 60 129
      { lower := 8649, upper := 8828, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good048_checked :
    goodSegmentCheck 182 60 129
      { lower := 8829, upper := 9002, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good049_checked :
    goodSegmentCheck 182 60 129
      { lower := 9003, upper := 9182, witness := RowWitness.topPrime 9001 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good050_checked :
    goodSegmentCheck 182 60 129
      { lower := 9183, upper := 9362, witness := RowWitness.topPrime 9181 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good051_checked :
    goodSegmentCheck 182 60 129
      { lower := 9363, upper := 9530, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good052_checked :
    goodSegmentCheck 182 60 129
      { lower := 9531, upper := 9702, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good053_checked :
    goodSegmentCheck 182 60 129
      { lower := 9703, upper := 9878, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good054_checked :
    goodSegmentCheck 182 60 129
      { lower := 9879, upper := 10052, witness := RowWitness.topPrime 9871 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good055_checked :
    goodSegmentCheck 182 60 129
      { lower := 10053, upper := 10220, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good056_checked :
    goodSegmentCheck 182 60 129
      { lower := 10221, upper := 10392, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good057_checked :
    goodSegmentCheck 182 60 129
      { lower := 10393, upper := 10572, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good058_checked :
    goodSegmentCheck 182 60 129
      { lower := 10573, upper := 10748, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good059_checked :
    goodSegmentCheck 182 60 129
      { lower := 10749, upper := 10920, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good060_checked :
    goodSegmentCheck 182 60 129
      { lower := 10921, upper := 11090, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good061_checked :
    goodSegmentCheck 182 60 129
      { lower := 11091, upper := 11268, witness := RowWitness.topPrime 11087 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good062_checked :
    goodSegmentCheck 182 60 129
      { lower := 11269, upper := 11442, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good063_checked :
    goodSegmentCheck 182 60 129
      { lower := 11443, upper := 11624, witness := RowWitness.topPrime 11443 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good064_checked :
    goodSegmentCheck 182 60 129
      { lower := 11625, upper := 11802, witness := RowWitness.topPrime 11621 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good065_checked :
    goodSegmentCheck 182 60 129
      { lower := 11803, upper := 11982, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good066_checked :
    goodSegmentCheck 182 60 129
      { lower := 11983, upper := 12162, witness := RowWitness.topPrime 11981 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good067_checked :
    goodSegmentCheck 182 60 129
      { lower := 12163, upper := 12344, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good068_checked :
    goodSegmentCheck 182 60 129
      { lower := 12345, upper := 12524, witness := RowWitness.topPrime 12343 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good069_checked :
    goodSegmentCheck 182 60 129
      { lower := 12525, upper := 12698, witness := RowWitness.topPrime 12517 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good070_checked :
    goodSegmentCheck 182 60 129
      { lower := 12699, upper := 12878, witness := RowWitness.topPrime 12697 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good071_checked :
    goodSegmentCheck 182 60 129
      { lower := 12879, upper := 13034, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good072_checked :
    goodSegmentCheck 182 60 129
      { lower := 13035, upper := 13214, witness := RowWitness.topPrime 13033 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good073_checked :
    goodSegmentCheck 182 60 129
      { lower := 13215, upper := 13368, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good074_checked :
    goodSegmentCheck 182 60 129
      { lower := 13369, upper := 13548, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good075_checked :
    goodSegmentCheck 182 60 129
      { lower := 13549, upper := 13718, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good076_checked :
    goodSegmentCheck 182 60 129
      { lower := 13719, upper := 13892, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good077_checked :
    goodSegmentCheck 182 60 129
      { lower := 13893, upper := 14064, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good078_checked :
    goodSegmentCheck 182 60 129
      { lower := 14065, upper := 14238, witness := RowWitness.topPrime 14057 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good079_checked :
    goodSegmentCheck 182 60 129
      { lower := 14239, upper := 14402, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good080_checked :
    goodSegmentCheck 182 60 129
      { lower := 14403, upper := 14582, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good081_checked :
    goodSegmentCheck 182 60 129
      { lower := 14583, upper := 14744, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good082_checked :
    goodSegmentCheck 182 60 129
      { lower := 14745, upper := 14922, witness := RowWitness.topPrime 14741 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good083_checked :
    goodSegmentCheck 182 60 129
      { lower := 14923, upper := 15104, witness := RowWitness.topPrime 14923 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good084_checked :
    goodSegmentCheck 182 60 129
      { lower := 15105, upper := 15282, witness := RowWitness.topPrime 15101 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good085_checked :
    goodSegmentCheck 182 60 129
      { lower := 15283, upper := 15458, witness := RowWitness.topPrime 15277 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good086_checked :
    goodSegmentCheck 182 60 129
      { lower := 15459, upper := 15632, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good087_checked :
    goodSegmentCheck 182 60 129
      { lower := 15633, upper := 15810, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good088_checked :
    goodSegmentCheck 182 60 129
      { lower := 15811, upper := 15990, witness := RowWitness.topPrime 15809 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good089_checked :
    goodSegmentCheck 182 60 129
      { lower := 15991, upper := 16172, witness := RowWitness.topPrime 15991 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good090_checked :
    goodSegmentCheck 182 60 129
      { lower := 16173, upper := 16322, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good091_checked :
    goodSegmentCheck 182 60 129
      { lower := 16323, upper := 16500, witness := RowWitness.topPrime 16319 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good092_checked :
    goodSegmentCheck 182 60 129
      { lower := 16501, upper := 16674, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good093_checked :
    goodSegmentCheck 182 60 129
      { lower := 16675, upper := 16854, witness := RowWitness.topPrime 16673 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good094_checked :
    goodSegmentCheck 182 60 129
      { lower := 16855, upper := 17024, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good095_checked :
    goodSegmentCheck 182 60 129
      { lower := 17025, upper := 17202, witness := RowWitness.topPrime 17021 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good096_checked :
    goodSegmentCheck 182 60 129
      { lower := 17203, upper := 17384, witness := RowWitness.topPrime 17203 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good097_checked :
    goodSegmentCheck 182 60 129
      { lower := 17385, upper := 17564, witness := RowWitness.topPrime 17383 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good098_checked :
    goodSegmentCheck 182 60 129
      { lower := 17565, upper := 17732, witness := RowWitness.topPrime 17551 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good099_checked :
    goodSegmentCheck 182 60 129
      { lower := 17733, upper := 17910, witness := RowWitness.topPrime 17729 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good100_checked :
    goodSegmentCheck 182 60 129
      { lower := 17911, upper := 18092, witness := RowWitness.topPrime 17911 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good101_checked :
    goodSegmentCheck 182 60 129
      { lower := 18093, upper := 18270, witness := RowWitness.topPrime 18089 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good102_checked :
    goodSegmentCheck 182 60 129
      { lower := 18271, upper := 18450, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good103_checked :
    goodSegmentCheck 182 60 129
      { lower := 18451, upper := 18632, witness := RowWitness.topPrime 18451 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good104_checked :
    goodSegmentCheck 182 60 129
      { lower := 18633, upper := 18798, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good105_checked :
    goodSegmentCheck 182 60 129
      { lower := 18799, upper := 18978, witness := RowWitness.topPrime 18797 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good106_checked :
    goodSegmentCheck 182 60 129
      { lower := 18979, upper := 19160, witness := RowWitness.topPrime 18979 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good107_checked :
    goodSegmentCheck 182 60 129
      { lower := 19161, upper := 19338, witness := RowWitness.topPrime 19157 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good108_checked :
    goodSegmentCheck 182 60 129
      { lower := 19339, upper := 19514, witness := RowWitness.topPrime 19333 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good109_checked :
    goodSegmentCheck 182 60 129
      { lower := 19515, upper := 19688, witness := RowWitness.topPrime 19507 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good110_checked :
    goodSegmentCheck 182 60 129
      { lower := 19689, upper := 19868, witness := RowWitness.topPrime 19687 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good111_checked :
    goodSegmentCheck 182 60 129
      { lower := 19869, upper := 20048, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good112_checked :
    goodSegmentCheck 182 60 129
      { lower := 20049, upper := 20228, witness := RowWitness.topPrime 20047 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good113_checked :
    goodSegmentCheck 182 60 129
      { lower := 20229, upper := 20400, witness := RowWitness.topPrime 20219 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good114_checked :
    goodSegmentCheck 182 60 129
      { lower := 20401, upper := 20580, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good115_checked :
    goodSegmentCheck 182 60 129
      { lower := 20581, upper := 20744, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good116_checked :
    goodSegmentCheck 182 60 129
      { lower := 20745, upper := 20924, witness := RowWitness.topPrime 20743 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good117_checked :
    goodSegmentCheck 182 60 129
      { lower := 20925, upper := 21102, witness := RowWitness.topPrime 20921 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good118_checked :
    goodSegmentCheck 182 60 129
      { lower := 21103, upper := 21282, witness := RowWitness.topPrime 21101 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good119_checked :
    goodSegmentCheck 182 60 129
      { lower := 21283, upper := 21464, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good120_checked :
    goodSegmentCheck 182 60 129
      { lower := 21465, upper := 21614, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good121_checked :
    goodSegmentCheck 182 60 129
      { lower := 21615, upper := 21794, witness := RowWitness.topPrime 21613 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good122_checked :
    goodSegmentCheck 182 60 129
      { lower := 21795, upper := 21968, witness := RowWitness.topPrime 21787 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good123_checked :
    goodSegmentCheck 182 60 129
      { lower := 21969, upper := 22142, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good124_checked :
    goodSegmentCheck 182 60 129
      { lower := 22143, upper := 22314, witness := RowWitness.topPrime 22133 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good125_checked :
    goodSegmentCheck 182 60 129
      { lower := 22315, upper := 22488, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good126_checked :
    goodSegmentCheck 182 60 129
      { lower := 22489, upper := 22664, witness := RowWitness.topPrime 22483 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good127_checked :
    goodSegmentCheck 182 60 129
      { lower := 22665, upper := 22832, witness := RowWitness.topPrime 22651 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good128_checked :
    goodSegmentCheck 182 60 129
      { lower := 22833, upper := 22998, witness := RowWitness.topPrime 22817 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good129_checked :
    goodSegmentCheck 182 60 129
      { lower := 22999, upper := 23174, witness := RowWitness.topPrime 22993 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good130_checked :
    goodSegmentCheck 182 60 129
      { lower := 23175, upper := 23354, witness := RowWitness.topPrime 23173 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good131_checked :
    goodSegmentCheck 182 60 129
      { lower := 23355, upper := 23520, witness := RowWitness.topPrime 23339 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good132_checked :
    goodSegmentCheck 182 60 129
      { lower := 23521, upper := 23690, witness := RowWitness.topPrime 23509 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good133_checked :
    goodSegmentCheck 182 60 129
      { lower := 23691, upper := 23870, witness := RowWitness.topPrime 23689 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good134_checked :
    goodSegmentCheck 182 60 129
      { lower := 23871, upper := 24050, witness := RowWitness.topPrime 23869 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good135_checked :
    goodSegmentCheck 182 60 129
      { lower := 24051, upper := 24230, witness := RowWitness.topPrime 24049 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good136_checked :
    goodSegmentCheck 182 60 129
      { lower := 24231, upper := 24410, witness := RowWitness.topPrime 24229 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good137_checked :
    goodSegmentCheck 182 60 129
      { lower := 24411, upper := 24588, witness := RowWitness.topPrime 24407 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good138_checked :
    goodSegmentCheck 182 60 129
      { lower := 24589, upper := 24752, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good139_checked :
    goodSegmentCheck 182 60 129
      { lower := 24753, upper := 24930, witness := RowWitness.topPrime 24749 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good140_checked :
    goodSegmentCheck 182 60 129
      { lower := 24931, upper := 25104, witness := RowWitness.topPrime 24923 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good141_checked :
    goodSegmentCheck 182 60 129
      { lower := 25105, upper := 25278, witness := RowWitness.topPrime 25097 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good142_checked :
    goodSegmentCheck 182 60 129
      { lower := 25279, upper := 25442, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good143_checked :
    goodSegmentCheck 182 60 129
      { lower := 25443, upper := 25620, witness := RowWitness.topPrime 25439 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good144_checked :
    goodSegmentCheck 182 60 129
      { lower := 25621, upper := 25802, witness := RowWitness.topPrime 25621 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good145_checked :
    goodSegmentCheck 182 60 129
      { lower := 25803, upper := 25982, witness := RowWitness.topPrime 25801 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good146_checked :
    goodSegmentCheck 182 60 129
      { lower := 25983, upper := 26162, witness := RowWitness.topPrime 25981 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good147_checked :
    goodSegmentCheck 182 60 129
      { lower := 26163, upper := 26342, witness := RowWitness.topPrime 26161 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good148_checked :
    goodSegmentCheck 182 60 129
      { lower := 26343, upper := 26520, witness := RowWitness.topPrime 26339 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good149_checked :
    goodSegmentCheck 182 60 129
      { lower := 26521, upper := 26694, witness := RowWitness.topPrime 26513 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good150_checked :
    goodSegmentCheck 182 60 129
      { lower := 26695, upper := 26874, witness := RowWitness.topPrime 26693 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good151_checked :
    goodSegmentCheck 182 60 129
      { lower := 26875, upper := 27044, witness := RowWitness.topPrime 26863 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good152_checked :
    goodSegmentCheck 182 60 129
      { lower := 27045, upper := 27224, witness := RowWitness.topPrime 27043 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good153_checked :
    goodSegmentCheck 182 60 129
      { lower := 27225, upper := 27392, witness := RowWitness.topPrime 27211 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good154_checked :
    goodSegmentCheck 182 60 129
      { lower := 27393, upper := 27548, witness := RowWitness.topPrime 27367 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good155_checked :
    goodSegmentCheck 182 60 129
      { lower := 27549, upper := 27722, witness := RowWitness.topPrime 27541 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good156_checked :
    goodSegmentCheck 182 60 129
      { lower := 27723, upper := 27882, witness := RowWitness.topPrime 27701 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good157_checked :
    goodSegmentCheck 182 60 129
      { lower := 27883, upper := 28064, witness := RowWitness.topPrime 27883 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good158_checked :
    goodSegmentCheck 182 60 129
      { lower := 28065, upper := 28238, witness := RowWitness.topPrime 28057 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good159_checked :
    goodSegmentCheck 182 60 129
      { lower := 28239, upper := 28410, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good160_checked :
    goodSegmentCheck 182 60 129
      { lower := 28411, upper := 28592, witness := RowWitness.topPrime 28411 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good161_checked :
    goodSegmentCheck 182 60 129
      { lower := 28593, upper := 28772, witness := RowWitness.topPrime 28591 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good162_checked :
    goodSegmentCheck 182 60 129
      { lower := 28773, upper := 28952, witness := RowWitness.topPrime 28771 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good163_checked :
    goodSegmentCheck 182 60 129
      { lower := 28953, upper := 29130, witness := RowWitness.topPrime 28949 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good164_checked :
    goodSegmentCheck 182 60 129
      { lower := 29131, upper := 29312, witness := RowWitness.topPrime 29131 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good165_checked :
    goodSegmentCheck 182 60 129
      { lower := 29313, upper := 29492, witness := RowWitness.topPrime 29311 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good166_checked :
    goodSegmentCheck 182 60 129
      { lower := 29493, upper := 29664, witness := RowWitness.topPrime 29483 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good167_checked :
    goodSegmentCheck 182 60 129
      { lower := 29665, upper := 29844, witness := RowWitness.topPrime 29663 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good168_checked :
    goodSegmentCheck 182 60 129
      { lower := 29845, upper := 30018, witness := RowWitness.topPrime 29837 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good169_checked :
    goodSegmentCheck 182 60 129
      { lower := 30019, upper := 30194, witness := RowWitness.topPrime 30013 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good170_checked :
    goodSegmentCheck 182 60 129
      { lower := 30195, upper := 30368, witness := RowWitness.topPrime 30187 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good171_checked :
    goodSegmentCheck 182 60 129
      { lower := 30369, upper := 30548, witness := RowWitness.topPrime 30367 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good172_checked :
    goodSegmentCheck 182 60 129
      { lower := 30549, upper := 30720, witness := RowWitness.topPrime 30539 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good173_checked :
    goodSegmentCheck 182 60 129
      { lower := 30721, upper := 30894, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good174_checked :
    goodSegmentCheck 182 60 129
      { lower := 30895, upper := 31074, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good175_checked :
    goodSegmentCheck 182 60 129
      { lower := 31075, upper := 31250, witness := RowWitness.topPrime 31069 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good176_checked :
    goodSegmentCheck 182 60 129
      { lower := 31251, upper := 31430, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good177_checked :
    goodSegmentCheck 182 60 129
      { lower := 31431, upper := 31578, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good178_checked :
    goodSegmentCheck 182 60 129
      { lower := 31579, upper := 31754, witness := RowWitness.topPrime 31573 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good179_checked :
    goodSegmentCheck 182 60 129
      { lower := 31755, upper := 31932, witness := RowWitness.topPrime 31751 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good180_checked :
    goodSegmentCheck 182 60 129
      { lower := 31933, upper := 32088, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good181_checked :
    goodSegmentCheck 182 60 129
      { lower := 32089, upper := 32270, witness := RowWitness.topPrime 32089 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good182_checked :
    goodSegmentCheck 182 60 129
      { lower := 32271, upper := 32442, witness := RowWitness.topPrime 32261 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good183_checked :
    goodSegmentCheck 182 60 129
      { lower := 32443, upper := 32624, witness := RowWitness.topPrime 32443 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good184_checked :
    goodSegmentCheck 182 60 129
      { lower := 32625, upper := 32802, witness := RowWitness.topPrime 32621 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good185_checked :
    goodSegmentCheck 182 60 129
      { lower := 32803, upper := 32949, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good186_checked :
    goodSegmentCheck 182 60 129
      { lower := 33614, upper := 33670, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good187_checked :
    goodSegmentCheck 182 60 129
      { lower := 33708, upper := 33795, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good188_checked :
    goodSegmentCheck 182 60 129
      { lower := 34322, upper := 34500, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good189_checked :
    goodSegmentCheck 182 60 129
      { lower := 34501, upper := 34572, witness := RowWitness.topPrime 34501 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good190_checked :
    goodSegmentCheck 182 60 129
      { lower := 36517, upper := 36678, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good191_checked :
    goodSegmentCheck 182 60 129
      { lower := 36679, upper := 36682, witness := RowWitness.topPrime 36677 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good192_checked :
    goodSegmentCheck 182 60 129
      { lower := 37303, upper := 37391, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good193_checked :
    goodSegmentCheck 182 60 129
      { lower := 37446, upper := 37484, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good194_checked :
    goodSegmentCheck 182 60 129
      { lower := 37500, upper := 37674, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good195_checked :
    goodSegmentCheck 182 60 129
      { lower := 37675, upper := 37719, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good196_checked :
    goodSegmentCheck 182 60 129
      { lower := 38307, upper := 38472, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good197_checked :
    goodSegmentCheck 182 60 129
      { lower := 39326, upper := 39504, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good198_checked :
    goodSegmentCheck 182 60 129
      { lower := 39505, upper := 39507, witness := RowWitness.topPrime 39503 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good199_checked :
    goodSegmentCheck 182 60 129
      { lower := 40401, upper := 40509, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good200_checked :
    goodSegmentCheck 182 60 129
      { lower := 40804, upper := 40806, witness := RowWitness.topPrime 40801 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good201_checked :
    goodSegmentCheck 182 60 129
      { lower := 40931, upper := 41108, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good202_checked :
    goodSegmentCheck 182 60 129
      { lower := 41109, upper := 41112, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good203_checked :
    goodSegmentCheck 182 60 129
      { lower := 41334, upper := 41335, witness := RowWitness.topPrime 41333 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good204_checked :
    goodSegmentCheck 182 60 129
      { lower := 43750, upper := 43868, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good205_checked :
    goodSegmentCheck 182 60 129
      { lower := 43923, upper := 43931, witness := RowWitness.topPrime 43913 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good206_checked :
    goodSegmentCheck 182 60 129
      { lower := 45369, upper := 45434, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good207_checked :
    goodSegmentCheck 182 60 129
      { lower := 45927, upper := 45977, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good208_checked :
    goodSegmentCheck 182 60 129
      { lower := 47045, upper := 47056, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good209_checked :
    goodSegmentCheck 182 60 129
      { lower := 47526, upper := 47702, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good210_checked :
    goodSegmentCheck 182 60 129
      { lower := 47703, upper := 47705, witness := RowWitness.topPrime 47701 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good211_checked :
    goodSegmentCheck 182 60 129
      { lower := 48013, upper := 48142, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good212_checked :
    goodSegmentCheck 182 60 129
      { lower := 48373, upper := 48552, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good213_checked :
    goodSegmentCheck 182 60 129
      { lower := 48553, upper := 48554, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good214_checked :
    goodSegmentCheck 182 60 129
      { lower := 48734, upper := 48914, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good215_checked :
    goodSegmentCheck 182 60 129
      { lower := 48915, upper := 48915, witness := RowWitness.topPrime 48907 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good216_checked :
    goodSegmentCheck 182 60 129
      { lower := 49152, upper := 49320, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good217_checked :
    goodSegmentCheck 182 60 129
      { lower := 49321, upper := 49333, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good218_checked :
    goodSegmentCheck 182 60 129
      { lower := 49379, upper := 49479, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good219_checked :
    goodSegmentCheck 182 60 129
      { lower := 51076, upper := 51186, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good220_checked :
    goodSegmentCheck 182 60 129
      { lower := 52215, upper := 52275, witness := RowWitness.topPrime 52201 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good221_checked :
    goodSegmentCheck 182 60 129
      { lower := 53138, upper := 53226, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good222_checked :
    goodSegmentCheck 182 60 129
      { lower := 53290, upper := 53319, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good223_checked :
    goodSegmentCheck 182 60 129
      { lower := 54043, upper := 54049, witness := RowWitness.topPrime 54037 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good224_checked :
    goodSegmentCheck 182 60 129
      { lower := 55451, upper := 55622, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good225_checked :
    goodSegmentCheck 182 60 129
      { lower := 55623, upper := 55628, witness := RowWitness.topPrime 55621 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good226_checked :
    goodSegmentCheck 182 60 129
      { lower := 55815, upper := 55959, witness := RowWitness.topPrime 55813 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good227_checked :
    goodSegmentCheck 182 60 129
      { lower := 56307, upper := 56350, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good228_checked :
    goodSegmentCheck 182 60 129
      { lower := 56454, upper := 56488, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good229_checked :
    goodSegmentCheck 182 60 129
      { lower := 57344, upper := 57426, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good230_checked :
    goodSegmentCheck 182 60 129
      { lower := 58619, upper := 58745, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good231_checked :
    goodSegmentCheck 182 60 129
      { lower := 59049, upper := 59137, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good232_checked :
    goodSegmentCheck 182 60 129
      { lower := 59582, upper := 59586, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good233_checked :
    goodSegmentCheck 182 60 129
      { lower := 62500, upper := 62591, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good234_checked :
    goodSegmentCheck 182 60 129
      { lower := 63869, upper := 64044, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good235_checked :
    goodSegmentCheck 182 60 129
      { lower := 64045, upper := 64050, witness := RowWitness.topPrime 64037 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good236_checked :
    goodSegmentCheck 182 60 129
      { lower := 64082, upper := 64129, witness := RowWitness.topPrime 64081 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good237_checked :
    goodSegmentCheck 182 60 129
      { lower := 65533, upper := 65702, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good238_checked :
    goodSegmentCheck 182 60 129
      { lower := 65703, upper := 65717, witness := RowWitness.topPrime 65701 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good239_checked :
    goodSegmentCheck 182 60 129
      { lower := 68644, upper := 68820, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good240_checked :
    goodSegmentCheck 182 60 129
      { lower := 68821, upper := 68832, witness := RowWitness.topPrime 68821 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good241_checked :
    goodSegmentCheck 182 60 129
      { lower := 68921, upper := 69071, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good242_checked :
    goodSegmentCheck 182 60 129
      { lower := 71289, upper := 71468, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good243_checked :
    goodSegmentCheck 182 60 129
      { lower := 71469, upper := 71470, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good244_checked :
    goodSegmentCheck 182 60 129
      { lower := 73167, upper := 73183, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good245_checked :
    goodSegmentCheck 182 60 129
      { lower := 73205, upper := 73348, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good246_checked :
    goodSegmentCheck 182 60 129
      { lower := 75449, upper := 75453, witness := RowWitness.topPrime 75437 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good247_checked :
    goodSegmentCheck 182 60 129
      { lower := 83667, upper := 83702, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good248_checked :
    goodSegmentCheck 182 60 129
      { lower := 89383, upper := 89554, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good249_checked :
    goodSegmentCheck 182 60 129
      { lower := 93845, upper := 93931, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good250_checked :
    goodSegmentCheck 182 60 129
      { lower := 96774, upper := 96786, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good251_checked :
    goodSegmentCheck 182 60 129
      { lower := 98304, upper := 98480, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good252_checked :
    goodSegmentCheck 182 60 129
      { lower := 98481, upper := 98485, witness := RowWitness.topPrime 98479 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good253_checked :
    goodSegmentCheck 182 60 129
      { lower := 98596, upper := 98596, witness := RowWitness.topPrime 98573 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good254_checked :
    goodSegmentCheck 182 60 129
      { lower := 102152, upper := 102191, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good255_checked :
    goodSegmentCheck 182 60 129
      { lower := 103041, upper := 103147, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good256_checked :
    goodSegmentCheck 182 60 129
      { lower := 109503, upper := 109556, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good257_checked :
    goodSegmentCheck 182 60 129
      { lower := 131072, upper := 131225, witness := RowWitness.topPrime 131071 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good258_checked :
    goodSegmentCheck 182 60 129
      { lower := 137842, upper := 137962, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good259_checked :
    goodSegmentCheck 182 60 129
      { lower := 148955, upper := 149058, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good260_checked :
    goodSegmentCheck 182 60 129
      { lower := 195223, upper := 195293, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good261_checked :
    goodSegmentCheck 182 60 129
      { lower := 196608, upper := 196747, witness := RowWitness.topPrime 196597 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good262_checked :
    goodSegmentCheck 182 60 129
      { lower := 262144, upper := 262269, witness := RowWitness.topPrime 262139 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good262_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_goods_checked :
    row182.goods.all (goodSegmentCheck row182.height.i row182.height.r row182.height.s) = true := by
  change row182_goods.all (goodSegmentCheck 182 60 129) = true
  simp only [row182_goods, List.all_cons, List.all_nil,
    row182_good000_checked,
    row182_good001_checked,
    row182_good002_checked,
    row182_good003_checked,
    row182_good004_checked,
    row182_good005_checked,
    row182_good006_checked,
    row182_good007_checked,
    row182_good008_checked,
    row182_good009_checked,
    row182_good010_checked,
    row182_good011_checked,
    row182_good012_checked,
    row182_good013_checked,
    row182_good014_checked,
    row182_good015_checked,
    row182_good016_checked,
    row182_good017_checked,
    row182_good018_checked,
    row182_good019_checked,
    row182_good020_checked,
    row182_good021_checked,
    row182_good022_checked,
    row182_good023_checked,
    row182_good024_checked,
    row182_good025_checked,
    row182_good026_checked,
    row182_good027_checked,
    row182_good028_checked,
    row182_good029_checked,
    row182_good030_checked,
    row182_good031_checked,
    row182_good032_checked,
    row182_good033_checked,
    row182_good034_checked,
    row182_good035_checked,
    row182_good036_checked,
    row182_good037_checked,
    row182_good038_checked,
    row182_good039_checked,
    row182_good040_checked,
    row182_good041_checked,
    row182_good042_checked,
    row182_good043_checked,
    row182_good044_checked,
    row182_good045_checked,
    row182_good046_checked,
    row182_good047_checked,
    row182_good048_checked,
    row182_good049_checked,
    row182_good050_checked,
    row182_good051_checked,
    row182_good052_checked,
    row182_good053_checked,
    row182_good054_checked,
    row182_good055_checked,
    row182_good056_checked,
    row182_good057_checked,
    row182_good058_checked,
    row182_good059_checked,
    row182_good060_checked,
    row182_good061_checked,
    row182_good062_checked,
    row182_good063_checked,
    row182_good064_checked,
    row182_good065_checked,
    row182_good066_checked,
    row182_good067_checked,
    row182_good068_checked,
    row182_good069_checked,
    row182_good070_checked,
    row182_good071_checked,
    row182_good072_checked,
    row182_good073_checked,
    row182_good074_checked,
    row182_good075_checked,
    row182_good076_checked,
    row182_good077_checked,
    row182_good078_checked,
    row182_good079_checked,
    row182_good080_checked,
    row182_good081_checked,
    row182_good082_checked,
    row182_good083_checked,
    row182_good084_checked,
    row182_good085_checked,
    row182_good086_checked,
    row182_good087_checked,
    row182_good088_checked,
    row182_good089_checked,
    row182_good090_checked,
    row182_good091_checked,
    row182_good092_checked,
    row182_good093_checked,
    row182_good094_checked,
    row182_good095_checked,
    row182_good096_checked,
    row182_good097_checked,
    row182_good098_checked,
    row182_good099_checked,
    row182_good100_checked,
    row182_good101_checked,
    row182_good102_checked,
    row182_good103_checked,
    row182_good104_checked,
    row182_good105_checked,
    row182_good106_checked,
    row182_good107_checked,
    row182_good108_checked,
    row182_good109_checked,
    row182_good110_checked,
    row182_good111_checked,
    row182_good112_checked,
    row182_good113_checked,
    row182_good114_checked,
    row182_good115_checked,
    row182_good116_checked,
    row182_good117_checked,
    row182_good118_checked,
    row182_good119_checked,
    row182_good120_checked,
    row182_good121_checked,
    row182_good122_checked,
    row182_good123_checked,
    row182_good124_checked,
    row182_good125_checked,
    row182_good126_checked,
    row182_good127_checked,
    row182_good128_checked,
    row182_good129_checked,
    row182_good130_checked,
    row182_good131_checked,
    row182_good132_checked,
    row182_good133_checked,
    row182_good134_checked,
    row182_good135_checked,
    row182_good136_checked,
    row182_good137_checked,
    row182_good138_checked,
    row182_good139_checked,
    row182_good140_checked,
    row182_good141_checked,
    row182_good142_checked,
    row182_good143_checked,
    row182_good144_checked,
    row182_good145_checked,
    row182_good146_checked,
    row182_good147_checked,
    row182_good148_checked,
    row182_good149_checked,
    row182_good150_checked,
    row182_good151_checked,
    row182_good152_checked,
    row182_good153_checked,
    row182_good154_checked,
    row182_good155_checked,
    row182_good156_checked,
    row182_good157_checked,
    row182_good158_checked,
    row182_good159_checked,
    row182_good160_checked,
    row182_good161_checked,
    row182_good162_checked,
    row182_good163_checked,
    row182_good164_checked,
    row182_good165_checked,
    row182_good166_checked,
    row182_good167_checked,
    row182_good168_checked,
    row182_good169_checked,
    row182_good170_checked,
    row182_good171_checked,
    row182_good172_checked,
    row182_good173_checked,
    row182_good174_checked,
    row182_good175_checked,
    row182_good176_checked,
    row182_good177_checked,
    row182_good178_checked,
    row182_good179_checked,
    row182_good180_checked,
    row182_good181_checked,
    row182_good182_checked,
    row182_good183_checked,
    row182_good184_checked,
    row182_good185_checked,
    row182_good186_checked,
    row182_good187_checked,
    row182_good188_checked,
    row182_good189_checked,
    row182_good190_checked,
    row182_good191_checked,
    row182_good192_checked,
    row182_good193_checked,
    row182_good194_checked,
    row182_good195_checked,
    row182_good196_checked,
    row182_good197_checked,
    row182_good198_checked,
    row182_good199_checked,
    row182_good200_checked,
    row182_good201_checked,
    row182_good202_checked,
    row182_good203_checked,
    row182_good204_checked,
    row182_good205_checked,
    row182_good206_checked,
    row182_good207_checked,
    row182_good208_checked,
    row182_good209_checked,
    row182_good210_checked,
    row182_good211_checked,
    row182_good212_checked,
    row182_good213_checked,
    row182_good214_checked,
    row182_good215_checked,
    row182_good216_checked,
    row182_good217_checked,
    row182_good218_checked,
    row182_good219_checked,
    row182_good220_checked,
    row182_good221_checked,
    row182_good222_checked,
    row182_good223_checked,
    row182_good224_checked,
    row182_good225_checked,
    row182_good226_checked,
    row182_good227_checked,
    row182_good228_checked,
    row182_good229_checked,
    row182_good230_checked,
    row182_good231_checked,
    row182_good232_checked,
    row182_good233_checked,
    row182_good234_checked,
    row182_good235_checked,
    row182_good236_checked,
    row182_good237_checked,
    row182_good238_checked,
    row182_good239_checked,
    row182_good240_checked,
    row182_good241_checked,
    row182_good242_checked,
    row182_good243_checked,
    row182_good244_checked,
    row182_good245_checked,
    row182_good246_checked,
    row182_good247_checked,
    row182_good248_checked,
    row182_good249_checked,
    row182_good250_checked,
    row182_good251_checked,
    row182_good252_checked,
    row182_good253_checked,
    row182_good254_checked,
    row182_good255_checked,
    row182_good256_checked,
    row182_good257_checked,
    row182_good258_checked,
    row182_good259_checked,
    row182_good260_checked,
    row182_good261_checked,
    row182_good262_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_registered :
    decide (row182.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row182_small_checked :
    coverCheck (2 * row182.height.i + 2) (row182.height.i * (row182.height.i - 1) - 1)
      (row182.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row182_layerCover_checked :
    coverCheck (row182.height.i * (row182.height.i - 1)) (row182.height.n0 - 1)
      (row182.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row182_bounds : List NatInterval :=
  [(366, 540), (541, 722), (723, 900), (901, 1068), (1069, 1250), (1251, 1430), (1431, 1610), (1611, 1790), (1791, 1970), (1971, 2132), (2133, 2312), (2313, 2492), (2493, 2658), (2659, 2840), (2841, 3018), (3019, 3200), (3201, 3372), (3373, 3554), (3555, 3728), (3729, 3908), (3909, 4088), (4089, 4260), (4261, 4442), (4443, 4622), (4623, 4802), (4803, 4982), (4983, 5154), (5155, 5334), (5335, 5514), (5515, 5688), (5689, 5870), (5871, 6050), (6051, 6228), (6229, 6410), (6411, 6578), (6579, 6758), (6759, 6918), (6919, 7098), (7099, 7260), (7261, 7434), (7435, 7614), (7615, 7788), (7789, 7970), (7971, 8144), (8145, 8304), (8305, 8478), (8479, 8648), (8649, 8828), (8829, 9002), (9003, 9182), (9183, 9362), (9363, 9530), (9531, 9702), (9703, 9878), (9879, 10052), (10053, 10220), (10221, 10392), (10393, 10572), (10573, 10748), (10749, 10920), (10921, 11090), (11091, 11268), (11269, 11442), (11443, 11624), (11625, 11802), (11803, 11982), (11983, 12162), (12163, 12344), (12345, 12524), (12525, 12698), (12699, 12878), (12879, 13034), (13035, 13214), (13215, 13368), (13369, 13548), (13549, 13718), (13719, 13892), (13893, 14064), (14065, 14238), (14239, 14402), (14403, 14582), (14583, 14744), (14745, 14922), (14923, 15104), (15105, 15282), (15283, 15458), (15459, 15632), (15633, 15810), (15811, 15990), (15991, 16172), (16173, 16322), (16323, 16500), (16501, 16674), (16675, 16854), (16855, 17024), (17025, 17202), (17203, 17384), (17385, 17564), (17565, 17732), (17733, 17910), (17911, 18092), (18093, 18270), (18271, 18450), (18451, 18632), (18633, 18798), (18799, 18978), (18979, 19160), (19161, 19338), (19339, 19514), (19515, 19688), (19689, 19868), (19869, 20048), (20049, 20228), (20229, 20400), (20401, 20580), (20581, 20744), (20745, 20924), (20925, 21102), (21103, 21282), (21283, 21464), (21465, 21614), (21615, 21794), (21795, 21968), (21969, 22142), (22143, 22314), (22315, 22488), (22489, 22664), (22665, 22832), (22833, 22998), (22999, 23174), (23175, 23354), (23355, 23520), (23521, 23690), (23691, 23870), (23871, 24050), (24051, 24230), (24231, 24410), (24411, 24588), (24589, 24752), (24753, 24930), (24931, 25104), (25105, 25278), (25279, 25442), (25443, 25620), (25621, 25802), (25803, 25982), (25983, 26162), (26163, 26342), (26343, 26520), (26521, 26694), (26695, 26874), (26875, 27044), (27045, 27224), (27225, 27392), (27393, 27548), (27549, 27722), (27723, 27882), (27883, 28064), (28065, 28238), (28239, 28410), (28411, 28592), (28593, 28772), (28773, 28952), (28953, 29130), (29131, 29312), (29313, 29492), (29493, 29664), (29665, 29844), (29845, 30018), (30019, 30194), (30195, 30368), (30369, 30548), (30549, 30720), (30721, 30894), (30895, 31074), (31075, 31250), (31251, 31430), (31431, 31578), (31579, 31754), (31755, 31932), (31933, 32088), (32089, 32270), (32271, 32442), (32443, 32624), (32625, 32802), (32803, 32949), (33614, 33670), (33708, 33795), (34322, 34500), (34501, 34572), (36517, 36678), (36679, 36682), (37303, 37391), (37446, 37484), (37500, 37674), (37675, 37719), (38307, 38472), (39326, 39504), (39505, 39507), (40401, 40509), (40804, 40806), (40931, 41108), (41109, 41112), (41334, 41335), (43750, 43868), (43923, 43931), (45369, 45434), (45927, 45977), (47045, 47056), (47526, 47702), (47703, 47705), (48013, 48142), (48373, 48552), (48553, 48554), (48734, 48914), (48915, 48915), (49152, 49320), (49321, 49333), (49379, 49479), (51076, 51186), (52215, 52275), (53138, 53226), (53290, 53319), (54043, 54049), (55451, 55622), (55623, 55628), (55815, 55959), (56307, 56350), (56454, 56488), (57344, 57426), (58619, 58745), (59049, 59137), (59582, 59586), (62500, 62591), (63869, 64044), (64045, 64050), (64082, 64129), (65533, 65702), (65703, 65717), (68644, 68820), (68821, 68832), (68921, 69071), (71289, 71468), (71469, 71470), (73167, 73183), (73205, 73348), (75449, 75453), (83667, 83702), (89383, 89554), (93845, 93931), (96774, 96786), (98304, 98480), (98481, 98485), (98596, 98596), (102152, 102191), (103041, 103147), (109503, 109556), (131072, 131225), (137842, 137962), (148955, 149058), (195223, 195293), (196608, 196747), (262144, 262269)]

theorem row182_bounds_eq : row182.goods.map goodSegmentBounds = row182_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row182_layer000_intervals : List ColouredInterval :=
  [(2, 32942, 32949), (2, 40960, 41141), (2, 49152, 49333), (2, 57344, 57525), (2, 32942, 32949), (2, 49152, 49333), (2, 65536, 65717), (2, 32942, 32949), (2, 65536, 65717), (2, 65536, 65717), (3, 32942, 32986), (3, 32942, 32986), (3, 39366, 39547), (3, 45927, 46108), (3, 52488, 52669), (3, 59049, 59230), (3, 65610, 65791), (3, 39366, 39547), (3, 59049, 59230), (3, 59049, 59230), (5, 34375, 34556), (5, 37500, 37681), (5, 40625, 40806), (5, 43750, 43931), (5, 46875, 47056), (5, 46875, 47056), (5, 62500, 62681), (7, 33614, 33795), (11, 43923, 44104), (11, 58564, 58745), (17, 34391, 34572), (17, 39304, 39485), (17, 44217, 44398), (17, 49130, 49311), (17, 54043, 54224), (17, 58956, 59137), (17, 63869, 64050), (19, 34295, 34476), (19, 41154, 41335), (19, 48013, 48194), (19, 54872, 55053), (19, 61731, 61912), (23, 36501, 36682), (23, 48668, 48849), (23, 60835, 61016), (29, 48778, 48959), (31, 59582, 59763), (37, 50653, 50834), (47, 33135, 33316), (53, 33708, 33889), (53, 36517, 36698), (53, 39326, 39507), (53, 42135, 42316), (59, 34810, 34991), (59, 38291, 38472), (59, 41772, 41953), (59, 45253, 45434), (59, 48734, 48915), (59, 52215, 52396), (61, 33489, 33670), (61, 37210, 37391), (61, 40931, 41112), (61, 44652, 44833), (61, 48373, 48554), (61, 52094, 52275), (61, 55815, 55996), (67, 35912, 36093), (67, 40401, 40582), (67, 44890, 45071), (67, 49379, 49560), (67, 53868, 54049), (67, 58357, 58538), (67, 62846, 63027), (71, 35287, 35468), (71, 40328, 40509), (71, 45369, 45550), (71, 50410, 50591), (71, 55451, 55632), (71, 60492, 60673), (71, 65533, 65714), (73, 37303, 37484), (73, 42632, 42813), (73, 47961, 48142), (73, 53290, 53471), (73, 58619, 58800), (73, 63948, 64129), (79, 37446, 37627), (79, 43687, 43868), (79, 49928, 50109), (79, 56169, 56350), (79, 62410, 62591), (83, 34445, 34626), (83, 41334, 41515), (83, 48223, 48404), (83, 55112, 55293), (83, 62001, 62182), (89, 39605, 39786), (89, 47526, 47707), (89, 55447, 55628), (89, 63368, 63549), (97, 37636, 37817), (97, 47045, 47226), (97, 56454, 56635), (97, 65863, 65883), (101, 40804, 40985), (101, 51005, 51186), (101, 61206, 61387), (103, 42436, 42617), (103, 53045, 53226), (103, 63654, 63835), (107, 34347, 34528), (107, 45796, 45977), (107, 57245, 57426), (109, 35643, 35824), (109, 47524, 47705), (109, 59405, 59586), (113, 38307, 38488), (113, 51076, 51257), (113, 63845, 64026), (127, 48387, 48568), (127, 64516, 64697), (131, 34322, 34503), (131, 51483, 51664), (137, 37538, 37719), (137, 56307, 56488), (139, 38642, 38823), (139, 57963, 58144), (149, 44402, 44583), (151, 45602, 45783), (157, 49298, 49479), (163, 53138, 53319), (167, 55778, 55959), (173, 59858, 60039), (179, 64082, 64263), (181, 32942, 32942), (181, 65522, 65703)]

def row182_layer000_block000 : List ColouredInterval :=
  [(2, 32942, 32949), (2, 40960, 41141), (2, 49152, 49333), (2, 57344, 57525), (2, 32942, 32949), (2, 49152, 49333), (2, 65536, 65717), (2, 32942, 32949), (2, 65536, 65717), (2, 65536, 65717), (3, 32942, 32986), (3, 32942, 32986), (3, 39366, 39547), (3, 45927, 46108), (3, 52488, 52669)]

def row182_layer000_block001 : List ColouredInterval :=
  [(3, 59049, 59230), (3, 65610, 65791), (3, 39366, 39547), (3, 59049, 59230), (3, 59049, 59230), (5, 34375, 34556), (5, 37500, 37681), (5, 40625, 40806), (5, 43750, 43931), (5, 46875, 47056), (5, 46875, 47056), (5, 62500, 62681), (7, 33614, 33795), (11, 43923, 44104), (11, 58564, 58745)]

def row182_layer000_block002 : List ColouredInterval :=
  [(17, 34391, 34572), (17, 39304, 39485), (17, 44217, 44398), (17, 49130, 49311), (17, 54043, 54224), (17, 58956, 59137), (17, 63869, 64050), (19, 34295, 34476), (19, 41154, 41335), (19, 48013, 48194), (19, 54872, 55053), (19, 61731, 61912), (23, 36501, 36682), (23, 48668, 48849), (23, 60835, 61016)]

def row182_layer000_block003 : List ColouredInterval :=
  [(29, 48778, 48959), (31, 59582, 59763), (37, 50653, 50834), (47, 33135, 33316), (53, 33708, 33889), (53, 36517, 36698), (53, 39326, 39507), (53, 42135, 42316), (59, 34810, 34991), (59, 38291, 38472), (59, 41772, 41953), (59, 45253, 45434), (59, 48734, 48915), (59, 52215, 52396), (61, 33489, 33670)]

def row182_layer000_block004 : List ColouredInterval :=
  [(61, 37210, 37391), (61, 40931, 41112), (61, 44652, 44833), (61, 48373, 48554), (61, 52094, 52275), (61, 55815, 55996), (67, 35912, 36093), (67, 40401, 40582), (67, 44890, 45071), (67, 49379, 49560), (67, 53868, 54049), (67, 58357, 58538), (67, 62846, 63027), (71, 35287, 35468), (71, 40328, 40509)]

def row182_layer000_block005 : List ColouredInterval :=
  [(71, 45369, 45550), (71, 50410, 50591), (71, 55451, 55632), (71, 60492, 60673), (71, 65533, 65714), (73, 37303, 37484), (73, 42632, 42813), (73, 47961, 48142), (73, 53290, 53471), (73, 58619, 58800), (73, 63948, 64129), (79, 37446, 37627), (79, 43687, 43868), (79, 49928, 50109), (79, 56169, 56350)]

def row182_layer000_block006 : List ColouredInterval :=
  [(79, 62410, 62591), (83, 34445, 34626), (83, 41334, 41515), (83, 48223, 48404), (83, 55112, 55293), (83, 62001, 62182), (89, 39605, 39786), (89, 47526, 47707), (89, 55447, 55628), (89, 63368, 63549), (97, 37636, 37817), (97, 47045, 47226), (97, 56454, 56635), (97, 65863, 65883), (101, 40804, 40985)]

def row182_layer000_block007 : List ColouredInterval :=
  [(101, 51005, 51186), (101, 61206, 61387), (103, 42436, 42617), (103, 53045, 53226), (103, 63654, 63835), (107, 34347, 34528), (107, 45796, 45977), (107, 57245, 57426), (109, 35643, 35824), (109, 47524, 47705), (109, 59405, 59586), (113, 38307, 38488), (113, 51076, 51257), (113, 63845, 64026), (127, 48387, 48568)]

def row182_layer000_block008 : List ColouredInterval :=
  [(127, 64516, 64697), (131, 34322, 34503), (131, 51483, 51664), (137, 37538, 37719), (137, 56307, 56488), (139, 38642, 38823), (139, 57963, 58144), (149, 44402, 44583), (151, 45602, 45783), (157, 49298, 49479), (163, 53138, 53319), (167, 55778, 55959), (173, 59858, 60039), (179, 64082, 64263), (181, 32942, 32942)]

def row182_layer000_block009 : List ColouredInterval :=
  [(181, 65522, 65703)]

def row182_layer000_chunks : List (List ColouredInterval) :=
  [row182_layer000_block000, row182_layer000_block001, row182_layer000_block002, row182_layer000_block003, row182_layer000_block004, row182_layer000_block005, row182_layer000_block006, row182_layer000_block007, row182_layer000_block008, row182_layer000_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_arithmetic : LayerArithmeticValid row182.height { lower := 32942, upper := 65884, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_enumeration :
    activePowerIntervalList 182 15 32942 65884 = row182_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs000 :
    row182_layer000_block000.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs001 :
    row182_layer000_block001.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs002 :
    row182_layer000_block002.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs003 :
    row182_layer000_block003.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs004 :
    row182_layer000_block004.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs005 :
    row182_layer000_block005.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs006 :
    row182_layer000_block006.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs007 :
    row182_layer000_block007.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs007
