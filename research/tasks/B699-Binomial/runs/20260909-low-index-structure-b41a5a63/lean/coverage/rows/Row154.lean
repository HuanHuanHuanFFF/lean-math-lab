import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row154_height : HeightCertificateDatum := { i := 154, r := 51, s := 109, n0Power10 := 8 }

def row154_goods : List GoodSegment := [
  { lower := 310, upper := 460, witness := RowWitness.topPrime 307 },
  { lower := 461, upper := 614, witness := RowWitness.topPrime 461 },
  { lower := 615, upper := 766, witness := RowWitness.topPrime 613 },
  { lower := 767, upper := 914, witness := RowWitness.topPrime 761 },
  { lower := 915, upper := 1064, witness := RowWitness.topPrime 911 },
  { lower := 1065, upper := 1216, witness := RowWitness.topPrime 1063 },
  { lower := 1217, upper := 1370, witness := RowWitness.topPrime 1217 },
  { lower := 1371, upper := 1520, witness := RowWitness.topPrime 1367 },
  { lower := 1521, upper := 1664, witness := RowWitness.topPrime 1511 },
  { lower := 1665, upper := 1816, witness := RowWitness.topPrime 1663 },
  { lower := 1817, upper := 1964, witness := RowWitness.topPrime 1811 },
  { lower := 1965, upper := 2104, witness := RowWitness.topPrime 1951 },
  { lower := 2105, upper := 2252, witness := RowWitness.topPrime 2099 },
  { lower := 2253, upper := 2404, witness := RowWitness.topPrime 2251 },
  { lower := 2405, upper := 2552, witness := RowWitness.topPrime 2399 },
  { lower := 2553, upper := 2704, witness := RowWitness.topPrime 2551 },
  { lower := 2705, upper := 2852, witness := RowWitness.topPrime 2699 },
  { lower := 2853, upper := 3004, witness := RowWitness.topPrime 2851 },
  { lower := 3005, upper := 3154, witness := RowWitness.topPrime 3001 },
  { lower := 3155, upper := 3290, witness := RowWitness.topPrime 3137 },
  { lower := 3291, upper := 3424, witness := RowWitness.topPrime 3271 },
  { lower := 3425, upper := 3566, witness := RowWitness.topPrime 3413 },
  { lower := 3567, upper := 3712, witness := RowWitness.topPrime 3559 },
  { lower := 3713, upper := 3862, witness := RowWitness.topPrime 3709 },
  { lower := 3863, upper := 4016, witness := RowWitness.topPrime 3863 },
  { lower := 4017, upper := 4166, witness := RowWitness.topPrime 4013 },
  { lower := 4167, upper := 4312, witness := RowWitness.topPrime 4159 },
  { lower := 4313, upper := 4450, witness := RowWitness.topPrime 4297 },
  { lower := 4451, upper := 4604, witness := RowWitness.topPrime 4451 },
  { lower := 4605, upper := 4756, witness := RowWitness.topPrime 4603 },
  { lower := 4757, upper := 4904, witness := RowWitness.topPrime 4751 },
  { lower := 4905, upper := 5056, witness := RowWitness.topPrime 4903 },
  { lower := 5057, upper := 5204, witness := RowWitness.topPrime 5051 },
  { lower := 5205, upper := 5350, witness := RowWitness.topPrime 5197 },
  { lower := 5351, upper := 5504, witness := RowWitness.topPrime 5351 },
  { lower := 5505, upper := 5656, witness := RowWitness.topPrime 5503 },
  { lower := 5657, upper := 5810, witness := RowWitness.topPrime 5657 },
  { lower := 5811, upper := 5960, witness := RowWitness.topPrime 5807 },
  { lower := 5961, upper := 6106, witness := RowWitness.topPrime 5953 },
  { lower := 6107, upper := 6254, witness := RowWitness.topPrime 6101 },
  { lower := 6255, upper := 6400, witness := RowWitness.topPrime 6247 },
  { lower := 6401, upper := 6550, witness := RowWitness.topPrime 6397 },
  { lower := 6551, upper := 6704, witness := RowWitness.topPrime 6551 },
  { lower := 6705, upper := 6856, witness := RowWitness.topPrime 6703 },
  { lower := 6857, upper := 7010, witness := RowWitness.topPrime 6857 },
  { lower := 7011, upper := 7154, witness := RowWitness.topPrime 7001 },
  { lower := 7155, upper := 7304, witness := RowWitness.topPrime 7151 },
  { lower := 7305, upper := 7450, witness := RowWitness.topPrime 7297 },
  { lower := 7451, upper := 7604, witness := RowWitness.topPrime 7451 },
  { lower := 7605, upper := 7756, witness := RowWitness.topPrime 7603 },
  { lower := 7757, upper := 7910, witness := RowWitness.topPrime 7757 },
  { lower := 7911, upper := 8060, witness := RowWitness.topPrime 7907 },
  { lower := 8061, upper := 8212, witness := RowWitness.topPrime 8059 },
  { lower := 8213, upper := 8362, witness := RowWitness.topPrime 8209 },
  { lower := 8363, upper := 8516, witness := RowWitness.topPrime 8363 },
  { lower := 8517, upper := 8666, witness := RowWitness.topPrime 8513 },
  { lower := 8667, upper := 8816, witness := RowWitness.topPrime 8663 },
  { lower := 8817, upper := 8960, witness := RowWitness.topPrime 8807 },
  { lower := 8961, upper := 9104, witness := RowWitness.topPrime 8951 },
  { lower := 9105, upper := 9256, witness := RowWitness.topPrime 9103 },
  { lower := 9257, upper := 9410, witness := RowWitness.topPrime 9257 },
  { lower := 9411, upper := 9556, witness := RowWitness.topPrime 9403 },
  { lower := 9557, upper := 9704, witness := RowWitness.topPrime 9551 },
  { lower := 9705, upper := 9850, witness := RowWitness.topPrime 9697 },
  { lower := 9851, upper := 10004, witness := RowWitness.topPrime 9851 },
  { lower := 10005, upper := 10126, witness := RowWitness.topPrime 9973 },
  { lower := 10127, upper := 10264, witness := RowWitness.topPrime 10111 },
  { lower := 10265, upper := 10412, witness := RowWitness.topPrime 10259 },
  { lower := 10413, upper := 10552, witness := RowWitness.topPrime 10399 },
  { lower := 10553, upper := 10684, witness := RowWitness.topPrime 10531 },
  { lower := 10685, upper := 10820, witness := RowWitness.topPrime 10667 },
  { lower := 10821, upper := 10952, witness := RowWitness.topPrime 10799 },
  { lower := 10953, upper := 11102, witness := RowWitness.topPrime 10949 },
  { lower := 11103, upper := 11246, witness := RowWitness.topPrime 11093 },
  { lower := 11247, upper := 11396, witness := RowWitness.topPrime 11243 },
  { lower := 11397, upper := 11546, witness := RowWitness.topPrime 11393 },
  { lower := 11547, upper := 11680, witness := RowWitness.topPrime 11527 },
  { lower := 11681, upper := 11834, witness := RowWitness.topPrime 11681 },
  { lower := 11835, upper := 11986, witness := RowWitness.topPrime 11833 },
  { lower := 11987, upper := 12140, witness := RowWitness.topPrime 11987 },
  { lower := 12141, upper := 12272, witness := RowWitness.topPrime 12119 },
  { lower := 12273, upper := 12422, witness := RowWitness.topPrime 12269 },
  { lower := 12423, upper := 12574, witness := RowWitness.topPrime 12421 },
  { lower := 12575, upper := 12722, witness := RowWitness.topPrime 12569 },
  { lower := 12723, upper := 12874, witness := RowWitness.topPrime 12721 },
  { lower := 12875, upper := 13006, witness := RowWitness.topPrime 12853 },
  { lower := 13007, upper := 13160, witness := RowWitness.topPrime 13007 },
  { lower := 13161, upper := 13312, witness := RowWitness.topPrime 13159 },
  { lower := 13313, upper := 13466, witness := RowWitness.topPrime 13313 },
  { lower := 13467, upper := 13616, witness := RowWitness.topPrime 13463 },
  { lower := 13617, upper := 13766, witness := RowWitness.topPrime 13613 },
  { lower := 13767, upper := 13916, witness := RowWitness.topPrime 13763 },
  { lower := 13917, upper := 14066, witness := RowWitness.topPrime 13913 },
  { lower := 14067, upper := 14210, witness := RowWitness.topPrime 14057 },
  { lower := 14211, upper := 14360, witness := RowWitness.topPrime 14207 },
  { lower := 14361, upper := 14500, witness := RowWitness.topPrime 14347 },
  { lower := 14501, upper := 14642, witness := RowWitness.topPrime 14489 },
  { lower := 14643, upper := 14792, witness := RowWitness.topPrime 14639 },
  { lower := 14793, upper := 14936, witness := RowWitness.topPrime 14783 },
  { lower := 14937, upper := 15082, witness := RowWitness.topPrime 14929 },
  { lower := 15083, upper := 15236, witness := RowWitness.topPrime 15083 },
  { lower := 15237, upper := 15386, witness := RowWitness.topPrime 15233 },
  { lower := 15387, upper := 15536, witness := RowWitness.topPrime 15383 },
  { lower := 15537, upper := 15680, witness := RowWitness.topPrime 15527 },
  { lower := 15681, upper := 15832, witness := RowWitness.topPrime 15679 },
  { lower := 15833, upper := 15976, witness := RowWitness.topPrime 15823 },
  { lower := 15977, upper := 16126, witness := RowWitness.topPrime 15973 },
  { lower := 16127, upper := 16280, witness := RowWitness.topPrime 16127 },
  { lower := 16281, upper := 16426, witness := RowWitness.topPrime 16273 },
  { lower := 16427, upper := 16580, witness := RowWitness.topPrime 16427 },
  { lower := 16581, upper := 16726, witness := RowWitness.topPrime 16573 },
  { lower := 16727, upper := 16856, witness := RowWitness.topPrime 16703 },
  { lower := 16857, upper := 16996, witness := RowWitness.topPrime 16843 },
  { lower := 16997, upper := 17146, witness := RowWitness.topPrime 16993 },
  { lower := 17147, upper := 17290, witness := RowWitness.topPrime 17137 },
  { lower := 17291, upper := 17444, witness := RowWitness.topPrime 17291 },
  { lower := 17445, upper := 17596, witness := RowWitness.topPrime 17443 },
  { lower := 17597, upper := 17750, witness := RowWitness.topPrime 17597 },
  { lower := 17751, upper := 17902, witness := RowWitness.topPrime 17749 },
  { lower := 17903, upper := 18056, witness := RowWitness.topPrime 17903 },
  { lower := 18057, upper := 18202, witness := RowWitness.topPrime 18049 },
  { lower := 18203, upper := 18352, witness := RowWitness.topPrime 18199 },
  { lower := 18353, upper := 18506, witness := RowWitness.topPrime 18353 },
  { lower := 18507, upper := 18656, witness := RowWitness.topPrime 18503 },
  { lower := 18657, upper := 18790, witness := RowWitness.topPrime 18637 },
  { lower := 18791, upper := 18940, witness := RowWitness.topPrime 18787 },
  { lower := 18941, upper := 19072, witness := RowWitness.topPrime 18919 },
  { lower := 19073, upper := 19226, witness := RowWitness.topPrime 19073 },
  { lower := 19227, upper := 19372, witness := RowWitness.topPrime 19219 },
  { lower := 19373, upper := 19526, witness := RowWitness.topPrime 19373 },
  { lower := 19527, upper := 19660, witness := RowWitness.topPrime 19507 },
  { lower := 19661, upper := 19814, witness := RowWitness.topPrime 19661 },
  { lower := 19815, upper := 19966, witness := RowWitness.topPrime 19813 },
  { lower := 19967, upper := 20116, witness := RowWitness.topPrime 19963 },
  { lower := 20117, upper := 20270, witness := RowWitness.topPrime 20117 },
  { lower := 20271, upper := 20422, witness := RowWitness.topPrime 20269 },
  { lower := 20423, upper := 20564, witness := RowWitness.topPrime 20411 },
  { lower := 20565, upper := 20716, witness := RowWitness.topPrime 20563 },
  { lower := 20717, upper := 20870, witness := RowWitness.topPrime 20717 },
  { lower := 20871, upper := 21010, witness := RowWitness.topPrime 20857 },
  { lower := 21011, upper := 21164, witness := RowWitness.topPrime 21011 },
  { lower := 21165, upper := 21316, witness := RowWitness.topPrime 21163 },
  { lower := 21317, upper := 21470, witness := RowWitness.topPrime 21317 },
  { lower := 21471, upper := 21620, witness := RowWitness.topPrime 21467 },
  { lower := 21621, upper := 21770, witness := RowWitness.topPrime 21617 },
  { lower := 21771, upper := 21920, witness := RowWitness.topPrime 21767 },
  { lower := 21921, upper := 22064, witness := RowWitness.topPrime 21911 },
  { lower := 22065, upper := 22216, witness := RowWitness.topPrime 22063 },
  { lower := 22217, upper := 22346, witness := RowWitness.topPrime 22193 },
  { lower := 22347, upper := 22496, witness := RowWitness.topPrime 22343 },
  { lower := 22497, upper := 22636, witness := RowWitness.topPrime 22483 },
  { lower := 22637, upper := 22790, witness := RowWitness.topPrime 22637 },
  { lower := 22791, upper := 22940, witness := RowWitness.topPrime 22787 },
  { lower := 22941, upper := 23090, witness := RowWitness.topPrime 22937 },
  { lower := 23091, upper := 23240, witness := RowWitness.topPrime 23087 },
  { lower := 23241, upper := 23380, witness := RowWitness.topPrime 23227 },
  { lower := 23381, upper := 23524, witness := RowWitness.topPrime 23371 },
  { lower := 23525, upper := 23561, witness := RowWitness.topPrime 23509 },
  { lower := 23763, upper := 23914, witness := RowWitness.topPrime 23761 },
  { lower := 23915, upper := 23915, witness := RowWitness.topPrime 23911 },
  { lower := 24057, upper := 24202, witness := RowWitness.topPrime 24049 },
  { lower := 24203, upper := 24210, witness := RowWitness.topPrime 24203 },
  { lower := 24299, upper := 24320, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24482, witness := RowWitness.topPrime 24329 },
  { lower := 24483, upper := 24520, witness := RowWitness.topPrime 24481 },
  { lower := 24576, upper := 24718, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25117, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25342, witness := RowWitness.topPrime 25189 },
  { lower := 25343, upper := 25368, witness := RowWitness.topPrime 25343 },
  { lower := 26364, upper := 26397, witness := RowWitness.topPrime 26357 },
  { lower := 26508, upper := 26517, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26661, witness := RowWitness.topPrime 26641 },
  { lower := 27556, upper := 27589, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27888, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28276, witness := RowWitness.topPrime 28123 },
  { lower := 28277, upper := 28278, witness := RowWitness.topPrime 28277 },
  { lower := 28561, upper := 28584, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28714, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28825, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29921, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30746, witness := RowWitness.topPrime 30593 },
  { lower := 30747, upper := 30756, witness := RowWitness.topPrime 30727 },
  { lower := 30758, upper := 30771, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 30911, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31052, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31402, witness := RowWitness.topPrime 31249 },
  { lower := 31403, upper := 31403, witness := RowWitness.topPrime 31397 },
  { lower := 31423, upper := 31482, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31837, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31980, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32921, witness := RowWitness.topPrime 32803 },
  { lower := 32955, upper := 32958, witness := RowWitness.topPrime 32941 },
  { lower := 33614, upper := 33642, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33767, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34472, witness := RowWitness.topPrime 34319 },
  { lower := 34473, upper := 34544, witness := RowWitness.topPrime 34471 },
  { lower := 36517, upper := 36650, witness := RowWitness.topPrime 36497 },
  { lower := 36651, upper := 36654, witness := RowWitness.topPrime 36643 },
  { lower := 37303, upper := 37363, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37456, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37646, witness := RowWitness.topPrime 37493 },
  { lower := 37647, upper := 37691, witness := RowWitness.topPrime 37643 },
  { lower := 38307, upper := 38444, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39476, witness := RowWitness.topPrime 39323 },
  { lower := 39477, upper := 39479, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40481, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40957, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41084, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43840, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45406, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45949, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47674, witness := RowWitness.topPrime 47521 },
  { lower := 47675, upper := 47677, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48114, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48821, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49283, witness := RowWitness.topPrime 49139 },
  { lower := 51076, upper := 51158, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55594, witness := RowWitness.topPrime 55441 },
  { lower := 55595, upper := 55600, witness := RowWitness.topPrime 55589 },
  { lower := 56307, upper := 56322, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56460, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57275, witness := RowWitness.topPrime 57241 },
  { lower := 59049, upper := 59109, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62563, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63998, witness := RowWitness.topPrime 63929 },
  { lower := 65610, upper := 65689, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68792, witness := RowWitness.topPrime 68639 },
  { lower := 68793, upper := 68804, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69043, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71440, witness := RowWitness.topPrime 71287 },
  { lower := 71441, upper := 71442, witness := RowWitness.topPrime 71437 },
  { lower := 85805, upper := 85836, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89526, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93903, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98457, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103119, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109528, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137934, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149030, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154602, witness := RowWitness.topPrime 154543 }
]

def row154_layers : List CoverLayer := [
  { lower := 23562, upper := 47124, M := 15 },
  { lower := 47124, upper := 94248, M := 12 },
  { lower := 94248, upper := 188496, M := 9 },
  { lower := 188496, upper := 376992, M := 7 },
  { lower := 376992, upper := 753984, M := 5 },
  { lower := 753984, upper := 1507968, M := 4 },
  { lower := 1507968, upper := 3015936, M := 3 },
  { lower := 3015936, upper := 6031872, M := 2 },
  { lower := 6031872, upper := 12063744, M := 2 },
  { lower := 12063744, upper := 24127488, M := 2 },
  { lower := 24127488, upper := 48254976, M := 1 },
  { lower := 48254976, upper := 96509952, M := 1 },
  { lower := 96509952, upper := 100000000, M := 1 }
]

def row154 : FiniteCoverRow := {
  height := row154_height,
  goods := row154_goods,
  layers := row154_layers
}

theorem row154_registered :
    decide (row154.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row154_goods_checked :
    row154.goods.all (goodSegmentCheck row154.height.i row154.height.r row154.height.s) = true := by
  decide +kernel

theorem row154_small_checked :
    coverCheck (2 * row154.height.i + 2) (row154.height.i * (row154.height.i - 1) - 1)
      (row154.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row154_layerCover_checked :
    coverCheck (row154.height.i * (row154.height.i - 1)) (row154.height.n0 - 1)
      (row154.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row154_layer000_checked :
    coverLayerCheck row154.height row154.goods { lower := 23562, upper := 47124, M := 15 } = true := by
  decide +kernel

theorem row154_layer001_checked :
    coverLayerCheck row154.height row154.goods { lower := 47124, upper := 94248, M := 12 } = true := by
  decide +kernel

theorem row154_layer002_checked :
    coverLayerCheck row154.height row154.goods { lower := 94248, upper := 188496, M := 9 } = true := by
  decide +kernel

theorem row154_layer003_checked :
    coverLayerCheck row154.height row154.goods { lower := 188496, upper := 376992, M := 7 } = true := by
  decide +kernel

theorem row154_layer004_checked :
    coverLayerCheck row154.height row154.goods { lower := 376992, upper := 753984, M := 5 } = true := by
  decide +kernel

theorem row154_layer005_checked :
    coverLayerCheck row154.height row154.goods { lower := 753984, upper := 1507968, M := 4 } = true := by
  decide +kernel

theorem row154_layer006_checked :
    coverLayerCheck row154.height row154.goods { lower := 1507968, upper := 3015936, M := 3 } = true := by
  decide +kernel

theorem row154_layer007_checked :
    coverLayerCheck row154.height row154.goods { lower := 3015936, upper := 6031872, M := 2 } = true := by
  decide +kernel

theorem row154_layer008_checked :
    coverLayerCheck row154.height row154.goods { lower := 6031872, upper := 12063744, M := 2 } = true := by
  decide +kernel

theorem row154_layer009_checked :
    coverLayerCheck row154.height row154.goods { lower := 12063744, upper := 24127488, M := 2 } = true := by
  decide +kernel

theorem row154_layer010_checked :
    coverLayerCheck row154.height row154.goods { lower := 24127488, upper := 48254976, M := 1 } = true := by
  decide +kernel

theorem row154_layer011_checked :
    coverLayerCheck row154.height row154.goods { lower := 48254976, upper := 96509952, M := 1 } = true := by
  decide +kernel

theorem row154_layer012_checked :
    coverLayerCheck row154.height row154.goods { lower := 96509952, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row154_layers_checked :
    row154.layers.all (coverLayerCheck row154.height row154.goods) = true := by
  change List.all [
    { lower := 23562, upper := 47124, M := 15 },
    { lower := 47124, upper := 94248, M := 12 },
    { lower := 94248, upper := 188496, M := 9 },
    { lower := 188496, upper := 376992, M := 7 },
    { lower := 376992, upper := 753984, M := 5 },
    { lower := 753984, upper := 1507968, M := 4 },
    { lower := 1507968, upper := 3015936, M := 3 },
    { lower := 3015936, upper := 6031872, M := 2 },
    { lower := 6031872, upper := 12063744, M := 2 },
    { lower := 12063744, upper := 24127488, M := 2 },
    { lower := 24127488, upper := 48254976, M := 1 },
    { lower := 48254976, upper := 96509952, M := 1 },
    { lower := 96509952, upper := 100000000, M := 1 }
  ] (coverLayerCheck row154.height row154.goods) = true
  simp only [List.all_cons, List.all_nil,
    row154_layer000_checked,
    row154_layer001_checked,
    row154_layer002_checked,
    row154_layer003_checked,
    row154_layer004_checked,
    row154_layer005_checked,
    row154_layer006_checked,
    row154_layer007_checked,
    row154_layer008_checked,
    row154_layer009_checked,
    row154_layer010_checked,
    row154_layer011_checked,
    row154_layer012_checked,
    Bool.true_and]

theorem row154_checked : finiteCoverRowCheck row154 = true := by
  simp only [finiteCoverRowCheck, row154_registered, row154_goods_checked,
    row154_small_checked, row154_layerCover_checked, row154_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row154_checked

end B699LowIndex
