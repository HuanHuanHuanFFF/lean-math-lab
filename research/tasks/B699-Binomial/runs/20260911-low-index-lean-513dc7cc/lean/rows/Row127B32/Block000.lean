import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row127_height : HeightCertificateDatum := { i := 127, r := 42, s := 90, n0Power10 := 8 }

def row127_goods : List GoodSegment := [
  { lower := 256, upper := 377, witness := RowWitness.topPrime 251 },
  { lower := 378, upper := 499, witness := RowWitness.topPrime 373 },
  { lower := 500, upper := 625, witness := RowWitness.topPrime 499 },
  { lower := 626, upper := 745, witness := RowWitness.topPrime 619 },
  { lower := 746, upper := 869, witness := RowWitness.topPrime 743 },
  { lower := 870, upper := 989, witness := RowWitness.topPrime 863 },
  { lower := 990, upper := 1109, witness := RowWitness.topPrime 983 },
  { lower := 1110, upper := 1235, witness := RowWitness.topPrime 1109 },
  { lower := 1236, upper := 1357, witness := RowWitness.topPrime 1231 },
  { lower := 1358, upper := 1453, witness := RowWitness.topPrime 1327 },
  { lower := 1454, upper := 1579, witness := RowWitness.topPrime 1453 },
  { lower := 1580, upper := 1705, witness := RowWitness.topPrime 1579 },
  { lower := 1706, upper := 1825, witness := RowWitness.topPrime 1699 },
  { lower := 1826, upper := 1949, witness := RowWitness.topPrime 1823 },
  { lower := 1950, upper := 2075, witness := RowWitness.topPrime 1949 },
  { lower := 2076, upper := 2195, witness := RowWitness.topPrime 2069 },
  { lower := 2196, upper := 2305, witness := RowWitness.topPrime 2179 },
  { lower := 2306, upper := 2423, witness := RowWitness.topPrime 2297 },
  { lower := 2424, upper := 2549, witness := RowWitness.topPrime 2423 },
  { lower := 2550, upper := 2675, witness := RowWitness.topPrime 2549 },
  { lower := 2676, upper := 2797, witness := RowWitness.topPrime 2671 },
  { lower := 2798, upper := 2923, witness := RowWitness.topPrime 2797 },
  { lower := 2924, upper := 3043, witness := RowWitness.topPrime 2917 },
  { lower := 3044, upper := 3167, witness := RowWitness.topPrime 3041 },
  { lower := 3168, upper := 3293, witness := RowWitness.topPrime 3167 },
  { lower := 3294, upper := 3397, witness := RowWitness.topPrime 3271 },
  { lower := 3398, upper := 3517, witness := RowWitness.topPrime 3391 },
  { lower := 3518, upper := 3643, witness := RowWitness.topPrime 3517 },
  { lower := 3644, upper := 3769, witness := RowWitness.topPrime 3643 },
  { lower := 3770, upper := 3895, witness := RowWitness.topPrime 3769 },
  { lower := 3896, upper := 4015, witness := RowWitness.topPrime 3889 },
  { lower := 4016, upper := 4139, witness := RowWitness.topPrime 4013 },
  { lower := 4140, upper := 4265, witness := RowWitness.topPrime 4139 },
  { lower := 4266, upper := 4387, witness := RowWitness.topPrime 4261 },
  { lower := 4388, upper := 4499, witness := RowWitness.topPrime 4373 },
  { lower := 4500, upper := 4619, witness := RowWitness.topPrime 4493 },
  { lower := 4620, upper := 4729, witness := RowWitness.topPrime 4603 },
  { lower := 4730, upper := 4855, witness := RowWitness.topPrime 4729 },
  { lower := 4856, upper := 4957, witness := RowWitness.topPrime 4831 },
  { lower := 4958, upper := 5083, witness := RowWitness.topPrime 4957 },
  { lower := 5084, upper := 5207, witness := RowWitness.topPrime 5081 },
  { lower := 5208, upper := 5323, witness := RowWitness.topPrime 5197 },
  { lower := 5324, upper := 5449, witness := RowWitness.topPrime 5323 },
  { lower := 5450, upper := 5575, witness := RowWitness.topPrime 5449 },
  { lower := 5576, upper := 5699, witness := RowWitness.topPrime 5573 },
  { lower := 5700, upper := 5819, witness := RowWitness.topPrime 5693 },
  { lower := 5820, upper := 5939, witness := RowWitness.topPrime 5813 },
  { lower := 5940, upper := 6065, witness := RowWitness.topPrime 5939 },
  { lower := 6066, upper := 6179, witness := RowWitness.topPrime 6053 },
  { lower := 6180, upper := 6299, witness := RowWitness.topPrime 6173 },
  { lower := 6300, upper := 6425, witness := RowWitness.topPrime 6299 },
  { lower := 6426, upper := 6547, witness := RowWitness.topPrime 6421 },
  { lower := 6548, upper := 6673, witness := RowWitness.topPrime 6547 },
  { lower := 6674, upper := 6799, witness := RowWitness.topPrime 6673 },
  { lower := 6800, upper := 6919, witness := RowWitness.topPrime 6793 },
  { lower := 6920, upper := 7043, witness := RowWitness.topPrime 6917 },
  { lower := 7044, upper := 7169, witness := RowWitness.topPrime 7043 },
  { lower := 7170, upper := 7285, witness := RowWitness.topPrime 7159 },
  { lower := 7286, upper := 7409, witness := RowWitness.topPrime 7283 },
  { lower := 7410, upper := 7519, witness := RowWitness.topPrime 7393 },
  { lower := 7520, upper := 7643, witness := RowWitness.topPrime 7517 },
  { lower := 7644, upper := 7769, witness := RowWitness.topPrime 7643 },
  { lower := 7770, upper := 7885, witness := RowWitness.topPrime 7759 },
  { lower := 7886, upper := 8009, witness := RowWitness.topPrime 7883 },
  { lower := 8010, upper := 8135, witness := RowWitness.topPrime 8009 },
  { lower := 8136, upper := 8249, witness := RowWitness.topPrime 8123 },
  { lower := 8250, upper := 8369, witness := RowWitness.topPrime 8243 },
  { lower := 8370, upper := 8495, witness := RowWitness.topPrime 8369 },
  { lower := 8496, upper := 8593, witness := RowWitness.topPrime 8467 },
  { lower := 8594, upper := 8707, witness := RowWitness.topPrime 8581 },
  { lower := 8708, upper := 8833, witness := RowWitness.topPrime 8707 },
  { lower := 8834, upper := 8957, witness := RowWitness.topPrime 8831 },
  { lower := 8958, upper := 9077, witness := RowWitness.topPrime 8951 },
  { lower := 9078, upper := 9193, witness := RowWitness.topPrime 9067 },
  { lower := 9194, upper := 9313, witness := RowWitness.topPrime 9187 },
  { lower := 9314, upper := 9437, witness := RowWitness.topPrime 9311 },
  { lower := 9438, upper := 9563, witness := RowWitness.topPrime 9437 },
  { lower := 9564, upper := 9677, witness := RowWitness.topPrime 9551 },
  { lower := 9678, upper := 9803, witness := RowWitness.topPrime 9677 },
  { lower := 9804, upper := 9929, witness := RowWitness.topPrime 9803 },
  { lower := 9930, upper := 10055, witness := RowWitness.topPrime 9929 },
  { lower := 10056, upper := 10165, witness := RowWitness.topPrime 10039 },
  { lower := 10166, upper := 10289, witness := RowWitness.topPrime 10163 },
  { lower := 10290, upper := 10415, witness := RowWitness.topPrime 10289 },
  { lower := 10416, upper := 10525, witness := RowWitness.topPrime 10399 },
  { lower := 10526, upper := 10639, witness := RowWitness.topPrime 10513 },
  { lower := 10640, upper := 10765, witness := RowWitness.topPrime 10639 },
  { lower := 10766, upper := 10879, witness := RowWitness.topPrime 10753 },
  { lower := 10880, upper := 10993, witness := RowWitness.topPrime 10867 },
  { lower := 10994, upper := 11119, witness := RowWitness.topPrime 10993 },
  { lower := 11120, upper := 11245, witness := RowWitness.topPrime 11119 },
  { lower := 11246, upper := 11369, witness := RowWitness.topPrime 11243 },
  { lower := 11370, upper := 11495, witness := RowWitness.topPrime 11369 },
  { lower := 11496, upper := 11617, witness := RowWitness.topPrime 11491 },
  { lower := 11618, upper := 11743, witness := RowWitness.topPrime 11617 },
  { lower := 11744, upper := 11869, witness := RowWitness.topPrime 11743 },
  { lower := 11870, upper := 11993, witness := RowWitness.topPrime 11867 },
  { lower := 11994, upper := 12113, witness := RowWitness.topPrime 11987 },
  { lower := 12114, upper := 12239, witness := RowWitness.topPrime 12113 },
  { lower := 12240, upper := 12365, witness := RowWitness.topPrime 12239 },
  { lower := 12366, upper := 12473, witness := RowWitness.topPrime 12347 },
  { lower := 12474, upper := 12599, witness := RowWitness.topPrime 12473 },
  { lower := 12600, upper := 12715, witness := RowWitness.topPrime 12589 },
  { lower := 12716, upper := 12839, witness := RowWitness.topPrime 12713 },
  { lower := 12840, upper := 12955, witness := RowWitness.topPrime 12829 },
  { lower := 12956, upper := 13079, witness := RowWitness.topPrime 12953 },
  { lower := 13080, upper := 13189, witness := RowWitness.topPrime 13063 },
  { lower := 13190, upper := 13313, witness := RowWitness.topPrime 13187 },
  { lower := 13314, upper := 13439, witness := RowWitness.topPrime 13313 },
  { lower := 13440, upper := 13547, witness := RowWitness.topPrime 13421 },
  { lower := 13548, upper := 13663, witness := RowWitness.topPrime 13537 },
  { lower := 13664, upper := 13775, witness := RowWitness.topPrime 13649 },
  { lower := 13776, upper := 13889, witness := RowWitness.topPrime 13763 },
  { lower := 13890, upper := 14009, witness := RowWitness.topPrime 13883 },
  { lower := 14010, upper := 14135, witness := RowWitness.topPrime 14009 },
  { lower := 14136, upper := 14233, witness := RowWitness.topPrime 14107 },
  { lower := 14234, upper := 14347, witness := RowWitness.topPrime 14221 },
  { lower := 14348, upper := 14473, witness := RowWitness.topPrime 14347 },
  { lower := 14474, upper := 14587, witness := RowWitness.topPrime 14461 },
  { lower := 14588, upper := 14689, witness := RowWitness.topPrime 14563 },
  { lower := 14690, upper := 14809, witness := RowWitness.topPrime 14683 },
  { lower := 14810, upper := 14923, witness := RowWitness.topPrime 14797 },
  { lower := 14924, upper := 15049, witness := RowWitness.topPrime 14923 },
  { lower := 15050, upper := 15157, witness := RowWitness.topPrime 15031 },
  { lower := 15158, upper := 15275, witness := RowWitness.topPrime 15149 },
  { lower := 15276, upper := 15397, witness := RowWitness.topPrime 15271 },
  { lower := 15398, upper := 15517, witness := RowWitness.topPrime 15391 },
  { lower := 15518, upper := 15637, witness := RowWitness.topPrime 15511 },
  { lower := 15638, upper := 15755, witness := RowWitness.topPrime 15629 },
  { lower := 15756, upper := 15875, witness := RowWitness.topPrime 15749 },
  { lower := 15876, upper := 15985, witness := RowWitness.topPrime 15859 },
  { lower := 15986, upper := 16098, witness := RowWitness.topPrime 15973 },
  { lower := 16428, upper := 16510, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16913, witness := RowWitness.topPrime 16787 },
  { lower := 16914, upper := 16936, witness := RowWitness.topPrime 16903 },
  { lower := 17405, upper := 17429, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17531, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17622, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17702, witness := RowWitness.topPrime 17669 },
  { lower := 17797, upper := 17798, witness := RowWitness.topPrime 17791 },
  { lower := 18490, upper := 18607, witness := RowWitness.topPrime 18481 },
  { lower := 18608, upper := 18617, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18743, witness := RowWitness.topPrime 18617 },
  { lower := 18744, upper := 18869, witness := RowWitness.topPrime 18743 },
  { lower := 18870, upper := 18876, witness := RowWitness.topPrime 18869 },
  { lower := 19208, upper := 19292, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19787, witness := RowWitness.topPrime 19661 },
  { lower := 19788, upper := 19809, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19899, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20007, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20287, witness := RowWitness.topPrime 20161 },
  { lower := 20288, upper := 20290, witness := RowWitness.topPrime 20287 },
  { lower := 20402, upper := 20465, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20528, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20659, witness := RowWitness.topPrime 20533 },
  { lower := 20660, upper := 20661, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20703, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21344, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21989, witness := RowWitness.topPrime 21863 },
  { lower := 21990, upper := 22001, witness := RowWitness.topPrime 21977 },
  { lower := 22090, upper := 22096, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22216, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22452, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22595, witness := RowWitness.topPrime 22469 },
  { lower := 22596, upper := 22598, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23887, witness := RowWitness.topPrime 23761 },
  { lower := 23888, upper := 23888, witness := RowWitness.topPrime 23887 },
  { lower := 24037, upper := 24155, witness := RowWitness.topPrime 24029 },
  { lower := 24156, upper := 24163, witness := RowWitness.topPrime 24151 },
  { lower := 24167, upper := 24183, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24455, witness := RowWitness.topPrime 24329 },
  { lower := 24456, upper := 24493, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24691, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25090, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25315, witness := RowWitness.topPrime 25189 },
  { lower := 25316, upper := 25341, witness := RowWitness.topPrime 25309 },
  { lower := 26364, upper := 26370, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26490, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26537, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26634, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26750, witness := RowWitness.topPrime 26641 },
  { lower := 27556, upper := 27562, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27861, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28216, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28251, witness := RowWitness.topPrime 28219 },
  { lower := 28672, upper := 28687, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28798, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28843, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29894, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30719, witness := RowWitness.topPrime 30593 },
  { lower := 30720, upper := 30744, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30846, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31025, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31319, witness := RowWitness.topPrime 31193 },
  { lower := 31320, upper := 31376, witness := RowWitness.topPrime 31319 },
  { lower := 31423, upper := 31455, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32894, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33615, witness := RowWitness.topPrime 33613 },
  { lower := 34347, upper := 34463, witness := RowWitness.topPrime 34337 },
  { lower := 34464, upper := 34517, witness := RowWitness.topPrime 34457 },
  { lower := 37303, upper := 37336, witness := RowWitness.topPrime 37277 },
  { lower := 38307, upper := 38417, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39430, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40454, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41057, witness := RowWitness.topPrime 40949 },
  { lower := 47526, upper := 47647, witness := RowWitness.topPrime 47521 },
  { lower := 47648, upper := 47650, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48087, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48794, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49256, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50536, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51131, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55567, witness := RowWitness.topPrime 55441 },
  { lower := 55568, upper := 55573, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57248, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57371, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58690, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62536, witness := RowWitness.topPrime 62497 },
  { lower := 71289, upper := 71413, witness := RowWitness.topPrime 71287 },
  { lower := 71414, upper := 71415, witness := RowWitness.topPrime 71413 },
  { lower := 73205, upper := 73293, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89499, witness := RowWitness.topPrime 89381 },
  { lower := 98415, upper := 98430, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137907, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149003, witness := RowWitness.topPrime 148949 }
]

def row127_layers : List CoverLayer := [
  { lower := 16002, upper := 32004, M := 15 },
  { lower := 32004, upper := 64008, M := 11 },
  { lower := 64008, upper := 128016, M := 9 },
  { lower := 128016, upper := 256032, M := 7 },
  { lower := 256032, upper := 512064, M := 5 },
  { lower := 512064, upper := 1024128, M := 4 },
  { lower := 1024128, upper := 2048256, M := 3 },
  { lower := 2048256, upper := 4096512, M := 3 },
  { lower := 4096512, upper := 8193024, M := 2 },
  { lower := 8193024, upper := 16386048, M := 2 },
  { lower := 16386048, upper := 32772096, M := 1 },
  { lower := 32772096, upper := 65544192, M := 1 },
  { lower := 65544192, upper := 100000000, M := 1 }
]

def row127 : FiniteCoverRow := {
  height := row127_height,
  goods := row127_goods,
  layers := row127_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good000_checked :
    goodSegmentCheck 127 42 90
      { lower := 256, upper := 377, witness := RowWitness.topPrime 251 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good001_checked :
    goodSegmentCheck 127 42 90
      { lower := 378, upper := 499, witness := RowWitness.topPrime 373 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good002_checked :
    goodSegmentCheck 127 42 90
      { lower := 500, upper := 625, witness := RowWitness.topPrime 499 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good003_checked :
    goodSegmentCheck 127 42 90
      { lower := 626, upper := 745, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good004_checked :
    goodSegmentCheck 127 42 90
      { lower := 746, upper := 869, witness := RowWitness.topPrime 743 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good005_checked :
    goodSegmentCheck 127 42 90
      { lower := 870, upper := 989, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good006_checked :
    goodSegmentCheck 127 42 90
      { lower := 990, upper := 1109, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good007_checked :
    goodSegmentCheck 127 42 90
      { lower := 1110, upper := 1235, witness := RowWitness.topPrime 1109 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good008_checked :
    goodSegmentCheck 127 42 90
      { lower := 1236, upper := 1357, witness := RowWitness.topPrime 1231 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good009_checked :
    goodSegmentCheck 127 42 90
      { lower := 1358, upper := 1453, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good010_checked :
    goodSegmentCheck 127 42 90
      { lower := 1454, upper := 1579, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good011_checked :
    goodSegmentCheck 127 42 90
      { lower := 1580, upper := 1705, witness := RowWitness.topPrime 1579 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good012_checked :
    goodSegmentCheck 127 42 90
      { lower := 1706, upper := 1825, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good013_checked :
    goodSegmentCheck 127 42 90
      { lower := 1826, upper := 1949, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good014_checked :
    goodSegmentCheck 127 42 90
      { lower := 1950, upper := 2075, witness := RowWitness.topPrime 1949 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good015_checked :
    goodSegmentCheck 127 42 90
      { lower := 2076, upper := 2195, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good016_checked :
    goodSegmentCheck 127 42 90
      { lower := 2196, upper := 2305, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good017_checked :
    goodSegmentCheck 127 42 90
      { lower := 2306, upper := 2423, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good018_checked :
    goodSegmentCheck 127 42 90
      { lower := 2424, upper := 2549, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good019_checked :
    goodSegmentCheck 127 42 90
      { lower := 2550, upper := 2675, witness := RowWitness.topPrime 2549 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good020_checked :
    goodSegmentCheck 127 42 90
      { lower := 2676, upper := 2797, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good021_checked :
    goodSegmentCheck 127 42 90
      { lower := 2798, upper := 2923, witness := RowWitness.topPrime 2797 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good022_checked :
    goodSegmentCheck 127 42 90
      { lower := 2924, upper := 3043, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good023_checked :
    goodSegmentCheck 127 42 90
      { lower := 3044, upper := 3167, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good024_checked :
    goodSegmentCheck 127 42 90
      { lower := 3168, upper := 3293, witness := RowWitness.topPrime 3167 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good025_checked :
    goodSegmentCheck 127 42 90
      { lower := 3294, upper := 3397, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good026_checked :
    goodSegmentCheck 127 42 90
      { lower := 3398, upper := 3517, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good027_checked :
    goodSegmentCheck 127 42 90
      { lower := 3518, upper := 3643, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good028_checked :
    goodSegmentCheck 127 42 90
      { lower := 3644, upper := 3769, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good029_checked :
    goodSegmentCheck 127 42 90
      { lower := 3770, upper := 3895, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good030_checked :
    goodSegmentCheck 127 42 90
      { lower := 3896, upper := 4015, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good031_checked :
    goodSegmentCheck 127 42 90
      { lower := 4016, upper := 4139, witness := RowWitness.topPrime 4013 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good032_checked :
    goodSegmentCheck 127 42 90
      { lower := 4140, upper := 4265, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good033_checked :
    goodSegmentCheck 127 42 90
      { lower := 4266, upper := 4387, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good034_checked :
    goodSegmentCheck 127 42 90
      { lower := 4388, upper := 4499, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good035_checked :
    goodSegmentCheck 127 42 90
      { lower := 4500, upper := 4619, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good036_checked :
    goodSegmentCheck 127 42 90
      { lower := 4620, upper := 4729, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good037_checked :
    goodSegmentCheck 127 42 90
      { lower := 4730, upper := 4855, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good038_checked :
    goodSegmentCheck 127 42 90
      { lower := 4856, upper := 4957, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good039_checked :
    goodSegmentCheck 127 42 90
      { lower := 4958, upper := 5083, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good040_checked :
    goodSegmentCheck 127 42 90
      { lower := 5084, upper := 5207, witness := RowWitness.topPrime 5081 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good041_checked :
    goodSegmentCheck 127 42 90
      { lower := 5208, upper := 5323, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good042_checked :
    goodSegmentCheck 127 42 90
      { lower := 5324, upper := 5449, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good043_checked :
    goodSegmentCheck 127 42 90
      { lower := 5450, upper := 5575, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good044_checked :
    goodSegmentCheck 127 42 90
      { lower := 5576, upper := 5699, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good045_checked :
    goodSegmentCheck 127 42 90
      { lower := 5700, upper := 5819, witness := RowWitness.topPrime 5693 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good046_checked :
    goodSegmentCheck 127 42 90
      { lower := 5820, upper := 5939, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good047_checked :
    goodSegmentCheck 127 42 90
      { lower := 5940, upper := 6065, witness := RowWitness.topPrime 5939 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good048_checked :
    goodSegmentCheck 127 42 90
      { lower := 6066, upper := 6179, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good049_checked :
    goodSegmentCheck 127 42 90
      { lower := 6180, upper := 6299, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good050_checked :
    goodSegmentCheck 127 42 90
      { lower := 6300, upper := 6425, witness := RowWitness.topPrime 6299 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good051_checked :
    goodSegmentCheck 127 42 90
      { lower := 6426, upper := 6547, witness := RowWitness.topPrime 6421 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good052_checked :
    goodSegmentCheck 127 42 90
      { lower := 6548, upper := 6673, witness := RowWitness.topPrime 6547 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good053_checked :
    goodSegmentCheck 127 42 90
      { lower := 6674, upper := 6799, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good054_checked :
    goodSegmentCheck 127 42 90
      { lower := 6800, upper := 6919, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good055_checked :
    goodSegmentCheck 127 42 90
      { lower := 6920, upper := 7043, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good056_checked :
    goodSegmentCheck 127 42 90
      { lower := 7044, upper := 7169, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good057_checked :
    goodSegmentCheck 127 42 90
      { lower := 7170, upper := 7285, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good058_checked :
    goodSegmentCheck 127 42 90
      { lower := 7286, upper := 7409, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good059_checked :
    goodSegmentCheck 127 42 90
      { lower := 7410, upper := 7519, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good060_checked :
    goodSegmentCheck 127 42 90
      { lower := 7520, upper := 7643, witness := RowWitness.topPrime 7517 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good061_checked :
    goodSegmentCheck 127 42 90
      { lower := 7644, upper := 7769, witness := RowWitness.topPrime 7643 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good062_checked :
    goodSegmentCheck 127 42 90
      { lower := 7770, upper := 7885, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good063_checked :
    goodSegmentCheck 127 42 90
      { lower := 7886, upper := 8009, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good064_checked :
    goodSegmentCheck 127 42 90
      { lower := 8010, upper := 8135, witness := RowWitness.topPrime 8009 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good065_checked :
    goodSegmentCheck 127 42 90
      { lower := 8136, upper := 8249, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good066_checked :
    goodSegmentCheck 127 42 90
      { lower := 8250, upper := 8369, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good067_checked :
    goodSegmentCheck 127 42 90
      { lower := 8370, upper := 8495, witness := RowWitness.topPrime 8369 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good068_checked :
    goodSegmentCheck 127 42 90
      { lower := 8496, upper := 8593, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good069_checked :
    goodSegmentCheck 127 42 90
      { lower := 8594, upper := 8707, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good070_checked :
    goodSegmentCheck 127 42 90
      { lower := 8708, upper := 8833, witness := RowWitness.topPrime 8707 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good071_checked :
    goodSegmentCheck 127 42 90
      { lower := 8834, upper := 8957, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good072_checked :
    goodSegmentCheck 127 42 90
      { lower := 8958, upper := 9077, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good073_checked :
    goodSegmentCheck 127 42 90
      { lower := 9078, upper := 9193, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good074_checked :
    goodSegmentCheck 127 42 90
      { lower := 9194, upper := 9313, witness := RowWitness.topPrime 9187 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good075_checked :
    goodSegmentCheck 127 42 90
      { lower := 9314, upper := 9437, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good076_checked :
    goodSegmentCheck 127 42 90
      { lower := 9438, upper := 9563, witness := RowWitness.topPrime 9437 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good077_checked :
    goodSegmentCheck 127 42 90
      { lower := 9564, upper := 9677, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good078_checked :
    goodSegmentCheck 127 42 90
      { lower := 9678, upper := 9803, witness := RowWitness.topPrime 9677 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good079_checked :
    goodSegmentCheck 127 42 90
      { lower := 9804, upper := 9929, witness := RowWitness.topPrime 9803 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good080_checked :
    goodSegmentCheck 127 42 90
      { lower := 9930, upper := 10055, witness := RowWitness.topPrime 9929 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good081_checked :
    goodSegmentCheck 127 42 90
      { lower := 10056, upper := 10165, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good082_checked :
    goodSegmentCheck 127 42 90
      { lower := 10166, upper := 10289, witness := RowWitness.topPrime 10163 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good083_checked :
    goodSegmentCheck 127 42 90
      { lower := 10290, upper := 10415, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good084_checked :
    goodSegmentCheck 127 42 90
      { lower := 10416, upper := 10525, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good085_checked :
    goodSegmentCheck 127 42 90
      { lower := 10526, upper := 10639, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good086_checked :
    goodSegmentCheck 127 42 90
      { lower := 10640, upper := 10765, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good087_checked :
    goodSegmentCheck 127 42 90
      { lower := 10766, upper := 10879, witness := RowWitness.topPrime 10753 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good088_checked :
    goodSegmentCheck 127 42 90
      { lower := 10880, upper := 10993, witness := RowWitness.topPrime 10867 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good089_checked :
    goodSegmentCheck 127 42 90
      { lower := 10994, upper := 11119, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good090_checked :
    goodSegmentCheck 127 42 90
      { lower := 11120, upper := 11245, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good091_checked :
    goodSegmentCheck 127 42 90
      { lower := 11246, upper := 11369, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good092_checked :
    goodSegmentCheck 127 42 90
      { lower := 11370, upper := 11495, witness := RowWitness.topPrime 11369 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good093_checked :
    goodSegmentCheck 127 42 90
      { lower := 11496, upper := 11617, witness := RowWitness.topPrime 11491 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good094_checked :
    goodSegmentCheck 127 42 90
      { lower := 11618, upper := 11743, witness := RowWitness.topPrime 11617 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good095_checked :
    goodSegmentCheck 127 42 90
      { lower := 11744, upper := 11869, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good096_checked :
    goodSegmentCheck 127 42 90
      { lower := 11870, upper := 11993, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good097_checked :
    goodSegmentCheck 127 42 90
      { lower := 11994, upper := 12113, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good098_checked :
    goodSegmentCheck 127 42 90
      { lower := 12114, upper := 12239, witness := RowWitness.topPrime 12113 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good099_checked :
    goodSegmentCheck 127 42 90
      { lower := 12240, upper := 12365, witness := RowWitness.topPrime 12239 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good100_checked :
    goodSegmentCheck 127 42 90
      { lower := 12366, upper := 12473, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good101_checked :
    goodSegmentCheck 127 42 90
      { lower := 12474, upper := 12599, witness := RowWitness.topPrime 12473 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good102_checked :
    goodSegmentCheck 127 42 90
      { lower := 12600, upper := 12715, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good103_checked :
    goodSegmentCheck 127 42 90
      { lower := 12716, upper := 12839, witness := RowWitness.topPrime 12713 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good104_checked :
    goodSegmentCheck 127 42 90
      { lower := 12840, upper := 12955, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good105_checked :
    goodSegmentCheck 127 42 90
      { lower := 12956, upper := 13079, witness := RowWitness.topPrime 12953 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good106_checked :
    goodSegmentCheck 127 42 90
      { lower := 13080, upper := 13189, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good107_checked :
    goodSegmentCheck 127 42 90
      { lower := 13190, upper := 13313, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good108_checked :
    goodSegmentCheck 127 42 90
      { lower := 13314, upper := 13439, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good109_checked :
    goodSegmentCheck 127 42 90
      { lower := 13440, upper := 13547, witness := RowWitness.topPrime 13421 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good110_checked :
    goodSegmentCheck 127 42 90
      { lower := 13548, upper := 13663, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good111_checked :
    goodSegmentCheck 127 42 90
      { lower := 13664, upper := 13775, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good112_checked :
    goodSegmentCheck 127 42 90
      { lower := 13776, upper := 13889, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good113_checked :
    goodSegmentCheck 127 42 90
      { lower := 13890, upper := 14009, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good114_checked :
    goodSegmentCheck 127 42 90
      { lower := 14010, upper := 14135, witness := RowWitness.topPrime 14009 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good115_checked :
    goodSegmentCheck 127 42 90
      { lower := 14136, upper := 14233, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good116_checked :
    goodSegmentCheck 127 42 90
      { lower := 14234, upper := 14347, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good117_checked :
    goodSegmentCheck 127 42 90
      { lower := 14348, upper := 14473, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good118_checked :
    goodSegmentCheck 127 42 90
      { lower := 14474, upper := 14587, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good119_checked :
    goodSegmentCheck 127 42 90
      { lower := 14588, upper := 14689, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good120_checked :
    goodSegmentCheck 127 42 90
      { lower := 14690, upper := 14809, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good121_checked :
    goodSegmentCheck 127 42 90
      { lower := 14810, upper := 14923, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good122_checked :
    goodSegmentCheck 127 42 90
      { lower := 14924, upper := 15049, witness := RowWitness.topPrime 14923 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good123_checked :
    goodSegmentCheck 127 42 90
      { lower := 15050, upper := 15157, witness := RowWitness.topPrime 15031 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good124_checked :
    goodSegmentCheck 127 42 90
      { lower := 15158, upper := 15275, witness := RowWitness.topPrime 15149 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good125_checked :
    goodSegmentCheck 127 42 90
      { lower := 15276, upper := 15397, witness := RowWitness.topPrime 15271 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good126_checked :
    goodSegmentCheck 127 42 90
      { lower := 15398, upper := 15517, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good127_checked :
    goodSegmentCheck 127 42 90
      { lower := 15518, upper := 15637, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good128_checked :
    goodSegmentCheck 127 42 90
      { lower := 15638, upper := 15755, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good129_checked :
    goodSegmentCheck 127 42 90
      { lower := 15756, upper := 15875, witness := RowWitness.topPrime 15749 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good130_checked :
    goodSegmentCheck 127 42 90
      { lower := 15876, upper := 15985, witness := RowWitness.topPrime 15859 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good131_checked :
    goodSegmentCheck 127 42 90
      { lower := 15986, upper := 16098, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good132_checked :
    goodSegmentCheck 127 42 90
      { lower := 16428, upper := 16510, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good133_checked :
    goodSegmentCheck 127 42 90
      { lower := 16810, upper := 16913, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good134_checked :
    goodSegmentCheck 127 42 90
      { lower := 16914, upper := 16936, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good135_checked :
    goodSegmentCheck 127 42 90
      { lower := 17405, upper := 17429, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good136_checked :
    goodSegmentCheck 127 42 90
      { lower := 17496, upper := 17531, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good137_checked :
    goodSegmentCheck 127 42 90
      { lower := 17576, upper := 17622, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good138_checked :
    goodSegmentCheck 127 42 90
      { lower := 17672, upper := 17702, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good139_checked :
    goodSegmentCheck 127 42 90
      { lower := 17797, upper := 17798, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good140_checked :
    goodSegmentCheck 127 42 90
      { lower := 18490, upper := 18607, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good141_checked :
    goodSegmentCheck 127 42 90
      { lower := 18608, upper := 18617, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good142_checked :
    goodSegmentCheck 127 42 90
      { lower := 18634, upper := 18743, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good143_checked :
    goodSegmentCheck 127 42 90
      { lower := 18744, upper := 18869, witness := RowWitness.topPrime 18743 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good144_checked :
    goodSegmentCheck 127 42 90
      { lower := 18870, upper := 18876, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good145_checked :
    goodSegmentCheck 127 42 90
      { lower := 19208, upper := 19292, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good146_checked :
    goodSegmentCheck 127 42 90
      { lower := 19663, upper := 19787, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good147_checked :
    goodSegmentCheck 127 42 90
      { lower := 19788, upper := 19809, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good148_checked :
    goodSegmentCheck 127 42 90
      { lower := 19881, upper := 19899, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good149_checked :
    goodSegmentCheck 127 42 90
      { lower := 19965, upper := 20007, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good150_checked :
    goodSegmentCheck 127 42 90
      { lower := 20172, upper := 20287, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good151_checked :
    goodSegmentCheck 127 42 90
      { lower := 20288, upper := 20290, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good152_checked :
    goodSegmentCheck 127 42 90
      { lower := 20402, upper := 20465, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good153_checked :
    goodSegmentCheck 127 42 90
      { lower := 20480, upper := 20528, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good154_checked :
    goodSegmentCheck 127 42 90
      { lower := 20535, upper := 20659, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good155_checked :
    goodSegmentCheck 127 42 90
      { lower := 20660, upper := 20661, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good156_checked :
    goodSegmentCheck 127 42 90
      { lower := 20667, upper := 20703, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good157_checked :
    goodSegmentCheck 127 42 90
      { lower := 21316, upper := 21344, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good158_checked :
    goodSegmentCheck 127 42 90
      { lower := 21870, upper := 21989, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good159_checked :
    goodSegmentCheck 127 42 90
      { lower := 21990, upper := 22001, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good160_checked :
    goodSegmentCheck 127 42 90
      { lower := 22090, upper := 22096, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good161_checked :
    goodSegmentCheck 127 42 90
      { lower := 22188, upper := 22216, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good162_checked :
    goodSegmentCheck 127 42 90
      { lower := 22445, upper := 22452, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good163_checked :
    goodSegmentCheck 127 42 90
      { lower := 22472, upper := 22595, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good164_checked :
    goodSegmentCheck 127 42 90
      { lower := 22596, upper := 22598, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good165_checked :
    goodSegmentCheck 127 42 90
      { lower := 23763, upper := 23887, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good166_checked :
    goodSegmentCheck 127 42 90
      { lower := 23888, upper := 23888, witness := RowWitness.topPrime 23887 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good167_checked :
    goodSegmentCheck 127 42 90
      { lower := 24037, upper := 24155, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good168_checked :
    goodSegmentCheck 127 42 90
      { lower := 24156, upper := 24163, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good169_checked :
    goodSegmentCheck 127 42 90
      { lower := 24167, upper := 24183, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good170_checked :
    goodSegmentCheck 127 42 90
      { lower := 24334, upper := 24455, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good171_checked :
    goodSegmentCheck 127 42 90
      { lower := 24456, upper := 24493, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good172_checked :
    goodSegmentCheck 127 42 90
      { lower := 24576, upper := 24691, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good173_checked :
    goodSegmentCheck 127 42 90
      { lower := 25000, upper := 25090, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good174_checked :
    goodSegmentCheck 127 42 90
      { lower := 25215, upper := 25315, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good175_checked :
    goodSegmentCheck 127 42 90
      { lower := 25316, upper := 25341, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good176_checked :
    goodSegmentCheck 127 42 90
      { lower := 26364, upper := 26370, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good177_checked :
    goodSegmentCheck 127 42 90
      { lower := 26411, upper := 26490, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good178_checked :
    goodSegmentCheck 127 42 90
      { lower := 26508, upper := 26537, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good179_checked :
    goodSegmentCheck 127 42 90
      { lower := 26624, upper := 26634, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good180_checked :
    goodSegmentCheck 127 42 90
      { lower := 26645, upper := 26750, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good181_checked :
    goodSegmentCheck 127 42 90
      { lower := 27556, upper := 27562, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good182_checked :
    goodSegmentCheck 127 42 90
      { lower := 27848, upper := 27861, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good183_checked :
    goodSegmentCheck 127 42 90
      { lower := 28125, upper := 28216, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good184_checked :
    goodSegmentCheck 127 42 90
      { lower := 28227, upper := 28251, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good185_checked :
    goodSegmentCheck 127 42 90
      { lower := 28672, upper := 28687, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good186_checked :
    goodSegmentCheck 127 42 90
      { lower := 28717, upper := 28798, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good187_checked :
    goodSegmentCheck 127 42 90
      { lower := 28812, upper := 28843, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good188_checked :
    goodSegmentCheck 127 42 90
      { lower := 29791, upper := 29894, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good189_checked :
    goodSegmentCheck 127 42 90
      { lower := 30618, upper := 30719, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good190_checked :
    goodSegmentCheck 127 42 90
      { lower := 30720, upper := 30744, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good191_checked :
    goodSegmentCheck 127 42 90
      { lower := 30758, upper := 30846, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good192_checked :
    goodSegmentCheck 127 42 90
      { lower := 30926, upper := 31025, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good193_checked :
    goodSegmentCheck 127 42 90
      { lower := 31213, upper := 31319, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good194_checked :
    goodSegmentCheck 127 42 90
      { lower := 31320, upper := 31376, witness := RowWitness.topPrime 31319 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good195_checked :
    goodSegmentCheck 127 42 90
      { lower := 31423, upper := 31455, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good196_checked :
    goodSegmentCheck 127 42 90
      { lower := 32805, upper := 32894, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good197_checked :
    goodSegmentCheck 127 42 90
      { lower := 33614, upper := 33615, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good198_checked :
    goodSegmentCheck 127 42 90
      { lower := 34347, upper := 34463, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good199_checked :
    goodSegmentCheck 127 42 90
      { lower := 34464, upper := 34517, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good200_checked :
    goodSegmentCheck 127 42 90
      { lower := 37303, upper := 37336, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good201_checked :
    goodSegmentCheck 127 42 90
      { lower := 38307, upper := 38417, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good202_checked :
    goodSegmentCheck 127 42 90
      { lower := 39366, upper := 39430, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good203_checked :
    goodSegmentCheck 127 42 90
      { lower := 40401, upper := 40454, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good204_checked :
    goodSegmentCheck 127 42 90
      { lower := 40960, upper := 41057, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good205_checked :
    goodSegmentCheck 127 42 90
      { lower := 47526, upper := 47647, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good206_checked :
    goodSegmentCheck 127 42 90
      { lower := 47648, upper := 47650, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good207_checked :
    goodSegmentCheck 127 42 90
      { lower := 48013, upper := 48087, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good208_checked :
    goodSegmentCheck 127 42 90
      { lower := 48778, upper := 48794, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good209_checked :
    goodSegmentCheck 127 42 90
      { lower := 49152, upper := 49256, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good210_checked :
    goodSegmentCheck 127 42 90
      { lower := 50421, upper := 50536, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good211_checked :
    goodSegmentCheck 127 42 90
      { lower := 51076, upper := 51131, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good212_checked :
    goodSegmentCheck 127 42 90
      { lower := 55451, upper := 55567, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good213_checked :
    goodSegmentCheck 127 42 90
      { lower := 55568, upper := 55573, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good214_checked :
    goodSegmentCheck 127 42 90
      { lower := 57245, upper := 57248, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good215_checked :
    goodSegmentCheck 127 42 90
      { lower := 57344, upper := 57371, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good216_checked :
    goodSegmentCheck 127 42 90
      { lower := 58619, upper := 58690, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good217_checked :
    goodSegmentCheck 127 42 90
      { lower := 62500, upper := 62536, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good218_checked :
    goodSegmentCheck 127 42 90
      { lower := 71289, upper := 71413, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good219_checked :
    goodSegmentCheck 127 42 90
      { lower := 71414, upper := 71415, witness := RowWitness.topPrime 71413 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good220_checked :
    goodSegmentCheck 127 42 90
      { lower := 73205, upper := 73293, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good221_checked :
    goodSegmentCheck 127 42 90
      { lower := 89383, upper := 89499, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good222_checked :
    goodSegmentCheck 127 42 90
      { lower := 98415, upper := 98430, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row127_good223_checked :
    goodSegmentCheck 127 42 90
      { lower := 137842, upper := 137907, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good224_checked :
    goodSegmentCheck 127 42 90
      { lower := 148955, upper := 149003, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good224_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_goods_checked :
    row127.goods.all (goodSegmentCheck row127.height.i row127.height.r row127.height.s) = true := by
  change row127_goods.all (goodSegmentCheck 127 42 90) = true
  simp only [row127_goods, List.all_cons, List.all_nil,
    row127_good000_checked,
    row127_good001_checked,
    row127_good002_checked,
    row127_good003_checked,
    row127_good004_checked,
    row127_good005_checked,
    row127_good006_checked,
    row127_good007_checked,
    row127_good008_checked,
    row127_good009_checked,
    row127_good010_checked,
    row127_good011_checked,
    row127_good012_checked,
    row127_good013_checked,
    row127_good014_checked,
    row127_good015_checked,
    row127_good016_checked,
    row127_good017_checked,
    row127_good018_checked,
    row127_good019_checked,
    row127_good020_checked,
    row127_good021_checked,
    row127_good022_checked,
    row127_good023_checked,
    row127_good024_checked,
    row127_good025_checked,
    row127_good026_checked,
    row127_good027_checked,
    row127_good028_checked,
    row127_good029_checked,
    row127_good030_checked,
    row127_good031_checked,
    row127_good032_checked,
    row127_good033_checked,
    row127_good034_checked,
    row127_good035_checked,
    row127_good036_checked,
    row127_good037_checked,
    row127_good038_checked,
    row127_good039_checked,
    row127_good040_checked,
    row127_good041_checked,
    row127_good042_checked,
    row127_good043_checked,
    row127_good044_checked,
    row127_good045_checked,
    row127_good046_checked,
    row127_good047_checked,
    row127_good048_checked,
    row127_good049_checked,
    row127_good050_checked,
    row127_good051_checked,
    row127_good052_checked,
    row127_good053_checked,
    row127_good054_checked,
    row127_good055_checked,
    row127_good056_checked,
    row127_good057_checked,
    row127_good058_checked,
    row127_good059_checked,
    row127_good060_checked,
    row127_good061_checked,
    row127_good062_checked,
    row127_good063_checked,
    row127_good064_checked,
    row127_good065_checked,
    row127_good066_checked,
    row127_good067_checked,
    row127_good068_checked,
    row127_good069_checked,
    row127_good070_checked,
    row127_good071_checked,
    row127_good072_checked,
    row127_good073_checked,
    row127_good074_checked,
    row127_good075_checked,
    row127_good076_checked,
    row127_good077_checked,
    row127_good078_checked,
    row127_good079_checked,
    row127_good080_checked,
    row127_good081_checked,
    row127_good082_checked,
    row127_good083_checked,
    row127_good084_checked,
    row127_good085_checked,
    row127_good086_checked,
    row127_good087_checked,
    row127_good088_checked,
    row127_good089_checked,
    row127_good090_checked,
    row127_good091_checked,
    row127_good092_checked,
    row127_good093_checked,
    row127_good094_checked,
    row127_good095_checked,
    row127_good096_checked,
    row127_good097_checked,
    row127_good098_checked,
    row127_good099_checked,
    row127_good100_checked,
    row127_good101_checked,
    row127_good102_checked,
    row127_good103_checked,
    row127_good104_checked,
    row127_good105_checked,
    row127_good106_checked,
    row127_good107_checked,
    row127_good108_checked,
    row127_good109_checked,
    row127_good110_checked,
    row127_good111_checked,
    row127_good112_checked,
    row127_good113_checked,
    row127_good114_checked,
    row127_good115_checked,
    row127_good116_checked,
    row127_good117_checked,
    row127_good118_checked,
    row127_good119_checked,
    row127_good120_checked,
    row127_good121_checked,
    row127_good122_checked,
    row127_good123_checked,
    row127_good124_checked,
    row127_good125_checked,
    row127_good126_checked,
    row127_good127_checked,
    row127_good128_checked,
    row127_good129_checked,
    row127_good130_checked,
    row127_good131_checked,
    row127_good132_checked,
    row127_good133_checked,
    row127_good134_checked,
    row127_good135_checked,
    row127_good136_checked,
    row127_good137_checked,
    row127_good138_checked,
    row127_good139_checked,
    row127_good140_checked,
    row127_good141_checked,
    row127_good142_checked,
    row127_good143_checked,
    row127_good144_checked,
    row127_good145_checked,
    row127_good146_checked,
    row127_good147_checked,
    row127_good148_checked,
    row127_good149_checked,
    row127_good150_checked,
    row127_good151_checked,
    row127_good152_checked,
    row127_good153_checked,
    row127_good154_checked,
    row127_good155_checked,
    row127_good156_checked,
    row127_good157_checked,
    row127_good158_checked,
    row127_good159_checked,
    row127_good160_checked,
    row127_good161_checked,
    row127_good162_checked,
    row127_good163_checked,
    row127_good164_checked,
    row127_good165_checked,
    row127_good166_checked,
    row127_good167_checked,
    row127_good168_checked,
    row127_good169_checked,
    row127_good170_checked,
    row127_good171_checked,
    row127_good172_checked,
    row127_good173_checked,
    row127_good174_checked,
    row127_good175_checked,
    row127_good176_checked,
    row127_good177_checked,
    row127_good178_checked,
    row127_good179_checked,
    row127_good180_checked,
    row127_good181_checked,
    row127_good182_checked,
    row127_good183_checked,
    row127_good184_checked,
    row127_good185_checked,
    row127_good186_checked,
    row127_good187_checked,
    row127_good188_checked,
    row127_good189_checked,
    row127_good190_checked,
    row127_good191_checked,
    row127_good192_checked,
    row127_good193_checked,
    row127_good194_checked,
    row127_good195_checked,
    row127_good196_checked,
    row127_good197_checked,
    row127_good198_checked,
    row127_good199_checked,
    row127_good200_checked,
    row127_good201_checked,
    row127_good202_checked,
    row127_good203_checked,
    row127_good204_checked,
    row127_good205_checked,
    row127_good206_checked,
    row127_good207_checked,
    row127_good208_checked,
    row127_good209_checked,
    row127_good210_checked,
    row127_good211_checked,
    row127_good212_checked,
    row127_good213_checked,
    row127_good214_checked,
    row127_good215_checked,
    row127_good216_checked,
    row127_good217_checked,
    row127_good218_checked,
    row127_good219_checked,
    row127_good220_checked,
    row127_good221_checked,
    row127_good222_checked,
    row127_good223_checked,
    row127_good224_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_registered :
    decide (row127.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row127_small_checked :
    coverCheck (2 * row127.height.i + 2) (row127.height.i * (row127.height.i - 1) - 1)
      (row127.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row127_layerCover_checked :
    coverCheck (row127.height.i * (row127.height.i - 1)) (row127.height.n0 - 1)
      (row127.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row127_bounds : List NatInterval :=
  [(256, 377), (378, 499), (500, 625), (626, 745), (746, 869), (870, 989), (990, 1109), (1110, 1235), (1236, 1357), (1358, 1453), (1454, 1579), (1580, 1705), (1706, 1825), (1826, 1949), (1950, 2075), (2076, 2195), (2196, 2305), (2306, 2423), (2424, 2549), (2550, 2675), (2676, 2797), (2798, 2923), (2924, 3043), (3044, 3167), (3168, 3293), (3294, 3397), (3398, 3517), (3518, 3643), (3644, 3769), (3770, 3895), (3896, 4015), (4016, 4139), (4140, 4265), (4266, 4387), (4388, 4499), (4500, 4619), (4620, 4729), (4730, 4855), (4856, 4957), (4958, 5083), (5084, 5207), (5208, 5323), (5324, 5449), (5450, 5575), (5576, 5699), (5700, 5819), (5820, 5939), (5940, 6065), (6066, 6179), (6180, 6299), (6300, 6425), (6426, 6547), (6548, 6673), (6674, 6799), (6800, 6919), (6920, 7043), (7044, 7169), (7170, 7285), (7286, 7409), (7410, 7519), (7520, 7643), (7644, 7769), (7770, 7885), (7886, 8009), (8010, 8135), (8136, 8249), (8250, 8369), (8370, 8495), (8496, 8593), (8594, 8707), (8708, 8833), (8834, 8957), (8958, 9077), (9078, 9193), (9194, 9313), (9314, 9437), (9438, 9563), (9564, 9677), (9678, 9803), (9804, 9929), (9930, 10055), (10056, 10165), (10166, 10289), (10290, 10415), (10416, 10525), (10526, 10639), (10640, 10765), (10766, 10879), (10880, 10993), (10994, 11119), (11120, 11245), (11246, 11369), (11370, 11495), (11496, 11617), (11618, 11743), (11744, 11869), (11870, 11993), (11994, 12113), (12114, 12239), (12240, 12365), (12366, 12473), (12474, 12599), (12600, 12715), (12716, 12839), (12840, 12955), (12956, 13079), (13080, 13189), (13190, 13313), (13314, 13439), (13440, 13547), (13548, 13663), (13664, 13775), (13776, 13889), (13890, 14009), (14010, 14135), (14136, 14233), (14234, 14347), (14348, 14473), (14474, 14587), (14588, 14689), (14690, 14809), (14810, 14923), (14924, 15049), (15050, 15157), (15158, 15275), (15276, 15397), (15398, 15517), (15518, 15637), (15638, 15755), (15756, 15875), (15876, 15985), (15986, 16098), (16428, 16510), (16810, 16913), (16914, 16936), (17405, 17429), (17496, 17531), (17576, 17622), (17672, 17702), (17797, 17798), (18490, 18607), (18608, 18617), (18634, 18743), (18744, 18869), (18870, 18876), (19208, 19292), (19663, 19787), (19788, 19809), (19881, 19899), (19965, 20007), (20172, 20287), (20288, 20290), (20402, 20465), (20480, 20528), (20535, 20659), (20660, 20661), (20667, 20703), (21316, 21344), (21870, 21989), (21990, 22001), (22090, 22096), (22188, 22216), (22445, 22452), (22472, 22595), (22596, 22598), (23763, 23887), (23888, 23888), (24037, 24155), (24156, 24163), (24167, 24183), (24334, 24455), (24456, 24493), (24576, 24691), (25000, 25090), (25215, 25315), (25316, 25341), (26364, 26370), (26411, 26490), (26508, 26537), (26624, 26634), (26645, 26750), (27556, 27562), (27848, 27861), (28125, 28216), (28227, 28251), (28672, 28687), (28717, 28798), (28812, 28843), (29791, 29894), (30618, 30719), (30720, 30744), (30758, 30846), (30926, 31025), (31213, 31319), (31320, 31376), (31423, 31455), (32805, 32894), (33614, 33615), (34347, 34463), (34464, 34517), (37303, 37336), (38307, 38417), (39366, 39430), (40401, 40454), (40960, 41057), (47526, 47647), (47648, 47650), (48013, 48087), (48778, 48794), (49152, 49256), (50421, 50536), (51076, 51131), (55451, 55567), (55568, 55573), (57245, 57248), (57344, 57371), (58619, 58690), (62500, 62536), (71289, 71413), (71414, 71415), (73205, 73293), (89383, 89499), (98415, 98430), (137842, 137907), (148955, 149003)]

theorem row127_bounds_eq : row127.goods.map goodSegmentBounds = row127_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row127_layer000_intervals : List ColouredInterval :=
  [(2, 16384, 16510), (2, 18432, 18558), (2, 20480, 20606), (2, 22528, 22654), (2, 24576, 24702), (2, 26624, 26750), (2, 28672, 28798), (2, 30720, 30846), (2, 16384, 16510), (2, 20480, 20606), (2, 24576, 24702), (2, 28672, 28798), (2, 16384, 16510), (2, 24576, 24702), (2, 16384, 16510), (3, 17496, 17622), (3, 19683, 19809), (3, 21870, 21996), (3, 24057, 24183), (3, 26244, 26370), (3, 28431, 28557), (3, 30618, 30744), (3, 19683, 19809), (3, 26244, 26370), (3, 19683, 19809), (5, 18750, 18876), (5, 21875, 22001), (5, 25000, 25126), (5, 28125, 28251), (5, 31250, 31376), (5, 31250, 31376), (7, 16807, 16933), (7, 19208, 19334), (7, 21609, 21735), (7, 24010, 24136), (7, 26411, 26537), (7, 28812, 28938), (7, 31213, 31339), (7, 16807, 16933), (11, 16002, 16098), (11, 17303, 17429), (11, 18634, 18760), (11, 19965, 20091), (11, 29282, 29408), (13, 17576, 17702), (13, 19773, 19899), (13, 21970, 22096), (13, 24167, 24293), (13, 26364, 26490), (13, 28561, 28687), (13, 30758, 30884), (13, 28561, 28687), (17, 19652, 19778), (17, 24565, 24691), (17, 29478, 29604), (19, 20577, 20703), (19, 27436, 27562), (23, 24334, 24460), (29, 24389, 24515), (31, 29791, 29917), (37, 16428, 16554), (37, 17797, 17923), (37, 19166, 19292), (37, 20535, 20661), (41, 16810, 16936), (41, 18491, 18617), (41, 20172, 20298), (41, 21853, 21979), (41, 23534, 23660), (41, 25215, 25341), (43, 16641, 16767), (43, 18490, 18616), (43, 20339, 20465), (43, 22188, 22314), (43, 24037, 24163), (43, 25886, 26012), (43, 27735, 27861), (47, 17672, 17798), (47, 19881, 20007), (47, 22090, 22216), (47, 24299, 24425), (47, 26508, 26634), (47, 28717, 28843), (47, 30926, 31052), (53, 16854, 16980), (53, 19663, 19789), (53, 22472, 22598), (53, 25281, 25407), (53, 28090, 28216), (53, 30899, 31025), (59, 17405, 17531), (59, 20886, 21012), (59, 24367, 24493), (59, 27848, 27974), (59, 31329, 31455), (61, 18605, 18731), (61, 22326, 22452), (61, 26047, 26173), (61, 29768, 29894), (67, 17956, 18082), (67, 22445, 22571), (67, 26934, 27060), (67, 31423, 31549), (71, 20164, 20290), (71, 25205, 25331), (71, 30246, 30372), (73, 16002, 16113), (73, 21316, 21442), (73, 26645, 26771), (73, 31974, 32003), (79, 18723, 18849), (79, 24964, 25090), (79, 31205, 31331), (83, 20667, 20793), (83, 27556, 27682), (89, 23763, 23889), (89, 31684, 31810), (97, 18818, 18944), (97, 28227, 28353), (101, 20402, 20528), (101, 30603, 30729), (103, 21218, 21344), (103, 31827, 31953), (107, 22898, 23024), (109, 23762, 23888), (113, 25538, 25664)]

def row127_layer000_block000 : List ColouredInterval :=
  [(2, 16384, 16510), (2, 18432, 18558), (2, 20480, 20606), (2, 22528, 22654), (2, 24576, 24702), (2, 26624, 26750), (2, 28672, 28798), (2, 30720, 30846), (2, 16384, 16510), (2, 20480, 20606), (2, 24576, 24702), (2, 28672, 28798), (2, 16384, 16510), (2, 24576, 24702), (2, 16384, 16510), (3, 17496, 17622)]

def row127_layer000_block001 : List ColouredInterval :=
  [(3, 19683, 19809), (3, 21870, 21996), (3, 24057, 24183), (3, 26244, 26370), (3, 28431, 28557), (3, 30618, 30744), (3, 19683, 19809), (3, 26244, 26370), (3, 19683, 19809), (5, 18750, 18876), (5, 21875, 22001), (5, 25000, 25126), (5, 28125, 28251), (5, 31250, 31376), (5, 31250, 31376), (7, 16807, 16933)]

def row127_layer000_block002 : List ColouredInterval :=
  [(7, 19208, 19334), (7, 21609, 21735), (7, 24010, 24136), (7, 26411, 26537), (7, 28812, 28938), (7, 31213, 31339), (7, 16807, 16933), (11, 16002, 16098), (11, 17303, 17429), (11, 18634, 18760), (11, 19965, 20091), (11, 29282, 29408), (13, 17576, 17702), (13, 19773, 19899), (13, 21970, 22096), (13, 24167, 24293)]

def row127_layer000_block003 : List ColouredInterval :=
  [(13, 26364, 26490), (13, 28561, 28687), (13, 30758, 30884), (13, 28561, 28687), (17, 19652, 19778), (17, 24565, 24691), (17, 29478, 29604), (19, 20577, 20703), (19, 27436, 27562), (23, 24334, 24460), (29, 24389, 24515), (31, 29791, 29917), (37, 16428, 16554), (37, 17797, 17923), (37, 19166, 19292), (37, 20535, 20661)]

def row127_layer000_block004 : List ColouredInterval :=
  [(41, 16810, 16936), (41, 18491, 18617), (41, 20172, 20298), (41, 21853, 21979), (41, 23534, 23660), (41, 25215, 25341), (43, 16641, 16767), (43, 18490, 18616), (43, 20339, 20465), (43, 22188, 22314), (43, 24037, 24163), (43, 25886, 26012), (43, 27735, 27861), (47, 17672, 17798), (47, 19881, 20007), (47, 22090, 22216)]

def row127_layer000_block005 : List ColouredInterval :=
  [(47, 24299, 24425), (47, 26508, 26634), (47, 28717, 28843), (47, 30926, 31052), (53, 16854, 16980), (53, 19663, 19789), (53, 22472, 22598), (53, 25281, 25407), (53, 28090, 28216), (53, 30899, 31025), (59, 17405, 17531), (59, 20886, 21012), (59, 24367, 24493), (59, 27848, 27974), (59, 31329, 31455), (61, 18605, 18731)]

def row127_layer000_block006 : List ColouredInterval :=
  [(61, 22326, 22452), (61, 26047, 26173), (61, 29768, 29894), (67, 17956, 18082), (67, 22445, 22571), (67, 26934, 27060), (67, 31423, 31549), (71, 20164, 20290), (71, 25205, 25331), (71, 30246, 30372), (73, 16002, 16113), (73, 21316, 21442), (73, 26645, 26771), (73, 31974, 32003), (79, 18723, 18849), (79, 24964, 25090)]

def row127_layer000_block007 : List ColouredInterval :=
  [(79, 31205, 31331), (83, 20667, 20793), (83, 27556, 27682), (89, 23763, 23889), (89, 31684, 31810), (97, 18818, 18944), (97, 28227, 28353), (101, 20402, 20528), (101, 30603, 30729), (103, 21218, 21344), (103, 31827, 31953), (107, 22898, 23024), (109, 23762, 23888), (113, 25538, 25664)]

def row127_layer000_chunks : List (List ColouredInterval) :=
  [row127_layer000_block000, row127_layer000_block001, row127_layer000_block002, row127_layer000_block003, row127_layer000_block004, row127_layer000_block005, row127_layer000_block006, row127_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_arithmetic : LayerArithmeticValid row127.height { lower := 16002, upper := 32004, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_enumeration :
    activePowerIntervalList 127 15 16002 32004 = row127_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_pairs000 :
    row127_layer000_block000.all (fun I => row127_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row127_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_pairs001 :
    row127_layer000_block001.all (fun I => row127_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row127_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_pairs002 :
    row127_layer000_block002.all (fun I => row127_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row127_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_pairs003 :
    row127_layer000_block003.all (fun I => row127_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row127_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_pairs004 :
    row127_layer000_block004.all (fun I => row127_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row127_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_pairs005 :
    row127_layer000_block005.all (fun I => row127_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row127_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_pairs006 :
    row127_layer000_block006.all (fun I => row127_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row127_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_pairs007 :
    row127_layer000_block007.all (fun I => row127_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row127_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_chunks_eq : row127_layer000_chunks.flatten = row127_layer000_intervals := by
  rfl

theorem row127_layer000_pairs : pairCoverCheck row127_layer000_intervals row127_bounds = true := by
  apply pairCoverCheck_of_chunks row127_layer000_chunks_eq
  intro block hblock
  simp only [row127_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row127_layer000_pairs000
  · exact row127_layer000_pairs001
  · exact row127_layer000_pairs002
  · exact row127_layer000_pairs003
  · exact row127_layer000_pairs004
  · exact row127_layer000_pairs005
  · exact row127_layer000_pairs006
  · exact row127_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer000_checked :
    coverLayerCheck row127.height row127.goods { lower := 16002, upper := 32004, M := 15 } = true := by
  exact coverLayerCheck_of_parts row127_layer000_arithmetic row127_layer000_enumeration row127_bounds_eq row127_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer000_checked
