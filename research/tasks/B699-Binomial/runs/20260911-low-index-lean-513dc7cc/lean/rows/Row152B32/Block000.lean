import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row152_height : HeightCertificateDatum := { i := 152, r := 50, s := 107, n0Power10 := 8 }

def row152_goods : List GoodSegment := [
  { lower := 306, upper := 444, witness := RowWitness.topPrime 293 },
  { lower := 445, upper := 594, witness := RowWitness.topPrime 443 },
  { lower := 595, upper := 744, witness := RowWitness.topPrime 593 },
  { lower := 745, upper := 894, witness := RowWitness.topPrime 743 },
  { lower := 895, upper := 1038, witness := RowWitness.topPrime 887 },
  { lower := 1039, upper := 1190, witness := RowWitness.topPrime 1039 },
  { lower := 1191, upper := 1338, witness := RowWitness.topPrime 1187 },
  { lower := 1339, upper := 1478, witness := RowWitness.topPrime 1327 },
  { lower := 1479, upper := 1622, witness := RowWitness.topPrime 1471 },
  { lower := 1623, upper := 1772, witness := RowWitness.topPrime 1621 },
  { lower := 1773, upper := 1910, witness := RowWitness.topPrime 1759 },
  { lower := 1911, upper := 2058, witness := RowWitness.topPrime 1907 },
  { lower := 2059, upper := 2204, witness := RowWitness.topPrime 2053 },
  { lower := 2205, upper := 2354, witness := RowWitness.topPrime 2203 },
  { lower := 2355, upper := 2502, witness := RowWitness.topPrime 2351 },
  { lower := 2503, upper := 2654, witness := RowWitness.topPrime 2503 },
  { lower := 2655, upper := 2798, witness := RowWitness.topPrime 2647 },
  { lower := 2799, upper := 2948, witness := RowWitness.topPrime 2797 },
  { lower := 2949, upper := 3090, witness := RowWitness.topPrime 2939 },
  { lower := 3091, upper := 3240, witness := RowWitness.topPrime 3089 },
  { lower := 3241, upper := 3380, witness := RowWitness.topPrime 3229 },
  { lower := 3381, upper := 3524, witness := RowWitness.topPrime 3373 },
  { lower := 3525, upper := 3668, witness := RowWitness.topPrime 3517 },
  { lower := 3669, upper := 3810, witness := RowWitness.topPrime 3659 },
  { lower := 3811, upper := 3954, witness := RowWitness.topPrime 3803 },
  { lower := 3955, upper := 4098, witness := RowWitness.topPrime 3947 },
  { lower := 4099, upper := 4250, witness := RowWitness.topPrime 4099 },
  { lower := 4251, upper := 4394, witness := RowWitness.topPrime 4243 },
  { lower := 4395, upper := 4542, witness := RowWitness.topPrime 4391 },
  { lower := 4543, upper := 4674, witness := RowWitness.topPrime 4523 },
  { lower := 4675, upper := 4824, witness := RowWitness.topPrime 4673 },
  { lower := 4825, upper := 4968, witness := RowWitness.topPrime 4817 },
  { lower := 4969, upper := 5120, witness := RowWitness.topPrime 4969 },
  { lower := 5121, upper := 5270, witness := RowWitness.topPrime 5119 },
  { lower := 5271, upper := 5412, witness := RowWitness.topPrime 5261 },
  { lower := 5413, upper := 5564, witness := RowWitness.topPrime 5413 },
  { lower := 5565, upper := 5714, witness := RowWitness.topPrime 5563 },
  { lower := 5715, upper := 5862, witness := RowWitness.topPrime 5711 },
  { lower := 5863, upper := 6012, witness := RowWitness.topPrime 5861 },
  { lower := 6013, upper := 6162, witness := RowWitness.topPrime 6011 },
  { lower := 6163, upper := 6314, witness := RowWitness.topPrime 6163 },
  { lower := 6315, upper := 6462, witness := RowWitness.topPrime 6311 },
  { lower := 6463, upper := 6602, witness := RowWitness.topPrime 6451 },
  { lower := 6603, upper := 6750, witness := RowWitness.topPrime 6599 },
  { lower := 6751, upper := 6888, witness := RowWitness.topPrime 6737 },
  { lower := 6889, upper := 7034, witness := RowWitness.topPrime 6883 },
  { lower := 7035, upper := 7178, witness := RowWitness.topPrime 7027 },
  { lower := 7179, upper := 7328, witness := RowWitness.topPrime 7177 },
  { lower := 7329, upper := 7472, witness := RowWitness.topPrime 7321 },
  { lower := 7473, upper := 7610, witness := RowWitness.topPrime 7459 },
  { lower := 7611, upper := 7758, witness := RowWitness.topPrime 7607 },
  { lower := 7759, upper := 7910, witness := RowWitness.topPrime 7759 },
  { lower := 7911, upper := 8058, witness := RowWitness.topPrime 7907 },
  { lower := 8059, upper := 8210, witness := RowWitness.topPrime 8059 },
  { lower := 8211, upper := 8360, witness := RowWitness.topPrime 8209 },
  { lower := 8361, upper := 8504, witness := RowWitness.topPrime 8353 },
  { lower := 8505, upper := 8652, witness := RowWitness.topPrime 8501 },
  { lower := 8653, upper := 8798, witness := RowWitness.topPrime 8647 },
  { lower := 8799, upper := 8934, witness := RowWitness.topPrime 8783 },
  { lower := 8935, upper := 9084, witness := RowWitness.topPrime 8933 },
  { lower := 9085, upper := 9218, witness := RowWitness.topPrime 9067 },
  { lower := 9219, upper := 9360, witness := RowWitness.topPrime 9209 },
  { lower := 9361, upper := 9500, witness := RowWitness.topPrime 9349 },
  { lower := 9501, upper := 9648, witness := RowWitness.topPrime 9497 },
  { lower := 9649, upper := 9800, witness := RowWitness.topPrime 9649 },
  { lower := 9801, upper := 9942, witness := RowWitness.topPrime 9791 },
  { lower := 9943, upper := 10092, witness := RowWitness.topPrime 9941 },
  { lower := 10093, upper := 10244, witness := RowWitness.topPrime 10093 },
  { lower := 10245, upper := 10394, witness := RowWitness.topPrime 10243 },
  { lower := 10395, upper := 10542, witness := RowWitness.topPrime 10391 },
  { lower := 10543, upper := 10682, witness := RowWitness.topPrime 10531 },
  { lower := 10683, upper := 10818, witness := RowWitness.topPrime 10667 },
  { lower := 10819, upper := 10950, witness := RowWitness.topPrime 10799 },
  { lower := 10951, upper := 11100, witness := RowWitness.topPrime 10949 },
  { lower := 11101, upper := 11244, witness := RowWitness.topPrime 11093 },
  { lower := 11245, upper := 11394, witness := RowWitness.topPrime 11243 },
  { lower := 11395, upper := 11544, witness := RowWitness.topPrime 11393 },
  { lower := 11545, upper := 11678, witness := RowWitness.topPrime 11527 },
  { lower := 11679, upper := 11828, witness := RowWitness.topPrime 11677 },
  { lower := 11829, upper := 11978, witness := RowWitness.topPrime 11827 },
  { lower := 11979, upper := 12122, witness := RowWitness.topPrime 11971 },
  { lower := 12123, upper := 12270, witness := RowWitness.topPrime 12119 },
  { lower := 12271, upper := 12420, witness := RowWitness.topPrime 12269 },
  { lower := 12421, upper := 12572, witness := RowWitness.topPrime 12421 },
  { lower := 12573, upper := 12720, witness := RowWitness.topPrime 12569 },
  { lower := 12721, upper := 12872, witness := RowWitness.topPrime 12721 },
  { lower := 12873, upper := 13004, witness := RowWitness.topPrime 12853 },
  { lower := 13005, upper := 13154, witness := RowWitness.topPrime 13003 },
  { lower := 13155, upper := 13302, witness := RowWitness.topPrime 13151 },
  { lower := 13303, upper := 13448, witness := RowWitness.topPrime 13297 },
  { lower := 13449, upper := 13592, witness := RowWitness.topPrime 13441 },
  { lower := 13593, upper := 13742, witness := RowWitness.topPrime 13591 },
  { lower := 13743, upper := 13880, witness := RowWitness.topPrime 13729 },
  { lower := 13881, upper := 14030, witness := RowWitness.topPrime 13879 },
  { lower := 14031, upper := 14180, witness := RowWitness.topPrime 14029 },
  { lower := 14181, upper := 14328, witness := RowWitness.topPrime 14177 },
  { lower := 14329, upper := 14478, witness := RowWitness.topPrime 14327 },
  { lower := 14479, upper := 14630, witness := RowWitness.topPrime 14479 },
  { lower := 14631, upper := 14780, witness := RowWitness.topPrime 14629 },
  { lower := 14781, upper := 14930, witness := RowWitness.topPrime 14779 },
  { lower := 14931, upper := 15080, witness := RowWitness.topPrime 14929 },
  { lower := 15081, upper := 15228, witness := RowWitness.topPrime 15077 },
  { lower := 15229, upper := 15378, witness := RowWitness.topPrime 15227 },
  { lower := 15379, upper := 15528, witness := RowWitness.topPrime 15377 },
  { lower := 15529, upper := 15678, witness := RowWitness.topPrime 15527 },
  { lower := 15679, upper := 15830, witness := RowWitness.topPrime 15679 },
  { lower := 15831, upper := 15974, witness := RowWitness.topPrime 15823 },
  { lower := 15975, upper := 16124, witness := RowWitness.topPrime 15973 },
  { lower := 16125, upper := 16262, witness := RowWitness.topPrime 16111 },
  { lower := 16263, upper := 16404, witness := RowWitness.topPrime 16253 },
  { lower := 16405, upper := 16532, witness := RowWitness.topPrime 16381 },
  { lower := 16533, upper := 16680, witness := RowWitness.topPrime 16529 },
  { lower := 16681, upper := 16824, witness := RowWitness.topPrime 16673 },
  { lower := 16825, upper := 16974, witness := RowWitness.topPrime 16823 },
  { lower := 16975, upper := 17114, witness := RowWitness.topPrime 16963 },
  { lower := 17115, upper := 17258, witness := RowWitness.topPrime 17107 },
  { lower := 17259, upper := 17408, witness := RowWitness.topPrime 17257 },
  { lower := 17409, upper := 17552, witness := RowWitness.topPrime 17401 },
  { lower := 17553, upper := 17702, witness := RowWitness.topPrime 17551 },
  { lower := 17703, upper := 17834, witness := RowWitness.topPrime 17683 },
  { lower := 17835, upper := 17978, witness := RowWitness.topPrime 17827 },
  { lower := 17979, upper := 18128, witness := RowWitness.topPrime 17977 },
  { lower := 18129, upper := 18278, witness := RowWitness.topPrime 18127 },
  { lower := 18279, upper := 18420, witness := RowWitness.topPrime 18269 },
  { lower := 18421, upper := 18564, witness := RowWitness.topPrime 18413 },
  { lower := 18565, upper := 18704, witness := RowWitness.topPrime 18553 },
  { lower := 18705, upper := 18852, witness := RowWitness.topPrime 18701 },
  { lower := 18853, upper := 18990, witness := RowWitness.topPrime 18839 },
  { lower := 18991, upper := 19130, witness := RowWitness.topPrime 18979 },
  { lower := 19131, upper := 19272, witness := RowWitness.topPrime 19121 },
  { lower := 19273, upper := 19424, witness := RowWitness.topPrime 19273 },
  { lower := 19425, upper := 19574, witness := RowWitness.topPrime 19423 },
  { lower := 19575, upper := 19722, witness := RowWitness.topPrime 19571 },
  { lower := 19723, upper := 19868, witness := RowWitness.topPrime 19717 },
  { lower := 19869, upper := 20018, witness := RowWitness.topPrime 19867 },
  { lower := 20019, upper := 20162, witness := RowWitness.topPrime 20011 },
  { lower := 20163, upper := 20312, witness := RowWitness.topPrime 20161 },
  { lower := 20313, upper := 20448, witness := RowWitness.topPrime 20297 },
  { lower := 20449, upper := 20594, witness := RowWitness.topPrime 20443 },
  { lower := 20595, upper := 20744, witness := RowWitness.topPrime 20593 },
  { lower := 20745, upper := 20894, witness := RowWitness.topPrime 20743 },
  { lower := 20895, upper := 21038, witness := RowWitness.topPrime 20887 },
  { lower := 21039, upper := 21182, witness := RowWitness.topPrime 21031 },
  { lower := 21183, upper := 21330, witness := RowWitness.topPrime 21179 },
  { lower := 21331, upper := 21474, witness := RowWitness.topPrime 21323 },
  { lower := 21475, upper := 21618, witness := RowWitness.topPrime 21467 },
  { lower := 21619, upper := 21768, witness := RowWitness.topPrime 21617 },
  { lower := 21769, upper := 21918, witness := RowWitness.topPrime 21767 },
  { lower := 21919, upper := 22062, witness := RowWitness.topPrime 21911 },
  { lower := 22063, upper := 22214, witness := RowWitness.topPrime 22063 },
  { lower := 22215, upper := 22344, witness := RowWitness.topPrime 22193 },
  { lower := 22345, upper := 22494, witness := RowWitness.topPrime 22343 },
  { lower := 22495, upper := 22634, witness := RowWitness.topPrime 22483 },
  { lower := 22635, upper := 22772, witness := RowWitness.topPrime 22621 },
  { lower := 22773, upper := 22920, witness := RowWitness.topPrime 22769 },
  { lower := 22921, upper := 22952, witness := RowWitness.topPrime 22921 },
  { lower := 23763, upper := 23912, witness := RowWitness.topPrime 23761 },
  { lower := 23913, upper := 23913, witness := RowWitness.topPrime 23911 },
  { lower := 24037, upper := 24180, witness := RowWitness.topPrime 24029 },
  { lower := 24181, upper := 24208, witness := RowWitness.topPrime 24181 },
  { lower := 24299, upper := 24318, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24480, witness := RowWitness.topPrime 24329 },
  { lower := 24481, upper := 24518, witness := RowWitness.topPrime 24481 },
  { lower := 25000, upper := 25115, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25340, witness := RowWitness.topPrime 25189 },
  { lower := 25341, upper := 25366, witness := RowWitness.topPrime 25339 },
  { lower := 26364, upper := 26395, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26558, witness := RowWitness.topPrime 26407 },
  { lower := 26559, upper := 26562, witness := RowWitness.topPrime 26557 },
  { lower := 26645, upper := 26659, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27047, witness := RowWitness.topPrime 26927 },
  { lower := 27848, upper := 27886, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28274, witness := RowWitness.topPrime 28123 },
  { lower := 28275, upper := 28276, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28710, witness := RowWitness.topPrime 28559 },
  { lower := 28711, upper := 28712, witness := RowWitness.topPrime 28711 },
  { lower := 28717, upper := 28728, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28868, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29629, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29919, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30744, witness := RowWitness.topPrime 30593 },
  { lower := 30745, upper := 30754, witness := RowWitness.topPrime 30727 },
  { lower := 30758, upper := 30769, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 30909, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31050, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31344, witness := RowWitness.topPrime 31193 },
  { lower := 31345, upper := 31401, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31548, witness := RowWitness.topPrime 31397 },
  { lower := 31549, upper := 31574, witness := RowWitness.topPrime 31547 },
  { lower := 31827, upper := 31835, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31978, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32919, witness := RowWitness.topPrime 32803 },
  { lower := 32955, upper := 32956, witness := RowWitness.topPrime 32941 },
  { lower := 33614, upper := 33640, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33765, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34488, witness := RowWitness.topPrime 34337 },
  { lower := 34489, upper := 34542, witness := RowWitness.topPrime 34487 },
  { lower := 35287, upper := 35303, witness := RowWitness.topPrime 35281 },
  { lower := 35344, upper := 35438, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36063, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36648, witness := RowWitness.topPrime 36497 },
  { lower := 36649, upper := 36652, witness := RowWitness.topPrime 36643 },
  { lower := 37210, upper := 37352, witness := RowWitness.topPrime 37201 },
  { lower := 37353, upper := 37490, witness := RowWitness.topPrime 37339 },
  { lower := 37491, upper := 37640, witness := RowWitness.topPrime 37489 },
  { lower := 37641, upper := 37704, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38454, witness := RowWitness.topPrime 38303 },
  { lower := 38455, upper := 38458, witness := RowWitness.topPrime 38453 },
  { lower := 39326, upper := 39474, witness := RowWitness.topPrime 39323 },
  { lower := 39475, upper := 39477, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40479, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40964, witness := RowWitness.topPrime 40813 },
  { lower := 40965, upper := 40968, witness := RowWitness.topPrime 40961 },
  { lower := 43750, upper := 43838, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 45041, witness := RowWitness.topPrime 44939 },
  { lower := 45369, upper := 45404, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45947, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47672, witness := RowWitness.topPrime 47521 },
  { lower := 47673, upper := 47675, witness := RowWitness.topPrime 47659 },
  { lower := 48373, upper := 48374, witness := RowWitness.topPrime 48371 },
  { lower := 48387, upper := 48524, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48819, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50561, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51156, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55592, witness := RowWitness.topPrime 55441 },
  { lower := 55593, upper := 55598, witness := RowWitness.topPrime 55589 },
  { lower := 56307, upper := 56320, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56458, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57273, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58715, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59107, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62561, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64014, witness := RowWitness.topPrime 63863 },
  { lower := 64015, upper := 64020, witness := RowWitness.topPrime 64013 },
  { lower := 65536, upper := 65672, witness := RowWitness.topPrime 65521 },
  { lower := 65673, upper := 65687, witness := RowWitness.topPrime 65657 },
  { lower := 68651, upper := 68790, witness := RowWitness.topPrime 68639 },
  { lower := 68791, upper := 68802, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69041, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71438, witness := RowWitness.topPrime 71287 },
  { lower := 71439, upper := 71440, witness := RowWitness.topPrime 71437 },
  { lower := 73205, upper := 73318, witness := RowWitness.topPrime 73189 },
  { lower := 85293, upper := 85320, witness := RowWitness.topPrime 85259 },
  { lower := 85805, upper := 85834, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89524, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93901, witness := RowWitness.topPrime 93827 },
  { lower := 102152, upper := 102161, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103117, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109526, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137932, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146485, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 149028, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154600, witness := RowWitness.topPrime 154543 }
]

def row152_layers : List CoverLayer := [
  { lower := 22952, upper := 45904, M := 17 },
  { lower := 45904, upper := 91808, M := 13 },
  { lower := 91808, upper := 183616, M := 10 },
  { lower := 183616, upper := 367232, M := 8 },
  { lower := 367232, upper := 734464, M := 6 },
  { lower := 734464, upper := 1468928, M := 5 },
  { lower := 1468928, upper := 2937856, M := 4 },
  { lower := 2937856, upper := 5875712, M := 3 },
  { lower := 5875712, upper := 11751424, M := 2 },
  { lower := 11751424, upper := 23502848, M := 2 },
  { lower := 23502848, upper := 47005696, M := 1 },
  { lower := 47005696, upper := 94011392, M := 1 },
  { lower := 94011392, upper := 100000000, M := 1 }
]

def row152 : FiniteCoverRow := {
  height := row152_height,
  goods := row152_goods,
  layers := row152_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good000_checked :
    goodSegmentCheck 152 50 107
      { lower := 306, upper := 444, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good001_checked :
    goodSegmentCheck 152 50 107
      { lower := 445, upper := 594, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good002_checked :
    goodSegmentCheck 152 50 107
      { lower := 595, upper := 744, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good003_checked :
    goodSegmentCheck 152 50 107
      { lower := 745, upper := 894, witness := RowWitness.topPrime 743 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good004_checked :
    goodSegmentCheck 152 50 107
      { lower := 895, upper := 1038, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good005_checked :
    goodSegmentCheck 152 50 107
      { lower := 1039, upper := 1190, witness := RowWitness.topPrime 1039 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good006_checked :
    goodSegmentCheck 152 50 107
      { lower := 1191, upper := 1338, witness := RowWitness.topPrime 1187 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good007_checked :
    goodSegmentCheck 152 50 107
      { lower := 1339, upper := 1478, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good008_checked :
    goodSegmentCheck 152 50 107
      { lower := 1479, upper := 1622, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good009_checked :
    goodSegmentCheck 152 50 107
      { lower := 1623, upper := 1772, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good010_checked :
    goodSegmentCheck 152 50 107
      { lower := 1773, upper := 1910, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good011_checked :
    goodSegmentCheck 152 50 107
      { lower := 1911, upper := 2058, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good012_checked :
    goodSegmentCheck 152 50 107
      { lower := 2059, upper := 2204, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good013_checked :
    goodSegmentCheck 152 50 107
      { lower := 2205, upper := 2354, witness := RowWitness.topPrime 2203 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good014_checked :
    goodSegmentCheck 152 50 107
      { lower := 2355, upper := 2502, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good015_checked :
    goodSegmentCheck 152 50 107
      { lower := 2503, upper := 2654, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good016_checked :
    goodSegmentCheck 152 50 107
      { lower := 2655, upper := 2798, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good017_checked :
    goodSegmentCheck 152 50 107
      { lower := 2799, upper := 2948, witness := RowWitness.topPrime 2797 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good018_checked :
    goodSegmentCheck 152 50 107
      { lower := 2949, upper := 3090, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good019_checked :
    goodSegmentCheck 152 50 107
      { lower := 3091, upper := 3240, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good020_checked :
    goodSegmentCheck 152 50 107
      { lower := 3241, upper := 3380, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good021_checked :
    goodSegmentCheck 152 50 107
      { lower := 3381, upper := 3524, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good022_checked :
    goodSegmentCheck 152 50 107
      { lower := 3525, upper := 3668, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good023_checked :
    goodSegmentCheck 152 50 107
      { lower := 3669, upper := 3810, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good024_checked :
    goodSegmentCheck 152 50 107
      { lower := 3811, upper := 3954, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good025_checked :
    goodSegmentCheck 152 50 107
      { lower := 3955, upper := 4098, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good026_checked :
    goodSegmentCheck 152 50 107
      { lower := 4099, upper := 4250, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good027_checked :
    goodSegmentCheck 152 50 107
      { lower := 4251, upper := 4394, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good028_checked :
    goodSegmentCheck 152 50 107
      { lower := 4395, upper := 4542, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good029_checked :
    goodSegmentCheck 152 50 107
      { lower := 4543, upper := 4674, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good030_checked :
    goodSegmentCheck 152 50 107
      { lower := 4675, upper := 4824, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good031_checked :
    goodSegmentCheck 152 50 107
      { lower := 4825, upper := 4968, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good032_checked :
    goodSegmentCheck 152 50 107
      { lower := 4969, upper := 5120, witness := RowWitness.topPrime 4969 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good033_checked :
    goodSegmentCheck 152 50 107
      { lower := 5121, upper := 5270, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good034_checked :
    goodSegmentCheck 152 50 107
      { lower := 5271, upper := 5412, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good035_checked :
    goodSegmentCheck 152 50 107
      { lower := 5413, upper := 5564, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good036_checked :
    goodSegmentCheck 152 50 107
      { lower := 5565, upper := 5714, witness := RowWitness.topPrime 5563 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good037_checked :
    goodSegmentCheck 152 50 107
      { lower := 5715, upper := 5862, witness := RowWitness.topPrime 5711 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good038_checked :
    goodSegmentCheck 152 50 107
      { lower := 5863, upper := 6012, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good039_checked :
    goodSegmentCheck 152 50 107
      { lower := 6013, upper := 6162, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good040_checked :
    goodSegmentCheck 152 50 107
      { lower := 6163, upper := 6314, witness := RowWitness.topPrime 6163 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good041_checked :
    goodSegmentCheck 152 50 107
      { lower := 6315, upper := 6462, witness := RowWitness.topPrime 6311 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good042_checked :
    goodSegmentCheck 152 50 107
      { lower := 6463, upper := 6602, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good043_checked :
    goodSegmentCheck 152 50 107
      { lower := 6603, upper := 6750, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good044_checked :
    goodSegmentCheck 152 50 107
      { lower := 6751, upper := 6888, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good045_checked :
    goodSegmentCheck 152 50 107
      { lower := 6889, upper := 7034, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good046_checked :
    goodSegmentCheck 152 50 107
      { lower := 7035, upper := 7178, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good047_checked :
    goodSegmentCheck 152 50 107
      { lower := 7179, upper := 7328, witness := RowWitness.topPrime 7177 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good048_checked :
    goodSegmentCheck 152 50 107
      { lower := 7329, upper := 7472, witness := RowWitness.topPrime 7321 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good049_checked :
    goodSegmentCheck 152 50 107
      { lower := 7473, upper := 7610, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good050_checked :
    goodSegmentCheck 152 50 107
      { lower := 7611, upper := 7758, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good051_checked :
    goodSegmentCheck 152 50 107
      { lower := 7759, upper := 7910, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good052_checked :
    goodSegmentCheck 152 50 107
      { lower := 7911, upper := 8058, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good053_checked :
    goodSegmentCheck 152 50 107
      { lower := 8059, upper := 8210, witness := RowWitness.topPrime 8059 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good054_checked :
    goodSegmentCheck 152 50 107
      { lower := 8211, upper := 8360, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good055_checked :
    goodSegmentCheck 152 50 107
      { lower := 8361, upper := 8504, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good056_checked :
    goodSegmentCheck 152 50 107
      { lower := 8505, upper := 8652, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good057_checked :
    goodSegmentCheck 152 50 107
      { lower := 8653, upper := 8798, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good058_checked :
    goodSegmentCheck 152 50 107
      { lower := 8799, upper := 8934, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good059_checked :
    goodSegmentCheck 152 50 107
      { lower := 8935, upper := 9084, witness := RowWitness.topPrime 8933 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good060_checked :
    goodSegmentCheck 152 50 107
      { lower := 9085, upper := 9218, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good061_checked :
    goodSegmentCheck 152 50 107
      { lower := 9219, upper := 9360, witness := RowWitness.topPrime 9209 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good062_checked :
    goodSegmentCheck 152 50 107
      { lower := 9361, upper := 9500, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good063_checked :
    goodSegmentCheck 152 50 107
      { lower := 9501, upper := 9648, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good064_checked :
    goodSegmentCheck 152 50 107
      { lower := 9649, upper := 9800, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good065_checked :
    goodSegmentCheck 152 50 107
      { lower := 9801, upper := 9942, witness := RowWitness.topPrime 9791 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good066_checked :
    goodSegmentCheck 152 50 107
      { lower := 9943, upper := 10092, witness := RowWitness.topPrime 9941 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good067_checked :
    goodSegmentCheck 152 50 107
      { lower := 10093, upper := 10244, witness := RowWitness.topPrime 10093 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good068_checked :
    goodSegmentCheck 152 50 107
      { lower := 10245, upper := 10394, witness := RowWitness.topPrime 10243 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good069_checked :
    goodSegmentCheck 152 50 107
      { lower := 10395, upper := 10542, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good070_checked :
    goodSegmentCheck 152 50 107
      { lower := 10543, upper := 10682, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good071_checked :
    goodSegmentCheck 152 50 107
      { lower := 10683, upper := 10818, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good072_checked :
    goodSegmentCheck 152 50 107
      { lower := 10819, upper := 10950, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good073_checked :
    goodSegmentCheck 152 50 107
      { lower := 10951, upper := 11100, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good074_checked :
    goodSegmentCheck 152 50 107
      { lower := 11101, upper := 11244, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good075_checked :
    goodSegmentCheck 152 50 107
      { lower := 11245, upper := 11394, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good076_checked :
    goodSegmentCheck 152 50 107
      { lower := 11395, upper := 11544, witness := RowWitness.topPrime 11393 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good077_checked :
    goodSegmentCheck 152 50 107
      { lower := 11545, upper := 11678, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good078_checked :
    goodSegmentCheck 152 50 107
      { lower := 11679, upper := 11828, witness := RowWitness.topPrime 11677 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good079_checked :
    goodSegmentCheck 152 50 107
      { lower := 11829, upper := 11978, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good080_checked :
    goodSegmentCheck 152 50 107
      { lower := 11979, upper := 12122, witness := RowWitness.topPrime 11971 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good081_checked :
    goodSegmentCheck 152 50 107
      { lower := 12123, upper := 12270, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good082_checked :
    goodSegmentCheck 152 50 107
      { lower := 12271, upper := 12420, witness := RowWitness.topPrime 12269 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good083_checked :
    goodSegmentCheck 152 50 107
      { lower := 12421, upper := 12572, witness := RowWitness.topPrime 12421 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good084_checked :
    goodSegmentCheck 152 50 107
      { lower := 12573, upper := 12720, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good085_checked :
    goodSegmentCheck 152 50 107
      { lower := 12721, upper := 12872, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good086_checked :
    goodSegmentCheck 152 50 107
      { lower := 12873, upper := 13004, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good087_checked :
    goodSegmentCheck 152 50 107
      { lower := 13005, upper := 13154, witness := RowWitness.topPrime 13003 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good088_checked :
    goodSegmentCheck 152 50 107
      { lower := 13155, upper := 13302, witness := RowWitness.topPrime 13151 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good089_checked :
    goodSegmentCheck 152 50 107
      { lower := 13303, upper := 13448, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good090_checked :
    goodSegmentCheck 152 50 107
      { lower := 13449, upper := 13592, witness := RowWitness.topPrime 13441 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good091_checked :
    goodSegmentCheck 152 50 107
      { lower := 13593, upper := 13742, witness := RowWitness.topPrime 13591 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good092_checked :
    goodSegmentCheck 152 50 107
      { lower := 13743, upper := 13880, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good093_checked :
    goodSegmentCheck 152 50 107
      { lower := 13881, upper := 14030, witness := RowWitness.topPrime 13879 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good094_checked :
    goodSegmentCheck 152 50 107
      { lower := 14031, upper := 14180, witness := RowWitness.topPrime 14029 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good095_checked :
    goodSegmentCheck 152 50 107
      { lower := 14181, upper := 14328, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good096_checked :
    goodSegmentCheck 152 50 107
      { lower := 14329, upper := 14478, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good097_checked :
    goodSegmentCheck 152 50 107
      { lower := 14479, upper := 14630, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good098_checked :
    goodSegmentCheck 152 50 107
      { lower := 14631, upper := 14780, witness := RowWitness.topPrime 14629 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good099_checked :
    goodSegmentCheck 152 50 107
      { lower := 14781, upper := 14930, witness := RowWitness.topPrime 14779 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good100_checked :
    goodSegmentCheck 152 50 107
      { lower := 14931, upper := 15080, witness := RowWitness.topPrime 14929 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good101_checked :
    goodSegmentCheck 152 50 107
      { lower := 15081, upper := 15228, witness := RowWitness.topPrime 15077 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good102_checked :
    goodSegmentCheck 152 50 107
      { lower := 15229, upper := 15378, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good103_checked :
    goodSegmentCheck 152 50 107
      { lower := 15379, upper := 15528, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good104_checked :
    goodSegmentCheck 152 50 107
      { lower := 15529, upper := 15678, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good105_checked :
    goodSegmentCheck 152 50 107
      { lower := 15679, upper := 15830, witness := RowWitness.topPrime 15679 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good106_checked :
    goodSegmentCheck 152 50 107
      { lower := 15831, upper := 15974, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good107_checked :
    goodSegmentCheck 152 50 107
      { lower := 15975, upper := 16124, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good108_checked :
    goodSegmentCheck 152 50 107
      { lower := 16125, upper := 16262, witness := RowWitness.topPrime 16111 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good109_checked :
    goodSegmentCheck 152 50 107
      { lower := 16263, upper := 16404, witness := RowWitness.topPrime 16253 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good110_checked :
    goodSegmentCheck 152 50 107
      { lower := 16405, upper := 16532, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good111_checked :
    goodSegmentCheck 152 50 107
      { lower := 16533, upper := 16680, witness := RowWitness.topPrime 16529 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good112_checked :
    goodSegmentCheck 152 50 107
      { lower := 16681, upper := 16824, witness := RowWitness.topPrime 16673 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good113_checked :
    goodSegmentCheck 152 50 107
      { lower := 16825, upper := 16974, witness := RowWitness.topPrime 16823 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good114_checked :
    goodSegmentCheck 152 50 107
      { lower := 16975, upper := 17114, witness := RowWitness.topPrime 16963 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good115_checked :
    goodSegmentCheck 152 50 107
      { lower := 17115, upper := 17258, witness := RowWitness.topPrime 17107 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good116_checked :
    goodSegmentCheck 152 50 107
      { lower := 17259, upper := 17408, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good117_checked :
    goodSegmentCheck 152 50 107
      { lower := 17409, upper := 17552, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good118_checked :
    goodSegmentCheck 152 50 107
      { lower := 17553, upper := 17702, witness := RowWitness.topPrime 17551 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good119_checked :
    goodSegmentCheck 152 50 107
      { lower := 17703, upper := 17834, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good120_checked :
    goodSegmentCheck 152 50 107
      { lower := 17835, upper := 17978, witness := RowWitness.topPrime 17827 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good121_checked :
    goodSegmentCheck 152 50 107
      { lower := 17979, upper := 18128, witness := RowWitness.topPrime 17977 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good122_checked :
    goodSegmentCheck 152 50 107
      { lower := 18129, upper := 18278, witness := RowWitness.topPrime 18127 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good123_checked :
    goodSegmentCheck 152 50 107
      { lower := 18279, upper := 18420, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good124_checked :
    goodSegmentCheck 152 50 107
      { lower := 18421, upper := 18564, witness := RowWitness.topPrime 18413 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good125_checked :
    goodSegmentCheck 152 50 107
      { lower := 18565, upper := 18704, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good126_checked :
    goodSegmentCheck 152 50 107
      { lower := 18705, upper := 18852, witness := RowWitness.topPrime 18701 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good127_checked :
    goodSegmentCheck 152 50 107
      { lower := 18853, upper := 18990, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good128_checked :
    goodSegmentCheck 152 50 107
      { lower := 18991, upper := 19130, witness := RowWitness.topPrime 18979 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good129_checked :
    goodSegmentCheck 152 50 107
      { lower := 19131, upper := 19272, witness := RowWitness.topPrime 19121 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good130_checked :
    goodSegmentCheck 152 50 107
      { lower := 19273, upper := 19424, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good131_checked :
    goodSegmentCheck 152 50 107
      { lower := 19425, upper := 19574, witness := RowWitness.topPrime 19423 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good132_checked :
    goodSegmentCheck 152 50 107
      { lower := 19575, upper := 19722, witness := RowWitness.topPrime 19571 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good133_checked :
    goodSegmentCheck 152 50 107
      { lower := 19723, upper := 19868, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good134_checked :
    goodSegmentCheck 152 50 107
      { lower := 19869, upper := 20018, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good135_checked :
    goodSegmentCheck 152 50 107
      { lower := 20019, upper := 20162, witness := RowWitness.topPrime 20011 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good136_checked :
    goodSegmentCheck 152 50 107
      { lower := 20163, upper := 20312, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good137_checked :
    goodSegmentCheck 152 50 107
      { lower := 20313, upper := 20448, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good138_checked :
    goodSegmentCheck 152 50 107
      { lower := 20449, upper := 20594, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good139_checked :
    goodSegmentCheck 152 50 107
      { lower := 20595, upper := 20744, witness := RowWitness.topPrime 20593 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good140_checked :
    goodSegmentCheck 152 50 107
      { lower := 20745, upper := 20894, witness := RowWitness.topPrime 20743 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good141_checked :
    goodSegmentCheck 152 50 107
      { lower := 20895, upper := 21038, witness := RowWitness.topPrime 20887 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good142_checked :
    goodSegmentCheck 152 50 107
      { lower := 21039, upper := 21182, witness := RowWitness.topPrime 21031 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good143_checked :
    goodSegmentCheck 152 50 107
      { lower := 21183, upper := 21330, witness := RowWitness.topPrime 21179 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good144_checked :
    goodSegmentCheck 152 50 107
      { lower := 21331, upper := 21474, witness := RowWitness.topPrime 21323 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good145_checked :
    goodSegmentCheck 152 50 107
      { lower := 21475, upper := 21618, witness := RowWitness.topPrime 21467 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good146_checked :
    goodSegmentCheck 152 50 107
      { lower := 21619, upper := 21768, witness := RowWitness.topPrime 21617 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good147_checked :
    goodSegmentCheck 152 50 107
      { lower := 21769, upper := 21918, witness := RowWitness.topPrime 21767 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good148_checked :
    goodSegmentCheck 152 50 107
      { lower := 21919, upper := 22062, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good149_checked :
    goodSegmentCheck 152 50 107
      { lower := 22063, upper := 22214, witness := RowWitness.topPrime 22063 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good150_checked :
    goodSegmentCheck 152 50 107
      { lower := 22215, upper := 22344, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good151_checked :
    goodSegmentCheck 152 50 107
      { lower := 22345, upper := 22494, witness := RowWitness.topPrime 22343 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good152_checked :
    goodSegmentCheck 152 50 107
      { lower := 22495, upper := 22634, witness := RowWitness.topPrime 22483 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good153_checked :
    goodSegmentCheck 152 50 107
      { lower := 22635, upper := 22772, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good154_checked :
    goodSegmentCheck 152 50 107
      { lower := 22773, upper := 22920, witness := RowWitness.topPrime 22769 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good155_checked :
    goodSegmentCheck 152 50 107
      { lower := 22921, upper := 22952, witness := RowWitness.topPrime 22921 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good156_checked :
    goodSegmentCheck 152 50 107
      { lower := 23763, upper := 23912, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good157_checked :
    goodSegmentCheck 152 50 107
      { lower := 23913, upper := 23913, witness := RowWitness.topPrime 23911 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good158_checked :
    goodSegmentCheck 152 50 107
      { lower := 24037, upper := 24180, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good159_checked :
    goodSegmentCheck 152 50 107
      { lower := 24181, upper := 24208, witness := RowWitness.topPrime 24181 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good160_checked :
    goodSegmentCheck 152 50 107
      { lower := 24299, upper := 24318, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good161_checked :
    goodSegmentCheck 152 50 107
      { lower := 24334, upper := 24480, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good162_checked :
    goodSegmentCheck 152 50 107
      { lower := 24481, upper := 24518, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good163_checked :
    goodSegmentCheck 152 50 107
      { lower := 25000, upper := 25115, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good164_checked :
    goodSegmentCheck 152 50 107
      { lower := 25215, upper := 25340, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good165_checked :
    goodSegmentCheck 152 50 107
      { lower := 25341, upper := 25366, witness := RowWitness.topPrime 25339 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good166_checked :
    goodSegmentCheck 152 50 107
      { lower := 26364, upper := 26395, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good167_checked :
    goodSegmentCheck 152 50 107
      { lower := 26411, upper := 26558, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good168_checked :
    goodSegmentCheck 152 50 107
      { lower := 26559, upper := 26562, witness := RowWitness.topPrime 26557 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good169_checked :
    goodSegmentCheck 152 50 107
      { lower := 26645, upper := 26659, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good170_checked :
    goodSegmentCheck 152 50 107
      { lower := 26934, upper := 27047, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good171_checked :
    goodSegmentCheck 152 50 107
      { lower := 27848, upper := 27886, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good172_checked :
    goodSegmentCheck 152 50 107
      { lower := 28125, upper := 28274, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good173_checked :
    goodSegmentCheck 152 50 107
      { lower := 28275, upper := 28276, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good174_checked :
    goodSegmentCheck 152 50 107
      { lower := 28561, upper := 28710, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good175_checked :
    goodSegmentCheck 152 50 107
      { lower := 28711, upper := 28712, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good176_checked :
    goodSegmentCheck 152 50 107
      { lower := 28717, upper := 28728, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good177_checked :
    goodSegmentCheck 152 50 107
      { lower := 28812, upper := 28868, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good178_checked :
    goodSegmentCheck 152 50 107
      { lower := 29584, upper := 29629, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good179_checked :
    goodSegmentCheck 152 50 107
      { lower := 29791, upper := 29919, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good180_checked :
    goodSegmentCheck 152 50 107
      { lower := 30618, upper := 30744, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good181_checked :
    goodSegmentCheck 152 50 107
      { lower := 30745, upper := 30754, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good182_checked :
    goodSegmentCheck 152 50 107
      { lower := 30758, upper := 30769, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good183_checked :
    goodSegmentCheck 152 50 107
      { lower := 30899, upper := 30909, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good184_checked :
    goodSegmentCheck 152 50 107
      { lower := 30926, upper := 31050, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good185_checked :
    goodSegmentCheck 152 50 107
      { lower := 31213, upper := 31344, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good186_checked :
    goodSegmentCheck 152 50 107
      { lower := 31345, upper := 31401, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good187_checked :
    goodSegmentCheck 152 50 107
      { lower := 31423, upper := 31548, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good188_checked :
    goodSegmentCheck 152 50 107
      { lower := 31549, upper := 31574, witness := RowWitness.topPrime 31547 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good189_checked :
    goodSegmentCheck 152 50 107
      { lower := 31827, upper := 31835, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good190_checked :
    goodSegmentCheck 152 50 107
      { lower := 31974, upper := 31978, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good191_checked :
    goodSegmentCheck 152 50 107
      { lower := 32805, upper := 32919, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good192_checked :
    goodSegmentCheck 152 50 107
      { lower := 32955, upper := 32956, witness := RowWitness.topPrime 32941 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good193_checked :
    goodSegmentCheck 152 50 107
      { lower := 33614, upper := 33640, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good194_checked :
    goodSegmentCheck 152 50 107
      { lower := 33708, upper := 33765, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good195_checked :
    goodSegmentCheck 152 50 107
      { lower := 34347, upper := 34488, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good196_checked :
    goodSegmentCheck 152 50 107
      { lower := 34489, upper := 34542, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good197_checked :
    goodSegmentCheck 152 50 107
      { lower := 35287, upper := 35303, witness := RowWitness.topPrime 35281 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good198_checked :
    goodSegmentCheck 152 50 107
      { lower := 35344, upper := 35438, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good199_checked :
    goodSegmentCheck 152 50 107
      { lower := 36015, upper := 36063, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good200_checked :
    goodSegmentCheck 152 50 107
      { lower := 36517, upper := 36648, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good201_checked :
    goodSegmentCheck 152 50 107
      { lower := 36649, upper := 36652, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good202_checked :
    goodSegmentCheck 152 50 107
      { lower := 37210, upper := 37352, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good203_checked :
    goodSegmentCheck 152 50 107
      { lower := 37353, upper := 37490, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good204_checked :
    goodSegmentCheck 152 50 107
      { lower := 37491, upper := 37640, witness := RowWitness.topPrime 37489 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good205_checked :
    goodSegmentCheck 152 50 107
      { lower := 37641, upper := 37704, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good206_checked :
    goodSegmentCheck 152 50 107
      { lower := 38307, upper := 38454, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good207_checked :
    goodSegmentCheck 152 50 107
      { lower := 38455, upper := 38458, witness := RowWitness.topPrime 38453 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good208_checked :
    goodSegmentCheck 152 50 107
      { lower := 39326, upper := 39474, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good209_checked :
    goodSegmentCheck 152 50 107
      { lower := 39475, upper := 39477, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good210_checked :
    goodSegmentCheck 152 50 107
      { lower := 40401, upper := 40479, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good211_checked :
    goodSegmentCheck 152 50 107
      { lower := 40817, upper := 40964, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good212_checked :
    goodSegmentCheck 152 50 107
      { lower := 40965, upper := 40968, witness := RowWitness.topPrime 40961 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good213_checked :
    goodSegmentCheck 152 50 107
      { lower := 43750, upper := 43838, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good214_checked :
    goodSegmentCheck 152 50 107
      { lower := 44944, upper := 45041, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good215_checked :
    goodSegmentCheck 152 50 107
      { lower := 45369, upper := 45404, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good216_checked :
    goodSegmentCheck 152 50 107
      { lower := 45927, upper := 45947, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good217_checked :
    goodSegmentCheck 152 50 107
      { lower := 47526, upper := 47672, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good218_checked :
    goodSegmentCheck 152 50 107
      { lower := 47673, upper := 47675, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good219_checked :
    goodSegmentCheck 152 50 107
      { lower := 48373, upper := 48374, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good220_checked :
    goodSegmentCheck 152 50 107
      { lower := 48387, upper := 48524, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good221_checked :
    goodSegmentCheck 152 50 107
      { lower := 48778, upper := 48819, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good222_checked :
    goodSegmentCheck 152 50 107
      { lower := 50421, upper := 50561, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good223_checked :
    goodSegmentCheck 152 50 107
      { lower := 51076, upper := 51156, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good224_checked :
    goodSegmentCheck 152 50 107
      { lower := 55451, upper := 55592, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good225_checked :
    goodSegmentCheck 152 50 107
      { lower := 55593, upper := 55598, witness := RowWitness.topPrime 55589 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good226_checked :
    goodSegmentCheck 152 50 107
      { lower := 56307, upper := 56320, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good227_checked :
    goodSegmentCheck 152 50 107
      { lower := 56454, upper := 56458, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good228_checked :
    goodSegmentCheck 152 50 107
      { lower := 57245, upper := 57273, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good229_checked :
    goodSegmentCheck 152 50 107
      { lower := 58619, upper := 58715, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good230_checked :
    goodSegmentCheck 152 50 107
      { lower := 59049, upper := 59107, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good231_checked :
    goodSegmentCheck 152 50 107
      { lower := 62500, upper := 62561, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good232_checked :
    goodSegmentCheck 152 50 107
      { lower := 63869, upper := 64014, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good233_checked :
    goodSegmentCheck 152 50 107
      { lower := 64015, upper := 64020, witness := RowWitness.topPrime 64013 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good234_checked :
    goodSegmentCheck 152 50 107
      { lower := 65536, upper := 65672, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good235_checked :
    goodSegmentCheck 152 50 107
      { lower := 65673, upper := 65687, witness := RowWitness.topPrime 65657 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good236_checked :
    goodSegmentCheck 152 50 107
      { lower := 68651, upper := 68790, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good237_checked :
    goodSegmentCheck 152 50 107
      { lower := 68791, upper := 68802, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good238_checked :
    goodSegmentCheck 152 50 107
      { lower := 68921, upper := 69041, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good239_checked :
    goodSegmentCheck 152 50 107
      { lower := 71289, upper := 71438, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_good240_checked :
    goodSegmentCheck 152 50 107
      { lower := 71439, upper := 71440, witness := RowWitness.topPrime 71437 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good241_checked :
    goodSegmentCheck 152 50 107
      { lower := 73205, upper := 73318, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good242_checked :
    goodSegmentCheck 152 50 107
      { lower := 85293, upper := 85320, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good243_checked :
    goodSegmentCheck 152 50 107
      { lower := 85805, upper := 85834, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good244_checked :
    goodSegmentCheck 152 50 107
      { lower := 89383, upper := 89524, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good245_checked :
    goodSegmentCheck 152 50 107
      { lower := 93845, upper := 93901, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good246_checked :
    goodSegmentCheck 152 50 107
      { lower := 102152, upper := 102161, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good247_checked :
    goodSegmentCheck 152 50 107
      { lower := 103041, upper := 103117, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good248_checked :
    goodSegmentCheck 152 50 107
      { lower := 109503, upper := 109526, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good249_checked :
    goodSegmentCheck 152 50 107
      { lower := 137842, upper := 137932, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good250_checked :
    goodSegmentCheck 152 50 107
      { lower := 146410, upper := 146485, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good251_checked :
    goodSegmentCheck 152 50 107
      { lower := 148955, upper := 149028, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row152_good252_checked :
    goodSegmentCheck 152 50 107
      { lower := 154568, upper := 154600, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 152) (r := 50) (s := 107) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_good252_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_goods_checked :
    row152.goods.all (goodSegmentCheck row152.height.i row152.height.r row152.height.s) = true := by
  change row152_goods.all (goodSegmentCheck 152 50 107) = true
  simp only [row152_goods, List.all_cons, List.all_nil,
    row152_good000_checked,
    row152_good001_checked,
    row152_good002_checked,
    row152_good003_checked,
    row152_good004_checked,
    row152_good005_checked,
    row152_good006_checked,
    row152_good007_checked,
    row152_good008_checked,
    row152_good009_checked,
    row152_good010_checked,
    row152_good011_checked,
    row152_good012_checked,
    row152_good013_checked,
    row152_good014_checked,
    row152_good015_checked,
    row152_good016_checked,
    row152_good017_checked,
    row152_good018_checked,
    row152_good019_checked,
    row152_good020_checked,
    row152_good021_checked,
    row152_good022_checked,
    row152_good023_checked,
    row152_good024_checked,
    row152_good025_checked,
    row152_good026_checked,
    row152_good027_checked,
    row152_good028_checked,
    row152_good029_checked,
    row152_good030_checked,
    row152_good031_checked,
    row152_good032_checked,
    row152_good033_checked,
    row152_good034_checked,
    row152_good035_checked,
    row152_good036_checked,
    row152_good037_checked,
    row152_good038_checked,
    row152_good039_checked,
    row152_good040_checked,
    row152_good041_checked,
    row152_good042_checked,
    row152_good043_checked,
    row152_good044_checked,
    row152_good045_checked,
    row152_good046_checked,
    row152_good047_checked,
    row152_good048_checked,
    row152_good049_checked,
    row152_good050_checked,
    row152_good051_checked,
    row152_good052_checked,
    row152_good053_checked,
    row152_good054_checked,
    row152_good055_checked,
    row152_good056_checked,
    row152_good057_checked,
    row152_good058_checked,
    row152_good059_checked,
    row152_good060_checked,
    row152_good061_checked,
    row152_good062_checked,
    row152_good063_checked,
    row152_good064_checked,
    row152_good065_checked,
    row152_good066_checked,
    row152_good067_checked,
    row152_good068_checked,
    row152_good069_checked,
    row152_good070_checked,
    row152_good071_checked,
    row152_good072_checked,
    row152_good073_checked,
    row152_good074_checked,
    row152_good075_checked,
    row152_good076_checked,
    row152_good077_checked,
    row152_good078_checked,
    row152_good079_checked,
    row152_good080_checked,
    row152_good081_checked,
    row152_good082_checked,
    row152_good083_checked,
    row152_good084_checked,
    row152_good085_checked,
    row152_good086_checked,
    row152_good087_checked,
    row152_good088_checked,
    row152_good089_checked,
    row152_good090_checked,
    row152_good091_checked,
    row152_good092_checked,
    row152_good093_checked,
    row152_good094_checked,
    row152_good095_checked,
    row152_good096_checked,
    row152_good097_checked,
    row152_good098_checked,
    row152_good099_checked,
    row152_good100_checked,
    row152_good101_checked,
    row152_good102_checked,
    row152_good103_checked,
    row152_good104_checked,
    row152_good105_checked,
    row152_good106_checked,
    row152_good107_checked,
    row152_good108_checked,
    row152_good109_checked,
    row152_good110_checked,
    row152_good111_checked,
    row152_good112_checked,
    row152_good113_checked,
    row152_good114_checked,
    row152_good115_checked,
    row152_good116_checked,
    row152_good117_checked,
    row152_good118_checked,
    row152_good119_checked,
    row152_good120_checked,
    row152_good121_checked,
    row152_good122_checked,
    row152_good123_checked,
    row152_good124_checked,
    row152_good125_checked,
    row152_good126_checked,
    row152_good127_checked,
    row152_good128_checked,
    row152_good129_checked,
    row152_good130_checked,
    row152_good131_checked,
    row152_good132_checked,
    row152_good133_checked,
    row152_good134_checked,
    row152_good135_checked,
    row152_good136_checked,
    row152_good137_checked,
    row152_good138_checked,
    row152_good139_checked,
    row152_good140_checked,
    row152_good141_checked,
    row152_good142_checked,
    row152_good143_checked,
    row152_good144_checked,
    row152_good145_checked,
    row152_good146_checked,
    row152_good147_checked,
    row152_good148_checked,
    row152_good149_checked,
    row152_good150_checked,
    row152_good151_checked,
    row152_good152_checked,
    row152_good153_checked,
    row152_good154_checked,
    row152_good155_checked,
    row152_good156_checked,
    row152_good157_checked,
    row152_good158_checked,
    row152_good159_checked,
    row152_good160_checked,
    row152_good161_checked,
    row152_good162_checked,
    row152_good163_checked,
    row152_good164_checked,
    row152_good165_checked,
    row152_good166_checked,
    row152_good167_checked,
    row152_good168_checked,
    row152_good169_checked,
    row152_good170_checked,
    row152_good171_checked,
    row152_good172_checked,
    row152_good173_checked,
    row152_good174_checked,
    row152_good175_checked,
    row152_good176_checked,
    row152_good177_checked,
    row152_good178_checked,
    row152_good179_checked,
    row152_good180_checked,
    row152_good181_checked,
    row152_good182_checked,
    row152_good183_checked,
    row152_good184_checked,
    row152_good185_checked,
    row152_good186_checked,
    row152_good187_checked,
    row152_good188_checked,
    row152_good189_checked,
    row152_good190_checked,
    row152_good191_checked,
    row152_good192_checked,
    row152_good193_checked,
    row152_good194_checked,
    row152_good195_checked,
    row152_good196_checked,
    row152_good197_checked,
    row152_good198_checked,
    row152_good199_checked,
    row152_good200_checked,
    row152_good201_checked,
    row152_good202_checked,
    row152_good203_checked,
    row152_good204_checked,
    row152_good205_checked,
    row152_good206_checked,
    row152_good207_checked,
    row152_good208_checked,
    row152_good209_checked,
    row152_good210_checked,
    row152_good211_checked,
    row152_good212_checked,
    row152_good213_checked,
    row152_good214_checked,
    row152_good215_checked,
    row152_good216_checked,
    row152_good217_checked,
    row152_good218_checked,
    row152_good219_checked,
    row152_good220_checked,
    row152_good221_checked,
    row152_good222_checked,
    row152_good223_checked,
    row152_good224_checked,
    row152_good225_checked,
    row152_good226_checked,
    row152_good227_checked,
    row152_good228_checked,
    row152_good229_checked,
    row152_good230_checked,
    row152_good231_checked,
    row152_good232_checked,
    row152_good233_checked,
    row152_good234_checked,
    row152_good235_checked,
    row152_good236_checked,
    row152_good237_checked,
    row152_good238_checked,
    row152_good239_checked,
    row152_good240_checked,
    row152_good241_checked,
    row152_good242_checked,
    row152_good243_checked,
    row152_good244_checked,
    row152_good245_checked,
    row152_good246_checked,
    row152_good247_checked,
    row152_good248_checked,
    row152_good249_checked,
    row152_good250_checked,
    row152_good251_checked,
    row152_good252_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_registered :
    decide (row152.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row152_small_checked :
    coverCheck (2 * row152.height.i + 2) (row152.height.i * (row152.height.i - 1) - 1)
      (row152.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row152_layerCover_checked :
    coverCheck (row152.height.i * (row152.height.i - 1)) (row152.height.n0 - 1)
      (row152.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row152_bounds : List NatInterval :=
  [(306, 444), (445, 594), (595, 744), (745, 894), (895, 1038), (1039, 1190), (1191, 1338), (1339, 1478), (1479, 1622), (1623, 1772), (1773, 1910), (1911, 2058), (2059, 2204), (2205, 2354), (2355, 2502), (2503, 2654), (2655, 2798), (2799, 2948), (2949, 3090), (3091, 3240), (3241, 3380), (3381, 3524), (3525, 3668), (3669, 3810), (3811, 3954), (3955, 4098), (4099, 4250), (4251, 4394), (4395, 4542), (4543, 4674), (4675, 4824), (4825, 4968), (4969, 5120), (5121, 5270), (5271, 5412), (5413, 5564), (5565, 5714), (5715, 5862), (5863, 6012), (6013, 6162), (6163, 6314), (6315, 6462), (6463, 6602), (6603, 6750), (6751, 6888), (6889, 7034), (7035, 7178), (7179, 7328), (7329, 7472), (7473, 7610), (7611, 7758), (7759, 7910), (7911, 8058), (8059, 8210), (8211, 8360), (8361, 8504), (8505, 8652), (8653, 8798), (8799, 8934), (8935, 9084), (9085, 9218), (9219, 9360), (9361, 9500), (9501, 9648), (9649, 9800), (9801, 9942), (9943, 10092), (10093, 10244), (10245, 10394), (10395, 10542), (10543, 10682), (10683, 10818), (10819, 10950), (10951, 11100), (11101, 11244), (11245, 11394), (11395, 11544), (11545, 11678), (11679, 11828), (11829, 11978), (11979, 12122), (12123, 12270), (12271, 12420), (12421, 12572), (12573, 12720), (12721, 12872), (12873, 13004), (13005, 13154), (13155, 13302), (13303, 13448), (13449, 13592), (13593, 13742), (13743, 13880), (13881, 14030), (14031, 14180), (14181, 14328), (14329, 14478), (14479, 14630), (14631, 14780), (14781, 14930), (14931, 15080), (15081, 15228), (15229, 15378), (15379, 15528), (15529, 15678), (15679, 15830), (15831, 15974), (15975, 16124), (16125, 16262), (16263, 16404), (16405, 16532), (16533, 16680), (16681, 16824), (16825, 16974), (16975, 17114), (17115, 17258), (17259, 17408), (17409, 17552), (17553, 17702), (17703, 17834), (17835, 17978), (17979, 18128), (18129, 18278), (18279, 18420), (18421, 18564), (18565, 18704), (18705, 18852), (18853, 18990), (18991, 19130), (19131, 19272), (19273, 19424), (19425, 19574), (19575, 19722), (19723, 19868), (19869, 20018), (20019, 20162), (20163, 20312), (20313, 20448), (20449, 20594), (20595, 20744), (20745, 20894), (20895, 21038), (21039, 21182), (21183, 21330), (21331, 21474), (21475, 21618), (21619, 21768), (21769, 21918), (21919, 22062), (22063, 22214), (22215, 22344), (22345, 22494), (22495, 22634), (22635, 22772), (22773, 22920), (22921, 22952), (23763, 23912), (23913, 23913), (24037, 24180), (24181, 24208), (24299, 24318), (24334, 24480), (24481, 24518), (25000, 25115), (25215, 25340), (25341, 25366), (26364, 26395), (26411, 26558), (26559, 26562), (26645, 26659), (26934, 27047), (27848, 27886), (28125, 28274), (28275, 28276), (28561, 28710), (28711, 28712), (28717, 28728), (28812, 28868), (29584, 29629), (29791, 29919), (30618, 30744), (30745, 30754), (30758, 30769), (30899, 30909), (30926, 31050), (31213, 31344), (31345, 31401), (31423, 31548), (31549, 31574), (31827, 31835), (31974, 31978), (32805, 32919), (32955, 32956), (33614, 33640), (33708, 33765), (34347, 34488), (34489, 34542), (35287, 35303), (35344, 35438), (36015, 36063), (36517, 36648), (36649, 36652), (37210, 37352), (37353, 37490), (37491, 37640), (37641, 37704), (38307, 38454), (38455, 38458), (39326, 39474), (39475, 39477), (40401, 40479), (40817, 40964), (40965, 40968), (43750, 43838), (44944, 45041), (45369, 45404), (45927, 45947), (47526, 47672), (47673, 47675), (48373, 48374), (48387, 48524), (48778, 48819), (50421, 50561), (51076, 51156), (55451, 55592), (55593, 55598), (56307, 56320), (56454, 56458), (57245, 57273), (58619, 58715), (59049, 59107), (62500, 62561), (63869, 64014), (64015, 64020), (65536, 65672), (65673, 65687), (68651, 68790), (68791, 68802), (68921, 69041), (71289, 71438), (71439, 71440), (73205, 73318), (85293, 85320), (85805, 85834), (89383, 89524), (93845, 93901), (102152, 102161), (103041, 103117), (109503, 109526), (137842, 137932), (146410, 146485), (148955, 149028), (154568, 154600)]

theorem row152_bounds_eq : row152.goods.map goodSegmentBounds = row152_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row152_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32919), (2, 32768, 32919), (3, 24057, 24208), (3, 26244, 26395), (3, 28431, 28582), (3, 30618, 30769), (3, 32805, 32956), (3, 34992, 35143), (3, 37179, 37330), (3, 26244, 26395), (3, 32805, 32956), (3, 39366, 39517), (3, 39366, 39517), (5, 25000, 25151), (5, 28125, 28276), (5, 31250, 31401), (5, 34375, 34526), (5, 37500, 37651), (5, 40625, 40776), (5, 43750, 43901), (5, 31250, 31401), (7, 24010, 24161), (7, 26411, 26562), (7, 28812, 28963), (7, 31213, 31364), (7, 33614, 33765), (7, 36015, 36166), (7, 38416, 38567), (7, 40817, 40968), (7, 33614, 33765), (11, 29282, 29433), (11, 43923, 44074), (13, 24167, 24318), (13, 26364, 26515), (13, 28561, 28712), (13, 30758, 30909), (13, 32955, 33106), (13, 35152, 35303), (13, 37349, 37500), (13, 28561, 28712), (17, 24565, 24716), (17, 29478, 29629), (17, 34391, 34542), (17, 39304, 39455), (17, 44217, 44368), (23, 24334, 24485), (23, 36501, 36652), (29, 24389, 24540), (31, 29791, 29942), (37, 23273, 23424), (41, 23534, 23685), (41, 25215, 25366), (41, 26896, 27047), (41, 28577, 28728), (43, 24037, 24188), (43, 25886, 26037), (43, 27735, 27886), (43, 29584, 29735), (43, 31433, 31584), (47, 24299, 24450), (47, 26508, 26659), (47, 28717, 28868), (47, 30926, 31077), (47, 33135, 33286), (47, 35344, 35495), (47, 37553, 37704), (53, 25281, 25432), (53, 28090, 28241), (53, 30899, 31050), (53, 33708, 33859), (53, 36517, 36668), (53, 39326, 39477), (53, 42135, 42286), (53, 44944, 45095), (59, 24367, 24518), (59, 27848, 27999), (59, 31329, 31480), (59, 34810, 34961), (59, 38291, 38442), (59, 41772, 41923), (59, 45253, 45404), (61, 26047, 26198), (61, 29768, 29919), (61, 33489, 33640), (61, 37210, 37361), (61, 40931, 41082), (61, 44652, 44803), (67, 26934, 27085), (67, 31423, 31574), (67, 35912, 36063), (67, 40401, 40552), (67, 44890, 45041), (71, 25205, 25356), (71, 30246, 30397), (71, 35287, 35438), (71, 40328, 40479), (71, 45369, 45520), (73, 26645, 26796), (73, 31974, 32125), (73, 37303, 37454), (73, 42632, 42783), (79, 24964, 25115), (79, 31205, 31356), (79, 37446, 37597), (79, 43687, 43838), (83, 27556, 27707), (83, 34445, 34596), (83, 41334, 41485), (89, 23763, 23914), (89, 31684, 31835), (89, 39605, 39756), (97, 28227, 28378), (97, 37636, 37787), (101, 30603, 30754), (101, 40804, 40955), (103, 31827, 31978), (103, 42436, 42587), (107, 22952, 23049), (107, 34347, 34498), (107, 45796, 45903), (109, 23762, 23913), (109, 35643, 35794), (113, 25538, 25689), (113, 38307, 38458), (127, 32258, 32409), (131, 34322, 34473), (137, 37538, 37689), (139, 38642, 38793), (149, 44402, 44553), (151, 22952, 22952), (151, 45602, 45753)]

def row152_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32919), (2, 32768, 32919), (3, 24057, 24208), (3, 26244, 26395), (3, 28431, 28582), (3, 30618, 30769), (3, 32805, 32956), (3, 34992, 35143), (3, 37179, 37330), (3, 26244, 26395), (3, 32805, 32956), (3, 39366, 39517), (3, 39366, 39517), (5, 25000, 25151), (5, 28125, 28276)]

def row152_layer000_block001 : List ColouredInterval :=
  [(5, 31250, 31401), (5, 34375, 34526), (5, 37500, 37651), (5, 40625, 40776), (5, 43750, 43901), (5, 31250, 31401), (7, 24010, 24161), (7, 26411, 26562), (7, 28812, 28963), (7, 31213, 31364), (7, 33614, 33765), (7, 36015, 36166), (7, 38416, 38567), (7, 40817, 40968), (7, 33614, 33765)]

def row152_layer000_block002 : List ColouredInterval :=
  [(11, 29282, 29433), (11, 43923, 44074), (13, 24167, 24318), (13, 26364, 26515), (13, 28561, 28712), (13, 30758, 30909), (13, 32955, 33106), (13, 35152, 35303), (13, 37349, 37500), (13, 28561, 28712), (17, 24565, 24716), (17, 29478, 29629), (17, 34391, 34542), (17, 39304, 39455), (17, 44217, 44368)]

def row152_layer000_block003 : List ColouredInterval :=
  [(23, 24334, 24485), (23, 36501, 36652), (29, 24389, 24540), (31, 29791, 29942), (37, 23273, 23424), (41, 23534, 23685), (41, 25215, 25366), (41, 26896, 27047), (41, 28577, 28728), (43, 24037, 24188), (43, 25886, 26037), (43, 27735, 27886), (43, 29584, 29735), (43, 31433, 31584), (47, 24299, 24450)]

def row152_layer000_block004 : List ColouredInterval :=
  [(47, 26508, 26659), (47, 28717, 28868), (47, 30926, 31077), (47, 33135, 33286), (47, 35344, 35495), (47, 37553, 37704), (53, 25281, 25432), (53, 28090, 28241), (53, 30899, 31050), (53, 33708, 33859), (53, 36517, 36668), (53, 39326, 39477), (53, 42135, 42286), (53, 44944, 45095), (59, 24367, 24518)]

def row152_layer000_block005 : List ColouredInterval :=
  [(59, 27848, 27999), (59, 31329, 31480), (59, 34810, 34961), (59, 38291, 38442), (59, 41772, 41923), (59, 45253, 45404), (61, 26047, 26198), (61, 29768, 29919), (61, 33489, 33640), (61, 37210, 37361), (61, 40931, 41082), (61, 44652, 44803), (67, 26934, 27085), (67, 31423, 31574), (67, 35912, 36063)]

def row152_layer000_block006 : List ColouredInterval :=
  [(67, 40401, 40552), (67, 44890, 45041), (71, 25205, 25356), (71, 30246, 30397), (71, 35287, 35438), (71, 40328, 40479), (71, 45369, 45520), (73, 26645, 26796), (73, 31974, 32125), (73, 37303, 37454), (73, 42632, 42783), (79, 24964, 25115), (79, 31205, 31356), (79, 37446, 37597), (79, 43687, 43838)]

def row152_layer000_block007 : List ColouredInterval :=
  [(83, 27556, 27707), (83, 34445, 34596), (83, 41334, 41485), (89, 23763, 23914), (89, 31684, 31835), (89, 39605, 39756), (97, 28227, 28378), (97, 37636, 37787), (101, 30603, 30754), (101, 40804, 40955), (103, 31827, 31978), (103, 42436, 42587), (107, 22952, 23049), (107, 34347, 34498), (107, 45796, 45903)]

def row152_layer000_block008 : List ColouredInterval :=
  [(109, 23762, 23913), (109, 35643, 35794), (113, 25538, 25689), (113, 38307, 38458), (127, 32258, 32409), (131, 34322, 34473), (137, 37538, 37689), (139, 38642, 38793), (149, 44402, 44553), (151, 22952, 22952), (151, 45602, 45753)]

def row152_layer000_chunks : List (List ColouredInterval) :=
  [row152_layer000_block000, row152_layer000_block001, row152_layer000_block002, row152_layer000_block003, row152_layer000_block004, row152_layer000_block005, row152_layer000_block006, row152_layer000_block007, row152_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_arithmetic : LayerArithmeticValid row152.height { lower := 22952, upper := 45904, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_enumeration :
    activePowerIntervalList 152 17 22952 45904 = row152_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_pairs000 :
    row152_layer000_block000.all (fun I => row152_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_pairs001 :
    row152_layer000_block001.all (fun I => row152_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_pairs002 :
    row152_layer000_block002.all (fun I => row152_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_pairs003 :
    row152_layer000_block003.all (fun I => row152_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_pairs004 :
    row152_layer000_block004.all (fun I => row152_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_pairs005 :
    row152_layer000_block005.all (fun I => row152_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_pairs006 :
    row152_layer000_block006.all (fun I => row152_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_pairs007 :
    row152_layer000_block007.all (fun I => row152_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_pairs008 :
    row152_layer000_block008.all (fun I => row152_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs008
