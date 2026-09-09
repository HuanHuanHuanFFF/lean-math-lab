import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row127_registered :
    decide (row127.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row127_goods_checked :
    row127.goods.all (goodSegmentCheck row127.height.i row127.height.r row127.height.s) = true := by
  decide +kernel

theorem row127_small_checked :
    coverCheck (2 * row127.height.i + 2) (row127.height.i * (row127.height.i - 1) - 1)
      (row127.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row127_layerCover_checked :
    coverCheck (row127.height.i * (row127.height.i - 1)) (row127.height.n0 - 1)
      (row127.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row127_layer000_checked :
    coverLayerCheck row127.height row127.goods { lower := 16002, upper := 32004, M := 15 } = true := by
  decide +kernel

theorem row127_layer001_checked :
    coverLayerCheck row127.height row127.goods { lower := 32004, upper := 64008, M := 11 } = true := by
  decide +kernel

theorem row127_layer002_checked :
    coverLayerCheck row127.height row127.goods { lower := 64008, upper := 128016, M := 9 } = true := by
  decide +kernel

theorem row127_layer003_checked :
    coverLayerCheck row127.height row127.goods { lower := 128016, upper := 256032, M := 7 } = true := by
  decide +kernel

theorem row127_layer004_checked :
    coverLayerCheck row127.height row127.goods { lower := 256032, upper := 512064, M := 5 } = true := by
  decide +kernel

theorem row127_layer005_checked :
    coverLayerCheck row127.height row127.goods { lower := 512064, upper := 1024128, M := 4 } = true := by
  decide +kernel

theorem row127_layer006_checked :
    coverLayerCheck row127.height row127.goods { lower := 1024128, upper := 2048256, M := 3 } = true := by
  decide +kernel

theorem row127_layer007_checked :
    coverLayerCheck row127.height row127.goods { lower := 2048256, upper := 4096512, M := 3 } = true := by
  decide +kernel

theorem row127_layer008_checked :
    coverLayerCheck row127.height row127.goods { lower := 4096512, upper := 8193024, M := 2 } = true := by
  decide +kernel

theorem row127_layer009_checked :
    coverLayerCheck row127.height row127.goods { lower := 8193024, upper := 16386048, M := 2 } = true := by
  decide +kernel

theorem row127_layer010_checked :
    coverLayerCheck row127.height row127.goods { lower := 16386048, upper := 32772096, M := 1 } = true := by
  decide +kernel

theorem row127_layer011_checked :
    coverLayerCheck row127.height row127.goods { lower := 32772096, upper := 65544192, M := 1 } = true := by
  decide +kernel

theorem row127_layer012_checked :
    coverLayerCheck row127.height row127.goods { lower := 65544192, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row127_layers_checked :
    row127.layers.all (coverLayerCheck row127.height row127.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row127.height row127.goods) = true
  simp only [List.all_cons, List.all_nil,
    row127_layer000_checked,
    row127_layer001_checked,
    row127_layer002_checked,
    row127_layer003_checked,
    row127_layer004_checked,
    row127_layer005_checked,
    row127_layer006_checked,
    row127_layer007_checked,
    row127_layer008_checked,
    row127_layer009_checked,
    row127_layer010_checked,
    row127_layer011_checked,
    row127_layer012_checked,
    Bool.true_and]

theorem row127_checked : finiteCoverRowCheck row127 = true := by
  simp only [finiteCoverRowCheck, row127_registered, row127_goods_checked,
    row127_small_checked, row127_layerCover_checked, row127_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row127_checked

end B699LowIndex
