import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row144_height : HeightCertificateDatum := { i := 144, r := 47, s := 102, n0Power10 := 8 }

def row144_goods : List GoodSegment := [
  { lower := 290, upper := 426, witness := RowWitness.topPrime 283 },
  { lower := 427, upper := 564, witness := RowWitness.topPrime 421 },
  { lower := 565, upper := 706, witness := RowWitness.topPrime 563 },
  { lower := 707, upper := 844, witness := RowWitness.topPrime 701 },
  { lower := 845, upper := 982, witness := RowWitness.topPrime 839 },
  { lower := 983, upper := 1126, witness := RowWitness.topPrime 983 },
  { lower := 1127, upper := 1266, witness := RowWitness.topPrime 1123 },
  { lower := 1267, upper := 1402, witness := RowWitness.topPrime 1259 },
  { lower := 1403, upper := 1542, witness := RowWitness.topPrime 1399 },
  { lower := 1543, upper := 1686, witness := RowWitness.topPrime 1543 },
  { lower := 1687, upper := 1812, witness := RowWitness.topPrime 1669 },
  { lower := 1813, upper := 1954, witness := RowWitness.topPrime 1811 },
  { lower := 1955, upper := 2094, witness := RowWitness.topPrime 1951 },
  { lower := 2095, upper := 2232, witness := RowWitness.topPrime 2089 },
  { lower := 2233, upper := 2364, witness := RowWitness.topPrime 2221 },
  { lower := 2365, upper := 2500, witness := RowWitness.topPrime 2357 },
  { lower := 2501, upper := 2620, witness := RowWitness.topPrime 2477 },
  { lower := 2621, upper := 2764, witness := RowWitness.topPrime 2621 },
  { lower := 2765, upper := 2896, witness := RowWitness.topPrime 2753 },
  { lower := 2897, upper := 3040, witness := RowWitness.topPrime 2897 },
  { lower := 3041, upper := 3184, witness := RowWitness.topPrime 3041 },
  { lower := 3185, upper := 3324, witness := RowWitness.topPrime 3181 },
  { lower := 3325, upper := 3466, witness := RowWitness.topPrime 3323 },
  { lower := 3467, upper := 3610, witness := RowWitness.topPrime 3467 },
  { lower := 3611, upper := 3750, witness := RowWitness.topPrime 3607 },
  { lower := 3751, upper := 3882, witness := RowWitness.topPrime 3739 },
  { lower := 3883, upper := 4024, witness := RowWitness.topPrime 3881 },
  { lower := 4025, upper := 4164, witness := RowWitness.topPrime 4021 },
  { lower := 4165, upper := 4302, witness := RowWitness.topPrime 4159 },
  { lower := 4303, upper := 4440, witness := RowWitness.topPrime 4297 },
  { lower := 4441, upper := 4584, witness := RowWitness.topPrime 4441 },
  { lower := 4585, upper := 4726, witness := RowWitness.topPrime 4583 },
  { lower := 4727, upper := 4866, witness := RowWitness.topPrime 4723 },
  { lower := 4867, upper := 5004, witness := RowWitness.topPrime 4861 },
  { lower := 5005, upper := 5146, witness := RowWitness.topPrime 5003 },
  { lower := 5147, upper := 5290, witness := RowWitness.topPrime 5147 },
  { lower := 5291, upper := 5424, witness := RowWitness.topPrime 5281 },
  { lower := 5425, upper := 5562, witness := RowWitness.topPrime 5419 },
  { lower := 5563, upper := 5706, witness := RowWitness.topPrime 5563 },
  { lower := 5707, upper := 5844, witness := RowWitness.topPrime 5701 },
  { lower := 5845, upper := 5986, witness := RowWitness.topPrime 5843 },
  { lower := 5987, upper := 6130, witness := RowWitness.topPrime 5987 },
  { lower := 6131, upper := 6274, witness := RowWitness.topPrime 6131 },
  { lower := 6275, upper := 6414, witness := RowWitness.topPrime 6271 },
  { lower := 6415, upper := 6540, witness := RowWitness.topPrime 6397 },
  { lower := 6541, upper := 6672, witness := RowWitness.topPrime 6529 },
  { lower := 6673, upper := 6816, witness := RowWitness.topPrime 6673 },
  { lower := 6817, upper := 6946, witness := RowWitness.topPrime 6803 },
  { lower := 6947, upper := 7090, witness := RowWitness.topPrime 6947 },
  { lower := 7091, upper := 7222, witness := RowWitness.topPrime 7079 },
  { lower := 7223, upper := 7362, witness := RowWitness.topPrime 7219 },
  { lower := 7363, upper := 7494, witness := RowWitness.topPrime 7351 },
  { lower := 7495, upper := 7632, witness := RowWitness.topPrime 7489 },
  { lower := 7633, upper := 7764, witness := RowWitness.topPrime 7621 },
  { lower := 7765, upper := 7902, witness := RowWitness.topPrime 7759 },
  { lower := 7903, upper := 8044, witness := RowWitness.topPrime 7901 },
  { lower := 8045, upper := 8182, witness := RowWitness.topPrime 8039 },
  { lower := 8183, upper := 8322, witness := RowWitness.topPrime 8179 },
  { lower := 8323, upper := 8460, witness := RowWitness.topPrime 8317 },
  { lower := 8461, upper := 8604, witness := RowWitness.topPrime 8461 },
  { lower := 8605, upper := 8742, witness := RowWitness.topPrime 8599 },
  { lower := 8743, upper := 8884, witness := RowWitness.topPrime 8741 },
  { lower := 8885, upper := 9010, witness := RowWitness.topPrime 8867 },
  { lower := 9011, upper := 9154, witness := RowWitness.topPrime 9011 },
  { lower := 9155, upper := 9294, witness := RowWitness.topPrime 9151 },
  { lower := 9295, upper := 9436, witness := RowWitness.topPrime 9293 },
  { lower := 9437, upper := 9580, witness := RowWitness.topPrime 9437 },
  { lower := 9581, upper := 9694, witness := RowWitness.topPrime 9551 },
  { lower := 9695, upper := 9832, witness := RowWitness.topPrime 9689 },
  { lower := 9833, upper := 9976, witness := RowWitness.topPrime 9833 },
  { lower := 9977, upper := 10116, witness := RowWitness.topPrime 9973 },
  { lower := 10117, upper := 10254, witness := RowWitness.topPrime 10111 },
  { lower := 10255, upper := 10396, witness := RowWitness.topPrime 10253 },
  { lower := 10397, upper := 10534, witness := RowWitness.topPrime 10391 },
  { lower := 10535, upper := 10674, witness := RowWitness.topPrime 10531 },
  { lower := 10675, upper := 10810, witness := RowWitness.topPrime 10667 },
  { lower := 10811, upper := 10942, witness := RowWitness.topPrime 10799 },
  { lower := 10943, upper := 11082, witness := RowWitness.topPrime 10939 },
  { lower := 11083, upper := 11226, witness := RowWitness.topPrime 11083 },
  { lower := 11227, upper := 11356, witness := RowWitness.topPrime 11213 },
  { lower := 11357, upper := 11496, witness := RowWitness.topPrime 11353 },
  { lower := 11497, upper := 11640, witness := RowWitness.topPrime 11497 },
  { lower := 11641, upper := 11776, witness := RowWitness.topPrime 11633 },
  { lower := 11777, upper := 11920, witness := RowWitness.topPrime 11777 },
  { lower := 11921, upper := 12052, witness := RowWitness.topPrime 11909 },
  { lower := 12053, upper := 12192, witness := RowWitness.topPrime 12049 },
  { lower := 12193, upper := 12306, witness := RowWitness.topPrime 12163 },
  { lower := 12307, upper := 12444, witness := RowWitness.topPrime 12301 },
  { lower := 12445, upper := 12580, witness := RowWitness.topPrime 12437 },
  { lower := 12581, upper := 12720, witness := RowWitness.topPrime 12577 },
  { lower := 12721, upper := 12864, witness := RowWitness.topPrime 12721 },
  { lower := 12865, upper := 12996, witness := RowWitness.topPrime 12853 },
  { lower := 12997, upper := 13126, witness := RowWitness.topPrime 12983 },
  { lower := 13127, upper := 13270, witness := RowWitness.topPrime 13127 },
  { lower := 13271, upper := 13410, witness := RowWitness.topPrime 13267 },
  { lower := 13411, upper := 13554, witness := RowWitness.topPrime 13411 },
  { lower := 13555, upper := 13696, witness := RowWitness.topPrime 13553 },
  { lower := 13697, upper := 13840, witness := RowWitness.topPrime 13697 },
  { lower := 13841, upper := 13984, witness := RowWitness.topPrime 13841 },
  { lower := 13985, upper := 14110, witness := RowWitness.topPrime 13967 },
  { lower := 14111, upper := 14250, witness := RowWitness.topPrime 14107 },
  { lower := 14251, upper := 14394, witness := RowWitness.topPrime 14251 },
  { lower := 14395, upper := 14532, witness := RowWitness.topPrime 14389 },
  { lower := 14533, upper := 14676, witness := RowWitness.topPrime 14533 },
  { lower := 14677, upper := 14812, witness := RowWitness.topPrime 14669 },
  { lower := 14813, upper := 14956, witness := RowWitness.topPrime 14813 },
  { lower := 14957, upper := 15100, witness := RowWitness.topPrime 14957 },
  { lower := 15101, upper := 15244, witness := RowWitness.topPrime 15101 },
  { lower := 15245, upper := 15384, witness := RowWitness.topPrime 15241 },
  { lower := 15385, upper := 15526, witness := RowWitness.topPrime 15383 },
  { lower := 15527, upper := 15670, witness := RowWitness.topPrime 15527 },
  { lower := 15671, upper := 15814, witness := RowWitness.topPrime 15671 },
  { lower := 15815, upper := 15952, witness := RowWitness.topPrime 15809 },
  { lower := 15953, upper := 16080, witness := RowWitness.topPrime 15937 },
  { lower := 16081, upper := 16216, witness := RowWitness.topPrime 16073 },
  { lower := 16217, upper := 16360, witness := RowWitness.topPrime 16217 },
  { lower := 16361, upper := 16504, witness := RowWitness.topPrime 16361 },
  { lower := 16505, upper := 16636, witness := RowWitness.topPrime 16493 },
  { lower := 16637, upper := 16776, witness := RowWitness.topPrime 16633 },
  { lower := 16777, upper := 16906, witness := RowWitness.topPrime 16763 },
  { lower := 16907, upper := 17046, witness := RowWitness.topPrime 16903 },
  { lower := 17047, upper := 17190, witness := RowWitness.topPrime 17047 },
  { lower := 17191, upper := 17334, witness := RowWitness.topPrime 17191 },
  { lower := 17335, upper := 17476, witness := RowWitness.topPrime 17333 },
  { lower := 17477, upper := 17620, witness := RowWitness.topPrime 17477 },
  { lower := 17621, upper := 17752, witness := RowWitness.topPrime 17609 },
  { lower := 17753, upper := 17892, witness := RowWitness.topPrime 17749 },
  { lower := 17893, upper := 18034, witness := RowWitness.topPrime 17891 },
  { lower := 18035, upper := 18156, witness := RowWitness.topPrime 18013 },
  { lower := 18157, upper := 18292, witness := RowWitness.topPrime 18149 },
  { lower := 18293, upper := 18432, witness := RowWitness.topPrime 18289 },
  { lower := 18433, upper := 18576, witness := RowWitness.topPrime 18433 },
  { lower := 18577, upper := 18696, witness := RowWitness.topPrime 18553 },
  { lower := 18697, upper := 18834, witness := RowWitness.topPrime 18691 },
  { lower := 18835, upper := 18946, witness := RowWitness.topPrime 18803 },
  { lower := 18947, upper := 19090, witness := RowWitness.topPrime 18947 },
  { lower := 19091, upper := 19230, witness := RowWitness.topPrime 19087 },
  { lower := 19231, upper := 19374, witness := RowWitness.topPrime 19231 },
  { lower := 19375, upper := 19516, witness := RowWitness.topPrime 19373 },
  { lower := 19517, upper := 19650, witness := RowWitness.topPrime 19507 },
  { lower := 19651, upper := 19752, witness := RowWitness.topPrime 19609 },
  { lower := 19753, upper := 19896, witness := RowWitness.topPrime 19753 },
  { lower := 19897, upper := 20034, witness := RowWitness.topPrime 19891 },
  { lower := 20035, upper := 20172, witness := RowWitness.topPrime 20029 },
  { lower := 20173, upper := 20316, witness := RowWitness.topPrime 20173 },
  { lower := 20317, upper := 20440, witness := RowWitness.topPrime 20297 },
  { lower := 20441, upper := 20584, witness := RowWitness.topPrime 20441 },
  { lower := 20585, upper := 20706, witness := RowWitness.topPrime 20563 },
  { lower := 20707, upper := 20720, witness := RowWitness.topPrime 20707 },
  { lower := 21296, upper := 21426, witness := RowWitness.topPrime 21283 },
  { lower := 21427, upper := 21439, witness := RowWitness.topPrime 21419 },
  { lower := 21875, upper := 22014, witness := RowWitness.topPrime 21871 },
  { lower := 22015, upper := 22047, witness := RowWitness.topPrime 22013 },
  { lower := 22090, upper := 22113, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22233, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22331, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22469, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22588, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23904, witness := RowWitness.topPrime 23761 },
  { lower := 23905, upper := 23905, witness := RowWitness.topPrime 23899 },
  { lower := 24037, upper := 24153, witness := RowWitness.topPrime 24029 },
  { lower := 24167, upper := 24180, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24310, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24472, witness := RowWitness.topPrime 24329 },
  { lower := 24473, upper := 24510, witness := RowWitness.topPrime 24473 },
  { lower := 25000, upper := 25107, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25332, witness := RowWitness.topPrime 25189 },
  { lower := 25333, upper := 25358, witness := RowWitness.topPrime 25321 },
  { lower := 26411, upper := 26550, witness := RowWitness.topPrime 26407 },
  { lower := 26551, upper := 26554, witness := RowWitness.topPrime 26539 },
  { lower := 26645, upper := 26651, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27039, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27579, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27878, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28266, witness := RowWitness.topPrime 28123 },
  { lower := 28267, upper := 28268, witness := RowWitness.topPrime 28229 },
  { lower := 28812, upper := 28860, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29621, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29911, witness := RowWitness.topPrime 29789 },
  { lower := 30899, upper := 30901, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31042, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31336, witness := RowWitness.topPrime 31193 },
  { lower := 31337, upper := 31393, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31472, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31827, witness := RowWitness.topPrime 31817 },
  { lower := 33614, upper := 33632, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33757, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34462, witness := RowWitness.topPrime 34319 },
  { lower := 34463, upper := 34534, witness := RowWitness.topPrime 34457 },
  { lower := 35287, upper := 35295, witness := RowWitness.topPrime 35281 },
  { lower := 35344, upper := 35430, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36055, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36640, witness := RowWitness.topPrime 36497 },
  { lower := 36641, upper := 36644, witness := RowWitness.topPrime 36637 },
  { lower := 37303, upper := 37353, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37446, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37636, witness := RowWitness.topPrime 37493 },
  { lower := 37637, upper := 37681, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38446, witness := RowWitness.topPrime 38303 },
  { lower := 38447, upper := 38450, witness := RowWitness.topPrime 38447 },
  { lower := 39326, upper := 39447, witness := RowWitness.topPrime 39323 },
  { lower := 40401, upper := 40471, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40947, witness := RowWitness.topPrime 40927 },
  { lower := 47526, upper := 47664, witness := RowWitness.topPrime 47521 },
  { lower := 47665, upper := 47667, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48104, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48811, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50553, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51148, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55584, witness := RowWitness.topPrime 55441 },
  { lower := 55585, upper := 55590, witness := RowWitness.topPrime 55579 },
  { lower := 56307, upper := 56312, witness := RowWitness.topPrime 56299 },
  { lower := 57245, upper := 57265, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58707, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59099, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62553, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63988, witness := RowWitness.topPrime 63929 },
  { lower := 68644, upper := 68782, witness := RowWitness.topPrime 68639 },
  { lower := 68783, upper := 68794, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69033, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71430, witness := RowWitness.topPrime 71287 },
  { lower := 71431, upper := 71432, witness := RowWitness.topPrime 71429 },
  { lower := 73205, upper := 73310, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85826, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89516, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93893, witness := RowWitness.topPrime 93827 },
  { lower := 103041, upper := 103109, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109518, witness := RowWitness.topPrime 109481 },
  { lower := 148955, upper := 149020, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154592, witness := RowWitness.topPrime 154543 }
]

def row144_layers : List CoverLayer := [
  { lower := 20592, upper := 41184, M := 16 },
  { lower := 41184, upper := 82368, M := 12 },
  { lower := 82368, upper := 164736, M := 9 },
  { lower := 164736, upper := 329472, M := 7 },
  { lower := 329472, upper := 658944, M := 5 },
  { lower := 658944, upper := 1317888, M := 4 },
  { lower := 1317888, upper := 2635776, M := 3 },
  { lower := 2635776, upper := 5271552, M := 3 },
  { lower := 5271552, upper := 10543104, M := 2 },
  { lower := 10543104, upper := 21086208, M := 2 },
  { lower := 21086208, upper := 42172416, M := 1 },
  { lower := 42172416, upper := 84344832, M := 1 },
  { lower := 84344832, upper := 100000000, M := 1 }
]

def row144 : FiniteCoverRow := {
  height := row144_height,
  goods := row144_goods,
  layers := row144_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good000_checked :
    goodSegmentCheck 144 47 102
      { lower := 290, upper := 426, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good001_checked :
    goodSegmentCheck 144 47 102
      { lower := 427, upper := 564, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good002_checked :
    goodSegmentCheck 144 47 102
      { lower := 565, upper := 706, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good003_checked :
    goodSegmentCheck 144 47 102
      { lower := 707, upper := 844, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good004_checked :
    goodSegmentCheck 144 47 102
      { lower := 845, upper := 982, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good005_checked :
    goodSegmentCheck 144 47 102
      { lower := 983, upper := 1126, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good006_checked :
    goodSegmentCheck 144 47 102
      { lower := 1127, upper := 1266, witness := RowWitness.topPrime 1123 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good007_checked :
    goodSegmentCheck 144 47 102
      { lower := 1267, upper := 1402, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good008_checked :
    goodSegmentCheck 144 47 102
      { lower := 1403, upper := 1542, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good009_checked :
    goodSegmentCheck 144 47 102
      { lower := 1543, upper := 1686, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good010_checked :
    goodSegmentCheck 144 47 102
      { lower := 1687, upper := 1812, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good011_checked :
    goodSegmentCheck 144 47 102
      { lower := 1813, upper := 1954, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good012_checked :
    goodSegmentCheck 144 47 102
      { lower := 1955, upper := 2094, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good013_checked :
    goodSegmentCheck 144 47 102
      { lower := 2095, upper := 2232, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good014_checked :
    goodSegmentCheck 144 47 102
      { lower := 2233, upper := 2364, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good015_checked :
    goodSegmentCheck 144 47 102
      { lower := 2365, upper := 2500, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good016_checked :
    goodSegmentCheck 144 47 102
      { lower := 2501, upper := 2620, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good017_checked :
    goodSegmentCheck 144 47 102
      { lower := 2621, upper := 2764, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good018_checked :
    goodSegmentCheck 144 47 102
      { lower := 2765, upper := 2896, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good019_checked :
    goodSegmentCheck 144 47 102
      { lower := 2897, upper := 3040, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good020_checked :
    goodSegmentCheck 144 47 102
      { lower := 3041, upper := 3184, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good021_checked :
    goodSegmentCheck 144 47 102
      { lower := 3185, upper := 3324, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good022_checked :
    goodSegmentCheck 144 47 102
      { lower := 3325, upper := 3466, witness := RowWitness.topPrime 3323 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good023_checked :
    goodSegmentCheck 144 47 102
      { lower := 3467, upper := 3610, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good024_checked :
    goodSegmentCheck 144 47 102
      { lower := 3611, upper := 3750, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good025_checked :
    goodSegmentCheck 144 47 102
      { lower := 3751, upper := 3882, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good026_checked :
    goodSegmentCheck 144 47 102
      { lower := 3883, upper := 4024, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good027_checked :
    goodSegmentCheck 144 47 102
      { lower := 4025, upper := 4164, witness := RowWitness.topPrime 4021 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good028_checked :
    goodSegmentCheck 144 47 102
      { lower := 4165, upper := 4302, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good029_checked :
    goodSegmentCheck 144 47 102
      { lower := 4303, upper := 4440, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good030_checked :
    goodSegmentCheck 144 47 102
      { lower := 4441, upper := 4584, witness := RowWitness.topPrime 4441 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good031_checked :
    goodSegmentCheck 144 47 102
      { lower := 4585, upper := 4726, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good032_checked :
    goodSegmentCheck 144 47 102
      { lower := 4727, upper := 4866, witness := RowWitness.topPrime 4723 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good033_checked :
    goodSegmentCheck 144 47 102
      { lower := 4867, upper := 5004, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good034_checked :
    goodSegmentCheck 144 47 102
      { lower := 5005, upper := 5146, witness := RowWitness.topPrime 5003 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good035_checked :
    goodSegmentCheck 144 47 102
      { lower := 5147, upper := 5290, witness := RowWitness.topPrime 5147 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good036_checked :
    goodSegmentCheck 144 47 102
      { lower := 5291, upper := 5424, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good037_checked :
    goodSegmentCheck 144 47 102
      { lower := 5425, upper := 5562, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good038_checked :
    goodSegmentCheck 144 47 102
      { lower := 5563, upper := 5706, witness := RowWitness.topPrime 5563 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good039_checked :
    goodSegmentCheck 144 47 102
      { lower := 5707, upper := 5844, witness := RowWitness.topPrime 5701 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good040_checked :
    goodSegmentCheck 144 47 102
      { lower := 5845, upper := 5986, witness := RowWitness.topPrime 5843 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good041_checked :
    goodSegmentCheck 144 47 102
      { lower := 5987, upper := 6130, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good042_checked :
    goodSegmentCheck 144 47 102
      { lower := 6131, upper := 6274, witness := RowWitness.topPrime 6131 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good043_checked :
    goodSegmentCheck 144 47 102
      { lower := 6275, upper := 6414, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good044_checked :
    goodSegmentCheck 144 47 102
      { lower := 6415, upper := 6540, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good045_checked :
    goodSegmentCheck 144 47 102
      { lower := 6541, upper := 6672, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good046_checked :
    goodSegmentCheck 144 47 102
      { lower := 6673, upper := 6816, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good047_checked :
    goodSegmentCheck 144 47 102
      { lower := 6817, upper := 6946, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good048_checked :
    goodSegmentCheck 144 47 102
      { lower := 6947, upper := 7090, witness := RowWitness.topPrime 6947 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good049_checked :
    goodSegmentCheck 144 47 102
      { lower := 7091, upper := 7222, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good050_checked :
    goodSegmentCheck 144 47 102
      { lower := 7223, upper := 7362, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good051_checked :
    goodSegmentCheck 144 47 102
      { lower := 7363, upper := 7494, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good052_checked :
    goodSegmentCheck 144 47 102
      { lower := 7495, upper := 7632, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good053_checked :
    goodSegmentCheck 144 47 102
      { lower := 7633, upper := 7764, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good054_checked :
    goodSegmentCheck 144 47 102
      { lower := 7765, upper := 7902, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good055_checked :
    goodSegmentCheck 144 47 102
      { lower := 7903, upper := 8044, witness := RowWitness.topPrime 7901 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good056_checked :
    goodSegmentCheck 144 47 102
      { lower := 8045, upper := 8182, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good057_checked :
    goodSegmentCheck 144 47 102
      { lower := 8183, upper := 8322, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good058_checked :
    goodSegmentCheck 144 47 102
      { lower := 8323, upper := 8460, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good059_checked :
    goodSegmentCheck 144 47 102
      { lower := 8461, upper := 8604, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good060_checked :
    goodSegmentCheck 144 47 102
      { lower := 8605, upper := 8742, witness := RowWitness.topPrime 8599 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good061_checked :
    goodSegmentCheck 144 47 102
      { lower := 8743, upper := 8884, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good062_checked :
    goodSegmentCheck 144 47 102
      { lower := 8885, upper := 9010, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good063_checked :
    goodSegmentCheck 144 47 102
      { lower := 9011, upper := 9154, witness := RowWitness.topPrime 9011 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good064_checked :
    goodSegmentCheck 144 47 102
      { lower := 9155, upper := 9294, witness := RowWitness.topPrime 9151 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good065_checked :
    goodSegmentCheck 144 47 102
      { lower := 9295, upper := 9436, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good066_checked :
    goodSegmentCheck 144 47 102
      { lower := 9437, upper := 9580, witness := RowWitness.topPrime 9437 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good067_checked :
    goodSegmentCheck 144 47 102
      { lower := 9581, upper := 9694, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good068_checked :
    goodSegmentCheck 144 47 102
      { lower := 9695, upper := 9832, witness := RowWitness.topPrime 9689 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good069_checked :
    goodSegmentCheck 144 47 102
      { lower := 9833, upper := 9976, witness := RowWitness.topPrime 9833 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good070_checked :
    goodSegmentCheck 144 47 102
      { lower := 9977, upper := 10116, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good071_checked :
    goodSegmentCheck 144 47 102
      { lower := 10117, upper := 10254, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good072_checked :
    goodSegmentCheck 144 47 102
      { lower := 10255, upper := 10396, witness := RowWitness.topPrime 10253 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good073_checked :
    goodSegmentCheck 144 47 102
      { lower := 10397, upper := 10534, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good074_checked :
    goodSegmentCheck 144 47 102
      { lower := 10535, upper := 10674, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good075_checked :
    goodSegmentCheck 144 47 102
      { lower := 10675, upper := 10810, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good076_checked :
    goodSegmentCheck 144 47 102
      { lower := 10811, upper := 10942, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good077_checked :
    goodSegmentCheck 144 47 102
      { lower := 10943, upper := 11082, witness := RowWitness.topPrime 10939 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good078_checked :
    goodSegmentCheck 144 47 102
      { lower := 11083, upper := 11226, witness := RowWitness.topPrime 11083 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good079_checked :
    goodSegmentCheck 144 47 102
      { lower := 11227, upper := 11356, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good080_checked :
    goodSegmentCheck 144 47 102
      { lower := 11357, upper := 11496, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good081_checked :
    goodSegmentCheck 144 47 102
      { lower := 11497, upper := 11640, witness := RowWitness.topPrime 11497 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good082_checked :
    goodSegmentCheck 144 47 102
      { lower := 11641, upper := 11776, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good083_checked :
    goodSegmentCheck 144 47 102
      { lower := 11777, upper := 11920, witness := RowWitness.topPrime 11777 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good084_checked :
    goodSegmentCheck 144 47 102
      { lower := 11921, upper := 12052, witness := RowWitness.topPrime 11909 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good085_checked :
    goodSegmentCheck 144 47 102
      { lower := 12053, upper := 12192, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good086_checked :
    goodSegmentCheck 144 47 102
      { lower := 12193, upper := 12306, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good087_checked :
    goodSegmentCheck 144 47 102
      { lower := 12307, upper := 12444, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good088_checked :
    goodSegmentCheck 144 47 102
      { lower := 12445, upper := 12580, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good089_checked :
    goodSegmentCheck 144 47 102
      { lower := 12581, upper := 12720, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good090_checked :
    goodSegmentCheck 144 47 102
      { lower := 12721, upper := 12864, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good091_checked :
    goodSegmentCheck 144 47 102
      { lower := 12865, upper := 12996, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good092_checked :
    goodSegmentCheck 144 47 102
      { lower := 12997, upper := 13126, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good093_checked :
    goodSegmentCheck 144 47 102
      { lower := 13127, upper := 13270, witness := RowWitness.topPrime 13127 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good094_checked :
    goodSegmentCheck 144 47 102
      { lower := 13271, upper := 13410, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good095_checked :
    goodSegmentCheck 144 47 102
      { lower := 13411, upper := 13554, witness := RowWitness.topPrime 13411 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good096_checked :
    goodSegmentCheck 144 47 102
      { lower := 13555, upper := 13696, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good097_checked :
    goodSegmentCheck 144 47 102
      { lower := 13697, upper := 13840, witness := RowWitness.topPrime 13697 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good098_checked :
    goodSegmentCheck 144 47 102
      { lower := 13841, upper := 13984, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good099_checked :
    goodSegmentCheck 144 47 102
      { lower := 13985, upper := 14110, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good100_checked :
    goodSegmentCheck 144 47 102
      { lower := 14111, upper := 14250, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good101_checked :
    goodSegmentCheck 144 47 102
      { lower := 14251, upper := 14394, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good102_checked :
    goodSegmentCheck 144 47 102
      { lower := 14395, upper := 14532, witness := RowWitness.topPrime 14389 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good103_checked :
    goodSegmentCheck 144 47 102
      { lower := 14533, upper := 14676, witness := RowWitness.topPrime 14533 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good104_checked :
    goodSegmentCheck 144 47 102
      { lower := 14677, upper := 14812, witness := RowWitness.topPrime 14669 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good105_checked :
    goodSegmentCheck 144 47 102
      { lower := 14813, upper := 14956, witness := RowWitness.topPrime 14813 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good106_checked :
    goodSegmentCheck 144 47 102
      { lower := 14957, upper := 15100, witness := RowWitness.topPrime 14957 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good107_checked :
    goodSegmentCheck 144 47 102
      { lower := 15101, upper := 15244, witness := RowWitness.topPrime 15101 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good108_checked :
    goodSegmentCheck 144 47 102
      { lower := 15245, upper := 15384, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good109_checked :
    goodSegmentCheck 144 47 102
      { lower := 15385, upper := 15526, witness := RowWitness.topPrime 15383 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good110_checked :
    goodSegmentCheck 144 47 102
      { lower := 15527, upper := 15670, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good111_checked :
    goodSegmentCheck 144 47 102
      { lower := 15671, upper := 15814, witness := RowWitness.topPrime 15671 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good112_checked :
    goodSegmentCheck 144 47 102
      { lower := 15815, upper := 15952, witness := RowWitness.topPrime 15809 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good113_checked :
    goodSegmentCheck 144 47 102
      { lower := 15953, upper := 16080, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good114_checked :
    goodSegmentCheck 144 47 102
      { lower := 16081, upper := 16216, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good115_checked :
    goodSegmentCheck 144 47 102
      { lower := 16217, upper := 16360, witness := RowWitness.topPrime 16217 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good116_checked :
    goodSegmentCheck 144 47 102
      { lower := 16361, upper := 16504, witness := RowWitness.topPrime 16361 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good117_checked :
    goodSegmentCheck 144 47 102
      { lower := 16505, upper := 16636, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good118_checked :
    goodSegmentCheck 144 47 102
      { lower := 16637, upper := 16776, witness := RowWitness.topPrime 16633 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good119_checked :
    goodSegmentCheck 144 47 102
      { lower := 16777, upper := 16906, witness := RowWitness.topPrime 16763 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good120_checked :
    goodSegmentCheck 144 47 102
      { lower := 16907, upper := 17046, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good121_checked :
    goodSegmentCheck 144 47 102
      { lower := 17047, upper := 17190, witness := RowWitness.topPrime 17047 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good122_checked :
    goodSegmentCheck 144 47 102
      { lower := 17191, upper := 17334, witness := RowWitness.topPrime 17191 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good123_checked :
    goodSegmentCheck 144 47 102
      { lower := 17335, upper := 17476, witness := RowWitness.topPrime 17333 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good124_checked :
    goodSegmentCheck 144 47 102
      { lower := 17477, upper := 17620, witness := RowWitness.topPrime 17477 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good125_checked :
    goodSegmentCheck 144 47 102
      { lower := 17621, upper := 17752, witness := RowWitness.topPrime 17609 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good126_checked :
    goodSegmentCheck 144 47 102
      { lower := 17753, upper := 17892, witness := RowWitness.topPrime 17749 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good127_checked :
    goodSegmentCheck 144 47 102
      { lower := 17893, upper := 18034, witness := RowWitness.topPrime 17891 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good128_checked :
    goodSegmentCheck 144 47 102
      { lower := 18035, upper := 18156, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good129_checked :
    goodSegmentCheck 144 47 102
      { lower := 18157, upper := 18292, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good130_checked :
    goodSegmentCheck 144 47 102
      { lower := 18293, upper := 18432, witness := RowWitness.topPrime 18289 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good131_checked :
    goodSegmentCheck 144 47 102
      { lower := 18433, upper := 18576, witness := RowWitness.topPrime 18433 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good132_checked :
    goodSegmentCheck 144 47 102
      { lower := 18577, upper := 18696, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good133_checked :
    goodSegmentCheck 144 47 102
      { lower := 18697, upper := 18834, witness := RowWitness.topPrime 18691 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good134_checked :
    goodSegmentCheck 144 47 102
      { lower := 18835, upper := 18946, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good135_checked :
    goodSegmentCheck 144 47 102
      { lower := 18947, upper := 19090, witness := RowWitness.topPrime 18947 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good136_checked :
    goodSegmentCheck 144 47 102
      { lower := 19091, upper := 19230, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good137_checked :
    goodSegmentCheck 144 47 102
      { lower := 19231, upper := 19374, witness := RowWitness.topPrime 19231 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good138_checked :
    goodSegmentCheck 144 47 102
      { lower := 19375, upper := 19516, witness := RowWitness.topPrime 19373 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good139_checked :
    goodSegmentCheck 144 47 102
      { lower := 19517, upper := 19650, witness := RowWitness.topPrime 19507 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good140_checked :
    goodSegmentCheck 144 47 102
      { lower := 19651, upper := 19752, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good141_checked :
    goodSegmentCheck 144 47 102
      { lower := 19753, upper := 19896, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good142_checked :
    goodSegmentCheck 144 47 102
      { lower := 19897, upper := 20034, witness := RowWitness.topPrime 19891 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good143_checked :
    goodSegmentCheck 144 47 102
      { lower := 20035, upper := 20172, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good144_checked :
    goodSegmentCheck 144 47 102
      { lower := 20173, upper := 20316, witness := RowWitness.topPrime 20173 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good145_checked :
    goodSegmentCheck 144 47 102
      { lower := 20317, upper := 20440, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good146_checked :
    goodSegmentCheck 144 47 102
      { lower := 20441, upper := 20584, witness := RowWitness.topPrime 20441 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good147_checked :
    goodSegmentCheck 144 47 102
      { lower := 20585, upper := 20706, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good148_checked :
    goodSegmentCheck 144 47 102
      { lower := 20707, upper := 20720, witness := RowWitness.topPrime 20707 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good149_checked :
    goodSegmentCheck 144 47 102
      { lower := 21296, upper := 21426, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good150_checked :
    goodSegmentCheck 144 47 102
      { lower := 21427, upper := 21439, witness := RowWitness.topPrime 21419 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good151_checked :
    goodSegmentCheck 144 47 102
      { lower := 21875, upper := 22014, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good152_checked :
    goodSegmentCheck 144 47 102
      { lower := 22015, upper := 22047, witness := RowWitness.topPrime 22013 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good153_checked :
    goodSegmentCheck 144 47 102
      { lower := 22090, upper := 22113, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good154_checked :
    goodSegmentCheck 144 47 102
      { lower := 22188, upper := 22233, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good155_checked :
    goodSegmentCheck 144 47 102
      { lower := 22326, upper := 22331, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good156_checked :
    goodSegmentCheck 144 47 102
      { lower := 22445, upper := 22469, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good157_checked :
    goodSegmentCheck 144 47 102
      { lower := 22472, upper := 22588, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good158_checked :
    goodSegmentCheck 144 47 102
      { lower := 23763, upper := 23904, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good159_checked :
    goodSegmentCheck 144 47 102
      { lower := 23905, upper := 23905, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good160_checked :
    goodSegmentCheck 144 47 102
      { lower := 24037, upper := 24153, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good161_checked :
    goodSegmentCheck 144 47 102
      { lower := 24167, upper := 24180, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good162_checked :
    goodSegmentCheck 144 47 102
      { lower := 24299, upper := 24310, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good163_checked :
    goodSegmentCheck 144 47 102
      { lower := 24334, upper := 24472, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good164_checked :
    goodSegmentCheck 144 47 102
      { lower := 24473, upper := 24510, witness := RowWitness.topPrime 24473 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good165_checked :
    goodSegmentCheck 144 47 102
      { lower := 25000, upper := 25107, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good166_checked :
    goodSegmentCheck 144 47 102
      { lower := 25215, upper := 25332, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good167_checked :
    goodSegmentCheck 144 47 102
      { lower := 25333, upper := 25358, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good168_checked :
    goodSegmentCheck 144 47 102
      { lower := 26411, upper := 26550, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good169_checked :
    goodSegmentCheck 144 47 102
      { lower := 26551, upper := 26554, witness := RowWitness.topPrime 26539 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good170_checked :
    goodSegmentCheck 144 47 102
      { lower := 26645, upper := 26651, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good171_checked :
    goodSegmentCheck 144 47 102
      { lower := 26934, upper := 27039, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good172_checked :
    goodSegmentCheck 144 47 102
      { lower := 27556, upper := 27579, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good173_checked :
    goodSegmentCheck 144 47 102
      { lower := 27848, upper := 27878, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good174_checked :
    goodSegmentCheck 144 47 102
      { lower := 28125, upper := 28266, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good175_checked :
    goodSegmentCheck 144 47 102
      { lower := 28267, upper := 28268, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good176_checked :
    goodSegmentCheck 144 47 102
      { lower := 28812, upper := 28860, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good177_checked :
    goodSegmentCheck 144 47 102
      { lower := 29584, upper := 29621, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good178_checked :
    goodSegmentCheck 144 47 102
      { lower := 29791, upper := 29911, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good179_checked :
    goodSegmentCheck 144 47 102
      { lower := 30899, upper := 30901, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good180_checked :
    goodSegmentCheck 144 47 102
      { lower := 30926, upper := 31042, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good181_checked :
    goodSegmentCheck 144 47 102
      { lower := 31213, upper := 31336, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good182_checked :
    goodSegmentCheck 144 47 102
      { lower := 31337, upper := 31393, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good183_checked :
    goodSegmentCheck 144 47 102
      { lower := 31423, upper := 31472, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good184_checked :
    goodSegmentCheck 144 47 102
      { lower := 31827, upper := 31827, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good185_checked :
    goodSegmentCheck 144 47 102
      { lower := 33614, upper := 33632, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good186_checked :
    goodSegmentCheck 144 47 102
      { lower := 33708, upper := 33757, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good187_checked :
    goodSegmentCheck 144 47 102
      { lower := 34322, upper := 34462, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good188_checked :
    goodSegmentCheck 144 47 102
      { lower := 34463, upper := 34534, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good189_checked :
    goodSegmentCheck 144 47 102
      { lower := 35287, upper := 35295, witness := RowWitness.topPrime 35281 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good190_checked :
    goodSegmentCheck 144 47 102
      { lower := 35344, upper := 35430, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good191_checked :
    goodSegmentCheck 144 47 102
      { lower := 36015, upper := 36055, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good192_checked :
    goodSegmentCheck 144 47 102
      { lower := 36517, upper := 36640, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good193_checked :
    goodSegmentCheck 144 47 102
      { lower := 36641, upper := 36644, witness := RowWitness.topPrime 36637 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good194_checked :
    goodSegmentCheck 144 47 102
      { lower := 37303, upper := 37353, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good195_checked :
    goodSegmentCheck 144 47 102
      { lower := 37446, upper := 37446, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good196_checked :
    goodSegmentCheck 144 47 102
      { lower := 37500, upper := 37636, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good197_checked :
    goodSegmentCheck 144 47 102
      { lower := 37637, upper := 37681, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good198_checked :
    goodSegmentCheck 144 47 102
      { lower := 38307, upper := 38446, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good199_checked :
    goodSegmentCheck 144 47 102
      { lower := 38447, upper := 38450, witness := RowWitness.topPrime 38447 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good200_checked :
    goodSegmentCheck 144 47 102
      { lower := 39326, upper := 39447, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good201_checked :
    goodSegmentCheck 144 47 102
      { lower := 40401, upper := 40471, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good202_checked :
    goodSegmentCheck 144 47 102
      { lower := 40931, upper := 40947, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good203_checked :
    goodSegmentCheck 144 47 102
      { lower := 47526, upper := 47664, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good204_checked :
    goodSegmentCheck 144 47 102
      { lower := 47665, upper := 47667, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good205_checked :
    goodSegmentCheck 144 47 102
      { lower := 48013, upper := 48104, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good206_checked :
    goodSegmentCheck 144 47 102
      { lower := 48778, upper := 48811, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good207_checked :
    goodSegmentCheck 144 47 102
      { lower := 50421, upper := 50553, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good208_checked :
    goodSegmentCheck 144 47 102
      { lower := 51076, upper := 51148, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good209_checked :
    goodSegmentCheck 144 47 102
      { lower := 55451, upper := 55584, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good210_checked :
    goodSegmentCheck 144 47 102
      { lower := 55585, upper := 55590, witness := RowWitness.topPrime 55579 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good211_checked :
    goodSegmentCheck 144 47 102
      { lower := 56307, upper := 56312, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good212_checked :
    goodSegmentCheck 144 47 102
      { lower := 57245, upper := 57265, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good213_checked :
    goodSegmentCheck 144 47 102
      { lower := 58619, upper := 58707, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good214_checked :
    goodSegmentCheck 144 47 102
      { lower := 59049, upper := 59099, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good215_checked :
    goodSegmentCheck 144 47 102
      { lower := 62500, upper := 62553, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good216_checked :
    goodSegmentCheck 144 47 102
      { lower := 63948, upper := 63988, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good217_checked :
    goodSegmentCheck 144 47 102
      { lower := 68644, upper := 68782, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good218_checked :
    goodSegmentCheck 144 47 102
      { lower := 68783, upper := 68794, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good219_checked :
    goodSegmentCheck 144 47 102
      { lower := 68921, upper := 69033, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good220_checked :
    goodSegmentCheck 144 47 102
      { lower := 71289, upper := 71430, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good221_checked :
    goodSegmentCheck 144 47 102
      { lower := 71431, upper := 71432, witness := RowWitness.topPrime 71429 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good222_checked :
    goodSegmentCheck 144 47 102
      { lower := 73205, upper := 73310, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good223_checked :
    goodSegmentCheck 144 47 102
      { lower := 85805, upper := 85826, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good224_checked :
    goodSegmentCheck 144 47 102
      { lower := 89383, upper := 89516, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good225_checked :
    goodSegmentCheck 144 47 102
      { lower := 93845, upper := 93893, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good226_checked :
    goodSegmentCheck 144 47 102
      { lower := 103041, upper := 103109, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good227_checked :
    goodSegmentCheck 144 47 102
      { lower := 109503, upper := 109518, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good228_checked :
    goodSegmentCheck 144 47 102
      { lower := 148955, upper := 149020, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good229_checked :
    goodSegmentCheck 144 47 102
      { lower := 154568, upper := 154592, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good229_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_goods_checked :
    row144.goods.all (goodSegmentCheck row144.height.i row144.height.r row144.height.s) = true := by
  change row144_goods.all (goodSegmentCheck 144 47 102) = true
  simp only [row144_goods, List.all_cons, List.all_nil,
    row144_good000_checked,
    row144_good001_checked,
    row144_good002_checked,
    row144_good003_checked,
    row144_good004_checked,
    row144_good005_checked,
    row144_good006_checked,
    row144_good007_checked,
    row144_good008_checked,
    row144_good009_checked,
    row144_good010_checked,
    row144_good011_checked,
    row144_good012_checked,
    row144_good013_checked,
    row144_good014_checked,
    row144_good015_checked,
    row144_good016_checked,
    row144_good017_checked,
    row144_good018_checked,
    row144_good019_checked,
    row144_good020_checked,
    row144_good021_checked,
    row144_good022_checked,
    row144_good023_checked,
    row144_good024_checked,
    row144_good025_checked,
    row144_good026_checked,
    row144_good027_checked,
    row144_good028_checked,
    row144_good029_checked,
    row144_good030_checked,
    row144_good031_checked,
    row144_good032_checked,
    row144_good033_checked,
    row144_good034_checked,
    row144_good035_checked,
    row144_good036_checked,
    row144_good037_checked,
    row144_good038_checked,
    row144_good039_checked,
    row144_good040_checked,
    row144_good041_checked,
    row144_good042_checked,
    row144_good043_checked,
    row144_good044_checked,
    row144_good045_checked,
    row144_good046_checked,
    row144_good047_checked,
    row144_good048_checked,
    row144_good049_checked,
    row144_good050_checked,
    row144_good051_checked,
    row144_good052_checked,
    row144_good053_checked,
    row144_good054_checked,
    row144_good055_checked,
    row144_good056_checked,
    row144_good057_checked,
    row144_good058_checked,
    row144_good059_checked,
    row144_good060_checked,
    row144_good061_checked,
    row144_good062_checked,
    row144_good063_checked,
    row144_good064_checked,
    row144_good065_checked,
    row144_good066_checked,
    row144_good067_checked,
    row144_good068_checked,
    row144_good069_checked,
    row144_good070_checked,
    row144_good071_checked,
    row144_good072_checked,
    row144_good073_checked,
    row144_good074_checked,
    row144_good075_checked,
    row144_good076_checked,
    row144_good077_checked,
    row144_good078_checked,
    row144_good079_checked,
    row144_good080_checked,
    row144_good081_checked,
    row144_good082_checked,
    row144_good083_checked,
    row144_good084_checked,
    row144_good085_checked,
    row144_good086_checked,
    row144_good087_checked,
    row144_good088_checked,
    row144_good089_checked,
    row144_good090_checked,
    row144_good091_checked,
    row144_good092_checked,
    row144_good093_checked,
    row144_good094_checked,
    row144_good095_checked,
    row144_good096_checked,
    row144_good097_checked,
    row144_good098_checked,
    row144_good099_checked,
    row144_good100_checked,
    row144_good101_checked,
    row144_good102_checked,
    row144_good103_checked,
    row144_good104_checked,
    row144_good105_checked,
    row144_good106_checked,
    row144_good107_checked,
    row144_good108_checked,
    row144_good109_checked,
    row144_good110_checked,
    row144_good111_checked,
    row144_good112_checked,
    row144_good113_checked,
    row144_good114_checked,
    row144_good115_checked,
    row144_good116_checked,
    row144_good117_checked,
    row144_good118_checked,
    row144_good119_checked,
    row144_good120_checked,
    row144_good121_checked,
    row144_good122_checked,
    row144_good123_checked,
    row144_good124_checked,
    row144_good125_checked,
    row144_good126_checked,
    row144_good127_checked,
    row144_good128_checked,
    row144_good129_checked,
    row144_good130_checked,
    row144_good131_checked,
    row144_good132_checked,
    row144_good133_checked,
    row144_good134_checked,
    row144_good135_checked,
    row144_good136_checked,
    row144_good137_checked,
    row144_good138_checked,
    row144_good139_checked,
    row144_good140_checked,
    row144_good141_checked,
    row144_good142_checked,
    row144_good143_checked,
    row144_good144_checked,
    row144_good145_checked,
    row144_good146_checked,
    row144_good147_checked,
    row144_good148_checked,
    row144_good149_checked,
    row144_good150_checked,
    row144_good151_checked,
    row144_good152_checked,
    row144_good153_checked,
    row144_good154_checked,
    row144_good155_checked,
    row144_good156_checked,
    row144_good157_checked,
    row144_good158_checked,
    row144_good159_checked,
    row144_good160_checked,
    row144_good161_checked,
    row144_good162_checked,
    row144_good163_checked,
    row144_good164_checked,
    row144_good165_checked,
    row144_good166_checked,
    row144_good167_checked,
    row144_good168_checked,
    row144_good169_checked,
    row144_good170_checked,
    row144_good171_checked,
    row144_good172_checked,
    row144_good173_checked,
    row144_good174_checked,
    row144_good175_checked,
    row144_good176_checked,
    row144_good177_checked,
    row144_good178_checked,
    row144_good179_checked,
    row144_good180_checked,
    row144_good181_checked,
    row144_good182_checked,
    row144_good183_checked,
    row144_good184_checked,
    row144_good185_checked,
    row144_good186_checked,
    row144_good187_checked,
    row144_good188_checked,
    row144_good189_checked,
    row144_good190_checked,
    row144_good191_checked,
    row144_good192_checked,
    row144_good193_checked,
    row144_good194_checked,
    row144_good195_checked,
    row144_good196_checked,
    row144_good197_checked,
    row144_good198_checked,
    row144_good199_checked,
    row144_good200_checked,
    row144_good201_checked,
    row144_good202_checked,
    row144_good203_checked,
    row144_good204_checked,
    row144_good205_checked,
    row144_good206_checked,
    row144_good207_checked,
    row144_good208_checked,
    row144_good209_checked,
    row144_good210_checked,
    row144_good211_checked,
    row144_good212_checked,
    row144_good213_checked,
    row144_good214_checked,
    row144_good215_checked,
    row144_good216_checked,
    row144_good217_checked,
    row144_good218_checked,
    row144_good219_checked,
    row144_good220_checked,
    row144_good221_checked,
    row144_good222_checked,
    row144_good223_checked,
    row144_good224_checked,
    row144_good225_checked,
    row144_good226_checked,
    row144_good227_checked,
    row144_good228_checked,
    row144_good229_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_registered :
    decide (row144.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row144_small_checked :
    coverCheck (2 * row144.height.i + 2) (row144.height.i * (row144.height.i - 1) - 1)
      (row144.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row144_layerCover_checked :
    coverCheck (row144.height.i * (row144.height.i - 1)) (row144.height.n0 - 1)
      (row144.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row144_bounds : List NatInterval :=
  [(290, 426), (427, 564), (565, 706), (707, 844), (845, 982), (983, 1126), (1127, 1266), (1267, 1402), (1403, 1542), (1543, 1686), (1687, 1812), (1813, 1954), (1955, 2094), (2095, 2232), (2233, 2364), (2365, 2500), (2501, 2620), (2621, 2764), (2765, 2896), (2897, 3040), (3041, 3184), (3185, 3324), (3325, 3466), (3467, 3610), (3611, 3750), (3751, 3882), (3883, 4024), (4025, 4164), (4165, 4302), (4303, 4440), (4441, 4584), (4585, 4726), (4727, 4866), (4867, 5004), (5005, 5146), (5147, 5290), (5291, 5424), (5425, 5562), (5563, 5706), (5707, 5844), (5845, 5986), (5987, 6130), (6131, 6274), (6275, 6414), (6415, 6540), (6541, 6672), (6673, 6816), (6817, 6946), (6947, 7090), (7091, 7222), (7223, 7362), (7363, 7494), (7495, 7632), (7633, 7764), (7765, 7902), (7903, 8044), (8045, 8182), (8183, 8322), (8323, 8460), (8461, 8604), (8605, 8742), (8743, 8884), (8885, 9010), (9011, 9154), (9155, 9294), (9295, 9436), (9437, 9580), (9581, 9694), (9695, 9832), (9833, 9976), (9977, 10116), (10117, 10254), (10255, 10396), (10397, 10534), (10535, 10674), (10675, 10810), (10811, 10942), (10943, 11082), (11083, 11226), (11227, 11356), (11357, 11496), (11497, 11640), (11641, 11776), (11777, 11920), (11921, 12052), (12053, 12192), (12193, 12306), (12307, 12444), (12445, 12580), (12581, 12720), (12721, 12864), (12865, 12996), (12997, 13126), (13127, 13270), (13271, 13410), (13411, 13554), (13555, 13696), (13697, 13840), (13841, 13984), (13985, 14110), (14111, 14250), (14251, 14394), (14395, 14532), (14533, 14676), (14677, 14812), (14813, 14956), (14957, 15100), (15101, 15244), (15245, 15384), (15385, 15526), (15527, 15670), (15671, 15814), (15815, 15952), (15953, 16080), (16081, 16216), (16217, 16360), (16361, 16504), (16505, 16636), (16637, 16776), (16777, 16906), (16907, 17046), (17047, 17190), (17191, 17334), (17335, 17476), (17477, 17620), (17621, 17752), (17753, 17892), (17893, 18034), (18035, 18156), (18157, 18292), (18293, 18432), (18433, 18576), (18577, 18696), (18697, 18834), (18835, 18946), (18947, 19090), (19091, 19230), (19231, 19374), (19375, 19516), (19517, 19650), (19651, 19752), (19753, 19896), (19897, 20034), (20035, 20172), (20173, 20316), (20317, 20440), (20441, 20584), (20585, 20706), (20707, 20720), (21296, 21426), (21427, 21439), (21875, 22014), (22015, 22047), (22090, 22113), (22188, 22233), (22326, 22331), (22445, 22469), (22472, 22588), (23763, 23904), (23905, 23905), (24037, 24153), (24167, 24180), (24299, 24310), (24334, 24472), (24473, 24510), (25000, 25107), (25215, 25332), (25333, 25358), (26411, 26550), (26551, 26554), (26645, 26651), (26934, 27039), (27556, 27579), (27848, 27878), (28125, 28266), (28267, 28268), (28812, 28860), (29584, 29621), (29791, 29911), (30899, 30901), (30926, 31042), (31213, 31336), (31337, 31393), (31423, 31472), (31827, 31827), (33614, 33632), (33708, 33757), (34322, 34462), (34463, 34534), (35287, 35295), (35344, 35430), (36015, 36055), (36517, 36640), (36641, 36644), (37303, 37353), (37446, 37446), (37500, 37636), (37637, 37681), (38307, 38446), (38447, 38450), (39326, 39447), (40401, 40471), (40931, 40947), (47526, 47664), (47665, 47667), (48013, 48104), (48778, 48811), (50421, 50553), (51076, 51148), (55451, 55584), (55585, 55590), (56307, 56312), (57245, 57265), (58619, 58707), (59049, 59099), (62500, 62553), (63948, 63988), (68644, 68782), (68783, 68794), (68921, 69033), (71289, 71430), (71431, 71432), (73205, 73310), (85805, 85826), (89383, 89516), (93845, 93893), (103041, 103109), (109503, 109518), (148955, 149020), (154568, 154592)]

theorem row144_bounds_eq : row144.goods.map goodSegmentBounds = row144_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row144_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32911), (5, 21875, 22018), (5, 25000, 25143), (5, 28125, 28268), (5, 31250, 31393), (5, 34375, 34518), (5, 37500, 37643), (5, 40625, 40768), (5, 31250, 31393), (7, 21609, 21752), (7, 24010, 24153), (7, 26411, 26554), (7, 28812, 28955), (7, 31213, 31356), (7, 33614, 33757), (7, 36015, 36158), (7, 38416, 38559), (7, 33614, 33757), (11, 21296, 21439), (11, 29282, 29425), (13, 21970, 22113), (13, 24167, 24310), (13, 26364, 26507), (13, 28561, 28704), (13, 30758, 30901), (13, 32955, 33098), (13, 35152, 35295), (13, 28561, 28704), (17, 24565, 24708), (17, 29478, 29621), (17, 34391, 34534), (17, 39304, 39447), (19, 20592, 20720), (19, 27436, 27579), (19, 34295, 34438), (19, 41154, 41183), (23, 24334, 24477), (23, 36501, 36644), (29, 24389, 24532), (31, 29791, 29934), (37, 20592, 20678), (37, 21904, 22047), (41, 21853, 21996), (41, 23534, 23677), (41, 25215, 25358), (41, 26896, 27039), (43, 22188, 22331), (43, 24037, 24180), (43, 25886, 26029), (43, 27735, 27878), (43, 29584, 29727), (47, 22090, 22233), (47, 24299, 24442), (47, 26508, 26651), (47, 28717, 28860), (47, 30926, 31069), (47, 33135, 33278), (47, 35344, 35487), (53, 22472, 22615), (53, 25281, 25424), (53, 28090, 28233), (53, 30899, 31042), (53, 33708, 33851), (53, 36517, 36660), (53, 39326, 39469), (59, 20886, 21029), (59, 24367, 24510), (59, 27848, 27991), (59, 31329, 31472), (59, 34810, 34953), (59, 38291, 38434), (61, 22326, 22469), (61, 26047, 26190), (61, 29768, 29911), (61, 33489, 33632), (61, 37210, 37353), (61, 40931, 41074), (67, 22445, 22588), (67, 26934, 27077), (67, 31423, 31566), (67, 35912, 36055), (67, 40401, 40544), (71, 25205, 25348), (71, 30246, 30389), (71, 35287, 35430), (71, 40328, 40471), (73, 21316, 21459), (73, 26645, 26788), (73, 31974, 32117), (73, 37303, 37446), (79, 24964, 25107), (79, 31205, 31348), (79, 37446, 37589), (83, 20667, 20810), (83, 27556, 27699), (83, 34445, 34588), (89, 23763, 23906), (89, 31684, 31827), (89, 39605, 39748), (97, 28227, 28370), (97, 37636, 37779), (101, 30603, 30746), (101, 40804, 40947), (103, 21218, 21361), (103, 31827, 31970), (107, 22898, 23041), (107, 34347, 34490), (109, 23762, 23905), (109, 35643, 35786), (113, 25538, 25681), (113, 38307, 38450), (127, 32258, 32401), (131, 34322, 34465), (137, 37538, 37681), (139, 38642, 38785)]

def row144_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32911), (5, 21875, 22018), (5, 25000, 25143), (5, 28125, 28268), (5, 31250, 31393), (5, 34375, 34518), (5, 37500, 37643), (5, 40625, 40768), (5, 31250, 31393), (7, 21609, 21752), (7, 24010, 24153), (7, 26411, 26554), (7, 28812, 28955), (7, 31213, 31356), (7, 33614, 33757), (7, 36015, 36158)]

def row144_layer000_block001 : List ColouredInterval :=
  [(7, 38416, 38559), (7, 33614, 33757), (11, 21296, 21439), (11, 29282, 29425), (13, 21970, 22113), (13, 24167, 24310), (13, 26364, 26507), (13, 28561, 28704), (13, 30758, 30901), (13, 32955, 33098), (13, 35152, 35295), (13, 28561, 28704), (17, 24565, 24708), (17, 29478, 29621), (17, 34391, 34534), (17, 39304, 39447)]

def row144_layer000_block002 : List ColouredInterval :=
  [(19, 20592, 20720), (19, 27436, 27579), (19, 34295, 34438), (19, 41154, 41183), (23, 24334, 24477), (23, 36501, 36644), (29, 24389, 24532), (31, 29791, 29934), (37, 20592, 20678), (37, 21904, 22047), (41, 21853, 21996), (41, 23534, 23677), (41, 25215, 25358), (41, 26896, 27039), (43, 22188, 22331), (43, 24037, 24180)]

def row144_layer000_block003 : List ColouredInterval :=
  [(43, 25886, 26029), (43, 27735, 27878), (43, 29584, 29727), (47, 22090, 22233), (47, 24299, 24442), (47, 26508, 26651), (47, 28717, 28860), (47, 30926, 31069), (47, 33135, 33278), (47, 35344, 35487), (53, 22472, 22615), (53, 25281, 25424), (53, 28090, 28233), (53, 30899, 31042), (53, 33708, 33851), (53, 36517, 36660)]

def row144_layer000_block004 : List ColouredInterval :=
  [(53, 39326, 39469), (59, 20886, 21029), (59, 24367, 24510), (59, 27848, 27991), (59, 31329, 31472), (59, 34810, 34953), (59, 38291, 38434), (61, 22326, 22469), (61, 26047, 26190), (61, 29768, 29911), (61, 33489, 33632), (61, 37210, 37353), (61, 40931, 41074), (67, 22445, 22588), (67, 26934, 27077), (67, 31423, 31566)]

def row144_layer000_block005 : List ColouredInterval :=
  [(67, 35912, 36055), (67, 40401, 40544), (71, 25205, 25348), (71, 30246, 30389), (71, 35287, 35430), (71, 40328, 40471), (73, 21316, 21459), (73, 26645, 26788), (73, 31974, 32117), (73, 37303, 37446), (79, 24964, 25107), (79, 31205, 31348), (79, 37446, 37589), (83, 20667, 20810), (83, 27556, 27699), (83, 34445, 34588)]

def row144_layer000_block006 : List ColouredInterval :=
  [(89, 23763, 23906), (89, 31684, 31827), (89, 39605, 39748), (97, 28227, 28370), (97, 37636, 37779), (101, 30603, 30746), (101, 40804, 40947), (103, 21218, 21361), (103, 31827, 31970), (107, 22898, 23041), (107, 34347, 34490), (109, 23762, 23905), (109, 35643, 35786), (113, 25538, 25681), (113, 38307, 38450), (127, 32258, 32401)]

def row144_layer000_block007 : List ColouredInterval :=
  [(131, 34322, 34465), (137, 37538, 37681), (139, 38642, 38785)]

def row144_layer000_chunks : List (List ColouredInterval) :=
  [row144_layer000_block000, row144_layer000_block001, row144_layer000_block002, row144_layer000_block003, row144_layer000_block004, row144_layer000_block005, row144_layer000_block006, row144_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_arithmetic : LayerArithmeticValid row144.height { lower := 20592, upper := 41184, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_enumeration :
    activePowerIntervalList 144 16 20592 41184 = row144_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_pairs000 :
    row144_layer000_block000.all (fun I => row144_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row144_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_pairs001 :
    row144_layer000_block001.all (fun I => row144_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row144_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_pairs002 :
    row144_layer000_block002.all (fun I => row144_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row144_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_pairs003 :
    row144_layer000_block003.all (fun I => row144_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row144_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_pairs004 :
    row144_layer000_block004.all (fun I => row144_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row144_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_pairs005 :
    row144_layer000_block005.all (fun I => row144_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row144_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_pairs006 :
    row144_layer000_block006.all (fun I => row144_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row144_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_pairs007 :
    row144_layer000_block007.all (fun I => row144_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row144_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_chunks_eq : row144_layer000_chunks.flatten = row144_layer000_intervals := by
  rfl

theorem row144_layer000_pairs : pairCoverCheck row144_layer000_intervals row144_bounds = true := by
  apply pairCoverCheck_of_chunks row144_layer000_chunks_eq
  intro block hblock
  simp only [row144_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row144_layer000_pairs000
  · exact row144_layer000_pairs001
  · exact row144_layer000_pairs002
  · exact row144_layer000_pairs003
  · exact row144_layer000_pairs004
  · exact row144_layer000_pairs005
  · exact row144_layer000_pairs006
  · exact row144_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer000_checked :
    coverLayerCheck row144.height row144.goods { lower := 20592, upper := 41184, M := 16 } = true := by
  exact coverLayerCheck_of_parts row144_layer000_arithmetic row144_layer000_enumeration row144_bounds_eq row144_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer000_checked
