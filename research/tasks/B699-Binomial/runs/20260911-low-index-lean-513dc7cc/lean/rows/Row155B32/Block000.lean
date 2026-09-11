import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row155_height : HeightCertificateDatum := { i := 155, r := 51, s := 110, n0Power10 := 8 }

def row155_goods : List GoodSegment := [
  { lower := 312, upper := 465, witness := RowWitness.topPrime 311 },
  { lower := 466, upper := 617, witness := RowWitness.topPrime 463 },
  { lower := 618, upper := 771, witness := RowWitness.topPrime 617 },
  { lower := 772, upper := 923, witness := RowWitness.topPrime 769 },
  { lower := 924, upper := 1073, witness := RowWitness.topPrime 919 },
  { lower := 1074, upper := 1223, witness := RowWitness.topPrime 1069 },
  { lower := 1224, upper := 1377, witness := RowWitness.topPrime 1223 },
  { lower := 1378, upper := 1527, witness := RowWitness.topPrime 1373 },
  { lower := 1528, upper := 1677, witness := RowWitness.topPrime 1523 },
  { lower := 1678, upper := 1823, witness := RowWitness.topPrime 1669 },
  { lower := 1824, upper := 1977, witness := RowWitness.topPrime 1823 },
  { lower := 1978, upper := 2127, witness := RowWitness.topPrime 1973 },
  { lower := 2128, upper := 2267, witness := RowWitness.topPrime 2113 },
  { lower := 2268, upper := 2421, witness := RowWitness.topPrime 2267 },
  { lower := 2422, upper := 2571, witness := RowWitness.topPrime 2417 },
  { lower := 2572, upper := 2711, witness := RowWitness.topPrime 2557 },
  { lower := 2712, upper := 2865, witness := RowWitness.topPrime 2711 },
  { lower := 2866, upper := 3015, witness := RowWitness.topPrime 2861 },
  { lower := 3016, upper := 3165, witness := RowWitness.topPrime 3011 },
  { lower := 3166, upper := 3317, witness := RowWitness.topPrime 3163 },
  { lower := 3318, upper := 3467, witness := RowWitness.topPrime 3313 },
  { lower := 3468, upper := 3621, witness := RowWitness.topPrime 3467 },
  { lower := 3622, upper := 3771, witness := RowWitness.topPrime 3617 },
  { lower := 3772, upper := 3923, witness := RowWitness.topPrime 3769 },
  { lower := 3924, upper := 4077, witness := RowWitness.topPrime 3923 },
  { lower := 4078, upper := 4227, witness := RowWitness.topPrime 4073 },
  { lower := 4228, upper := 4373, witness := RowWitness.topPrime 4219 },
  { lower := 4374, upper := 4527, witness := RowWitness.topPrime 4373 },
  { lower := 4528, upper := 4677, witness := RowWitness.topPrime 4523 },
  { lower := 4678, upper := 4827, witness := RowWitness.topPrime 4673 },
  { lower := 4828, upper := 4971, witness := RowWitness.topPrime 4817 },
  { lower := 4972, upper := 5123, witness := RowWitness.topPrime 4969 },
  { lower := 5124, upper := 5273, witness := RowWitness.topPrime 5119 },
  { lower := 5274, upper := 5427, witness := RowWitness.topPrime 5273 },
  { lower := 5428, upper := 5573, witness := RowWitness.topPrime 5419 },
  { lower := 5574, upper := 5727, witness := RowWitness.topPrime 5573 },
  { lower := 5728, upper := 5871, witness := RowWitness.topPrime 5717 },
  { lower := 5872, upper := 6023, witness := RowWitness.topPrime 5869 },
  { lower := 6024, upper := 6165, witness := RowWitness.topPrime 6011 },
  { lower := 6166, upper := 6317, witness := RowWitness.topPrime 6163 },
  { lower := 6318, upper := 6471, witness := RowWitness.topPrime 6317 },
  { lower := 6472, upper := 6623, witness := RowWitness.topPrime 6469 },
  { lower := 6624, upper := 6773, witness := RowWitness.topPrime 6619 },
  { lower := 6774, upper := 6917, witness := RowWitness.topPrime 6763 },
  { lower := 6918, upper := 7071, witness := RowWitness.topPrime 6917 },
  { lower := 7072, upper := 7223, witness := RowWitness.topPrime 7069 },
  { lower := 7224, upper := 7373, witness := RowWitness.topPrime 7219 },
  { lower := 7374, upper := 7523, witness := RowWitness.topPrime 7369 },
  { lower := 7524, upper := 7677, witness := RowWitness.topPrime 7523 },
  { lower := 7678, upper := 7827, witness := RowWitness.topPrime 7673 },
  { lower := 7828, upper := 7977, witness := RowWitness.topPrime 7823 },
  { lower := 7978, upper := 8117, witness := RowWitness.topPrime 7963 },
  { lower := 8118, upper := 8271, witness := RowWitness.topPrime 8117 },
  { lower := 8272, upper := 8423, witness := RowWitness.topPrime 8269 },
  { lower := 8424, upper := 8577, witness := RowWitness.topPrime 8423 },
  { lower := 8578, upper := 8727, witness := RowWitness.topPrime 8573 },
  { lower := 8728, upper := 8873, witness := RowWitness.topPrime 8719 },
  { lower := 8874, upper := 9021, witness := RowWitness.topPrime 8867 },
  { lower := 9022, upper := 9167, witness := RowWitness.topPrime 9013 },
  { lower := 9168, upper := 9315, witness := RowWitness.topPrime 9161 },
  { lower := 9316, upper := 9465, witness := RowWitness.topPrime 9311 },
  { lower := 9466, upper := 9617, witness := RowWitness.topPrime 9463 },
  { lower := 9618, upper := 9767, witness := RowWitness.topPrime 9613 },
  { lower := 9768, upper := 9921, witness := RowWitness.topPrime 9767 },
  { lower := 9922, upper := 10061, witness := RowWitness.topPrime 9907 },
  { lower := 10062, upper := 10215, witness := RowWitness.topPrime 10061 },
  { lower := 10216, upper := 10365, witness := RowWitness.topPrime 10211 },
  { lower := 10366, upper := 10511, witness := RowWitness.topPrime 10357 },
  { lower := 10512, upper := 10655, witness := RowWitness.topPrime 10501 },
  { lower := 10656, upper := 10805, witness := RowWitness.topPrime 10651 },
  { lower := 10806, upper := 10953, witness := RowWitness.topPrime 10799 },
  { lower := 10954, upper := 11103, witness := RowWitness.topPrime 10949 },
  { lower := 11104, upper := 11247, witness := RowWitness.topPrime 11093 },
  { lower := 11248, upper := 11397, witness := RowWitness.topPrime 11243 },
  { lower := 11398, upper := 11547, witness := RowWitness.topPrime 11393 },
  { lower := 11548, upper := 11681, witness := RowWitness.topPrime 11527 },
  { lower := 11682, upper := 11835, witness := RowWitness.topPrime 11681 },
  { lower := 11836, upper := 11987, witness := RowWitness.topPrime 11833 },
  { lower := 11988, upper := 12141, witness := RowWitness.topPrime 11987 },
  { lower := 12142, upper := 12273, witness := RowWitness.topPrime 12119 },
  { lower := 12274, upper := 12423, witness := RowWitness.topPrime 12269 },
  { lower := 12424, upper := 12575, witness := RowWitness.topPrime 12421 },
  { lower := 12576, upper := 12723, witness := RowWitness.topPrime 12569 },
  { lower := 12724, upper := 12875, witness := RowWitness.topPrime 12721 },
  { lower := 12876, upper := 13007, witness := RowWitness.topPrime 12853 },
  { lower := 13008, upper := 13161, witness := RowWitness.topPrime 13007 },
  { lower := 13162, upper := 13313, witness := RowWitness.topPrime 13159 },
  { lower := 13314, upper := 13467, witness := RowWitness.topPrime 13313 },
  { lower := 13468, upper := 13617, witness := RowWitness.topPrime 13463 },
  { lower := 13618, upper := 13767, witness := RowWitness.topPrime 13613 },
  { lower := 13768, upper := 13917, witness := RowWitness.topPrime 13763 },
  { lower := 13918, upper := 14067, witness := RowWitness.topPrime 13913 },
  { lower := 14068, upper := 14211, witness := RowWitness.topPrime 14057 },
  { lower := 14212, upper := 14361, witness := RowWitness.topPrime 14207 },
  { lower := 14362, upper := 14501, witness := RowWitness.topPrime 14347 },
  { lower := 14502, upper := 14643, witness := RowWitness.topPrime 14489 },
  { lower := 14644, upper := 14793, witness := RowWitness.topPrime 14639 },
  { lower := 14794, upper := 14937, witness := RowWitness.topPrime 14783 },
  { lower := 14938, upper := 15083, witness := RowWitness.topPrime 14929 },
  { lower := 15084, upper := 15237, witness := RowWitness.topPrime 15083 },
  { lower := 15238, upper := 15387, witness := RowWitness.topPrime 15233 },
  { lower := 15388, upper := 15537, witness := RowWitness.topPrime 15383 },
  { lower := 15538, upper := 15681, witness := RowWitness.topPrime 15527 },
  { lower := 15682, upper := 15833, witness := RowWitness.topPrime 15679 },
  { lower := 15834, upper := 15977, witness := RowWitness.topPrime 15823 },
  { lower := 15978, upper := 16127, witness := RowWitness.topPrime 15973 },
  { lower := 16128, upper := 16281, witness := RowWitness.topPrime 16127 },
  { lower := 16282, upper := 16427, witness := RowWitness.topPrime 16273 },
  { lower := 16428, upper := 16581, witness := RowWitness.topPrime 16427 },
  { lower := 16582, upper := 16727, witness := RowWitness.topPrime 16573 },
  { lower := 16728, upper := 16857, witness := RowWitness.topPrime 16703 },
  { lower := 16858, upper := 16997, witness := RowWitness.topPrime 16843 },
  { lower := 16998, upper := 17147, witness := RowWitness.topPrime 16993 },
  { lower := 17148, upper := 17291, witness := RowWitness.topPrime 17137 },
  { lower := 17292, upper := 17445, witness := RowWitness.topPrime 17291 },
  { lower := 17446, upper := 17597, witness := RowWitness.topPrime 17443 },
  { lower := 17598, upper := 17751, witness := RowWitness.topPrime 17597 },
  { lower := 17752, upper := 17903, witness := RowWitness.topPrime 17749 },
  { lower := 17904, upper := 18057, witness := RowWitness.topPrime 17903 },
  { lower := 18058, upper := 18203, witness := RowWitness.topPrime 18049 },
  { lower := 18204, upper := 18353, witness := RowWitness.topPrime 18199 },
  { lower := 18354, upper := 18507, witness := RowWitness.topPrime 18353 },
  { lower := 18508, upper := 18657, witness := RowWitness.topPrime 18503 },
  { lower := 18658, upper := 18791, witness := RowWitness.topPrime 18637 },
  { lower := 18792, upper := 18941, witness := RowWitness.topPrime 18787 },
  { lower := 18942, upper := 19073, witness := RowWitness.topPrime 18919 },
  { lower := 19074, upper := 19227, witness := RowWitness.topPrime 19073 },
  { lower := 19228, upper := 19373, witness := RowWitness.topPrime 19219 },
  { lower := 19374, upper := 19527, witness := RowWitness.topPrime 19373 },
  { lower := 19528, upper := 19661, witness := RowWitness.topPrime 19507 },
  { lower := 19662, upper := 19815, witness := RowWitness.topPrime 19661 },
  { lower := 19816, upper := 19967, witness := RowWitness.topPrime 19813 },
  { lower := 19968, upper := 20117, witness := RowWitness.topPrime 19963 },
  { lower := 20118, upper := 20271, witness := RowWitness.topPrime 20117 },
  { lower := 20272, upper := 20423, witness := RowWitness.topPrime 20269 },
  { lower := 20424, upper := 20565, witness := RowWitness.topPrime 20411 },
  { lower := 20566, upper := 20717, witness := RowWitness.topPrime 20563 },
  { lower := 20718, upper := 20871, witness := RowWitness.topPrime 20717 },
  { lower := 20872, upper := 21011, witness := RowWitness.topPrime 20857 },
  { lower := 21012, upper := 21165, witness := RowWitness.topPrime 21011 },
  { lower := 21166, upper := 21317, witness := RowWitness.topPrime 21163 },
  { lower := 21318, upper := 21471, witness := RowWitness.topPrime 21317 },
  { lower := 21472, upper := 21621, witness := RowWitness.topPrime 21467 },
  { lower := 21622, upper := 21771, witness := RowWitness.topPrime 21617 },
  { lower := 21772, upper := 21921, witness := RowWitness.topPrime 21767 },
  { lower := 21922, upper := 22065, witness := RowWitness.topPrime 21911 },
  { lower := 22066, upper := 22217, witness := RowWitness.topPrime 22063 },
  { lower := 22218, upper := 22347, witness := RowWitness.topPrime 22193 },
  { lower := 22348, upper := 22497, witness := RowWitness.topPrime 22343 },
  { lower := 22498, upper := 22637, witness := RowWitness.topPrime 22483 },
  { lower := 22638, upper := 22791, witness := RowWitness.topPrime 22637 },
  { lower := 22792, upper := 22941, witness := RowWitness.topPrime 22787 },
  { lower := 22942, upper := 23091, witness := RowWitness.topPrime 22937 },
  { lower := 23092, upper := 23241, witness := RowWitness.topPrime 23087 },
  { lower := 23242, upper := 23381, witness := RowWitness.topPrime 23227 },
  { lower := 23382, upper := 23525, witness := RowWitness.topPrime 23371 },
  { lower := 23526, upper := 23663, witness := RowWitness.topPrime 23509 },
  { lower := 23664, upper := 23817, witness := RowWitness.topPrime 23663 },
  { lower := 23818, upper := 23916, witness := RowWitness.topPrime 23813 },
  { lower := 24037, upper := 24183, witness := RowWitness.topPrime 24029 },
  { lower := 24184, upper := 24211, witness := RowWitness.topPrime 24181 },
  { lower := 24299, upper := 24321, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24483, witness := RowWitness.topPrime 24329 },
  { lower := 24484, upper := 24521, witness := RowWitness.topPrime 24481 },
  { lower := 24576, upper := 24719, witness := RowWitness.topPrime 24571 },
  { lower := 25215, upper := 25343, witness := RowWitness.topPrime 25189 },
  { lower := 25344, upper := 25369, witness := RowWitness.topPrime 25343 },
  { lower := 26364, upper := 26398, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26561, witness := RowWitness.topPrime 26407 },
  { lower := 26562, upper := 26565, witness := RowWitness.topPrime 26561 },
  { lower := 26624, upper := 26751, witness := RowWitness.topPrime 26597 },
  { lower := 26752, upper := 26778, witness := RowWitness.topPrime 26737 },
  { lower := 27556, upper := 27590, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27889, witness := RowWitness.topPrime 27847 },
  { lower := 28227, upper := 28244, witness := RowWitness.topPrime 28219 },
  { lower := 28561, upper := 28585, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28715, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28865, witness := RowWitness.topPrime 28711 },
  { lower := 28866, upper := 28871, witness := RowWitness.topPrime 28859 },
  { lower := 30618, upper := 30747, witness := RowWitness.topPrime 30593 },
  { lower := 30748, upper := 30874, witness := RowWitness.topPrime 30727 },
  { lower := 30899, upper := 30912, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31053, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31347, witness := RowWitness.topPrime 31193 },
  { lower := 31348, upper := 31404, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31483, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31838, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31981, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32922, witness := RowWitness.topPrime 32803 },
  { lower := 32955, upper := 32959, witness := RowWitness.topPrime 32941 },
  { lower := 33614, upper := 33643, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33768, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34473, witness := RowWitness.topPrime 34319 },
  { lower := 34474, upper := 34545, witness := RowWitness.topPrime 34471 },
  { lower := 36015, upper := 36066, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36651, witness := RowWitness.topPrime 36497 },
  { lower := 36652, upper := 36655, witness := RowWitness.topPrime 36643 },
  { lower := 37303, upper := 37364, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37457, witness := RowWitness.topPrime 37441 },
  { lower := 37538, upper := 37600, witness := RowWitness.topPrime 37537 },
  { lower := 37636, upper := 37692, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38445, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39477, witness := RowWitness.topPrime 39323 },
  { lower := 39478, upper := 39480, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40482, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40958, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41085, witness := RowWitness.topPrime 40949 },
  { lower := 45369, upper := 45407, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45950, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47675, witness := RowWitness.topPrime 47521 },
  { lower := 47676, upper := 47678, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48115, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48822, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49284, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50564, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51159, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55595, witness := RowWitness.topPrime 55441 },
  { lower := 55596, upper := 55601, witness := RowWitness.topPrime 55589 },
  { lower := 56307, upper := 56323, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56461, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57276, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57399, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58718, witness := RowWitness.topPrime 58613 },
  { lower := 65610, upper := 65690, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68793, witness := RowWitness.topPrime 68639 },
  { lower := 68794, upper := 68805, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69044, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71441, witness := RowWitness.topPrime 71287 },
  { lower := 71442, upper := 71443, witness := RowWitness.topPrime 71437 },
  { lower := 73205, upper := 73321, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85837, witness := RowWitness.topPrime 85793 },
  { lower := 98415, upper := 98458, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137935, witness := RowWitness.topPrime 137831 }
]

def row155_layers : List CoverLayer := [
  { lower := 23870, upper := 47740, M := 15 },
  { lower := 47740, upper := 95480, M := 11 },
  { lower := 95480, upper := 190960, M := 8 },
  { lower := 190960, upper := 381920, M := 6 },
  { lower := 381920, upper := 763840, M := 5 },
  { lower := 763840, upper := 1527680, M := 4 },
  { lower := 1527680, upper := 3055360, M := 3 },
  { lower := 3055360, upper := 6110720, M := 2 },
  { lower := 6110720, upper := 12221440, M := 2 },
  { lower := 12221440, upper := 24442880, M := 1 },
  { lower := 24442880, upper := 48885760, M := 1 },
  { lower := 48885760, upper := 97771520, M := 1 },
  { lower := 97771520, upper := 100000000, M := 1 }
]

def row155 : FiniteCoverRow := {
  height := row155_height,
  goods := row155_goods,
  layers := row155_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good000_checked :
    goodSegmentCheck 155 51 110
      { lower := 312, upper := 465, witness := RowWitness.topPrime 311 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good001_checked :
    goodSegmentCheck 155 51 110
      { lower := 466, upper := 617, witness := RowWitness.topPrime 463 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good002_checked :
    goodSegmentCheck 155 51 110
      { lower := 618, upper := 771, witness := RowWitness.topPrime 617 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good003_checked :
    goodSegmentCheck 155 51 110
      { lower := 772, upper := 923, witness := RowWitness.topPrime 769 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good004_checked :
    goodSegmentCheck 155 51 110
      { lower := 924, upper := 1073, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good005_checked :
    goodSegmentCheck 155 51 110
      { lower := 1074, upper := 1223, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good006_checked :
    goodSegmentCheck 155 51 110
      { lower := 1224, upper := 1377, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good007_checked :
    goodSegmentCheck 155 51 110
      { lower := 1378, upper := 1527, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good008_checked :
    goodSegmentCheck 155 51 110
      { lower := 1528, upper := 1677, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good009_checked :
    goodSegmentCheck 155 51 110
      { lower := 1678, upper := 1823, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good010_checked :
    goodSegmentCheck 155 51 110
      { lower := 1824, upper := 1977, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good011_checked :
    goodSegmentCheck 155 51 110
      { lower := 1978, upper := 2127, witness := RowWitness.topPrime 1973 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good012_checked :
    goodSegmentCheck 155 51 110
      { lower := 2128, upper := 2267, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good013_checked :
    goodSegmentCheck 155 51 110
      { lower := 2268, upper := 2421, witness := RowWitness.topPrime 2267 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good014_checked :
    goodSegmentCheck 155 51 110
      { lower := 2422, upper := 2571, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good015_checked :
    goodSegmentCheck 155 51 110
      { lower := 2572, upper := 2711, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good016_checked :
    goodSegmentCheck 155 51 110
      { lower := 2712, upper := 2865, witness := RowWitness.topPrime 2711 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good017_checked :
    goodSegmentCheck 155 51 110
      { lower := 2866, upper := 3015, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good018_checked :
    goodSegmentCheck 155 51 110
      { lower := 3016, upper := 3165, witness := RowWitness.topPrime 3011 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good019_checked :
    goodSegmentCheck 155 51 110
      { lower := 3166, upper := 3317, witness := RowWitness.topPrime 3163 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good020_checked :
    goodSegmentCheck 155 51 110
      { lower := 3318, upper := 3467, witness := RowWitness.topPrime 3313 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good021_checked :
    goodSegmentCheck 155 51 110
      { lower := 3468, upper := 3621, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good022_checked :
    goodSegmentCheck 155 51 110
      { lower := 3622, upper := 3771, witness := RowWitness.topPrime 3617 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good023_checked :
    goodSegmentCheck 155 51 110
      { lower := 3772, upper := 3923, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good024_checked :
    goodSegmentCheck 155 51 110
      { lower := 3924, upper := 4077, witness := RowWitness.topPrime 3923 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good025_checked :
    goodSegmentCheck 155 51 110
      { lower := 4078, upper := 4227, witness := RowWitness.topPrime 4073 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good026_checked :
    goodSegmentCheck 155 51 110
      { lower := 4228, upper := 4373, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good027_checked :
    goodSegmentCheck 155 51 110
      { lower := 4374, upper := 4527, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good028_checked :
    goodSegmentCheck 155 51 110
      { lower := 4528, upper := 4677, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good029_checked :
    goodSegmentCheck 155 51 110
      { lower := 4678, upper := 4827, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good030_checked :
    goodSegmentCheck 155 51 110
      { lower := 4828, upper := 4971, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good031_checked :
    goodSegmentCheck 155 51 110
      { lower := 4972, upper := 5123, witness := RowWitness.topPrime 4969 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good032_checked :
    goodSegmentCheck 155 51 110
      { lower := 5124, upper := 5273, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good033_checked :
    goodSegmentCheck 155 51 110
      { lower := 5274, upper := 5427, witness := RowWitness.topPrime 5273 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good034_checked :
    goodSegmentCheck 155 51 110
      { lower := 5428, upper := 5573, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good035_checked :
    goodSegmentCheck 155 51 110
      { lower := 5574, upper := 5727, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good036_checked :
    goodSegmentCheck 155 51 110
      { lower := 5728, upper := 5871, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good037_checked :
    goodSegmentCheck 155 51 110
      { lower := 5872, upper := 6023, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good038_checked :
    goodSegmentCheck 155 51 110
      { lower := 6024, upper := 6165, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good039_checked :
    goodSegmentCheck 155 51 110
      { lower := 6166, upper := 6317, witness := RowWitness.topPrime 6163 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good040_checked :
    goodSegmentCheck 155 51 110
      { lower := 6318, upper := 6471, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good041_checked :
    goodSegmentCheck 155 51 110
      { lower := 6472, upper := 6623, witness := RowWitness.topPrime 6469 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good042_checked :
    goodSegmentCheck 155 51 110
      { lower := 6624, upper := 6773, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good043_checked :
    goodSegmentCheck 155 51 110
      { lower := 6774, upper := 6917, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good044_checked :
    goodSegmentCheck 155 51 110
      { lower := 6918, upper := 7071, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good045_checked :
    goodSegmentCheck 155 51 110
      { lower := 7072, upper := 7223, witness := RowWitness.topPrime 7069 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good046_checked :
    goodSegmentCheck 155 51 110
      { lower := 7224, upper := 7373, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good047_checked :
    goodSegmentCheck 155 51 110
      { lower := 7374, upper := 7523, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good048_checked :
    goodSegmentCheck 155 51 110
      { lower := 7524, upper := 7677, witness := RowWitness.topPrime 7523 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good049_checked :
    goodSegmentCheck 155 51 110
      { lower := 7678, upper := 7827, witness := RowWitness.topPrime 7673 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good050_checked :
    goodSegmentCheck 155 51 110
      { lower := 7828, upper := 7977, witness := RowWitness.topPrime 7823 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good051_checked :
    goodSegmentCheck 155 51 110
      { lower := 7978, upper := 8117, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good052_checked :
    goodSegmentCheck 155 51 110
      { lower := 8118, upper := 8271, witness := RowWitness.topPrime 8117 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good053_checked :
    goodSegmentCheck 155 51 110
      { lower := 8272, upper := 8423, witness := RowWitness.topPrime 8269 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good054_checked :
    goodSegmentCheck 155 51 110
      { lower := 8424, upper := 8577, witness := RowWitness.topPrime 8423 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good055_checked :
    goodSegmentCheck 155 51 110
      { lower := 8578, upper := 8727, witness := RowWitness.topPrime 8573 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good056_checked :
    goodSegmentCheck 155 51 110
      { lower := 8728, upper := 8873, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good057_checked :
    goodSegmentCheck 155 51 110
      { lower := 8874, upper := 9021, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good058_checked :
    goodSegmentCheck 155 51 110
      { lower := 9022, upper := 9167, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good059_checked :
    goodSegmentCheck 155 51 110
      { lower := 9168, upper := 9315, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good060_checked :
    goodSegmentCheck 155 51 110
      { lower := 9316, upper := 9465, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good061_checked :
    goodSegmentCheck 155 51 110
      { lower := 9466, upper := 9617, witness := RowWitness.topPrime 9463 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good062_checked :
    goodSegmentCheck 155 51 110
      { lower := 9618, upper := 9767, witness := RowWitness.topPrime 9613 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good063_checked :
    goodSegmentCheck 155 51 110
      { lower := 9768, upper := 9921, witness := RowWitness.topPrime 9767 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good064_checked :
    goodSegmentCheck 155 51 110
      { lower := 9922, upper := 10061, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good065_checked :
    goodSegmentCheck 155 51 110
      { lower := 10062, upper := 10215, witness := RowWitness.topPrime 10061 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good066_checked :
    goodSegmentCheck 155 51 110
      { lower := 10216, upper := 10365, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good067_checked :
    goodSegmentCheck 155 51 110
      { lower := 10366, upper := 10511, witness := RowWitness.topPrime 10357 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good068_checked :
    goodSegmentCheck 155 51 110
      { lower := 10512, upper := 10655, witness := RowWitness.topPrime 10501 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good069_checked :
    goodSegmentCheck 155 51 110
      { lower := 10656, upper := 10805, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good070_checked :
    goodSegmentCheck 155 51 110
      { lower := 10806, upper := 10953, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good071_checked :
    goodSegmentCheck 155 51 110
      { lower := 10954, upper := 11103, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good072_checked :
    goodSegmentCheck 155 51 110
      { lower := 11104, upper := 11247, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good073_checked :
    goodSegmentCheck 155 51 110
      { lower := 11248, upper := 11397, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good074_checked :
    goodSegmentCheck 155 51 110
      { lower := 11398, upper := 11547, witness := RowWitness.topPrime 11393 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good075_checked :
    goodSegmentCheck 155 51 110
      { lower := 11548, upper := 11681, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good076_checked :
    goodSegmentCheck 155 51 110
      { lower := 11682, upper := 11835, witness := RowWitness.topPrime 11681 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good077_checked :
    goodSegmentCheck 155 51 110
      { lower := 11836, upper := 11987, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good078_checked :
    goodSegmentCheck 155 51 110
      { lower := 11988, upper := 12141, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good079_checked :
    goodSegmentCheck 155 51 110
      { lower := 12142, upper := 12273, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good080_checked :
    goodSegmentCheck 155 51 110
      { lower := 12274, upper := 12423, witness := RowWitness.topPrime 12269 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good081_checked :
    goodSegmentCheck 155 51 110
      { lower := 12424, upper := 12575, witness := RowWitness.topPrime 12421 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good082_checked :
    goodSegmentCheck 155 51 110
      { lower := 12576, upper := 12723, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good083_checked :
    goodSegmentCheck 155 51 110
      { lower := 12724, upper := 12875, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good084_checked :
    goodSegmentCheck 155 51 110
      { lower := 12876, upper := 13007, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good085_checked :
    goodSegmentCheck 155 51 110
      { lower := 13008, upper := 13161, witness := RowWitness.topPrime 13007 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good086_checked :
    goodSegmentCheck 155 51 110
      { lower := 13162, upper := 13313, witness := RowWitness.topPrime 13159 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good087_checked :
    goodSegmentCheck 155 51 110
      { lower := 13314, upper := 13467, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good088_checked :
    goodSegmentCheck 155 51 110
      { lower := 13468, upper := 13617, witness := RowWitness.topPrime 13463 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good089_checked :
    goodSegmentCheck 155 51 110
      { lower := 13618, upper := 13767, witness := RowWitness.topPrime 13613 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good090_checked :
    goodSegmentCheck 155 51 110
      { lower := 13768, upper := 13917, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good091_checked :
    goodSegmentCheck 155 51 110
      { lower := 13918, upper := 14067, witness := RowWitness.topPrime 13913 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good092_checked :
    goodSegmentCheck 155 51 110
      { lower := 14068, upper := 14211, witness := RowWitness.topPrime 14057 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good093_checked :
    goodSegmentCheck 155 51 110
      { lower := 14212, upper := 14361, witness := RowWitness.topPrime 14207 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good094_checked :
    goodSegmentCheck 155 51 110
      { lower := 14362, upper := 14501, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good095_checked :
    goodSegmentCheck 155 51 110
      { lower := 14502, upper := 14643, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good096_checked :
    goodSegmentCheck 155 51 110
      { lower := 14644, upper := 14793, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good097_checked :
    goodSegmentCheck 155 51 110
      { lower := 14794, upper := 14937, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good098_checked :
    goodSegmentCheck 155 51 110
      { lower := 14938, upper := 15083, witness := RowWitness.topPrime 14929 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good099_checked :
    goodSegmentCheck 155 51 110
      { lower := 15084, upper := 15237, witness := RowWitness.topPrime 15083 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good100_checked :
    goodSegmentCheck 155 51 110
      { lower := 15238, upper := 15387, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good101_checked :
    goodSegmentCheck 155 51 110
      { lower := 15388, upper := 15537, witness := RowWitness.topPrime 15383 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good102_checked :
    goodSegmentCheck 155 51 110
      { lower := 15538, upper := 15681, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good103_checked :
    goodSegmentCheck 155 51 110
      { lower := 15682, upper := 15833, witness := RowWitness.topPrime 15679 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good104_checked :
    goodSegmentCheck 155 51 110
      { lower := 15834, upper := 15977, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good105_checked :
    goodSegmentCheck 155 51 110
      { lower := 15978, upper := 16127, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good106_checked :
    goodSegmentCheck 155 51 110
      { lower := 16128, upper := 16281, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good107_checked :
    goodSegmentCheck 155 51 110
      { lower := 16282, upper := 16427, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good108_checked :
    goodSegmentCheck 155 51 110
      { lower := 16428, upper := 16581, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good109_checked :
    goodSegmentCheck 155 51 110
      { lower := 16582, upper := 16727, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good110_checked :
    goodSegmentCheck 155 51 110
      { lower := 16728, upper := 16857, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good111_checked :
    goodSegmentCheck 155 51 110
      { lower := 16858, upper := 16997, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good112_checked :
    goodSegmentCheck 155 51 110
      { lower := 16998, upper := 17147, witness := RowWitness.topPrime 16993 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good113_checked :
    goodSegmentCheck 155 51 110
      { lower := 17148, upper := 17291, witness := RowWitness.topPrime 17137 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good114_checked :
    goodSegmentCheck 155 51 110
      { lower := 17292, upper := 17445, witness := RowWitness.topPrime 17291 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good115_checked :
    goodSegmentCheck 155 51 110
      { lower := 17446, upper := 17597, witness := RowWitness.topPrime 17443 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good116_checked :
    goodSegmentCheck 155 51 110
      { lower := 17598, upper := 17751, witness := RowWitness.topPrime 17597 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good117_checked :
    goodSegmentCheck 155 51 110
      { lower := 17752, upper := 17903, witness := RowWitness.topPrime 17749 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good118_checked :
    goodSegmentCheck 155 51 110
      { lower := 17904, upper := 18057, witness := RowWitness.topPrime 17903 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good119_checked :
    goodSegmentCheck 155 51 110
      { lower := 18058, upper := 18203, witness := RowWitness.topPrime 18049 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good120_checked :
    goodSegmentCheck 155 51 110
      { lower := 18204, upper := 18353, witness := RowWitness.topPrime 18199 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good121_checked :
    goodSegmentCheck 155 51 110
      { lower := 18354, upper := 18507, witness := RowWitness.topPrime 18353 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good122_checked :
    goodSegmentCheck 155 51 110
      { lower := 18508, upper := 18657, witness := RowWitness.topPrime 18503 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good123_checked :
    goodSegmentCheck 155 51 110
      { lower := 18658, upper := 18791, witness := RowWitness.topPrime 18637 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good124_checked :
    goodSegmentCheck 155 51 110
      { lower := 18792, upper := 18941, witness := RowWitness.topPrime 18787 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good125_checked :
    goodSegmentCheck 155 51 110
      { lower := 18942, upper := 19073, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good126_checked :
    goodSegmentCheck 155 51 110
      { lower := 19074, upper := 19227, witness := RowWitness.topPrime 19073 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good127_checked :
    goodSegmentCheck 155 51 110
      { lower := 19228, upper := 19373, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good128_checked :
    goodSegmentCheck 155 51 110
      { lower := 19374, upper := 19527, witness := RowWitness.topPrime 19373 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good129_checked :
    goodSegmentCheck 155 51 110
      { lower := 19528, upper := 19661, witness := RowWitness.topPrime 19507 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good130_checked :
    goodSegmentCheck 155 51 110
      { lower := 19662, upper := 19815, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good131_checked :
    goodSegmentCheck 155 51 110
      { lower := 19816, upper := 19967, witness := RowWitness.topPrime 19813 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good132_checked :
    goodSegmentCheck 155 51 110
      { lower := 19968, upper := 20117, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good133_checked :
    goodSegmentCheck 155 51 110
      { lower := 20118, upper := 20271, witness := RowWitness.topPrime 20117 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good134_checked :
    goodSegmentCheck 155 51 110
      { lower := 20272, upper := 20423, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good135_checked :
    goodSegmentCheck 155 51 110
      { lower := 20424, upper := 20565, witness := RowWitness.topPrime 20411 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good136_checked :
    goodSegmentCheck 155 51 110
      { lower := 20566, upper := 20717, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good137_checked :
    goodSegmentCheck 155 51 110
      { lower := 20718, upper := 20871, witness := RowWitness.topPrime 20717 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good138_checked :
    goodSegmentCheck 155 51 110
      { lower := 20872, upper := 21011, witness := RowWitness.topPrime 20857 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good139_checked :
    goodSegmentCheck 155 51 110
      { lower := 21012, upper := 21165, witness := RowWitness.topPrime 21011 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good140_checked :
    goodSegmentCheck 155 51 110
      { lower := 21166, upper := 21317, witness := RowWitness.topPrime 21163 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good141_checked :
    goodSegmentCheck 155 51 110
      { lower := 21318, upper := 21471, witness := RowWitness.topPrime 21317 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good142_checked :
    goodSegmentCheck 155 51 110
      { lower := 21472, upper := 21621, witness := RowWitness.topPrime 21467 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good143_checked :
    goodSegmentCheck 155 51 110
      { lower := 21622, upper := 21771, witness := RowWitness.topPrime 21617 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good144_checked :
    goodSegmentCheck 155 51 110
      { lower := 21772, upper := 21921, witness := RowWitness.topPrime 21767 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good145_checked :
    goodSegmentCheck 155 51 110
      { lower := 21922, upper := 22065, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good146_checked :
    goodSegmentCheck 155 51 110
      { lower := 22066, upper := 22217, witness := RowWitness.topPrime 22063 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good147_checked :
    goodSegmentCheck 155 51 110
      { lower := 22218, upper := 22347, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good148_checked :
    goodSegmentCheck 155 51 110
      { lower := 22348, upper := 22497, witness := RowWitness.topPrime 22343 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good149_checked :
    goodSegmentCheck 155 51 110
      { lower := 22498, upper := 22637, witness := RowWitness.topPrime 22483 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good150_checked :
    goodSegmentCheck 155 51 110
      { lower := 22638, upper := 22791, witness := RowWitness.topPrime 22637 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good151_checked :
    goodSegmentCheck 155 51 110
      { lower := 22792, upper := 22941, witness := RowWitness.topPrime 22787 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good152_checked :
    goodSegmentCheck 155 51 110
      { lower := 22942, upper := 23091, witness := RowWitness.topPrime 22937 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good153_checked :
    goodSegmentCheck 155 51 110
      { lower := 23092, upper := 23241, witness := RowWitness.topPrime 23087 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good154_checked :
    goodSegmentCheck 155 51 110
      { lower := 23242, upper := 23381, witness := RowWitness.topPrime 23227 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good155_checked :
    goodSegmentCheck 155 51 110
      { lower := 23382, upper := 23525, witness := RowWitness.topPrime 23371 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good156_checked :
    goodSegmentCheck 155 51 110
      { lower := 23526, upper := 23663, witness := RowWitness.topPrime 23509 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good157_checked :
    goodSegmentCheck 155 51 110
      { lower := 23664, upper := 23817, witness := RowWitness.topPrime 23663 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good158_checked :
    goodSegmentCheck 155 51 110
      { lower := 23818, upper := 23916, witness := RowWitness.topPrime 23813 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good159_checked :
    goodSegmentCheck 155 51 110
      { lower := 24037, upper := 24183, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good160_checked :
    goodSegmentCheck 155 51 110
      { lower := 24184, upper := 24211, witness := RowWitness.topPrime 24181 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good161_checked :
    goodSegmentCheck 155 51 110
      { lower := 24299, upper := 24321, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good162_checked :
    goodSegmentCheck 155 51 110
      { lower := 24334, upper := 24483, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good163_checked :
    goodSegmentCheck 155 51 110
      { lower := 24484, upper := 24521, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good164_checked :
    goodSegmentCheck 155 51 110
      { lower := 24576, upper := 24719, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good165_checked :
    goodSegmentCheck 155 51 110
      { lower := 25215, upper := 25343, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good166_checked :
    goodSegmentCheck 155 51 110
      { lower := 25344, upper := 25369, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good167_checked :
    goodSegmentCheck 155 51 110
      { lower := 26364, upper := 26398, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good168_checked :
    goodSegmentCheck 155 51 110
      { lower := 26411, upper := 26561, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good169_checked :
    goodSegmentCheck 155 51 110
      { lower := 26562, upper := 26565, witness := RowWitness.topPrime 26561 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good170_checked :
    goodSegmentCheck 155 51 110
      { lower := 26624, upper := 26751, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good171_checked :
    goodSegmentCheck 155 51 110
      { lower := 26752, upper := 26778, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good172_checked :
    goodSegmentCheck 155 51 110
      { lower := 27556, upper := 27590, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good173_checked :
    goodSegmentCheck 155 51 110
      { lower := 27848, upper := 27889, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good174_checked :
    goodSegmentCheck 155 51 110
      { lower := 28227, upper := 28244, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good175_checked :
    goodSegmentCheck 155 51 110
      { lower := 28561, upper := 28585, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good176_checked :
    goodSegmentCheck 155 51 110
      { lower := 28672, upper := 28715, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good177_checked :
    goodSegmentCheck 155 51 110
      { lower := 28717, upper := 28865, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good178_checked :
    goodSegmentCheck 155 51 110
      { lower := 28866, upper := 28871, witness := RowWitness.topPrime 28859 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good179_checked :
    goodSegmentCheck 155 51 110
      { lower := 30618, upper := 30747, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good180_checked :
    goodSegmentCheck 155 51 110
      { lower := 30748, upper := 30874, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good181_checked :
    goodSegmentCheck 155 51 110
      { lower := 30899, upper := 30912, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good182_checked :
    goodSegmentCheck 155 51 110
      { lower := 30926, upper := 31053, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good183_checked :
    goodSegmentCheck 155 51 110
      { lower := 31213, upper := 31347, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good184_checked :
    goodSegmentCheck 155 51 110
      { lower := 31348, upper := 31404, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good185_checked :
    goodSegmentCheck 155 51 110
      { lower := 31423, upper := 31483, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good186_checked :
    goodSegmentCheck 155 51 110
      { lower := 31827, upper := 31838, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good187_checked :
    goodSegmentCheck 155 51 110
      { lower := 31974, upper := 31981, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good188_checked :
    goodSegmentCheck 155 51 110
      { lower := 32805, upper := 32922, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good189_checked :
    goodSegmentCheck 155 51 110
      { lower := 32955, upper := 32959, witness := RowWitness.topPrime 32941 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good190_checked :
    goodSegmentCheck 155 51 110
      { lower := 33614, upper := 33643, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good191_checked :
    goodSegmentCheck 155 51 110
      { lower := 33708, upper := 33768, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good192_checked :
    goodSegmentCheck 155 51 110
      { lower := 34322, upper := 34473, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good193_checked :
    goodSegmentCheck 155 51 110
      { lower := 34474, upper := 34545, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good194_checked :
    goodSegmentCheck 155 51 110
      { lower := 36015, upper := 36066, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good195_checked :
    goodSegmentCheck 155 51 110
      { lower := 36517, upper := 36651, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good196_checked :
    goodSegmentCheck 155 51 110
      { lower := 36652, upper := 36655, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good197_checked :
    goodSegmentCheck 155 51 110
      { lower := 37303, upper := 37364, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good198_checked :
    goodSegmentCheck 155 51 110
      { lower := 37446, upper := 37457, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good199_checked :
    goodSegmentCheck 155 51 110
      { lower := 37538, upper := 37600, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good200_checked :
    goodSegmentCheck 155 51 110
      { lower := 37636, upper := 37692, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good201_checked :
    goodSegmentCheck 155 51 110
      { lower := 38307, upper := 38445, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good202_checked :
    goodSegmentCheck 155 51 110
      { lower := 39326, upper := 39477, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good203_checked :
    goodSegmentCheck 155 51 110
      { lower := 39478, upper := 39480, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good204_checked :
    goodSegmentCheck 155 51 110
      { lower := 40401, upper := 40482, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good205_checked :
    goodSegmentCheck 155 51 110
      { lower := 40931, upper := 40958, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good206_checked :
    goodSegmentCheck 155 51 110
      { lower := 40960, upper := 41085, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good207_checked :
    goodSegmentCheck 155 51 110
      { lower := 45369, upper := 45407, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good208_checked :
    goodSegmentCheck 155 51 110
      { lower := 45927, upper := 45950, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good209_checked :
    goodSegmentCheck 155 51 110
      { lower := 47526, upper := 47675, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good210_checked :
    goodSegmentCheck 155 51 110
      { lower := 47676, upper := 47678, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good211_checked :
    goodSegmentCheck 155 51 110
      { lower := 48013, upper := 48115, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good212_checked :
    goodSegmentCheck 155 51 110
      { lower := 48778, upper := 48822, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good213_checked :
    goodSegmentCheck 155 51 110
      { lower := 49152, upper := 49284, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good214_checked :
    goodSegmentCheck 155 51 110
      { lower := 50421, upper := 50564, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good215_checked :
    goodSegmentCheck 155 51 110
      { lower := 51076, upper := 51159, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good216_checked :
    goodSegmentCheck 155 51 110
      { lower := 55451, upper := 55595, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good217_checked :
    goodSegmentCheck 155 51 110
      { lower := 55596, upper := 55601, witness := RowWitness.topPrime 55589 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good218_checked :
    goodSegmentCheck 155 51 110
      { lower := 56307, upper := 56323, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good219_checked :
    goodSegmentCheck 155 51 110
      { lower := 56454, upper := 56461, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good220_checked :
    goodSegmentCheck 155 51 110
      { lower := 57245, upper := 57276, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good221_checked :
    goodSegmentCheck 155 51 110
      { lower := 57344, upper := 57399, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good222_checked :
    goodSegmentCheck 155 51 110
      { lower := 58619, upper := 58718, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good223_checked :
    goodSegmentCheck 155 51 110
      { lower := 65610, upper := 65690, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_good224_checked :
    goodSegmentCheck 155 51 110
      { lower := 68644, upper := 68793, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good225_checked :
    goodSegmentCheck 155 51 110
      { lower := 68794, upper := 68805, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good226_checked :
    goodSegmentCheck 155 51 110
      { lower := 68921, upper := 69044, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good227_checked :
    goodSegmentCheck 155 51 110
      { lower := 71289, upper := 71441, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good228_checked :
    goodSegmentCheck 155 51 110
      { lower := 71442, upper := 71443, witness := RowWitness.topPrime 71437 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good229_checked :
    goodSegmentCheck 155 51 110
      { lower := 73205, upper := 73321, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good230_checked :
    goodSegmentCheck 155 51 110
      { lower := 85805, upper := 85837, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good231_checked :
    goodSegmentCheck 155 51 110
      { lower := 98415, upper := 98458, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row155_good232_checked :
    goodSegmentCheck 155 51 110
      { lower := 137842, upper := 137935, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 155) (r := 51) (s := 110) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_good232_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_goods_checked :
    row155.goods.all (goodSegmentCheck row155.height.i row155.height.r row155.height.s) = true := by
  change row155_goods.all (goodSegmentCheck 155 51 110) = true
  simp only [row155_goods, List.all_cons, List.all_nil,
    row155_good000_checked,
    row155_good001_checked,
    row155_good002_checked,
    row155_good003_checked,
    row155_good004_checked,
    row155_good005_checked,
    row155_good006_checked,
    row155_good007_checked,
    row155_good008_checked,
    row155_good009_checked,
    row155_good010_checked,
    row155_good011_checked,
    row155_good012_checked,
    row155_good013_checked,
    row155_good014_checked,
    row155_good015_checked,
    row155_good016_checked,
    row155_good017_checked,
    row155_good018_checked,
    row155_good019_checked,
    row155_good020_checked,
    row155_good021_checked,
    row155_good022_checked,
    row155_good023_checked,
    row155_good024_checked,
    row155_good025_checked,
    row155_good026_checked,
    row155_good027_checked,
    row155_good028_checked,
    row155_good029_checked,
    row155_good030_checked,
    row155_good031_checked,
    row155_good032_checked,
    row155_good033_checked,
    row155_good034_checked,
    row155_good035_checked,
    row155_good036_checked,
    row155_good037_checked,
    row155_good038_checked,
    row155_good039_checked,
    row155_good040_checked,
    row155_good041_checked,
    row155_good042_checked,
    row155_good043_checked,
    row155_good044_checked,
    row155_good045_checked,
    row155_good046_checked,
    row155_good047_checked,
    row155_good048_checked,
    row155_good049_checked,
    row155_good050_checked,
    row155_good051_checked,
    row155_good052_checked,
    row155_good053_checked,
    row155_good054_checked,
    row155_good055_checked,
    row155_good056_checked,
    row155_good057_checked,
    row155_good058_checked,
    row155_good059_checked,
    row155_good060_checked,
    row155_good061_checked,
    row155_good062_checked,
    row155_good063_checked,
    row155_good064_checked,
    row155_good065_checked,
    row155_good066_checked,
    row155_good067_checked,
    row155_good068_checked,
    row155_good069_checked,
    row155_good070_checked,
    row155_good071_checked,
    row155_good072_checked,
    row155_good073_checked,
    row155_good074_checked,
    row155_good075_checked,
    row155_good076_checked,
    row155_good077_checked,
    row155_good078_checked,
    row155_good079_checked,
    row155_good080_checked,
    row155_good081_checked,
    row155_good082_checked,
    row155_good083_checked,
    row155_good084_checked,
    row155_good085_checked,
    row155_good086_checked,
    row155_good087_checked,
    row155_good088_checked,
    row155_good089_checked,
    row155_good090_checked,
    row155_good091_checked,
    row155_good092_checked,
    row155_good093_checked,
    row155_good094_checked,
    row155_good095_checked,
    row155_good096_checked,
    row155_good097_checked,
    row155_good098_checked,
    row155_good099_checked,
    row155_good100_checked,
    row155_good101_checked,
    row155_good102_checked,
    row155_good103_checked,
    row155_good104_checked,
    row155_good105_checked,
    row155_good106_checked,
    row155_good107_checked,
    row155_good108_checked,
    row155_good109_checked,
    row155_good110_checked,
    row155_good111_checked,
    row155_good112_checked,
    row155_good113_checked,
    row155_good114_checked,
    row155_good115_checked,
    row155_good116_checked,
    row155_good117_checked,
    row155_good118_checked,
    row155_good119_checked,
    row155_good120_checked,
    row155_good121_checked,
    row155_good122_checked,
    row155_good123_checked,
    row155_good124_checked,
    row155_good125_checked,
    row155_good126_checked,
    row155_good127_checked,
    row155_good128_checked,
    row155_good129_checked,
    row155_good130_checked,
    row155_good131_checked,
    row155_good132_checked,
    row155_good133_checked,
    row155_good134_checked,
    row155_good135_checked,
    row155_good136_checked,
    row155_good137_checked,
    row155_good138_checked,
    row155_good139_checked,
    row155_good140_checked,
    row155_good141_checked,
    row155_good142_checked,
    row155_good143_checked,
    row155_good144_checked,
    row155_good145_checked,
    row155_good146_checked,
    row155_good147_checked,
    row155_good148_checked,
    row155_good149_checked,
    row155_good150_checked,
    row155_good151_checked,
    row155_good152_checked,
    row155_good153_checked,
    row155_good154_checked,
    row155_good155_checked,
    row155_good156_checked,
    row155_good157_checked,
    row155_good158_checked,
    row155_good159_checked,
    row155_good160_checked,
    row155_good161_checked,
    row155_good162_checked,
    row155_good163_checked,
    row155_good164_checked,
    row155_good165_checked,
    row155_good166_checked,
    row155_good167_checked,
    row155_good168_checked,
    row155_good169_checked,
    row155_good170_checked,
    row155_good171_checked,
    row155_good172_checked,
    row155_good173_checked,
    row155_good174_checked,
    row155_good175_checked,
    row155_good176_checked,
    row155_good177_checked,
    row155_good178_checked,
    row155_good179_checked,
    row155_good180_checked,
    row155_good181_checked,
    row155_good182_checked,
    row155_good183_checked,
    row155_good184_checked,
    row155_good185_checked,
    row155_good186_checked,
    row155_good187_checked,
    row155_good188_checked,
    row155_good189_checked,
    row155_good190_checked,
    row155_good191_checked,
    row155_good192_checked,
    row155_good193_checked,
    row155_good194_checked,
    row155_good195_checked,
    row155_good196_checked,
    row155_good197_checked,
    row155_good198_checked,
    row155_good199_checked,
    row155_good200_checked,
    row155_good201_checked,
    row155_good202_checked,
    row155_good203_checked,
    row155_good204_checked,
    row155_good205_checked,
    row155_good206_checked,
    row155_good207_checked,
    row155_good208_checked,
    row155_good209_checked,
    row155_good210_checked,
    row155_good211_checked,
    row155_good212_checked,
    row155_good213_checked,
    row155_good214_checked,
    row155_good215_checked,
    row155_good216_checked,
    row155_good217_checked,
    row155_good218_checked,
    row155_good219_checked,
    row155_good220_checked,
    row155_good221_checked,
    row155_good222_checked,
    row155_good223_checked,
    row155_good224_checked,
    row155_good225_checked,
    row155_good226_checked,
    row155_good227_checked,
    row155_good228_checked,
    row155_good229_checked,
    row155_good230_checked,
    row155_good231_checked,
    row155_good232_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_registered :
    decide (row155.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row155_small_checked :
    coverCheck (2 * row155.height.i + 2) (row155.height.i * (row155.height.i - 1) - 1)
      (row155.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row155_layerCover_checked :
    coverCheck (row155.height.i * (row155.height.i - 1)) (row155.height.n0 - 1)
      (row155.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row155_bounds : List NatInterval :=
  [(312, 465), (466, 617), (618, 771), (772, 923), (924, 1073), (1074, 1223), (1224, 1377), (1378, 1527), (1528, 1677), (1678, 1823), (1824, 1977), (1978, 2127), (2128, 2267), (2268, 2421), (2422, 2571), (2572, 2711), (2712, 2865), (2866, 3015), (3016, 3165), (3166, 3317), (3318, 3467), (3468, 3621), (3622, 3771), (3772, 3923), (3924, 4077), (4078, 4227), (4228, 4373), (4374, 4527), (4528, 4677), (4678, 4827), (4828, 4971), (4972, 5123), (5124, 5273), (5274, 5427), (5428, 5573), (5574, 5727), (5728, 5871), (5872, 6023), (6024, 6165), (6166, 6317), (6318, 6471), (6472, 6623), (6624, 6773), (6774, 6917), (6918, 7071), (7072, 7223), (7224, 7373), (7374, 7523), (7524, 7677), (7678, 7827), (7828, 7977), (7978, 8117), (8118, 8271), (8272, 8423), (8424, 8577), (8578, 8727), (8728, 8873), (8874, 9021), (9022, 9167), (9168, 9315), (9316, 9465), (9466, 9617), (9618, 9767), (9768, 9921), (9922, 10061), (10062, 10215), (10216, 10365), (10366, 10511), (10512, 10655), (10656, 10805), (10806, 10953), (10954, 11103), (11104, 11247), (11248, 11397), (11398, 11547), (11548, 11681), (11682, 11835), (11836, 11987), (11988, 12141), (12142, 12273), (12274, 12423), (12424, 12575), (12576, 12723), (12724, 12875), (12876, 13007), (13008, 13161), (13162, 13313), (13314, 13467), (13468, 13617), (13618, 13767), (13768, 13917), (13918, 14067), (14068, 14211), (14212, 14361), (14362, 14501), (14502, 14643), (14644, 14793), (14794, 14937), (14938, 15083), (15084, 15237), (15238, 15387), (15388, 15537), (15538, 15681), (15682, 15833), (15834, 15977), (15978, 16127), (16128, 16281), (16282, 16427), (16428, 16581), (16582, 16727), (16728, 16857), (16858, 16997), (16998, 17147), (17148, 17291), (17292, 17445), (17446, 17597), (17598, 17751), (17752, 17903), (17904, 18057), (18058, 18203), (18204, 18353), (18354, 18507), (18508, 18657), (18658, 18791), (18792, 18941), (18942, 19073), (19074, 19227), (19228, 19373), (19374, 19527), (19528, 19661), (19662, 19815), (19816, 19967), (19968, 20117), (20118, 20271), (20272, 20423), (20424, 20565), (20566, 20717), (20718, 20871), (20872, 21011), (21012, 21165), (21166, 21317), (21318, 21471), (21472, 21621), (21622, 21771), (21772, 21921), (21922, 22065), (22066, 22217), (22218, 22347), (22348, 22497), (22498, 22637), (22638, 22791), (22792, 22941), (22942, 23091), (23092, 23241), (23242, 23381), (23382, 23525), (23526, 23663), (23664, 23817), (23818, 23916), (24037, 24183), (24184, 24211), (24299, 24321), (24334, 24483), (24484, 24521), (24576, 24719), (25215, 25343), (25344, 25369), (26364, 26398), (26411, 26561), (26562, 26565), (26624, 26751), (26752, 26778), (27556, 27590), (27848, 27889), (28227, 28244), (28561, 28585), (28672, 28715), (28717, 28865), (28866, 28871), (30618, 30747), (30748, 30874), (30899, 30912), (30926, 31053), (31213, 31347), (31348, 31404), (31423, 31483), (31827, 31838), (31974, 31981), (32805, 32922), (32955, 32959), (33614, 33643), (33708, 33768), (34322, 34473), (34474, 34545), (36015, 36066), (36517, 36651), (36652, 36655), (37303, 37364), (37446, 37457), (37538, 37600), (37636, 37692), (38307, 38445), (39326, 39477), (39478, 39480), (40401, 40482), (40931, 40958), (40960, 41085), (45369, 45407), (45927, 45950), (47526, 47675), (47676, 47678), (48013, 48115), (48778, 48822), (49152, 49284), (50421, 50564), (51076, 51159), (55451, 55595), (55596, 55601), (56307, 56323), (56454, 56461), (57245, 57276), (57344, 57399), (58619, 58718), (65610, 65690), (68644, 68793), (68794, 68805), (68921, 69044), (71289, 71441), (71442, 71443), (73205, 73321), (85805, 85837), (98415, 98458), (137842, 137935)]

theorem row155_bounds_eq : row155.goods.map goodSegmentBounds = row155_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row155_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24730), (2, 26624, 26778), (2, 28672, 28826), (2, 30720, 30874), (2, 24576, 24730), (2, 28672, 28826), (2, 32768, 32922), (2, 36864, 37018), (2, 40960, 41114), (2, 45056, 45210), (2, 24576, 24730), (2, 32768, 32922), (2, 40960, 41114), (2, 32768, 32922), (2, 32768, 32922), (3, 24057, 24211), (3, 26244, 26398), (3, 28431, 28585), (3, 30618, 30772), (3, 32805, 32959), (3, 26244, 26398), (3, 32805, 32959), (3, 39366, 39520), (3, 45927, 46081), (3, 39366, 39520), (5, 31250, 31404), (5, 46875, 47029), (7, 24010, 24164), (7, 26411, 26565), (7, 28812, 28966), (7, 31213, 31367), (7, 33614, 33768), (7, 36015, 36169), (7, 33614, 33768), (11, 29282, 29436), (11, 43923, 44077), (13, 24167, 24321), (13, 26364, 26518), (13, 28561, 28715), (13, 30758, 30912), (13, 32955, 33109), (13, 28561, 28715), (17, 24565, 24719), (17, 29478, 29632), (17, 34391, 34545), (17, 39304, 39458), (17, 44217, 44371), (19, 27436, 27590), (19, 34295, 34449), (19, 41154, 41308), (23, 24334, 24488), (23, 36501, 36655), (29, 24389, 24543), (41, 25215, 25369), (43, 24037, 24191), (43, 25886, 26040), (43, 27735, 27889), (47, 24299, 24453), (47, 26508, 26662), (47, 28717, 28871), (47, 30926, 31080), (47, 33135, 33289), (53, 25281, 25435), (53, 28090, 28244), (53, 30899, 31053), (53, 33708, 33862), (53, 36517, 36671), (53, 39326, 39480), (53, 42135, 42289), (59, 24367, 24521), (59, 27848, 28002), (59, 31329, 31483), (59, 34810, 34964), (59, 38291, 38445), (59, 41772, 41926), (59, 45253, 45407), (61, 26047, 26201), (61, 29768, 29922), (61, 33489, 33643), (61, 37210, 37364), (61, 40931, 41085), (61, 44652, 44806), (67, 26934, 27088), (67, 31423, 31577), (67, 35912, 36066), (67, 40401, 40555), (67, 44890, 45044), (71, 25205, 25359), (71, 30246, 30400), (71, 35287, 35441), (71, 40328, 40482), (71, 45369, 45523), (73, 26645, 26799), (73, 31974, 32128), (73, 37303, 37457), (73, 42632, 42786), (79, 24964, 25118), (79, 31205, 31359), (79, 37446, 37600), (79, 43687, 43841), (83, 27556, 27710), (83, 34445, 34599), (83, 41334, 41488), (89, 23870, 23917), (89, 31684, 31838), (89, 39605, 39759), (89, 47526, 47680), (97, 28227, 28381), (97, 37636, 37790), (97, 47045, 47199), (101, 30603, 30757), (101, 40804, 40958), (103, 31827, 31981), (103, 42436, 42590), (107, 34347, 34501), (107, 45796, 45950), (109, 23870, 23916), (109, 35643, 35797), (109, 47524, 47678), (113, 25538, 25692), (113, 38307, 38461), (127, 32258, 32412), (131, 34322, 34476), (137, 37538, 37692), (139, 38642, 38796), (149, 44402, 44556), (151, 45602, 45756)]

def row155_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24730), (2, 26624, 26778), (2, 28672, 28826), (2, 30720, 30874), (2, 24576, 24730), (2, 28672, 28826), (2, 32768, 32922), (2, 36864, 37018), (2, 40960, 41114), (2, 45056, 45210), (2, 24576, 24730), (2, 32768, 32922), (2, 40960, 41114), (2, 32768, 32922), (2, 32768, 32922), (3, 24057, 24211)]

def row155_layer000_block001 : List ColouredInterval :=
  [(3, 26244, 26398), (3, 28431, 28585), (3, 30618, 30772), (3, 32805, 32959), (3, 26244, 26398), (3, 32805, 32959), (3, 39366, 39520), (3, 45927, 46081), (3, 39366, 39520), (5, 31250, 31404), (5, 46875, 47029), (7, 24010, 24164), (7, 26411, 26565), (7, 28812, 28966), (7, 31213, 31367), (7, 33614, 33768)]

def row155_layer000_block002 : List ColouredInterval :=
  [(7, 36015, 36169), (7, 33614, 33768), (11, 29282, 29436), (11, 43923, 44077), (13, 24167, 24321), (13, 26364, 26518), (13, 28561, 28715), (13, 30758, 30912), (13, 32955, 33109), (13, 28561, 28715), (17, 24565, 24719), (17, 29478, 29632), (17, 34391, 34545), (17, 39304, 39458), (17, 44217, 44371), (19, 27436, 27590)]

def row155_layer000_block003 : List ColouredInterval :=
  [(19, 34295, 34449), (19, 41154, 41308), (23, 24334, 24488), (23, 36501, 36655), (29, 24389, 24543), (41, 25215, 25369), (43, 24037, 24191), (43, 25886, 26040), (43, 27735, 27889), (47, 24299, 24453), (47, 26508, 26662), (47, 28717, 28871), (47, 30926, 31080), (47, 33135, 33289), (53, 25281, 25435), (53, 28090, 28244)]

def row155_layer000_block004 : List ColouredInterval :=
  [(53, 30899, 31053), (53, 33708, 33862), (53, 36517, 36671), (53, 39326, 39480), (53, 42135, 42289), (59, 24367, 24521), (59, 27848, 28002), (59, 31329, 31483), (59, 34810, 34964), (59, 38291, 38445), (59, 41772, 41926), (59, 45253, 45407), (61, 26047, 26201), (61, 29768, 29922), (61, 33489, 33643), (61, 37210, 37364)]

def row155_layer000_block005 : List ColouredInterval :=
  [(61, 40931, 41085), (61, 44652, 44806), (67, 26934, 27088), (67, 31423, 31577), (67, 35912, 36066), (67, 40401, 40555), (67, 44890, 45044), (71, 25205, 25359), (71, 30246, 30400), (71, 35287, 35441), (71, 40328, 40482), (71, 45369, 45523), (73, 26645, 26799), (73, 31974, 32128), (73, 37303, 37457), (73, 42632, 42786)]

def row155_layer000_block006 : List ColouredInterval :=
  [(79, 24964, 25118), (79, 31205, 31359), (79, 37446, 37600), (79, 43687, 43841), (83, 27556, 27710), (83, 34445, 34599), (83, 41334, 41488), (89, 23870, 23917), (89, 31684, 31838), (89, 39605, 39759), (89, 47526, 47680), (97, 28227, 28381), (97, 37636, 37790), (97, 47045, 47199), (101, 30603, 30757), (101, 40804, 40958)]

def row155_layer000_block007 : List ColouredInterval :=
  [(103, 31827, 31981), (103, 42436, 42590), (107, 34347, 34501), (107, 45796, 45950), (109, 23870, 23916), (109, 35643, 35797), (109, 47524, 47678), (113, 25538, 25692), (113, 38307, 38461), (127, 32258, 32412), (131, 34322, 34476), (137, 37538, 37692), (139, 38642, 38796), (149, 44402, 44556), (151, 45602, 45756)]

def row155_layer000_chunks : List (List ColouredInterval) :=
  [row155_layer000_block000, row155_layer000_block001, row155_layer000_block002, row155_layer000_block003, row155_layer000_block004, row155_layer000_block005, row155_layer000_block006, row155_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_arithmetic : LayerArithmeticValid row155.height { lower := 23870, upper := 47740, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_enumeration :
    activePowerIntervalList 155 15 23870 47740 = row155_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_pairs000 :
    row155_layer000_block000.all (fun I => row155_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row155_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_pairs001 :
    row155_layer000_block001.all (fun I => row155_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row155_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_pairs002 :
    row155_layer000_block002.all (fun I => row155_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row155_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_pairs003 :
    row155_layer000_block003.all (fun I => row155_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row155_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_pairs004 :
    row155_layer000_block004.all (fun I => row155_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row155_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_pairs005 :
    row155_layer000_block005.all (fun I => row155_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row155_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_pairs006 :
    row155_layer000_block006.all (fun I => row155_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row155_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_pairs007 :
    row155_layer000_block007.all (fun I => row155_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row155_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_chunks_eq : row155_layer000_chunks.flatten = row155_layer000_intervals := by
  rfl

theorem row155_layer000_pairs : pairCoverCheck row155_layer000_intervals row155_bounds = true := by
  apply pairCoverCheck_of_chunks row155_layer000_chunks_eq
  intro block hblock
  simp only [row155_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row155_layer000_pairs000
  · exact row155_layer000_pairs001
  · exact row155_layer000_pairs002
  · exact row155_layer000_pairs003
  · exact row155_layer000_pairs004
  · exact row155_layer000_pairs005
  · exact row155_layer000_pairs006
  · exact row155_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer000_checked :
    coverLayerCheck row155.height row155.goods { lower := 23870, upper := 47740, M := 15 } = true := by
  exact coverLayerCheck_of_parts row155_layer000_arithmetic row155_layer000_enumeration row155_bounds_eq row155_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer000_checked
