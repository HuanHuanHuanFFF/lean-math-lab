import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row164_height : HeightCertificateDatum := { i := 164, r := 54, s := 116, n0Power10 := 8 }

def row164_goods : List GoodSegment := [
  { lower := 330, upper := 480, witness := RowWitness.topPrime 317 },
  { lower := 481, upper := 642, witness := RowWitness.topPrime 479 },
  { lower := 643, upper := 806, witness := RowWitness.topPrime 643 },
  { lower := 807, upper := 960, witness := RowWitness.topPrime 797 },
  { lower := 961, upper := 1116, witness := RowWitness.topPrime 953 },
  { lower := 1117, upper := 1280, witness := RowWitness.topPrime 1117 },
  { lower := 1281, upper := 1442, witness := RowWitness.topPrime 1279 },
  { lower := 1443, upper := 1602, witness := RowWitness.topPrime 1439 },
  { lower := 1603, upper := 1764, witness := RowWitness.topPrime 1601 },
  { lower := 1765, upper := 1922, witness := RowWitness.topPrime 1759 },
  { lower := 1923, upper := 2076, witness := RowWitness.topPrime 1913 },
  { lower := 2077, upper := 2232, witness := RowWitness.topPrime 2069 },
  { lower := 2233, upper := 2384, witness := RowWitness.topPrime 2221 },
  { lower := 2385, upper := 2546, witness := RowWitness.topPrime 2383 },
  { lower := 2547, upper := 2706, witness := RowWitness.topPrime 2543 },
  { lower := 2707, upper := 2870, witness := RowWitness.topPrime 2707 },
  { lower := 2871, upper := 3024, witness := RowWitness.topPrime 2861 },
  { lower := 3025, upper := 3186, witness := RowWitness.topPrime 3023 },
  { lower := 3187, upper := 3350, witness := RowWitness.topPrime 3187 },
  { lower := 3351, upper := 3510, witness := RowWitness.topPrime 3347 },
  { lower := 3511, upper := 3674, witness := RowWitness.topPrime 3511 },
  { lower := 3675, upper := 3836, witness := RowWitness.topPrime 3673 },
  { lower := 3837, upper := 3996, witness := RowWitness.topPrime 3833 },
  { lower := 3997, upper := 4152, witness := RowWitness.topPrime 3989 },
  { lower := 4153, upper := 4316, witness := RowWitness.topPrime 4153 },
  { lower := 4317, upper := 4460, witness := RowWitness.topPrime 4297 },
  { lower := 4461, upper := 4620, witness := RowWitness.topPrime 4457 },
  { lower := 4621, upper := 4784, witness := RowWitness.topPrime 4621 },
  { lower := 4785, upper := 4946, witness := RowWitness.topPrime 4783 },
  { lower := 4947, upper := 5106, witness := RowWitness.topPrime 4943 },
  { lower := 5107, upper := 5270, witness := RowWitness.topPrime 5107 },
  { lower := 5271, upper := 5424, witness := RowWitness.topPrime 5261 },
  { lower := 5425, upper := 5582, witness := RowWitness.topPrime 5419 },
  { lower := 5583, upper := 5744, witness := RowWitness.topPrime 5581 },
  { lower := 5745, upper := 5906, witness := RowWitness.topPrime 5743 },
  { lower := 5907, upper := 6066, witness := RowWitness.topPrime 5903 },
  { lower := 6067, upper := 6230, witness := RowWitness.topPrime 6067 },
  { lower := 6231, upper := 6392, witness := RowWitness.topPrime 6229 },
  { lower := 6393, upper := 6552, witness := RowWitness.topPrime 6389 },
  { lower := 6553, upper := 6716, witness := RowWitness.topPrime 6553 },
  { lower := 6717, upper := 6872, witness := RowWitness.topPrime 6709 },
  { lower := 6873, upper := 7034, witness := RowWitness.topPrime 6871 },
  { lower := 7035, upper := 7190, witness := RowWitness.topPrime 7027 },
  { lower := 7191, upper := 7350, witness := RowWitness.topPrime 7187 },
  { lower := 7351, upper := 7514, witness := RowWitness.topPrime 7351 },
  { lower := 7515, upper := 7670, witness := RowWitness.topPrime 7507 },
  { lower := 7671, upper := 7832, witness := RowWitness.topPrime 7669 },
  { lower := 7833, upper := 7992, witness := RowWitness.topPrime 7829 },
  { lower := 7993, upper := 8156, witness := RowWitness.topPrime 7993 },
  { lower := 8157, upper := 8310, witness := RowWitness.topPrime 8147 },
  { lower := 8311, upper := 8474, witness := RowWitness.topPrime 8311 },
  { lower := 8475, upper := 8630, witness := RowWitness.topPrime 8467 },
  { lower := 8631, upper := 8792, witness := RowWitness.topPrime 8629 },
  { lower := 8793, upper := 8946, witness := RowWitness.topPrime 8783 },
  { lower := 8947, upper := 9104, witness := RowWitness.topPrime 8941 },
  { lower := 9105, upper := 9266, witness := RowWitness.topPrime 9103 },
  { lower := 9267, upper := 9420, witness := RowWitness.topPrime 9257 },
  { lower := 9421, upper := 9584, witness := RowWitness.topPrime 9421 },
  { lower := 9585, upper := 9714, witness := RowWitness.topPrime 9551 },
  { lower := 9715, upper := 9860, witness := RowWitness.topPrime 9697 },
  { lower := 9861, upper := 10022, witness := RowWitness.topPrime 9859 },
  { lower := 10023, upper := 10172, witness := RowWitness.topPrime 10009 },
  { lower := 10173, upper := 10332, witness := RowWitness.topPrime 10169 },
  { lower := 10333, upper := 10496, witness := RowWitness.topPrime 10333 },
  { lower := 10497, upper := 10650, witness := RowWitness.topPrime 10487 },
  { lower := 10651, upper := 10814, witness := RowWitness.topPrime 10651 },
  { lower := 10815, upper := 10962, witness := RowWitness.topPrime 10799 },
  { lower := 10963, upper := 11120, witness := RowWitness.topPrime 10957 },
  { lower := 11121, upper := 11282, witness := RowWitness.topPrime 11119 },
  { lower := 11283, upper := 11442, witness := RowWitness.topPrime 11279 },
  { lower := 11443, upper := 11606, witness := RowWitness.topPrime 11443 },
  { lower := 11607, upper := 11760, witness := RowWitness.topPrime 11597 },
  { lower := 11761, upper := 11906, witness := RowWitness.topPrime 11743 },
  { lower := 11907, upper := 12066, witness := RowWitness.topPrime 11903 },
  { lower := 12067, upper := 12212, witness := RowWitness.topPrime 12049 },
  { lower := 12213, upper := 12374, witness := RowWitness.topPrime 12211 },
  { lower := 12375, upper := 12536, witness := RowWitness.topPrime 12373 },
  { lower := 12537, upper := 12690, witness := RowWitness.topPrime 12527 },
  { lower := 12691, upper := 12852, witness := RowWitness.topPrime 12689 },
  { lower := 12853, upper := 13016, witness := RowWitness.topPrime 12853 },
  { lower := 13017, upper := 13172, witness := RowWitness.topPrime 13009 },
  { lower := 13173, upper := 13334, witness := RowWitness.topPrime 13171 },
  { lower := 13335, upper := 13494, witness := RowWitness.topPrime 13331 },
  { lower := 13495, upper := 13650, witness := RowWitness.topPrime 13487 },
  { lower := 13651, upper := 13812, witness := RowWitness.topPrime 13649 },
  { lower := 13813, upper := 13970, witness := RowWitness.topPrime 13807 },
  { lower := 13971, upper := 14130, witness := RowWitness.topPrime 13967 },
  { lower := 14131, upper := 14270, witness := RowWitness.topPrime 14107 },
  { lower := 14271, upper := 14414, witness := RowWitness.topPrime 14251 },
  { lower := 14415, upper := 14574, witness := RowWitness.topPrime 14411 },
  { lower := 14575, upper := 14726, witness := RowWitness.topPrime 14563 },
  { lower := 14727, upper := 14886, witness := RowWitness.topPrime 14723 },
  { lower := 14887, upper := 15050, witness := RowWitness.topPrime 14887 },
  { lower := 15051, upper := 15194, witness := RowWitness.topPrime 15031 },
  { lower := 15195, upper := 15356, witness := RowWitness.topPrime 15193 },
  { lower := 15357, upper := 15512, witness := RowWitness.topPrime 15349 },
  { lower := 15513, upper := 15674, witness := RowWitness.topPrime 15511 },
  { lower := 15675, upper := 15834, witness := RowWitness.topPrime 15671 },
  { lower := 15835, upper := 15986, witness := RowWitness.topPrime 15823 },
  { lower := 15987, upper := 16136, witness := RowWitness.topPrime 15973 },
  { lower := 16137, upper := 16290, witness := RowWitness.topPrime 16127 },
  { lower := 16291, upper := 16436, witness := RowWitness.topPrime 16273 },
  { lower := 16437, upper := 16596, witness := RowWitness.topPrime 16433 },
  { lower := 16597, upper := 16736, witness := RowWitness.topPrime 16573 },
  { lower := 16737, upper := 16892, witness := RowWitness.topPrime 16729 },
  { lower := 16893, upper := 17052, witness := RowWitness.topPrime 16889 },
  { lower := 17053, upper := 17216, witness := RowWitness.topPrime 17053 },
  { lower := 17217, upper := 17372, witness := RowWitness.topPrime 17209 },
  { lower := 17373, upper := 17522, witness := RowWitness.topPrime 17359 },
  { lower := 17523, upper := 17682, witness := RowWitness.topPrime 17519 },
  { lower := 17683, upper := 17846, witness := RowWitness.topPrime 17683 },
  { lower := 17847, upper := 18002, witness := RowWitness.topPrime 17839 },
  { lower := 18003, upper := 18152, witness := RowWitness.topPrime 17989 },
  { lower := 18153, upper := 18312, witness := RowWitness.topPrime 18149 },
  { lower := 18313, upper := 18476, witness := RowWitness.topPrime 18313 },
  { lower := 18477, upper := 18624, witness := RowWitness.topPrime 18461 },
  { lower := 18625, upper := 18780, witness := RowWitness.topPrime 18617 },
  { lower := 18781, upper := 18936, witness := RowWitness.topPrime 18773 },
  { lower := 18937, upper := 19082, witness := RowWitness.topPrime 18919 },
  { lower := 19083, upper := 19244, witness := RowWitness.topPrime 19081 },
  { lower := 19245, upper := 19400, witness := RowWitness.topPrime 19237 },
  { lower := 19401, upper := 19554, witness := RowWitness.topPrime 19391 },
  { lower := 19555, upper := 19716, witness := RowWitness.topPrime 19553 },
  { lower := 19717, upper := 19880, witness := RowWitness.topPrime 19717 },
  { lower := 19881, upper := 20030, witness := RowWitness.topPrime 19867 },
  { lower := 20031, upper := 20192, witness := RowWitness.topPrime 20029 },
  { lower := 20193, upper := 20346, witness := RowWitness.topPrime 20183 },
  { lower := 20347, upper := 20510, witness := RowWitness.topPrime 20347 },
  { lower := 20511, upper := 20672, witness := RowWitness.topPrime 20509 },
  { lower := 20673, upper := 20826, witness := RowWitness.topPrime 20663 },
  { lower := 20827, upper := 20972, witness := RowWitness.topPrime 20809 },
  { lower := 20973, upper := 21126, witness := RowWitness.topPrime 20963 },
  { lower := 21127, upper := 21284, witness := RowWitness.topPrime 21121 },
  { lower := 21285, upper := 21446, witness := RowWitness.topPrime 21283 },
  { lower := 21447, upper := 21596, witness := RowWitness.topPrime 21433 },
  { lower := 21597, upper := 21752, witness := RowWitness.topPrime 21589 },
  { lower := 21753, upper := 21914, witness := RowWitness.topPrime 21751 },
  { lower := 21915, upper := 22074, witness := RowWitness.topPrime 21911 },
  { lower := 22075, upper := 22236, witness := RowWitness.topPrime 22073 },
  { lower := 22237, upper := 22392, witness := RowWitness.topPrime 22229 },
  { lower := 22393, upper := 22554, witness := RowWitness.topPrime 22391 },
  { lower := 22555, upper := 22712, witness := RowWitness.topPrime 22549 },
  { lower := 22713, upper := 22872, witness := RowWitness.topPrime 22709 },
  { lower := 22873, upper := 23034, witness := RowWitness.topPrime 22871 },
  { lower := 23035, upper := 23192, witness := RowWitness.topPrime 23029 },
  { lower := 23193, upper := 23352, witness := RowWitness.topPrime 23189 },
  { lower := 23353, upper := 23502, witness := RowWitness.topPrime 23339 },
  { lower := 23503, upper := 23660, witness := RowWitness.topPrime 23497 },
  { lower := 23661, upper := 23796, witness := RowWitness.topPrime 23633 },
  { lower := 23797, upper := 23952, witness := RowWitness.topPrime 23789 },
  { lower := 23953, upper := 24092, witness := RowWitness.topPrime 23929 },
  { lower := 24093, upper := 24254, witness := RowWitness.topPrime 24091 },
  { lower := 24255, upper := 24414, witness := RowWitness.topPrime 24251 },
  { lower := 24415, upper := 24576, witness := RowWitness.topPrime 24413 },
  { lower := 24577, upper := 24734, witness := RowWitness.topPrime 24571 },
  { lower := 24735, upper := 24896, witness := RowWitness.topPrime 24733 },
  { lower := 24897, upper := 25052, witness := RowWitness.topPrime 24889 },
  { lower := 25053, upper := 25200, witness := RowWitness.topPrime 25037 },
  { lower := 25201, upper := 25352, witness := RowWitness.topPrime 25189 },
  { lower := 25353, upper := 25512, witness := RowWitness.topPrime 25349 },
  { lower := 25513, upper := 25634, witness := RowWitness.topPrime 25471 },
  { lower := 25635, upper := 25796, witness := RowWitness.topPrime 25633 },
  { lower := 25797, upper := 25956, witness := RowWitness.topPrime 25793 },
  { lower := 25957, upper := 26114, witness := RowWitness.topPrime 25951 },
  { lower := 26115, upper := 26276, witness := RowWitness.topPrime 26113 },
  { lower := 26277, upper := 26430, witness := RowWitness.topPrime 26267 },
  { lower := 26431, upper := 26594, witness := RowWitness.topPrime 26431 },
  { lower := 26595, upper := 26732, witness := RowWitness.topPrime 26591 },
  { lower := 27556, upper := 27599, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27898, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28286, witness := RowWitness.topPrime 28123 },
  { lower := 28287, upper := 28288, witness := RowWitness.topPrime 28283 },
  { lower := 28561, upper := 28594, witness := RowWitness.topPrime 28559 },
  { lower := 28717, upper := 28724, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28880, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29931, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30756, witness := RowWitness.topPrime 30593 },
  { lower := 30757, upper := 30781, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 30921, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31062, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31356, witness := RowWitness.topPrime 31193 },
  { lower := 31357, upper := 31413, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31492, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31847, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31990, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32931, witness := RowWitness.topPrime 32803 },
  { lower := 32955, upper := 32968, witness := RowWitness.topPrime 32941 },
  { lower := 33614, upper := 33652, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33777, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34482, witness := RowWitness.topPrime 34319 },
  { lower := 34483, upper := 34554, witness := RowWitness.topPrime 34483 },
  { lower := 36015, upper := 36075, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36660, witness := RowWitness.topPrime 36497 },
  { lower := 36661, upper := 36664, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37373, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37466, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37656, witness := RowWitness.topPrime 37493 },
  { lower := 37657, upper := 37701, witness := RowWitness.topPrime 37657 },
  { lower := 38307, upper := 38454, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39486, witness := RowWitness.topPrime 39323 },
  { lower := 39487, upper := 39489, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40491, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40967, witness := RowWitness.topPrime 40927 },
  { lower := 43750, upper := 43850, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45416, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45959, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47684, witness := RowWitness.topPrime 47521 },
  { lower := 47685, upper := 47687, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48124, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48534, witness := RowWitness.topPrime 48371 },
  { lower := 48535, upper := 48536, witness := RowWitness.topPrime 48533 },
  { lower := 48734, upper := 48896, witness := RowWitness.topPrime 48733 },
  { lower := 48897, upper := 48897, witness := RowWitness.topPrime 48889 },
  { lower := 49152, upper := 49293, witness := RowWitness.topPrime 49139 },
  { lower := 49298, upper := 49315, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49461, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50573, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51168, witness := RowWitness.topPrime 51071 },
  { lower := 52215, upper := 52257, witness := RowWitness.topPrime 52201 },
  { lower := 53138, upper := 53208, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53301, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55604, witness := RowWitness.topPrime 55441 },
  { lower := 55605, upper := 55610, witness := RowWitness.topPrime 55603 },
  { lower := 56307, upper := 56332, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56470, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57285, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58727, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62573, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65699, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68802, witness := RowWitness.topPrime 68639 },
  { lower := 68803, upper := 68814, witness := RowWitness.topPrime 68791 },
  { lower := 71289, upper := 71450, witness := RowWitness.topPrime 71287 },
  { lower := 71451, upper := 71452, witness := RowWitness.topPrime 71443 },
  { lower := 73205, upper := 73330, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85846, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89536, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93913, witness := RowWitness.topPrime 93827 },
  { lower := 102152, upper := 102173, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103129, witness := RowWitness.topPrime 103007 },
  { lower := 148955, upper := 149040, witness := RowWitness.topPrime 148949 }
]

def row164_layers : List CoverLayer := [
  { lower := 26732, upper := 53464, M := 15 },
  { lower := 53464, upper := 106928, M := 11 },
  { lower := 106928, upper := 213856, M := 8 },
  { lower := 213856, upper := 427712, M := 6 },
  { lower := 427712, upper := 855424, M := 5 },
  { lower := 855424, upper := 1710848, M := 4 },
  { lower := 1710848, upper := 3421696, M := 3 },
  { lower := 3421696, upper := 6843392, M := 2 },
  { lower := 6843392, upper := 13686784, M := 2 },
  { lower := 13686784, upper := 27373568, M := 1 },
  { lower := 27373568, upper := 54747136, M := 1 },
  { lower := 54747136, upper := 100000000, M := 1 }
]

def row164 : FiniteCoverRow := {
  height := row164_height,
  goods := row164_goods,
  layers := row164_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good000_checked :
    goodSegmentCheck 164 54 116
      { lower := 330, upper := 480, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good001_checked :
    goodSegmentCheck 164 54 116
      { lower := 481, upper := 642, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good002_checked :
    goodSegmentCheck 164 54 116
      { lower := 643, upper := 806, witness := RowWitness.topPrime 643 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good003_checked :
    goodSegmentCheck 164 54 116
      { lower := 807, upper := 960, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good004_checked :
    goodSegmentCheck 164 54 116
      { lower := 961, upper := 1116, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good005_checked :
    goodSegmentCheck 164 54 116
      { lower := 1117, upper := 1280, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good006_checked :
    goodSegmentCheck 164 54 116
      { lower := 1281, upper := 1442, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good007_checked :
    goodSegmentCheck 164 54 116
      { lower := 1443, upper := 1602, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good008_checked :
    goodSegmentCheck 164 54 116
      { lower := 1603, upper := 1764, witness := RowWitness.topPrime 1601 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good009_checked :
    goodSegmentCheck 164 54 116
      { lower := 1765, upper := 1922, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good010_checked :
    goodSegmentCheck 164 54 116
      { lower := 1923, upper := 2076, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good011_checked :
    goodSegmentCheck 164 54 116
      { lower := 2077, upper := 2232, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good012_checked :
    goodSegmentCheck 164 54 116
      { lower := 2233, upper := 2384, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good013_checked :
    goodSegmentCheck 164 54 116
      { lower := 2385, upper := 2546, witness := RowWitness.topPrime 2383 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good014_checked :
    goodSegmentCheck 164 54 116
      { lower := 2547, upper := 2706, witness := RowWitness.topPrime 2543 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good015_checked :
    goodSegmentCheck 164 54 116
      { lower := 2707, upper := 2870, witness := RowWitness.topPrime 2707 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good016_checked :
    goodSegmentCheck 164 54 116
      { lower := 2871, upper := 3024, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good017_checked :
    goodSegmentCheck 164 54 116
      { lower := 3025, upper := 3186, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good018_checked :
    goodSegmentCheck 164 54 116
      { lower := 3187, upper := 3350, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good019_checked :
    goodSegmentCheck 164 54 116
      { lower := 3351, upper := 3510, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good020_checked :
    goodSegmentCheck 164 54 116
      { lower := 3511, upper := 3674, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good021_checked :
    goodSegmentCheck 164 54 116
      { lower := 3675, upper := 3836, witness := RowWitness.topPrime 3673 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good022_checked :
    goodSegmentCheck 164 54 116
      { lower := 3837, upper := 3996, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good023_checked :
    goodSegmentCheck 164 54 116
      { lower := 3997, upper := 4152, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good024_checked :
    goodSegmentCheck 164 54 116
      { lower := 4153, upper := 4316, witness := RowWitness.topPrime 4153 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good025_checked :
    goodSegmentCheck 164 54 116
      { lower := 4317, upper := 4460, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good026_checked :
    goodSegmentCheck 164 54 116
      { lower := 4461, upper := 4620, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good027_checked :
    goodSegmentCheck 164 54 116
      { lower := 4621, upper := 4784, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good028_checked :
    goodSegmentCheck 164 54 116
      { lower := 4785, upper := 4946, witness := RowWitness.topPrime 4783 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good029_checked :
    goodSegmentCheck 164 54 116
      { lower := 4947, upper := 5106, witness := RowWitness.topPrime 4943 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good030_checked :
    goodSegmentCheck 164 54 116
      { lower := 5107, upper := 5270, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good031_checked :
    goodSegmentCheck 164 54 116
      { lower := 5271, upper := 5424, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good032_checked :
    goodSegmentCheck 164 54 116
      { lower := 5425, upper := 5582, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good033_checked :
    goodSegmentCheck 164 54 116
      { lower := 5583, upper := 5744, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good034_checked :
    goodSegmentCheck 164 54 116
      { lower := 5745, upper := 5906, witness := RowWitness.topPrime 5743 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good035_checked :
    goodSegmentCheck 164 54 116
      { lower := 5907, upper := 6066, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good036_checked :
    goodSegmentCheck 164 54 116
      { lower := 6067, upper := 6230, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good037_checked :
    goodSegmentCheck 164 54 116
      { lower := 6231, upper := 6392, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good038_checked :
    goodSegmentCheck 164 54 116
      { lower := 6393, upper := 6552, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good039_checked :
    goodSegmentCheck 164 54 116
      { lower := 6553, upper := 6716, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good040_checked :
    goodSegmentCheck 164 54 116
      { lower := 6717, upper := 6872, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good041_checked :
    goodSegmentCheck 164 54 116
      { lower := 6873, upper := 7034, witness := RowWitness.topPrime 6871 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good042_checked :
    goodSegmentCheck 164 54 116
      { lower := 7035, upper := 7190, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good043_checked :
    goodSegmentCheck 164 54 116
      { lower := 7191, upper := 7350, witness := RowWitness.topPrime 7187 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good044_checked :
    goodSegmentCheck 164 54 116
      { lower := 7351, upper := 7514, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good045_checked :
    goodSegmentCheck 164 54 116
      { lower := 7515, upper := 7670, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good046_checked :
    goodSegmentCheck 164 54 116
      { lower := 7671, upper := 7832, witness := RowWitness.topPrime 7669 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good047_checked :
    goodSegmentCheck 164 54 116
      { lower := 7833, upper := 7992, witness := RowWitness.topPrime 7829 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good048_checked :
    goodSegmentCheck 164 54 116
      { lower := 7993, upper := 8156, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good049_checked :
    goodSegmentCheck 164 54 116
      { lower := 8157, upper := 8310, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good050_checked :
    goodSegmentCheck 164 54 116
      { lower := 8311, upper := 8474, witness := RowWitness.topPrime 8311 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good051_checked :
    goodSegmentCheck 164 54 116
      { lower := 8475, upper := 8630, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good052_checked :
    goodSegmentCheck 164 54 116
      { lower := 8631, upper := 8792, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good053_checked :
    goodSegmentCheck 164 54 116
      { lower := 8793, upper := 8946, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good054_checked :
    goodSegmentCheck 164 54 116
      { lower := 8947, upper := 9104, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good055_checked :
    goodSegmentCheck 164 54 116
      { lower := 9105, upper := 9266, witness := RowWitness.topPrime 9103 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good056_checked :
    goodSegmentCheck 164 54 116
      { lower := 9267, upper := 9420, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good057_checked :
    goodSegmentCheck 164 54 116
      { lower := 9421, upper := 9584, witness := RowWitness.topPrime 9421 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good058_checked :
    goodSegmentCheck 164 54 116
      { lower := 9585, upper := 9714, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good059_checked :
    goodSegmentCheck 164 54 116
      { lower := 9715, upper := 9860, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good060_checked :
    goodSegmentCheck 164 54 116
      { lower := 9861, upper := 10022, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good061_checked :
    goodSegmentCheck 164 54 116
      { lower := 10023, upper := 10172, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good062_checked :
    goodSegmentCheck 164 54 116
      { lower := 10173, upper := 10332, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good063_checked :
    goodSegmentCheck 164 54 116
      { lower := 10333, upper := 10496, witness := RowWitness.topPrime 10333 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good064_checked :
    goodSegmentCheck 164 54 116
      { lower := 10497, upper := 10650, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good065_checked :
    goodSegmentCheck 164 54 116
      { lower := 10651, upper := 10814, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good066_checked :
    goodSegmentCheck 164 54 116
      { lower := 10815, upper := 10962, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good067_checked :
    goodSegmentCheck 164 54 116
      { lower := 10963, upper := 11120, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good068_checked :
    goodSegmentCheck 164 54 116
      { lower := 11121, upper := 11282, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good069_checked :
    goodSegmentCheck 164 54 116
      { lower := 11283, upper := 11442, witness := RowWitness.topPrime 11279 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good070_checked :
    goodSegmentCheck 164 54 116
      { lower := 11443, upper := 11606, witness := RowWitness.topPrime 11443 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good071_checked :
    goodSegmentCheck 164 54 116
      { lower := 11607, upper := 11760, witness := RowWitness.topPrime 11597 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good072_checked :
    goodSegmentCheck 164 54 116
      { lower := 11761, upper := 11906, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good073_checked :
    goodSegmentCheck 164 54 116
      { lower := 11907, upper := 12066, witness := RowWitness.topPrime 11903 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good074_checked :
    goodSegmentCheck 164 54 116
      { lower := 12067, upper := 12212, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good075_checked :
    goodSegmentCheck 164 54 116
      { lower := 12213, upper := 12374, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good076_checked :
    goodSegmentCheck 164 54 116
      { lower := 12375, upper := 12536, witness := RowWitness.topPrime 12373 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good077_checked :
    goodSegmentCheck 164 54 116
      { lower := 12537, upper := 12690, witness := RowWitness.topPrime 12527 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good078_checked :
    goodSegmentCheck 164 54 116
      { lower := 12691, upper := 12852, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good079_checked :
    goodSegmentCheck 164 54 116
      { lower := 12853, upper := 13016, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good080_checked :
    goodSegmentCheck 164 54 116
      { lower := 13017, upper := 13172, witness := RowWitness.topPrime 13009 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good081_checked :
    goodSegmentCheck 164 54 116
      { lower := 13173, upper := 13334, witness := RowWitness.topPrime 13171 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good082_checked :
    goodSegmentCheck 164 54 116
      { lower := 13335, upper := 13494, witness := RowWitness.topPrime 13331 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good083_checked :
    goodSegmentCheck 164 54 116
      { lower := 13495, upper := 13650, witness := RowWitness.topPrime 13487 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good084_checked :
    goodSegmentCheck 164 54 116
      { lower := 13651, upper := 13812, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good085_checked :
    goodSegmentCheck 164 54 116
      { lower := 13813, upper := 13970, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good086_checked :
    goodSegmentCheck 164 54 116
      { lower := 13971, upper := 14130, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good087_checked :
    goodSegmentCheck 164 54 116
      { lower := 14131, upper := 14270, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good088_checked :
    goodSegmentCheck 164 54 116
      { lower := 14271, upper := 14414, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good089_checked :
    goodSegmentCheck 164 54 116
      { lower := 14415, upper := 14574, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good090_checked :
    goodSegmentCheck 164 54 116
      { lower := 14575, upper := 14726, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good091_checked :
    goodSegmentCheck 164 54 116
      { lower := 14727, upper := 14886, witness := RowWitness.topPrime 14723 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good092_checked :
    goodSegmentCheck 164 54 116
      { lower := 14887, upper := 15050, witness := RowWitness.topPrime 14887 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good093_checked :
    goodSegmentCheck 164 54 116
      { lower := 15051, upper := 15194, witness := RowWitness.topPrime 15031 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good094_checked :
    goodSegmentCheck 164 54 116
      { lower := 15195, upper := 15356, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good095_checked :
    goodSegmentCheck 164 54 116
      { lower := 15357, upper := 15512, witness := RowWitness.topPrime 15349 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good096_checked :
    goodSegmentCheck 164 54 116
      { lower := 15513, upper := 15674, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good097_checked :
    goodSegmentCheck 164 54 116
      { lower := 15675, upper := 15834, witness := RowWitness.topPrime 15671 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good098_checked :
    goodSegmentCheck 164 54 116
      { lower := 15835, upper := 15986, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good099_checked :
    goodSegmentCheck 164 54 116
      { lower := 15987, upper := 16136, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good100_checked :
    goodSegmentCheck 164 54 116
      { lower := 16137, upper := 16290, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good101_checked :
    goodSegmentCheck 164 54 116
      { lower := 16291, upper := 16436, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good102_checked :
    goodSegmentCheck 164 54 116
      { lower := 16437, upper := 16596, witness := RowWitness.topPrime 16433 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good103_checked :
    goodSegmentCheck 164 54 116
      { lower := 16597, upper := 16736, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good104_checked :
    goodSegmentCheck 164 54 116
      { lower := 16737, upper := 16892, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good105_checked :
    goodSegmentCheck 164 54 116
      { lower := 16893, upper := 17052, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good106_checked :
    goodSegmentCheck 164 54 116
      { lower := 17053, upper := 17216, witness := RowWitness.topPrime 17053 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good107_checked :
    goodSegmentCheck 164 54 116
      { lower := 17217, upper := 17372, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good108_checked :
    goodSegmentCheck 164 54 116
      { lower := 17373, upper := 17522, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good109_checked :
    goodSegmentCheck 164 54 116
      { lower := 17523, upper := 17682, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good110_checked :
    goodSegmentCheck 164 54 116
      { lower := 17683, upper := 17846, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good111_checked :
    goodSegmentCheck 164 54 116
      { lower := 17847, upper := 18002, witness := RowWitness.topPrime 17839 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good112_checked :
    goodSegmentCheck 164 54 116
      { lower := 18003, upper := 18152, witness := RowWitness.topPrime 17989 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good113_checked :
    goodSegmentCheck 164 54 116
      { lower := 18153, upper := 18312, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good114_checked :
    goodSegmentCheck 164 54 116
      { lower := 18313, upper := 18476, witness := RowWitness.topPrime 18313 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good115_checked :
    goodSegmentCheck 164 54 116
      { lower := 18477, upper := 18624, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good116_checked :
    goodSegmentCheck 164 54 116
      { lower := 18625, upper := 18780, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good117_checked :
    goodSegmentCheck 164 54 116
      { lower := 18781, upper := 18936, witness := RowWitness.topPrime 18773 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good118_checked :
    goodSegmentCheck 164 54 116
      { lower := 18937, upper := 19082, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good119_checked :
    goodSegmentCheck 164 54 116
      { lower := 19083, upper := 19244, witness := RowWitness.topPrime 19081 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good120_checked :
    goodSegmentCheck 164 54 116
      { lower := 19245, upper := 19400, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good121_checked :
    goodSegmentCheck 164 54 116
      { lower := 19401, upper := 19554, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good122_checked :
    goodSegmentCheck 164 54 116
      { lower := 19555, upper := 19716, witness := RowWitness.topPrime 19553 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good123_checked :
    goodSegmentCheck 164 54 116
      { lower := 19717, upper := 19880, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good124_checked :
    goodSegmentCheck 164 54 116
      { lower := 19881, upper := 20030, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good125_checked :
    goodSegmentCheck 164 54 116
      { lower := 20031, upper := 20192, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good126_checked :
    goodSegmentCheck 164 54 116
      { lower := 20193, upper := 20346, witness := RowWitness.topPrime 20183 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good127_checked :
    goodSegmentCheck 164 54 116
      { lower := 20347, upper := 20510, witness := RowWitness.topPrime 20347 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good128_checked :
    goodSegmentCheck 164 54 116
      { lower := 20511, upper := 20672, witness := RowWitness.topPrime 20509 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good129_checked :
    goodSegmentCheck 164 54 116
      { lower := 20673, upper := 20826, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good130_checked :
    goodSegmentCheck 164 54 116
      { lower := 20827, upper := 20972, witness := RowWitness.topPrime 20809 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good131_checked :
    goodSegmentCheck 164 54 116
      { lower := 20973, upper := 21126, witness := RowWitness.topPrime 20963 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good132_checked :
    goodSegmentCheck 164 54 116
      { lower := 21127, upper := 21284, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good133_checked :
    goodSegmentCheck 164 54 116
      { lower := 21285, upper := 21446, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good134_checked :
    goodSegmentCheck 164 54 116
      { lower := 21447, upper := 21596, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good135_checked :
    goodSegmentCheck 164 54 116
      { lower := 21597, upper := 21752, witness := RowWitness.topPrime 21589 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good136_checked :
    goodSegmentCheck 164 54 116
      { lower := 21753, upper := 21914, witness := RowWitness.topPrime 21751 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good137_checked :
    goodSegmentCheck 164 54 116
      { lower := 21915, upper := 22074, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good138_checked :
    goodSegmentCheck 164 54 116
      { lower := 22075, upper := 22236, witness := RowWitness.topPrime 22073 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good139_checked :
    goodSegmentCheck 164 54 116
      { lower := 22237, upper := 22392, witness := RowWitness.topPrime 22229 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good140_checked :
    goodSegmentCheck 164 54 116
      { lower := 22393, upper := 22554, witness := RowWitness.topPrime 22391 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good141_checked :
    goodSegmentCheck 164 54 116
      { lower := 22555, upper := 22712, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good142_checked :
    goodSegmentCheck 164 54 116
      { lower := 22713, upper := 22872, witness := RowWitness.topPrime 22709 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good143_checked :
    goodSegmentCheck 164 54 116
      { lower := 22873, upper := 23034, witness := RowWitness.topPrime 22871 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good144_checked :
    goodSegmentCheck 164 54 116
      { lower := 23035, upper := 23192, witness := RowWitness.topPrime 23029 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good145_checked :
    goodSegmentCheck 164 54 116
      { lower := 23193, upper := 23352, witness := RowWitness.topPrime 23189 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good146_checked :
    goodSegmentCheck 164 54 116
      { lower := 23353, upper := 23502, witness := RowWitness.topPrime 23339 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good147_checked :
    goodSegmentCheck 164 54 116
      { lower := 23503, upper := 23660, witness := RowWitness.topPrime 23497 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good148_checked :
    goodSegmentCheck 164 54 116
      { lower := 23661, upper := 23796, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good149_checked :
    goodSegmentCheck 164 54 116
      { lower := 23797, upper := 23952, witness := RowWitness.topPrime 23789 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good150_checked :
    goodSegmentCheck 164 54 116
      { lower := 23953, upper := 24092, witness := RowWitness.topPrime 23929 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good151_checked :
    goodSegmentCheck 164 54 116
      { lower := 24093, upper := 24254, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good152_checked :
    goodSegmentCheck 164 54 116
      { lower := 24255, upper := 24414, witness := RowWitness.topPrime 24251 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good153_checked :
    goodSegmentCheck 164 54 116
      { lower := 24415, upper := 24576, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good154_checked :
    goodSegmentCheck 164 54 116
      { lower := 24577, upper := 24734, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good155_checked :
    goodSegmentCheck 164 54 116
      { lower := 24735, upper := 24896, witness := RowWitness.topPrime 24733 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good156_checked :
    goodSegmentCheck 164 54 116
      { lower := 24897, upper := 25052, witness := RowWitness.topPrime 24889 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good157_checked :
    goodSegmentCheck 164 54 116
      { lower := 25053, upper := 25200, witness := RowWitness.topPrime 25037 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good158_checked :
    goodSegmentCheck 164 54 116
      { lower := 25201, upper := 25352, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good159_checked :
    goodSegmentCheck 164 54 116
      { lower := 25353, upper := 25512, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good160_checked :
    goodSegmentCheck 164 54 116
      { lower := 25513, upper := 25634, witness := RowWitness.topPrime 25471 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good161_checked :
    goodSegmentCheck 164 54 116
      { lower := 25635, upper := 25796, witness := RowWitness.topPrime 25633 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good162_checked :
    goodSegmentCheck 164 54 116
      { lower := 25797, upper := 25956, witness := RowWitness.topPrime 25793 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good163_checked :
    goodSegmentCheck 164 54 116
      { lower := 25957, upper := 26114, witness := RowWitness.topPrime 25951 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good164_checked :
    goodSegmentCheck 164 54 116
      { lower := 26115, upper := 26276, witness := RowWitness.topPrime 26113 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good165_checked :
    goodSegmentCheck 164 54 116
      { lower := 26277, upper := 26430, witness := RowWitness.topPrime 26267 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good166_checked :
    goodSegmentCheck 164 54 116
      { lower := 26431, upper := 26594, witness := RowWitness.topPrime 26431 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good167_checked :
    goodSegmentCheck 164 54 116
      { lower := 26595, upper := 26732, witness := RowWitness.topPrime 26591 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good168_checked :
    goodSegmentCheck 164 54 116
      { lower := 27556, upper := 27599, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good169_checked :
    goodSegmentCheck 164 54 116
      { lower := 27848, upper := 27898, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good170_checked :
    goodSegmentCheck 164 54 116
      { lower := 28125, upper := 28286, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good171_checked :
    goodSegmentCheck 164 54 116
      { lower := 28287, upper := 28288, witness := RowWitness.topPrime 28283 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good172_checked :
    goodSegmentCheck 164 54 116
      { lower := 28561, upper := 28594, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good173_checked :
    goodSegmentCheck 164 54 116
      { lower := 28717, upper := 28724, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good174_checked :
    goodSegmentCheck 164 54 116
      { lower := 28812, upper := 28880, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good175_checked :
    goodSegmentCheck 164 54 116
      { lower := 29791, upper := 29931, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good176_checked :
    goodSegmentCheck 164 54 116
      { lower := 30618, upper := 30756, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good177_checked :
    goodSegmentCheck 164 54 116
      { lower := 30757, upper := 30781, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good178_checked :
    goodSegmentCheck 164 54 116
      { lower := 30899, upper := 30921, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good179_checked :
    goodSegmentCheck 164 54 116
      { lower := 30926, upper := 31062, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good180_checked :
    goodSegmentCheck 164 54 116
      { lower := 31213, upper := 31356, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good181_checked :
    goodSegmentCheck 164 54 116
      { lower := 31357, upper := 31413, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good182_checked :
    goodSegmentCheck 164 54 116
      { lower := 31423, upper := 31492, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good183_checked :
    goodSegmentCheck 164 54 116
      { lower := 31827, upper := 31847, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good184_checked :
    goodSegmentCheck 164 54 116
      { lower := 31974, upper := 31990, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good185_checked :
    goodSegmentCheck 164 54 116
      { lower := 32805, upper := 32931, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good186_checked :
    goodSegmentCheck 164 54 116
      { lower := 32955, upper := 32968, witness := RowWitness.topPrime 32941 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good187_checked :
    goodSegmentCheck 164 54 116
      { lower := 33614, upper := 33652, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good188_checked :
    goodSegmentCheck 164 54 116
      { lower := 33708, upper := 33777, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good189_checked :
    goodSegmentCheck 164 54 116
      { lower := 34322, upper := 34482, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good190_checked :
    goodSegmentCheck 164 54 116
      { lower := 34483, upper := 34554, witness := RowWitness.topPrime 34483 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good191_checked :
    goodSegmentCheck 164 54 116
      { lower := 36015, upper := 36075, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good192_checked :
    goodSegmentCheck 164 54 116
      { lower := 36517, upper := 36660, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good193_checked :
    goodSegmentCheck 164 54 116
      { lower := 36661, upper := 36664, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good194_checked :
    goodSegmentCheck 164 54 116
      { lower := 37303, upper := 37373, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good195_checked :
    goodSegmentCheck 164 54 116
      { lower := 37446, upper := 37466, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good196_checked :
    goodSegmentCheck 164 54 116
      { lower := 37500, upper := 37656, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good197_checked :
    goodSegmentCheck 164 54 116
      { lower := 37657, upper := 37701, witness := RowWitness.topPrime 37657 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good198_checked :
    goodSegmentCheck 164 54 116
      { lower := 38307, upper := 38454, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good199_checked :
    goodSegmentCheck 164 54 116
      { lower := 39326, upper := 39486, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good200_checked :
    goodSegmentCheck 164 54 116
      { lower := 39487, upper := 39489, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good201_checked :
    goodSegmentCheck 164 54 116
      { lower := 40401, upper := 40491, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good202_checked :
    goodSegmentCheck 164 54 116
      { lower := 40931, upper := 40967, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good203_checked :
    goodSegmentCheck 164 54 116
      { lower := 43750, upper := 43850, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good204_checked :
    goodSegmentCheck 164 54 116
      { lower := 45369, upper := 45416, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good205_checked :
    goodSegmentCheck 164 54 116
      { lower := 45927, upper := 45959, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good206_checked :
    goodSegmentCheck 164 54 116
      { lower := 47526, upper := 47684, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good207_checked :
    goodSegmentCheck 164 54 116
      { lower := 47685, upper := 47687, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good208_checked :
    goodSegmentCheck 164 54 116
      { lower := 48013, upper := 48124, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good209_checked :
    goodSegmentCheck 164 54 116
      { lower := 48373, upper := 48534, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good210_checked :
    goodSegmentCheck 164 54 116
      { lower := 48535, upper := 48536, witness := RowWitness.topPrime 48533 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good211_checked :
    goodSegmentCheck 164 54 116
      { lower := 48734, upper := 48896, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good212_checked :
    goodSegmentCheck 164 54 116
      { lower := 48897, upper := 48897, witness := RowWitness.topPrime 48889 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good213_checked :
    goodSegmentCheck 164 54 116
      { lower := 49152, upper := 49293, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good214_checked :
    goodSegmentCheck 164 54 116
      { lower := 49298, upper := 49315, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good215_checked :
    goodSegmentCheck 164 54 116
      { lower := 49379, upper := 49461, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good216_checked :
    goodSegmentCheck 164 54 116
      { lower := 50421, upper := 50573, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good217_checked :
    goodSegmentCheck 164 54 116
      { lower := 51076, upper := 51168, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good218_checked :
    goodSegmentCheck 164 54 116
      { lower := 52215, upper := 52257, witness := RowWitness.topPrime 52201 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good219_checked :
    goodSegmentCheck 164 54 116
      { lower := 53138, upper := 53208, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good220_checked :
    goodSegmentCheck 164 54 116
      { lower := 53290, upper := 53301, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good221_checked :
    goodSegmentCheck 164 54 116
      { lower := 55451, upper := 55604, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good222_checked :
    goodSegmentCheck 164 54 116
      { lower := 55605, upper := 55610, witness := RowWitness.topPrime 55603 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good223_checked :
    goodSegmentCheck 164 54 116
      { lower := 56307, upper := 56332, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_good224_checked :
    goodSegmentCheck 164 54 116
      { lower := 56454, upper := 56470, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good225_checked :
    goodSegmentCheck 164 54 116
      { lower := 57245, upper := 57285, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good226_checked :
    goodSegmentCheck 164 54 116
      { lower := 58619, upper := 58727, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good227_checked :
    goodSegmentCheck 164 54 116
      { lower := 62500, upper := 62573, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good228_checked :
    goodSegmentCheck 164 54 116
      { lower := 65610, upper := 65699, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good229_checked :
    goodSegmentCheck 164 54 116
      { lower := 68644, upper := 68802, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good230_checked :
    goodSegmentCheck 164 54 116
      { lower := 68803, upper := 68814, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good231_checked :
    goodSegmentCheck 164 54 116
      { lower := 71289, upper := 71450, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good232_checked :
    goodSegmentCheck 164 54 116
      { lower := 71451, upper := 71452, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good233_checked :
    goodSegmentCheck 164 54 116
      { lower := 73205, upper := 73330, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good234_checked :
    goodSegmentCheck 164 54 116
      { lower := 85805, upper := 85846, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good235_checked :
    goodSegmentCheck 164 54 116
      { lower := 89383, upper := 89536, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good236_checked :
    goodSegmentCheck 164 54 116
      { lower := 93845, upper := 93913, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good237_checked :
    goodSegmentCheck 164 54 116
      { lower := 102152, upper := 102173, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good238_checked :
    goodSegmentCheck 164 54 116
      { lower := 103041, upper := 103129, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row164_good239_checked :
    goodSegmentCheck 164 54 116
      { lower := 148955, upper := 149040, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 164) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_goods_checked :
    row164.goods.all (goodSegmentCheck row164.height.i row164.height.r row164.height.s) = true := by
  change row164_goods.all (goodSegmentCheck 164 54 116) = true
  simp only [row164_goods, List.all_cons, List.all_nil,
    row164_good000_checked,
    row164_good001_checked,
    row164_good002_checked,
    row164_good003_checked,
    row164_good004_checked,
    row164_good005_checked,
    row164_good006_checked,
    row164_good007_checked,
    row164_good008_checked,
    row164_good009_checked,
    row164_good010_checked,
    row164_good011_checked,
    row164_good012_checked,
    row164_good013_checked,
    row164_good014_checked,
    row164_good015_checked,
    row164_good016_checked,
    row164_good017_checked,
    row164_good018_checked,
    row164_good019_checked,
    row164_good020_checked,
    row164_good021_checked,
    row164_good022_checked,
    row164_good023_checked,
    row164_good024_checked,
    row164_good025_checked,
    row164_good026_checked,
    row164_good027_checked,
    row164_good028_checked,
    row164_good029_checked,
    row164_good030_checked,
    row164_good031_checked,
    row164_good032_checked,
    row164_good033_checked,
    row164_good034_checked,
    row164_good035_checked,
    row164_good036_checked,
    row164_good037_checked,
    row164_good038_checked,
    row164_good039_checked,
    row164_good040_checked,
    row164_good041_checked,
    row164_good042_checked,
    row164_good043_checked,
    row164_good044_checked,
    row164_good045_checked,
    row164_good046_checked,
    row164_good047_checked,
    row164_good048_checked,
    row164_good049_checked,
    row164_good050_checked,
    row164_good051_checked,
    row164_good052_checked,
    row164_good053_checked,
    row164_good054_checked,
    row164_good055_checked,
    row164_good056_checked,
    row164_good057_checked,
    row164_good058_checked,
    row164_good059_checked,
    row164_good060_checked,
    row164_good061_checked,
    row164_good062_checked,
    row164_good063_checked,
    row164_good064_checked,
    row164_good065_checked,
    row164_good066_checked,
    row164_good067_checked,
    row164_good068_checked,
    row164_good069_checked,
    row164_good070_checked,
    row164_good071_checked,
    row164_good072_checked,
    row164_good073_checked,
    row164_good074_checked,
    row164_good075_checked,
    row164_good076_checked,
    row164_good077_checked,
    row164_good078_checked,
    row164_good079_checked,
    row164_good080_checked,
    row164_good081_checked,
    row164_good082_checked,
    row164_good083_checked,
    row164_good084_checked,
    row164_good085_checked,
    row164_good086_checked,
    row164_good087_checked,
    row164_good088_checked,
    row164_good089_checked,
    row164_good090_checked,
    row164_good091_checked,
    row164_good092_checked,
    row164_good093_checked,
    row164_good094_checked,
    row164_good095_checked,
    row164_good096_checked,
    row164_good097_checked,
    row164_good098_checked,
    row164_good099_checked,
    row164_good100_checked,
    row164_good101_checked,
    row164_good102_checked,
    row164_good103_checked,
    row164_good104_checked,
    row164_good105_checked,
    row164_good106_checked,
    row164_good107_checked,
    row164_good108_checked,
    row164_good109_checked,
    row164_good110_checked,
    row164_good111_checked,
    row164_good112_checked,
    row164_good113_checked,
    row164_good114_checked,
    row164_good115_checked,
    row164_good116_checked,
    row164_good117_checked,
    row164_good118_checked,
    row164_good119_checked,
    row164_good120_checked,
    row164_good121_checked,
    row164_good122_checked,
    row164_good123_checked,
    row164_good124_checked,
    row164_good125_checked,
    row164_good126_checked,
    row164_good127_checked,
    row164_good128_checked,
    row164_good129_checked,
    row164_good130_checked,
    row164_good131_checked,
    row164_good132_checked,
    row164_good133_checked,
    row164_good134_checked,
    row164_good135_checked,
    row164_good136_checked,
    row164_good137_checked,
    row164_good138_checked,
    row164_good139_checked,
    row164_good140_checked,
    row164_good141_checked,
    row164_good142_checked,
    row164_good143_checked,
    row164_good144_checked,
    row164_good145_checked,
    row164_good146_checked,
    row164_good147_checked,
    row164_good148_checked,
    row164_good149_checked,
    row164_good150_checked,
    row164_good151_checked,
    row164_good152_checked,
    row164_good153_checked,
    row164_good154_checked,
    row164_good155_checked,
    row164_good156_checked,
    row164_good157_checked,
    row164_good158_checked,
    row164_good159_checked,
    row164_good160_checked,
    row164_good161_checked,
    row164_good162_checked,
    row164_good163_checked,
    row164_good164_checked,
    row164_good165_checked,
    row164_good166_checked,
    row164_good167_checked,
    row164_good168_checked,
    row164_good169_checked,
    row164_good170_checked,
    row164_good171_checked,
    row164_good172_checked,
    row164_good173_checked,
    row164_good174_checked,
    row164_good175_checked,
    row164_good176_checked,
    row164_good177_checked,
    row164_good178_checked,
    row164_good179_checked,
    row164_good180_checked,
    row164_good181_checked,
    row164_good182_checked,
    row164_good183_checked,
    row164_good184_checked,
    row164_good185_checked,
    row164_good186_checked,
    row164_good187_checked,
    row164_good188_checked,
    row164_good189_checked,
    row164_good190_checked,
    row164_good191_checked,
    row164_good192_checked,
    row164_good193_checked,
    row164_good194_checked,
    row164_good195_checked,
    row164_good196_checked,
    row164_good197_checked,
    row164_good198_checked,
    row164_good199_checked,
    row164_good200_checked,
    row164_good201_checked,
    row164_good202_checked,
    row164_good203_checked,
    row164_good204_checked,
    row164_good205_checked,
    row164_good206_checked,
    row164_good207_checked,
    row164_good208_checked,
    row164_good209_checked,
    row164_good210_checked,
    row164_good211_checked,
    row164_good212_checked,
    row164_good213_checked,
    row164_good214_checked,
    row164_good215_checked,
    row164_good216_checked,
    row164_good217_checked,
    row164_good218_checked,
    row164_good219_checked,
    row164_good220_checked,
    row164_good221_checked,
    row164_good222_checked,
    row164_good223_checked,
    row164_good224_checked,
    row164_good225_checked,
    row164_good226_checked,
    row164_good227_checked,
    row164_good228_checked,
    row164_good229_checked,
    row164_good230_checked,
    row164_good231_checked,
    row164_good232_checked,
    row164_good233_checked,
    row164_good234_checked,
    row164_good235_checked,
    row164_good236_checked,
    row164_good237_checked,
    row164_good238_checked,
    row164_good239_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_registered :
    decide (row164.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row164_small_checked :
    coverCheck (2 * row164.height.i + 2) (row164.height.i * (row164.height.i - 1) - 1)
      (row164.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row164_layerCover_checked :
    coverCheck (row164.height.i * (row164.height.i - 1)) (row164.height.n0 - 1)
      (row164.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row164_bounds : List NatInterval :=
  [(330, 480), (481, 642), (643, 806), (807, 960), (961, 1116), (1117, 1280), (1281, 1442), (1443, 1602), (1603, 1764), (1765, 1922), (1923, 2076), (2077, 2232), (2233, 2384), (2385, 2546), (2547, 2706), (2707, 2870), (2871, 3024), (3025, 3186), (3187, 3350), (3351, 3510), (3511, 3674), (3675, 3836), (3837, 3996), (3997, 4152), (4153, 4316), (4317, 4460), (4461, 4620), (4621, 4784), (4785, 4946), (4947, 5106), (5107, 5270), (5271, 5424), (5425, 5582), (5583, 5744), (5745, 5906), (5907, 6066), (6067, 6230), (6231, 6392), (6393, 6552), (6553, 6716), (6717, 6872), (6873, 7034), (7035, 7190), (7191, 7350), (7351, 7514), (7515, 7670), (7671, 7832), (7833, 7992), (7993, 8156), (8157, 8310), (8311, 8474), (8475, 8630), (8631, 8792), (8793, 8946), (8947, 9104), (9105, 9266), (9267, 9420), (9421, 9584), (9585, 9714), (9715, 9860), (9861, 10022), (10023, 10172), (10173, 10332), (10333, 10496), (10497, 10650), (10651, 10814), (10815, 10962), (10963, 11120), (11121, 11282), (11283, 11442), (11443, 11606), (11607, 11760), (11761, 11906), (11907, 12066), (12067, 12212), (12213, 12374), (12375, 12536), (12537, 12690), (12691, 12852), (12853, 13016), (13017, 13172), (13173, 13334), (13335, 13494), (13495, 13650), (13651, 13812), (13813, 13970), (13971, 14130), (14131, 14270), (14271, 14414), (14415, 14574), (14575, 14726), (14727, 14886), (14887, 15050), (15051, 15194), (15195, 15356), (15357, 15512), (15513, 15674), (15675, 15834), (15835, 15986), (15987, 16136), (16137, 16290), (16291, 16436), (16437, 16596), (16597, 16736), (16737, 16892), (16893, 17052), (17053, 17216), (17217, 17372), (17373, 17522), (17523, 17682), (17683, 17846), (17847, 18002), (18003, 18152), (18153, 18312), (18313, 18476), (18477, 18624), (18625, 18780), (18781, 18936), (18937, 19082), (19083, 19244), (19245, 19400), (19401, 19554), (19555, 19716), (19717, 19880), (19881, 20030), (20031, 20192), (20193, 20346), (20347, 20510), (20511, 20672), (20673, 20826), (20827, 20972), (20973, 21126), (21127, 21284), (21285, 21446), (21447, 21596), (21597, 21752), (21753, 21914), (21915, 22074), (22075, 22236), (22237, 22392), (22393, 22554), (22555, 22712), (22713, 22872), (22873, 23034), (23035, 23192), (23193, 23352), (23353, 23502), (23503, 23660), (23661, 23796), (23797, 23952), (23953, 24092), (24093, 24254), (24255, 24414), (24415, 24576), (24577, 24734), (24735, 24896), (24897, 25052), (25053, 25200), (25201, 25352), (25353, 25512), (25513, 25634), (25635, 25796), (25797, 25956), (25957, 26114), (26115, 26276), (26277, 26430), (26431, 26594), (26595, 26732), (27556, 27599), (27848, 27898), (28125, 28286), (28287, 28288), (28561, 28594), (28717, 28724), (28812, 28880), (29791, 29931), (30618, 30756), (30757, 30781), (30899, 30921), (30926, 31062), (31213, 31356), (31357, 31413), (31423, 31492), (31827, 31847), (31974, 31990), (32805, 32931), (32955, 32968), (33614, 33652), (33708, 33777), (34322, 34482), (34483, 34554), (36015, 36075), (36517, 36660), (36661, 36664), (37303, 37373), (37446, 37466), (37500, 37656), (37657, 37701), (38307, 38454), (39326, 39486), (39487, 39489), (40401, 40491), (40931, 40967), (43750, 43850), (45369, 45416), (45927, 45959), (47526, 47684), (47685, 47687), (48013, 48124), (48373, 48534), (48535, 48536), (48734, 48896), (48897, 48897), (49152, 49293), (49298, 49315), (49379, 49461), (50421, 50573), (51076, 51168), (52215, 52257), (53138, 53208), (53290, 53301), (55451, 55604), (55605, 55610), (56307, 56332), (56454, 56470), (57245, 57285), (58619, 58727), (62500, 62573), (65610, 65699), (68644, 68802), (68803, 68814), (71289, 71450), (71451, 71452), (73205, 73330), (85805, 85846), (89383, 89536), (93845, 93913), (102152, 102173), (103041, 103129), (148955, 149040)]

theorem row164_bounds_eq : row164.goods.map goodSegmentBounds = row164_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row164_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32931), (2, 49152, 49315), (2, 32768, 32931), (3, 28431, 28594), (3, 30618, 30781), (3, 32805, 32968), (3, 32805, 32968), (3, 39366, 39529), (3, 45927, 46090), (3, 52488, 52651), (3, 39366, 39529), (5, 28125, 28288), (5, 31250, 31413), (5, 34375, 34538), (5, 37500, 37663), (5, 40625, 40788), (5, 43750, 43913), (5, 46875, 47038), (5, 31250, 31413), (5, 46875, 47038), (7, 28812, 28975), (7, 31213, 31376), (7, 33614, 33777), (7, 36015, 36178), (7, 33614, 33777), (7, 50421, 50584), (11, 29282, 29445), (11, 43923, 44086), (13, 28561, 28724), (13, 30758, 30921), (13, 32955, 33118), (13, 28561, 28724), (17, 29478, 29641), (17, 34391, 34554), (17, 39304, 39467), (17, 44217, 44380), (17, 49130, 49293), (19, 27436, 27599), (19, 34295, 34458), (19, 41154, 41317), (19, 48013, 48176), (23, 36501, 36664), (23, 48668, 48831), (29, 48778, 48941), (31, 29791, 29954), (37, 50653, 50816), (43, 27735, 27898), (47, 28717, 28880), (47, 30926, 31089), (47, 33135, 33298), (53, 28090, 28253), (53, 30899, 31062), (53, 33708, 33871), (53, 36517, 36680), (53, 39326, 39489), (53, 42135, 42298), (59, 27848, 28011), (59, 31329, 31492), (59, 34810, 34973), (59, 38291, 38454), (59, 41772, 41935), (59, 45253, 45416), (59, 48734, 48897), (59, 52215, 52378), (61, 29768, 29931), (61, 33489, 33652), (61, 37210, 37373), (61, 40931, 41094), (61, 44652, 44815), (61, 48373, 48536), (61, 52094, 52257), (67, 26934, 27097), (67, 31423, 31586), (67, 35912, 36075), (67, 40401, 40564), (67, 44890, 45053), (67, 49379, 49542), (71, 30246, 30409), (71, 35287, 35450), (71, 40328, 40491), (71, 45369, 45532), (71, 50410, 50573), (73, 26732, 26808), (73, 31974, 32137), (73, 37303, 37466), (73, 42632, 42795), (73, 47961, 48124), (73, 53290, 53453), (79, 31205, 31368), (79, 37446, 37609), (79, 43687, 43850), (79, 49928, 50091), (83, 27556, 27719), (83, 34445, 34608), (83, 41334, 41497), (83, 48223, 48386), (89, 31684, 31847), (89, 39605, 39768), (89, 47526, 47689), (97, 28227, 28390), (97, 37636, 37799), (97, 47045, 47208), (101, 30603, 30766), (101, 40804, 40967), (101, 51005, 51168), (103, 31827, 31990), (103, 42436, 42599), (103, 53045, 53208), (107, 34347, 34510), (107, 45796, 45959), (109, 35643, 35806), (109, 47524, 47687), (113, 38307, 38470), (113, 51076, 51239), (127, 32258, 32421), (127, 48387, 48550), (131, 34322, 34485), (131, 51483, 51646), (137, 37538, 37701), (139, 38642, 38805), (149, 44402, 44565), (151, 45602, 45765), (157, 49298, 49461), (163, 26732, 26732), (163, 53138, 53301)]

def row164_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32931), (2, 49152, 49315), (2, 32768, 32931), (3, 28431, 28594), (3, 30618, 30781), (3, 32805, 32968), (3, 32805, 32968), (3, 39366, 39529), (3, 45927, 46090), (3, 52488, 52651), (3, 39366, 39529), (5, 28125, 28288), (5, 31250, 31413), (5, 34375, 34538), (5, 37500, 37663), (5, 40625, 40788)]

def row164_layer000_block001 : List ColouredInterval :=
  [(5, 43750, 43913), (5, 46875, 47038), (5, 31250, 31413), (5, 46875, 47038), (7, 28812, 28975), (7, 31213, 31376), (7, 33614, 33777), (7, 36015, 36178), (7, 33614, 33777), (7, 50421, 50584), (11, 29282, 29445), (11, 43923, 44086), (13, 28561, 28724), (13, 30758, 30921), (13, 32955, 33118), (13, 28561, 28724)]

def row164_layer000_block002 : List ColouredInterval :=
  [(17, 29478, 29641), (17, 34391, 34554), (17, 39304, 39467), (17, 44217, 44380), (17, 49130, 49293), (19, 27436, 27599), (19, 34295, 34458), (19, 41154, 41317), (19, 48013, 48176), (23, 36501, 36664), (23, 48668, 48831), (29, 48778, 48941), (31, 29791, 29954), (37, 50653, 50816), (43, 27735, 27898), (47, 28717, 28880)]

def row164_layer000_block003 : List ColouredInterval :=
  [(47, 30926, 31089), (47, 33135, 33298), (53, 28090, 28253), (53, 30899, 31062), (53, 33708, 33871), (53, 36517, 36680), (53, 39326, 39489), (53, 42135, 42298), (59, 27848, 28011), (59, 31329, 31492), (59, 34810, 34973), (59, 38291, 38454), (59, 41772, 41935), (59, 45253, 45416), (59, 48734, 48897), (59, 52215, 52378)]

def row164_layer000_block004 : List ColouredInterval :=
  [(61, 29768, 29931), (61, 33489, 33652), (61, 37210, 37373), (61, 40931, 41094), (61, 44652, 44815), (61, 48373, 48536), (61, 52094, 52257), (67, 26934, 27097), (67, 31423, 31586), (67, 35912, 36075), (67, 40401, 40564), (67, 44890, 45053), (67, 49379, 49542), (71, 30246, 30409), (71, 35287, 35450), (71, 40328, 40491)]

def row164_layer000_block005 : List ColouredInterval :=
  [(71, 45369, 45532), (71, 50410, 50573), (73, 26732, 26808), (73, 31974, 32137), (73, 37303, 37466), (73, 42632, 42795), (73, 47961, 48124), (73, 53290, 53453), (79, 31205, 31368), (79, 37446, 37609), (79, 43687, 43850), (79, 49928, 50091), (83, 27556, 27719), (83, 34445, 34608), (83, 41334, 41497), (83, 48223, 48386)]

def row164_layer000_block006 : List ColouredInterval :=
  [(89, 31684, 31847), (89, 39605, 39768), (89, 47526, 47689), (97, 28227, 28390), (97, 37636, 37799), (97, 47045, 47208), (101, 30603, 30766), (101, 40804, 40967), (101, 51005, 51168), (103, 31827, 31990), (103, 42436, 42599), (103, 53045, 53208), (107, 34347, 34510), (107, 45796, 45959), (109, 35643, 35806), (109, 47524, 47687)]

def row164_layer000_block007 : List ColouredInterval :=
  [(113, 38307, 38470), (113, 51076, 51239), (127, 32258, 32421), (127, 48387, 48550), (131, 34322, 34485), (131, 51483, 51646), (137, 37538, 37701), (139, 38642, 38805), (149, 44402, 44565), (151, 45602, 45765), (157, 49298, 49461), (163, 26732, 26732), (163, 53138, 53301)]

def row164_layer000_chunks : List (List ColouredInterval) :=
  [row164_layer000_block000, row164_layer000_block001, row164_layer000_block002, row164_layer000_block003, row164_layer000_block004, row164_layer000_block005, row164_layer000_block006, row164_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_arithmetic : LayerArithmeticValid row164.height { lower := 26732, upper := 53464, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_enumeration :
    activePowerIntervalList 164 15 26732 53464 = row164_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_pairs000 :
    row164_layer000_block000.all (fun I => row164_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row164_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_pairs001 :
    row164_layer000_block001.all (fun I => row164_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row164_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_pairs002 :
    row164_layer000_block002.all (fun I => row164_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row164_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_pairs003 :
    row164_layer000_block003.all (fun I => row164_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row164_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_pairs004 :
    row164_layer000_block004.all (fun I => row164_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row164_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_pairs005 :
    row164_layer000_block005.all (fun I => row164_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row164_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_pairs006 :
    row164_layer000_block006.all (fun I => row164_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row164_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_pairs007 :
    row164_layer000_block007.all (fun I => row164_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row164_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_chunks_eq : row164_layer000_chunks.flatten = row164_layer000_intervals := by
  rfl

theorem row164_layer000_pairs : pairCoverCheck row164_layer000_intervals row164_bounds = true := by
  apply pairCoverCheck_of_chunks row164_layer000_chunks_eq
  intro block hblock
  simp only [row164_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row164_layer000_pairs000
  · exact row164_layer000_pairs001
  · exact row164_layer000_pairs002
  · exact row164_layer000_pairs003
  · exact row164_layer000_pairs004
  · exact row164_layer000_pairs005
  · exact row164_layer000_pairs006
  · exact row164_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer000_checked :
    coverLayerCheck row164.height row164.goods { lower := 26732, upper := 53464, M := 15 } = true := by
  exact coverLayerCheck_of_parts row164_layer000_arithmetic row164_layer000_enumeration row164_bounds_eq row164_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer000_checked
