import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row175_height : HeightCertificateDatum := { i := 175, r := 58, s := 124, n0Power10 := 7 }

def row175_goods : List GoodSegment := [
  { lower := 352, upper := 523, witness := RowWitness.topPrime 349 },
  { lower := 524, upper := 697, witness := RowWitness.topPrime 523 },
  { lower := 698, upper := 865, witness := RowWitness.topPrime 691 },
  { lower := 866, upper := 1037, witness := RowWitness.topPrime 863 },
  { lower := 1038, upper := 1207, witness := RowWitness.topPrime 1033 },
  { lower := 1208, upper := 1375, witness := RowWitness.topPrime 1201 },
  { lower := 1376, upper := 1547, witness := RowWitness.topPrime 1373 },
  { lower := 1548, upper := 1717, witness := RowWitness.topPrime 1543 },
  { lower := 1718, upper := 1883, witness := RowWitness.topPrime 1709 },
  { lower := 1884, upper := 2053, witness := RowWitness.topPrime 1879 },
  { lower := 2054, upper := 2227, witness := RowWitness.topPrime 2053 },
  { lower := 2228, upper := 2395, witness := RowWitness.topPrime 2221 },
  { lower := 2396, upper := 2567, witness := RowWitness.topPrime 2393 },
  { lower := 2568, upper := 2731, witness := RowWitness.topPrime 2557 },
  { lower := 2732, upper := 2905, witness := RowWitness.topPrime 2731 },
  { lower := 2906, upper := 3077, witness := RowWitness.topPrime 2903 },
  { lower := 3078, upper := 3241, witness := RowWitness.topPrime 3067 },
  { lower := 3242, upper := 3403, witness := RowWitness.topPrime 3229 },
  { lower := 3404, upper := 3565, witness := RowWitness.topPrime 3391 },
  { lower := 3566, upper := 3733, witness := RowWitness.topPrime 3559 },
  { lower := 3734, upper := 3907, witness := RowWitness.topPrime 3733 },
  { lower := 3908, upper := 4081, witness := RowWitness.topPrime 3907 },
  { lower := 4082, upper := 4253, witness := RowWitness.topPrime 4079 },
  { lower := 4254, upper := 4427, witness := RowWitness.topPrime 4253 },
  { lower := 4428, upper := 4597, witness := RowWitness.topPrime 4423 },
  { lower := 4598, upper := 4771, witness := RowWitness.topPrime 4597 },
  { lower := 4772, upper := 4933, witness := RowWitness.topPrime 4759 },
  { lower := 4934, upper := 5107, witness := RowWitness.topPrime 4933 },
  { lower := 5108, upper := 5281, witness := RowWitness.topPrime 5107 },
  { lower := 5282, upper := 5455, witness := RowWitness.topPrime 5281 },
  { lower := 5456, upper := 5623, witness := RowWitness.topPrime 5449 },
  { lower := 5624, upper := 5797, witness := RowWitness.topPrime 5623 },
  { lower := 5798, upper := 5965, witness := RowWitness.topPrime 5791 },
  { lower := 5966, upper := 6127, witness := RowWitness.topPrime 5953 },
  { lower := 6128, upper := 6295, witness := RowWitness.topPrime 6121 },
  { lower := 6296, upper := 6461, witness := RowWitness.topPrime 6287 },
  { lower := 6462, upper := 6625, witness := RowWitness.topPrime 6451 },
  { lower := 6626, upper := 6793, witness := RowWitness.topPrime 6619 },
  { lower := 6794, upper := 6967, witness := RowWitness.topPrime 6793 },
  { lower := 6968, upper := 7141, witness := RowWitness.topPrime 6967 },
  { lower := 7142, upper := 7303, witness := RowWitness.topPrime 7129 },
  { lower := 7304, upper := 7471, witness := RowWitness.topPrime 7297 },
  { lower := 7472, upper := 7633, witness := RowWitness.topPrime 7459 },
  { lower := 7634, upper := 7795, witness := RowWitness.topPrime 7621 },
  { lower := 7796, upper := 7967, witness := RowWitness.topPrime 7793 },
  { lower := 7968, upper := 8137, witness := RowWitness.topPrime 7963 },
  { lower := 8138, upper := 8297, witness := RowWitness.topPrime 8123 },
  { lower := 8298, upper := 8471, witness := RowWitness.topPrime 8297 },
  { lower := 8472, upper := 8641, witness := RowWitness.topPrime 8467 },
  { lower := 8642, upper := 8815, witness := RowWitness.topPrime 8641 },
  { lower := 8816, upper := 8981, witness := RowWitness.topPrime 8807 },
  { lower := 8982, upper := 9145, witness := RowWitness.topPrime 8971 },
  { lower := 9146, upper := 9311, witness := RowWitness.topPrime 9137 },
  { lower := 9312, upper := 9485, witness := RowWitness.topPrime 9311 },
  { lower := 9486, upper := 9653, witness := RowWitness.topPrime 9479 },
  { lower := 9654, upper := 9823, witness := RowWitness.topPrime 9649 },
  { lower := 9824, upper := 9991, witness := RowWitness.topPrime 9817 },
  { lower := 9992, upper := 10147, witness := RowWitness.topPrime 9973 },
  { lower := 10148, upper := 10315, witness := RowWitness.topPrime 10141 },
  { lower := 10316, upper := 10487, witness := RowWitness.topPrime 10313 },
  { lower := 10488, upper := 10661, witness := RowWitness.topPrime 10487 },
  { lower := 10662, upper := 10831, witness := RowWitness.topPrime 10657 },
  { lower := 10832, upper := 11005, witness := RowWitness.topPrime 10831 },
  { lower := 11006, upper := 11177, witness := RowWitness.topPrime 11003 },
  { lower := 11178, upper := 11351, witness := RowWitness.topPrime 11177 },
  { lower := 11352, upper := 11525, witness := RowWitness.topPrime 11351 },
  { lower := 11526, upper := 11693, witness := RowWitness.topPrime 11519 },
  { lower := 11694, upper := 11863, witness := RowWitness.topPrime 11689 },
  { lower := 11864, upper := 12037, witness := RowWitness.topPrime 11863 },
  { lower := 12038, upper := 12211, witness := RowWitness.topPrime 12037 },
  { lower := 12212, upper := 12385, witness := RowWitness.topPrime 12211 },
  { lower := 12386, upper := 12553, witness := RowWitness.topPrime 12379 },
  { lower := 12554, upper := 12727, witness := RowWitness.topPrime 12553 },
  { lower := 12728, upper := 12895, witness := RowWitness.topPrime 12721 },
  { lower := 12896, upper := 13067, witness := RowWitness.topPrime 12893 },
  { lower := 13068, upper := 13237, witness := RowWitness.topPrime 13063 },
  { lower := 13238, upper := 13403, witness := RowWitness.topPrime 13229 },
  { lower := 13404, upper := 13573, witness := RowWitness.topPrime 13399 },
  { lower := 13574, upper := 13741, witness := RowWitness.topPrime 13567 },
  { lower := 13742, upper := 13903, witness := RowWitness.topPrime 13729 },
  { lower := 13904, upper := 14077, witness := RowWitness.topPrime 13903 },
  { lower := 14078, upper := 14245, witness := RowWitness.topPrime 14071 },
  { lower := 14246, upper := 14417, witness := RowWitness.topPrime 14243 },
  { lower := 14418, upper := 14585, witness := RowWitness.topPrime 14411 },
  { lower := 14586, upper := 14737, witness := RowWitness.topPrime 14563 },
  { lower := 14738, upper := 14911, witness := RowWitness.topPrime 14737 },
  { lower := 14912, upper := 15071, witness := RowWitness.topPrime 14897 },
  { lower := 15072, upper := 15235, witness := RowWitness.topPrime 15061 },
  { lower := 15236, upper := 15407, witness := RowWitness.topPrime 15233 },
  { lower := 15408, upper := 15575, witness := RowWitness.topPrime 15401 },
  { lower := 15576, upper := 15743, witness := RowWitness.topPrime 15569 },
  { lower := 15744, upper := 15913, witness := RowWitness.topPrime 15739 },
  { lower := 15914, upper := 16087, witness := RowWitness.topPrime 15913 },
  { lower := 16088, upper := 16261, witness := RowWitness.topPrime 16087 },
  { lower := 16262, upper := 16427, witness := RowWitness.topPrime 16253 },
  { lower := 16428, upper := 16601, witness := RowWitness.topPrime 16427 },
  { lower := 16602, upper := 16747, witness := RowWitness.topPrime 16573 },
  { lower := 16748, upper := 16921, witness := RowWitness.topPrime 16747 },
  { lower := 16922, upper := 17095, witness := RowWitness.topPrime 16921 },
  { lower := 17096, upper := 17267, witness := RowWitness.topPrime 17093 },
  { lower := 17268, upper := 17431, witness := RowWitness.topPrime 17257 },
  { lower := 17432, upper := 17605, witness := RowWitness.topPrime 17431 },
  { lower := 17606, upper := 17773, witness := RowWitness.topPrime 17599 },
  { lower := 17774, upper := 17935, witness := RowWitness.topPrime 17761 },
  { lower := 17936, upper := 18103, witness := RowWitness.topPrime 17929 },
  { lower := 18104, upper := 18271, witness := RowWitness.topPrime 18097 },
  { lower := 18272, upper := 18443, witness := RowWitness.topPrime 18269 },
  { lower := 18444, upper := 18617, witness := RowWitness.topPrime 18443 },
  { lower := 18618, upper := 18791, witness := RowWitness.topPrime 18617 },
  { lower := 18792, upper := 18961, witness := RowWitness.topPrime 18787 },
  { lower := 18962, upper := 19133, witness := RowWitness.topPrime 18959 },
  { lower := 19134, upper := 19295, witness := RowWitness.topPrime 19121 },
  { lower := 19296, upper := 19463, witness := RowWitness.topPrime 19289 },
  { lower := 19464, upper := 19637, witness := RowWitness.topPrime 19463 },
  { lower := 19638, upper := 19783, witness := RowWitness.topPrime 19609 },
  { lower := 19784, upper := 19951, witness := RowWitness.topPrime 19777 },
  { lower := 19952, upper := 20123, witness := RowWitness.topPrime 19949 },
  { lower := 20124, upper := 20297, witness := RowWitness.topPrime 20123 },
  { lower := 20298, upper := 20471, witness := RowWitness.topPrime 20297 },
  { lower := 20472, upper := 20617, witness := RowWitness.topPrime 20443 },
  { lower := 20618, upper := 20785, witness := RowWitness.topPrime 20611 },
  { lower := 20786, upper := 20947, witness := RowWitness.topPrime 20773 },
  { lower := 20948, upper := 21121, witness := RowWitness.topPrime 20947 },
  { lower := 21122, upper := 21295, witness := RowWitness.topPrime 21121 },
  { lower := 21296, upper := 21457, witness := RowWitness.topPrime 21283 },
  { lower := 21458, upper := 21607, witness := RowWitness.topPrime 21433 },
  { lower := 21608, upper := 21775, witness := RowWitness.topPrime 21601 },
  { lower := 21776, upper := 21947, witness := RowWitness.topPrime 21773 },
  { lower := 21948, upper := 22117, witness := RowWitness.topPrime 21943 },
  { lower := 22118, upper := 22285, witness := RowWitness.topPrime 22111 },
  { lower := 22286, upper := 22457, witness := RowWitness.topPrime 22283 },
  { lower := 22458, upper := 22627, witness := RowWitness.topPrime 22453 },
  { lower := 22628, upper := 22795, witness := RowWitness.topPrime 22621 },
  { lower := 22796, upper := 22961, witness := RowWitness.topPrime 22787 },
  { lower := 22962, upper := 23135, witness := RowWitness.topPrime 22961 },
  { lower := 23136, upper := 23305, witness := RowWitness.topPrime 23131 },
  { lower := 23306, upper := 23471, witness := RowWitness.topPrime 23297 },
  { lower := 23472, upper := 23633, witness := RowWitness.topPrime 23459 },
  { lower := 23634, upper := 23807, witness := RowWitness.topPrime 23633 },
  { lower := 23808, upper := 23975, witness := RowWitness.topPrime 23801 },
  { lower := 23976, upper := 24145, witness := RowWitness.topPrime 23971 },
  { lower := 24146, upper := 24311, witness := RowWitness.topPrime 24137 },
  { lower := 24312, upper := 24455, witness := RowWitness.topPrime 24281 },
  { lower := 24456, upper := 24617, witness := RowWitness.topPrime 24443 },
  { lower := 24618, upper := 24785, witness := RowWitness.topPrime 24611 },
  { lower := 24786, upper := 24955, witness := RowWitness.topPrime 24781 },
  { lower := 24956, upper := 25127, witness := RowWitness.topPrime 24953 },
  { lower := 25128, upper := 25301, witness := RowWitness.topPrime 25127 },
  { lower := 25302, upper := 25475, witness := RowWitness.topPrime 25301 },
  { lower := 25476, upper := 25645, witness := RowWitness.topPrime 25471 },
  { lower := 25646, upper := 25817, witness := RowWitness.topPrime 25643 },
  { lower := 25818, upper := 25975, witness := RowWitness.topPrime 25801 },
  { lower := 25976, upper := 26143, witness := RowWitness.topPrime 25969 },
  { lower := 26144, upper := 26315, witness := RowWitness.topPrime 26141 },
  { lower := 26316, upper := 26483, witness := RowWitness.topPrime 26309 },
  { lower := 26484, upper := 26653, witness := RowWitness.topPrime 26479 },
  { lower := 26654, upper := 26821, witness := RowWitness.topPrime 26647 },
  { lower := 26822, upper := 26995, witness := RowWitness.topPrime 26821 },
  { lower := 26996, upper := 27167, witness := RowWitness.topPrime 26993 },
  { lower := 27168, upper := 27317, witness := RowWitness.topPrime 27143 },
  { lower := 27318, upper := 27473, witness := RowWitness.topPrime 27299 },
  { lower := 27474, upper := 27631, witness := RowWitness.topPrime 27457 },
  { lower := 27632, upper := 27805, witness := RowWitness.topPrime 27631 },
  { lower := 27806, upper := 27977, witness := RowWitness.topPrime 27803 },
  { lower := 27978, upper := 28141, witness := RowWitness.topPrime 27967 },
  { lower := 28142, upper := 28297, witness := RowWitness.topPrime 28123 },
  { lower := 28298, upper := 28471, witness := RowWitness.topPrime 28297 },
  { lower := 28472, upper := 28637, witness := RowWitness.topPrime 28463 },
  { lower := 28638, upper := 28805, witness := RowWitness.topPrime 28631 },
  { lower := 28806, upper := 28967, witness := RowWitness.topPrime 28793 },
  { lower := 28968, upper := 29135, witness := RowWitness.topPrime 28961 },
  { lower := 29136, upper := 29305, witness := RowWitness.topPrime 29131 },
  { lower := 29306, upper := 29477, witness := RowWitness.topPrime 29303 },
  { lower := 29478, upper := 29647, witness := RowWitness.topPrime 29473 },
  { lower := 29648, upper := 29815, witness := RowWitness.topPrime 29641 },
  { lower := 29816, upper := 29977, witness := RowWitness.topPrime 29803 },
  { lower := 29978, upper := 30133, witness := RowWitness.topPrime 29959 },
  { lower := 30134, upper := 30307, witness := RowWitness.topPrime 30133 },
  { lower := 30308, upper := 30449, witness := RowWitness.topPrime 30307 },
  { lower := 30618, upper := 30767, witness := RowWitness.topPrime 30593 },
  { lower := 30768, upper := 30792, witness := RowWitness.topPrime 30763 },
  { lower := 30899, upper := 31067, witness := RowWitness.topPrime 30893 },
  { lower := 31068, upper := 31073, witness := RowWitness.topPrime 31063 },
  { lower := 31329, upper := 31379, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31503, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31858, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 32001, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32942, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33663, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33788, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34493, witness := RowWitness.topPrime 34319 },
  { lower := 34494, upper := 34565, witness := RowWitness.topPrime 34487 },
  { lower := 36517, upper := 36671, witness := RowWitness.topPrime 36497 },
  { lower := 36672, upper := 36675, witness := RowWitness.topPrime 36671 },
  { lower := 37303, upper := 37384, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37477, witness := RowWitness.topPrime 37441 },
  { lower := 37538, upper := 37620, witness := RowWitness.topPrime 37537 },
  { lower := 37636, upper := 37712, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38465, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39497, witness := RowWitness.topPrime 39323 },
  { lower := 39498, upper := 39500, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40502, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41101, witness := RowWitness.topPrime 40927 },
  { lower := 41102, upper := 41105, witness := RowWitness.topPrime 41081 },
  { lower := 45056, upper := 45064, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45427, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45970, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47695, witness := RowWitness.topPrime 47521 },
  { lower := 47696, upper := 47698, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48135, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48545, witness := RowWitness.topPrime 48371 },
  { lower := 48546, upper := 48547, witness := RowWitness.topPrime 48541 },
  { lower := 48734, upper := 48907, witness := RowWitness.topPrime 48733 },
  { lower := 48908, upper := 48908, witness := RowWitness.topPrime 48907 },
  { lower := 49152, upper := 49313, witness := RowWitness.topPrime 49139 },
  { lower := 49314, upper := 49326, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49472, witness := RowWitness.topPrime 49369 },
  { lower := 51076, upper := 51179, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53219, witness := RowWitness.topPrime 53129 },
  { lower := 53248, upper := 53413, witness := RowWitness.topPrime 53239 },
  { lower := 53414, upper := 53422, witness := RowWitness.topPrime 53411 },
  { lower := 55451, upper := 55615, witness := RowWitness.topPrime 55441 },
  { lower := 55616, upper := 55621, witness := RowWitness.topPrime 55609 },
  { lower := 56307, upper := 56343, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56481, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57296, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57419, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58738, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59130, witness := RowWitness.topPrime 59029 },
  { lower := 65610, upper := 65710, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68813, witness := RowWitness.topPrime 68639 },
  { lower := 68814, upper := 68818, witness := RowWitness.topPrime 68813 },
  { lower := 68921, upper := 69064, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71461, witness := RowWitness.topPrime 71287 },
  { lower := 71462, upper := 71463, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73176, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73341, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83695, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85857, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89547, witness := RowWitness.topPrime 89381 },
  { lower := 96774, upper := 96779, witness := RowWitness.topPrime 96769 },
  { lower := 98415, upper := 98478, witness := RowWitness.topPrime 98411 },
  { lower := 102152, upper := 102184, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103140, witness := RowWitness.topPrime 103007 },
  { lower := 137842, upper := 137955, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149051, witness := RowWitness.topPrime 148949 },
  { lower := 195223, upper := 195286, witness := RowWitness.topPrime 195203 }
]

def row175_layers : List CoverLayer := [
  { lower := 30450, upper := 60900, M := 14 },
  { lower := 60900, upper := 121800, M := 10 },
  { lower := 121800, upper := 243600, M := 8 },
  { lower := 243600, upper := 487200, M := 6 },
  { lower := 487200, upper := 974400, M := 4 },
  { lower := 974400, upper := 1948800, M := 3 },
  { lower := 1948800, upper := 3897600, M := 3 },
  { lower := 3897600, upper := 7795200, M := 2 },
  { lower := 7795200, upper := 10000000, M := 2 }
]

def row175 : FiniteCoverRow := {
  height := row175_height,
  goods := row175_goods,
  layers := row175_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good000_checked :
    goodSegmentCheck 175 58 124
      { lower := 352, upper := 523, witness := RowWitness.topPrime 349 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good001_checked :
    goodSegmentCheck 175 58 124
      { lower := 524, upper := 697, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good002_checked :
    goodSegmentCheck 175 58 124
      { lower := 698, upper := 865, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good003_checked :
    goodSegmentCheck 175 58 124
      { lower := 866, upper := 1037, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good004_checked :
    goodSegmentCheck 175 58 124
      { lower := 1038, upper := 1207, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good005_checked :
    goodSegmentCheck 175 58 124
      { lower := 1208, upper := 1375, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good006_checked :
    goodSegmentCheck 175 58 124
      { lower := 1376, upper := 1547, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good007_checked :
    goodSegmentCheck 175 58 124
      { lower := 1548, upper := 1717, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good008_checked :
    goodSegmentCheck 175 58 124
      { lower := 1718, upper := 1883, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good009_checked :
    goodSegmentCheck 175 58 124
      { lower := 1884, upper := 2053, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good010_checked :
    goodSegmentCheck 175 58 124
      { lower := 2054, upper := 2227, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good011_checked :
    goodSegmentCheck 175 58 124
      { lower := 2228, upper := 2395, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good012_checked :
    goodSegmentCheck 175 58 124
      { lower := 2396, upper := 2567, witness := RowWitness.topPrime 2393 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good013_checked :
    goodSegmentCheck 175 58 124
      { lower := 2568, upper := 2731, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good014_checked :
    goodSegmentCheck 175 58 124
      { lower := 2732, upper := 2905, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good015_checked :
    goodSegmentCheck 175 58 124
      { lower := 2906, upper := 3077, witness := RowWitness.topPrime 2903 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good016_checked :
    goodSegmentCheck 175 58 124
      { lower := 3078, upper := 3241, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good017_checked :
    goodSegmentCheck 175 58 124
      { lower := 3242, upper := 3403, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good018_checked :
    goodSegmentCheck 175 58 124
      { lower := 3404, upper := 3565, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good019_checked :
    goodSegmentCheck 175 58 124
      { lower := 3566, upper := 3733, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good020_checked :
    goodSegmentCheck 175 58 124
      { lower := 3734, upper := 3907, witness := RowWitness.topPrime 3733 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good021_checked :
    goodSegmentCheck 175 58 124
      { lower := 3908, upper := 4081, witness := RowWitness.topPrime 3907 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good022_checked :
    goodSegmentCheck 175 58 124
      { lower := 4082, upper := 4253, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good023_checked :
    goodSegmentCheck 175 58 124
      { lower := 4254, upper := 4427, witness := RowWitness.topPrime 4253 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good024_checked :
    goodSegmentCheck 175 58 124
      { lower := 4428, upper := 4597, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good025_checked :
    goodSegmentCheck 175 58 124
      { lower := 4598, upper := 4771, witness := RowWitness.topPrime 4597 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good026_checked :
    goodSegmentCheck 175 58 124
      { lower := 4772, upper := 4933, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good027_checked :
    goodSegmentCheck 175 58 124
      { lower := 4934, upper := 5107, witness := RowWitness.topPrime 4933 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good028_checked :
    goodSegmentCheck 175 58 124
      { lower := 5108, upper := 5281, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good029_checked :
    goodSegmentCheck 175 58 124
      { lower := 5282, upper := 5455, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good030_checked :
    goodSegmentCheck 175 58 124
      { lower := 5456, upper := 5623, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good031_checked :
    goodSegmentCheck 175 58 124
      { lower := 5624, upper := 5797, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good032_checked :
    goodSegmentCheck 175 58 124
      { lower := 5798, upper := 5965, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good033_checked :
    goodSegmentCheck 175 58 124
      { lower := 5966, upper := 6127, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good034_checked :
    goodSegmentCheck 175 58 124
      { lower := 6128, upper := 6295, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good035_checked :
    goodSegmentCheck 175 58 124
      { lower := 6296, upper := 6461, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good036_checked :
    goodSegmentCheck 175 58 124
      { lower := 6462, upper := 6625, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good037_checked :
    goodSegmentCheck 175 58 124
      { lower := 6626, upper := 6793, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good038_checked :
    goodSegmentCheck 175 58 124
      { lower := 6794, upper := 6967, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good039_checked :
    goodSegmentCheck 175 58 124
      { lower := 6968, upper := 7141, witness := RowWitness.topPrime 6967 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good040_checked :
    goodSegmentCheck 175 58 124
      { lower := 7142, upper := 7303, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good041_checked :
    goodSegmentCheck 175 58 124
      { lower := 7304, upper := 7471, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good042_checked :
    goodSegmentCheck 175 58 124
      { lower := 7472, upper := 7633, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good043_checked :
    goodSegmentCheck 175 58 124
      { lower := 7634, upper := 7795, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good044_checked :
    goodSegmentCheck 175 58 124
      { lower := 7796, upper := 7967, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good045_checked :
    goodSegmentCheck 175 58 124
      { lower := 7968, upper := 8137, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good046_checked :
    goodSegmentCheck 175 58 124
      { lower := 8138, upper := 8297, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good047_checked :
    goodSegmentCheck 175 58 124
      { lower := 8298, upper := 8471, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good048_checked :
    goodSegmentCheck 175 58 124
      { lower := 8472, upper := 8641, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good049_checked :
    goodSegmentCheck 175 58 124
      { lower := 8642, upper := 8815, witness := RowWitness.topPrime 8641 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good050_checked :
    goodSegmentCheck 175 58 124
      { lower := 8816, upper := 8981, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good051_checked :
    goodSegmentCheck 175 58 124
      { lower := 8982, upper := 9145, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good052_checked :
    goodSegmentCheck 175 58 124
      { lower := 9146, upper := 9311, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good053_checked :
    goodSegmentCheck 175 58 124
      { lower := 9312, upper := 9485, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good054_checked :
    goodSegmentCheck 175 58 124
      { lower := 9486, upper := 9653, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good055_checked :
    goodSegmentCheck 175 58 124
      { lower := 9654, upper := 9823, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good056_checked :
    goodSegmentCheck 175 58 124
      { lower := 9824, upper := 9991, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good057_checked :
    goodSegmentCheck 175 58 124
      { lower := 9992, upper := 10147, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good058_checked :
    goodSegmentCheck 175 58 124
      { lower := 10148, upper := 10315, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good059_checked :
    goodSegmentCheck 175 58 124
      { lower := 10316, upper := 10487, witness := RowWitness.topPrime 10313 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good060_checked :
    goodSegmentCheck 175 58 124
      { lower := 10488, upper := 10661, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good061_checked :
    goodSegmentCheck 175 58 124
      { lower := 10662, upper := 10831, witness := RowWitness.topPrime 10657 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good062_checked :
    goodSegmentCheck 175 58 124
      { lower := 10832, upper := 11005, witness := RowWitness.topPrime 10831 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good063_checked :
    goodSegmentCheck 175 58 124
      { lower := 11006, upper := 11177, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good064_checked :
    goodSegmentCheck 175 58 124
      { lower := 11178, upper := 11351, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good065_checked :
    goodSegmentCheck 175 58 124
      { lower := 11352, upper := 11525, witness := RowWitness.topPrime 11351 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good066_checked :
    goodSegmentCheck 175 58 124
      { lower := 11526, upper := 11693, witness := RowWitness.topPrime 11519 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good067_checked :
    goodSegmentCheck 175 58 124
      { lower := 11694, upper := 11863, witness := RowWitness.topPrime 11689 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good068_checked :
    goodSegmentCheck 175 58 124
      { lower := 11864, upper := 12037, witness := RowWitness.topPrime 11863 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good069_checked :
    goodSegmentCheck 175 58 124
      { lower := 12038, upper := 12211, witness := RowWitness.topPrime 12037 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good070_checked :
    goodSegmentCheck 175 58 124
      { lower := 12212, upper := 12385, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good071_checked :
    goodSegmentCheck 175 58 124
      { lower := 12386, upper := 12553, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good072_checked :
    goodSegmentCheck 175 58 124
      { lower := 12554, upper := 12727, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good073_checked :
    goodSegmentCheck 175 58 124
      { lower := 12728, upper := 12895, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good074_checked :
    goodSegmentCheck 175 58 124
      { lower := 12896, upper := 13067, witness := RowWitness.topPrime 12893 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good075_checked :
    goodSegmentCheck 175 58 124
      { lower := 13068, upper := 13237, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good076_checked :
    goodSegmentCheck 175 58 124
      { lower := 13238, upper := 13403, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good077_checked :
    goodSegmentCheck 175 58 124
      { lower := 13404, upper := 13573, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good078_checked :
    goodSegmentCheck 175 58 124
      { lower := 13574, upper := 13741, witness := RowWitness.topPrime 13567 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good079_checked :
    goodSegmentCheck 175 58 124
      { lower := 13742, upper := 13903, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good080_checked :
    goodSegmentCheck 175 58 124
      { lower := 13904, upper := 14077, witness := RowWitness.topPrime 13903 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good081_checked :
    goodSegmentCheck 175 58 124
      { lower := 14078, upper := 14245, witness := RowWitness.topPrime 14071 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good082_checked :
    goodSegmentCheck 175 58 124
      { lower := 14246, upper := 14417, witness := RowWitness.topPrime 14243 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good083_checked :
    goodSegmentCheck 175 58 124
      { lower := 14418, upper := 14585, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good084_checked :
    goodSegmentCheck 175 58 124
      { lower := 14586, upper := 14737, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good085_checked :
    goodSegmentCheck 175 58 124
      { lower := 14738, upper := 14911, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good086_checked :
    goodSegmentCheck 175 58 124
      { lower := 14912, upper := 15071, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good087_checked :
    goodSegmentCheck 175 58 124
      { lower := 15072, upper := 15235, witness := RowWitness.topPrime 15061 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good088_checked :
    goodSegmentCheck 175 58 124
      { lower := 15236, upper := 15407, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good089_checked :
    goodSegmentCheck 175 58 124
      { lower := 15408, upper := 15575, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good090_checked :
    goodSegmentCheck 175 58 124
      { lower := 15576, upper := 15743, witness := RowWitness.topPrime 15569 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good091_checked :
    goodSegmentCheck 175 58 124
      { lower := 15744, upper := 15913, witness := RowWitness.topPrime 15739 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good092_checked :
    goodSegmentCheck 175 58 124
      { lower := 15914, upper := 16087, witness := RowWitness.topPrime 15913 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good093_checked :
    goodSegmentCheck 175 58 124
      { lower := 16088, upper := 16261, witness := RowWitness.topPrime 16087 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good094_checked :
    goodSegmentCheck 175 58 124
      { lower := 16262, upper := 16427, witness := RowWitness.topPrime 16253 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good095_checked :
    goodSegmentCheck 175 58 124
      { lower := 16428, upper := 16601, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good096_checked :
    goodSegmentCheck 175 58 124
      { lower := 16602, upper := 16747, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good097_checked :
    goodSegmentCheck 175 58 124
      { lower := 16748, upper := 16921, witness := RowWitness.topPrime 16747 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good098_checked :
    goodSegmentCheck 175 58 124
      { lower := 16922, upper := 17095, witness := RowWitness.topPrime 16921 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good099_checked :
    goodSegmentCheck 175 58 124
      { lower := 17096, upper := 17267, witness := RowWitness.topPrime 17093 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good100_checked :
    goodSegmentCheck 175 58 124
      { lower := 17268, upper := 17431, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good101_checked :
    goodSegmentCheck 175 58 124
      { lower := 17432, upper := 17605, witness := RowWitness.topPrime 17431 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good102_checked :
    goodSegmentCheck 175 58 124
      { lower := 17606, upper := 17773, witness := RowWitness.topPrime 17599 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good103_checked :
    goodSegmentCheck 175 58 124
      { lower := 17774, upper := 17935, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good104_checked :
    goodSegmentCheck 175 58 124
      { lower := 17936, upper := 18103, witness := RowWitness.topPrime 17929 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good105_checked :
    goodSegmentCheck 175 58 124
      { lower := 18104, upper := 18271, witness := RowWitness.topPrime 18097 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good106_checked :
    goodSegmentCheck 175 58 124
      { lower := 18272, upper := 18443, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good107_checked :
    goodSegmentCheck 175 58 124
      { lower := 18444, upper := 18617, witness := RowWitness.topPrime 18443 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good108_checked :
    goodSegmentCheck 175 58 124
      { lower := 18618, upper := 18791, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good109_checked :
    goodSegmentCheck 175 58 124
      { lower := 18792, upper := 18961, witness := RowWitness.topPrime 18787 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good110_checked :
    goodSegmentCheck 175 58 124
      { lower := 18962, upper := 19133, witness := RowWitness.topPrime 18959 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good111_checked :
    goodSegmentCheck 175 58 124
      { lower := 19134, upper := 19295, witness := RowWitness.topPrime 19121 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good112_checked :
    goodSegmentCheck 175 58 124
      { lower := 19296, upper := 19463, witness := RowWitness.topPrime 19289 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good113_checked :
    goodSegmentCheck 175 58 124
      { lower := 19464, upper := 19637, witness := RowWitness.topPrime 19463 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good114_checked :
    goodSegmentCheck 175 58 124
      { lower := 19638, upper := 19783, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good115_checked :
    goodSegmentCheck 175 58 124
      { lower := 19784, upper := 19951, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good116_checked :
    goodSegmentCheck 175 58 124
      { lower := 19952, upper := 20123, witness := RowWitness.topPrime 19949 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good117_checked :
    goodSegmentCheck 175 58 124
      { lower := 20124, upper := 20297, witness := RowWitness.topPrime 20123 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good118_checked :
    goodSegmentCheck 175 58 124
      { lower := 20298, upper := 20471, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good119_checked :
    goodSegmentCheck 175 58 124
      { lower := 20472, upper := 20617, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good120_checked :
    goodSegmentCheck 175 58 124
      { lower := 20618, upper := 20785, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good121_checked :
    goodSegmentCheck 175 58 124
      { lower := 20786, upper := 20947, witness := RowWitness.topPrime 20773 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good122_checked :
    goodSegmentCheck 175 58 124
      { lower := 20948, upper := 21121, witness := RowWitness.topPrime 20947 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good123_checked :
    goodSegmentCheck 175 58 124
      { lower := 21122, upper := 21295, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good124_checked :
    goodSegmentCheck 175 58 124
      { lower := 21296, upper := 21457, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good125_checked :
    goodSegmentCheck 175 58 124
      { lower := 21458, upper := 21607, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good126_checked :
    goodSegmentCheck 175 58 124
      { lower := 21608, upper := 21775, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good127_checked :
    goodSegmentCheck 175 58 124
      { lower := 21776, upper := 21947, witness := RowWitness.topPrime 21773 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good128_checked :
    goodSegmentCheck 175 58 124
      { lower := 21948, upper := 22117, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good129_checked :
    goodSegmentCheck 175 58 124
      { lower := 22118, upper := 22285, witness := RowWitness.topPrime 22111 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good130_checked :
    goodSegmentCheck 175 58 124
      { lower := 22286, upper := 22457, witness := RowWitness.topPrime 22283 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good131_checked :
    goodSegmentCheck 175 58 124
      { lower := 22458, upper := 22627, witness := RowWitness.topPrime 22453 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good132_checked :
    goodSegmentCheck 175 58 124
      { lower := 22628, upper := 22795, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good133_checked :
    goodSegmentCheck 175 58 124
      { lower := 22796, upper := 22961, witness := RowWitness.topPrime 22787 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good134_checked :
    goodSegmentCheck 175 58 124
      { lower := 22962, upper := 23135, witness := RowWitness.topPrime 22961 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good135_checked :
    goodSegmentCheck 175 58 124
      { lower := 23136, upper := 23305, witness := RowWitness.topPrime 23131 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good136_checked :
    goodSegmentCheck 175 58 124
      { lower := 23306, upper := 23471, witness := RowWitness.topPrime 23297 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good137_checked :
    goodSegmentCheck 175 58 124
      { lower := 23472, upper := 23633, witness := RowWitness.topPrime 23459 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good138_checked :
    goodSegmentCheck 175 58 124
      { lower := 23634, upper := 23807, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good139_checked :
    goodSegmentCheck 175 58 124
      { lower := 23808, upper := 23975, witness := RowWitness.topPrime 23801 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good140_checked :
    goodSegmentCheck 175 58 124
      { lower := 23976, upper := 24145, witness := RowWitness.topPrime 23971 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good141_checked :
    goodSegmentCheck 175 58 124
      { lower := 24146, upper := 24311, witness := RowWitness.topPrime 24137 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good142_checked :
    goodSegmentCheck 175 58 124
      { lower := 24312, upper := 24455, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good143_checked :
    goodSegmentCheck 175 58 124
      { lower := 24456, upper := 24617, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good144_checked :
    goodSegmentCheck 175 58 124
      { lower := 24618, upper := 24785, witness := RowWitness.topPrime 24611 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good145_checked :
    goodSegmentCheck 175 58 124
      { lower := 24786, upper := 24955, witness := RowWitness.topPrime 24781 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good146_checked :
    goodSegmentCheck 175 58 124
      { lower := 24956, upper := 25127, witness := RowWitness.topPrime 24953 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good147_checked :
    goodSegmentCheck 175 58 124
      { lower := 25128, upper := 25301, witness := RowWitness.topPrime 25127 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good148_checked :
    goodSegmentCheck 175 58 124
      { lower := 25302, upper := 25475, witness := RowWitness.topPrime 25301 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good149_checked :
    goodSegmentCheck 175 58 124
      { lower := 25476, upper := 25645, witness := RowWitness.topPrime 25471 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good150_checked :
    goodSegmentCheck 175 58 124
      { lower := 25646, upper := 25817, witness := RowWitness.topPrime 25643 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good151_checked :
    goodSegmentCheck 175 58 124
      { lower := 25818, upper := 25975, witness := RowWitness.topPrime 25801 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good152_checked :
    goodSegmentCheck 175 58 124
      { lower := 25976, upper := 26143, witness := RowWitness.topPrime 25969 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good153_checked :
    goodSegmentCheck 175 58 124
      { lower := 26144, upper := 26315, witness := RowWitness.topPrime 26141 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good154_checked :
    goodSegmentCheck 175 58 124
      { lower := 26316, upper := 26483, witness := RowWitness.topPrime 26309 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good155_checked :
    goodSegmentCheck 175 58 124
      { lower := 26484, upper := 26653, witness := RowWitness.topPrime 26479 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good156_checked :
    goodSegmentCheck 175 58 124
      { lower := 26654, upper := 26821, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good157_checked :
    goodSegmentCheck 175 58 124
      { lower := 26822, upper := 26995, witness := RowWitness.topPrime 26821 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good158_checked :
    goodSegmentCheck 175 58 124
      { lower := 26996, upper := 27167, witness := RowWitness.topPrime 26993 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good159_checked :
    goodSegmentCheck 175 58 124
      { lower := 27168, upper := 27317, witness := RowWitness.topPrime 27143 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good160_checked :
    goodSegmentCheck 175 58 124
      { lower := 27318, upper := 27473, witness := RowWitness.topPrime 27299 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good161_checked :
    goodSegmentCheck 175 58 124
      { lower := 27474, upper := 27631, witness := RowWitness.topPrime 27457 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good162_checked :
    goodSegmentCheck 175 58 124
      { lower := 27632, upper := 27805, witness := RowWitness.topPrime 27631 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good163_checked :
    goodSegmentCheck 175 58 124
      { lower := 27806, upper := 27977, witness := RowWitness.topPrime 27803 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good164_checked :
    goodSegmentCheck 175 58 124
      { lower := 27978, upper := 28141, witness := RowWitness.topPrime 27967 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good165_checked :
    goodSegmentCheck 175 58 124
      { lower := 28142, upper := 28297, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good166_checked :
    goodSegmentCheck 175 58 124
      { lower := 28298, upper := 28471, witness := RowWitness.topPrime 28297 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good167_checked :
    goodSegmentCheck 175 58 124
      { lower := 28472, upper := 28637, witness := RowWitness.topPrime 28463 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good168_checked :
    goodSegmentCheck 175 58 124
      { lower := 28638, upper := 28805, witness := RowWitness.topPrime 28631 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good169_checked :
    goodSegmentCheck 175 58 124
      { lower := 28806, upper := 28967, witness := RowWitness.topPrime 28793 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good170_checked :
    goodSegmentCheck 175 58 124
      { lower := 28968, upper := 29135, witness := RowWitness.topPrime 28961 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good171_checked :
    goodSegmentCheck 175 58 124
      { lower := 29136, upper := 29305, witness := RowWitness.topPrime 29131 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good172_checked :
    goodSegmentCheck 175 58 124
      { lower := 29306, upper := 29477, witness := RowWitness.topPrime 29303 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good173_checked :
    goodSegmentCheck 175 58 124
      { lower := 29478, upper := 29647, witness := RowWitness.topPrime 29473 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good174_checked :
    goodSegmentCheck 175 58 124
      { lower := 29648, upper := 29815, witness := RowWitness.topPrime 29641 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good175_checked :
    goodSegmentCheck 175 58 124
      { lower := 29816, upper := 29977, witness := RowWitness.topPrime 29803 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good176_checked :
    goodSegmentCheck 175 58 124
      { lower := 29978, upper := 30133, witness := RowWitness.topPrime 29959 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good177_checked :
    goodSegmentCheck 175 58 124
      { lower := 30134, upper := 30307, witness := RowWitness.topPrime 30133 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good178_checked :
    goodSegmentCheck 175 58 124
      { lower := 30308, upper := 30449, witness := RowWitness.topPrime 30307 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good179_checked :
    goodSegmentCheck 175 58 124
      { lower := 30618, upper := 30767, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good180_checked :
    goodSegmentCheck 175 58 124
      { lower := 30768, upper := 30792, witness := RowWitness.topPrime 30763 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good181_checked :
    goodSegmentCheck 175 58 124
      { lower := 30899, upper := 31067, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good182_checked :
    goodSegmentCheck 175 58 124
      { lower := 31068, upper := 31073, witness := RowWitness.topPrime 31063 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good183_checked :
    goodSegmentCheck 175 58 124
      { lower := 31329, upper := 31379, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good184_checked :
    goodSegmentCheck 175 58 124
      { lower := 31423, upper := 31503, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good185_checked :
    goodSegmentCheck 175 58 124
      { lower := 31827, upper := 31858, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good186_checked :
    goodSegmentCheck 175 58 124
      { lower := 31974, upper := 32001, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good187_checked :
    goodSegmentCheck 175 58 124
      { lower := 32805, upper := 32942, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good188_checked :
    goodSegmentCheck 175 58 124
      { lower := 33614, upper := 33663, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good189_checked :
    goodSegmentCheck 175 58 124
      { lower := 33708, upper := 33788, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good190_checked :
    goodSegmentCheck 175 58 124
      { lower := 34322, upper := 34493, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good191_checked :
    goodSegmentCheck 175 58 124
      { lower := 34494, upper := 34565, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good192_checked :
    goodSegmentCheck 175 58 124
      { lower := 36517, upper := 36671, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good193_checked :
    goodSegmentCheck 175 58 124
      { lower := 36672, upper := 36675, witness := RowWitness.topPrime 36671 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good194_checked :
    goodSegmentCheck 175 58 124
      { lower := 37303, upper := 37384, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good195_checked :
    goodSegmentCheck 175 58 124
      { lower := 37446, upper := 37477, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good196_checked :
    goodSegmentCheck 175 58 124
      { lower := 37538, upper := 37620, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good197_checked :
    goodSegmentCheck 175 58 124
      { lower := 37636, upper := 37712, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good198_checked :
    goodSegmentCheck 175 58 124
      { lower := 38307, upper := 38465, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good199_checked :
    goodSegmentCheck 175 58 124
      { lower := 39326, upper := 39497, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good200_checked :
    goodSegmentCheck 175 58 124
      { lower := 39498, upper := 39500, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good201_checked :
    goodSegmentCheck 175 58 124
      { lower := 40401, upper := 40502, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good202_checked :
    goodSegmentCheck 175 58 124
      { lower := 40931, upper := 41101, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good203_checked :
    goodSegmentCheck 175 58 124
      { lower := 41102, upper := 41105, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good204_checked :
    goodSegmentCheck 175 58 124
      { lower := 45056, upper := 45064, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good205_checked :
    goodSegmentCheck 175 58 124
      { lower := 45369, upper := 45427, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good206_checked :
    goodSegmentCheck 175 58 124
      { lower := 45927, upper := 45970, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good207_checked :
    goodSegmentCheck 175 58 124
      { lower := 47526, upper := 47695, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good208_checked :
    goodSegmentCheck 175 58 124
      { lower := 47696, upper := 47698, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good209_checked :
    goodSegmentCheck 175 58 124
      { lower := 48013, upper := 48135, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good210_checked :
    goodSegmentCheck 175 58 124
      { lower := 48373, upper := 48545, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good211_checked :
    goodSegmentCheck 175 58 124
      { lower := 48546, upper := 48547, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good212_checked :
    goodSegmentCheck 175 58 124
      { lower := 48734, upper := 48907, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good213_checked :
    goodSegmentCheck 175 58 124
      { lower := 48908, upper := 48908, witness := RowWitness.topPrime 48907 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good214_checked :
    goodSegmentCheck 175 58 124
      { lower := 49152, upper := 49313, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good215_checked :
    goodSegmentCheck 175 58 124
      { lower := 49314, upper := 49326, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good216_checked :
    goodSegmentCheck 175 58 124
      { lower := 49379, upper := 49472, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good217_checked :
    goodSegmentCheck 175 58 124
      { lower := 51076, upper := 51179, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good218_checked :
    goodSegmentCheck 175 58 124
      { lower := 53138, upper := 53219, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good219_checked :
    goodSegmentCheck 175 58 124
      { lower := 53248, upper := 53413, witness := RowWitness.topPrime 53239 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good220_checked :
    goodSegmentCheck 175 58 124
      { lower := 53414, upper := 53422, witness := RowWitness.topPrime 53411 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good221_checked :
    goodSegmentCheck 175 58 124
      { lower := 55451, upper := 55615, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good222_checked :
    goodSegmentCheck 175 58 124
      { lower := 55616, upper := 55621, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good223_checked :
    goodSegmentCheck 175 58 124
      { lower := 56307, upper := 56343, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good224_checked :
    goodSegmentCheck 175 58 124
      { lower := 56454, upper := 56481, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good225_checked :
    goodSegmentCheck 175 58 124
      { lower := 57245, upper := 57296, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good226_checked :
    goodSegmentCheck 175 58 124
      { lower := 57344, upper := 57419, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good227_checked :
    goodSegmentCheck 175 58 124
      { lower := 58619, upper := 58738, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good228_checked :
    goodSegmentCheck 175 58 124
      { lower := 59049, upper := 59130, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good229_checked :
    goodSegmentCheck 175 58 124
      { lower := 65610, upper := 65710, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good230_checked :
    goodSegmentCheck 175 58 124
      { lower := 68644, upper := 68813, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good231_checked :
    goodSegmentCheck 175 58 124
      { lower := 68814, upper := 68818, witness := RowWitness.topPrime 68813 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good232_checked :
    goodSegmentCheck 175 58 124
      { lower := 68921, upper := 69064, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good233_checked :
    goodSegmentCheck 175 58 124
      { lower := 71289, upper := 71461, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good234_checked :
    goodSegmentCheck 175 58 124
      { lower := 71462, upper := 71463, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good235_checked :
    goodSegmentCheck 175 58 124
      { lower := 73167, upper := 73176, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good236_checked :
    goodSegmentCheck 175 58 124
      { lower := 73205, upper := 73341, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good237_checked :
    goodSegmentCheck 175 58 124
      { lower := 83667, upper := 83695, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good238_checked :
    goodSegmentCheck 175 58 124
      { lower := 85805, upper := 85857, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good239_checked :
    goodSegmentCheck 175 58 124
      { lower := 89383, upper := 89547, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_good240_checked :
    goodSegmentCheck 175 58 124
      { lower := 96774, upper := 96779, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good241_checked :
    goodSegmentCheck 175 58 124
      { lower := 98415, upper := 98478, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good242_checked :
    goodSegmentCheck 175 58 124
      { lower := 102152, upper := 102184, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good243_checked :
    goodSegmentCheck 175 58 124
      { lower := 103041, upper := 103140, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good244_checked :
    goodSegmentCheck 175 58 124
      { lower := 137842, upper := 137955, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good245_checked :
    goodSegmentCheck 175 58 124
      { lower := 148955, upper := 149051, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row175_good246_checked :
    goodSegmentCheck 175 58 124
      { lower := 195223, upper := 195286, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 175) (r := 58) (s := 124) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_good246_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_goods_checked :
    row175.goods.all (goodSegmentCheck row175.height.i row175.height.r row175.height.s) = true := by
  change row175_goods.all (goodSegmentCheck 175 58 124) = true
  simp only [row175_goods, List.all_cons, List.all_nil,
    row175_good000_checked,
    row175_good001_checked,
    row175_good002_checked,
    row175_good003_checked,
    row175_good004_checked,
    row175_good005_checked,
    row175_good006_checked,
    row175_good007_checked,
    row175_good008_checked,
    row175_good009_checked,
    row175_good010_checked,
    row175_good011_checked,
    row175_good012_checked,
    row175_good013_checked,
    row175_good014_checked,
    row175_good015_checked,
    row175_good016_checked,
    row175_good017_checked,
    row175_good018_checked,
    row175_good019_checked,
    row175_good020_checked,
    row175_good021_checked,
    row175_good022_checked,
    row175_good023_checked,
    row175_good024_checked,
    row175_good025_checked,
    row175_good026_checked,
    row175_good027_checked,
    row175_good028_checked,
    row175_good029_checked,
    row175_good030_checked,
    row175_good031_checked,
    row175_good032_checked,
    row175_good033_checked,
    row175_good034_checked,
    row175_good035_checked,
    row175_good036_checked,
    row175_good037_checked,
    row175_good038_checked,
    row175_good039_checked,
    row175_good040_checked,
    row175_good041_checked,
    row175_good042_checked,
    row175_good043_checked,
    row175_good044_checked,
    row175_good045_checked,
    row175_good046_checked,
    row175_good047_checked,
    row175_good048_checked,
    row175_good049_checked,
    row175_good050_checked,
    row175_good051_checked,
    row175_good052_checked,
    row175_good053_checked,
    row175_good054_checked,
    row175_good055_checked,
    row175_good056_checked,
    row175_good057_checked,
    row175_good058_checked,
    row175_good059_checked,
    row175_good060_checked,
    row175_good061_checked,
    row175_good062_checked,
    row175_good063_checked,
    row175_good064_checked,
    row175_good065_checked,
    row175_good066_checked,
    row175_good067_checked,
    row175_good068_checked,
    row175_good069_checked,
    row175_good070_checked,
    row175_good071_checked,
    row175_good072_checked,
    row175_good073_checked,
    row175_good074_checked,
    row175_good075_checked,
    row175_good076_checked,
    row175_good077_checked,
    row175_good078_checked,
    row175_good079_checked,
    row175_good080_checked,
    row175_good081_checked,
    row175_good082_checked,
    row175_good083_checked,
    row175_good084_checked,
    row175_good085_checked,
    row175_good086_checked,
    row175_good087_checked,
    row175_good088_checked,
    row175_good089_checked,
    row175_good090_checked,
    row175_good091_checked,
    row175_good092_checked,
    row175_good093_checked,
    row175_good094_checked,
    row175_good095_checked,
    row175_good096_checked,
    row175_good097_checked,
    row175_good098_checked,
    row175_good099_checked,
    row175_good100_checked,
    row175_good101_checked,
    row175_good102_checked,
    row175_good103_checked,
    row175_good104_checked,
    row175_good105_checked,
    row175_good106_checked,
    row175_good107_checked,
    row175_good108_checked,
    row175_good109_checked,
    row175_good110_checked,
    row175_good111_checked,
    row175_good112_checked,
    row175_good113_checked,
    row175_good114_checked,
    row175_good115_checked,
    row175_good116_checked,
    row175_good117_checked,
    row175_good118_checked,
    row175_good119_checked,
    row175_good120_checked,
    row175_good121_checked,
    row175_good122_checked,
    row175_good123_checked,
    row175_good124_checked,
    row175_good125_checked,
    row175_good126_checked,
    row175_good127_checked,
    row175_good128_checked,
    row175_good129_checked,
    row175_good130_checked,
    row175_good131_checked,
    row175_good132_checked,
    row175_good133_checked,
    row175_good134_checked,
    row175_good135_checked,
    row175_good136_checked,
    row175_good137_checked,
    row175_good138_checked,
    row175_good139_checked,
    row175_good140_checked,
    row175_good141_checked,
    row175_good142_checked,
    row175_good143_checked,
    row175_good144_checked,
    row175_good145_checked,
    row175_good146_checked,
    row175_good147_checked,
    row175_good148_checked,
    row175_good149_checked,
    row175_good150_checked,
    row175_good151_checked,
    row175_good152_checked,
    row175_good153_checked,
    row175_good154_checked,
    row175_good155_checked,
    row175_good156_checked,
    row175_good157_checked,
    row175_good158_checked,
    row175_good159_checked,
    row175_good160_checked,
    row175_good161_checked,
    row175_good162_checked,
    row175_good163_checked,
    row175_good164_checked,
    row175_good165_checked,
    row175_good166_checked,
    row175_good167_checked,
    row175_good168_checked,
    row175_good169_checked,
    row175_good170_checked,
    row175_good171_checked,
    row175_good172_checked,
    row175_good173_checked,
    row175_good174_checked,
    row175_good175_checked,
    row175_good176_checked,
    row175_good177_checked,
    row175_good178_checked,
    row175_good179_checked,
    row175_good180_checked,
    row175_good181_checked,
    row175_good182_checked,
    row175_good183_checked,
    row175_good184_checked,
    row175_good185_checked,
    row175_good186_checked,
    row175_good187_checked,
    row175_good188_checked,
    row175_good189_checked,
    row175_good190_checked,
    row175_good191_checked,
    row175_good192_checked,
    row175_good193_checked,
    row175_good194_checked,
    row175_good195_checked,
    row175_good196_checked,
    row175_good197_checked,
    row175_good198_checked,
    row175_good199_checked,
    row175_good200_checked,
    row175_good201_checked,
    row175_good202_checked,
    row175_good203_checked,
    row175_good204_checked,
    row175_good205_checked,
    row175_good206_checked,
    row175_good207_checked,
    row175_good208_checked,
    row175_good209_checked,
    row175_good210_checked,
    row175_good211_checked,
    row175_good212_checked,
    row175_good213_checked,
    row175_good214_checked,
    row175_good215_checked,
    row175_good216_checked,
    row175_good217_checked,
    row175_good218_checked,
    row175_good219_checked,
    row175_good220_checked,
    row175_good221_checked,
    row175_good222_checked,
    row175_good223_checked,
    row175_good224_checked,
    row175_good225_checked,
    row175_good226_checked,
    row175_good227_checked,
    row175_good228_checked,
    row175_good229_checked,
    row175_good230_checked,
    row175_good231_checked,
    row175_good232_checked,
    row175_good233_checked,
    row175_good234_checked,
    row175_good235_checked,
    row175_good236_checked,
    row175_good237_checked,
    row175_good238_checked,
    row175_good239_checked,
    row175_good240_checked,
    row175_good241_checked,
    row175_good242_checked,
    row175_good243_checked,
    row175_good244_checked,
    row175_good245_checked,
    row175_good246_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_registered :
    decide (row175.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row175_small_checked :
    coverCheck (2 * row175.height.i + 2) (row175.height.i * (row175.height.i - 1) - 1)
      (row175.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row175_layerCover_checked :
    coverCheck (row175.height.i * (row175.height.i - 1)) (row175.height.n0 - 1)
      (row175.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row175_bounds : List NatInterval :=
  [(352, 523), (524, 697), (698, 865), (866, 1037), (1038, 1207), (1208, 1375), (1376, 1547), (1548, 1717), (1718, 1883), (1884, 2053), (2054, 2227), (2228, 2395), (2396, 2567), (2568, 2731), (2732, 2905), (2906, 3077), (3078, 3241), (3242, 3403), (3404, 3565), (3566, 3733), (3734, 3907), (3908, 4081), (4082, 4253), (4254, 4427), (4428, 4597), (4598, 4771), (4772, 4933), (4934, 5107), (5108, 5281), (5282, 5455), (5456, 5623), (5624, 5797), (5798, 5965), (5966, 6127), (6128, 6295), (6296, 6461), (6462, 6625), (6626, 6793), (6794, 6967), (6968, 7141), (7142, 7303), (7304, 7471), (7472, 7633), (7634, 7795), (7796, 7967), (7968, 8137), (8138, 8297), (8298, 8471), (8472, 8641), (8642, 8815), (8816, 8981), (8982, 9145), (9146, 9311), (9312, 9485), (9486, 9653), (9654, 9823), (9824, 9991), (9992, 10147), (10148, 10315), (10316, 10487), (10488, 10661), (10662, 10831), (10832, 11005), (11006, 11177), (11178, 11351), (11352, 11525), (11526, 11693), (11694, 11863), (11864, 12037), (12038, 12211), (12212, 12385), (12386, 12553), (12554, 12727), (12728, 12895), (12896, 13067), (13068, 13237), (13238, 13403), (13404, 13573), (13574, 13741), (13742, 13903), (13904, 14077), (14078, 14245), (14246, 14417), (14418, 14585), (14586, 14737), (14738, 14911), (14912, 15071), (15072, 15235), (15236, 15407), (15408, 15575), (15576, 15743), (15744, 15913), (15914, 16087), (16088, 16261), (16262, 16427), (16428, 16601), (16602, 16747), (16748, 16921), (16922, 17095), (17096, 17267), (17268, 17431), (17432, 17605), (17606, 17773), (17774, 17935), (17936, 18103), (18104, 18271), (18272, 18443), (18444, 18617), (18618, 18791), (18792, 18961), (18962, 19133), (19134, 19295), (19296, 19463), (19464, 19637), (19638, 19783), (19784, 19951), (19952, 20123), (20124, 20297), (20298, 20471), (20472, 20617), (20618, 20785), (20786, 20947), (20948, 21121), (21122, 21295), (21296, 21457), (21458, 21607), (21608, 21775), (21776, 21947), (21948, 22117), (22118, 22285), (22286, 22457), (22458, 22627), (22628, 22795), (22796, 22961), (22962, 23135), (23136, 23305), (23306, 23471), (23472, 23633), (23634, 23807), (23808, 23975), (23976, 24145), (24146, 24311), (24312, 24455), (24456, 24617), (24618, 24785), (24786, 24955), (24956, 25127), (25128, 25301), (25302, 25475), (25476, 25645), (25646, 25817), (25818, 25975), (25976, 26143), (26144, 26315), (26316, 26483), (26484, 26653), (26654, 26821), (26822, 26995), (26996, 27167), (27168, 27317), (27318, 27473), (27474, 27631), (27632, 27805), (27806, 27977), (27978, 28141), (28142, 28297), (28298, 28471), (28472, 28637), (28638, 28805), (28806, 28967), (28968, 29135), (29136, 29305), (29306, 29477), (29478, 29647), (29648, 29815), (29816, 29977), (29978, 30133), (30134, 30307), (30308, 30449), (30618, 30767), (30768, 30792), (30899, 31067), (31068, 31073), (31329, 31379), (31423, 31503), (31827, 31858), (31974, 32001), (32805, 32942), (33614, 33663), (33708, 33788), (34322, 34493), (34494, 34565), (36517, 36671), (36672, 36675), (37303, 37384), (37446, 37477), (37538, 37620), (37636, 37712), (38307, 38465), (39326, 39497), (39498, 39500), (40401, 40502), (40931, 41101), (41102, 41105), (45056, 45064), (45369, 45427), (45927, 45970), (47526, 47695), (47696, 47698), (48013, 48135), (48373, 48545), (48546, 48547), (48734, 48907), (48908, 48908), (49152, 49313), (49314, 49326), (49379, 49472), (51076, 51179), (53138, 53219), (53248, 53413), (53414, 53422), (55451, 55615), (55616, 55621), (56307, 56343), (56454, 56481), (57245, 57296), (57344, 57419), (58619, 58738), (59049, 59130), (65610, 65710), (68644, 68813), (68814, 68818), (68921, 69064), (71289, 71461), (71462, 71463), (73167, 73176), (73205, 73341), (83667, 83695), (85805, 85857), (89383, 89547), (96774, 96779), (98415, 98478), (102152, 102184), (103041, 103140), (137842, 137955), (148955, 149051), (195223, 195286)]

theorem row175_bounds_eq : row175.goods.map goodSegmentBounds = row175_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row175_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32942), (2, 36864, 37038), (2, 40960, 41134), (2, 45056, 45230), (2, 49152, 49326), (2, 53248, 53422), (2, 57344, 57518), (2, 32768, 32942), (2, 40960, 41134), (2, 49152, 49326), (2, 57344, 57518), (2, 32768, 32942), (2, 49152, 49326), (2, 32768, 32942), (3, 30618, 30792), (3, 32805, 32979), (3, 39366, 39540), (3, 45927, 46101), (3, 52488, 52662), (3, 59049, 59223), (3, 39366, 39540), (3, 59049, 59223), (3, 59049, 59223), (7, 33614, 33788), (11, 43923, 44097), (11, 58564, 58738), (13, 30758, 30932), (13, 57122, 57296), (17, 34391, 34565), (17, 39304, 39478), (17, 44217, 44391), (17, 49130, 49304), (17, 54043, 54217), (17, 58956, 59130), (19, 34295, 34469), (19, 41154, 41328), (19, 48013, 48187), (19, 54872, 55046), (23, 36501, 36675), (23, 48668, 48842), (23, 60835, 60899), (29, 48778, 48952), (31, 59582, 59756), (37, 50653, 50827), (47, 30926, 31100), (53, 30899, 31073), (53, 33708, 33882), (53, 36517, 36691), (53, 39326, 39500), (59, 31329, 31503), (59, 34810, 34984), (59, 38291, 38465), (59, 41772, 41946), (59, 45253, 45427), (59, 48734, 48908), (61, 33489, 33663), (61, 37210, 37384), (61, 40931, 41105), (61, 44652, 44826), (61, 48373, 48547), (61, 52094, 52268), (67, 31423, 31597), (67, 35912, 36086), (67, 40401, 40575), (67, 44890, 45064), (67, 49379, 49553), (67, 53868, 54042), (67, 58357, 58531), (71, 35287, 35461), (71, 40328, 40502), (71, 45369, 45543), (71, 50410, 50584), (71, 55451, 55625), (71, 60492, 60666), (73, 31974, 32148), (73, 37303, 37477), (73, 42632, 42806), (73, 47961, 48135), (73, 53290, 53464), (73, 58619, 58793), (79, 31205, 31379), (79, 37446, 37620), (79, 43687, 43861), (79, 49928, 50102), (79, 56169, 56343), (83, 34445, 34619), (83, 41334, 41508), (83, 48223, 48397), (83, 55112, 55286), (89, 31684, 31858), (89, 39605, 39779), (89, 47526, 47700), (89, 55447, 55621), (97, 37636, 37810), (97, 47045, 47219), (97, 56454, 56628), (101, 30603, 30777), (101, 40804, 40978), (101, 51005, 51179), (103, 31827, 32001), (103, 42436, 42610), (103, 53045, 53219), (107, 34347, 34521), (107, 45796, 45970), (107, 57245, 57419), (109, 35643, 35817), (109, 47524, 47698), (109, 59405, 59579), (113, 38307, 38481), (113, 51076, 51250), (127, 32258, 32432), (127, 48387, 48561), (131, 34322, 34496), (131, 51483, 51657), (137, 37538, 37712), (137, 56307, 56481), (139, 38642, 38816), (139, 57963, 58137), (149, 44402, 44576), (151, 45602, 45776), (157, 49298, 49472), (163, 53138, 53312), (167, 55778, 55952), (173, 59858, 60032)]

def row175_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32942), (2, 36864, 37038), (2, 40960, 41134), (2, 45056, 45230), (2, 49152, 49326), (2, 53248, 53422), (2, 57344, 57518), (2, 32768, 32942), (2, 40960, 41134), (2, 49152, 49326), (2, 57344, 57518), (2, 32768, 32942), (2, 49152, 49326), (2, 32768, 32942), (3, 30618, 30792), (3, 32805, 32979)]

def row175_layer000_block001 : List ColouredInterval :=
  [(3, 39366, 39540), (3, 45927, 46101), (3, 52488, 52662), (3, 59049, 59223), (3, 39366, 39540), (3, 59049, 59223), (3, 59049, 59223), (7, 33614, 33788), (11, 43923, 44097), (11, 58564, 58738), (13, 30758, 30932), (13, 57122, 57296), (17, 34391, 34565), (17, 39304, 39478), (17, 44217, 44391), (17, 49130, 49304)]

def row175_layer000_block002 : List ColouredInterval :=
  [(17, 54043, 54217), (17, 58956, 59130), (19, 34295, 34469), (19, 41154, 41328), (19, 48013, 48187), (19, 54872, 55046), (23, 36501, 36675), (23, 48668, 48842), (23, 60835, 60899), (29, 48778, 48952), (31, 59582, 59756), (37, 50653, 50827), (47, 30926, 31100), (53, 30899, 31073), (53, 33708, 33882), (53, 36517, 36691)]

def row175_layer000_block003 : List ColouredInterval :=
  [(53, 39326, 39500), (59, 31329, 31503), (59, 34810, 34984), (59, 38291, 38465), (59, 41772, 41946), (59, 45253, 45427), (59, 48734, 48908), (61, 33489, 33663), (61, 37210, 37384), (61, 40931, 41105), (61, 44652, 44826), (61, 48373, 48547), (61, 52094, 52268), (67, 31423, 31597), (67, 35912, 36086), (67, 40401, 40575)]

def row175_layer000_block004 : List ColouredInterval :=
  [(67, 44890, 45064), (67, 49379, 49553), (67, 53868, 54042), (67, 58357, 58531), (71, 35287, 35461), (71, 40328, 40502), (71, 45369, 45543), (71, 50410, 50584), (71, 55451, 55625), (71, 60492, 60666), (73, 31974, 32148), (73, 37303, 37477), (73, 42632, 42806), (73, 47961, 48135), (73, 53290, 53464), (73, 58619, 58793)]

def row175_layer000_block005 : List ColouredInterval :=
  [(79, 31205, 31379), (79, 37446, 37620), (79, 43687, 43861), (79, 49928, 50102), (79, 56169, 56343), (83, 34445, 34619), (83, 41334, 41508), (83, 48223, 48397), (83, 55112, 55286), (89, 31684, 31858), (89, 39605, 39779), (89, 47526, 47700), (89, 55447, 55621), (97, 37636, 37810), (97, 47045, 47219), (97, 56454, 56628)]

def row175_layer000_block006 : List ColouredInterval :=
  [(101, 30603, 30777), (101, 40804, 40978), (101, 51005, 51179), (103, 31827, 32001), (103, 42436, 42610), (103, 53045, 53219), (107, 34347, 34521), (107, 45796, 45970), (107, 57245, 57419), (109, 35643, 35817), (109, 47524, 47698), (109, 59405, 59579), (113, 38307, 38481), (113, 51076, 51250), (127, 32258, 32432), (127, 48387, 48561)]

def row175_layer000_block007 : List ColouredInterval :=
  [(131, 34322, 34496), (131, 51483, 51657), (137, 37538, 37712), (137, 56307, 56481), (139, 38642, 38816), (139, 57963, 58137), (149, 44402, 44576), (151, 45602, 45776), (157, 49298, 49472), (163, 53138, 53312), (167, 55778, 55952), (173, 59858, 60032)]

def row175_layer000_chunks : List (List ColouredInterval) :=
  [row175_layer000_block000, row175_layer000_block001, row175_layer000_block002, row175_layer000_block003, row175_layer000_block004, row175_layer000_block005, row175_layer000_block006, row175_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_arithmetic : LayerArithmeticValid row175.height { lower := 30450, upper := 60900, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_enumeration :
    activePowerIntervalList 175 14 30450 60900 = row175_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_pairs000 :
    row175_layer000_block000.all (fun I => row175_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_pairs001 :
    row175_layer000_block001.all (fun I => row175_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_pairs002 :
    row175_layer000_block002.all (fun I => row175_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_pairs003 :
    row175_layer000_block003.all (fun I => row175_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_pairs004 :
    row175_layer000_block004.all (fun I => row175_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_pairs005 :
    row175_layer000_block005.all (fun I => row175_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_pairs006 :
    row175_layer000_block006.all (fun I => row175_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_pairs007 :
    row175_layer000_block007.all (fun I => row175_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_chunks_eq : row175_layer000_chunks.flatten = row175_layer000_intervals := by
  rfl

theorem row175_layer000_pairs : pairCoverCheck row175_layer000_intervals row175_bounds = true := by
  apply pairCoverCheck_of_chunks row175_layer000_chunks_eq
  intro block hblock
  simp only [row175_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row175_layer000_pairs000
  · exact row175_layer000_pairs001
  · exact row175_layer000_pairs002
  · exact row175_layer000_pairs003
  · exact row175_layer000_pairs004
  · exact row175_layer000_pairs005
  · exact row175_layer000_pairs006
  · exact row175_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_pairs
