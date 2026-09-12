import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row174_height : HeightCertificateDatum := { i := 174, r := 57, s := 123, n0Power10 := 8 }

def row174_goods : List GoodSegment := [
  { lower := 350, upper := 522, witness := RowWitness.topPrime 349 },
  { lower := 523, upper := 696, witness := RowWitness.topPrime 523 },
  { lower := 697, upper := 864, witness := RowWitness.topPrime 691 },
  { lower := 865, upper := 1036, witness := RowWitness.topPrime 863 },
  { lower := 1037, upper := 1206, witness := RowWitness.topPrime 1033 },
  { lower := 1207, upper := 1374, witness := RowWitness.topPrime 1201 },
  { lower := 1375, upper := 1546, witness := RowWitness.topPrime 1373 },
  { lower := 1547, upper := 1716, witness := RowWitness.topPrime 1543 },
  { lower := 1717, upper := 1882, witness := RowWitness.topPrime 1709 },
  { lower := 1883, upper := 2052, witness := RowWitness.topPrime 1879 },
  { lower := 2053, upper := 2226, witness := RowWitness.topPrime 2053 },
  { lower := 2227, upper := 2394, witness := RowWitness.topPrime 2221 },
  { lower := 2395, upper := 2566, witness := RowWitness.topPrime 2393 },
  { lower := 2567, upper := 2730, witness := RowWitness.topPrime 2557 },
  { lower := 2731, upper := 2904, witness := RowWitness.topPrime 2731 },
  { lower := 2905, upper := 3076, witness := RowWitness.topPrime 2903 },
  { lower := 3077, upper := 3240, witness := RowWitness.topPrime 3067 },
  { lower := 3241, upper := 3402, witness := RowWitness.topPrime 3229 },
  { lower := 3403, upper := 3564, witness := RowWitness.topPrime 3391 },
  { lower := 3565, upper := 3732, witness := RowWitness.topPrime 3559 },
  { lower := 3733, upper := 3906, witness := RowWitness.topPrime 3733 },
  { lower := 3907, upper := 4080, witness := RowWitness.topPrime 3907 },
  { lower := 4081, upper := 4252, witness := RowWitness.topPrime 4079 },
  { lower := 4253, upper := 4426, witness := RowWitness.topPrime 4253 },
  { lower := 4427, upper := 4596, witness := RowWitness.topPrime 4423 },
  { lower := 4597, upper := 4770, witness := RowWitness.topPrime 4597 },
  { lower := 4771, upper := 4932, witness := RowWitness.topPrime 4759 },
  { lower := 4933, upper := 5106, witness := RowWitness.topPrime 4933 },
  { lower := 5107, upper := 5280, witness := RowWitness.topPrime 5107 },
  { lower := 5281, upper := 5454, witness := RowWitness.topPrime 5281 },
  { lower := 5455, upper := 5622, witness := RowWitness.topPrime 5449 },
  { lower := 5623, upper := 5796, witness := RowWitness.topPrime 5623 },
  { lower := 5797, upper := 5964, witness := RowWitness.topPrime 5791 },
  { lower := 5965, upper := 6126, witness := RowWitness.topPrime 5953 },
  { lower := 6127, upper := 6294, witness := RowWitness.topPrime 6121 },
  { lower := 6295, upper := 6460, witness := RowWitness.topPrime 6287 },
  { lower := 6461, upper := 6624, witness := RowWitness.topPrime 6451 },
  { lower := 6625, upper := 6792, witness := RowWitness.topPrime 6619 },
  { lower := 6793, upper := 6966, witness := RowWitness.topPrime 6793 },
  { lower := 6967, upper := 7140, witness := RowWitness.topPrime 6967 },
  { lower := 7141, upper := 7302, witness := RowWitness.topPrime 7129 },
  { lower := 7303, upper := 7470, witness := RowWitness.topPrime 7297 },
  { lower := 7471, upper := 7632, witness := RowWitness.topPrime 7459 },
  { lower := 7633, upper := 7794, witness := RowWitness.topPrime 7621 },
  { lower := 7795, upper := 7966, witness := RowWitness.topPrime 7793 },
  { lower := 7967, upper := 8136, witness := RowWitness.topPrime 7963 },
  { lower := 8137, upper := 8296, witness := RowWitness.topPrime 8123 },
  { lower := 8297, upper := 8470, witness := RowWitness.topPrime 8297 },
  { lower := 8471, upper := 8640, witness := RowWitness.topPrime 8467 },
  { lower := 8641, upper := 8814, witness := RowWitness.topPrime 8641 },
  { lower := 8815, upper := 8980, witness := RowWitness.topPrime 8807 },
  { lower := 8981, upper := 9144, witness := RowWitness.topPrime 8971 },
  { lower := 9145, upper := 9310, witness := RowWitness.topPrime 9137 },
  { lower := 9311, upper := 9484, witness := RowWitness.topPrime 9311 },
  { lower := 9485, upper := 9652, witness := RowWitness.topPrime 9479 },
  { lower := 9653, upper := 9822, witness := RowWitness.topPrime 9649 },
  { lower := 9823, upper := 9990, witness := RowWitness.topPrime 9817 },
  { lower := 9991, upper := 10146, witness := RowWitness.topPrime 9973 },
  { lower := 10147, upper := 10314, witness := RowWitness.topPrime 10141 },
  { lower := 10315, upper := 10486, witness := RowWitness.topPrime 10313 },
  { lower := 10487, upper := 10660, witness := RowWitness.topPrime 10487 },
  { lower := 10661, upper := 10830, witness := RowWitness.topPrime 10657 },
  { lower := 10831, upper := 11004, witness := RowWitness.topPrime 10831 },
  { lower := 11005, upper := 11176, witness := RowWitness.topPrime 11003 },
  { lower := 11177, upper := 11350, witness := RowWitness.topPrime 11177 },
  { lower := 11351, upper := 11524, witness := RowWitness.topPrime 11351 },
  { lower := 11525, upper := 11692, witness := RowWitness.topPrime 11519 },
  { lower := 11693, upper := 11862, witness := RowWitness.topPrime 11689 },
  { lower := 11863, upper := 12036, witness := RowWitness.topPrime 11863 },
  { lower := 12037, upper := 12210, witness := RowWitness.topPrime 12037 },
  { lower := 12211, upper := 12384, witness := RowWitness.topPrime 12211 },
  { lower := 12385, upper := 12552, witness := RowWitness.topPrime 12379 },
  { lower := 12553, upper := 12726, witness := RowWitness.topPrime 12553 },
  { lower := 12727, upper := 12894, witness := RowWitness.topPrime 12721 },
  { lower := 12895, upper := 13066, witness := RowWitness.topPrime 12893 },
  { lower := 13067, upper := 13236, witness := RowWitness.topPrime 13063 },
  { lower := 13237, upper := 13402, witness := RowWitness.topPrime 13229 },
  { lower := 13403, upper := 13572, witness := RowWitness.topPrime 13399 },
  { lower := 13573, upper := 13740, witness := RowWitness.topPrime 13567 },
  { lower := 13741, upper := 13902, witness := RowWitness.topPrime 13729 },
  { lower := 13903, upper := 14076, witness := RowWitness.topPrime 13903 },
  { lower := 14077, upper := 14244, witness := RowWitness.topPrime 14071 },
  { lower := 14245, upper := 14416, witness := RowWitness.topPrime 14243 },
  { lower := 14417, upper := 14584, witness := RowWitness.topPrime 14411 },
  { lower := 14585, upper := 14736, witness := RowWitness.topPrime 14563 },
  { lower := 14737, upper := 14910, witness := RowWitness.topPrime 14737 },
  { lower := 14911, upper := 15070, witness := RowWitness.topPrime 14897 },
  { lower := 15071, upper := 15234, witness := RowWitness.topPrime 15061 },
  { lower := 15235, upper := 15406, witness := RowWitness.topPrime 15233 },
  { lower := 15407, upper := 15574, witness := RowWitness.topPrime 15401 },
  { lower := 15575, upper := 15742, witness := RowWitness.topPrime 15569 },
  { lower := 15743, upper := 15912, witness := RowWitness.topPrime 15739 },
  { lower := 15913, upper := 16086, witness := RowWitness.topPrime 15913 },
  { lower := 16087, upper := 16260, witness := RowWitness.topPrime 16087 },
  { lower := 16261, upper := 16426, witness := RowWitness.topPrime 16253 },
  { lower := 16427, upper := 16600, witness := RowWitness.topPrime 16427 },
  { lower := 16601, upper := 16746, witness := RowWitness.topPrime 16573 },
  { lower := 16747, upper := 16920, witness := RowWitness.topPrime 16747 },
  { lower := 16921, upper := 17094, witness := RowWitness.topPrime 16921 },
  { lower := 17095, upper := 17266, witness := RowWitness.topPrime 17093 },
  { lower := 17267, upper := 17430, witness := RowWitness.topPrime 17257 },
  { lower := 17431, upper := 17604, witness := RowWitness.topPrime 17431 },
  { lower := 17605, upper := 17772, witness := RowWitness.topPrime 17599 },
  { lower := 17773, upper := 17934, witness := RowWitness.topPrime 17761 },
  { lower := 17935, upper := 18102, witness := RowWitness.topPrime 17929 },
  { lower := 18103, upper := 18270, witness := RowWitness.topPrime 18097 },
  { lower := 18271, upper := 18442, witness := RowWitness.topPrime 18269 },
  { lower := 18443, upper := 18616, witness := RowWitness.topPrime 18443 },
  { lower := 18617, upper := 18790, witness := RowWitness.topPrime 18617 },
  { lower := 18791, upper := 18960, witness := RowWitness.topPrime 18787 },
  { lower := 18961, upper := 19132, witness := RowWitness.topPrime 18959 },
  { lower := 19133, upper := 19294, witness := RowWitness.topPrime 19121 },
  { lower := 19295, upper := 19462, witness := RowWitness.topPrime 19289 },
  { lower := 19463, upper := 19636, witness := RowWitness.topPrime 19463 },
  { lower := 19637, upper := 19782, witness := RowWitness.topPrime 19609 },
  { lower := 19783, upper := 19950, witness := RowWitness.topPrime 19777 },
  { lower := 19951, upper := 20122, witness := RowWitness.topPrime 19949 },
  { lower := 20123, upper := 20296, witness := RowWitness.topPrime 20123 },
  { lower := 20297, upper := 20470, witness := RowWitness.topPrime 20297 },
  { lower := 20471, upper := 20616, witness := RowWitness.topPrime 20443 },
  { lower := 20617, upper := 20784, witness := RowWitness.topPrime 20611 },
  { lower := 20785, upper := 20946, witness := RowWitness.topPrime 20773 },
  { lower := 20947, upper := 21120, witness := RowWitness.topPrime 20947 },
  { lower := 21121, upper := 21294, witness := RowWitness.topPrime 21121 },
  { lower := 21295, upper := 21456, witness := RowWitness.topPrime 21283 },
  { lower := 21457, upper := 21606, witness := RowWitness.topPrime 21433 },
  { lower := 21607, upper := 21774, witness := RowWitness.topPrime 21601 },
  { lower := 21775, upper := 21946, witness := RowWitness.topPrime 21773 },
  { lower := 21947, upper := 22116, witness := RowWitness.topPrime 21943 },
  { lower := 22117, upper := 22284, witness := RowWitness.topPrime 22111 },
  { lower := 22285, upper := 22456, witness := RowWitness.topPrime 22283 },
  { lower := 22457, upper := 22626, witness := RowWitness.topPrime 22453 },
  { lower := 22627, upper := 22794, witness := RowWitness.topPrime 22621 },
  { lower := 22795, upper := 22960, witness := RowWitness.topPrime 22787 },
  { lower := 22961, upper := 23134, witness := RowWitness.topPrime 22961 },
  { lower := 23135, upper := 23304, witness := RowWitness.topPrime 23131 },
  { lower := 23305, upper := 23470, witness := RowWitness.topPrime 23297 },
  { lower := 23471, upper := 23632, witness := RowWitness.topPrime 23459 },
  { lower := 23633, upper := 23806, witness := RowWitness.topPrime 23633 },
  { lower := 23807, upper := 23974, witness := RowWitness.topPrime 23801 },
  { lower := 23975, upper := 24144, witness := RowWitness.topPrime 23971 },
  { lower := 24145, upper := 24310, witness := RowWitness.topPrime 24137 },
  { lower := 24311, upper := 24454, witness := RowWitness.topPrime 24281 },
  { lower := 24455, upper := 24616, witness := RowWitness.topPrime 24443 },
  { lower := 24617, upper := 24784, witness := RowWitness.topPrime 24611 },
  { lower := 24785, upper := 24954, witness := RowWitness.topPrime 24781 },
  { lower := 24955, upper := 25126, witness := RowWitness.topPrime 24953 },
  { lower := 25127, upper := 25300, witness := RowWitness.topPrime 25127 },
  { lower := 25301, upper := 25474, witness := RowWitness.topPrime 25301 },
  { lower := 25475, upper := 25644, witness := RowWitness.topPrime 25471 },
  { lower := 25645, upper := 25816, witness := RowWitness.topPrime 25643 },
  { lower := 25817, upper := 25974, witness := RowWitness.topPrime 25801 },
  { lower := 25975, upper := 26142, witness := RowWitness.topPrime 25969 },
  { lower := 26143, upper := 26314, witness := RowWitness.topPrime 26141 },
  { lower := 26315, upper := 26482, witness := RowWitness.topPrime 26309 },
  { lower := 26483, upper := 26652, witness := RowWitness.topPrime 26479 },
  { lower := 26653, upper := 26820, witness := RowWitness.topPrime 26647 },
  { lower := 26821, upper := 26994, witness := RowWitness.topPrime 26821 },
  { lower := 26995, upper := 27166, witness := RowWitness.topPrime 26993 },
  { lower := 27167, upper := 27316, witness := RowWitness.topPrime 27143 },
  { lower := 27317, upper := 27472, witness := RowWitness.topPrime 27299 },
  { lower := 27473, upper := 27630, witness := RowWitness.topPrime 27457 },
  { lower := 27631, upper := 27804, witness := RowWitness.topPrime 27631 },
  { lower := 27805, upper := 27976, witness := RowWitness.topPrime 27803 },
  { lower := 27977, upper := 28140, witness := RowWitness.topPrime 27967 },
  { lower := 28141, upper := 28296, witness := RowWitness.topPrime 28123 },
  { lower := 28297, upper := 28470, witness := RowWitness.topPrime 28297 },
  { lower := 28471, upper := 28636, witness := RowWitness.topPrime 28463 },
  { lower := 28637, upper := 28804, witness := RowWitness.topPrime 28631 },
  { lower := 28805, upper := 28966, witness := RowWitness.topPrime 28793 },
  { lower := 28967, upper := 29134, witness := RowWitness.topPrime 28961 },
  { lower := 29135, upper := 29304, witness := RowWitness.topPrime 29131 },
  { lower := 29305, upper := 29476, witness := RowWitness.topPrime 29303 },
  { lower := 29477, upper := 29646, witness := RowWitness.topPrime 29473 },
  { lower := 29647, upper := 29814, witness := RowWitness.topPrime 29641 },
  { lower := 29815, upper := 29976, witness := RowWitness.topPrime 29803 },
  { lower := 29977, upper := 30101, witness := RowWitness.topPrime 29959 },
  { lower := 30758, upper := 30776, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 31066, witness := RowWitness.topPrime 30893 },
  { lower := 31067, upper := 31072, witness := RowWitness.topPrime 31063 },
  { lower := 31213, upper := 31366, witness := RowWitness.topPrime 31193 },
  { lower := 31367, upper := 31502, witness := RowWitness.topPrime 31357 },
  { lower := 31827, upper := 31857, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 32000, witness := RowWitness.topPrime 31973 },
  { lower := 33614, upper := 33662, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33787, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34492, witness := RowWitness.topPrime 34319 },
  { lower := 34493, upper := 34564, witness := RowWitness.topPrime 34487 },
  { lower := 36517, upper := 36670, witness := RowWitness.topPrime 36497 },
  { lower := 36671, upper := 36674, witness := RowWitness.topPrime 36671 },
  { lower := 37303, upper := 37383, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37476, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37666, witness := RowWitness.topPrime 37493 },
  { lower := 37667, upper := 37711, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38464, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39496, witness := RowWitness.topPrime 39323 },
  { lower := 39497, upper := 39499, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40501, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41100, witness := RowWitness.topPrime 40927 },
  { lower := 41101, upper := 41104, witness := RowWitness.topPrime 41081 },
  { lower := 43750, upper := 43860, witness := RowWitness.topPrime 43721 },
  { lower := 43923, upper := 43923, witness := RowWitness.topPrime 43913 },
  { lower := 45369, upper := 45426, witness := RowWitness.topPrime 45361 },
  { lower := 47045, upper := 47048, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47694, witness := RowWitness.topPrime 47521 },
  { lower := 47695, upper := 47697, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48134, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48544, witness := RowWitness.topPrime 48371 },
  { lower := 48545, upper := 48546, witness := RowWitness.topPrime 48541 },
  { lower := 48734, upper := 48841, witness := RowWitness.topPrime 48733 },
  { lower := 49152, upper := 49312, witness := RowWitness.topPrime 49139 },
  { lower := 49313, upper := 49325, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49471, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50583, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51178, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53218, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53311, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55614, witness := RowWitness.topPrime 55441 },
  { lower := 55615, upper := 55620, witness := RowWitness.topPrime 55609 },
  { lower := 56307, upper := 56342, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56480, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57295, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57418, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58737, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59129, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62583, witness := RowWitness.topPrime 62497 },
  { lower := 68644, upper := 68812, witness := RowWitness.topPrime 68639 },
  { lower := 68813, upper := 68824, witness := RowWitness.topPrime 68813 },
  { lower := 68921, upper := 69063, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71460, witness := RowWitness.topPrime 71287 },
  { lower := 71461, upper := 71462, witness := RowWitness.topPrime 71453 },
  { lower := 83667, upper := 83694, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85856, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89546, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93923, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96778, witness := RowWitness.topPrime 96769 },
  { lower := 102152, upper := 102183, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103139, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109548, witness := RowWitness.topPrime 109481 },
  { lower := 148955, upper := 149050, witness := RowWitness.topPrime 148949 }
]

def row174_layers : List CoverLayer := [
  { lower := 30102, upper := 60204, M := 14 },
  { lower := 60204, upper := 120408, M := 11 },
  { lower := 120408, upper := 240816, M := 8 },
  { lower := 240816, upper := 481632, M := 6 },
  { lower := 481632, upper := 963264, M := 5 },
  { lower := 963264, upper := 1926528, M := 3 },
  { lower := 1926528, upper := 3853056, M := 3 },
  { lower := 3853056, upper := 7706112, M := 2 },
  { lower := 7706112, upper := 15412224, M := 2 },
  { lower := 15412224, upper := 30824448, M := 1 },
  { lower := 30824448, upper := 61648896, M := 1 },
  { lower := 61648896, upper := 100000000, M := 1 }
]

def row174 : FiniteCoverRow := {
  height := row174_height,
  goods := row174_goods,
  layers := row174_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good000_checked :
    goodSegmentCheck 174 57 123
      { lower := 350, upper := 522, witness := RowWitness.topPrime 349 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good001_checked :
    goodSegmentCheck 174 57 123
      { lower := 523, upper := 696, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good002_checked :
    goodSegmentCheck 174 57 123
      { lower := 697, upper := 864, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good003_checked :
    goodSegmentCheck 174 57 123
      { lower := 865, upper := 1036, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good004_checked :
    goodSegmentCheck 174 57 123
      { lower := 1037, upper := 1206, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good005_checked :
    goodSegmentCheck 174 57 123
      { lower := 1207, upper := 1374, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good006_checked :
    goodSegmentCheck 174 57 123
      { lower := 1375, upper := 1546, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good007_checked :
    goodSegmentCheck 174 57 123
      { lower := 1547, upper := 1716, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good008_checked :
    goodSegmentCheck 174 57 123
      { lower := 1717, upper := 1882, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good009_checked :
    goodSegmentCheck 174 57 123
      { lower := 1883, upper := 2052, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good010_checked :
    goodSegmentCheck 174 57 123
      { lower := 2053, upper := 2226, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good011_checked :
    goodSegmentCheck 174 57 123
      { lower := 2227, upper := 2394, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good012_checked :
    goodSegmentCheck 174 57 123
      { lower := 2395, upper := 2566, witness := RowWitness.topPrime 2393 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good013_checked :
    goodSegmentCheck 174 57 123
      { lower := 2567, upper := 2730, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good014_checked :
    goodSegmentCheck 174 57 123
      { lower := 2731, upper := 2904, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good015_checked :
    goodSegmentCheck 174 57 123
      { lower := 2905, upper := 3076, witness := RowWitness.topPrime 2903 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good016_checked :
    goodSegmentCheck 174 57 123
      { lower := 3077, upper := 3240, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good017_checked :
    goodSegmentCheck 174 57 123
      { lower := 3241, upper := 3402, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good018_checked :
    goodSegmentCheck 174 57 123
      { lower := 3403, upper := 3564, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good019_checked :
    goodSegmentCheck 174 57 123
      { lower := 3565, upper := 3732, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good020_checked :
    goodSegmentCheck 174 57 123
      { lower := 3733, upper := 3906, witness := RowWitness.topPrime 3733 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good021_checked :
    goodSegmentCheck 174 57 123
      { lower := 3907, upper := 4080, witness := RowWitness.topPrime 3907 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good022_checked :
    goodSegmentCheck 174 57 123
      { lower := 4081, upper := 4252, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good023_checked :
    goodSegmentCheck 174 57 123
      { lower := 4253, upper := 4426, witness := RowWitness.topPrime 4253 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good024_checked :
    goodSegmentCheck 174 57 123
      { lower := 4427, upper := 4596, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good025_checked :
    goodSegmentCheck 174 57 123
      { lower := 4597, upper := 4770, witness := RowWitness.topPrime 4597 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good026_checked :
    goodSegmentCheck 174 57 123
      { lower := 4771, upper := 4932, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good027_checked :
    goodSegmentCheck 174 57 123
      { lower := 4933, upper := 5106, witness := RowWitness.topPrime 4933 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good028_checked :
    goodSegmentCheck 174 57 123
      { lower := 5107, upper := 5280, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good029_checked :
    goodSegmentCheck 174 57 123
      { lower := 5281, upper := 5454, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good030_checked :
    goodSegmentCheck 174 57 123
      { lower := 5455, upper := 5622, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good031_checked :
    goodSegmentCheck 174 57 123
      { lower := 5623, upper := 5796, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good032_checked :
    goodSegmentCheck 174 57 123
      { lower := 5797, upper := 5964, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good033_checked :
    goodSegmentCheck 174 57 123
      { lower := 5965, upper := 6126, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good034_checked :
    goodSegmentCheck 174 57 123
      { lower := 6127, upper := 6294, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good035_checked :
    goodSegmentCheck 174 57 123
      { lower := 6295, upper := 6460, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good036_checked :
    goodSegmentCheck 174 57 123
      { lower := 6461, upper := 6624, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good037_checked :
    goodSegmentCheck 174 57 123
      { lower := 6625, upper := 6792, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good038_checked :
    goodSegmentCheck 174 57 123
      { lower := 6793, upper := 6966, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good039_checked :
    goodSegmentCheck 174 57 123
      { lower := 6967, upper := 7140, witness := RowWitness.topPrime 6967 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good040_checked :
    goodSegmentCheck 174 57 123
      { lower := 7141, upper := 7302, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good041_checked :
    goodSegmentCheck 174 57 123
      { lower := 7303, upper := 7470, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good042_checked :
    goodSegmentCheck 174 57 123
      { lower := 7471, upper := 7632, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good043_checked :
    goodSegmentCheck 174 57 123
      { lower := 7633, upper := 7794, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good044_checked :
    goodSegmentCheck 174 57 123
      { lower := 7795, upper := 7966, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good045_checked :
    goodSegmentCheck 174 57 123
      { lower := 7967, upper := 8136, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good046_checked :
    goodSegmentCheck 174 57 123
      { lower := 8137, upper := 8296, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good047_checked :
    goodSegmentCheck 174 57 123
      { lower := 8297, upper := 8470, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good048_checked :
    goodSegmentCheck 174 57 123
      { lower := 8471, upper := 8640, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good049_checked :
    goodSegmentCheck 174 57 123
      { lower := 8641, upper := 8814, witness := RowWitness.topPrime 8641 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good050_checked :
    goodSegmentCheck 174 57 123
      { lower := 8815, upper := 8980, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good051_checked :
    goodSegmentCheck 174 57 123
      { lower := 8981, upper := 9144, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good052_checked :
    goodSegmentCheck 174 57 123
      { lower := 9145, upper := 9310, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good053_checked :
    goodSegmentCheck 174 57 123
      { lower := 9311, upper := 9484, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good054_checked :
    goodSegmentCheck 174 57 123
      { lower := 9485, upper := 9652, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good055_checked :
    goodSegmentCheck 174 57 123
      { lower := 9653, upper := 9822, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good056_checked :
    goodSegmentCheck 174 57 123
      { lower := 9823, upper := 9990, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good057_checked :
    goodSegmentCheck 174 57 123
      { lower := 9991, upper := 10146, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good058_checked :
    goodSegmentCheck 174 57 123
      { lower := 10147, upper := 10314, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good059_checked :
    goodSegmentCheck 174 57 123
      { lower := 10315, upper := 10486, witness := RowWitness.topPrime 10313 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good060_checked :
    goodSegmentCheck 174 57 123
      { lower := 10487, upper := 10660, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good061_checked :
    goodSegmentCheck 174 57 123
      { lower := 10661, upper := 10830, witness := RowWitness.topPrime 10657 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good062_checked :
    goodSegmentCheck 174 57 123
      { lower := 10831, upper := 11004, witness := RowWitness.topPrime 10831 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good063_checked :
    goodSegmentCheck 174 57 123
      { lower := 11005, upper := 11176, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good064_checked :
    goodSegmentCheck 174 57 123
      { lower := 11177, upper := 11350, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good065_checked :
    goodSegmentCheck 174 57 123
      { lower := 11351, upper := 11524, witness := RowWitness.topPrime 11351 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good066_checked :
    goodSegmentCheck 174 57 123
      { lower := 11525, upper := 11692, witness := RowWitness.topPrime 11519 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good067_checked :
    goodSegmentCheck 174 57 123
      { lower := 11693, upper := 11862, witness := RowWitness.topPrime 11689 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good068_checked :
    goodSegmentCheck 174 57 123
      { lower := 11863, upper := 12036, witness := RowWitness.topPrime 11863 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good069_checked :
    goodSegmentCheck 174 57 123
      { lower := 12037, upper := 12210, witness := RowWitness.topPrime 12037 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good070_checked :
    goodSegmentCheck 174 57 123
      { lower := 12211, upper := 12384, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good071_checked :
    goodSegmentCheck 174 57 123
      { lower := 12385, upper := 12552, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good072_checked :
    goodSegmentCheck 174 57 123
      { lower := 12553, upper := 12726, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good073_checked :
    goodSegmentCheck 174 57 123
      { lower := 12727, upper := 12894, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good074_checked :
    goodSegmentCheck 174 57 123
      { lower := 12895, upper := 13066, witness := RowWitness.topPrime 12893 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good075_checked :
    goodSegmentCheck 174 57 123
      { lower := 13067, upper := 13236, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good076_checked :
    goodSegmentCheck 174 57 123
      { lower := 13237, upper := 13402, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good077_checked :
    goodSegmentCheck 174 57 123
      { lower := 13403, upper := 13572, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good078_checked :
    goodSegmentCheck 174 57 123
      { lower := 13573, upper := 13740, witness := RowWitness.topPrime 13567 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good079_checked :
    goodSegmentCheck 174 57 123
      { lower := 13741, upper := 13902, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good080_checked :
    goodSegmentCheck 174 57 123
      { lower := 13903, upper := 14076, witness := RowWitness.topPrime 13903 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good081_checked :
    goodSegmentCheck 174 57 123
      { lower := 14077, upper := 14244, witness := RowWitness.topPrime 14071 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good082_checked :
    goodSegmentCheck 174 57 123
      { lower := 14245, upper := 14416, witness := RowWitness.topPrime 14243 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good083_checked :
    goodSegmentCheck 174 57 123
      { lower := 14417, upper := 14584, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good084_checked :
    goodSegmentCheck 174 57 123
      { lower := 14585, upper := 14736, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good085_checked :
    goodSegmentCheck 174 57 123
      { lower := 14737, upper := 14910, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good086_checked :
    goodSegmentCheck 174 57 123
      { lower := 14911, upper := 15070, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good087_checked :
    goodSegmentCheck 174 57 123
      { lower := 15071, upper := 15234, witness := RowWitness.topPrime 15061 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good088_checked :
    goodSegmentCheck 174 57 123
      { lower := 15235, upper := 15406, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good089_checked :
    goodSegmentCheck 174 57 123
      { lower := 15407, upper := 15574, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good090_checked :
    goodSegmentCheck 174 57 123
      { lower := 15575, upper := 15742, witness := RowWitness.topPrime 15569 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good091_checked :
    goodSegmentCheck 174 57 123
      { lower := 15743, upper := 15912, witness := RowWitness.topPrime 15739 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good092_checked :
    goodSegmentCheck 174 57 123
      { lower := 15913, upper := 16086, witness := RowWitness.topPrime 15913 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good093_checked :
    goodSegmentCheck 174 57 123
      { lower := 16087, upper := 16260, witness := RowWitness.topPrime 16087 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good094_checked :
    goodSegmentCheck 174 57 123
      { lower := 16261, upper := 16426, witness := RowWitness.topPrime 16253 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good095_checked :
    goodSegmentCheck 174 57 123
      { lower := 16427, upper := 16600, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good096_checked :
    goodSegmentCheck 174 57 123
      { lower := 16601, upper := 16746, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good097_checked :
    goodSegmentCheck 174 57 123
      { lower := 16747, upper := 16920, witness := RowWitness.topPrime 16747 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good098_checked :
    goodSegmentCheck 174 57 123
      { lower := 16921, upper := 17094, witness := RowWitness.topPrime 16921 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good099_checked :
    goodSegmentCheck 174 57 123
      { lower := 17095, upper := 17266, witness := RowWitness.topPrime 17093 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good100_checked :
    goodSegmentCheck 174 57 123
      { lower := 17267, upper := 17430, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good101_checked :
    goodSegmentCheck 174 57 123
      { lower := 17431, upper := 17604, witness := RowWitness.topPrime 17431 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good102_checked :
    goodSegmentCheck 174 57 123
      { lower := 17605, upper := 17772, witness := RowWitness.topPrime 17599 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good103_checked :
    goodSegmentCheck 174 57 123
      { lower := 17773, upper := 17934, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good104_checked :
    goodSegmentCheck 174 57 123
      { lower := 17935, upper := 18102, witness := RowWitness.topPrime 17929 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good105_checked :
    goodSegmentCheck 174 57 123
      { lower := 18103, upper := 18270, witness := RowWitness.topPrime 18097 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good106_checked :
    goodSegmentCheck 174 57 123
      { lower := 18271, upper := 18442, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good107_checked :
    goodSegmentCheck 174 57 123
      { lower := 18443, upper := 18616, witness := RowWitness.topPrime 18443 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good108_checked :
    goodSegmentCheck 174 57 123
      { lower := 18617, upper := 18790, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good109_checked :
    goodSegmentCheck 174 57 123
      { lower := 18791, upper := 18960, witness := RowWitness.topPrime 18787 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good110_checked :
    goodSegmentCheck 174 57 123
      { lower := 18961, upper := 19132, witness := RowWitness.topPrime 18959 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good111_checked :
    goodSegmentCheck 174 57 123
      { lower := 19133, upper := 19294, witness := RowWitness.topPrime 19121 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good112_checked :
    goodSegmentCheck 174 57 123
      { lower := 19295, upper := 19462, witness := RowWitness.topPrime 19289 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good113_checked :
    goodSegmentCheck 174 57 123
      { lower := 19463, upper := 19636, witness := RowWitness.topPrime 19463 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good114_checked :
    goodSegmentCheck 174 57 123
      { lower := 19637, upper := 19782, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good115_checked :
    goodSegmentCheck 174 57 123
      { lower := 19783, upper := 19950, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good116_checked :
    goodSegmentCheck 174 57 123
      { lower := 19951, upper := 20122, witness := RowWitness.topPrime 19949 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good117_checked :
    goodSegmentCheck 174 57 123
      { lower := 20123, upper := 20296, witness := RowWitness.topPrime 20123 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good118_checked :
    goodSegmentCheck 174 57 123
      { lower := 20297, upper := 20470, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good119_checked :
    goodSegmentCheck 174 57 123
      { lower := 20471, upper := 20616, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good120_checked :
    goodSegmentCheck 174 57 123
      { lower := 20617, upper := 20784, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good121_checked :
    goodSegmentCheck 174 57 123
      { lower := 20785, upper := 20946, witness := RowWitness.topPrime 20773 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good122_checked :
    goodSegmentCheck 174 57 123
      { lower := 20947, upper := 21120, witness := RowWitness.topPrime 20947 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good123_checked :
    goodSegmentCheck 174 57 123
      { lower := 21121, upper := 21294, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good124_checked :
    goodSegmentCheck 174 57 123
      { lower := 21295, upper := 21456, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good125_checked :
    goodSegmentCheck 174 57 123
      { lower := 21457, upper := 21606, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good126_checked :
    goodSegmentCheck 174 57 123
      { lower := 21607, upper := 21774, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good127_checked :
    goodSegmentCheck 174 57 123
      { lower := 21775, upper := 21946, witness := RowWitness.topPrime 21773 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good128_checked :
    goodSegmentCheck 174 57 123
      { lower := 21947, upper := 22116, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good129_checked :
    goodSegmentCheck 174 57 123
      { lower := 22117, upper := 22284, witness := RowWitness.topPrime 22111 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good130_checked :
    goodSegmentCheck 174 57 123
      { lower := 22285, upper := 22456, witness := RowWitness.topPrime 22283 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good131_checked :
    goodSegmentCheck 174 57 123
      { lower := 22457, upper := 22626, witness := RowWitness.topPrime 22453 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good132_checked :
    goodSegmentCheck 174 57 123
      { lower := 22627, upper := 22794, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good133_checked :
    goodSegmentCheck 174 57 123
      { lower := 22795, upper := 22960, witness := RowWitness.topPrime 22787 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good134_checked :
    goodSegmentCheck 174 57 123
      { lower := 22961, upper := 23134, witness := RowWitness.topPrime 22961 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good135_checked :
    goodSegmentCheck 174 57 123
      { lower := 23135, upper := 23304, witness := RowWitness.topPrime 23131 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good136_checked :
    goodSegmentCheck 174 57 123
      { lower := 23305, upper := 23470, witness := RowWitness.topPrime 23297 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good137_checked :
    goodSegmentCheck 174 57 123
      { lower := 23471, upper := 23632, witness := RowWitness.topPrime 23459 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good138_checked :
    goodSegmentCheck 174 57 123
      { lower := 23633, upper := 23806, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good139_checked :
    goodSegmentCheck 174 57 123
      { lower := 23807, upper := 23974, witness := RowWitness.topPrime 23801 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good140_checked :
    goodSegmentCheck 174 57 123
      { lower := 23975, upper := 24144, witness := RowWitness.topPrime 23971 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good141_checked :
    goodSegmentCheck 174 57 123
      { lower := 24145, upper := 24310, witness := RowWitness.topPrime 24137 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good142_checked :
    goodSegmentCheck 174 57 123
      { lower := 24311, upper := 24454, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good143_checked :
    goodSegmentCheck 174 57 123
      { lower := 24455, upper := 24616, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good144_checked :
    goodSegmentCheck 174 57 123
      { lower := 24617, upper := 24784, witness := RowWitness.topPrime 24611 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good145_checked :
    goodSegmentCheck 174 57 123
      { lower := 24785, upper := 24954, witness := RowWitness.topPrime 24781 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good146_checked :
    goodSegmentCheck 174 57 123
      { lower := 24955, upper := 25126, witness := RowWitness.topPrime 24953 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good147_checked :
    goodSegmentCheck 174 57 123
      { lower := 25127, upper := 25300, witness := RowWitness.topPrime 25127 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good148_checked :
    goodSegmentCheck 174 57 123
      { lower := 25301, upper := 25474, witness := RowWitness.topPrime 25301 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good149_checked :
    goodSegmentCheck 174 57 123
      { lower := 25475, upper := 25644, witness := RowWitness.topPrime 25471 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good150_checked :
    goodSegmentCheck 174 57 123
      { lower := 25645, upper := 25816, witness := RowWitness.topPrime 25643 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good151_checked :
    goodSegmentCheck 174 57 123
      { lower := 25817, upper := 25974, witness := RowWitness.topPrime 25801 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good152_checked :
    goodSegmentCheck 174 57 123
      { lower := 25975, upper := 26142, witness := RowWitness.topPrime 25969 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good153_checked :
    goodSegmentCheck 174 57 123
      { lower := 26143, upper := 26314, witness := RowWitness.topPrime 26141 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good154_checked :
    goodSegmentCheck 174 57 123
      { lower := 26315, upper := 26482, witness := RowWitness.topPrime 26309 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good155_checked :
    goodSegmentCheck 174 57 123
      { lower := 26483, upper := 26652, witness := RowWitness.topPrime 26479 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good156_checked :
    goodSegmentCheck 174 57 123
      { lower := 26653, upper := 26820, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good157_checked :
    goodSegmentCheck 174 57 123
      { lower := 26821, upper := 26994, witness := RowWitness.topPrime 26821 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good158_checked :
    goodSegmentCheck 174 57 123
      { lower := 26995, upper := 27166, witness := RowWitness.topPrime 26993 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good159_checked :
    goodSegmentCheck 174 57 123
      { lower := 27167, upper := 27316, witness := RowWitness.topPrime 27143 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good160_checked :
    goodSegmentCheck 174 57 123
      { lower := 27317, upper := 27472, witness := RowWitness.topPrime 27299 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good161_checked :
    goodSegmentCheck 174 57 123
      { lower := 27473, upper := 27630, witness := RowWitness.topPrime 27457 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good162_checked :
    goodSegmentCheck 174 57 123
      { lower := 27631, upper := 27804, witness := RowWitness.topPrime 27631 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good163_checked :
    goodSegmentCheck 174 57 123
      { lower := 27805, upper := 27976, witness := RowWitness.topPrime 27803 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good164_checked :
    goodSegmentCheck 174 57 123
      { lower := 27977, upper := 28140, witness := RowWitness.topPrime 27967 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good165_checked :
    goodSegmentCheck 174 57 123
      { lower := 28141, upper := 28296, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good166_checked :
    goodSegmentCheck 174 57 123
      { lower := 28297, upper := 28470, witness := RowWitness.topPrime 28297 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good167_checked :
    goodSegmentCheck 174 57 123
      { lower := 28471, upper := 28636, witness := RowWitness.topPrime 28463 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good168_checked :
    goodSegmentCheck 174 57 123
      { lower := 28637, upper := 28804, witness := RowWitness.topPrime 28631 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good169_checked :
    goodSegmentCheck 174 57 123
      { lower := 28805, upper := 28966, witness := RowWitness.topPrime 28793 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good170_checked :
    goodSegmentCheck 174 57 123
      { lower := 28967, upper := 29134, witness := RowWitness.topPrime 28961 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good171_checked :
    goodSegmentCheck 174 57 123
      { lower := 29135, upper := 29304, witness := RowWitness.topPrime 29131 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good172_checked :
    goodSegmentCheck 174 57 123
      { lower := 29305, upper := 29476, witness := RowWitness.topPrime 29303 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good173_checked :
    goodSegmentCheck 174 57 123
      { lower := 29477, upper := 29646, witness := RowWitness.topPrime 29473 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good174_checked :
    goodSegmentCheck 174 57 123
      { lower := 29647, upper := 29814, witness := RowWitness.topPrime 29641 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good175_checked :
    goodSegmentCheck 174 57 123
      { lower := 29815, upper := 29976, witness := RowWitness.topPrime 29803 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good176_checked :
    goodSegmentCheck 174 57 123
      { lower := 29977, upper := 30101, witness := RowWitness.topPrime 29959 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good177_checked :
    goodSegmentCheck 174 57 123
      { lower := 30758, upper := 30776, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good178_checked :
    goodSegmentCheck 174 57 123
      { lower := 30899, upper := 31066, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good179_checked :
    goodSegmentCheck 174 57 123
      { lower := 31067, upper := 31072, witness := RowWitness.topPrime 31063 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good180_checked :
    goodSegmentCheck 174 57 123
      { lower := 31213, upper := 31366, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good181_checked :
    goodSegmentCheck 174 57 123
      { lower := 31367, upper := 31502, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good182_checked :
    goodSegmentCheck 174 57 123
      { lower := 31827, upper := 31857, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good183_checked :
    goodSegmentCheck 174 57 123
      { lower := 31974, upper := 32000, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good184_checked :
    goodSegmentCheck 174 57 123
      { lower := 33614, upper := 33662, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good185_checked :
    goodSegmentCheck 174 57 123
      { lower := 33708, upper := 33787, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good186_checked :
    goodSegmentCheck 174 57 123
      { lower := 34322, upper := 34492, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good187_checked :
    goodSegmentCheck 174 57 123
      { lower := 34493, upper := 34564, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good188_checked :
    goodSegmentCheck 174 57 123
      { lower := 36517, upper := 36670, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good189_checked :
    goodSegmentCheck 174 57 123
      { lower := 36671, upper := 36674, witness := RowWitness.topPrime 36671 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good190_checked :
    goodSegmentCheck 174 57 123
      { lower := 37303, upper := 37383, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good191_checked :
    goodSegmentCheck 174 57 123
      { lower := 37446, upper := 37476, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good192_checked :
    goodSegmentCheck 174 57 123
      { lower := 37500, upper := 37666, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good193_checked :
    goodSegmentCheck 174 57 123
      { lower := 37667, upper := 37711, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good194_checked :
    goodSegmentCheck 174 57 123
      { lower := 38307, upper := 38464, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good195_checked :
    goodSegmentCheck 174 57 123
      { lower := 39326, upper := 39496, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good196_checked :
    goodSegmentCheck 174 57 123
      { lower := 39497, upper := 39499, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good197_checked :
    goodSegmentCheck 174 57 123
      { lower := 40401, upper := 40501, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good198_checked :
    goodSegmentCheck 174 57 123
      { lower := 40931, upper := 41100, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good199_checked :
    goodSegmentCheck 174 57 123
      { lower := 41101, upper := 41104, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good200_checked :
    goodSegmentCheck 174 57 123
      { lower := 43750, upper := 43860, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good201_checked :
    goodSegmentCheck 174 57 123
      { lower := 43923, upper := 43923, witness := RowWitness.topPrime 43913 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good202_checked :
    goodSegmentCheck 174 57 123
      { lower := 45369, upper := 45426, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good203_checked :
    goodSegmentCheck 174 57 123
      { lower := 47045, upper := 47048, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good204_checked :
    goodSegmentCheck 174 57 123
      { lower := 47526, upper := 47694, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good205_checked :
    goodSegmentCheck 174 57 123
      { lower := 47695, upper := 47697, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good206_checked :
    goodSegmentCheck 174 57 123
      { lower := 48013, upper := 48134, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good207_checked :
    goodSegmentCheck 174 57 123
      { lower := 48373, upper := 48544, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good208_checked :
    goodSegmentCheck 174 57 123
      { lower := 48545, upper := 48546, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good209_checked :
    goodSegmentCheck 174 57 123
      { lower := 48734, upper := 48841, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good210_checked :
    goodSegmentCheck 174 57 123
      { lower := 49152, upper := 49312, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good211_checked :
    goodSegmentCheck 174 57 123
      { lower := 49313, upper := 49325, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good212_checked :
    goodSegmentCheck 174 57 123
      { lower := 49379, upper := 49471, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good213_checked :
    goodSegmentCheck 174 57 123
      { lower := 50421, upper := 50583, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good214_checked :
    goodSegmentCheck 174 57 123
      { lower := 51076, upper := 51178, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good215_checked :
    goodSegmentCheck 174 57 123
      { lower := 53138, upper := 53218, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good216_checked :
    goodSegmentCheck 174 57 123
      { lower := 53290, upper := 53311, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good217_checked :
    goodSegmentCheck 174 57 123
      { lower := 55451, upper := 55614, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good218_checked :
    goodSegmentCheck 174 57 123
      { lower := 55615, upper := 55620, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good219_checked :
    goodSegmentCheck 174 57 123
      { lower := 56307, upper := 56342, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good220_checked :
    goodSegmentCheck 174 57 123
      { lower := 56454, upper := 56480, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good221_checked :
    goodSegmentCheck 174 57 123
      { lower := 57245, upper := 57295, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good222_checked :
    goodSegmentCheck 174 57 123
      { lower := 57344, upper := 57418, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good223_checked :
    goodSegmentCheck 174 57 123
      { lower := 58619, upper := 58737, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_good224_checked :
    goodSegmentCheck 174 57 123
      { lower := 59049, upper := 59129, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good225_checked :
    goodSegmentCheck 174 57 123
      { lower := 62500, upper := 62583, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good226_checked :
    goodSegmentCheck 174 57 123
      { lower := 68644, upper := 68812, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good227_checked :
    goodSegmentCheck 174 57 123
      { lower := 68813, upper := 68824, witness := RowWitness.topPrime 68813 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good228_checked :
    goodSegmentCheck 174 57 123
      { lower := 68921, upper := 69063, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good229_checked :
    goodSegmentCheck 174 57 123
      { lower := 71289, upper := 71460, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good230_checked :
    goodSegmentCheck 174 57 123
      { lower := 71461, upper := 71462, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good231_checked :
    goodSegmentCheck 174 57 123
      { lower := 83667, upper := 83694, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good232_checked :
    goodSegmentCheck 174 57 123
      { lower := 85805, upper := 85856, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good233_checked :
    goodSegmentCheck 174 57 123
      { lower := 89383, upper := 89546, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good234_checked :
    goodSegmentCheck 174 57 123
      { lower := 93845, upper := 93923, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good235_checked :
    goodSegmentCheck 174 57 123
      { lower := 96774, upper := 96778, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good236_checked :
    goodSegmentCheck 174 57 123
      { lower := 102152, upper := 102183, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good237_checked :
    goodSegmentCheck 174 57 123
      { lower := 103041, upper := 103139, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good238_checked :
    goodSegmentCheck 174 57 123
      { lower := 109503, upper := 109548, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row174_good239_checked :
    goodSegmentCheck 174 57 123
      { lower := 148955, upper := 149050, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 174) (r := 57) (s := 123) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_goods_checked :
    row174.goods.all (goodSegmentCheck row174.height.i row174.height.r row174.height.s) = true := by
  change row174_goods.all (goodSegmentCheck 174 57 123) = true
  simp only [row174_goods, List.all_cons, List.all_nil,
    row174_good000_checked,
    row174_good001_checked,
    row174_good002_checked,
    row174_good003_checked,
    row174_good004_checked,
    row174_good005_checked,
    row174_good006_checked,
    row174_good007_checked,
    row174_good008_checked,
    row174_good009_checked,
    row174_good010_checked,
    row174_good011_checked,
    row174_good012_checked,
    row174_good013_checked,
    row174_good014_checked,
    row174_good015_checked,
    row174_good016_checked,
    row174_good017_checked,
    row174_good018_checked,
    row174_good019_checked,
    row174_good020_checked,
    row174_good021_checked,
    row174_good022_checked,
    row174_good023_checked,
    row174_good024_checked,
    row174_good025_checked,
    row174_good026_checked,
    row174_good027_checked,
    row174_good028_checked,
    row174_good029_checked,
    row174_good030_checked,
    row174_good031_checked,
    row174_good032_checked,
    row174_good033_checked,
    row174_good034_checked,
    row174_good035_checked,
    row174_good036_checked,
    row174_good037_checked,
    row174_good038_checked,
    row174_good039_checked,
    row174_good040_checked,
    row174_good041_checked,
    row174_good042_checked,
    row174_good043_checked,
    row174_good044_checked,
    row174_good045_checked,
    row174_good046_checked,
    row174_good047_checked,
    row174_good048_checked,
    row174_good049_checked,
    row174_good050_checked,
    row174_good051_checked,
    row174_good052_checked,
    row174_good053_checked,
    row174_good054_checked,
    row174_good055_checked,
    row174_good056_checked,
    row174_good057_checked,
    row174_good058_checked,
    row174_good059_checked,
    row174_good060_checked,
    row174_good061_checked,
    row174_good062_checked,
    row174_good063_checked,
    row174_good064_checked,
    row174_good065_checked,
    row174_good066_checked,
    row174_good067_checked,
    row174_good068_checked,
    row174_good069_checked,
    row174_good070_checked,
    row174_good071_checked,
    row174_good072_checked,
    row174_good073_checked,
    row174_good074_checked,
    row174_good075_checked,
    row174_good076_checked,
    row174_good077_checked,
    row174_good078_checked,
    row174_good079_checked,
    row174_good080_checked,
    row174_good081_checked,
    row174_good082_checked,
    row174_good083_checked,
    row174_good084_checked,
    row174_good085_checked,
    row174_good086_checked,
    row174_good087_checked,
    row174_good088_checked,
    row174_good089_checked,
    row174_good090_checked,
    row174_good091_checked,
    row174_good092_checked,
    row174_good093_checked,
    row174_good094_checked,
    row174_good095_checked,
    row174_good096_checked,
    row174_good097_checked,
    row174_good098_checked,
    row174_good099_checked,
    row174_good100_checked,
    row174_good101_checked,
    row174_good102_checked,
    row174_good103_checked,
    row174_good104_checked,
    row174_good105_checked,
    row174_good106_checked,
    row174_good107_checked,
    row174_good108_checked,
    row174_good109_checked,
    row174_good110_checked,
    row174_good111_checked,
    row174_good112_checked,
    row174_good113_checked,
    row174_good114_checked,
    row174_good115_checked,
    row174_good116_checked,
    row174_good117_checked,
    row174_good118_checked,
    row174_good119_checked,
    row174_good120_checked,
    row174_good121_checked,
    row174_good122_checked,
    row174_good123_checked,
    row174_good124_checked,
    row174_good125_checked,
    row174_good126_checked,
    row174_good127_checked,
    row174_good128_checked,
    row174_good129_checked,
    row174_good130_checked,
    row174_good131_checked,
    row174_good132_checked,
    row174_good133_checked,
    row174_good134_checked,
    row174_good135_checked,
    row174_good136_checked,
    row174_good137_checked,
    row174_good138_checked,
    row174_good139_checked,
    row174_good140_checked,
    row174_good141_checked,
    row174_good142_checked,
    row174_good143_checked,
    row174_good144_checked,
    row174_good145_checked,
    row174_good146_checked,
    row174_good147_checked,
    row174_good148_checked,
    row174_good149_checked,
    row174_good150_checked,
    row174_good151_checked,
    row174_good152_checked,
    row174_good153_checked,
    row174_good154_checked,
    row174_good155_checked,
    row174_good156_checked,
    row174_good157_checked,
    row174_good158_checked,
    row174_good159_checked,
    row174_good160_checked,
    row174_good161_checked,
    row174_good162_checked,
    row174_good163_checked,
    row174_good164_checked,
    row174_good165_checked,
    row174_good166_checked,
    row174_good167_checked,
    row174_good168_checked,
    row174_good169_checked,
    row174_good170_checked,
    row174_good171_checked,
    row174_good172_checked,
    row174_good173_checked,
    row174_good174_checked,
    row174_good175_checked,
    row174_good176_checked,
    row174_good177_checked,
    row174_good178_checked,
    row174_good179_checked,
    row174_good180_checked,
    row174_good181_checked,
    row174_good182_checked,
    row174_good183_checked,
    row174_good184_checked,
    row174_good185_checked,
    row174_good186_checked,
    row174_good187_checked,
    row174_good188_checked,
    row174_good189_checked,
    row174_good190_checked,
    row174_good191_checked,
    row174_good192_checked,
    row174_good193_checked,
    row174_good194_checked,
    row174_good195_checked,
    row174_good196_checked,
    row174_good197_checked,
    row174_good198_checked,
    row174_good199_checked,
    row174_good200_checked,
    row174_good201_checked,
    row174_good202_checked,
    row174_good203_checked,
    row174_good204_checked,
    row174_good205_checked,
    row174_good206_checked,
    row174_good207_checked,
    row174_good208_checked,
    row174_good209_checked,
    row174_good210_checked,
    row174_good211_checked,
    row174_good212_checked,
    row174_good213_checked,
    row174_good214_checked,
    row174_good215_checked,
    row174_good216_checked,
    row174_good217_checked,
    row174_good218_checked,
    row174_good219_checked,
    row174_good220_checked,
    row174_good221_checked,
    row174_good222_checked,
    row174_good223_checked,
    row174_good224_checked,
    row174_good225_checked,
    row174_good226_checked,
    row174_good227_checked,
    row174_good228_checked,
    row174_good229_checked,
    row174_good230_checked,
    row174_good231_checked,
    row174_good232_checked,
    row174_good233_checked,
    row174_good234_checked,
    row174_good235_checked,
    row174_good236_checked,
    row174_good237_checked,
    row174_good238_checked,
    row174_good239_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_registered :
    decide (row174.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row174_small_checked :
    coverCheck (2 * row174.height.i + 2) (row174.height.i * (row174.height.i - 1) - 1)
      (row174.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row174_layerCover_checked :
    coverCheck (row174.height.i * (row174.height.i - 1)) (row174.height.n0 - 1)
      (row174.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row174_bounds : List NatInterval :=
  [(350, 522), (523, 696), (697, 864), (865, 1036), (1037, 1206), (1207, 1374), (1375, 1546), (1547, 1716), (1717, 1882), (1883, 2052), (2053, 2226), (2227, 2394), (2395, 2566), (2567, 2730), (2731, 2904), (2905, 3076), (3077, 3240), (3241, 3402), (3403, 3564), (3565, 3732), (3733, 3906), (3907, 4080), (4081, 4252), (4253, 4426), (4427, 4596), (4597, 4770), (4771, 4932), (4933, 5106), (5107, 5280), (5281, 5454), (5455, 5622), (5623, 5796), (5797, 5964), (5965, 6126), (6127, 6294), (6295, 6460), (6461, 6624), (6625, 6792), (6793, 6966), (6967, 7140), (7141, 7302), (7303, 7470), (7471, 7632), (7633, 7794), (7795, 7966), (7967, 8136), (8137, 8296), (8297, 8470), (8471, 8640), (8641, 8814), (8815, 8980), (8981, 9144), (9145, 9310), (9311, 9484), (9485, 9652), (9653, 9822), (9823, 9990), (9991, 10146), (10147, 10314), (10315, 10486), (10487, 10660), (10661, 10830), (10831, 11004), (11005, 11176), (11177, 11350), (11351, 11524), (11525, 11692), (11693, 11862), (11863, 12036), (12037, 12210), (12211, 12384), (12385, 12552), (12553, 12726), (12727, 12894), (12895, 13066), (13067, 13236), (13237, 13402), (13403, 13572), (13573, 13740), (13741, 13902), (13903, 14076), (14077, 14244), (14245, 14416), (14417, 14584), (14585, 14736), (14737, 14910), (14911, 15070), (15071, 15234), (15235, 15406), (15407, 15574), (15575, 15742), (15743, 15912), (15913, 16086), (16087, 16260), (16261, 16426), (16427, 16600), (16601, 16746), (16747, 16920), (16921, 17094), (17095, 17266), (17267, 17430), (17431, 17604), (17605, 17772), (17773, 17934), (17935, 18102), (18103, 18270), (18271, 18442), (18443, 18616), (18617, 18790), (18791, 18960), (18961, 19132), (19133, 19294), (19295, 19462), (19463, 19636), (19637, 19782), (19783, 19950), (19951, 20122), (20123, 20296), (20297, 20470), (20471, 20616), (20617, 20784), (20785, 20946), (20947, 21120), (21121, 21294), (21295, 21456), (21457, 21606), (21607, 21774), (21775, 21946), (21947, 22116), (22117, 22284), (22285, 22456), (22457, 22626), (22627, 22794), (22795, 22960), (22961, 23134), (23135, 23304), (23305, 23470), (23471, 23632), (23633, 23806), (23807, 23974), (23975, 24144), (24145, 24310), (24311, 24454), (24455, 24616), (24617, 24784), (24785, 24954), (24955, 25126), (25127, 25300), (25301, 25474), (25475, 25644), (25645, 25816), (25817, 25974), (25975, 26142), (26143, 26314), (26315, 26482), (26483, 26652), (26653, 26820), (26821, 26994), (26995, 27166), (27167, 27316), (27317, 27472), (27473, 27630), (27631, 27804), (27805, 27976), (27977, 28140), (28141, 28296), (28297, 28470), (28471, 28636), (28637, 28804), (28805, 28966), (28967, 29134), (29135, 29304), (29305, 29476), (29477, 29646), (29647, 29814), (29815, 29976), (29977, 30101), (30758, 30776), (30899, 31066), (31067, 31072), (31213, 31366), (31367, 31502), (31827, 31857), (31974, 32000), (33614, 33662), (33708, 33787), (34322, 34492), (34493, 34564), (36517, 36670), (36671, 36674), (37303, 37383), (37446, 37476), (37500, 37666), (37667, 37711), (38307, 38464), (39326, 39496), (39497, 39499), (40401, 40501), (40931, 41100), (41101, 41104), (43750, 43860), (43923, 43923), (45369, 45426), (47045, 47048), (47526, 47694), (47695, 47697), (48013, 48134), (48373, 48544), (48545, 48546), (48734, 48841), (49152, 49312), (49313, 49325), (49379, 49471), (50421, 50583), (51076, 51178), (53138, 53218), (53290, 53311), (55451, 55614), (55615, 55620), (56307, 56342), (56454, 56480), (57245, 57295), (57344, 57418), (58619, 58737), (59049, 59129), (62500, 62583), (68644, 68812), (68813, 68824), (68921, 69063), (71289, 71460), (71461, 71462), (83667, 83694), (85805, 85856), (89383, 89546), (93845, 93923), (96774, 96778), (102152, 102183), (103041, 103139), (109503, 109548), (148955, 149050)]

theorem row174_bounds_eq : row174.goods.map goodSegmentBounds = row174_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row174_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32941), (2, 40960, 41133), (2, 49152, 49325), (2, 57344, 57517), (2, 32768, 32941), (2, 49152, 49325), (2, 32768, 32941), (3, 39366, 39539), (3, 59049, 59222), (3, 59049, 59222), (5, 31250, 31423), (5, 34375, 34548), (5, 37500, 37673), (5, 40625, 40798), (5, 43750, 43923), (5, 31250, 31423), (5, 46875, 47048), (7, 31213, 31386), (7, 33614, 33787), (7, 33614, 33787), (7, 50421, 50594), (11, 43923, 44096), (11, 58564, 58737), (13, 30758, 30931), (13, 57122, 57295), (17, 34391, 34564), (17, 39304, 39477), (17, 44217, 44390), (17, 49130, 49303), (17, 54043, 54216), (17, 58956, 59129), (19, 34295, 34468), (19, 41154, 41327), (19, 48013, 48186), (19, 54872, 55045), (23, 36501, 36674), (23, 48668, 48841), (31, 59582, 59755), (37, 50653, 50826), (47, 30926, 31099), (53, 30899, 31072), (53, 33708, 33881), (53, 36517, 36690), (53, 39326, 39499), (59, 31329, 31502), (59, 34810, 34983), (59, 38291, 38464), (59, 41772, 41945), (59, 45253, 45426), (59, 48734, 48907), (61, 33489, 33662), (61, 37210, 37383), (61, 40931, 41104), (61, 44652, 44825), (61, 48373, 48546), (61, 52094, 52267), (67, 31423, 31596), (67, 35912, 36085), (67, 40401, 40574), (67, 44890, 45063), (67, 49379, 49552), (67, 53868, 54041), (67, 58357, 58530), (71, 30246, 30419), (71, 35287, 35460), (71, 40328, 40501), (71, 45369, 45542), (71, 50410, 50583), (71, 55451, 55624), (73, 31974, 32147), (73, 37303, 37476), (73, 42632, 42805), (73, 47961, 48134), (73, 53290, 53463), (73, 58619, 58792), (79, 31205, 31378), (79, 37446, 37619), (79, 43687, 43860), (79, 49928, 50101), (79, 56169, 56342), (83, 34445, 34618), (83, 41334, 41507), (83, 48223, 48396), (83, 55112, 55285), (89, 31684, 31857), (89, 39605, 39778), (89, 47526, 47699), (89, 55447, 55620), (97, 37636, 37809), (97, 47045, 47218), (97, 56454, 56627), (101, 30603, 30776), (101, 40804, 40977), (101, 51005, 51178), (103, 31827, 32000), (103, 42436, 42609), (103, 53045, 53218), (107, 34347, 34520), (107, 45796, 45969), (107, 57245, 57418), (109, 35643, 35816), (109, 47524, 47697), (109, 59405, 59578), (113, 38307, 38480), (113, 51076, 51249), (127, 32258, 32431), (127, 48387, 48560), (131, 34322, 34495), (131, 51483, 51656), (137, 37538, 37711), (137, 56307, 56480), (139, 38642, 38815), (139, 57963, 58136), (149, 44402, 44575), (151, 45602, 45775), (157, 49298, 49471), (163, 53138, 53311), (167, 55778, 55951), (173, 30102, 30102), (173, 59858, 60031)]

def row174_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32941), (2, 40960, 41133), (2, 49152, 49325), (2, 57344, 57517), (2, 32768, 32941), (2, 49152, 49325), (2, 32768, 32941), (3, 39366, 39539), (3, 59049, 59222), (3, 59049, 59222), (5, 31250, 31423), (5, 34375, 34548), (5, 37500, 37673), (5, 40625, 40798), (5, 43750, 43923), (5, 31250, 31423)]

def row174_layer000_block001 : List ColouredInterval :=
  [(5, 46875, 47048), (7, 31213, 31386), (7, 33614, 33787), (7, 33614, 33787), (7, 50421, 50594), (11, 43923, 44096), (11, 58564, 58737), (13, 30758, 30931), (13, 57122, 57295), (17, 34391, 34564), (17, 39304, 39477), (17, 44217, 44390), (17, 49130, 49303), (17, 54043, 54216), (17, 58956, 59129), (19, 34295, 34468)]

def row174_layer000_block002 : List ColouredInterval :=
  [(19, 41154, 41327), (19, 48013, 48186), (19, 54872, 55045), (23, 36501, 36674), (23, 48668, 48841), (31, 59582, 59755), (37, 50653, 50826), (47, 30926, 31099), (53, 30899, 31072), (53, 33708, 33881), (53, 36517, 36690), (53, 39326, 39499), (59, 31329, 31502), (59, 34810, 34983), (59, 38291, 38464), (59, 41772, 41945)]

def row174_layer000_block003 : List ColouredInterval :=
  [(59, 45253, 45426), (59, 48734, 48907), (61, 33489, 33662), (61, 37210, 37383), (61, 40931, 41104), (61, 44652, 44825), (61, 48373, 48546), (61, 52094, 52267), (67, 31423, 31596), (67, 35912, 36085), (67, 40401, 40574), (67, 44890, 45063), (67, 49379, 49552), (67, 53868, 54041), (67, 58357, 58530), (71, 30246, 30419)]

def row174_layer000_block004 : List ColouredInterval :=
  [(71, 35287, 35460), (71, 40328, 40501), (71, 45369, 45542), (71, 50410, 50583), (71, 55451, 55624), (73, 31974, 32147), (73, 37303, 37476), (73, 42632, 42805), (73, 47961, 48134), (73, 53290, 53463), (73, 58619, 58792), (79, 31205, 31378), (79, 37446, 37619), (79, 43687, 43860), (79, 49928, 50101), (79, 56169, 56342)]

def row174_layer000_block005 : List ColouredInterval :=
  [(83, 34445, 34618), (83, 41334, 41507), (83, 48223, 48396), (83, 55112, 55285), (89, 31684, 31857), (89, 39605, 39778), (89, 47526, 47699), (89, 55447, 55620), (97, 37636, 37809), (97, 47045, 47218), (97, 56454, 56627), (101, 30603, 30776), (101, 40804, 40977), (101, 51005, 51178), (103, 31827, 32000), (103, 42436, 42609)]

def row174_layer000_block006 : List ColouredInterval :=
  [(103, 53045, 53218), (107, 34347, 34520), (107, 45796, 45969), (107, 57245, 57418), (109, 35643, 35816), (109, 47524, 47697), (109, 59405, 59578), (113, 38307, 38480), (113, 51076, 51249), (127, 32258, 32431), (127, 48387, 48560), (131, 34322, 34495), (131, 51483, 51656), (137, 37538, 37711), (137, 56307, 56480), (139, 38642, 38815)]

def row174_layer000_block007 : List ColouredInterval :=
  [(139, 57963, 58136), (149, 44402, 44575), (151, 45602, 45775), (157, 49298, 49471), (163, 53138, 53311), (167, 55778, 55951), (173, 30102, 30102), (173, 59858, 60031)]

def row174_layer000_chunks : List (List ColouredInterval) :=
  [row174_layer000_block000, row174_layer000_block001, row174_layer000_block002, row174_layer000_block003, row174_layer000_block004, row174_layer000_block005, row174_layer000_block006, row174_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_arithmetic : LayerArithmeticValid row174.height { lower := 30102, upper := 60204, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_enumeration :
    activePowerIntervalList 174 14 30102 60204 = row174_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_pairs000 :
    row174_layer000_block000.all (fun I => row174_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row174_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_pairs001 :
    row174_layer000_block001.all (fun I => row174_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row174_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_pairs002 :
    row174_layer000_block002.all (fun I => row174_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row174_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_pairs003 :
    row174_layer000_block003.all (fun I => row174_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row174_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_pairs004 :
    row174_layer000_block004.all (fun I => row174_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row174_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_pairs005 :
    row174_layer000_block005.all (fun I => row174_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row174_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_pairs006 :
    row174_layer000_block006.all (fun I => row174_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row174_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_pairs007 :
    row174_layer000_block007.all (fun I => row174_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row174_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_chunks_eq : row174_layer000_chunks.flatten = row174_layer000_intervals := by
  rfl

theorem row174_layer000_pairs : pairCoverCheck row174_layer000_intervals row174_bounds = true := by
  apply pairCoverCheck_of_chunks row174_layer000_chunks_eq
  intro block hblock
  simp only [row174_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row174_layer000_pairs000
  · exact row174_layer000_pairs001
  · exact row174_layer000_pairs002
  · exact row174_layer000_pairs003
  · exact row174_layer000_pairs004
  · exact row174_layer000_pairs005
  · exact row174_layer000_pairs006
  · exact row174_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer000_checked :
    coverLayerCheck row174.height row174.goods { lower := 30102, upper := 60204, M := 14 } = true := by
  exact coverLayerCheck_of_parts row174_layer000_arithmetic row174_layer000_enumeration row174_bounds_eq row174_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer000_checked
