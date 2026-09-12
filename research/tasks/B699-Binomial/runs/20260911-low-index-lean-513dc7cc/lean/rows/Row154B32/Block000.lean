import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good000_checked :
    goodSegmentCheck 154 51 109
      { lower := 310, upper := 460, witness := RowWitness.topPrime 307 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good001_checked :
    goodSegmentCheck 154 51 109
      { lower := 461, upper := 614, witness := RowWitness.topPrime 461 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good002_checked :
    goodSegmentCheck 154 51 109
      { lower := 615, upper := 766, witness := RowWitness.topPrime 613 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good003_checked :
    goodSegmentCheck 154 51 109
      { lower := 767, upper := 914, witness := RowWitness.topPrime 761 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good004_checked :
    goodSegmentCheck 154 51 109
      { lower := 915, upper := 1064, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good005_checked :
    goodSegmentCheck 154 51 109
      { lower := 1065, upper := 1216, witness := RowWitness.topPrime 1063 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good006_checked :
    goodSegmentCheck 154 51 109
      { lower := 1217, upper := 1370, witness := RowWitness.topPrime 1217 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good007_checked :
    goodSegmentCheck 154 51 109
      { lower := 1371, upper := 1520, witness := RowWitness.topPrime 1367 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good008_checked :
    goodSegmentCheck 154 51 109
      { lower := 1521, upper := 1664, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good009_checked :
    goodSegmentCheck 154 51 109
      { lower := 1665, upper := 1816, witness := RowWitness.topPrime 1663 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good010_checked :
    goodSegmentCheck 154 51 109
      { lower := 1817, upper := 1964, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good011_checked :
    goodSegmentCheck 154 51 109
      { lower := 1965, upper := 2104, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good012_checked :
    goodSegmentCheck 154 51 109
      { lower := 2105, upper := 2252, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good013_checked :
    goodSegmentCheck 154 51 109
      { lower := 2253, upper := 2404, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good014_checked :
    goodSegmentCheck 154 51 109
      { lower := 2405, upper := 2552, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good015_checked :
    goodSegmentCheck 154 51 109
      { lower := 2553, upper := 2704, witness := RowWitness.topPrime 2551 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good016_checked :
    goodSegmentCheck 154 51 109
      { lower := 2705, upper := 2852, witness := RowWitness.topPrime 2699 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good017_checked :
    goodSegmentCheck 154 51 109
      { lower := 2853, upper := 3004, witness := RowWitness.topPrime 2851 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good018_checked :
    goodSegmentCheck 154 51 109
      { lower := 3005, upper := 3154, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good019_checked :
    goodSegmentCheck 154 51 109
      { lower := 3155, upper := 3290, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good020_checked :
    goodSegmentCheck 154 51 109
      { lower := 3291, upper := 3424, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good021_checked :
    goodSegmentCheck 154 51 109
      { lower := 3425, upper := 3566, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good022_checked :
    goodSegmentCheck 154 51 109
      { lower := 3567, upper := 3712, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good023_checked :
    goodSegmentCheck 154 51 109
      { lower := 3713, upper := 3862, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good024_checked :
    goodSegmentCheck 154 51 109
      { lower := 3863, upper := 4016, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good025_checked :
    goodSegmentCheck 154 51 109
      { lower := 4017, upper := 4166, witness := RowWitness.topPrime 4013 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good026_checked :
    goodSegmentCheck 154 51 109
      { lower := 4167, upper := 4312, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good027_checked :
    goodSegmentCheck 154 51 109
      { lower := 4313, upper := 4450, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good028_checked :
    goodSegmentCheck 154 51 109
      { lower := 4451, upper := 4604, witness := RowWitness.topPrime 4451 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good029_checked :
    goodSegmentCheck 154 51 109
      { lower := 4605, upper := 4756, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good030_checked :
    goodSegmentCheck 154 51 109
      { lower := 4757, upper := 4904, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good031_checked :
    goodSegmentCheck 154 51 109
      { lower := 4905, upper := 5056, witness := RowWitness.topPrime 4903 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good032_checked :
    goodSegmentCheck 154 51 109
      { lower := 5057, upper := 5204, witness := RowWitness.topPrime 5051 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good033_checked :
    goodSegmentCheck 154 51 109
      { lower := 5205, upper := 5350, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good034_checked :
    goodSegmentCheck 154 51 109
      { lower := 5351, upper := 5504, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good035_checked :
    goodSegmentCheck 154 51 109
      { lower := 5505, upper := 5656, witness := RowWitness.topPrime 5503 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good036_checked :
    goodSegmentCheck 154 51 109
      { lower := 5657, upper := 5810, witness := RowWitness.topPrime 5657 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good037_checked :
    goodSegmentCheck 154 51 109
      { lower := 5811, upper := 5960, witness := RowWitness.topPrime 5807 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good038_checked :
    goodSegmentCheck 154 51 109
      { lower := 5961, upper := 6106, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good039_checked :
    goodSegmentCheck 154 51 109
      { lower := 6107, upper := 6254, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good040_checked :
    goodSegmentCheck 154 51 109
      { lower := 6255, upper := 6400, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good041_checked :
    goodSegmentCheck 154 51 109
      { lower := 6401, upper := 6550, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good042_checked :
    goodSegmentCheck 154 51 109
      { lower := 6551, upper := 6704, witness := RowWitness.topPrime 6551 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good043_checked :
    goodSegmentCheck 154 51 109
      { lower := 6705, upper := 6856, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good044_checked :
    goodSegmentCheck 154 51 109
      { lower := 6857, upper := 7010, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good045_checked :
    goodSegmentCheck 154 51 109
      { lower := 7011, upper := 7154, witness := RowWitness.topPrime 7001 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good046_checked :
    goodSegmentCheck 154 51 109
      { lower := 7155, upper := 7304, witness := RowWitness.topPrime 7151 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good047_checked :
    goodSegmentCheck 154 51 109
      { lower := 7305, upper := 7450, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good048_checked :
    goodSegmentCheck 154 51 109
      { lower := 7451, upper := 7604, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good049_checked :
    goodSegmentCheck 154 51 109
      { lower := 7605, upper := 7756, witness := RowWitness.topPrime 7603 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good050_checked :
    goodSegmentCheck 154 51 109
      { lower := 7757, upper := 7910, witness := RowWitness.topPrime 7757 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good051_checked :
    goodSegmentCheck 154 51 109
      { lower := 7911, upper := 8060, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good052_checked :
    goodSegmentCheck 154 51 109
      { lower := 8061, upper := 8212, witness := RowWitness.topPrime 8059 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good053_checked :
    goodSegmentCheck 154 51 109
      { lower := 8213, upper := 8362, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good054_checked :
    goodSegmentCheck 154 51 109
      { lower := 8363, upper := 8516, witness := RowWitness.topPrime 8363 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good055_checked :
    goodSegmentCheck 154 51 109
      { lower := 8517, upper := 8666, witness := RowWitness.topPrime 8513 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good056_checked :
    goodSegmentCheck 154 51 109
      { lower := 8667, upper := 8816, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good057_checked :
    goodSegmentCheck 154 51 109
      { lower := 8817, upper := 8960, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good058_checked :
    goodSegmentCheck 154 51 109
      { lower := 8961, upper := 9104, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good059_checked :
    goodSegmentCheck 154 51 109
      { lower := 9105, upper := 9256, witness := RowWitness.topPrime 9103 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good060_checked :
    goodSegmentCheck 154 51 109
      { lower := 9257, upper := 9410, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good061_checked :
    goodSegmentCheck 154 51 109
      { lower := 9411, upper := 9556, witness := RowWitness.topPrime 9403 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good062_checked :
    goodSegmentCheck 154 51 109
      { lower := 9557, upper := 9704, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good063_checked :
    goodSegmentCheck 154 51 109
      { lower := 9705, upper := 9850, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good064_checked :
    goodSegmentCheck 154 51 109
      { lower := 9851, upper := 10004, witness := RowWitness.topPrime 9851 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good065_checked :
    goodSegmentCheck 154 51 109
      { lower := 10005, upper := 10126, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good066_checked :
    goodSegmentCheck 154 51 109
      { lower := 10127, upper := 10264, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good067_checked :
    goodSegmentCheck 154 51 109
      { lower := 10265, upper := 10412, witness := RowWitness.topPrime 10259 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good068_checked :
    goodSegmentCheck 154 51 109
      { lower := 10413, upper := 10552, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good069_checked :
    goodSegmentCheck 154 51 109
      { lower := 10553, upper := 10684, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good070_checked :
    goodSegmentCheck 154 51 109
      { lower := 10685, upper := 10820, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good071_checked :
    goodSegmentCheck 154 51 109
      { lower := 10821, upper := 10952, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good072_checked :
    goodSegmentCheck 154 51 109
      { lower := 10953, upper := 11102, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good073_checked :
    goodSegmentCheck 154 51 109
      { lower := 11103, upper := 11246, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good074_checked :
    goodSegmentCheck 154 51 109
      { lower := 11247, upper := 11396, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good075_checked :
    goodSegmentCheck 154 51 109
      { lower := 11397, upper := 11546, witness := RowWitness.topPrime 11393 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good076_checked :
    goodSegmentCheck 154 51 109
      { lower := 11547, upper := 11680, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good077_checked :
    goodSegmentCheck 154 51 109
      { lower := 11681, upper := 11834, witness := RowWitness.topPrime 11681 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good078_checked :
    goodSegmentCheck 154 51 109
      { lower := 11835, upper := 11986, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good079_checked :
    goodSegmentCheck 154 51 109
      { lower := 11987, upper := 12140, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good080_checked :
    goodSegmentCheck 154 51 109
      { lower := 12141, upper := 12272, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good081_checked :
    goodSegmentCheck 154 51 109
      { lower := 12273, upper := 12422, witness := RowWitness.topPrime 12269 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good082_checked :
    goodSegmentCheck 154 51 109
      { lower := 12423, upper := 12574, witness := RowWitness.topPrime 12421 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good083_checked :
    goodSegmentCheck 154 51 109
      { lower := 12575, upper := 12722, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good084_checked :
    goodSegmentCheck 154 51 109
      { lower := 12723, upper := 12874, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good085_checked :
    goodSegmentCheck 154 51 109
      { lower := 12875, upper := 13006, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good086_checked :
    goodSegmentCheck 154 51 109
      { lower := 13007, upper := 13160, witness := RowWitness.topPrime 13007 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good087_checked :
    goodSegmentCheck 154 51 109
      { lower := 13161, upper := 13312, witness := RowWitness.topPrime 13159 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good088_checked :
    goodSegmentCheck 154 51 109
      { lower := 13313, upper := 13466, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good089_checked :
    goodSegmentCheck 154 51 109
      { lower := 13467, upper := 13616, witness := RowWitness.topPrime 13463 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good090_checked :
    goodSegmentCheck 154 51 109
      { lower := 13617, upper := 13766, witness := RowWitness.topPrime 13613 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good091_checked :
    goodSegmentCheck 154 51 109
      { lower := 13767, upper := 13916, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good092_checked :
    goodSegmentCheck 154 51 109
      { lower := 13917, upper := 14066, witness := RowWitness.topPrime 13913 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good093_checked :
    goodSegmentCheck 154 51 109
      { lower := 14067, upper := 14210, witness := RowWitness.topPrime 14057 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good094_checked :
    goodSegmentCheck 154 51 109
      { lower := 14211, upper := 14360, witness := RowWitness.topPrime 14207 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good095_checked :
    goodSegmentCheck 154 51 109
      { lower := 14361, upper := 14500, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good096_checked :
    goodSegmentCheck 154 51 109
      { lower := 14501, upper := 14642, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good097_checked :
    goodSegmentCheck 154 51 109
      { lower := 14643, upper := 14792, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good098_checked :
    goodSegmentCheck 154 51 109
      { lower := 14793, upper := 14936, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good099_checked :
    goodSegmentCheck 154 51 109
      { lower := 14937, upper := 15082, witness := RowWitness.topPrime 14929 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good100_checked :
    goodSegmentCheck 154 51 109
      { lower := 15083, upper := 15236, witness := RowWitness.topPrime 15083 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good101_checked :
    goodSegmentCheck 154 51 109
      { lower := 15237, upper := 15386, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good102_checked :
    goodSegmentCheck 154 51 109
      { lower := 15387, upper := 15536, witness := RowWitness.topPrime 15383 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good103_checked :
    goodSegmentCheck 154 51 109
      { lower := 15537, upper := 15680, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good104_checked :
    goodSegmentCheck 154 51 109
      { lower := 15681, upper := 15832, witness := RowWitness.topPrime 15679 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good105_checked :
    goodSegmentCheck 154 51 109
      { lower := 15833, upper := 15976, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good106_checked :
    goodSegmentCheck 154 51 109
      { lower := 15977, upper := 16126, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good107_checked :
    goodSegmentCheck 154 51 109
      { lower := 16127, upper := 16280, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good108_checked :
    goodSegmentCheck 154 51 109
      { lower := 16281, upper := 16426, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good109_checked :
    goodSegmentCheck 154 51 109
      { lower := 16427, upper := 16580, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good110_checked :
    goodSegmentCheck 154 51 109
      { lower := 16581, upper := 16726, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good111_checked :
    goodSegmentCheck 154 51 109
      { lower := 16727, upper := 16856, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good112_checked :
    goodSegmentCheck 154 51 109
      { lower := 16857, upper := 16996, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good113_checked :
    goodSegmentCheck 154 51 109
      { lower := 16997, upper := 17146, witness := RowWitness.topPrime 16993 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good114_checked :
    goodSegmentCheck 154 51 109
      { lower := 17147, upper := 17290, witness := RowWitness.topPrime 17137 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good115_checked :
    goodSegmentCheck 154 51 109
      { lower := 17291, upper := 17444, witness := RowWitness.topPrime 17291 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good116_checked :
    goodSegmentCheck 154 51 109
      { lower := 17445, upper := 17596, witness := RowWitness.topPrime 17443 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good117_checked :
    goodSegmentCheck 154 51 109
      { lower := 17597, upper := 17750, witness := RowWitness.topPrime 17597 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good118_checked :
    goodSegmentCheck 154 51 109
      { lower := 17751, upper := 17902, witness := RowWitness.topPrime 17749 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good119_checked :
    goodSegmentCheck 154 51 109
      { lower := 17903, upper := 18056, witness := RowWitness.topPrime 17903 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good120_checked :
    goodSegmentCheck 154 51 109
      { lower := 18057, upper := 18202, witness := RowWitness.topPrime 18049 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good121_checked :
    goodSegmentCheck 154 51 109
      { lower := 18203, upper := 18352, witness := RowWitness.topPrime 18199 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good122_checked :
    goodSegmentCheck 154 51 109
      { lower := 18353, upper := 18506, witness := RowWitness.topPrime 18353 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good123_checked :
    goodSegmentCheck 154 51 109
      { lower := 18507, upper := 18656, witness := RowWitness.topPrime 18503 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good124_checked :
    goodSegmentCheck 154 51 109
      { lower := 18657, upper := 18790, witness := RowWitness.topPrime 18637 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good125_checked :
    goodSegmentCheck 154 51 109
      { lower := 18791, upper := 18940, witness := RowWitness.topPrime 18787 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good126_checked :
    goodSegmentCheck 154 51 109
      { lower := 18941, upper := 19072, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good127_checked :
    goodSegmentCheck 154 51 109
      { lower := 19073, upper := 19226, witness := RowWitness.topPrime 19073 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good128_checked :
    goodSegmentCheck 154 51 109
      { lower := 19227, upper := 19372, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good129_checked :
    goodSegmentCheck 154 51 109
      { lower := 19373, upper := 19526, witness := RowWitness.topPrime 19373 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good130_checked :
    goodSegmentCheck 154 51 109
      { lower := 19527, upper := 19660, witness := RowWitness.topPrime 19507 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good131_checked :
    goodSegmentCheck 154 51 109
      { lower := 19661, upper := 19814, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good132_checked :
    goodSegmentCheck 154 51 109
      { lower := 19815, upper := 19966, witness := RowWitness.topPrime 19813 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good133_checked :
    goodSegmentCheck 154 51 109
      { lower := 19967, upper := 20116, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good134_checked :
    goodSegmentCheck 154 51 109
      { lower := 20117, upper := 20270, witness := RowWitness.topPrime 20117 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good135_checked :
    goodSegmentCheck 154 51 109
      { lower := 20271, upper := 20422, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good136_checked :
    goodSegmentCheck 154 51 109
      { lower := 20423, upper := 20564, witness := RowWitness.topPrime 20411 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good137_checked :
    goodSegmentCheck 154 51 109
      { lower := 20565, upper := 20716, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good138_checked :
    goodSegmentCheck 154 51 109
      { lower := 20717, upper := 20870, witness := RowWitness.topPrime 20717 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good139_checked :
    goodSegmentCheck 154 51 109
      { lower := 20871, upper := 21010, witness := RowWitness.topPrime 20857 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good140_checked :
    goodSegmentCheck 154 51 109
      { lower := 21011, upper := 21164, witness := RowWitness.topPrime 21011 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good141_checked :
    goodSegmentCheck 154 51 109
      { lower := 21165, upper := 21316, witness := RowWitness.topPrime 21163 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good142_checked :
    goodSegmentCheck 154 51 109
      { lower := 21317, upper := 21470, witness := RowWitness.topPrime 21317 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good143_checked :
    goodSegmentCheck 154 51 109
      { lower := 21471, upper := 21620, witness := RowWitness.topPrime 21467 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good144_checked :
    goodSegmentCheck 154 51 109
      { lower := 21621, upper := 21770, witness := RowWitness.topPrime 21617 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good145_checked :
    goodSegmentCheck 154 51 109
      { lower := 21771, upper := 21920, witness := RowWitness.topPrime 21767 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good146_checked :
    goodSegmentCheck 154 51 109
      { lower := 21921, upper := 22064, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good147_checked :
    goodSegmentCheck 154 51 109
      { lower := 22065, upper := 22216, witness := RowWitness.topPrime 22063 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good148_checked :
    goodSegmentCheck 154 51 109
      { lower := 22217, upper := 22346, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good149_checked :
    goodSegmentCheck 154 51 109
      { lower := 22347, upper := 22496, witness := RowWitness.topPrime 22343 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good150_checked :
    goodSegmentCheck 154 51 109
      { lower := 22497, upper := 22636, witness := RowWitness.topPrime 22483 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good151_checked :
    goodSegmentCheck 154 51 109
      { lower := 22637, upper := 22790, witness := RowWitness.topPrime 22637 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good152_checked :
    goodSegmentCheck 154 51 109
      { lower := 22791, upper := 22940, witness := RowWitness.topPrime 22787 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good153_checked :
    goodSegmentCheck 154 51 109
      { lower := 22941, upper := 23090, witness := RowWitness.topPrime 22937 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good154_checked :
    goodSegmentCheck 154 51 109
      { lower := 23091, upper := 23240, witness := RowWitness.topPrime 23087 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good155_checked :
    goodSegmentCheck 154 51 109
      { lower := 23241, upper := 23380, witness := RowWitness.topPrime 23227 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good156_checked :
    goodSegmentCheck 154 51 109
      { lower := 23381, upper := 23524, witness := RowWitness.topPrime 23371 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good157_checked :
    goodSegmentCheck 154 51 109
      { lower := 23525, upper := 23561, witness := RowWitness.topPrime 23509 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good158_checked :
    goodSegmentCheck 154 51 109
      { lower := 23763, upper := 23914, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good159_checked :
    goodSegmentCheck 154 51 109
      { lower := 23915, upper := 23915, witness := RowWitness.topPrime 23911 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good160_checked :
    goodSegmentCheck 154 51 109
      { lower := 24057, upper := 24202, witness := RowWitness.topPrime 24049 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good161_checked :
    goodSegmentCheck 154 51 109
      { lower := 24203, upper := 24210, witness := RowWitness.topPrime 24203 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good162_checked :
    goodSegmentCheck 154 51 109
      { lower := 24299, upper := 24320, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good163_checked :
    goodSegmentCheck 154 51 109
      { lower := 24334, upper := 24482, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good164_checked :
    goodSegmentCheck 154 51 109
      { lower := 24483, upper := 24520, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good165_checked :
    goodSegmentCheck 154 51 109
      { lower := 24576, upper := 24718, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good166_checked :
    goodSegmentCheck 154 51 109
      { lower := 25000, upper := 25117, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good167_checked :
    goodSegmentCheck 154 51 109
      { lower := 25215, upper := 25342, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good168_checked :
    goodSegmentCheck 154 51 109
      { lower := 25343, upper := 25368, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good169_checked :
    goodSegmentCheck 154 51 109
      { lower := 26364, upper := 26397, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good170_checked :
    goodSegmentCheck 154 51 109
      { lower := 26508, upper := 26517, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good171_checked :
    goodSegmentCheck 154 51 109
      { lower := 26645, upper := 26661, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good172_checked :
    goodSegmentCheck 154 51 109
      { lower := 27556, upper := 27589, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good173_checked :
    goodSegmentCheck 154 51 109
      { lower := 27848, upper := 27888, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good174_checked :
    goodSegmentCheck 154 51 109
      { lower := 28125, upper := 28276, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good175_checked :
    goodSegmentCheck 154 51 109
      { lower := 28277, upper := 28278, witness := RowWitness.topPrime 28277 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good176_checked :
    goodSegmentCheck 154 51 109
      { lower := 28561, upper := 28584, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good177_checked :
    goodSegmentCheck 154 51 109
      { lower := 28672, upper := 28714, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good178_checked :
    goodSegmentCheck 154 51 109
      { lower := 28717, upper := 28825, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good179_checked :
    goodSegmentCheck 154 51 109
      { lower := 29791, upper := 29921, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good180_checked :
    goodSegmentCheck 154 51 109
      { lower := 30618, upper := 30746, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good181_checked :
    goodSegmentCheck 154 51 109
      { lower := 30747, upper := 30756, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good182_checked :
    goodSegmentCheck 154 51 109
      { lower := 30758, upper := 30771, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good183_checked :
    goodSegmentCheck 154 51 109
      { lower := 30899, upper := 30911, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good184_checked :
    goodSegmentCheck 154 51 109
      { lower := 30926, upper := 31052, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good185_checked :
    goodSegmentCheck 154 51 109
      { lower := 31250, upper := 31402, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good186_checked :
    goodSegmentCheck 154 51 109
      { lower := 31403, upper := 31403, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good187_checked :
    goodSegmentCheck 154 51 109
      { lower := 31423, upper := 31482, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good188_checked :
    goodSegmentCheck 154 51 109
      { lower := 31827, upper := 31837, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good189_checked :
    goodSegmentCheck 154 51 109
      { lower := 31974, upper := 31980, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good190_checked :
    goodSegmentCheck 154 51 109
      { lower := 32805, upper := 32921, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good191_checked :
    goodSegmentCheck 154 51 109
      { lower := 32955, upper := 32958, witness := RowWitness.topPrime 32941 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good192_checked :
    goodSegmentCheck 154 51 109
      { lower := 33614, upper := 33642, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good193_checked :
    goodSegmentCheck 154 51 109
      { lower := 33708, upper := 33767, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good194_checked :
    goodSegmentCheck 154 51 109
      { lower := 34322, upper := 34472, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good195_checked :
    goodSegmentCheck 154 51 109
      { lower := 34473, upper := 34544, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good196_checked :
    goodSegmentCheck 154 51 109
      { lower := 36517, upper := 36650, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good197_checked :
    goodSegmentCheck 154 51 109
      { lower := 36651, upper := 36654, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good198_checked :
    goodSegmentCheck 154 51 109
      { lower := 37303, upper := 37363, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good199_checked :
    goodSegmentCheck 154 51 109
      { lower := 37446, upper := 37456, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good200_checked :
    goodSegmentCheck 154 51 109
      { lower := 37500, upper := 37646, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good201_checked :
    goodSegmentCheck 154 51 109
      { lower := 37647, upper := 37691, witness := RowWitness.topPrime 37643 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good202_checked :
    goodSegmentCheck 154 51 109
      { lower := 38307, upper := 38444, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good203_checked :
    goodSegmentCheck 154 51 109
      { lower := 39326, upper := 39476, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good204_checked :
    goodSegmentCheck 154 51 109
      { lower := 39477, upper := 39479, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good205_checked :
    goodSegmentCheck 154 51 109
      { lower := 40401, upper := 40481, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good206_checked :
    goodSegmentCheck 154 51 109
      { lower := 40931, upper := 40957, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good207_checked :
    goodSegmentCheck 154 51 109
      { lower := 40960, upper := 41084, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good208_checked :
    goodSegmentCheck 154 51 109
      { lower := 43750, upper := 43840, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good209_checked :
    goodSegmentCheck 154 51 109
      { lower := 45369, upper := 45406, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good210_checked :
    goodSegmentCheck 154 51 109
      { lower := 45927, upper := 45949, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good211_checked :
    goodSegmentCheck 154 51 109
      { lower := 47526, upper := 47674, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good212_checked :
    goodSegmentCheck 154 51 109
      { lower := 47675, upper := 47677, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good213_checked :
    goodSegmentCheck 154 51 109
      { lower := 48013, upper := 48114, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good214_checked :
    goodSegmentCheck 154 51 109
      { lower := 48778, upper := 48821, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good215_checked :
    goodSegmentCheck 154 51 109
      { lower := 49152, upper := 49283, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good216_checked :
    goodSegmentCheck 154 51 109
      { lower := 51076, upper := 51158, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good217_checked :
    goodSegmentCheck 154 51 109
      { lower := 55451, upper := 55594, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good218_checked :
    goodSegmentCheck 154 51 109
      { lower := 55595, upper := 55600, witness := RowWitness.topPrime 55589 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good219_checked :
    goodSegmentCheck 154 51 109
      { lower := 56307, upper := 56322, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good220_checked :
    goodSegmentCheck 154 51 109
      { lower := 56454, upper := 56460, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good221_checked :
    goodSegmentCheck 154 51 109
      { lower := 57245, upper := 57275, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good222_checked :
    goodSegmentCheck 154 51 109
      { lower := 59049, upper := 59109, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good223_checked :
    goodSegmentCheck 154 51 109
      { lower := 62500, upper := 62563, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_good224_checked :
    goodSegmentCheck 154 51 109
      { lower := 63948, upper := 63998, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good225_checked :
    goodSegmentCheck 154 51 109
      { lower := 65610, upper := 65689, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good226_checked :
    goodSegmentCheck 154 51 109
      { lower := 68644, upper := 68792, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good227_checked :
    goodSegmentCheck 154 51 109
      { lower := 68793, upper := 68804, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good228_checked :
    goodSegmentCheck 154 51 109
      { lower := 68921, upper := 69043, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good229_checked :
    goodSegmentCheck 154 51 109
      { lower := 71289, upper := 71440, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good230_checked :
    goodSegmentCheck 154 51 109
      { lower := 71441, upper := 71442, witness := RowWitness.topPrime 71437 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good231_checked :
    goodSegmentCheck 154 51 109
      { lower := 85805, upper := 85836, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good232_checked :
    goodSegmentCheck 154 51 109
      { lower := 89383, upper := 89526, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good233_checked :
    goodSegmentCheck 154 51 109
      { lower := 93845, upper := 93903, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good234_checked :
    goodSegmentCheck 154 51 109
      { lower := 98415, upper := 98457, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good235_checked :
    goodSegmentCheck 154 51 109
      { lower := 103041, upper := 103119, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good236_checked :
    goodSegmentCheck 154 51 109
      { lower := 109503, upper := 109528, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good237_checked :
    goodSegmentCheck 154 51 109
      { lower := 137842, upper := 137934, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good238_checked :
    goodSegmentCheck 154 51 109
      { lower := 148955, upper := 149030, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row154_good239_checked :
    goodSegmentCheck 154 51 109
      { lower := 154568, upper := 154602, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 154) (r := 51) (s := 109) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_goods_checked :
    row154.goods.all (goodSegmentCheck row154.height.i row154.height.r row154.height.s) = true := by
  change row154_goods.all (goodSegmentCheck 154 51 109) = true
  simp only [row154_goods, List.all_cons, List.all_nil,
    row154_good000_checked,
    row154_good001_checked,
    row154_good002_checked,
    row154_good003_checked,
    row154_good004_checked,
    row154_good005_checked,
    row154_good006_checked,
    row154_good007_checked,
    row154_good008_checked,
    row154_good009_checked,
    row154_good010_checked,
    row154_good011_checked,
    row154_good012_checked,
    row154_good013_checked,
    row154_good014_checked,
    row154_good015_checked,
    row154_good016_checked,
    row154_good017_checked,
    row154_good018_checked,
    row154_good019_checked,
    row154_good020_checked,
    row154_good021_checked,
    row154_good022_checked,
    row154_good023_checked,
    row154_good024_checked,
    row154_good025_checked,
    row154_good026_checked,
    row154_good027_checked,
    row154_good028_checked,
    row154_good029_checked,
    row154_good030_checked,
    row154_good031_checked,
    row154_good032_checked,
    row154_good033_checked,
    row154_good034_checked,
    row154_good035_checked,
    row154_good036_checked,
    row154_good037_checked,
    row154_good038_checked,
    row154_good039_checked,
    row154_good040_checked,
    row154_good041_checked,
    row154_good042_checked,
    row154_good043_checked,
    row154_good044_checked,
    row154_good045_checked,
    row154_good046_checked,
    row154_good047_checked,
    row154_good048_checked,
    row154_good049_checked,
    row154_good050_checked,
    row154_good051_checked,
    row154_good052_checked,
    row154_good053_checked,
    row154_good054_checked,
    row154_good055_checked,
    row154_good056_checked,
    row154_good057_checked,
    row154_good058_checked,
    row154_good059_checked,
    row154_good060_checked,
    row154_good061_checked,
    row154_good062_checked,
    row154_good063_checked,
    row154_good064_checked,
    row154_good065_checked,
    row154_good066_checked,
    row154_good067_checked,
    row154_good068_checked,
    row154_good069_checked,
    row154_good070_checked,
    row154_good071_checked,
    row154_good072_checked,
    row154_good073_checked,
    row154_good074_checked,
    row154_good075_checked,
    row154_good076_checked,
    row154_good077_checked,
    row154_good078_checked,
    row154_good079_checked,
    row154_good080_checked,
    row154_good081_checked,
    row154_good082_checked,
    row154_good083_checked,
    row154_good084_checked,
    row154_good085_checked,
    row154_good086_checked,
    row154_good087_checked,
    row154_good088_checked,
    row154_good089_checked,
    row154_good090_checked,
    row154_good091_checked,
    row154_good092_checked,
    row154_good093_checked,
    row154_good094_checked,
    row154_good095_checked,
    row154_good096_checked,
    row154_good097_checked,
    row154_good098_checked,
    row154_good099_checked,
    row154_good100_checked,
    row154_good101_checked,
    row154_good102_checked,
    row154_good103_checked,
    row154_good104_checked,
    row154_good105_checked,
    row154_good106_checked,
    row154_good107_checked,
    row154_good108_checked,
    row154_good109_checked,
    row154_good110_checked,
    row154_good111_checked,
    row154_good112_checked,
    row154_good113_checked,
    row154_good114_checked,
    row154_good115_checked,
    row154_good116_checked,
    row154_good117_checked,
    row154_good118_checked,
    row154_good119_checked,
    row154_good120_checked,
    row154_good121_checked,
    row154_good122_checked,
    row154_good123_checked,
    row154_good124_checked,
    row154_good125_checked,
    row154_good126_checked,
    row154_good127_checked,
    row154_good128_checked,
    row154_good129_checked,
    row154_good130_checked,
    row154_good131_checked,
    row154_good132_checked,
    row154_good133_checked,
    row154_good134_checked,
    row154_good135_checked,
    row154_good136_checked,
    row154_good137_checked,
    row154_good138_checked,
    row154_good139_checked,
    row154_good140_checked,
    row154_good141_checked,
    row154_good142_checked,
    row154_good143_checked,
    row154_good144_checked,
    row154_good145_checked,
    row154_good146_checked,
    row154_good147_checked,
    row154_good148_checked,
    row154_good149_checked,
    row154_good150_checked,
    row154_good151_checked,
    row154_good152_checked,
    row154_good153_checked,
    row154_good154_checked,
    row154_good155_checked,
    row154_good156_checked,
    row154_good157_checked,
    row154_good158_checked,
    row154_good159_checked,
    row154_good160_checked,
    row154_good161_checked,
    row154_good162_checked,
    row154_good163_checked,
    row154_good164_checked,
    row154_good165_checked,
    row154_good166_checked,
    row154_good167_checked,
    row154_good168_checked,
    row154_good169_checked,
    row154_good170_checked,
    row154_good171_checked,
    row154_good172_checked,
    row154_good173_checked,
    row154_good174_checked,
    row154_good175_checked,
    row154_good176_checked,
    row154_good177_checked,
    row154_good178_checked,
    row154_good179_checked,
    row154_good180_checked,
    row154_good181_checked,
    row154_good182_checked,
    row154_good183_checked,
    row154_good184_checked,
    row154_good185_checked,
    row154_good186_checked,
    row154_good187_checked,
    row154_good188_checked,
    row154_good189_checked,
    row154_good190_checked,
    row154_good191_checked,
    row154_good192_checked,
    row154_good193_checked,
    row154_good194_checked,
    row154_good195_checked,
    row154_good196_checked,
    row154_good197_checked,
    row154_good198_checked,
    row154_good199_checked,
    row154_good200_checked,
    row154_good201_checked,
    row154_good202_checked,
    row154_good203_checked,
    row154_good204_checked,
    row154_good205_checked,
    row154_good206_checked,
    row154_good207_checked,
    row154_good208_checked,
    row154_good209_checked,
    row154_good210_checked,
    row154_good211_checked,
    row154_good212_checked,
    row154_good213_checked,
    row154_good214_checked,
    row154_good215_checked,
    row154_good216_checked,
    row154_good217_checked,
    row154_good218_checked,
    row154_good219_checked,
    row154_good220_checked,
    row154_good221_checked,
    row154_good222_checked,
    row154_good223_checked,
    row154_good224_checked,
    row154_good225_checked,
    row154_good226_checked,
    row154_good227_checked,
    row154_good228_checked,
    row154_good229_checked,
    row154_good230_checked,
    row154_good231_checked,
    row154_good232_checked,
    row154_good233_checked,
    row154_good234_checked,
    row154_good235_checked,
    row154_good236_checked,
    row154_good237_checked,
    row154_good238_checked,
    row154_good239_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_registered :
    decide (row154.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row154_small_checked :
    coverCheck (2 * row154.height.i + 2) (row154.height.i * (row154.height.i - 1) - 1)
      (row154.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row154_layerCover_checked :
    coverCheck (row154.height.i * (row154.height.i - 1)) (row154.height.n0 - 1)
      (row154.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row154_bounds : List NatInterval :=
  [(310, 460), (461, 614), (615, 766), (767, 914), (915, 1064), (1065, 1216), (1217, 1370), (1371, 1520), (1521, 1664), (1665, 1816), (1817, 1964), (1965, 2104), (2105, 2252), (2253, 2404), (2405, 2552), (2553, 2704), (2705, 2852), (2853, 3004), (3005, 3154), (3155, 3290), (3291, 3424), (3425, 3566), (3567, 3712), (3713, 3862), (3863, 4016), (4017, 4166), (4167, 4312), (4313, 4450), (4451, 4604), (4605, 4756), (4757, 4904), (4905, 5056), (5057, 5204), (5205, 5350), (5351, 5504), (5505, 5656), (5657, 5810), (5811, 5960), (5961, 6106), (6107, 6254), (6255, 6400), (6401, 6550), (6551, 6704), (6705, 6856), (6857, 7010), (7011, 7154), (7155, 7304), (7305, 7450), (7451, 7604), (7605, 7756), (7757, 7910), (7911, 8060), (8061, 8212), (8213, 8362), (8363, 8516), (8517, 8666), (8667, 8816), (8817, 8960), (8961, 9104), (9105, 9256), (9257, 9410), (9411, 9556), (9557, 9704), (9705, 9850), (9851, 10004), (10005, 10126), (10127, 10264), (10265, 10412), (10413, 10552), (10553, 10684), (10685, 10820), (10821, 10952), (10953, 11102), (11103, 11246), (11247, 11396), (11397, 11546), (11547, 11680), (11681, 11834), (11835, 11986), (11987, 12140), (12141, 12272), (12273, 12422), (12423, 12574), (12575, 12722), (12723, 12874), (12875, 13006), (13007, 13160), (13161, 13312), (13313, 13466), (13467, 13616), (13617, 13766), (13767, 13916), (13917, 14066), (14067, 14210), (14211, 14360), (14361, 14500), (14501, 14642), (14643, 14792), (14793, 14936), (14937, 15082), (15083, 15236), (15237, 15386), (15387, 15536), (15537, 15680), (15681, 15832), (15833, 15976), (15977, 16126), (16127, 16280), (16281, 16426), (16427, 16580), (16581, 16726), (16727, 16856), (16857, 16996), (16997, 17146), (17147, 17290), (17291, 17444), (17445, 17596), (17597, 17750), (17751, 17902), (17903, 18056), (18057, 18202), (18203, 18352), (18353, 18506), (18507, 18656), (18657, 18790), (18791, 18940), (18941, 19072), (19073, 19226), (19227, 19372), (19373, 19526), (19527, 19660), (19661, 19814), (19815, 19966), (19967, 20116), (20117, 20270), (20271, 20422), (20423, 20564), (20565, 20716), (20717, 20870), (20871, 21010), (21011, 21164), (21165, 21316), (21317, 21470), (21471, 21620), (21621, 21770), (21771, 21920), (21921, 22064), (22065, 22216), (22217, 22346), (22347, 22496), (22497, 22636), (22637, 22790), (22791, 22940), (22941, 23090), (23091, 23240), (23241, 23380), (23381, 23524), (23525, 23561), (23763, 23914), (23915, 23915), (24057, 24202), (24203, 24210), (24299, 24320), (24334, 24482), (24483, 24520), (24576, 24718), (25000, 25117), (25215, 25342), (25343, 25368), (26364, 26397), (26508, 26517), (26645, 26661), (27556, 27589), (27848, 27888), (28125, 28276), (28277, 28278), (28561, 28584), (28672, 28714), (28717, 28825), (29791, 29921), (30618, 30746), (30747, 30756), (30758, 30771), (30899, 30911), (30926, 31052), (31250, 31402), (31403, 31403), (31423, 31482), (31827, 31837), (31974, 31980), (32805, 32921), (32955, 32958), (33614, 33642), (33708, 33767), (34322, 34472), (34473, 34544), (36517, 36650), (36651, 36654), (37303, 37363), (37446, 37456), (37500, 37646), (37647, 37691), (38307, 38444), (39326, 39476), (39477, 39479), (40401, 40481), (40931, 40957), (40960, 41084), (43750, 43840), (45369, 45406), (45927, 45949), (47526, 47674), (47675, 47677), (48013, 48114), (48778, 48821), (49152, 49283), (51076, 51158), (55451, 55594), (55595, 55600), (56307, 56322), (56454, 56460), (57245, 57275), (59049, 59109), (62500, 62563), (63948, 63998), (65610, 65689), (68644, 68792), (68793, 68804), (68921, 69043), (71289, 71440), (71441, 71442), (85805, 85836), (89383, 89526), (93845, 93903), (98415, 98457), (103041, 103119), (109503, 109528), (137842, 137934), (148955, 149030), (154568, 154602)]

theorem row154_bounds_eq : row154.goods.map goodSegmentBounds = row154_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row154_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24729), (2, 28672, 28825), (2, 24576, 24729), (2, 32768, 32921), (2, 40960, 41113), (2, 32768, 32921), (2, 32768, 32921), (3, 24057, 24210), (3, 26244, 26397), (3, 28431, 28584), (3, 30618, 30771), (3, 32805, 32958), (3, 26244, 26397), (3, 32805, 32958), (3, 39366, 39519), (3, 45927, 46080), (3, 39366, 39519), (5, 25000, 25153), (5, 28125, 28278), (5, 31250, 31403), (5, 34375, 34528), (5, 37500, 37653), (5, 40625, 40778), (5, 43750, 43903), (5, 46875, 47028), (5, 31250, 31403), (5, 46875, 47028), (7, 33614, 33767), (13, 24167, 24320), (13, 26364, 26517), (13, 28561, 28714), (13, 30758, 30911), (13, 32955, 33108), (13, 28561, 28714), (17, 24565, 24718), (17, 29478, 29631), (17, 34391, 34544), (17, 39304, 39457), (17, 44217, 44370), (19, 27436, 27589), (19, 34295, 34448), (19, 41154, 41307), (23, 24334, 24487), (23, 36501, 36654), (29, 24389, 24542), (31, 29791, 29944), (41, 23562, 23687), (41, 25215, 25368), (43, 24037, 24190), (43, 25886, 26039), (43, 27735, 27888), (47, 24299, 24452), (47, 26508, 26661), (47, 28717, 28870), (47, 30926, 31079), (47, 33135, 33288), (53, 25281, 25434), (53, 28090, 28243), (53, 30899, 31052), (53, 33708, 33861), (53, 36517, 36670), (53, 39326, 39479), (53, 42135, 42288), (59, 24367, 24520), (59, 27848, 28001), (59, 31329, 31482), (59, 34810, 34963), (59, 38291, 38444), (59, 41772, 41925), (59, 45253, 45406), (61, 26047, 26200), (61, 29768, 29921), (61, 33489, 33642), (61, 37210, 37363), (61, 40931, 41084), (61, 44652, 44805), (67, 26934, 27087), (67, 31423, 31576), (67, 35912, 36065), (67, 40401, 40554), (67, 44890, 45043), (71, 25205, 25358), (71, 30246, 30399), (71, 35287, 35440), (71, 40328, 40481), (71, 45369, 45522), (73, 26645, 26798), (73, 31974, 32127), (73, 37303, 37456), (73, 42632, 42785), (79, 24964, 25117), (79, 31205, 31358), (79, 37446, 37599), (79, 43687, 43840), (83, 27556, 27709), (83, 34445, 34598), (83, 41334, 41487), (89, 23763, 23916), (89, 31684, 31837), (89, 39605, 39758), (97, 28227, 28380), (97, 37636, 37789), (97, 47045, 47123), (101, 30603, 30756), (101, 40804, 40957), (103, 31827, 31980), (103, 42436, 42589), (107, 34347, 34500), (107, 45796, 45949), (109, 23762, 23915), (109, 35643, 35796), (113, 25538, 25691), (113, 38307, 38460), (127, 32258, 32411), (131, 34322, 34475), (137, 37538, 37691), (139, 38642, 38795), (149, 44402, 44555), (151, 45602, 45755)]

def row154_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24729), (2, 28672, 28825), (2, 24576, 24729), (2, 32768, 32921), (2, 40960, 41113), (2, 32768, 32921), (2, 32768, 32921), (3, 24057, 24210), (3, 26244, 26397), (3, 28431, 28584), (3, 30618, 30771), (3, 32805, 32958), (3, 26244, 26397), (3, 32805, 32958), (3, 39366, 39519), (3, 45927, 46080)]

def row154_layer000_block001 : List ColouredInterval :=
  [(3, 39366, 39519), (5, 25000, 25153), (5, 28125, 28278), (5, 31250, 31403), (5, 34375, 34528), (5, 37500, 37653), (5, 40625, 40778), (5, 43750, 43903), (5, 46875, 47028), (5, 31250, 31403), (5, 46875, 47028), (7, 33614, 33767), (13, 24167, 24320), (13, 26364, 26517), (13, 28561, 28714), (13, 30758, 30911)]

def row154_layer000_block002 : List ColouredInterval :=
  [(13, 32955, 33108), (13, 28561, 28714), (17, 24565, 24718), (17, 29478, 29631), (17, 34391, 34544), (17, 39304, 39457), (17, 44217, 44370), (19, 27436, 27589), (19, 34295, 34448), (19, 41154, 41307), (23, 24334, 24487), (23, 36501, 36654), (29, 24389, 24542), (31, 29791, 29944), (41, 23562, 23687), (41, 25215, 25368)]

def row154_layer000_block003 : List ColouredInterval :=
  [(43, 24037, 24190), (43, 25886, 26039), (43, 27735, 27888), (47, 24299, 24452), (47, 26508, 26661), (47, 28717, 28870), (47, 30926, 31079), (47, 33135, 33288), (53, 25281, 25434), (53, 28090, 28243), (53, 30899, 31052), (53, 33708, 33861), (53, 36517, 36670), (53, 39326, 39479), (53, 42135, 42288), (59, 24367, 24520)]

def row154_layer000_block004 : List ColouredInterval :=
  [(59, 27848, 28001), (59, 31329, 31482), (59, 34810, 34963), (59, 38291, 38444), (59, 41772, 41925), (59, 45253, 45406), (61, 26047, 26200), (61, 29768, 29921), (61, 33489, 33642), (61, 37210, 37363), (61, 40931, 41084), (61, 44652, 44805), (67, 26934, 27087), (67, 31423, 31576), (67, 35912, 36065), (67, 40401, 40554)]

def row154_layer000_block005 : List ColouredInterval :=
  [(67, 44890, 45043), (71, 25205, 25358), (71, 30246, 30399), (71, 35287, 35440), (71, 40328, 40481), (71, 45369, 45522), (73, 26645, 26798), (73, 31974, 32127), (73, 37303, 37456), (73, 42632, 42785), (79, 24964, 25117), (79, 31205, 31358), (79, 37446, 37599), (79, 43687, 43840), (83, 27556, 27709), (83, 34445, 34598)]

def row154_layer000_block006 : List ColouredInterval :=
  [(83, 41334, 41487), (89, 23763, 23916), (89, 31684, 31837), (89, 39605, 39758), (97, 28227, 28380), (97, 37636, 37789), (97, 47045, 47123), (101, 30603, 30756), (101, 40804, 40957), (103, 31827, 31980), (103, 42436, 42589), (107, 34347, 34500), (107, 45796, 45949), (109, 23762, 23915), (109, 35643, 35796), (113, 25538, 25691)]

def row154_layer000_block007 : List ColouredInterval :=
  [(113, 38307, 38460), (127, 32258, 32411), (131, 34322, 34475), (137, 37538, 37691), (139, 38642, 38795), (149, 44402, 44555), (151, 45602, 45755)]

def row154_layer000_chunks : List (List ColouredInterval) :=
  [row154_layer000_block000, row154_layer000_block001, row154_layer000_block002, row154_layer000_block003, row154_layer000_block004, row154_layer000_block005, row154_layer000_block006, row154_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_arithmetic : LayerArithmeticValid row154.height { lower := 23562, upper := 47124, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_enumeration :
    activePowerIntervalList 154 15 23562 47124 = row154_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_pairs000 :
    row154_layer000_block000.all (fun I => row154_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row154_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_pairs001 :
    row154_layer000_block001.all (fun I => row154_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row154_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_pairs002 :
    row154_layer000_block002.all (fun I => row154_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row154_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_pairs003 :
    row154_layer000_block003.all (fun I => row154_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row154_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_pairs004 :
    row154_layer000_block004.all (fun I => row154_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row154_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_pairs005 :
    row154_layer000_block005.all (fun I => row154_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row154_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_pairs006 :
    row154_layer000_block006.all (fun I => row154_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row154_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_pairs007 :
    row154_layer000_block007.all (fun I => row154_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row154_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_chunks_eq : row154_layer000_chunks.flatten = row154_layer000_intervals := by
  rfl

theorem row154_layer000_pairs : pairCoverCheck row154_layer000_intervals row154_bounds = true := by
  apply pairCoverCheck_of_chunks row154_layer000_chunks_eq
  intro block hblock
  simp only [row154_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row154_layer000_pairs000
  · exact row154_layer000_pairs001
  · exact row154_layer000_pairs002
  · exact row154_layer000_pairs003
  · exact row154_layer000_pairs004
  · exact row154_layer000_pairs005
  · exact row154_layer000_pairs006
  · exact row154_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer000_checked :
    coverLayerCheck row154.height row154.goods { lower := 23562, upper := 47124, M := 15 } = true := by
  exact coverLayerCheck_of_parts row154_layer000_arithmetic row154_layer000_enumeration row154_bounds_eq row154_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer000_checked
