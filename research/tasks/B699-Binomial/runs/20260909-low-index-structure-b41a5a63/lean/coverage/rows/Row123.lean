import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row123_height : HeightCertificateDatum := { i := 123, r := 40, s := 86, n0Power10 := 8 }

def row123_goods : List GoodSegment := [
  { lower := 248, upper := 363, witness := RowWitness.topPrime 241 },
  { lower := 364, upper := 481, witness := RowWitness.topPrime 359 },
  { lower := 482, upper := 601, witness := RowWitness.topPrime 479 },
  { lower := 602, upper := 723, witness := RowWitness.topPrime 601 },
  { lower := 724, upper := 841, witness := RowWitness.topPrime 719 },
  { lower := 842, upper := 961, witness := RowWitness.topPrime 839 },
  { lower := 962, upper := 1075, witness := RowWitness.topPrime 953 },
  { lower := 1076, upper := 1191, witness := RowWitness.topPrime 1069 },
  { lower := 1192, upper := 1309, witness := RowWitness.topPrime 1187 },
  { lower := 1310, upper := 1429, witness := RowWitness.topPrime 1307 },
  { lower := 1430, upper := 1551, witness := RowWitness.topPrime 1429 },
  { lower := 1552, upper := 1671, witness := RowWitness.topPrime 1549 },
  { lower := 1672, upper := 1791, witness := RowWitness.topPrime 1669 },
  { lower := 1792, upper := 1911, witness := RowWitness.topPrime 1789 },
  { lower := 1912, upper := 2029, witness := RowWitness.topPrime 1907 },
  { lower := 2030, upper := 2151, witness := RowWitness.topPrime 2029 },
  { lower := 2152, upper := 2265, witness := RowWitness.topPrime 2143 },
  { lower := 2266, upper := 2373, witness := RowWitness.topPrime 2251 },
  { lower := 2374, upper := 2493, witness := RowWitness.topPrime 2371 },
  { lower := 2494, upper := 2599, witness := RowWitness.topPrime 2477 },
  { lower := 2600, upper := 2715, witness := RowWitness.topPrime 2593 },
  { lower := 2716, upper := 2835, witness := RowWitness.topPrime 2713 },
  { lower := 2836, upper := 2955, witness := RowWitness.topPrime 2833 },
  { lower := 2956, upper := 3075, witness := RowWitness.topPrime 2953 },
  { lower := 3076, upper := 3189, witness := RowWitness.topPrime 3067 },
  { lower := 3190, upper := 3309, witness := RowWitness.topPrime 3187 },
  { lower := 3310, upper := 3429, witness := RowWitness.topPrime 3307 },
  { lower := 3430, upper := 3535, witness := RowWitness.topPrime 3413 },
  { lower := 3536, upper := 3655, witness := RowWitness.topPrime 3533 },
  { lower := 3656, upper := 3765, witness := RowWitness.topPrime 3643 },
  { lower := 3766, upper := 3883, witness := RowWitness.topPrime 3761 },
  { lower := 3884, upper := 4003, witness := RowWitness.topPrime 3881 },
  { lower := 4004, upper := 4125, witness := RowWitness.topPrime 4003 },
  { lower := 4126, upper := 4233, witness := RowWitness.topPrime 4111 },
  { lower := 4234, upper := 4353, witness := RowWitness.topPrime 4231 },
  { lower := 4354, upper := 4471, witness := RowWitness.topPrime 4349 },
  { lower := 4472, upper := 4585, witness := RowWitness.topPrime 4463 },
  { lower := 4586, upper := 4705, witness := RowWitness.topPrime 4583 },
  { lower := 4706, upper := 4825, witness := RowWitness.topPrime 4703 },
  { lower := 4826, upper := 4939, witness := RowWitness.topPrime 4817 },
  { lower := 4940, upper := 5059, witness := RowWitness.topPrime 4937 },
  { lower := 5060, upper := 5181, witness := RowWitness.topPrime 5059 },
  { lower := 5182, upper := 5301, witness := RowWitness.topPrime 5179 },
  { lower := 5302, upper := 5419, witness := RowWitness.topPrime 5297 },
  { lower := 5420, upper := 5541, witness := RowWitness.topPrime 5419 },
  { lower := 5542, upper := 5653, witness := RowWitness.topPrime 5531 },
  { lower := 5654, upper := 5775, witness := RowWitness.topPrime 5653 },
  { lower := 5776, upper := 5871, witness := RowWitness.topPrime 5749 },
  { lower := 5872, upper := 5991, witness := RowWitness.topPrime 5869 },
  { lower := 5992, upper := 6109, witness := RowWitness.topPrime 5987 },
  { lower := 6110, upper := 6223, witness := RowWitness.topPrime 6101 },
  { lower := 6224, upper := 6343, witness := RowWitness.topPrime 6221 },
  { lower := 6344, upper := 6465, witness := RowWitness.topPrime 6343 },
  { lower := 6466, upper := 6573, witness := RowWitness.topPrime 6451 },
  { lower := 6574, upper := 6693, witness := RowWitness.topPrime 6571 },
  { lower := 6694, upper := 6813, witness := RowWitness.topPrime 6691 },
  { lower := 6814, upper := 6925, witness := RowWitness.topPrime 6803 },
  { lower := 6926, upper := 7039, witness := RowWitness.topPrime 6917 },
  { lower := 7040, upper := 7161, witness := RowWitness.topPrime 7039 },
  { lower := 7162, upper := 7281, witness := RowWitness.topPrime 7159 },
  { lower := 7282, upper := 7375, witness := RowWitness.topPrime 7253 },
  { lower := 7376, upper := 7491, witness := RowWitness.topPrime 7369 },
  { lower := 7492, upper := 7611, witness := RowWitness.topPrime 7489 },
  { lower := 7612, upper := 7729, witness := RowWitness.topPrime 7607 },
  { lower := 7730, upper := 7849, witness := RowWitness.topPrime 7727 },
  { lower := 7850, upper := 7963, witness := RowWitness.topPrime 7841 },
  { lower := 7964, upper := 8085, witness := RowWitness.topPrime 7963 },
  { lower := 8086, upper := 8203, witness := RowWitness.topPrime 8081 },
  { lower := 8204, upper := 8313, witness := RowWitness.topPrime 8191 },
  { lower := 8314, upper := 8433, witness := RowWitness.topPrime 8311 },
  { lower := 8434, upper := 8553, witness := RowWitness.topPrime 8431 },
  { lower := 8554, upper := 8665, witness := RowWitness.topPrime 8543 },
  { lower := 8666, upper := 8785, witness := RowWitness.topPrime 8663 },
  { lower := 8786, upper := 8905, witness := RowWitness.topPrime 8783 },
  { lower := 8906, upper := 9015, witness := RowWitness.topPrime 8893 },
  { lower := 9016, upper := 9135, witness := RowWitness.topPrime 9013 },
  { lower := 9136, upper := 9255, witness := RowWitness.topPrime 9133 },
  { lower := 9256, upper := 9363, witness := RowWitness.topPrime 9241 },
  { lower := 9364, upper := 9471, witness := RowWitness.topPrime 9349 },
  { lower := 9472, upper := 9589, witness := RowWitness.topPrime 9467 },
  { lower := 9590, upper := 9709, witness := RowWitness.topPrime 9587 },
  { lower := 9710, upper := 9819, witness := RowWitness.topPrime 9697 },
  { lower := 9820, upper := 9939, witness := RowWitness.topPrime 9817 },
  { lower := 9940, upper := 10053, witness := RowWitness.topPrime 9931 },
  { lower := 10054, upper := 10161, witness := RowWitness.topPrime 10039 },
  { lower := 10162, upper := 10281, witness := RowWitness.topPrime 10159 },
  { lower := 10282, upper := 10395, witness := RowWitness.topPrime 10273 },
  { lower := 10396, upper := 10513, witness := RowWitness.topPrime 10391 },
  { lower := 10514, upper := 10635, witness := RowWitness.topPrime 10513 },
  { lower := 10636, upper := 10753, witness := RowWitness.topPrime 10631 },
  { lower := 10754, upper := 10875, witness := RowWitness.topPrime 10753 },
  { lower := 10876, upper := 10989, witness := RowWitness.topPrime 10867 },
  { lower := 10990, upper := 11109, witness := RowWitness.topPrime 10987 },
  { lower := 11110, upper := 11215, witness := RowWitness.topPrime 11093 },
  { lower := 11216, upper := 11335, witness := RowWitness.topPrime 11213 },
  { lower := 11336, upper := 11451, witness := RowWitness.topPrime 11329 },
  { lower := 11452, upper := 11569, witness := RowWitness.topPrime 11447 },
  { lower := 11570, upper := 11673, witness := RowWitness.topPrime 11551 },
  { lower := 11674, upper := 11779, witness := RowWitness.topPrime 11657 },
  { lower := 11780, upper := 11901, witness := RowWitness.topPrime 11779 },
  { lower := 11902, upper := 12019, witness := RowWitness.topPrime 11897 },
  { lower := 12020, upper := 12133, witness := RowWitness.topPrime 12011 },
  { lower := 12134, upper := 12241, witness := RowWitness.topPrime 12119 },
  { lower := 12242, upper := 12363, witness := RowWitness.topPrime 12241 },
  { lower := 12364, upper := 12469, witness := RowWitness.topPrime 12347 },
  { lower := 12470, upper := 12579, witness := RowWitness.topPrime 12457 },
  { lower := 12580, upper := 12699, witness := RowWitness.topPrime 12577 },
  { lower := 12700, upper := 12819, witness := RowWitness.topPrime 12697 },
  { lower := 12820, upper := 12931, witness := RowWitness.topPrime 12809 },
  { lower := 12932, upper := 13045, witness := RowWitness.topPrime 12923 },
  { lower := 13046, upper := 13165, witness := RowWitness.topPrime 13043 },
  { lower := 13166, upper := 13285, witness := RowWitness.topPrime 13163 },
  { lower := 13286, upper := 13389, witness := RowWitness.topPrime 13267 },
  { lower := 13390, upper := 13503, witness := RowWitness.topPrime 13381 },
  { lower := 13504, upper := 13621, witness := RowWitness.topPrime 13499 },
  { lower := 13622, upper := 13741, witness := RowWitness.topPrime 13619 },
  { lower := 13742, upper := 13851, witness := RowWitness.topPrime 13729 },
  { lower := 13852, upper := 13963, witness := RowWitness.topPrime 13841 },
  { lower := 13964, upper := 14085, witness := RowWitness.topPrime 13963 },
  { lower := 14086, upper := 14205, witness := RowWitness.topPrime 14083 },
  { lower := 14206, upper := 14319, witness := RowWitness.topPrime 14197 },
  { lower := 14320, upper := 14425, witness := RowWitness.topPrime 14303 },
  { lower := 14426, upper := 14545, witness := RowWitness.topPrime 14423 },
  { lower := 14546, upper := 14665, witness := RowWitness.topPrime 14543 },
  { lower := 14666, upper := 14779, witness := RowWitness.topPrime 14657 },
  { lower := 14780, upper := 14901, witness := RowWitness.topPrime 14779 },
  { lower := 14902, upper := 15005, witness := RowWitness.topPrime 14897 },
  { lower := 15123, upper := 15243, witness := RowWitness.topPrime 15121 },
  { lower := 15244, upper := 15245, witness := RowWitness.topPrime 15241 },
  { lower := 15376, upper := 15495, witness := RowWitness.topPrime 15373 },
  { lower := 15496, upper := 15501, witness := RowWitness.topPrime 15493 },
  { lower := 15979, upper := 16095, witness := RowWitness.topPrime 15973 },
  { lower := 16096, upper := 16101, witness := RowWitness.topPrime 16091 },
  { lower := 16384, upper := 16503, witness := RowWitness.topPrime 16381 },
  { lower := 16504, upper := 16506, witness := RowWitness.topPrime 16493 },
  { lower := 16854, upper := 16929, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17421, witness := RowWitness.topPrime 17299 },
  { lower := 17422, upper := 17527, witness := RowWitness.topPrime 17419 },
  { lower := 17672, upper := 17698, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18554, witness := RowWitness.topPrime 18481 },
  { lower := 18605, upper := 18612, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18739, witness := RowWitness.topPrime 18617 },
  { lower := 18740, upper := 18853, witness := RowWitness.topPrime 18731 },
  { lower := 18854, upper := 18872, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19288, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19783, witness := RowWitness.topPrime 19661 },
  { lower := 19784, upper := 19805, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19895, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20003, witness := RowWitness.topPrime 19963 },
  { lower := 20402, upper := 20461, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20524, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20655, witness := RowWitness.topPrime 20533 },
  { lower := 20656, upper := 20657, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20699, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21405, witness := RowWitness.topPrime 21283 },
  { lower := 21406, upper := 21418, witness := RowWitness.topPrime 21401 },
  { lower := 21904, upper := 22015, witness := RowWitness.topPrime 21893 },
  { lower := 22016, upper := 22026, witness := RowWitness.topPrime 22013 },
  { lower := 22090, upper := 22092, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22212, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22448, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22591, witness := RowWitness.topPrime 22469 },
  { lower := 22592, upper := 22594, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22650, witness := RowWitness.topPrime 22621 },
  { lower := 23763, upper := 23883, witness := RowWitness.topPrime 23761 },
  { lower := 23884, upper := 23884, witness := RowWitness.topPrime 23879 },
  { lower := 24010, upper := 24129, witness := RowWitness.topPrime 24007 },
  { lower := 24130, upper := 24132, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24451, witness := RowWitness.topPrime 24329 },
  { lower := 24452, upper := 24489, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24693, witness := RowWitness.topPrime 24571 },
  { lower := 24694, upper := 24698, witness := RowWitness.topPrime 24691 },
  { lower := 25000, upper := 25086, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25383, witness := RowWitness.topPrime 25261 },
  { lower := 25384, upper := 25403, witness := RowWitness.topPrime 25373 },
  { lower := 26047, upper := 26133, witness := RowWitness.topPrime 26041 },
  { lower := 26364, upper := 26366, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26486, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26533, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26630, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26746, witness := RowWitness.topPrime 26641 },
  { lower := 27556, upper := 27558, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27857, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28212, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28247, witness := RowWitness.topPrime 28219 },
  { lower := 28672, upper := 28683, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28794, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28839, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29600, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29890, witness := RowWitness.topPrime 29789 },
  { lower := 30720, upper := 30725, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30842, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31021, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31315, witness := RowWitness.topPrime 31193 },
  { lower := 31316, upper := 31372, witness := RowWitness.topPrime 31307 },
  { lower := 31423, upper := 31451, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32890, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33736, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34459, witness := RowWitness.topPrime 34337 },
  { lower := 34460, upper := 34513, witness := RowWitness.topPrime 34457 },
  { lower := 36015, upper := 36034, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36619, witness := RowWitness.topPrime 36497 },
  { lower := 36620, upper := 36623, witness := RowWitness.topPrime 36607 },
  { lower := 37303, upper := 37332, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37568, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38413, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39445, witness := RowWitness.topPrime 39323 },
  { lower := 39446, upper := 39448, witness := RowWitness.topPrime 39443 },
  { lower := 40401, upper := 40450, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41053, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43809, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45375, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47643, witness := RowWitness.topPrime 47521 },
  { lower := 47644, upper := 47646, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48083, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48855, witness := RowWitness.topPrime 48733 },
  { lower := 48856, upper := 48856, witness := RowWitness.topPrime 48847 },
  { lower := 49152, upper := 49252, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50532, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51127, witness := RowWitness.topPrime 51071 },
  { lower := 52215, upper := 52216, witness := RowWitness.topPrime 52201 },
  { lower := 53290, upper := 53370, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55563, witness := RowWitness.topPrime 55441 },
  { lower := 55564, upper := 55569, witness := RowWitness.topPrime 55547 },
  { lower := 57344, upper := 57367, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58686, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59078, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62532, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63967, witness := RowWitness.topPrime 63929 },
  { lower := 68651, upper := 68761, witness := RowWitness.topPrime 68639 },
  { lower := 68762, upper := 68773, witness := RowWitness.topPrime 68749 },
  { lower := 71289, upper := 71409, witness := RowWitness.topPrime 71287 },
  { lower := 71410, upper := 71411, witness := RowWitness.topPrime 71399 },
  { lower := 73205, upper := 73289, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89495, witness := RowWitness.topPrime 89381 },
  { lower := 95052, upper := 95149, witness := RowWitness.topPrime 95027 },
  { lower := 95150, upper := 95170, witness := RowWitness.topPrime 95143 },
  { lower := 148955, upper := 148999, witness := RowWitness.topPrime 148949 }
]

def row123_layers : List CoverLayer := [
  { lower := 15006, upper := 30012, M := 19 },
  { lower := 30012, upper := 60024, M := 15 },
  { lower := 60024, upper := 120048, M := 12 },
  { lower := 120048, upper := 240096, M := 9 },
  { lower := 240096, upper := 480192, M := 7 },
  { lower := 480192, upper := 960384, M := 6 },
  { lower := 960384, upper := 1920768, M := 5 },
  { lower := 1920768, upper := 3841536, M := 4 },
  { lower := 3841536, upper := 7683072, M := 3 },
  { lower := 7683072, upper := 15366144, M := 2 },
  { lower := 15366144, upper := 30732288, M := 2 },
  { lower := 30732288, upper := 61464576, M := 2 },
  { lower := 61464576, upper := 100000000, M := 1 }
]

def row123 : FiniteCoverRow := {
  height := row123_height,
  goods := row123_goods,
  layers := row123_layers
}

theorem row123_registered :
    decide (row123.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row123_goods_checked :
    row123.goods.all (goodSegmentCheck row123.height.i row123.height.r row123.height.s) = true := by
  decide +kernel

theorem row123_small_checked :
    coverCheck (2 * row123.height.i + 2) (row123.height.i * (row123.height.i - 1) - 1)
      (row123.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row123_layerCover_checked :
    coverCheck (row123.height.i * (row123.height.i - 1)) (row123.height.n0 - 1)
      (row123.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row123_layer000_checked :
    coverLayerCheck row123.height row123.goods { lower := 15006, upper := 30012, M := 19 } = true := by
  decide +kernel

theorem row123_layer001_checked :
    coverLayerCheck row123.height row123.goods { lower := 30012, upper := 60024, M := 15 } = true := by
  decide +kernel

theorem row123_layer002_checked :
    coverLayerCheck row123.height row123.goods { lower := 60024, upper := 120048, M := 12 } = true := by
  decide +kernel

theorem row123_layer003_checked :
    coverLayerCheck row123.height row123.goods { lower := 120048, upper := 240096, M := 9 } = true := by
  decide +kernel

theorem row123_layer004_checked :
    coverLayerCheck row123.height row123.goods { lower := 240096, upper := 480192, M := 7 } = true := by
  decide +kernel

theorem row123_layer005_checked :
    coverLayerCheck row123.height row123.goods { lower := 480192, upper := 960384, M := 6 } = true := by
  decide +kernel

theorem row123_layer006_checked :
    coverLayerCheck row123.height row123.goods { lower := 960384, upper := 1920768, M := 5 } = true := by
  decide +kernel

theorem row123_layer007_checked :
    coverLayerCheck row123.height row123.goods { lower := 1920768, upper := 3841536, M := 4 } = true := by
  decide +kernel

theorem row123_layer008_checked :
    coverLayerCheck row123.height row123.goods { lower := 3841536, upper := 7683072, M := 3 } = true := by
  decide +kernel

theorem row123_layer009_checked :
    coverLayerCheck row123.height row123.goods { lower := 7683072, upper := 15366144, M := 2 } = true := by
  decide +kernel

theorem row123_layer010_checked :
    coverLayerCheck row123.height row123.goods { lower := 15366144, upper := 30732288, M := 2 } = true := by
  decide +kernel

theorem row123_layer011_checked :
    coverLayerCheck row123.height row123.goods { lower := 30732288, upper := 61464576, M := 2 } = true := by
  decide +kernel

theorem row123_layer012_checked :
    coverLayerCheck row123.height row123.goods { lower := 61464576, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row123_layers_checked :
    row123.layers.all (coverLayerCheck row123.height row123.goods) = true := by
  change List.all [
    { lower := 15006, upper := 30012, M := 19 },
    { lower := 30012, upper := 60024, M := 15 },
    { lower := 60024, upper := 120048, M := 12 },
    { lower := 120048, upper := 240096, M := 9 },
    { lower := 240096, upper := 480192, M := 7 },
    { lower := 480192, upper := 960384, M := 6 },
    { lower := 960384, upper := 1920768, M := 5 },
    { lower := 1920768, upper := 3841536, M := 4 },
    { lower := 3841536, upper := 7683072, M := 3 },
    { lower := 7683072, upper := 15366144, M := 2 },
    { lower := 15366144, upper := 30732288, M := 2 },
    { lower := 30732288, upper := 61464576, M := 2 },
    { lower := 61464576, upper := 100000000, M := 1 }
  ] (coverLayerCheck row123.height row123.goods) = true
  simp only [List.all_cons, List.all_nil,
    row123_layer000_checked,
    row123_layer001_checked,
    row123_layer002_checked,
    row123_layer003_checked,
    row123_layer004_checked,
    row123_layer005_checked,
    row123_layer006_checked,
    row123_layer007_checked,
    row123_layer008_checked,
    row123_layer009_checked,
    row123_layer010_checked,
    row123_layer011_checked,
    row123_layer012_checked,
    Bool.true_and]

theorem row123_checked : finiteCoverRowCheck row123 = true := by
  simp only [finiteCoverRowCheck, row123_registered, row123_goods_checked,
    row123_small_checked, row123_layerCover_checked, row123_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row123_checked

end B699LowIndex
