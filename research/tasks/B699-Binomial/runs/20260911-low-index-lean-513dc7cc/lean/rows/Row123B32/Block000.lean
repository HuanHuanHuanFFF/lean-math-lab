import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good000_checked :
    goodSegmentCheck 123 40 86
      { lower := 248, upper := 363, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good001_checked :
    goodSegmentCheck 123 40 86
      { lower := 364, upper := 481, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good002_checked :
    goodSegmentCheck 123 40 86
      { lower := 482, upper := 601, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good003_checked :
    goodSegmentCheck 123 40 86
      { lower := 602, upper := 723, witness := RowWitness.topPrime 601 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good004_checked :
    goodSegmentCheck 123 40 86
      { lower := 724, upper := 841, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good005_checked :
    goodSegmentCheck 123 40 86
      { lower := 842, upper := 961, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good006_checked :
    goodSegmentCheck 123 40 86
      { lower := 962, upper := 1075, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good007_checked :
    goodSegmentCheck 123 40 86
      { lower := 1076, upper := 1191, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good008_checked :
    goodSegmentCheck 123 40 86
      { lower := 1192, upper := 1309, witness := RowWitness.topPrime 1187 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good009_checked :
    goodSegmentCheck 123 40 86
      { lower := 1310, upper := 1429, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good010_checked :
    goodSegmentCheck 123 40 86
      { lower := 1430, upper := 1551, witness := RowWitness.topPrime 1429 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good011_checked :
    goodSegmentCheck 123 40 86
      { lower := 1552, upper := 1671, witness := RowWitness.topPrime 1549 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good012_checked :
    goodSegmentCheck 123 40 86
      { lower := 1672, upper := 1791, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good013_checked :
    goodSegmentCheck 123 40 86
      { lower := 1792, upper := 1911, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good014_checked :
    goodSegmentCheck 123 40 86
      { lower := 1912, upper := 2029, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good015_checked :
    goodSegmentCheck 123 40 86
      { lower := 2030, upper := 2151, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good016_checked :
    goodSegmentCheck 123 40 86
      { lower := 2152, upper := 2265, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good017_checked :
    goodSegmentCheck 123 40 86
      { lower := 2266, upper := 2373, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good018_checked :
    goodSegmentCheck 123 40 86
      { lower := 2374, upper := 2493, witness := RowWitness.topPrime 2371 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good019_checked :
    goodSegmentCheck 123 40 86
      { lower := 2494, upper := 2599, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good020_checked :
    goodSegmentCheck 123 40 86
      { lower := 2600, upper := 2715, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good021_checked :
    goodSegmentCheck 123 40 86
      { lower := 2716, upper := 2835, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good022_checked :
    goodSegmentCheck 123 40 86
      { lower := 2836, upper := 2955, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good023_checked :
    goodSegmentCheck 123 40 86
      { lower := 2956, upper := 3075, witness := RowWitness.topPrime 2953 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good024_checked :
    goodSegmentCheck 123 40 86
      { lower := 3076, upper := 3189, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good025_checked :
    goodSegmentCheck 123 40 86
      { lower := 3190, upper := 3309, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good026_checked :
    goodSegmentCheck 123 40 86
      { lower := 3310, upper := 3429, witness := RowWitness.topPrime 3307 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good027_checked :
    goodSegmentCheck 123 40 86
      { lower := 3430, upper := 3535, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good028_checked :
    goodSegmentCheck 123 40 86
      { lower := 3536, upper := 3655, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good029_checked :
    goodSegmentCheck 123 40 86
      { lower := 3656, upper := 3765, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good030_checked :
    goodSegmentCheck 123 40 86
      { lower := 3766, upper := 3883, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good031_checked :
    goodSegmentCheck 123 40 86
      { lower := 3884, upper := 4003, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good032_checked :
    goodSegmentCheck 123 40 86
      { lower := 4004, upper := 4125, witness := RowWitness.topPrime 4003 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good033_checked :
    goodSegmentCheck 123 40 86
      { lower := 4126, upper := 4233, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good034_checked :
    goodSegmentCheck 123 40 86
      { lower := 4234, upper := 4353, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good035_checked :
    goodSegmentCheck 123 40 86
      { lower := 4354, upper := 4471, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good036_checked :
    goodSegmentCheck 123 40 86
      { lower := 4472, upper := 4585, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good037_checked :
    goodSegmentCheck 123 40 86
      { lower := 4586, upper := 4705, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good038_checked :
    goodSegmentCheck 123 40 86
      { lower := 4706, upper := 4825, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good039_checked :
    goodSegmentCheck 123 40 86
      { lower := 4826, upper := 4939, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good040_checked :
    goodSegmentCheck 123 40 86
      { lower := 4940, upper := 5059, witness := RowWitness.topPrime 4937 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good041_checked :
    goodSegmentCheck 123 40 86
      { lower := 5060, upper := 5181, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good042_checked :
    goodSegmentCheck 123 40 86
      { lower := 5182, upper := 5301, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good043_checked :
    goodSegmentCheck 123 40 86
      { lower := 5302, upper := 5419, witness := RowWitness.topPrime 5297 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good044_checked :
    goodSegmentCheck 123 40 86
      { lower := 5420, upper := 5541, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good045_checked :
    goodSegmentCheck 123 40 86
      { lower := 5542, upper := 5653, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good046_checked :
    goodSegmentCheck 123 40 86
      { lower := 5654, upper := 5775, witness := RowWitness.topPrime 5653 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good047_checked :
    goodSegmentCheck 123 40 86
      { lower := 5776, upper := 5871, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good048_checked :
    goodSegmentCheck 123 40 86
      { lower := 5872, upper := 5991, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good049_checked :
    goodSegmentCheck 123 40 86
      { lower := 5992, upper := 6109, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good050_checked :
    goodSegmentCheck 123 40 86
      { lower := 6110, upper := 6223, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good051_checked :
    goodSegmentCheck 123 40 86
      { lower := 6224, upper := 6343, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good052_checked :
    goodSegmentCheck 123 40 86
      { lower := 6344, upper := 6465, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good053_checked :
    goodSegmentCheck 123 40 86
      { lower := 6466, upper := 6573, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good054_checked :
    goodSegmentCheck 123 40 86
      { lower := 6574, upper := 6693, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good055_checked :
    goodSegmentCheck 123 40 86
      { lower := 6694, upper := 6813, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good056_checked :
    goodSegmentCheck 123 40 86
      { lower := 6814, upper := 6925, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good057_checked :
    goodSegmentCheck 123 40 86
      { lower := 6926, upper := 7039, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good058_checked :
    goodSegmentCheck 123 40 86
      { lower := 7040, upper := 7161, witness := RowWitness.topPrime 7039 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good059_checked :
    goodSegmentCheck 123 40 86
      { lower := 7162, upper := 7281, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good060_checked :
    goodSegmentCheck 123 40 86
      { lower := 7282, upper := 7375, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good061_checked :
    goodSegmentCheck 123 40 86
      { lower := 7376, upper := 7491, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good062_checked :
    goodSegmentCheck 123 40 86
      { lower := 7492, upper := 7611, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good063_checked :
    goodSegmentCheck 123 40 86
      { lower := 7612, upper := 7729, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good064_checked :
    goodSegmentCheck 123 40 86
      { lower := 7730, upper := 7849, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good065_checked :
    goodSegmentCheck 123 40 86
      { lower := 7850, upper := 7963, witness := RowWitness.topPrime 7841 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good066_checked :
    goodSegmentCheck 123 40 86
      { lower := 7964, upper := 8085, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good067_checked :
    goodSegmentCheck 123 40 86
      { lower := 8086, upper := 8203, witness := RowWitness.topPrime 8081 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good068_checked :
    goodSegmentCheck 123 40 86
      { lower := 8204, upper := 8313, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good069_checked :
    goodSegmentCheck 123 40 86
      { lower := 8314, upper := 8433, witness := RowWitness.topPrime 8311 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good070_checked :
    goodSegmentCheck 123 40 86
      { lower := 8434, upper := 8553, witness := RowWitness.topPrime 8431 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good071_checked :
    goodSegmentCheck 123 40 86
      { lower := 8554, upper := 8665, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good072_checked :
    goodSegmentCheck 123 40 86
      { lower := 8666, upper := 8785, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good073_checked :
    goodSegmentCheck 123 40 86
      { lower := 8786, upper := 8905, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good074_checked :
    goodSegmentCheck 123 40 86
      { lower := 8906, upper := 9015, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good075_checked :
    goodSegmentCheck 123 40 86
      { lower := 9016, upper := 9135, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good076_checked :
    goodSegmentCheck 123 40 86
      { lower := 9136, upper := 9255, witness := RowWitness.topPrime 9133 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good077_checked :
    goodSegmentCheck 123 40 86
      { lower := 9256, upper := 9363, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good078_checked :
    goodSegmentCheck 123 40 86
      { lower := 9364, upper := 9471, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good079_checked :
    goodSegmentCheck 123 40 86
      { lower := 9472, upper := 9589, witness := RowWitness.topPrime 9467 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good080_checked :
    goodSegmentCheck 123 40 86
      { lower := 9590, upper := 9709, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good081_checked :
    goodSegmentCheck 123 40 86
      { lower := 9710, upper := 9819, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good082_checked :
    goodSegmentCheck 123 40 86
      { lower := 9820, upper := 9939, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good083_checked :
    goodSegmentCheck 123 40 86
      { lower := 9940, upper := 10053, witness := RowWitness.topPrime 9931 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good084_checked :
    goodSegmentCheck 123 40 86
      { lower := 10054, upper := 10161, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good085_checked :
    goodSegmentCheck 123 40 86
      { lower := 10162, upper := 10281, witness := RowWitness.topPrime 10159 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good086_checked :
    goodSegmentCheck 123 40 86
      { lower := 10282, upper := 10395, witness := RowWitness.topPrime 10273 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good087_checked :
    goodSegmentCheck 123 40 86
      { lower := 10396, upper := 10513, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good088_checked :
    goodSegmentCheck 123 40 86
      { lower := 10514, upper := 10635, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good089_checked :
    goodSegmentCheck 123 40 86
      { lower := 10636, upper := 10753, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good090_checked :
    goodSegmentCheck 123 40 86
      { lower := 10754, upper := 10875, witness := RowWitness.topPrime 10753 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good091_checked :
    goodSegmentCheck 123 40 86
      { lower := 10876, upper := 10989, witness := RowWitness.topPrime 10867 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good092_checked :
    goodSegmentCheck 123 40 86
      { lower := 10990, upper := 11109, witness := RowWitness.topPrime 10987 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good093_checked :
    goodSegmentCheck 123 40 86
      { lower := 11110, upper := 11215, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good094_checked :
    goodSegmentCheck 123 40 86
      { lower := 11216, upper := 11335, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good095_checked :
    goodSegmentCheck 123 40 86
      { lower := 11336, upper := 11451, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good096_checked :
    goodSegmentCheck 123 40 86
      { lower := 11452, upper := 11569, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good097_checked :
    goodSegmentCheck 123 40 86
      { lower := 11570, upper := 11673, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good098_checked :
    goodSegmentCheck 123 40 86
      { lower := 11674, upper := 11779, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good099_checked :
    goodSegmentCheck 123 40 86
      { lower := 11780, upper := 11901, witness := RowWitness.topPrime 11779 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good100_checked :
    goodSegmentCheck 123 40 86
      { lower := 11902, upper := 12019, witness := RowWitness.topPrime 11897 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good101_checked :
    goodSegmentCheck 123 40 86
      { lower := 12020, upper := 12133, witness := RowWitness.topPrime 12011 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good102_checked :
    goodSegmentCheck 123 40 86
      { lower := 12134, upper := 12241, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good103_checked :
    goodSegmentCheck 123 40 86
      { lower := 12242, upper := 12363, witness := RowWitness.topPrime 12241 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good104_checked :
    goodSegmentCheck 123 40 86
      { lower := 12364, upper := 12469, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good105_checked :
    goodSegmentCheck 123 40 86
      { lower := 12470, upper := 12579, witness := RowWitness.topPrime 12457 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good106_checked :
    goodSegmentCheck 123 40 86
      { lower := 12580, upper := 12699, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good107_checked :
    goodSegmentCheck 123 40 86
      { lower := 12700, upper := 12819, witness := RowWitness.topPrime 12697 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good108_checked :
    goodSegmentCheck 123 40 86
      { lower := 12820, upper := 12931, witness := RowWitness.topPrime 12809 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good109_checked :
    goodSegmentCheck 123 40 86
      { lower := 12932, upper := 13045, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good110_checked :
    goodSegmentCheck 123 40 86
      { lower := 13046, upper := 13165, witness := RowWitness.topPrime 13043 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good111_checked :
    goodSegmentCheck 123 40 86
      { lower := 13166, upper := 13285, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good112_checked :
    goodSegmentCheck 123 40 86
      { lower := 13286, upper := 13389, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good113_checked :
    goodSegmentCheck 123 40 86
      { lower := 13390, upper := 13503, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good114_checked :
    goodSegmentCheck 123 40 86
      { lower := 13504, upper := 13621, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good115_checked :
    goodSegmentCheck 123 40 86
      { lower := 13622, upper := 13741, witness := RowWitness.topPrime 13619 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good116_checked :
    goodSegmentCheck 123 40 86
      { lower := 13742, upper := 13851, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good117_checked :
    goodSegmentCheck 123 40 86
      { lower := 13852, upper := 13963, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good118_checked :
    goodSegmentCheck 123 40 86
      { lower := 13964, upper := 14085, witness := RowWitness.topPrime 13963 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good119_checked :
    goodSegmentCheck 123 40 86
      { lower := 14086, upper := 14205, witness := RowWitness.topPrime 14083 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good120_checked :
    goodSegmentCheck 123 40 86
      { lower := 14206, upper := 14319, witness := RowWitness.topPrime 14197 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good121_checked :
    goodSegmentCheck 123 40 86
      { lower := 14320, upper := 14425, witness := RowWitness.topPrime 14303 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good122_checked :
    goodSegmentCheck 123 40 86
      { lower := 14426, upper := 14545, witness := RowWitness.topPrime 14423 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good123_checked :
    goodSegmentCheck 123 40 86
      { lower := 14546, upper := 14665, witness := RowWitness.topPrime 14543 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good124_checked :
    goodSegmentCheck 123 40 86
      { lower := 14666, upper := 14779, witness := RowWitness.topPrime 14657 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good125_checked :
    goodSegmentCheck 123 40 86
      { lower := 14780, upper := 14901, witness := RowWitness.topPrime 14779 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good126_checked :
    goodSegmentCheck 123 40 86
      { lower := 14902, upper := 15005, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good127_checked :
    goodSegmentCheck 123 40 86
      { lower := 15123, upper := 15243, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good128_checked :
    goodSegmentCheck 123 40 86
      { lower := 15244, upper := 15245, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good129_checked :
    goodSegmentCheck 123 40 86
      { lower := 15376, upper := 15495, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good130_checked :
    goodSegmentCheck 123 40 86
      { lower := 15496, upper := 15501, witness := RowWitness.topPrime 15493 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good131_checked :
    goodSegmentCheck 123 40 86
      { lower := 15979, upper := 16095, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good132_checked :
    goodSegmentCheck 123 40 86
      { lower := 16096, upper := 16101, witness := RowWitness.topPrime 16091 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good133_checked :
    goodSegmentCheck 123 40 86
      { lower := 16384, upper := 16503, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good134_checked :
    goodSegmentCheck 123 40 86
      { lower := 16504, upper := 16506, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good135_checked :
    goodSegmentCheck 123 40 86
      { lower := 16854, upper := 16929, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good136_checked :
    goodSegmentCheck 123 40 86
      { lower := 17303, upper := 17421, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good137_checked :
    goodSegmentCheck 123 40 86
      { lower := 17422, upper := 17527, witness := RowWitness.topPrime 17419 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good138_checked :
    goodSegmentCheck 123 40 86
      { lower := 17672, upper := 17698, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good139_checked :
    goodSegmentCheck 123 40 86
      { lower := 18490, upper := 18554, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good140_checked :
    goodSegmentCheck 123 40 86
      { lower := 18605, upper := 18612, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good141_checked :
    goodSegmentCheck 123 40 86
      { lower := 18634, upper := 18739, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good142_checked :
    goodSegmentCheck 123 40 86
      { lower := 18740, upper := 18853, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good143_checked :
    goodSegmentCheck 123 40 86
      { lower := 18854, upper := 18872, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good144_checked :
    goodSegmentCheck 123 40 86
      { lower := 19208, upper := 19288, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good145_checked :
    goodSegmentCheck 123 40 86
      { lower := 19663, upper := 19783, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good146_checked :
    goodSegmentCheck 123 40 86
      { lower := 19784, upper := 19805, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good147_checked :
    goodSegmentCheck 123 40 86
      { lower := 19881, upper := 19895, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good148_checked :
    goodSegmentCheck 123 40 86
      { lower := 19965, upper := 20003, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good149_checked :
    goodSegmentCheck 123 40 86
      { lower := 20402, upper := 20461, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good150_checked :
    goodSegmentCheck 123 40 86
      { lower := 20480, upper := 20524, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good151_checked :
    goodSegmentCheck 123 40 86
      { lower := 20535, upper := 20655, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good152_checked :
    goodSegmentCheck 123 40 86
      { lower := 20656, upper := 20657, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good153_checked :
    goodSegmentCheck 123 40 86
      { lower := 20667, upper := 20699, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good154_checked :
    goodSegmentCheck 123 40 86
      { lower := 21296, upper := 21405, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good155_checked :
    goodSegmentCheck 123 40 86
      { lower := 21406, upper := 21418, witness := RowWitness.topPrime 21401 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good156_checked :
    goodSegmentCheck 123 40 86
      { lower := 21904, upper := 22015, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good157_checked :
    goodSegmentCheck 123 40 86
      { lower := 22016, upper := 22026, witness := RowWitness.topPrime 22013 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good158_checked :
    goodSegmentCheck 123 40 86
      { lower := 22090, upper := 22092, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good159_checked :
    goodSegmentCheck 123 40 86
      { lower := 22188, upper := 22212, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good160_checked :
    goodSegmentCheck 123 40 86
      { lower := 22445, upper := 22448, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good161_checked :
    goodSegmentCheck 123 40 86
      { lower := 22472, upper := 22591, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good162_checked :
    goodSegmentCheck 123 40 86
      { lower := 22592, upper := 22594, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good163_checked :
    goodSegmentCheck 123 40 86
      { lower := 22627, upper := 22650, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good164_checked :
    goodSegmentCheck 123 40 86
      { lower := 23763, upper := 23883, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good165_checked :
    goodSegmentCheck 123 40 86
      { lower := 23884, upper := 23884, witness := RowWitness.topPrime 23879 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good166_checked :
    goodSegmentCheck 123 40 86
      { lower := 24010, upper := 24129, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good167_checked :
    goodSegmentCheck 123 40 86
      { lower := 24130, upper := 24132, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good168_checked :
    goodSegmentCheck 123 40 86
      { lower := 24334, upper := 24451, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good169_checked :
    goodSegmentCheck 123 40 86
      { lower := 24452, upper := 24489, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good170_checked :
    goodSegmentCheck 123 40 86
      { lower := 24576, upper := 24693, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good171_checked :
    goodSegmentCheck 123 40 86
      { lower := 24694, upper := 24698, witness := RowWitness.topPrime 24691 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good172_checked :
    goodSegmentCheck 123 40 86
      { lower := 25000, upper := 25086, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good173_checked :
    goodSegmentCheck 123 40 86
      { lower := 25281, upper := 25383, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good174_checked :
    goodSegmentCheck 123 40 86
      { lower := 25384, upper := 25403, witness := RowWitness.topPrime 25373 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good175_checked :
    goodSegmentCheck 123 40 86
      { lower := 26047, upper := 26133, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good176_checked :
    goodSegmentCheck 123 40 86
      { lower := 26364, upper := 26366, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good177_checked :
    goodSegmentCheck 123 40 86
      { lower := 26411, upper := 26486, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good178_checked :
    goodSegmentCheck 123 40 86
      { lower := 26508, upper := 26533, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good179_checked :
    goodSegmentCheck 123 40 86
      { lower := 26624, upper := 26630, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good180_checked :
    goodSegmentCheck 123 40 86
      { lower := 26645, upper := 26746, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good181_checked :
    goodSegmentCheck 123 40 86
      { lower := 27556, upper := 27558, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good182_checked :
    goodSegmentCheck 123 40 86
      { lower := 27848, upper := 27857, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good183_checked :
    goodSegmentCheck 123 40 86
      { lower := 28125, upper := 28212, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good184_checked :
    goodSegmentCheck 123 40 86
      { lower := 28227, upper := 28247, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good185_checked :
    goodSegmentCheck 123 40 86
      { lower := 28672, upper := 28683, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good186_checked :
    goodSegmentCheck 123 40 86
      { lower := 28717, upper := 28794, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good187_checked :
    goodSegmentCheck 123 40 86
      { lower := 28812, upper := 28839, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good188_checked :
    goodSegmentCheck 123 40 86
      { lower := 29584, upper := 29600, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good189_checked :
    goodSegmentCheck 123 40 86
      { lower := 29791, upper := 29890, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good190_checked :
    goodSegmentCheck 123 40 86
      { lower := 30720, upper := 30725, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good191_checked :
    goodSegmentCheck 123 40 86
      { lower := 30758, upper := 30842, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good192_checked :
    goodSegmentCheck 123 40 86
      { lower := 30926, upper := 31021, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good193_checked :
    goodSegmentCheck 123 40 86
      { lower := 31213, upper := 31315, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good194_checked :
    goodSegmentCheck 123 40 86
      { lower := 31316, upper := 31372, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good195_checked :
    goodSegmentCheck 123 40 86
      { lower := 31423, upper := 31451, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good196_checked :
    goodSegmentCheck 123 40 86
      { lower := 32805, upper := 32890, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good197_checked :
    goodSegmentCheck 123 40 86
      { lower := 33708, upper := 33736, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good198_checked :
    goodSegmentCheck 123 40 86
      { lower := 34347, upper := 34459, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good199_checked :
    goodSegmentCheck 123 40 86
      { lower := 34460, upper := 34513, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good200_checked :
    goodSegmentCheck 123 40 86
      { lower := 36015, upper := 36034, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good201_checked :
    goodSegmentCheck 123 40 86
      { lower := 36517, upper := 36619, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good202_checked :
    goodSegmentCheck 123 40 86
      { lower := 36620, upper := 36623, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good203_checked :
    goodSegmentCheck 123 40 86
      { lower := 37303, upper := 37332, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good204_checked :
    goodSegmentCheck 123 40 86
      { lower := 37500, upper := 37568, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good205_checked :
    goodSegmentCheck 123 40 86
      { lower := 38307, upper := 38413, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good206_checked :
    goodSegmentCheck 123 40 86
      { lower := 39326, upper := 39445, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good207_checked :
    goodSegmentCheck 123 40 86
      { lower := 39446, upper := 39448, witness := RowWitness.topPrime 39443 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good208_checked :
    goodSegmentCheck 123 40 86
      { lower := 40401, upper := 40450, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good209_checked :
    goodSegmentCheck 123 40 86
      { lower := 40960, upper := 41053, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good210_checked :
    goodSegmentCheck 123 40 86
      { lower := 43750, upper := 43809, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good211_checked :
    goodSegmentCheck 123 40 86
      { lower := 45369, upper := 45375, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good212_checked :
    goodSegmentCheck 123 40 86
      { lower := 47526, upper := 47643, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good213_checked :
    goodSegmentCheck 123 40 86
      { lower := 47644, upper := 47646, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good214_checked :
    goodSegmentCheck 123 40 86
      { lower := 48013, upper := 48083, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good215_checked :
    goodSegmentCheck 123 40 86
      { lower := 48734, upper := 48855, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good216_checked :
    goodSegmentCheck 123 40 86
      { lower := 48856, upper := 48856, witness := RowWitness.topPrime 48847 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good217_checked :
    goodSegmentCheck 123 40 86
      { lower := 49152, upper := 49252, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good218_checked :
    goodSegmentCheck 123 40 86
      { lower := 50421, upper := 50532, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good219_checked :
    goodSegmentCheck 123 40 86
      { lower := 51076, upper := 51127, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good220_checked :
    goodSegmentCheck 123 40 86
      { lower := 52215, upper := 52216, witness := RowWitness.topPrime 52201 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good221_checked :
    goodSegmentCheck 123 40 86
      { lower := 53290, upper := 53370, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good222_checked :
    goodSegmentCheck 123 40 86
      { lower := 55451, upper := 55563, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good223_checked :
    goodSegmentCheck 123 40 86
      { lower := 55564, upper := 55569, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_good224_checked :
    goodSegmentCheck 123 40 86
      { lower := 57344, upper := 57367, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good225_checked :
    goodSegmentCheck 123 40 86
      { lower := 58619, upper := 58686, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good226_checked :
    goodSegmentCheck 123 40 86
      { lower := 59049, upper := 59078, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good227_checked :
    goodSegmentCheck 123 40 86
      { lower := 62500, upper := 62532, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good228_checked :
    goodSegmentCheck 123 40 86
      { lower := 63948, upper := 63967, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good229_checked :
    goodSegmentCheck 123 40 86
      { lower := 68651, upper := 68761, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good230_checked :
    goodSegmentCheck 123 40 86
      { lower := 68762, upper := 68773, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good231_checked :
    goodSegmentCheck 123 40 86
      { lower := 71289, upper := 71409, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good232_checked :
    goodSegmentCheck 123 40 86
      { lower := 71410, upper := 71411, witness := RowWitness.topPrime 71399 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good233_checked :
    goodSegmentCheck 123 40 86
      { lower := 73205, upper := 73289, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good234_checked :
    goodSegmentCheck 123 40 86
      { lower := 89383, upper := 89495, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good235_checked :
    goodSegmentCheck 123 40 86
      { lower := 95052, upper := 95149, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good236_checked :
    goodSegmentCheck 123 40 86
      { lower := 95150, upper := 95170, witness := RowWitness.topPrime 95143 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row123_good237_checked :
    goodSegmentCheck 123 40 86
      { lower := 148955, upper := 148999, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 123) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_good237_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_goods_checked :
    row123.goods.all (goodSegmentCheck row123.height.i row123.height.r row123.height.s) = true := by
  change row123_goods.all (goodSegmentCheck 123 40 86) = true
  simp only [row123_goods, List.all_cons, List.all_nil,
    row123_good000_checked,
    row123_good001_checked,
    row123_good002_checked,
    row123_good003_checked,
    row123_good004_checked,
    row123_good005_checked,
    row123_good006_checked,
    row123_good007_checked,
    row123_good008_checked,
    row123_good009_checked,
    row123_good010_checked,
    row123_good011_checked,
    row123_good012_checked,
    row123_good013_checked,
    row123_good014_checked,
    row123_good015_checked,
    row123_good016_checked,
    row123_good017_checked,
    row123_good018_checked,
    row123_good019_checked,
    row123_good020_checked,
    row123_good021_checked,
    row123_good022_checked,
    row123_good023_checked,
    row123_good024_checked,
    row123_good025_checked,
    row123_good026_checked,
    row123_good027_checked,
    row123_good028_checked,
    row123_good029_checked,
    row123_good030_checked,
    row123_good031_checked,
    row123_good032_checked,
    row123_good033_checked,
    row123_good034_checked,
    row123_good035_checked,
    row123_good036_checked,
    row123_good037_checked,
    row123_good038_checked,
    row123_good039_checked,
    row123_good040_checked,
    row123_good041_checked,
    row123_good042_checked,
    row123_good043_checked,
    row123_good044_checked,
    row123_good045_checked,
    row123_good046_checked,
    row123_good047_checked,
    row123_good048_checked,
    row123_good049_checked,
    row123_good050_checked,
    row123_good051_checked,
    row123_good052_checked,
    row123_good053_checked,
    row123_good054_checked,
    row123_good055_checked,
    row123_good056_checked,
    row123_good057_checked,
    row123_good058_checked,
    row123_good059_checked,
    row123_good060_checked,
    row123_good061_checked,
    row123_good062_checked,
    row123_good063_checked,
    row123_good064_checked,
    row123_good065_checked,
    row123_good066_checked,
    row123_good067_checked,
    row123_good068_checked,
    row123_good069_checked,
    row123_good070_checked,
    row123_good071_checked,
    row123_good072_checked,
    row123_good073_checked,
    row123_good074_checked,
    row123_good075_checked,
    row123_good076_checked,
    row123_good077_checked,
    row123_good078_checked,
    row123_good079_checked,
    row123_good080_checked,
    row123_good081_checked,
    row123_good082_checked,
    row123_good083_checked,
    row123_good084_checked,
    row123_good085_checked,
    row123_good086_checked,
    row123_good087_checked,
    row123_good088_checked,
    row123_good089_checked,
    row123_good090_checked,
    row123_good091_checked,
    row123_good092_checked,
    row123_good093_checked,
    row123_good094_checked,
    row123_good095_checked,
    row123_good096_checked,
    row123_good097_checked,
    row123_good098_checked,
    row123_good099_checked,
    row123_good100_checked,
    row123_good101_checked,
    row123_good102_checked,
    row123_good103_checked,
    row123_good104_checked,
    row123_good105_checked,
    row123_good106_checked,
    row123_good107_checked,
    row123_good108_checked,
    row123_good109_checked,
    row123_good110_checked,
    row123_good111_checked,
    row123_good112_checked,
    row123_good113_checked,
    row123_good114_checked,
    row123_good115_checked,
    row123_good116_checked,
    row123_good117_checked,
    row123_good118_checked,
    row123_good119_checked,
    row123_good120_checked,
    row123_good121_checked,
    row123_good122_checked,
    row123_good123_checked,
    row123_good124_checked,
    row123_good125_checked,
    row123_good126_checked,
    row123_good127_checked,
    row123_good128_checked,
    row123_good129_checked,
    row123_good130_checked,
    row123_good131_checked,
    row123_good132_checked,
    row123_good133_checked,
    row123_good134_checked,
    row123_good135_checked,
    row123_good136_checked,
    row123_good137_checked,
    row123_good138_checked,
    row123_good139_checked,
    row123_good140_checked,
    row123_good141_checked,
    row123_good142_checked,
    row123_good143_checked,
    row123_good144_checked,
    row123_good145_checked,
    row123_good146_checked,
    row123_good147_checked,
    row123_good148_checked,
    row123_good149_checked,
    row123_good150_checked,
    row123_good151_checked,
    row123_good152_checked,
    row123_good153_checked,
    row123_good154_checked,
    row123_good155_checked,
    row123_good156_checked,
    row123_good157_checked,
    row123_good158_checked,
    row123_good159_checked,
    row123_good160_checked,
    row123_good161_checked,
    row123_good162_checked,
    row123_good163_checked,
    row123_good164_checked,
    row123_good165_checked,
    row123_good166_checked,
    row123_good167_checked,
    row123_good168_checked,
    row123_good169_checked,
    row123_good170_checked,
    row123_good171_checked,
    row123_good172_checked,
    row123_good173_checked,
    row123_good174_checked,
    row123_good175_checked,
    row123_good176_checked,
    row123_good177_checked,
    row123_good178_checked,
    row123_good179_checked,
    row123_good180_checked,
    row123_good181_checked,
    row123_good182_checked,
    row123_good183_checked,
    row123_good184_checked,
    row123_good185_checked,
    row123_good186_checked,
    row123_good187_checked,
    row123_good188_checked,
    row123_good189_checked,
    row123_good190_checked,
    row123_good191_checked,
    row123_good192_checked,
    row123_good193_checked,
    row123_good194_checked,
    row123_good195_checked,
    row123_good196_checked,
    row123_good197_checked,
    row123_good198_checked,
    row123_good199_checked,
    row123_good200_checked,
    row123_good201_checked,
    row123_good202_checked,
    row123_good203_checked,
    row123_good204_checked,
    row123_good205_checked,
    row123_good206_checked,
    row123_good207_checked,
    row123_good208_checked,
    row123_good209_checked,
    row123_good210_checked,
    row123_good211_checked,
    row123_good212_checked,
    row123_good213_checked,
    row123_good214_checked,
    row123_good215_checked,
    row123_good216_checked,
    row123_good217_checked,
    row123_good218_checked,
    row123_good219_checked,
    row123_good220_checked,
    row123_good221_checked,
    row123_good222_checked,
    row123_good223_checked,
    row123_good224_checked,
    row123_good225_checked,
    row123_good226_checked,
    row123_good227_checked,
    row123_good228_checked,
    row123_good229_checked,
    row123_good230_checked,
    row123_good231_checked,
    row123_good232_checked,
    row123_good233_checked,
    row123_good234_checked,
    row123_good235_checked,
    row123_good236_checked,
    row123_good237_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_registered :
    decide (row123.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row123_small_checked :
    coverCheck (2 * row123.height.i + 2) (row123.height.i * (row123.height.i - 1) - 1)
      (row123.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row123_layerCover_checked :
    coverCheck (row123.height.i * (row123.height.i - 1)) (row123.height.n0 - 1)
      (row123.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row123_bounds : List NatInterval :=
  [(248, 363), (364, 481), (482, 601), (602, 723), (724, 841), (842, 961), (962, 1075), (1076, 1191), (1192, 1309), (1310, 1429), (1430, 1551), (1552, 1671), (1672, 1791), (1792, 1911), (1912, 2029), (2030, 2151), (2152, 2265), (2266, 2373), (2374, 2493), (2494, 2599), (2600, 2715), (2716, 2835), (2836, 2955), (2956, 3075), (3076, 3189), (3190, 3309), (3310, 3429), (3430, 3535), (3536, 3655), (3656, 3765), (3766, 3883), (3884, 4003), (4004, 4125), (4126, 4233), (4234, 4353), (4354, 4471), (4472, 4585), (4586, 4705), (4706, 4825), (4826, 4939), (4940, 5059), (5060, 5181), (5182, 5301), (5302, 5419), (5420, 5541), (5542, 5653), (5654, 5775), (5776, 5871), (5872, 5991), (5992, 6109), (6110, 6223), (6224, 6343), (6344, 6465), (6466, 6573), (6574, 6693), (6694, 6813), (6814, 6925), (6926, 7039), (7040, 7161), (7162, 7281), (7282, 7375), (7376, 7491), (7492, 7611), (7612, 7729), (7730, 7849), (7850, 7963), (7964, 8085), (8086, 8203), (8204, 8313), (8314, 8433), (8434, 8553), (8554, 8665), (8666, 8785), (8786, 8905), (8906, 9015), (9016, 9135), (9136, 9255), (9256, 9363), (9364, 9471), (9472, 9589), (9590, 9709), (9710, 9819), (9820, 9939), (9940, 10053), (10054, 10161), (10162, 10281), (10282, 10395), (10396, 10513), (10514, 10635), (10636, 10753), (10754, 10875), (10876, 10989), (10990, 11109), (11110, 11215), (11216, 11335), (11336, 11451), (11452, 11569), (11570, 11673), (11674, 11779), (11780, 11901), (11902, 12019), (12020, 12133), (12134, 12241), (12242, 12363), (12364, 12469), (12470, 12579), (12580, 12699), (12700, 12819), (12820, 12931), (12932, 13045), (13046, 13165), (13166, 13285), (13286, 13389), (13390, 13503), (13504, 13621), (13622, 13741), (13742, 13851), (13852, 13963), (13964, 14085), (14086, 14205), (14206, 14319), (14320, 14425), (14426, 14545), (14546, 14665), (14666, 14779), (14780, 14901), (14902, 15005), (15123, 15243), (15244, 15245), (15376, 15495), (15496, 15501), (15979, 16095), (16096, 16101), (16384, 16503), (16504, 16506), (16854, 16929), (17303, 17421), (17422, 17527), (17672, 17698), (18490, 18554), (18605, 18612), (18634, 18739), (18740, 18853), (18854, 18872), (19208, 19288), (19663, 19783), (19784, 19805), (19881, 19895), (19965, 20003), (20402, 20461), (20480, 20524), (20535, 20655), (20656, 20657), (20667, 20699), (21296, 21405), (21406, 21418), (21904, 22015), (22016, 22026), (22090, 22092), (22188, 22212), (22445, 22448), (22472, 22591), (22592, 22594), (22627, 22650), (23763, 23883), (23884, 23884), (24010, 24129), (24130, 24132), (24334, 24451), (24452, 24489), (24576, 24693), (24694, 24698), (25000, 25086), (25281, 25383), (25384, 25403), (26047, 26133), (26364, 26366), (26411, 26486), (26508, 26533), (26624, 26630), (26645, 26746), (27556, 27558), (27848, 27857), (28125, 28212), (28227, 28247), (28672, 28683), (28717, 28794), (28812, 28839), (29584, 29600), (29791, 29890), (30720, 30725), (30758, 30842), (30926, 31021), (31213, 31315), (31316, 31372), (31423, 31451), (32805, 32890), (33708, 33736), (34347, 34459), (34460, 34513), (36015, 36034), (36517, 36619), (36620, 36623), (37303, 37332), (37500, 37568), (38307, 38413), (39326, 39445), (39446, 39448), (40401, 40450), (40960, 41053), (43750, 43809), (45369, 45375), (47526, 47643), (47644, 47646), (48013, 48083), (48734, 48855), (48856, 48856), (49152, 49252), (50421, 50532), (51076, 51127), (52215, 52216), (53290, 53370), (55451, 55563), (55564, 55569), (57344, 57367), (58619, 58686), (59049, 59078), (62500, 62532), (63948, 63967), (68651, 68761), (68762, 68773), (71289, 71409), (71410, 71411), (73205, 73289), (89383, 89495), (95052, 95149), (95150, 95170), (148955, 148999)]

theorem row123_bounds_eq : row123.goods.map goodSegmentBounds = row123_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row123_layer000_intervals : List ColouredInterval :=
  [(2, 15360, 15482), (2, 16384, 16506), (2, 17408, 17530), (2, 18432, 18554), (2, 19456, 19578), (2, 16384, 16506), (2, 18432, 18554), (2, 20480, 20602), (2, 22528, 22650), (2, 24576, 24698), (2, 26624, 26746), (2, 28672, 28794), (2, 16384, 16506), (2, 20480, 20602), (2, 24576, 24698), (2, 28672, 28794), (2, 16384, 16506), (2, 24576, 24698), (2, 16384, 16506), (3, 19683, 19805), (3, 26244, 26366), (3, 19683, 19805), (5, 15625, 15747), (5, 18750, 18872), (5, 21875, 21997), (5, 25000, 25122), (5, 28125, 28247), (5, 15625, 15747), (7, 16807, 16929), (7, 19208, 19330), (7, 21609, 21731), (7, 24010, 24132), (7, 26411, 26533), (7, 28812, 28934), (7, 16807, 16929), (11, 15972, 16094), (11, 17303, 17425), (11, 18634, 18756), (11, 19965, 20087), (11, 21296, 21418), (11, 22627, 22749), (11, 23958, 24080), (11, 25289, 25411), (11, 29282, 29404), (13, 15379, 15501), (13, 17576, 17698), (13, 19773, 19895), (13, 21970, 22092), (13, 24167, 24289), (13, 26364, 26486), (13, 28561, 28683), (13, 28561, 28683), (17, 19652, 19774), (17, 24565, 24687), (17, 29478, 29600), (19, 20577, 20699), (19, 27436, 27558), (23, 24334, 24456), (29, 15138, 15260), (29, 15979, 16101), (29, 24389, 24511), (31, 15376, 15498), (31, 16337, 16459), (31, 17298, 17420), (31, 18259, 18381), (31, 29791, 29913), (37, 15059, 15181), (37, 16428, 16550), (37, 17797, 17919), (37, 19166, 19288), (37, 20535, 20657), (37, 21904, 22026), (37, 23273, 23395), (37, 24642, 24764), (37, 26011, 26133), (43, 16641, 16763), (43, 18490, 18612), (43, 20339, 20461), (43, 22188, 22310), (43, 24037, 24159), (43, 25886, 26008), (43, 27735, 27857), (43, 29584, 29706), (47, 15463, 15585), (47, 17672, 17794), (47, 19881, 20003), (47, 22090, 22212), (47, 24299, 24421), (47, 26508, 26630), (47, 28717, 28839), (53, 16854, 16976), (53, 19663, 19785), (53, 22472, 22594), (53, 25281, 25403), (53, 28090, 28212), (59, 17405, 17527), (59, 20886, 21008), (59, 24367, 24489), (59, 27848, 27970), (61, 15006, 15006), (61, 18605, 18727), (61, 22326, 22448), (61, 26047, 26169), (61, 29768, 29890), (67, 17956, 18078), (67, 22445, 22567), (67, 26934, 27056), (71, 15123, 15245), (71, 20164, 20286), (71, 25205, 25327), (73, 15987, 16109), (73, 21316, 21438), (73, 26645, 26767), (79, 18723, 18845), (79, 24964, 25086), (83, 20667, 20789), (83, 27556, 27678), (89, 15842, 15964), (89, 23763, 23885), (97, 18818, 18940), (97, 28227, 28349), (101, 20402, 20524), (103, 21218, 21340), (107, 22898, 23020), (109, 23762, 23884), (113, 25538, 25660)]

def row123_layer000_block000 : List ColouredInterval :=
  [(2, 15360, 15482), (2, 16384, 16506), (2, 17408, 17530), (2, 18432, 18554), (2, 19456, 19578), (2, 16384, 16506), (2, 18432, 18554), (2, 20480, 20602), (2, 22528, 22650), (2, 24576, 24698), (2, 26624, 26746), (2, 28672, 28794), (2, 16384, 16506), (2, 20480, 20602), (2, 24576, 24698), (2, 28672, 28794)]

def row123_layer000_block001 : List ColouredInterval :=
  [(2, 16384, 16506), (2, 24576, 24698), (2, 16384, 16506), (3, 19683, 19805), (3, 26244, 26366), (3, 19683, 19805), (5, 15625, 15747), (5, 18750, 18872), (5, 21875, 21997), (5, 25000, 25122), (5, 28125, 28247), (5, 15625, 15747), (7, 16807, 16929), (7, 19208, 19330), (7, 21609, 21731), (7, 24010, 24132)]

def row123_layer000_block002 : List ColouredInterval :=
  [(7, 26411, 26533), (7, 28812, 28934), (7, 16807, 16929), (11, 15972, 16094), (11, 17303, 17425), (11, 18634, 18756), (11, 19965, 20087), (11, 21296, 21418), (11, 22627, 22749), (11, 23958, 24080), (11, 25289, 25411), (11, 29282, 29404), (13, 15379, 15501), (13, 17576, 17698), (13, 19773, 19895), (13, 21970, 22092)]

def row123_layer000_block003 : List ColouredInterval :=
  [(13, 24167, 24289), (13, 26364, 26486), (13, 28561, 28683), (13, 28561, 28683), (17, 19652, 19774), (17, 24565, 24687), (17, 29478, 29600), (19, 20577, 20699), (19, 27436, 27558), (23, 24334, 24456), (29, 15138, 15260), (29, 15979, 16101), (29, 24389, 24511), (31, 15376, 15498), (31, 16337, 16459), (31, 17298, 17420)]

def row123_layer000_block004 : List ColouredInterval :=
  [(31, 18259, 18381), (31, 29791, 29913), (37, 15059, 15181), (37, 16428, 16550), (37, 17797, 17919), (37, 19166, 19288), (37, 20535, 20657), (37, 21904, 22026), (37, 23273, 23395), (37, 24642, 24764), (37, 26011, 26133), (43, 16641, 16763), (43, 18490, 18612), (43, 20339, 20461), (43, 22188, 22310), (43, 24037, 24159)]

def row123_layer000_block005 : List ColouredInterval :=
  [(43, 25886, 26008), (43, 27735, 27857), (43, 29584, 29706), (47, 15463, 15585), (47, 17672, 17794), (47, 19881, 20003), (47, 22090, 22212), (47, 24299, 24421), (47, 26508, 26630), (47, 28717, 28839), (53, 16854, 16976), (53, 19663, 19785), (53, 22472, 22594), (53, 25281, 25403), (53, 28090, 28212), (59, 17405, 17527)]

def row123_layer000_block006 : List ColouredInterval :=
  [(59, 20886, 21008), (59, 24367, 24489), (59, 27848, 27970), (61, 15006, 15006), (61, 18605, 18727), (61, 22326, 22448), (61, 26047, 26169), (61, 29768, 29890), (67, 17956, 18078), (67, 22445, 22567), (67, 26934, 27056), (71, 15123, 15245), (71, 20164, 20286), (71, 25205, 25327), (73, 15987, 16109), (73, 21316, 21438)]

def row123_layer000_block007 : List ColouredInterval :=
  [(73, 26645, 26767), (79, 18723, 18845), (79, 24964, 25086), (83, 20667, 20789), (83, 27556, 27678), (89, 15842, 15964), (89, 23763, 23885), (97, 18818, 18940), (97, 28227, 28349), (101, 20402, 20524), (103, 21218, 21340), (107, 22898, 23020), (109, 23762, 23884), (113, 25538, 25660)]

def row123_layer000_chunks : List (List ColouredInterval) :=
  [row123_layer000_block000, row123_layer000_block001, row123_layer000_block002, row123_layer000_block003, row123_layer000_block004, row123_layer000_block005, row123_layer000_block006, row123_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_arithmetic : LayerArithmeticValid row123.height { lower := 15006, upper := 30012, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_enumeration :
    activePowerIntervalList 123 19 15006 30012 = row123_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_pairs000 :
    row123_layer000_block000.all (fun I => row123_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row123_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_pairs001 :
    row123_layer000_block001.all (fun I => row123_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row123_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_pairs002 :
    row123_layer000_block002.all (fun I => row123_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row123_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_pairs003 :
    row123_layer000_block003.all (fun I => row123_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row123_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_pairs004 :
    row123_layer000_block004.all (fun I => row123_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row123_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_pairs005 :
    row123_layer000_block005.all (fun I => row123_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row123_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_pairs006 :
    row123_layer000_block006.all (fun I => row123_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row123_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_pairs007 :
    row123_layer000_block007.all (fun I => row123_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row123_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_chunks_eq : row123_layer000_chunks.flatten = row123_layer000_intervals := by
  rfl

theorem row123_layer000_pairs : pairCoverCheck row123_layer000_intervals row123_bounds = true := by
  apply pairCoverCheck_of_chunks row123_layer000_chunks_eq
  intro block hblock
  simp only [row123_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row123_layer000_pairs000
  · exact row123_layer000_pairs001
  · exact row123_layer000_pairs002
  · exact row123_layer000_pairs003
  · exact row123_layer000_pairs004
  · exact row123_layer000_pairs005
  · exact row123_layer000_pairs006
  · exact row123_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer000_checked :
    coverLayerCheck row123.height row123.goods { lower := 15006, upper := 30012, M := 19 } = true := by
  exact coverLayerCheck_of_parts row123_layer000_arithmetic row123_layer000_enumeration row123_bounds_eq row123_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer000_checked
