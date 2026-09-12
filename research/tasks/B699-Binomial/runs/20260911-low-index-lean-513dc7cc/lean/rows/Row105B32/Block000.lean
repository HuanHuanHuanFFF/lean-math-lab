import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row105_height : HeightCertificateDatum := { i := 105, r := 34, s := 73, n0Power10 := 9 }

def row105_goods : List GoodSegment := [
  { lower := 212, upper := 315, witness := RowWitness.topPrime 211 },
  { lower := 316, upper := 417, witness := RowWitness.topPrime 313 },
  { lower := 418, upper := 513, witness := RowWitness.topPrime 409 },
  { lower := 514, upper := 613, witness := RowWitness.topPrime 509 },
  { lower := 614, upper := 717, witness := RowWitness.topPrime 613 },
  { lower := 718, upper := 813, witness := RowWitness.topPrime 709 },
  { lower := 814, upper := 915, witness := RowWitness.topPrime 811 },
  { lower := 916, upper := 1015, witness := RowWitness.topPrime 911 },
  { lower := 1016, upper := 1117, witness := RowWitness.topPrime 1013 },
  { lower := 1118, upper := 1221, witness := RowWitness.topPrime 1117 },
  { lower := 1222, upper := 1321, witness := RowWitness.topPrime 1217 },
  { lower := 1322, upper := 1425, witness := RowWitness.topPrime 1321 },
  { lower := 1426, upper := 1527, witness := RowWitness.topPrime 1423 },
  { lower := 1528, upper := 1627, witness := RowWitness.topPrime 1523 },
  { lower := 1628, upper := 1731, witness := RowWitness.topPrime 1627 },
  { lower := 1732, upper := 1827, witness := RowWitness.topPrime 1723 },
  { lower := 1828, upper := 1927, witness := RowWitness.topPrime 1823 },
  { lower := 1928, upper := 2017, witness := RowWitness.topPrime 1913 },
  { lower := 2018, upper := 2121, witness := RowWitness.topPrime 2017 },
  { lower := 2122, upper := 2217, witness := RowWitness.topPrime 2113 },
  { lower := 2218, upper := 2317, witness := RowWitness.topPrime 2213 },
  { lower := 2318, upper := 2415, witness := RowWitness.topPrime 2311 },
  { lower := 2416, upper := 2515, witness := RowWitness.topPrime 2411 },
  { lower := 2516, upper := 2607, witness := RowWitness.topPrime 2503 },
  { lower := 2608, upper := 2697, witness := RowWitness.topPrime 2593 },
  { lower := 2698, upper := 2797, witness := RowWitness.topPrime 2693 },
  { lower := 2798, upper := 2901, witness := RowWitness.topPrime 2797 },
  { lower := 2902, upper := 3001, witness := RowWitness.topPrime 2897 },
  { lower := 3002, upper := 3105, witness := RowWitness.topPrime 3001 },
  { lower := 3106, upper := 3193, witness := RowWitness.topPrime 3089 },
  { lower := 3194, upper := 3295, witness := RowWitness.topPrime 3191 },
  { lower := 3296, upper := 3375, witness := RowWitness.topPrime 3271 },
  { lower := 3376, upper := 3477, witness := RowWitness.topPrime 3373 },
  { lower := 3478, upper := 3573, witness := RowWitness.topPrime 3469 },
  { lower := 3574, upper := 3675, witness := RowWitness.topPrime 3571 },
  { lower := 3676, upper := 3777, witness := RowWitness.topPrime 3673 },
  { lower := 3778, upper := 3873, witness := RowWitness.topPrime 3769 },
  { lower := 3874, upper := 3967, witness := RowWitness.topPrime 3863 },
  { lower := 3968, upper := 4071, witness := RowWitness.topPrime 3967 },
  { lower := 4072, upper := 4161, witness := RowWitness.topPrime 4057 },
  { lower := 4162, upper := 4263, witness := RowWitness.topPrime 4159 },
  { lower := 4264, upper := 4365, witness := RowWitness.topPrime 4261 },
  { lower := 4366, upper := 4467, witness := RowWitness.topPrime 4363 },
  { lower := 4468, upper := 4567, witness := RowWitness.topPrime 4463 },
  { lower := 4568, upper := 4671, witness := RowWitness.topPrime 4567 },
  { lower := 4672, upper := 4767, witness := RowWitness.topPrime 4663 },
  { lower := 4768, upper := 4863, witness := RowWitness.topPrime 4759 },
  { lower := 4864, upper := 4965, witness := RowWitness.topPrime 4861 },
  { lower := 4966, upper := 5061, witness := RowWitness.topPrime 4957 },
  { lower := 5062, upper := 5163, witness := RowWitness.topPrime 5059 },
  { lower := 5164, upper := 5257, witness := RowWitness.topPrime 5153 },
  { lower := 5258, upper := 5341, witness := RowWitness.topPrime 5237 },
  { lower := 5342, upper := 5437, witness := RowWitness.topPrime 5333 },
  { lower := 5438, upper := 5541, witness := RowWitness.topPrime 5437 },
  { lower := 5542, upper := 5635, witness := RowWitness.topPrime 5531 },
  { lower := 5636, upper := 5727, witness := RowWitness.topPrime 5623 },
  { lower := 5728, upper := 5821, witness := RowWitness.topPrime 5717 },
  { lower := 5822, upper := 5925, witness := RowWitness.topPrime 5821 },
  { lower := 5926, upper := 6027, witness := RowWitness.topPrime 5923 },
  { lower := 6028, upper := 6115, witness := RowWitness.topPrime 6011 },
  { lower := 6116, upper := 6217, witness := RowWitness.topPrime 6113 },
  { lower := 6218, upper := 6321, witness := RowWitness.topPrime 6217 },
  { lower := 6322, upper := 6421, witness := RowWitness.topPrime 6317 },
  { lower := 6422, upper := 6525, witness := RowWitness.topPrime 6421 },
  { lower := 6526, upper := 6625, witness := RowWitness.topPrime 6521 },
  { lower := 6626, upper := 6723, witness := RowWitness.topPrime 6619 },
  { lower := 6724, upper := 6823, witness := RowWitness.topPrime 6719 },
  { lower := 6824, upper := 6927, witness := RowWitness.topPrime 6823 },
  { lower := 6928, upper := 7021, witness := RowWitness.topPrime 6917 },
  { lower := 7022, upper := 7123, witness := RowWitness.topPrime 7019 },
  { lower := 7124, upper := 7225, witness := RowWitness.topPrime 7121 },
  { lower := 7226, upper := 7323, witness := RowWitness.topPrime 7219 },
  { lower := 7324, upper := 7425, witness := RowWitness.topPrime 7321 },
  { lower := 7426, upper := 7521, witness := RowWitness.topPrime 7417 },
  { lower := 7522, upper := 7621, witness := RowWitness.topPrime 7517 },
  { lower := 7622, upper := 7725, witness := RowWitness.topPrime 7621 },
  { lower := 7726, upper := 7827, witness := RowWitness.topPrime 7723 },
  { lower := 7828, upper := 7927, witness := RowWitness.topPrime 7823 },
  { lower := 7928, upper := 8031, witness := RowWitness.topPrime 7927 },
  { lower := 8032, upper := 8121, witness := RowWitness.topPrime 8017 },
  { lower := 8122, upper := 8221, witness := RowWitness.topPrime 8117 },
  { lower := 8222, upper := 8325, witness := RowWitness.topPrime 8221 },
  { lower := 8326, upper := 8421, witness := RowWitness.topPrime 8317 },
  { lower := 8422, upper := 8523, witness := RowWitness.topPrime 8419 },
  { lower := 8524, upper := 8625, witness := RowWitness.topPrime 8521 },
  { lower := 8626, upper := 8727, witness := RowWitness.topPrime 8623 },
  { lower := 8728, upper := 8823, witness := RowWitness.topPrime 8719 },
  { lower := 8824, upper := 8925, witness := RowWitness.topPrime 8821 },
  { lower := 8926, upper := 9027, witness := RowWitness.topPrime 8923 },
  { lower := 9028, upper := 9117, witness := RowWitness.topPrime 9013 },
  { lower := 9118, upper := 9213, witness := RowWitness.topPrime 9109 },
  { lower := 9214, upper := 9313, witness := RowWitness.topPrime 9209 },
  { lower := 9314, upper := 9415, witness := RowWitness.topPrime 9311 },
  { lower := 9416, upper := 9517, witness := RowWitness.topPrime 9413 },
  { lower := 9518, upper := 9615, witness := RowWitness.topPrime 9511 },
  { lower := 9616, upper := 9717, witness := RowWitness.topPrime 9613 },
  { lower := 9718, upper := 9801, witness := RowWitness.topPrime 9697 },
  { lower := 9802, upper := 9895, witness := RowWitness.topPrime 9791 },
  { lower := 9896, upper := 9991, witness := RowWitness.topPrime 9887 },
  { lower := 9992, upper := 10077, witness := RowWitness.topPrime 9973 },
  { lower := 10078, upper := 10173, witness := RowWitness.topPrime 10069 },
  { lower := 10174, upper := 10273, witness := RowWitness.topPrime 10169 },
  { lower := 10274, upper := 10377, witness := RowWitness.topPrime 10273 },
  { lower := 10378, upper := 10473, witness := RowWitness.topPrime 10369 },
  { lower := 10474, upper := 10567, witness := RowWitness.topPrime 10463 },
  { lower := 10568, upper := 10671, witness := RowWitness.topPrime 10567 },
  { lower := 10672, upper := 10771, witness := RowWitness.topPrime 10667 },
  { lower := 10772, upper := 10875, witness := RowWitness.topPrime 10771 },
  { lower := 10876, upper := 10919, witness := RowWitness.topPrime 10867 },
  { lower := 10935, upper := 11013, witness := RowWitness.topPrime 10909 },
  { lower := 11014, upper := 11089, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11197, witness := RowWitness.topPrime 11093 },
  { lower := 11198, upper := 11213, witness := RowWitness.topPrime 11197 },
  { lower := 11236, upper := 11317, witness := RowWitness.topPrime 11213 },
  { lower := 11318, upper := 11340, witness := RowWitness.topPrime 11317 },
  { lower := 11774, upper := 11847, witness := RowWitness.topPrime 11743 },
  { lower := 11848, upper := 11878, witness := RowWitness.topPrime 11839 },
  { lower := 12321, upper := 12392, witness := RowWitness.topPrime 12301 },
  { lower := 12493, upper := 12595, witness := RowWitness.topPrime 12491 },
  { lower := 12596, upper := 12597, witness := RowWitness.topPrime 12589 },
  { lower := 12696, upper := 12719, witness := RowWitness.topPrime 12689 },
  { lower := 12800, upper := 12800, witness := RowWitness.topPrime 12799 },
  { lower := 13182, upper := 13281, witness := RowWitness.topPrime 13177 },
  { lower := 13282, upper := 13371, witness := RowWitness.topPrime 13267 },
  { lower := 13372, upper := 13414, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13555, witness := RowWitness.topPrime 13451 },
  { lower := 13556, upper := 13560, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13815, witness := RowWitness.topPrime 13711 },
  { lower := 13816, upper := 13822, witness := RowWitness.topPrime 13807 },
  { lower := 14336, upper := 14401, witness := RowWitness.topPrime 14327 },
  { lower := 14415, upper := 14440, witness := RowWitness.topPrime 14411 },
  { lower := 14739, upper := 14745, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14843, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14896, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15225, witness := RowWitness.topPrime 15121 },
  { lower := 15226, upper := 15233, witness := RowWitness.topPrime 15217 },
  { lower := 15360, upper := 15463, witness := RowWitness.topPrime 15359 },
  { lower := 15464, upper := 15483, witness := RowWitness.topPrime 15461 },
  { lower := 15979, upper := 16077, witness := RowWitness.topPrime 15973 },
  { lower := 16078, upper := 16083, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16485, witness := RowWitness.topPrime 16381 },
  { lower := 16486, upper := 16488, witness := RowWitness.topPrime 16481 },
  { lower := 16810, upper := 16891, witness := RowWitness.topPrime 16787 },
  { lower := 16892, upper := 16924, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17402, witness := RowWitness.topPrime 17299 },
  { lower := 17405, upper := 17505, witness := RowWitness.topPrime 17401 },
  { lower := 17506, upper := 17512, witness := RowWitness.topPrime 17497 },
  { lower := 17576, upper := 17600, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17763, witness := RowWitness.topPrime 17659 },
  { lower := 17764, upper := 17765, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18585, witness := RowWitness.topPrime 18481 },
  { lower := 18586, upper := 18595, witness := RowWitness.topPrime 18583 },
  { lower := 18605, upper := 18606, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18709, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18738, witness := RowWitness.topPrime 18719 },
  { lower := 18818, upper := 18827, witness := RowWitness.topPrime 18803 },
  { lower := 19220, upper := 19270, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19765, witness := RowWitness.topPrime 19661 },
  { lower := 19766, upper := 19767, witness := RowWitness.topPrime 19763 },
  { lower := 19773, upper := 19787, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19985, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20265, witness := RowWitness.topPrime 20161 },
  { lower := 20266, upper := 20285, witness := RowWitness.topPrime 20261 },
  { lower := 20402, upper := 20443, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20506, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20637, witness := RowWitness.topPrime 20533 },
  { lower := 20638, upper := 20639, witness := RowWitness.topPrime 20627 },
  { lower := 20667, upper := 20681, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21246, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21387, witness := RowWitness.topPrime 21283 },
  { lower := 21388, upper := 21400, witness := RowWitness.topPrime 21383 },
  { lower := 21904, upper := 21957, witness := RowWitness.topPrime 21893 },
  { lower := 21970, upper := 22008, witness := RowWitness.topPrime 21961 },
  { lower := 22188, upper := 22194, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22573, witness := RowWitness.topPrime 22469 },
  { lower := 22574, upper := 22576, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22632, witness := RowWitness.topPrime 22621 },
  { lower := 24037, upper := 24062, witness := RowWitness.topPrime 24029 },
  { lower := 24334, upper := 24433, witness := RowWitness.topPrime 24329 },
  { lower := 24434, upper := 24471, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24675, witness := RowWitness.topPrime 24571 },
  { lower := 24676, upper := 24680, witness := RowWitness.topPrime 24671 },
  { lower := 25215, upper := 25293, witness := RowWitness.topPrime 25189 },
  { lower := 25294, upper := 25365, witness := RowWitness.topPrime 25261 },
  { lower := 25366, upper := 25385, witness := RowWitness.topPrime 25357 },
  { lower := 26047, upper := 26115, witness := RowWitness.topPrime 26041 },
  { lower := 26624, upper := 26701, witness := RowWitness.topPrime 26597 },
  { lower := 26702, upper := 26728, witness := RowWitness.topPrime 26701 },
  { lower := 26934, upper := 27000, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27484, witness := RowWitness.topPrime 27431 },
  { lower := 28577, upper := 28665, witness := RowWitness.topPrime 28573 },
  { lower := 28672, upper := 28681, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28776, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29872, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30350, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30824, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31003, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31309, witness := RowWitness.topPrime 31249 },
  { lower := 31329, upper := 31354, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31501, witness := RowWitness.topPrime 31397 },
  { lower := 31502, upper := 31527, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32043, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32872, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33723, witness := RowWitness.topPrime 33619 },
  { lower := 33724, upper := 33724, witness := RowWitness.topPrime 33721 },
  { lower := 34391, upper := 34399, witness := RowWitness.topPrime 34381 },
  { lower := 34445, upper := 34495, witness := RowWitness.topPrime 34439 },
  { lower := 34816, upper := 34911, witness := RowWitness.topPrime 34807 },
  { lower := 34912, upper := 34914, witness := RowWitness.topPrime 34897 },
  { lower := 35152, upper := 35235, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35391, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36601, witness := RowWitness.topPrime 36497 },
  { lower := 36602, upper := 36605, witness := RowWitness.topPrime 36599 },
  { lower := 37303, upper := 37314, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37407, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37453, witness := RowWitness.topPrime 37441 },
  { lower := 37636, upper := 37657, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39427, witness := RowWitness.topPrime 39323 },
  { lower := 39428, upper := 39430, witness := RowWitness.topPrime 39419 },
  { lower := 39605, upper := 39650, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40432, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41035, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41847, witness := RowWitness.topPrime 41771 },
  { lower := 44944, upper := 44994, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48065, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48772, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48838, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49234, witness := RowWitness.topPrime 49139 },
  { lower := 53290, upper := 53352, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55545, witness := RowWitness.topPrime 55441 },
  { lower := 55546, upper := 55551, witness := RowWitness.topPrime 55541 },
  { lower := 58619, upper := 58668, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59060, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59640, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63973, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65625, witness := RowWitness.topPrime 65521 },
  { lower := 65626, upper := 65637, witness := RowWitness.topPrime 65617 },
  { lower := 68651, upper := 68694, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68994, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73271, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73799, witness := RowWitness.topPrime 73727 },
  { lower := 85264, upper := 85273, witness := RowWitness.topPrime 85259 },
  { lower := 85697, upper := 85787, witness := RowWitness.topPrime 85691 },
  { lower := 122412, upper := 122421, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131830, witness := RowWitness.topPrime 131759 },
  { lower := 137917, upper := 137946, witness := RowWitness.topPrime 137911 },
  { lower := 142814, upper := 142909, witness := RowWitness.topPrime 142811 },
  { lower := 146410, upper := 146438, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148981, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327784, witness := RowWitness.topPrime 327689 }
]

def row105_layers : List CoverLayer := [
  { lower := 10920, upper := 21840, M := 25 },
  { lower := 21840, upper := 43680, M := 20 },
  { lower := 43680, upper := 87360, M := 17 },
  { lower := 87360, upper := 174720, M := 14 },
  { lower := 174720, upper := 349440, M := 11 },
  { lower := 349440, upper := 698880, M := 9 },
  { lower := 698880, upper := 1397760, M := 8 },
  { lower := 1397760, upper := 2795520, M := 6 },
  { lower := 2795520, upper := 5591040, M := 5 },
  { lower := 5591040, upper := 11182080, M := 4 },
  { lower := 11182080, upper := 22364160, M := 4 },
  { lower := 22364160, upper := 44728320, M := 3 },
  { lower := 44728320, upper := 89456640, M := 3 },
  { lower := 89456640, upper := 178913280, M := 2 },
  { lower := 178913280, upper := 357826560, M := 2 },
  { lower := 357826560, upper := 715653120, M := 2 },
  { lower := 715653120, upper := 1000000000, M := 1 }
]

def row105 : FiniteCoverRow := {
  height := row105_height,
  goods := row105_goods,
  layers := row105_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good000_checked :
    goodSegmentCheck 105 34 73
      { lower := 212, upper := 315, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good001_checked :
    goodSegmentCheck 105 34 73
      { lower := 316, upper := 417, witness := RowWitness.topPrime 313 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good002_checked :
    goodSegmentCheck 105 34 73
      { lower := 418, upper := 513, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good003_checked :
    goodSegmentCheck 105 34 73
      { lower := 514, upper := 613, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good004_checked :
    goodSegmentCheck 105 34 73
      { lower := 614, upper := 717, witness := RowWitness.topPrime 613 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good005_checked :
    goodSegmentCheck 105 34 73
      { lower := 718, upper := 813, witness := RowWitness.topPrime 709 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good006_checked :
    goodSegmentCheck 105 34 73
      { lower := 814, upper := 915, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good007_checked :
    goodSegmentCheck 105 34 73
      { lower := 916, upper := 1015, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good008_checked :
    goodSegmentCheck 105 34 73
      { lower := 1016, upper := 1117, witness := RowWitness.topPrime 1013 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good009_checked :
    goodSegmentCheck 105 34 73
      { lower := 1118, upper := 1221, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good010_checked :
    goodSegmentCheck 105 34 73
      { lower := 1222, upper := 1321, witness := RowWitness.topPrime 1217 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good011_checked :
    goodSegmentCheck 105 34 73
      { lower := 1322, upper := 1425, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good012_checked :
    goodSegmentCheck 105 34 73
      { lower := 1426, upper := 1527, witness := RowWitness.topPrime 1423 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good013_checked :
    goodSegmentCheck 105 34 73
      { lower := 1528, upper := 1627, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good014_checked :
    goodSegmentCheck 105 34 73
      { lower := 1628, upper := 1731, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good015_checked :
    goodSegmentCheck 105 34 73
      { lower := 1732, upper := 1827, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good016_checked :
    goodSegmentCheck 105 34 73
      { lower := 1828, upper := 1927, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good017_checked :
    goodSegmentCheck 105 34 73
      { lower := 1928, upper := 2017, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good018_checked :
    goodSegmentCheck 105 34 73
      { lower := 2018, upper := 2121, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good019_checked :
    goodSegmentCheck 105 34 73
      { lower := 2122, upper := 2217, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good020_checked :
    goodSegmentCheck 105 34 73
      { lower := 2218, upper := 2317, witness := RowWitness.topPrime 2213 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good021_checked :
    goodSegmentCheck 105 34 73
      { lower := 2318, upper := 2415, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good022_checked :
    goodSegmentCheck 105 34 73
      { lower := 2416, upper := 2515, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good023_checked :
    goodSegmentCheck 105 34 73
      { lower := 2516, upper := 2607, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good024_checked :
    goodSegmentCheck 105 34 73
      { lower := 2608, upper := 2697, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good025_checked :
    goodSegmentCheck 105 34 73
      { lower := 2698, upper := 2797, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good026_checked :
    goodSegmentCheck 105 34 73
      { lower := 2798, upper := 2901, witness := RowWitness.topPrime 2797 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good027_checked :
    goodSegmentCheck 105 34 73
      { lower := 2902, upper := 3001, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good028_checked :
    goodSegmentCheck 105 34 73
      { lower := 3002, upper := 3105, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good029_checked :
    goodSegmentCheck 105 34 73
      { lower := 3106, upper := 3193, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good030_checked :
    goodSegmentCheck 105 34 73
      { lower := 3194, upper := 3295, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good031_checked :
    goodSegmentCheck 105 34 73
      { lower := 3296, upper := 3375, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good032_checked :
    goodSegmentCheck 105 34 73
      { lower := 3376, upper := 3477, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good033_checked :
    goodSegmentCheck 105 34 73
      { lower := 3478, upper := 3573, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good034_checked :
    goodSegmentCheck 105 34 73
      { lower := 3574, upper := 3675, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good035_checked :
    goodSegmentCheck 105 34 73
      { lower := 3676, upper := 3777, witness := RowWitness.topPrime 3673 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good036_checked :
    goodSegmentCheck 105 34 73
      { lower := 3778, upper := 3873, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good037_checked :
    goodSegmentCheck 105 34 73
      { lower := 3874, upper := 3967, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good038_checked :
    goodSegmentCheck 105 34 73
      { lower := 3968, upper := 4071, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good039_checked :
    goodSegmentCheck 105 34 73
      { lower := 4072, upper := 4161, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good040_checked :
    goodSegmentCheck 105 34 73
      { lower := 4162, upper := 4263, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good041_checked :
    goodSegmentCheck 105 34 73
      { lower := 4264, upper := 4365, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good042_checked :
    goodSegmentCheck 105 34 73
      { lower := 4366, upper := 4467, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good043_checked :
    goodSegmentCheck 105 34 73
      { lower := 4468, upper := 4567, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good044_checked :
    goodSegmentCheck 105 34 73
      { lower := 4568, upper := 4671, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good045_checked :
    goodSegmentCheck 105 34 73
      { lower := 4672, upper := 4767, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good046_checked :
    goodSegmentCheck 105 34 73
      { lower := 4768, upper := 4863, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good047_checked :
    goodSegmentCheck 105 34 73
      { lower := 4864, upper := 4965, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good048_checked :
    goodSegmentCheck 105 34 73
      { lower := 4966, upper := 5061, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good049_checked :
    goodSegmentCheck 105 34 73
      { lower := 5062, upper := 5163, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good050_checked :
    goodSegmentCheck 105 34 73
      { lower := 5164, upper := 5257, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good051_checked :
    goodSegmentCheck 105 34 73
      { lower := 5258, upper := 5341, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good052_checked :
    goodSegmentCheck 105 34 73
      { lower := 5342, upper := 5437, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good053_checked :
    goodSegmentCheck 105 34 73
      { lower := 5438, upper := 5541, witness := RowWitness.topPrime 5437 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good054_checked :
    goodSegmentCheck 105 34 73
      { lower := 5542, upper := 5635, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good055_checked :
    goodSegmentCheck 105 34 73
      { lower := 5636, upper := 5727, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good056_checked :
    goodSegmentCheck 105 34 73
      { lower := 5728, upper := 5821, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good057_checked :
    goodSegmentCheck 105 34 73
      { lower := 5822, upper := 5925, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good058_checked :
    goodSegmentCheck 105 34 73
      { lower := 5926, upper := 6027, witness := RowWitness.topPrime 5923 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good059_checked :
    goodSegmentCheck 105 34 73
      { lower := 6028, upper := 6115, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good060_checked :
    goodSegmentCheck 105 34 73
      { lower := 6116, upper := 6217, witness := RowWitness.topPrime 6113 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good061_checked :
    goodSegmentCheck 105 34 73
      { lower := 6218, upper := 6321, witness := RowWitness.topPrime 6217 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good062_checked :
    goodSegmentCheck 105 34 73
      { lower := 6322, upper := 6421, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good063_checked :
    goodSegmentCheck 105 34 73
      { lower := 6422, upper := 6525, witness := RowWitness.topPrime 6421 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good064_checked :
    goodSegmentCheck 105 34 73
      { lower := 6526, upper := 6625, witness := RowWitness.topPrime 6521 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good065_checked :
    goodSegmentCheck 105 34 73
      { lower := 6626, upper := 6723, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good066_checked :
    goodSegmentCheck 105 34 73
      { lower := 6724, upper := 6823, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good067_checked :
    goodSegmentCheck 105 34 73
      { lower := 6824, upper := 6927, witness := RowWitness.topPrime 6823 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good068_checked :
    goodSegmentCheck 105 34 73
      { lower := 6928, upper := 7021, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good069_checked :
    goodSegmentCheck 105 34 73
      { lower := 7022, upper := 7123, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good070_checked :
    goodSegmentCheck 105 34 73
      { lower := 7124, upper := 7225, witness := RowWitness.topPrime 7121 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good071_checked :
    goodSegmentCheck 105 34 73
      { lower := 7226, upper := 7323, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good072_checked :
    goodSegmentCheck 105 34 73
      { lower := 7324, upper := 7425, witness := RowWitness.topPrime 7321 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good073_checked :
    goodSegmentCheck 105 34 73
      { lower := 7426, upper := 7521, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good074_checked :
    goodSegmentCheck 105 34 73
      { lower := 7522, upper := 7621, witness := RowWitness.topPrime 7517 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good075_checked :
    goodSegmentCheck 105 34 73
      { lower := 7622, upper := 7725, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good076_checked :
    goodSegmentCheck 105 34 73
      { lower := 7726, upper := 7827, witness := RowWitness.topPrime 7723 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good077_checked :
    goodSegmentCheck 105 34 73
      { lower := 7828, upper := 7927, witness := RowWitness.topPrime 7823 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good078_checked :
    goodSegmentCheck 105 34 73
      { lower := 7928, upper := 8031, witness := RowWitness.topPrime 7927 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good079_checked :
    goodSegmentCheck 105 34 73
      { lower := 8032, upper := 8121, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good080_checked :
    goodSegmentCheck 105 34 73
      { lower := 8122, upper := 8221, witness := RowWitness.topPrime 8117 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good081_checked :
    goodSegmentCheck 105 34 73
      { lower := 8222, upper := 8325, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good082_checked :
    goodSegmentCheck 105 34 73
      { lower := 8326, upper := 8421, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good083_checked :
    goodSegmentCheck 105 34 73
      { lower := 8422, upper := 8523, witness := RowWitness.topPrime 8419 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good084_checked :
    goodSegmentCheck 105 34 73
      { lower := 8524, upper := 8625, witness := RowWitness.topPrime 8521 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good085_checked :
    goodSegmentCheck 105 34 73
      { lower := 8626, upper := 8727, witness := RowWitness.topPrime 8623 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good086_checked :
    goodSegmentCheck 105 34 73
      { lower := 8728, upper := 8823, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good087_checked :
    goodSegmentCheck 105 34 73
      { lower := 8824, upper := 8925, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good088_checked :
    goodSegmentCheck 105 34 73
      { lower := 8926, upper := 9027, witness := RowWitness.topPrime 8923 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good089_checked :
    goodSegmentCheck 105 34 73
      { lower := 9028, upper := 9117, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good090_checked :
    goodSegmentCheck 105 34 73
      { lower := 9118, upper := 9213, witness := RowWitness.topPrime 9109 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good091_checked :
    goodSegmentCheck 105 34 73
      { lower := 9214, upper := 9313, witness := RowWitness.topPrime 9209 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good092_checked :
    goodSegmentCheck 105 34 73
      { lower := 9314, upper := 9415, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good093_checked :
    goodSegmentCheck 105 34 73
      { lower := 9416, upper := 9517, witness := RowWitness.topPrime 9413 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good094_checked :
    goodSegmentCheck 105 34 73
      { lower := 9518, upper := 9615, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good095_checked :
    goodSegmentCheck 105 34 73
      { lower := 9616, upper := 9717, witness := RowWitness.topPrime 9613 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good096_checked :
    goodSegmentCheck 105 34 73
      { lower := 9718, upper := 9801, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good097_checked :
    goodSegmentCheck 105 34 73
      { lower := 9802, upper := 9895, witness := RowWitness.topPrime 9791 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good098_checked :
    goodSegmentCheck 105 34 73
      { lower := 9896, upper := 9991, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good099_checked :
    goodSegmentCheck 105 34 73
      { lower := 9992, upper := 10077, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good100_checked :
    goodSegmentCheck 105 34 73
      { lower := 10078, upper := 10173, witness := RowWitness.topPrime 10069 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good101_checked :
    goodSegmentCheck 105 34 73
      { lower := 10174, upper := 10273, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good102_checked :
    goodSegmentCheck 105 34 73
      { lower := 10274, upper := 10377, witness := RowWitness.topPrime 10273 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good103_checked :
    goodSegmentCheck 105 34 73
      { lower := 10378, upper := 10473, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good104_checked :
    goodSegmentCheck 105 34 73
      { lower := 10474, upper := 10567, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good105_checked :
    goodSegmentCheck 105 34 73
      { lower := 10568, upper := 10671, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good106_checked :
    goodSegmentCheck 105 34 73
      { lower := 10672, upper := 10771, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good107_checked :
    goodSegmentCheck 105 34 73
      { lower := 10772, upper := 10875, witness := RowWitness.topPrime 10771 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good108_checked :
    goodSegmentCheck 105 34 73
      { lower := 10876, upper := 10919, witness := RowWitness.topPrime 10867 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good109_checked :
    goodSegmentCheck 105 34 73
      { lower := 10935, upper := 11013, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good110_checked :
    goodSegmentCheck 105 34 73
      { lower := 11014, upper := 11089, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good111_checked :
    goodSegmentCheck 105 34 73
      { lower := 11094, upper := 11197, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good112_checked :
    goodSegmentCheck 105 34 73
      { lower := 11198, upper := 11213, witness := RowWitness.topPrime 11197 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good113_checked :
    goodSegmentCheck 105 34 73
      { lower := 11236, upper := 11317, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good114_checked :
    goodSegmentCheck 105 34 73
      { lower := 11318, upper := 11340, witness := RowWitness.topPrime 11317 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good115_checked :
    goodSegmentCheck 105 34 73
      { lower := 11774, upper := 11847, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good116_checked :
    goodSegmentCheck 105 34 73
      { lower := 11848, upper := 11878, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good117_checked :
    goodSegmentCheck 105 34 73
      { lower := 12321, upper := 12392, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good118_checked :
    goodSegmentCheck 105 34 73
      { lower := 12493, upper := 12595, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good119_checked :
    goodSegmentCheck 105 34 73
      { lower := 12596, upper := 12597, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good120_checked :
    goodSegmentCheck 105 34 73
      { lower := 12696, upper := 12719, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good121_checked :
    goodSegmentCheck 105 34 73
      { lower := 12800, upper := 12800, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good122_checked :
    goodSegmentCheck 105 34 73
      { lower := 13182, upper := 13281, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good123_checked :
    goodSegmentCheck 105 34 73
      { lower := 13282, upper := 13371, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good124_checked :
    goodSegmentCheck 105 34 73
      { lower := 13372, upper := 13414, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good125_checked :
    goodSegmentCheck 105 34 73
      { lower := 13454, upper := 13555, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good126_checked :
    goodSegmentCheck 105 34 73
      { lower := 13556, upper := 13560, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good127_checked :
    goodSegmentCheck 105 34 73
      { lower := 13718, upper := 13815, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good128_checked :
    goodSegmentCheck 105 34 73
      { lower := 13816, upper := 13822, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good129_checked :
    goodSegmentCheck 105 34 73
      { lower := 14336, upper := 14401, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good130_checked :
    goodSegmentCheck 105 34 73
      { lower := 14415, upper := 14440, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good131_checked :
    goodSegmentCheck 105 34 73
      { lower := 14739, upper := 14745, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good132_checked :
    goodSegmentCheck 105 34 73
      { lower := 14792, upper := 14843, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good133_checked :
    goodSegmentCheck 105 34 73
      { lower := 14884, upper := 14896, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good134_checked :
    goodSegmentCheck 105 34 73
      { lower := 15123, upper := 15225, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good135_checked :
    goodSegmentCheck 105 34 73
      { lower := 15226, upper := 15233, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good136_checked :
    goodSegmentCheck 105 34 73
      { lower := 15360, upper := 15463, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good137_checked :
    goodSegmentCheck 105 34 73
      { lower := 15464, upper := 15483, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good138_checked :
    goodSegmentCheck 105 34 73
      { lower := 15979, upper := 16077, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good139_checked :
    goodSegmentCheck 105 34 73
      { lower := 16078, upper := 16083, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good140_checked :
    goodSegmentCheck 105 34 73
      { lower := 16384, upper := 16485, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good141_checked :
    goodSegmentCheck 105 34 73
      { lower := 16486, upper := 16488, witness := RowWitness.topPrime 16481 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good142_checked :
    goodSegmentCheck 105 34 73
      { lower := 16810, upper := 16891, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good143_checked :
    goodSegmentCheck 105 34 73
      { lower := 16892, upper := 16924, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good144_checked :
    goodSegmentCheck 105 34 73
      { lower := 17303, upper := 17402, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good145_checked :
    goodSegmentCheck 105 34 73
      { lower := 17405, upper := 17505, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good146_checked :
    goodSegmentCheck 105 34 73
      { lower := 17506, upper := 17512, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good147_checked :
    goodSegmentCheck 105 34 73
      { lower := 17576, upper := 17600, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good148_checked :
    goodSegmentCheck 105 34 73
      { lower := 17661, upper := 17763, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good149_checked :
    goodSegmentCheck 105 34 73
      { lower := 17764, upper := 17765, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good150_checked :
    goodSegmentCheck 105 34 73
      { lower := 18490, upper := 18585, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good151_checked :
    goodSegmentCheck 105 34 73
      { lower := 18586, upper := 18595, witness := RowWitness.topPrime 18583 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good152_checked :
    goodSegmentCheck 105 34 73
      { lower := 18605, upper := 18606, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good153_checked :
    goodSegmentCheck 105 34 73
      { lower := 18634, upper := 18709, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good154_checked :
    goodSegmentCheck 105 34 73
      { lower := 18723, upper := 18738, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good155_checked :
    goodSegmentCheck 105 34 73
      { lower := 18818, upper := 18827, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good156_checked :
    goodSegmentCheck 105 34 73
      { lower := 19220, upper := 19270, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good157_checked :
    goodSegmentCheck 105 34 73
      { lower := 19663, upper := 19765, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good158_checked :
    goodSegmentCheck 105 34 73
      { lower := 19766, upper := 19767, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good159_checked :
    goodSegmentCheck 105 34 73
      { lower := 19773, upper := 19787, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good160_checked :
    goodSegmentCheck 105 34 73
      { lower := 19965, upper := 19985, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good161_checked :
    goodSegmentCheck 105 34 73
      { lower := 20172, upper := 20265, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good162_checked :
    goodSegmentCheck 105 34 73
      { lower := 20266, upper := 20285, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good163_checked :
    goodSegmentCheck 105 34 73
      { lower := 20402, upper := 20443, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good164_checked :
    goodSegmentCheck 105 34 73
      { lower := 20480, upper := 20506, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good165_checked :
    goodSegmentCheck 105 34 73
      { lower := 20535, upper := 20637, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good166_checked :
    goodSegmentCheck 105 34 73
      { lower := 20638, upper := 20639, witness := RowWitness.topPrime 20627 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good167_checked :
    goodSegmentCheck 105 34 73
      { lower := 20667, upper := 20681, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good168_checked :
    goodSegmentCheck 105 34 73
      { lower := 21218, upper := 21246, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good169_checked :
    goodSegmentCheck 105 34 73
      { lower := 21296, upper := 21387, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good170_checked :
    goodSegmentCheck 105 34 73
      { lower := 21388, upper := 21400, witness := RowWitness.topPrime 21383 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good171_checked :
    goodSegmentCheck 105 34 73
      { lower := 21904, upper := 21957, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good172_checked :
    goodSegmentCheck 105 34 73
      { lower := 21970, upper := 22008, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good173_checked :
    goodSegmentCheck 105 34 73
      { lower := 22188, upper := 22194, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good174_checked :
    goodSegmentCheck 105 34 73
      { lower := 22472, upper := 22573, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good175_checked :
    goodSegmentCheck 105 34 73
      { lower := 22574, upper := 22576, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good176_checked :
    goodSegmentCheck 105 34 73
      { lower := 22627, upper := 22632, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good177_checked :
    goodSegmentCheck 105 34 73
      { lower := 24037, upper := 24062, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good178_checked :
    goodSegmentCheck 105 34 73
      { lower := 24334, upper := 24433, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good179_checked :
    goodSegmentCheck 105 34 73
      { lower := 24434, upper := 24471, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good180_checked :
    goodSegmentCheck 105 34 73
      { lower := 24576, upper := 24675, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good181_checked :
    goodSegmentCheck 105 34 73
      { lower := 24676, upper := 24680, witness := RowWitness.topPrime 24671 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good182_checked :
    goodSegmentCheck 105 34 73
      { lower := 25215, upper := 25293, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good183_checked :
    goodSegmentCheck 105 34 73
      { lower := 25294, upper := 25365, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good184_checked :
    goodSegmentCheck 105 34 73
      { lower := 25366, upper := 25385, witness := RowWitness.topPrime 25357 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good185_checked :
    goodSegmentCheck 105 34 73
      { lower := 26047, upper := 26115, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good186_checked :
    goodSegmentCheck 105 34 73
      { lower := 26624, upper := 26701, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good187_checked :
    goodSegmentCheck 105 34 73
      { lower := 26702, upper := 26728, witness := RowWitness.topPrime 26701 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good188_checked :
    goodSegmentCheck 105 34 73
      { lower := 26934, upper := 27000, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good189_checked :
    goodSegmentCheck 105 34 73
      { lower := 27436, upper := 27484, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good190_checked :
    goodSegmentCheck 105 34 73
      { lower := 28577, upper := 28665, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good191_checked :
    goodSegmentCheck 105 34 73
      { lower := 28672, upper := 28681, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good192_checked :
    goodSegmentCheck 105 34 73
      { lower := 28717, upper := 28776, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good193_checked :
    goodSegmentCheck 105 34 73
      { lower := 29791, upper := 29872, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good194_checked :
    goodSegmentCheck 105 34 73
      { lower := 30258, upper := 30350, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good195_checked :
    goodSegmentCheck 105 34 73
      { lower := 30758, upper := 30824, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good196_checked :
    goodSegmentCheck 105 34 73
      { lower := 30926, upper := 31003, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good197_checked :
    goodSegmentCheck 105 34 73
      { lower := 31250, upper := 31309, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good198_checked :
    goodSegmentCheck 105 34 73
      { lower := 31329, upper := 31354, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good199_checked :
    goodSegmentCheck 105 34 73
      { lower := 31423, upper := 31501, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good200_checked :
    goodSegmentCheck 105 34 73
      { lower := 31502, upper := 31527, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good201_checked :
    goodSegmentCheck 105 34 73
      { lower := 31974, upper := 32043, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good202_checked :
    goodSegmentCheck 105 34 73
      { lower := 32805, upper := 32872, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good203_checked :
    goodSegmentCheck 105 34 73
      { lower := 33620, upper := 33723, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good204_checked :
    goodSegmentCheck 105 34 73
      { lower := 33724, upper := 33724, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good205_checked :
    goodSegmentCheck 105 34 73
      { lower := 34391, upper := 34399, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good206_checked :
    goodSegmentCheck 105 34 73
      { lower := 34445, upper := 34495, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good207_checked :
    goodSegmentCheck 105 34 73
      { lower := 34816, upper := 34911, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good208_checked :
    goodSegmentCheck 105 34 73
      { lower := 34912, upper := 34914, witness := RowWitness.topPrime 34897 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good209_checked :
    goodSegmentCheck 105 34 73
      { lower := 35152, upper := 35235, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good210_checked :
    goodSegmentCheck 105 34 73
      { lower := 35344, upper := 35391, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good211_checked :
    goodSegmentCheck 105 34 73
      { lower := 36517, upper := 36601, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good212_checked :
    goodSegmentCheck 105 34 73
      { lower := 36602, upper := 36605, witness := RowWitness.topPrime 36599 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good213_checked :
    goodSegmentCheck 105 34 73
      { lower := 37303, upper := 37314, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good214_checked :
    goodSegmentCheck 105 34 73
      { lower := 37349, upper := 37407, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good215_checked :
    goodSegmentCheck 105 34 73
      { lower := 37446, upper := 37453, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good216_checked :
    goodSegmentCheck 105 34 73
      { lower := 37636, upper := 37657, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good217_checked :
    goodSegmentCheck 105 34 73
      { lower := 39326, upper := 39427, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good218_checked :
    goodSegmentCheck 105 34 73
      { lower := 39428, upper := 39430, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good219_checked :
    goodSegmentCheck 105 34 73
      { lower := 39605, upper := 39650, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good220_checked :
    goodSegmentCheck 105 34 73
      { lower := 40401, upper := 40432, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good221_checked :
    goodSegmentCheck 105 34 73
      { lower := 40960, upper := 41035, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good222_checked :
    goodSegmentCheck 105 34 73
      { lower := 41772, upper := 41847, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good223_checked :
    goodSegmentCheck 105 34 73
      { lower := 44944, upper := 44994, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good224_checked :
    goodSegmentCheck 105 34 73
      { lower := 48013, upper := 48065, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good225_checked :
    goodSegmentCheck 105 34 73
      { lower := 48734, upper := 48772, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good226_checked :
    goodSegmentCheck 105 34 73
      { lower := 48778, upper := 48838, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good227_checked :
    goodSegmentCheck 105 34 73
      { lower := 49152, upper := 49234, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good228_checked :
    goodSegmentCheck 105 34 73
      { lower := 53290, upper := 53352, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good229_checked :
    goodSegmentCheck 105 34 73
      { lower := 55451, upper := 55545, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good230_checked :
    goodSegmentCheck 105 34 73
      { lower := 55546, upper := 55551, witness := RowWitness.topPrime 55541 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good231_checked :
    goodSegmentCheck 105 34 73
      { lower := 58619, upper := 58668, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good232_checked :
    goodSegmentCheck 105 34 73
      { lower := 59049, upper := 59060, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good233_checked :
    goodSegmentCheck 105 34 73
      { lower := 59582, upper := 59640, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good234_checked :
    goodSegmentCheck 105 34 73
      { lower := 63948, upper := 63973, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good235_checked :
    goodSegmentCheck 105 34 73
      { lower := 65536, upper := 65625, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good236_checked :
    goodSegmentCheck 105 34 73
      { lower := 65626, upper := 65637, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good237_checked :
    goodSegmentCheck 105 34 73
      { lower := 68651, upper := 68694, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good238_checked :
    goodSegmentCheck 105 34 73
      { lower := 68921, upper := 68994, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good239_checked :
    goodSegmentCheck 105 34 73
      { lower := 73205, upper := 73271, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_good240_checked :
    goodSegmentCheck 105 34 73
      { lower := 73728, upper := 73799, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good241_checked :
    goodSegmentCheck 105 34 73
      { lower := 85264, upper := 85273, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good242_checked :
    goodSegmentCheck 105 34 73
      { lower := 85697, upper := 85787, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good243_checked :
    goodSegmentCheck 105 34 73
      { lower := 122412, upper := 122421, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good244_checked :
    goodSegmentCheck 105 34 73
      { lower := 131769, upper := 131830, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good245_checked :
    goodSegmentCheck 105 34 73
      { lower := 137917, upper := 137946, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good246_checked :
    goodSegmentCheck 105 34 73
      { lower := 142814, upper := 142909, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good247_checked :
    goodSegmentCheck 105 34 73
      { lower := 146410, upper := 146438, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good248_checked :
    goodSegmentCheck 105 34 73
      { lower := 148955, upper := 148981, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row105_good249_checked :
    goodSegmentCheck 105 34 73
      { lower := 327701, upper := 327784, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 105) (r := 34) (s := 73) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_good249_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_goods_checked :
    row105.goods.all (goodSegmentCheck row105.height.i row105.height.r row105.height.s) = true := by
  change row105_goods.all (goodSegmentCheck 105 34 73) = true
  simp only [row105_goods, List.all_cons, List.all_nil,
    row105_good000_checked,
    row105_good001_checked,
    row105_good002_checked,
    row105_good003_checked,
    row105_good004_checked,
    row105_good005_checked,
    row105_good006_checked,
    row105_good007_checked,
    row105_good008_checked,
    row105_good009_checked,
    row105_good010_checked,
    row105_good011_checked,
    row105_good012_checked,
    row105_good013_checked,
    row105_good014_checked,
    row105_good015_checked,
    row105_good016_checked,
    row105_good017_checked,
    row105_good018_checked,
    row105_good019_checked,
    row105_good020_checked,
    row105_good021_checked,
    row105_good022_checked,
    row105_good023_checked,
    row105_good024_checked,
    row105_good025_checked,
    row105_good026_checked,
    row105_good027_checked,
    row105_good028_checked,
    row105_good029_checked,
    row105_good030_checked,
    row105_good031_checked,
    row105_good032_checked,
    row105_good033_checked,
    row105_good034_checked,
    row105_good035_checked,
    row105_good036_checked,
    row105_good037_checked,
    row105_good038_checked,
    row105_good039_checked,
    row105_good040_checked,
    row105_good041_checked,
    row105_good042_checked,
    row105_good043_checked,
    row105_good044_checked,
    row105_good045_checked,
    row105_good046_checked,
    row105_good047_checked,
    row105_good048_checked,
    row105_good049_checked,
    row105_good050_checked,
    row105_good051_checked,
    row105_good052_checked,
    row105_good053_checked,
    row105_good054_checked,
    row105_good055_checked,
    row105_good056_checked,
    row105_good057_checked,
    row105_good058_checked,
    row105_good059_checked,
    row105_good060_checked,
    row105_good061_checked,
    row105_good062_checked,
    row105_good063_checked,
    row105_good064_checked,
    row105_good065_checked,
    row105_good066_checked,
    row105_good067_checked,
    row105_good068_checked,
    row105_good069_checked,
    row105_good070_checked,
    row105_good071_checked,
    row105_good072_checked,
    row105_good073_checked,
    row105_good074_checked,
    row105_good075_checked,
    row105_good076_checked,
    row105_good077_checked,
    row105_good078_checked,
    row105_good079_checked,
    row105_good080_checked,
    row105_good081_checked,
    row105_good082_checked,
    row105_good083_checked,
    row105_good084_checked,
    row105_good085_checked,
    row105_good086_checked,
    row105_good087_checked,
    row105_good088_checked,
    row105_good089_checked,
    row105_good090_checked,
    row105_good091_checked,
    row105_good092_checked,
    row105_good093_checked,
    row105_good094_checked,
    row105_good095_checked,
    row105_good096_checked,
    row105_good097_checked,
    row105_good098_checked,
    row105_good099_checked,
    row105_good100_checked,
    row105_good101_checked,
    row105_good102_checked,
    row105_good103_checked,
    row105_good104_checked,
    row105_good105_checked,
    row105_good106_checked,
    row105_good107_checked,
    row105_good108_checked,
    row105_good109_checked,
    row105_good110_checked,
    row105_good111_checked,
    row105_good112_checked,
    row105_good113_checked,
    row105_good114_checked,
    row105_good115_checked,
    row105_good116_checked,
    row105_good117_checked,
    row105_good118_checked,
    row105_good119_checked,
    row105_good120_checked,
    row105_good121_checked,
    row105_good122_checked,
    row105_good123_checked,
    row105_good124_checked,
    row105_good125_checked,
    row105_good126_checked,
    row105_good127_checked,
    row105_good128_checked,
    row105_good129_checked,
    row105_good130_checked,
    row105_good131_checked,
    row105_good132_checked,
    row105_good133_checked,
    row105_good134_checked,
    row105_good135_checked,
    row105_good136_checked,
    row105_good137_checked,
    row105_good138_checked,
    row105_good139_checked,
    row105_good140_checked,
    row105_good141_checked,
    row105_good142_checked,
    row105_good143_checked,
    row105_good144_checked,
    row105_good145_checked,
    row105_good146_checked,
    row105_good147_checked,
    row105_good148_checked,
    row105_good149_checked,
    row105_good150_checked,
    row105_good151_checked,
    row105_good152_checked,
    row105_good153_checked,
    row105_good154_checked,
    row105_good155_checked,
    row105_good156_checked,
    row105_good157_checked,
    row105_good158_checked,
    row105_good159_checked,
    row105_good160_checked,
    row105_good161_checked,
    row105_good162_checked,
    row105_good163_checked,
    row105_good164_checked,
    row105_good165_checked,
    row105_good166_checked,
    row105_good167_checked,
    row105_good168_checked,
    row105_good169_checked,
    row105_good170_checked,
    row105_good171_checked,
    row105_good172_checked,
    row105_good173_checked,
    row105_good174_checked,
    row105_good175_checked,
    row105_good176_checked,
    row105_good177_checked,
    row105_good178_checked,
    row105_good179_checked,
    row105_good180_checked,
    row105_good181_checked,
    row105_good182_checked,
    row105_good183_checked,
    row105_good184_checked,
    row105_good185_checked,
    row105_good186_checked,
    row105_good187_checked,
    row105_good188_checked,
    row105_good189_checked,
    row105_good190_checked,
    row105_good191_checked,
    row105_good192_checked,
    row105_good193_checked,
    row105_good194_checked,
    row105_good195_checked,
    row105_good196_checked,
    row105_good197_checked,
    row105_good198_checked,
    row105_good199_checked,
    row105_good200_checked,
    row105_good201_checked,
    row105_good202_checked,
    row105_good203_checked,
    row105_good204_checked,
    row105_good205_checked,
    row105_good206_checked,
    row105_good207_checked,
    row105_good208_checked,
    row105_good209_checked,
    row105_good210_checked,
    row105_good211_checked,
    row105_good212_checked,
    row105_good213_checked,
    row105_good214_checked,
    row105_good215_checked,
    row105_good216_checked,
    row105_good217_checked,
    row105_good218_checked,
    row105_good219_checked,
    row105_good220_checked,
    row105_good221_checked,
    row105_good222_checked,
    row105_good223_checked,
    row105_good224_checked,
    row105_good225_checked,
    row105_good226_checked,
    row105_good227_checked,
    row105_good228_checked,
    row105_good229_checked,
    row105_good230_checked,
    row105_good231_checked,
    row105_good232_checked,
    row105_good233_checked,
    row105_good234_checked,
    row105_good235_checked,
    row105_good236_checked,
    row105_good237_checked,
    row105_good238_checked,
    row105_good239_checked,
    row105_good240_checked,
    row105_good241_checked,
    row105_good242_checked,
    row105_good243_checked,
    row105_good244_checked,
    row105_good245_checked,
    row105_good246_checked,
    row105_good247_checked,
    row105_good248_checked,
    row105_good249_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_registered :
    decide (row105.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row105_small_checked :
    coverCheck (2 * row105.height.i + 2) (row105.height.i * (row105.height.i - 1) - 1)
      (row105.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row105_layerCover_checked :
    coverCheck (row105.height.i * (row105.height.i - 1)) (row105.height.n0 - 1)
      (row105.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row105_bounds : List NatInterval :=
  [(212, 315), (316, 417), (418, 513), (514, 613), (614, 717), (718, 813), (814, 915), (916, 1015), (1016, 1117), (1118, 1221), (1222, 1321), (1322, 1425), (1426, 1527), (1528, 1627), (1628, 1731), (1732, 1827), (1828, 1927), (1928, 2017), (2018, 2121), (2122, 2217), (2218, 2317), (2318, 2415), (2416, 2515), (2516, 2607), (2608, 2697), (2698, 2797), (2798, 2901), (2902, 3001), (3002, 3105), (3106, 3193), (3194, 3295), (3296, 3375), (3376, 3477), (3478, 3573), (3574, 3675), (3676, 3777), (3778, 3873), (3874, 3967), (3968, 4071), (4072, 4161), (4162, 4263), (4264, 4365), (4366, 4467), (4468, 4567), (4568, 4671), (4672, 4767), (4768, 4863), (4864, 4965), (4966, 5061), (5062, 5163), (5164, 5257), (5258, 5341), (5342, 5437), (5438, 5541), (5542, 5635), (5636, 5727), (5728, 5821), (5822, 5925), (5926, 6027), (6028, 6115), (6116, 6217), (6218, 6321), (6322, 6421), (6422, 6525), (6526, 6625), (6626, 6723), (6724, 6823), (6824, 6927), (6928, 7021), (7022, 7123), (7124, 7225), (7226, 7323), (7324, 7425), (7426, 7521), (7522, 7621), (7622, 7725), (7726, 7827), (7828, 7927), (7928, 8031), (8032, 8121), (8122, 8221), (8222, 8325), (8326, 8421), (8422, 8523), (8524, 8625), (8626, 8727), (8728, 8823), (8824, 8925), (8926, 9027), (9028, 9117), (9118, 9213), (9214, 9313), (9314, 9415), (9416, 9517), (9518, 9615), (9616, 9717), (9718, 9801), (9802, 9895), (9896, 9991), (9992, 10077), (10078, 10173), (10174, 10273), (10274, 10377), (10378, 10473), (10474, 10567), (10568, 10671), (10672, 10771), (10772, 10875), (10876, 10919), (10935, 11013), (11014, 11089), (11094, 11197), (11198, 11213), (11236, 11317), (11318, 11340), (11774, 11847), (11848, 11878), (12321, 12392), (12493, 12595), (12596, 12597), (12696, 12719), (12800, 12800), (13182, 13281), (13282, 13371), (13372, 13414), (13454, 13555), (13556, 13560), (13718, 13815), (13816, 13822), (14336, 14401), (14415, 14440), (14739, 14745), (14792, 14843), (14884, 14896), (15123, 15225), (15226, 15233), (15360, 15463), (15464, 15483), (15979, 16077), (16078, 16083), (16384, 16485), (16486, 16488), (16810, 16891), (16892, 16924), (17303, 17402), (17405, 17505), (17506, 17512), (17576, 17600), (17661, 17763), (17764, 17765), (18490, 18585), (18586, 18595), (18605, 18606), (18634, 18709), (18723, 18738), (18818, 18827), (19220, 19270), (19663, 19765), (19766, 19767), (19773, 19787), (19965, 19985), (20172, 20265), (20266, 20285), (20402, 20443), (20480, 20506), (20535, 20637), (20638, 20639), (20667, 20681), (21218, 21246), (21296, 21387), (21388, 21400), (21904, 21957), (21970, 22008), (22188, 22194), (22472, 22573), (22574, 22576), (22627, 22632), (24037, 24062), (24334, 24433), (24434, 24471), (24576, 24675), (24676, 24680), (25215, 25293), (25294, 25365), (25366, 25385), (26047, 26115), (26624, 26701), (26702, 26728), (26934, 27000), (27436, 27484), (28577, 28665), (28672, 28681), (28717, 28776), (29791, 29872), (30258, 30350), (30758, 30824), (30926, 31003), (31250, 31309), (31329, 31354), (31423, 31501), (31502, 31527), (31974, 32043), (32805, 32872), (33620, 33723), (33724, 33724), (34391, 34399), (34445, 34495), (34816, 34911), (34912, 34914), (35152, 35235), (35344, 35391), (36517, 36601), (36602, 36605), (37303, 37314), (37349, 37407), (37446, 37453), (37636, 37657), (39326, 39427), (39428, 39430), (39605, 39650), (40401, 40432), (40960, 41035), (41772, 41847), (44944, 44994), (48013, 48065), (48734, 48772), (48778, 48838), (49152, 49234), (53290, 53352), (55451, 55545), (55546, 55551), (58619, 58668), (59049, 59060), (59582, 59640), (63948, 63973), (65536, 65625), (65626, 65637), (68651, 68694), (68921, 68994), (73205, 73271), (73728, 73799), (85264, 85273), (85697, 85787), (122412, 122421), (131769, 131830), (137917, 137946), (142814, 142909), (146410, 146438), (148955, 148981), (327701, 327784)]

theorem row105_bounds_eq : row105.goods.map goodSegmentBounds = row105_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row105_layer000_intervals : List ColouredInterval :=
  [(2, 11264, 11368), (2, 11776, 11880), (2, 12288, 12392), (2, 12800, 12904), (2, 11264, 11368), (2, 12288, 12392), (2, 13312, 13416), (2, 14336, 14440), (2, 15360, 15464), (2, 16384, 16488), (2, 17408, 17512), (2, 18432, 18536), (2, 19456, 19560), (2, 20480, 20584), (2, 21504, 21608), (2, 12288, 12392), (2, 14336, 14440), (2, 16384, 16488), (2, 18432, 18536), (2, 20480, 20584), (2, 12288, 12392), (2, 16384, 16488), (2, 20480, 20584), (2, 16384, 16488), (2, 16384, 16488), (3, 10935, 11039), (3, 13122, 13226), (3, 15309, 15413), (3, 17496, 17600), (3, 13122, 13226), (3, 19683, 19787), (3, 19683, 19787), (5, 12500, 12604), (5, 15625, 15729), (5, 15625, 15729), (7, 16807, 16911), (11, 11979, 12083), (11, 13310, 13414), (11, 14641, 14745), (11, 15972, 16076), (11, 17303, 17407), (11, 18634, 18738), (11, 19965, 20069), (11, 21296, 21400), (11, 14641, 14745), (13, 10985, 11089), (13, 13182, 13286), (13, 15379, 15483), (13, 17576, 17680), (13, 19773, 19877), (17, 14739, 14843), (17, 19652, 19756), (19, 13718, 13822), (19, 20577, 20681), (23, 11109, 11213), (23, 11638, 11742), (23, 12167, 12271), (23, 12696, 12800), (23, 13225, 13329), (23, 12167, 12271), (29, 10933, 11037), (29, 11774, 11878), (29, 12615, 12719), (29, 13456, 13560), (29, 14297, 14401), (29, 15138, 15242), (29, 15979, 16083), (29, 16820, 16924), (29, 17661, 17765), (29, 18502, 18606), (29, 19343, 19447), (29, 20184, 20288), (29, 21025, 21129), (31, 11532, 11636), (31, 12493, 12597), (31, 13454, 13558), (31, 14415, 14519), (31, 15376, 15480), (31, 16337, 16441), (31, 17298, 17402), (31, 18259, 18363), (31, 19220, 19324), (31, 20181, 20285), (31, 21142, 21246), (37, 10952, 11056), (37, 12321, 12425), (37, 13690, 13794), (37, 15059, 15163), (37, 16428, 16532), (37, 17797, 17901), (37, 19166, 19270), (37, 20535, 20639), (41, 11767, 11871), (41, 13448, 13552), (41, 15129, 15233), (41, 16810, 16914), (41, 18491, 18595), (41, 20172, 20276), (43, 11094, 11198), (43, 12943, 13047), (43, 14792, 14896), (43, 16641, 16745), (43, 18490, 18594), (43, 20339, 20443), (47, 11045, 11149), (47, 13254, 13358), (47, 15463, 15567), (47, 17672, 17776), (47, 19881, 19985), (53, 11236, 11340), (53, 14045, 14149), (53, 16854, 16958), (53, 19663, 19767), (59, 13924, 14028), (59, 17405, 17509), (59, 20886, 20990), (61, 11163, 11267), (61, 14884, 14988), (61, 18605, 18709), (67, 13467, 13571), (67, 17956, 18060), (71, 15123, 15227), (71, 20164, 20268), (73, 15987, 16091), (73, 21316, 21420), (79, 12482, 12586), (79, 18723, 18827), (83, 13778, 13882), (83, 20667, 20771), (89, 15842, 15946), (97, 18818, 18922), (101, 20402, 20506), (103, 21218, 21322)]

def row105_layer000_block000 : List ColouredInterval :=
  [(2, 11264, 11368), (2, 11776, 11880), (2, 12288, 12392), (2, 12800, 12904), (2, 11264, 11368), (2, 12288, 12392), (2, 13312, 13416), (2, 14336, 14440), (2, 15360, 15464), (2, 16384, 16488), (2, 17408, 17512), (2, 18432, 18536), (2, 19456, 19560), (2, 20480, 20584), (2, 21504, 21608)]

def row105_layer000_block001 : List ColouredInterval :=
  [(2, 12288, 12392), (2, 14336, 14440), (2, 16384, 16488), (2, 18432, 18536), (2, 20480, 20584), (2, 12288, 12392), (2, 16384, 16488), (2, 20480, 20584), (2, 16384, 16488), (2, 16384, 16488), (3, 10935, 11039), (3, 13122, 13226), (3, 15309, 15413), (3, 17496, 17600), (3, 13122, 13226)]

def row105_layer000_block002 : List ColouredInterval :=
  [(3, 19683, 19787), (3, 19683, 19787), (5, 12500, 12604), (5, 15625, 15729), (5, 15625, 15729), (7, 16807, 16911), (11, 11979, 12083), (11, 13310, 13414), (11, 14641, 14745), (11, 15972, 16076), (11, 17303, 17407), (11, 18634, 18738), (11, 19965, 20069), (11, 21296, 21400), (11, 14641, 14745)]

def row105_layer000_block003 : List ColouredInterval :=
  [(13, 10985, 11089), (13, 13182, 13286), (13, 15379, 15483), (13, 17576, 17680), (13, 19773, 19877), (17, 14739, 14843), (17, 19652, 19756), (19, 13718, 13822), (19, 20577, 20681), (23, 11109, 11213), (23, 11638, 11742), (23, 12167, 12271), (23, 12696, 12800), (23, 13225, 13329), (23, 12167, 12271)]

def row105_layer000_block004 : List ColouredInterval :=
  [(29, 10933, 11037), (29, 11774, 11878), (29, 12615, 12719), (29, 13456, 13560), (29, 14297, 14401), (29, 15138, 15242), (29, 15979, 16083), (29, 16820, 16924), (29, 17661, 17765), (29, 18502, 18606), (29, 19343, 19447), (29, 20184, 20288), (29, 21025, 21129), (31, 11532, 11636), (31, 12493, 12597)]

def row105_layer000_block005 : List ColouredInterval :=
  [(31, 13454, 13558), (31, 14415, 14519), (31, 15376, 15480), (31, 16337, 16441), (31, 17298, 17402), (31, 18259, 18363), (31, 19220, 19324), (31, 20181, 20285), (31, 21142, 21246), (37, 10952, 11056), (37, 12321, 12425), (37, 13690, 13794), (37, 15059, 15163), (37, 16428, 16532), (37, 17797, 17901)]

def row105_layer000_block006 : List ColouredInterval :=
  [(37, 19166, 19270), (37, 20535, 20639), (41, 11767, 11871), (41, 13448, 13552), (41, 15129, 15233), (41, 16810, 16914), (41, 18491, 18595), (41, 20172, 20276), (43, 11094, 11198), (43, 12943, 13047), (43, 14792, 14896), (43, 16641, 16745), (43, 18490, 18594), (43, 20339, 20443), (47, 11045, 11149)]

def row105_layer000_block007 : List ColouredInterval :=
  [(47, 13254, 13358), (47, 15463, 15567), (47, 17672, 17776), (47, 19881, 19985), (53, 11236, 11340), (53, 14045, 14149), (53, 16854, 16958), (53, 19663, 19767), (59, 13924, 14028), (59, 17405, 17509), (59, 20886, 20990), (61, 11163, 11267), (61, 14884, 14988), (61, 18605, 18709), (67, 13467, 13571)]

def row105_layer000_block008 : List ColouredInterval :=
  [(67, 17956, 18060), (71, 15123, 15227), (71, 20164, 20268), (73, 15987, 16091), (73, 21316, 21420), (79, 12482, 12586), (79, 18723, 18827), (83, 13778, 13882), (83, 20667, 20771), (89, 15842, 15946), (97, 18818, 18922), (101, 20402, 20506), (103, 21218, 21322)]

def row105_layer000_chunks : List (List ColouredInterval) :=
  [row105_layer000_block000, row105_layer000_block001, row105_layer000_block002, row105_layer000_block003, row105_layer000_block004, row105_layer000_block005, row105_layer000_block006, row105_layer000_block007, row105_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_arithmetic : LayerArithmeticValid row105.height { lower := 10920, upper := 21840, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_enumeration :
    activePowerIntervalList 105 25 10920 21840 = row105_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_pairs000 :
    row105_layer000_block000.all (fun I => row105_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_pairs001 :
    row105_layer000_block001.all (fun I => row105_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_pairs002 :
    row105_layer000_block002.all (fun I => row105_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_pairs003 :
    row105_layer000_block003.all (fun I => row105_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_pairs004 :
    row105_layer000_block004.all (fun I => row105_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_pairs005 :
    row105_layer000_block005.all (fun I => row105_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_pairs006 :
    row105_layer000_block006.all (fun I => row105_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_pairs007 :
    row105_layer000_block007.all (fun I => row105_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_pairs008 :
    row105_layer000_block008.all (fun I => row105_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs008
