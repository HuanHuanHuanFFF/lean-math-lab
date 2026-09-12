import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row181_height : HeightCertificateDatum := { i := 181, r := 60, s := 129, n0Power10 := 7 }

def row181_goods : List GoodSegment := [
  { lower := 364, upper := 539, witness := RowWitness.topPrime 359 },
  { lower := 540, upper := 703, witness := RowWitness.topPrime 523 },
  { lower := 704, upper := 881, witness := RowWitness.topPrime 701 },
  { lower := 882, upper := 1061, witness := RowWitness.topPrime 881 },
  { lower := 1062, upper := 1241, witness := RowWitness.topPrime 1061 },
  { lower := 1242, upper := 1417, witness := RowWitness.topPrime 1237 },
  { lower := 1418, upper := 1589, witness := RowWitness.topPrime 1409 },
  { lower := 1590, upper := 1763, witness := RowWitness.topPrime 1583 },
  { lower := 1764, upper := 1939, witness := RowWitness.topPrime 1759 },
  { lower := 1940, upper := 2113, witness := RowWitness.topPrime 1933 },
  { lower := 2114, upper := 2293, witness := RowWitness.topPrime 2113 },
  { lower := 2294, upper := 2473, witness := RowWitness.topPrime 2293 },
  { lower := 2474, upper := 2653, witness := RowWitness.topPrime 2473 },
  { lower := 2654, upper := 2827, witness := RowWitness.topPrime 2647 },
  { lower := 2828, upper := 2999, witness := RowWitness.topPrime 2819 },
  { lower := 3000, upper := 3179, witness := RowWitness.topPrime 2999 },
  { lower := 3180, upper := 3349, witness := RowWitness.topPrime 3169 },
  { lower := 3350, upper := 3527, witness := RowWitness.topPrime 3347 },
  { lower := 3528, upper := 3707, witness := RowWitness.topPrime 3527 },
  { lower := 3708, upper := 3881, witness := RowWitness.topPrime 3701 },
  { lower := 3882, upper := 4061, witness := RowWitness.topPrime 3881 },
  { lower := 4062, upper := 4237, witness := RowWitness.topPrime 4057 },
  { lower := 4238, upper := 4411, witness := RowWitness.topPrime 4231 },
  { lower := 4412, upper := 4589, witness := RowWitness.topPrime 4409 },
  { lower := 4590, upper := 4763, witness := RowWitness.topPrime 4583 },
  { lower := 4764, upper := 4939, witness := RowWitness.topPrime 4759 },
  { lower := 4940, upper := 5117, witness := RowWitness.topPrime 4937 },
  { lower := 5118, upper := 5293, witness := RowWitness.topPrime 5113 },
  { lower := 5294, upper := 5461, witness := RowWitness.topPrime 5281 },
  { lower := 5462, upper := 5629, witness := RowWitness.topPrime 5449 },
  { lower := 5630, upper := 5803, witness := RowWitness.topPrime 5623 },
  { lower := 5804, upper := 5981, witness := RowWitness.topPrime 5801 },
  { lower := 5982, upper := 6161, witness := RowWitness.topPrime 5981 },
  { lower := 6162, upper := 6331, witness := RowWitness.topPrime 6151 },
  { lower := 6332, upper := 6509, witness := RowWitness.topPrime 6329 },
  { lower := 6510, upper := 6671, witness := RowWitness.topPrime 6491 },
  { lower := 6672, upper := 6841, witness := RowWitness.topPrime 6661 },
  { lower := 6842, upper := 7021, witness := RowWitness.topPrime 6841 },
  { lower := 7022, upper := 7199, witness := RowWitness.topPrime 7019 },
  { lower := 7200, upper := 7373, witness := RowWitness.topPrime 7193 },
  { lower := 7374, upper := 7549, witness := RowWitness.topPrime 7369 },
  { lower := 7550, upper := 7729, witness := RowWitness.topPrime 7549 },
  { lower := 7730, upper := 7907, witness := RowWitness.topPrime 7727 },
  { lower := 7908, upper := 8087, witness := RowWitness.topPrime 7907 },
  { lower := 8088, upper := 8267, witness := RowWitness.topPrime 8087 },
  { lower := 8268, upper := 8443, witness := RowWitness.topPrime 8263 },
  { lower := 8444, upper := 8623, witness := RowWitness.topPrime 8443 },
  { lower := 8624, upper := 8803, witness := RowWitness.topPrime 8623 },
  { lower := 8804, upper := 8983, witness := RowWitness.topPrime 8803 },
  { lower := 8984, upper := 9151, witness := RowWitness.topPrime 8971 },
  { lower := 9152, upper := 9331, witness := RowWitness.topPrime 9151 },
  { lower := 9332, upper := 9503, witness := RowWitness.topPrime 9323 },
  { lower := 9504, upper := 9677, witness := RowWitness.topPrime 9497 },
  { lower := 9678, upper := 9857, witness := RowWitness.topPrime 9677 },
  { lower := 9858, upper := 10037, witness := RowWitness.topPrime 9857 },
  { lower := 10038, upper := 10217, witness := RowWitness.topPrime 10037 },
  { lower := 10218, upper := 10391, witness := RowWitness.topPrime 10211 },
  { lower := 10392, upper := 10571, witness := RowWitness.topPrime 10391 },
  { lower := 10572, upper := 10747, witness := RowWitness.topPrime 10567 },
  { lower := 10748, upper := 10919, witness := RowWitness.topPrime 10739 },
  { lower := 10920, upper := 11089, witness := RowWitness.topPrime 10909 },
  { lower := 11090, upper := 11267, witness := RowWitness.topPrime 11087 },
  { lower := 11268, upper := 11441, witness := RowWitness.topPrime 11261 },
  { lower := 11442, upper := 11617, witness := RowWitness.topPrime 11437 },
  { lower := 11618, upper := 11797, witness := RowWitness.topPrime 11617 },
  { lower := 11798, upper := 11969, witness := RowWitness.topPrime 11789 },
  { lower := 11970, upper := 12149, witness := RowWitness.topPrime 11969 },
  { lower := 12150, upper := 12329, witness := RowWitness.topPrime 12149 },
  { lower := 12330, upper := 12509, witness := RowWitness.topPrime 12329 },
  { lower := 12510, upper := 12683, witness := RowWitness.topPrime 12503 },
  { lower := 12684, upper := 12851, witness := RowWitness.topPrime 12671 },
  { lower := 12852, upper := 13021, witness := RowWitness.topPrime 12841 },
  { lower := 13022, upper := 13189, witness := RowWitness.topPrime 13009 },
  { lower := 13190, upper := 13367, witness := RowWitness.topPrime 13187 },
  { lower := 13368, upper := 13547, witness := RowWitness.topPrime 13367 },
  { lower := 13548, upper := 13717, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13891, witness := RowWitness.topPrime 13711 },
  { lower := 13892, upper := 14063, witness := RowWitness.topPrime 13883 },
  { lower := 14064, upper := 14237, witness := RowWitness.topPrime 14057 },
  { lower := 14238, upper := 14401, witness := RowWitness.topPrime 14221 },
  { lower := 14402, upper := 14581, witness := RowWitness.topPrime 14401 },
  { lower := 14582, upper := 14743, witness := RowWitness.topPrime 14563 },
  { lower := 14744, upper := 14921, witness := RowWitness.topPrime 14741 },
  { lower := 14922, upper := 15077, witness := RowWitness.topPrime 14897 },
  { lower := 15078, upper := 15257, witness := RowWitness.topPrime 15077 },
  { lower := 15258, upper := 15421, witness := RowWitness.topPrime 15241 },
  { lower := 15422, upper := 15593, witness := RowWitness.topPrime 15413 },
  { lower := 15594, upper := 15763, witness := RowWitness.topPrime 15583 },
  { lower := 15764, upper := 15941, witness := RowWitness.topPrime 15761 },
  { lower := 15942, upper := 16117, witness := RowWitness.topPrime 15937 },
  { lower := 16118, upper := 16291, witness := RowWitness.topPrime 16111 },
  { lower := 16292, upper := 16453, witness := RowWitness.topPrime 16273 },
  { lower := 16454, upper := 16633, witness := RowWitness.topPrime 16453 },
  { lower := 16634, upper := 16813, witness := RowWitness.topPrime 16633 },
  { lower := 16814, upper := 16991, witness := RowWitness.topPrime 16811 },
  { lower := 16992, upper := 17167, witness := RowWitness.topPrime 16987 },
  { lower := 17168, upper := 17347, witness := RowWitness.topPrime 17167 },
  { lower := 17348, upper := 17521, witness := RowWitness.topPrime 17341 },
  { lower := 17522, upper := 17699, witness := RowWitness.topPrime 17519 },
  { lower := 17700, upper := 17863, witness := RowWitness.topPrime 17683 },
  { lower := 17864, upper := 18043, witness := RowWitness.topPrime 17863 },
  { lower := 18044, upper := 18223, witness := RowWitness.topPrime 18043 },
  { lower := 18224, upper := 18403, witness := RowWitness.topPrime 18223 },
  { lower := 18404, upper := 18581, witness := RowWitness.topPrime 18401 },
  { lower := 18582, upper := 18733, witness := RowWitness.topPrime 18553 },
  { lower := 18734, upper := 18911, witness := RowWitness.topPrime 18731 },
  { lower := 18912, upper := 19091, witness := RowWitness.topPrime 18911 },
  { lower := 19092, upper := 19267, witness := RowWitness.topPrime 19087 },
  { lower := 19268, upper := 19447, witness := RowWitness.topPrime 19267 },
  { lower := 19448, upper := 19627, witness := RowWitness.topPrime 19447 },
  { lower := 19628, upper := 19789, witness := RowWitness.topPrime 19609 },
  { lower := 19790, upper := 19957, witness := RowWitness.topPrime 19777 },
  { lower := 19958, upper := 20129, witness := RowWitness.topPrime 19949 },
  { lower := 20130, upper := 20309, witness := RowWitness.topPrime 20129 },
  { lower := 20310, upper := 20477, witness := RowWitness.topPrime 20297 },
  { lower := 20478, upper := 20657, witness := RowWitness.topPrime 20477 },
  { lower := 20658, upper := 20821, witness := RowWitness.topPrime 20641 },
  { lower := 20822, upper := 20989, witness := RowWitness.topPrime 20809 },
  { lower := 20990, upper := 21163, witness := RowWitness.topPrime 20983 },
  { lower := 21164, upper := 21343, witness := RowWitness.topPrime 21163 },
  { lower := 21344, upper := 21521, witness := RowWitness.topPrime 21341 },
  { lower := 21522, upper := 21701, witness := RowWitness.topPrime 21521 },
  { lower := 21702, upper := 21881, witness := RowWitness.topPrime 21701 },
  { lower := 21882, upper := 22061, witness := RowWitness.topPrime 21881 },
  { lower := 22062, upper := 22231, witness := RowWitness.topPrime 22051 },
  { lower := 22232, upper := 22409, witness := RowWitness.topPrime 22229 },
  { lower := 22410, upper := 22589, witness := RowWitness.topPrime 22409 },
  { lower := 22590, upper := 22753, witness := RowWitness.topPrime 22573 },
  { lower := 22754, upper := 22931, witness := RowWitness.topPrime 22751 },
  { lower := 22932, upper := 23101, witness := RowWitness.topPrime 22921 },
  { lower := 23102, upper := 23279, witness := RowWitness.topPrime 23099 },
  { lower := 23280, upper := 23459, witness := RowWitness.topPrime 23279 },
  { lower := 23460, upper := 23639, witness := RowWitness.topPrime 23459 },
  { lower := 23640, upper := 23813, witness := RowWitness.topPrime 23633 },
  { lower := 23814, upper := 23993, witness := RowWitness.topPrime 23813 },
  { lower := 23994, upper := 24173, witness := RowWitness.topPrime 23993 },
  { lower := 24174, upper := 24349, witness := RowWitness.topPrime 24169 },
  { lower := 24350, upper := 24517, witness := RowWitness.topPrime 24337 },
  { lower := 24518, upper := 24697, witness := RowWitness.topPrime 24517 },
  { lower := 24698, upper := 24877, witness := RowWitness.topPrime 24697 },
  { lower := 24878, upper := 25057, witness := RowWitness.topPrime 24877 },
  { lower := 25058, upper := 25237, witness := RowWitness.topPrime 25057 },
  { lower := 25238, upper := 25417, witness := RowWitness.topPrime 25237 },
  { lower := 25418, upper := 25591, witness := RowWitness.topPrime 25411 },
  { lower := 25592, upper := 25769, witness := RowWitness.topPrime 25589 },
  { lower := 25770, upper := 25943, witness := RowWitness.topPrime 25763 },
  { lower := 25944, upper := 26123, witness := RowWitness.topPrime 25943 },
  { lower := 26124, upper := 26299, witness := RowWitness.topPrime 26119 },
  { lower := 26300, upper := 26477, witness := RowWitness.topPrime 26297 },
  { lower := 26478, upper := 26639, witness := RowWitness.topPrime 26459 },
  { lower := 26640, upper := 26813, witness := RowWitness.topPrime 26633 },
  { lower := 26814, upper := 26993, witness := RowWitness.topPrime 26813 },
  { lower := 26994, upper := 27173, witness := RowWitness.topPrime 26993 },
  { lower := 27174, upper := 27323, witness := RowWitness.topPrime 27143 },
  { lower := 27324, upper := 27479, witness := RowWitness.topPrime 27299 },
  { lower := 27480, upper := 27659, witness := RowWitness.topPrime 27479 },
  { lower := 27660, upper := 27833, witness := RowWitness.topPrime 27653 },
  { lower := 27834, upper := 28007, witness := RowWitness.topPrime 27827 },
  { lower := 28008, upper := 28181, witness := RowWitness.topPrime 28001 },
  { lower := 28182, upper := 28361, witness := RowWitness.topPrime 28181 },
  { lower := 28362, upper := 28531, witness := RowWitness.topPrime 28351 },
  { lower := 28532, upper := 28697, witness := RowWitness.topPrime 28517 },
  { lower := 28698, upper := 28877, witness := RowWitness.topPrime 28697 },
  { lower := 28878, upper := 29051, witness := RowWitness.topPrime 28871 },
  { lower := 29052, upper := 29213, witness := RowWitness.topPrime 29033 },
  { lower := 29214, upper := 29389, witness := RowWitness.topPrime 29209 },
  { lower := 29390, upper := 29569, witness := RowWitness.topPrime 29389 },
  { lower := 29570, upper := 29749, witness := RowWitness.topPrime 29569 },
  { lower := 29750, upper := 29921, witness := RowWitness.topPrime 29741 },
  { lower := 29922, upper := 30101, witness := RowWitness.topPrime 29921 },
  { lower := 30102, upper := 30277, witness := RowWitness.topPrime 30097 },
  { lower := 30278, upper := 30451, witness := RowWitness.topPrime 30271 },
  { lower := 30452, upper := 30629, witness := RowWitness.topPrime 30449 },
  { lower := 30630, upper := 30773, witness := RowWitness.topPrime 30593 },
  { lower := 30774, upper := 30953, witness := RowWitness.topPrime 30773 },
  { lower := 30954, upper := 31129, witness := RowWitness.topPrime 30949 },
  { lower := 31130, upper := 31303, witness := RowWitness.topPrime 31123 },
  { lower := 31304, upper := 31457, witness := RowWitness.topPrime 31277 },
  { lower := 31458, upper := 31577, witness := RowWitness.topPrime 31397 },
  { lower := 31578, upper := 31753, witness := RowWitness.topPrime 31573 },
  { lower := 31754, upper := 31931, witness := RowWitness.topPrime 31751 },
  { lower := 31932, upper := 32087, witness := RowWitness.topPrime 31907 },
  { lower := 32088, upper := 32263, witness := RowWitness.topPrime 32083 },
  { lower := 32264, upper := 32441, witness := RowWitness.topPrime 32261 },
  { lower := 32442, upper := 32579, witness := RowWitness.topPrime 32441 },
  { lower := 32805, upper := 32948, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33669, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33794, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34499, witness := RowWitness.topPrime 34319 },
  { lower := 34500, upper := 34571, witness := RowWitness.topPrime 34499 },
  { lower := 36517, upper := 36677, witness := RowWitness.topPrime 36497 },
  { lower := 36678, upper := 36681, witness := RowWitness.topPrime 36677 },
  { lower := 37303, upper := 37390, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37483, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37673, witness := RowWitness.topPrime 37493 },
  { lower := 37674, upper := 37718, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38471, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39484, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40508, witness := RowWitness.topPrime 40387 },
  { lower := 40804, upper := 40805, witness := RowWitness.topPrime 40801 },
  { lower := 40931, upper := 41107, witness := RowWitness.topPrime 40927 },
  { lower := 41108, upper := 41111, witness := RowWitness.topPrime 41081 },
  { lower := 41334, upper := 41334, witness := RowWitness.topPrime 41333 },
  { lower := 45056, upper := 45070, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45433, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45976, witness := RowWitness.topPrime 45893 },
  { lower := 47045, upper := 47055, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47701, witness := RowWitness.topPrime 47521 },
  { lower := 47702, upper := 47704, witness := RowWitness.topPrime 47701 },
  { lower := 48013, upper := 48141, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48551, witness := RowWitness.topPrime 48371 },
  { lower := 48552, upper := 48553, witness := RowWitness.topPrime 48541 },
  { lower := 48778, upper := 48848, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49319, witness := RowWitness.topPrime 49139 },
  { lower := 49320, upper := 49332, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49478, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50590, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51185, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53225, witness := RowWitness.topPrime 53129 },
  { lower := 53248, upper := 53419, witness := RowWitness.topPrime 53239 },
  { lower := 53420, upper := 53428, witness := RowWitness.topPrime 53419 },
  { lower := 54043, upper := 54048, witness := RowWitness.topPrime 54037 },
  { lower := 55451, upper := 55621, witness := RowWitness.topPrime 55441 },
  { lower := 55622, upper := 55627, witness := RowWitness.topPrime 55621 },
  { lower := 56307, upper := 56349, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56487, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57302, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57425, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58744, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59136, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59585, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62590, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64043, witness := RowWitness.topPrime 63863 },
  { lower := 64044, upper := 64049, witness := RowWitness.topPrime 64037 },
  { lower := 64082, upper := 64128, witness := RowWitness.topPrime 64081 },
  { lower := 68694, upper := 68824, witness := RowWitness.topPrime 68687 },
  { lower := 71289, upper := 71467, witness := RowWitness.topPrime 71287 },
  { lower := 71468, upper := 71469, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73182, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73347, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83701, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85863, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89553, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93930, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96785, witness := RowWitness.topPrime 96769 },
  { lower := 98415, upper := 98484, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103146, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109555, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137961, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149057, witness := RowWitness.topPrime 148949 }
]

def row181_layers : List CoverLayer := [
  { lower := 32580, upper := 65160, M := 13 },
  { lower := 65160, upper := 130320, M := 9 },
  { lower := 130320, upper := 260640, M := 7 },
  { lower := 260640, upper := 521280, M := 5 },
  { lower := 521280, upper := 1042560, M := 4 },
  { lower := 1042560, upper := 2085120, M := 3 },
  { lower := 2085120, upper := 4170240, M := 2 },
  { lower := 4170240, upper := 8340480, M := 2 },
  { lower := 8340480, upper := 10000000, M := 1 }
]

def row181 : FiniteCoverRow := {
  height := row181_height,
  goods := row181_goods,
  layers := row181_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good000_checked :
    goodSegmentCheck 181 60 129
      { lower := 364, upper := 539, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good001_checked :
    goodSegmentCheck 181 60 129
      { lower := 540, upper := 703, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good002_checked :
    goodSegmentCheck 181 60 129
      { lower := 704, upper := 881, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good003_checked :
    goodSegmentCheck 181 60 129
      { lower := 882, upper := 1061, witness := RowWitness.topPrime 881 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good004_checked :
    goodSegmentCheck 181 60 129
      { lower := 1062, upper := 1241, witness := RowWitness.topPrime 1061 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good005_checked :
    goodSegmentCheck 181 60 129
      { lower := 1242, upper := 1417, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good006_checked :
    goodSegmentCheck 181 60 129
      { lower := 1418, upper := 1589, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good007_checked :
    goodSegmentCheck 181 60 129
      { lower := 1590, upper := 1763, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good008_checked :
    goodSegmentCheck 181 60 129
      { lower := 1764, upper := 1939, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good009_checked :
    goodSegmentCheck 181 60 129
      { lower := 1940, upper := 2113, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good010_checked :
    goodSegmentCheck 181 60 129
      { lower := 2114, upper := 2293, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good011_checked :
    goodSegmentCheck 181 60 129
      { lower := 2294, upper := 2473, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good012_checked :
    goodSegmentCheck 181 60 129
      { lower := 2474, upper := 2653, witness := RowWitness.topPrime 2473 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good013_checked :
    goodSegmentCheck 181 60 129
      { lower := 2654, upper := 2827, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good014_checked :
    goodSegmentCheck 181 60 129
      { lower := 2828, upper := 2999, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good015_checked :
    goodSegmentCheck 181 60 129
      { lower := 3000, upper := 3179, witness := RowWitness.topPrime 2999 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good016_checked :
    goodSegmentCheck 181 60 129
      { lower := 3180, upper := 3349, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good017_checked :
    goodSegmentCheck 181 60 129
      { lower := 3350, upper := 3527, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good018_checked :
    goodSegmentCheck 181 60 129
      { lower := 3528, upper := 3707, witness := RowWitness.topPrime 3527 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good019_checked :
    goodSegmentCheck 181 60 129
      { lower := 3708, upper := 3881, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good020_checked :
    goodSegmentCheck 181 60 129
      { lower := 3882, upper := 4061, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good021_checked :
    goodSegmentCheck 181 60 129
      { lower := 4062, upper := 4237, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good022_checked :
    goodSegmentCheck 181 60 129
      { lower := 4238, upper := 4411, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good023_checked :
    goodSegmentCheck 181 60 129
      { lower := 4412, upper := 4589, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good024_checked :
    goodSegmentCheck 181 60 129
      { lower := 4590, upper := 4763, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good025_checked :
    goodSegmentCheck 181 60 129
      { lower := 4764, upper := 4939, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good026_checked :
    goodSegmentCheck 181 60 129
      { lower := 4940, upper := 5117, witness := RowWitness.topPrime 4937 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good027_checked :
    goodSegmentCheck 181 60 129
      { lower := 5118, upper := 5293, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good028_checked :
    goodSegmentCheck 181 60 129
      { lower := 5294, upper := 5461, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good029_checked :
    goodSegmentCheck 181 60 129
      { lower := 5462, upper := 5629, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good030_checked :
    goodSegmentCheck 181 60 129
      { lower := 5630, upper := 5803, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good031_checked :
    goodSegmentCheck 181 60 129
      { lower := 5804, upper := 5981, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good032_checked :
    goodSegmentCheck 181 60 129
      { lower := 5982, upper := 6161, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good033_checked :
    goodSegmentCheck 181 60 129
      { lower := 6162, upper := 6331, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good034_checked :
    goodSegmentCheck 181 60 129
      { lower := 6332, upper := 6509, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good035_checked :
    goodSegmentCheck 181 60 129
      { lower := 6510, upper := 6671, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good036_checked :
    goodSegmentCheck 181 60 129
      { lower := 6672, upper := 6841, witness := RowWitness.topPrime 6661 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good037_checked :
    goodSegmentCheck 181 60 129
      { lower := 6842, upper := 7021, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good038_checked :
    goodSegmentCheck 181 60 129
      { lower := 7022, upper := 7199, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good039_checked :
    goodSegmentCheck 181 60 129
      { lower := 7200, upper := 7373, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good040_checked :
    goodSegmentCheck 181 60 129
      { lower := 7374, upper := 7549, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good041_checked :
    goodSegmentCheck 181 60 129
      { lower := 7550, upper := 7729, witness := RowWitness.topPrime 7549 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good042_checked :
    goodSegmentCheck 181 60 129
      { lower := 7730, upper := 7907, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good043_checked :
    goodSegmentCheck 181 60 129
      { lower := 7908, upper := 8087, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good044_checked :
    goodSegmentCheck 181 60 129
      { lower := 8088, upper := 8267, witness := RowWitness.topPrime 8087 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good045_checked :
    goodSegmentCheck 181 60 129
      { lower := 8268, upper := 8443, witness := RowWitness.topPrime 8263 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good046_checked :
    goodSegmentCheck 181 60 129
      { lower := 8444, upper := 8623, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good047_checked :
    goodSegmentCheck 181 60 129
      { lower := 8624, upper := 8803, witness := RowWitness.topPrime 8623 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good048_checked :
    goodSegmentCheck 181 60 129
      { lower := 8804, upper := 8983, witness := RowWitness.topPrime 8803 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good049_checked :
    goodSegmentCheck 181 60 129
      { lower := 8984, upper := 9151, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good050_checked :
    goodSegmentCheck 181 60 129
      { lower := 9152, upper := 9331, witness := RowWitness.topPrime 9151 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good051_checked :
    goodSegmentCheck 181 60 129
      { lower := 9332, upper := 9503, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good052_checked :
    goodSegmentCheck 181 60 129
      { lower := 9504, upper := 9677, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good053_checked :
    goodSegmentCheck 181 60 129
      { lower := 9678, upper := 9857, witness := RowWitness.topPrime 9677 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good054_checked :
    goodSegmentCheck 181 60 129
      { lower := 9858, upper := 10037, witness := RowWitness.topPrime 9857 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good055_checked :
    goodSegmentCheck 181 60 129
      { lower := 10038, upper := 10217, witness := RowWitness.topPrime 10037 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good056_checked :
    goodSegmentCheck 181 60 129
      { lower := 10218, upper := 10391, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good057_checked :
    goodSegmentCheck 181 60 129
      { lower := 10392, upper := 10571, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good058_checked :
    goodSegmentCheck 181 60 129
      { lower := 10572, upper := 10747, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good059_checked :
    goodSegmentCheck 181 60 129
      { lower := 10748, upper := 10919, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good060_checked :
    goodSegmentCheck 181 60 129
      { lower := 10920, upper := 11089, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good061_checked :
    goodSegmentCheck 181 60 129
      { lower := 11090, upper := 11267, witness := RowWitness.topPrime 11087 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good062_checked :
    goodSegmentCheck 181 60 129
      { lower := 11268, upper := 11441, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good063_checked :
    goodSegmentCheck 181 60 129
      { lower := 11442, upper := 11617, witness := RowWitness.topPrime 11437 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good064_checked :
    goodSegmentCheck 181 60 129
      { lower := 11618, upper := 11797, witness := RowWitness.topPrime 11617 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good065_checked :
    goodSegmentCheck 181 60 129
      { lower := 11798, upper := 11969, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good066_checked :
    goodSegmentCheck 181 60 129
      { lower := 11970, upper := 12149, witness := RowWitness.topPrime 11969 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good067_checked :
    goodSegmentCheck 181 60 129
      { lower := 12150, upper := 12329, witness := RowWitness.topPrime 12149 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good068_checked :
    goodSegmentCheck 181 60 129
      { lower := 12330, upper := 12509, witness := RowWitness.topPrime 12329 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good069_checked :
    goodSegmentCheck 181 60 129
      { lower := 12510, upper := 12683, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good070_checked :
    goodSegmentCheck 181 60 129
      { lower := 12684, upper := 12851, witness := RowWitness.topPrime 12671 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good071_checked :
    goodSegmentCheck 181 60 129
      { lower := 12852, upper := 13021, witness := RowWitness.topPrime 12841 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good072_checked :
    goodSegmentCheck 181 60 129
      { lower := 13022, upper := 13189, witness := RowWitness.topPrime 13009 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good073_checked :
    goodSegmentCheck 181 60 129
      { lower := 13190, upper := 13367, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good074_checked :
    goodSegmentCheck 181 60 129
      { lower := 13368, upper := 13547, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good075_checked :
    goodSegmentCheck 181 60 129
      { lower := 13548, upper := 13717, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good076_checked :
    goodSegmentCheck 181 60 129
      { lower := 13718, upper := 13891, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good077_checked :
    goodSegmentCheck 181 60 129
      { lower := 13892, upper := 14063, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good078_checked :
    goodSegmentCheck 181 60 129
      { lower := 14064, upper := 14237, witness := RowWitness.topPrime 14057 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good079_checked :
    goodSegmentCheck 181 60 129
      { lower := 14238, upper := 14401, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good080_checked :
    goodSegmentCheck 181 60 129
      { lower := 14402, upper := 14581, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good081_checked :
    goodSegmentCheck 181 60 129
      { lower := 14582, upper := 14743, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good082_checked :
    goodSegmentCheck 181 60 129
      { lower := 14744, upper := 14921, witness := RowWitness.topPrime 14741 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good083_checked :
    goodSegmentCheck 181 60 129
      { lower := 14922, upper := 15077, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good084_checked :
    goodSegmentCheck 181 60 129
      { lower := 15078, upper := 15257, witness := RowWitness.topPrime 15077 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good085_checked :
    goodSegmentCheck 181 60 129
      { lower := 15258, upper := 15421, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good086_checked :
    goodSegmentCheck 181 60 129
      { lower := 15422, upper := 15593, witness := RowWitness.topPrime 15413 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good087_checked :
    goodSegmentCheck 181 60 129
      { lower := 15594, upper := 15763, witness := RowWitness.topPrime 15583 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good088_checked :
    goodSegmentCheck 181 60 129
      { lower := 15764, upper := 15941, witness := RowWitness.topPrime 15761 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good089_checked :
    goodSegmentCheck 181 60 129
      { lower := 15942, upper := 16117, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good090_checked :
    goodSegmentCheck 181 60 129
      { lower := 16118, upper := 16291, witness := RowWitness.topPrime 16111 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good091_checked :
    goodSegmentCheck 181 60 129
      { lower := 16292, upper := 16453, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good092_checked :
    goodSegmentCheck 181 60 129
      { lower := 16454, upper := 16633, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good093_checked :
    goodSegmentCheck 181 60 129
      { lower := 16634, upper := 16813, witness := RowWitness.topPrime 16633 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good094_checked :
    goodSegmentCheck 181 60 129
      { lower := 16814, upper := 16991, witness := RowWitness.topPrime 16811 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good095_checked :
    goodSegmentCheck 181 60 129
      { lower := 16992, upper := 17167, witness := RowWitness.topPrime 16987 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good096_checked :
    goodSegmentCheck 181 60 129
      { lower := 17168, upper := 17347, witness := RowWitness.topPrime 17167 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good097_checked :
    goodSegmentCheck 181 60 129
      { lower := 17348, upper := 17521, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good098_checked :
    goodSegmentCheck 181 60 129
      { lower := 17522, upper := 17699, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good099_checked :
    goodSegmentCheck 181 60 129
      { lower := 17700, upper := 17863, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good100_checked :
    goodSegmentCheck 181 60 129
      { lower := 17864, upper := 18043, witness := RowWitness.topPrime 17863 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good101_checked :
    goodSegmentCheck 181 60 129
      { lower := 18044, upper := 18223, witness := RowWitness.topPrime 18043 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good102_checked :
    goodSegmentCheck 181 60 129
      { lower := 18224, upper := 18403, witness := RowWitness.topPrime 18223 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good103_checked :
    goodSegmentCheck 181 60 129
      { lower := 18404, upper := 18581, witness := RowWitness.topPrime 18401 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good104_checked :
    goodSegmentCheck 181 60 129
      { lower := 18582, upper := 18733, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good105_checked :
    goodSegmentCheck 181 60 129
      { lower := 18734, upper := 18911, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good106_checked :
    goodSegmentCheck 181 60 129
      { lower := 18912, upper := 19091, witness := RowWitness.topPrime 18911 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good107_checked :
    goodSegmentCheck 181 60 129
      { lower := 19092, upper := 19267, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good108_checked :
    goodSegmentCheck 181 60 129
      { lower := 19268, upper := 19447, witness := RowWitness.topPrime 19267 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good109_checked :
    goodSegmentCheck 181 60 129
      { lower := 19448, upper := 19627, witness := RowWitness.topPrime 19447 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good110_checked :
    goodSegmentCheck 181 60 129
      { lower := 19628, upper := 19789, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good111_checked :
    goodSegmentCheck 181 60 129
      { lower := 19790, upper := 19957, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good112_checked :
    goodSegmentCheck 181 60 129
      { lower := 19958, upper := 20129, witness := RowWitness.topPrime 19949 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good113_checked :
    goodSegmentCheck 181 60 129
      { lower := 20130, upper := 20309, witness := RowWitness.topPrime 20129 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good114_checked :
    goodSegmentCheck 181 60 129
      { lower := 20310, upper := 20477, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good115_checked :
    goodSegmentCheck 181 60 129
      { lower := 20478, upper := 20657, witness := RowWitness.topPrime 20477 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good116_checked :
    goodSegmentCheck 181 60 129
      { lower := 20658, upper := 20821, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good117_checked :
    goodSegmentCheck 181 60 129
      { lower := 20822, upper := 20989, witness := RowWitness.topPrime 20809 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good118_checked :
    goodSegmentCheck 181 60 129
      { lower := 20990, upper := 21163, witness := RowWitness.topPrime 20983 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good119_checked :
    goodSegmentCheck 181 60 129
      { lower := 21164, upper := 21343, witness := RowWitness.topPrime 21163 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good120_checked :
    goodSegmentCheck 181 60 129
      { lower := 21344, upper := 21521, witness := RowWitness.topPrime 21341 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good121_checked :
    goodSegmentCheck 181 60 129
      { lower := 21522, upper := 21701, witness := RowWitness.topPrime 21521 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good122_checked :
    goodSegmentCheck 181 60 129
      { lower := 21702, upper := 21881, witness := RowWitness.topPrime 21701 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good123_checked :
    goodSegmentCheck 181 60 129
      { lower := 21882, upper := 22061, witness := RowWitness.topPrime 21881 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good124_checked :
    goodSegmentCheck 181 60 129
      { lower := 22062, upper := 22231, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good125_checked :
    goodSegmentCheck 181 60 129
      { lower := 22232, upper := 22409, witness := RowWitness.topPrime 22229 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good126_checked :
    goodSegmentCheck 181 60 129
      { lower := 22410, upper := 22589, witness := RowWitness.topPrime 22409 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good127_checked :
    goodSegmentCheck 181 60 129
      { lower := 22590, upper := 22753, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good128_checked :
    goodSegmentCheck 181 60 129
      { lower := 22754, upper := 22931, witness := RowWitness.topPrime 22751 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good129_checked :
    goodSegmentCheck 181 60 129
      { lower := 22932, upper := 23101, witness := RowWitness.topPrime 22921 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good130_checked :
    goodSegmentCheck 181 60 129
      { lower := 23102, upper := 23279, witness := RowWitness.topPrime 23099 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good131_checked :
    goodSegmentCheck 181 60 129
      { lower := 23280, upper := 23459, witness := RowWitness.topPrime 23279 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good132_checked :
    goodSegmentCheck 181 60 129
      { lower := 23460, upper := 23639, witness := RowWitness.topPrime 23459 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good133_checked :
    goodSegmentCheck 181 60 129
      { lower := 23640, upper := 23813, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good134_checked :
    goodSegmentCheck 181 60 129
      { lower := 23814, upper := 23993, witness := RowWitness.topPrime 23813 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good135_checked :
    goodSegmentCheck 181 60 129
      { lower := 23994, upper := 24173, witness := RowWitness.topPrime 23993 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good136_checked :
    goodSegmentCheck 181 60 129
      { lower := 24174, upper := 24349, witness := RowWitness.topPrime 24169 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good137_checked :
    goodSegmentCheck 181 60 129
      { lower := 24350, upper := 24517, witness := RowWitness.topPrime 24337 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good138_checked :
    goodSegmentCheck 181 60 129
      { lower := 24518, upper := 24697, witness := RowWitness.topPrime 24517 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good139_checked :
    goodSegmentCheck 181 60 129
      { lower := 24698, upper := 24877, witness := RowWitness.topPrime 24697 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good140_checked :
    goodSegmentCheck 181 60 129
      { lower := 24878, upper := 25057, witness := RowWitness.topPrime 24877 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good141_checked :
    goodSegmentCheck 181 60 129
      { lower := 25058, upper := 25237, witness := RowWitness.topPrime 25057 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good142_checked :
    goodSegmentCheck 181 60 129
      { lower := 25238, upper := 25417, witness := RowWitness.topPrime 25237 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good143_checked :
    goodSegmentCheck 181 60 129
      { lower := 25418, upper := 25591, witness := RowWitness.topPrime 25411 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good144_checked :
    goodSegmentCheck 181 60 129
      { lower := 25592, upper := 25769, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good145_checked :
    goodSegmentCheck 181 60 129
      { lower := 25770, upper := 25943, witness := RowWitness.topPrime 25763 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good146_checked :
    goodSegmentCheck 181 60 129
      { lower := 25944, upper := 26123, witness := RowWitness.topPrime 25943 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good147_checked :
    goodSegmentCheck 181 60 129
      { lower := 26124, upper := 26299, witness := RowWitness.topPrime 26119 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good148_checked :
    goodSegmentCheck 181 60 129
      { lower := 26300, upper := 26477, witness := RowWitness.topPrime 26297 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good149_checked :
    goodSegmentCheck 181 60 129
      { lower := 26478, upper := 26639, witness := RowWitness.topPrime 26459 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good150_checked :
    goodSegmentCheck 181 60 129
      { lower := 26640, upper := 26813, witness := RowWitness.topPrime 26633 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good151_checked :
    goodSegmentCheck 181 60 129
      { lower := 26814, upper := 26993, witness := RowWitness.topPrime 26813 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good152_checked :
    goodSegmentCheck 181 60 129
      { lower := 26994, upper := 27173, witness := RowWitness.topPrime 26993 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good153_checked :
    goodSegmentCheck 181 60 129
      { lower := 27174, upper := 27323, witness := RowWitness.topPrime 27143 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good154_checked :
    goodSegmentCheck 181 60 129
      { lower := 27324, upper := 27479, witness := RowWitness.topPrime 27299 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good155_checked :
    goodSegmentCheck 181 60 129
      { lower := 27480, upper := 27659, witness := RowWitness.topPrime 27479 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good156_checked :
    goodSegmentCheck 181 60 129
      { lower := 27660, upper := 27833, witness := RowWitness.topPrime 27653 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good157_checked :
    goodSegmentCheck 181 60 129
      { lower := 27834, upper := 28007, witness := RowWitness.topPrime 27827 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good158_checked :
    goodSegmentCheck 181 60 129
      { lower := 28008, upper := 28181, witness := RowWitness.topPrime 28001 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good159_checked :
    goodSegmentCheck 181 60 129
      { lower := 28182, upper := 28361, witness := RowWitness.topPrime 28181 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good160_checked :
    goodSegmentCheck 181 60 129
      { lower := 28362, upper := 28531, witness := RowWitness.topPrime 28351 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good161_checked :
    goodSegmentCheck 181 60 129
      { lower := 28532, upper := 28697, witness := RowWitness.topPrime 28517 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good162_checked :
    goodSegmentCheck 181 60 129
      { lower := 28698, upper := 28877, witness := RowWitness.topPrime 28697 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good163_checked :
    goodSegmentCheck 181 60 129
      { lower := 28878, upper := 29051, witness := RowWitness.topPrime 28871 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good164_checked :
    goodSegmentCheck 181 60 129
      { lower := 29052, upper := 29213, witness := RowWitness.topPrime 29033 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good165_checked :
    goodSegmentCheck 181 60 129
      { lower := 29214, upper := 29389, witness := RowWitness.topPrime 29209 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good166_checked :
    goodSegmentCheck 181 60 129
      { lower := 29390, upper := 29569, witness := RowWitness.topPrime 29389 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good167_checked :
    goodSegmentCheck 181 60 129
      { lower := 29570, upper := 29749, witness := RowWitness.topPrime 29569 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good168_checked :
    goodSegmentCheck 181 60 129
      { lower := 29750, upper := 29921, witness := RowWitness.topPrime 29741 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good169_checked :
    goodSegmentCheck 181 60 129
      { lower := 29922, upper := 30101, witness := RowWitness.topPrime 29921 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good170_checked :
    goodSegmentCheck 181 60 129
      { lower := 30102, upper := 30277, witness := RowWitness.topPrime 30097 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good171_checked :
    goodSegmentCheck 181 60 129
      { lower := 30278, upper := 30451, witness := RowWitness.topPrime 30271 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good172_checked :
    goodSegmentCheck 181 60 129
      { lower := 30452, upper := 30629, witness := RowWitness.topPrime 30449 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good173_checked :
    goodSegmentCheck 181 60 129
      { lower := 30630, upper := 30773, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good174_checked :
    goodSegmentCheck 181 60 129
      { lower := 30774, upper := 30953, witness := RowWitness.topPrime 30773 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good175_checked :
    goodSegmentCheck 181 60 129
      { lower := 30954, upper := 31129, witness := RowWitness.topPrime 30949 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good176_checked :
    goodSegmentCheck 181 60 129
      { lower := 31130, upper := 31303, witness := RowWitness.topPrime 31123 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good177_checked :
    goodSegmentCheck 181 60 129
      { lower := 31304, upper := 31457, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good178_checked :
    goodSegmentCheck 181 60 129
      { lower := 31458, upper := 31577, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good179_checked :
    goodSegmentCheck 181 60 129
      { lower := 31578, upper := 31753, witness := RowWitness.topPrime 31573 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good180_checked :
    goodSegmentCheck 181 60 129
      { lower := 31754, upper := 31931, witness := RowWitness.topPrime 31751 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good181_checked :
    goodSegmentCheck 181 60 129
      { lower := 31932, upper := 32087, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good182_checked :
    goodSegmentCheck 181 60 129
      { lower := 32088, upper := 32263, witness := RowWitness.topPrime 32083 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good183_checked :
    goodSegmentCheck 181 60 129
      { lower := 32264, upper := 32441, witness := RowWitness.topPrime 32261 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good184_checked :
    goodSegmentCheck 181 60 129
      { lower := 32442, upper := 32579, witness := RowWitness.topPrime 32441 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good185_checked :
    goodSegmentCheck 181 60 129
      { lower := 32805, upper := 32948, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good186_checked :
    goodSegmentCheck 181 60 129
      { lower := 33614, upper := 33669, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good187_checked :
    goodSegmentCheck 181 60 129
      { lower := 33708, upper := 33794, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good188_checked :
    goodSegmentCheck 181 60 129
      { lower := 34322, upper := 34499, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good189_checked :
    goodSegmentCheck 181 60 129
      { lower := 34500, upper := 34571, witness := RowWitness.topPrime 34499 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good190_checked :
    goodSegmentCheck 181 60 129
      { lower := 36517, upper := 36677, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good191_checked :
    goodSegmentCheck 181 60 129
      { lower := 36678, upper := 36681, witness := RowWitness.topPrime 36677 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good192_checked :
    goodSegmentCheck 181 60 129
      { lower := 37303, upper := 37390, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good193_checked :
    goodSegmentCheck 181 60 129
      { lower := 37446, upper := 37483, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good194_checked :
    goodSegmentCheck 181 60 129
      { lower := 37500, upper := 37673, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good195_checked :
    goodSegmentCheck 181 60 129
      { lower := 37674, upper := 37718, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good196_checked :
    goodSegmentCheck 181 60 129
      { lower := 38307, upper := 38471, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good197_checked :
    goodSegmentCheck 181 60 129
      { lower := 39366, upper := 39484, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good198_checked :
    goodSegmentCheck 181 60 129
      { lower := 40401, upper := 40508, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good199_checked :
    goodSegmentCheck 181 60 129
      { lower := 40804, upper := 40805, witness := RowWitness.topPrime 40801 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good200_checked :
    goodSegmentCheck 181 60 129
      { lower := 40931, upper := 41107, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good201_checked :
    goodSegmentCheck 181 60 129
      { lower := 41108, upper := 41111, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good202_checked :
    goodSegmentCheck 181 60 129
      { lower := 41334, upper := 41334, witness := RowWitness.topPrime 41333 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good203_checked :
    goodSegmentCheck 181 60 129
      { lower := 45056, upper := 45070, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good204_checked :
    goodSegmentCheck 181 60 129
      { lower := 45369, upper := 45433, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good205_checked :
    goodSegmentCheck 181 60 129
      { lower := 45927, upper := 45976, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good206_checked :
    goodSegmentCheck 181 60 129
      { lower := 47045, upper := 47055, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good207_checked :
    goodSegmentCheck 181 60 129
      { lower := 47526, upper := 47701, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good208_checked :
    goodSegmentCheck 181 60 129
      { lower := 47702, upper := 47704, witness := RowWitness.topPrime 47701 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good209_checked :
    goodSegmentCheck 181 60 129
      { lower := 48013, upper := 48141, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good210_checked :
    goodSegmentCheck 181 60 129
      { lower := 48373, upper := 48551, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good211_checked :
    goodSegmentCheck 181 60 129
      { lower := 48552, upper := 48553, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good212_checked :
    goodSegmentCheck 181 60 129
      { lower := 48778, upper := 48848, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good213_checked :
    goodSegmentCheck 181 60 129
      { lower := 49152, upper := 49319, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good214_checked :
    goodSegmentCheck 181 60 129
      { lower := 49320, upper := 49332, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good215_checked :
    goodSegmentCheck 181 60 129
      { lower := 49379, upper := 49478, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good216_checked :
    goodSegmentCheck 181 60 129
      { lower := 50421, upper := 50590, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good217_checked :
    goodSegmentCheck 181 60 129
      { lower := 51076, upper := 51185, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good218_checked :
    goodSegmentCheck 181 60 129
      { lower := 53138, upper := 53225, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good219_checked :
    goodSegmentCheck 181 60 129
      { lower := 53248, upper := 53419, witness := RowWitness.topPrime 53239 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good220_checked :
    goodSegmentCheck 181 60 129
      { lower := 53420, upper := 53428, witness := RowWitness.topPrime 53419 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good221_checked :
    goodSegmentCheck 181 60 129
      { lower := 54043, upper := 54048, witness := RowWitness.topPrime 54037 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good222_checked :
    goodSegmentCheck 181 60 129
      { lower := 55451, upper := 55621, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good223_checked :
    goodSegmentCheck 181 60 129
      { lower := 55622, upper := 55627, witness := RowWitness.topPrime 55621 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good224_checked :
    goodSegmentCheck 181 60 129
      { lower := 56307, upper := 56349, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good225_checked :
    goodSegmentCheck 181 60 129
      { lower := 56454, upper := 56487, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good226_checked :
    goodSegmentCheck 181 60 129
      { lower := 57245, upper := 57302, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good227_checked :
    goodSegmentCheck 181 60 129
      { lower := 57344, upper := 57425, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good228_checked :
    goodSegmentCheck 181 60 129
      { lower := 58619, upper := 58744, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good229_checked :
    goodSegmentCheck 181 60 129
      { lower := 59049, upper := 59136, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good230_checked :
    goodSegmentCheck 181 60 129
      { lower := 59582, upper := 59585, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good231_checked :
    goodSegmentCheck 181 60 129
      { lower := 62500, upper := 62590, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good232_checked :
    goodSegmentCheck 181 60 129
      { lower := 63869, upper := 64043, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good233_checked :
    goodSegmentCheck 181 60 129
      { lower := 64044, upper := 64049, witness := RowWitness.topPrime 64037 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good234_checked :
    goodSegmentCheck 181 60 129
      { lower := 64082, upper := 64128, witness := RowWitness.topPrime 64081 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good235_checked :
    goodSegmentCheck 181 60 129
      { lower := 68694, upper := 68824, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good236_checked :
    goodSegmentCheck 181 60 129
      { lower := 71289, upper := 71467, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good237_checked :
    goodSegmentCheck 181 60 129
      { lower := 71468, upper := 71469, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good238_checked :
    goodSegmentCheck 181 60 129
      { lower := 73167, upper := 73182, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good239_checked :
    goodSegmentCheck 181 60 129
      { lower := 73205, upper := 73347, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good240_checked :
    goodSegmentCheck 181 60 129
      { lower := 83667, upper := 83701, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good241_checked :
    goodSegmentCheck 181 60 129
      { lower := 85805, upper := 85863, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good242_checked :
    goodSegmentCheck 181 60 129
      { lower := 89383, upper := 89553, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good243_checked :
    goodSegmentCheck 181 60 129
      { lower := 93845, upper := 93930, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good244_checked :
    goodSegmentCheck 181 60 129
      { lower := 96774, upper := 96785, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good245_checked :
    goodSegmentCheck 181 60 129
      { lower := 98415, upper := 98484, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good246_checked :
    goodSegmentCheck 181 60 129
      { lower := 103041, upper := 103146, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good247_checked :
    goodSegmentCheck 181 60 129
      { lower := 109503, upper := 109555, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good248_checked :
    goodSegmentCheck 181 60 129
      { lower := 137842, upper := 137961, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good249_checked :
    goodSegmentCheck 181 60 129
      { lower := 148955, upper := 149057, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good249_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_goods_checked :
    row181.goods.all (goodSegmentCheck row181.height.i row181.height.r row181.height.s) = true := by
  change row181_goods.all (goodSegmentCheck 181 60 129) = true
  simp only [row181_goods, List.all_cons, List.all_nil,
    row181_good000_checked,
    row181_good001_checked,
    row181_good002_checked,
    row181_good003_checked,
    row181_good004_checked,
    row181_good005_checked,
    row181_good006_checked,
    row181_good007_checked,
    row181_good008_checked,
    row181_good009_checked,
    row181_good010_checked,
    row181_good011_checked,
    row181_good012_checked,
    row181_good013_checked,
    row181_good014_checked,
    row181_good015_checked,
    row181_good016_checked,
    row181_good017_checked,
    row181_good018_checked,
    row181_good019_checked,
    row181_good020_checked,
    row181_good021_checked,
    row181_good022_checked,
    row181_good023_checked,
    row181_good024_checked,
    row181_good025_checked,
    row181_good026_checked,
    row181_good027_checked,
    row181_good028_checked,
    row181_good029_checked,
    row181_good030_checked,
    row181_good031_checked,
    row181_good032_checked,
    row181_good033_checked,
    row181_good034_checked,
    row181_good035_checked,
    row181_good036_checked,
    row181_good037_checked,
    row181_good038_checked,
    row181_good039_checked,
    row181_good040_checked,
    row181_good041_checked,
    row181_good042_checked,
    row181_good043_checked,
    row181_good044_checked,
    row181_good045_checked,
    row181_good046_checked,
    row181_good047_checked,
    row181_good048_checked,
    row181_good049_checked,
    row181_good050_checked,
    row181_good051_checked,
    row181_good052_checked,
    row181_good053_checked,
    row181_good054_checked,
    row181_good055_checked,
    row181_good056_checked,
    row181_good057_checked,
    row181_good058_checked,
    row181_good059_checked,
    row181_good060_checked,
    row181_good061_checked,
    row181_good062_checked,
    row181_good063_checked,
    row181_good064_checked,
    row181_good065_checked,
    row181_good066_checked,
    row181_good067_checked,
    row181_good068_checked,
    row181_good069_checked,
    row181_good070_checked,
    row181_good071_checked,
    row181_good072_checked,
    row181_good073_checked,
    row181_good074_checked,
    row181_good075_checked,
    row181_good076_checked,
    row181_good077_checked,
    row181_good078_checked,
    row181_good079_checked,
    row181_good080_checked,
    row181_good081_checked,
    row181_good082_checked,
    row181_good083_checked,
    row181_good084_checked,
    row181_good085_checked,
    row181_good086_checked,
    row181_good087_checked,
    row181_good088_checked,
    row181_good089_checked,
    row181_good090_checked,
    row181_good091_checked,
    row181_good092_checked,
    row181_good093_checked,
    row181_good094_checked,
    row181_good095_checked,
    row181_good096_checked,
    row181_good097_checked,
    row181_good098_checked,
    row181_good099_checked,
    row181_good100_checked,
    row181_good101_checked,
    row181_good102_checked,
    row181_good103_checked,
    row181_good104_checked,
    row181_good105_checked,
    row181_good106_checked,
    row181_good107_checked,
    row181_good108_checked,
    row181_good109_checked,
    row181_good110_checked,
    row181_good111_checked,
    row181_good112_checked,
    row181_good113_checked,
    row181_good114_checked,
    row181_good115_checked,
    row181_good116_checked,
    row181_good117_checked,
    row181_good118_checked,
    row181_good119_checked,
    row181_good120_checked,
    row181_good121_checked,
    row181_good122_checked,
    row181_good123_checked,
    row181_good124_checked,
    row181_good125_checked,
    row181_good126_checked,
    row181_good127_checked,
    row181_good128_checked,
    row181_good129_checked,
    row181_good130_checked,
    row181_good131_checked,
    row181_good132_checked,
    row181_good133_checked,
    row181_good134_checked,
    row181_good135_checked,
    row181_good136_checked,
    row181_good137_checked,
    row181_good138_checked,
    row181_good139_checked,
    row181_good140_checked,
    row181_good141_checked,
    row181_good142_checked,
    row181_good143_checked,
    row181_good144_checked,
    row181_good145_checked,
    row181_good146_checked,
    row181_good147_checked,
    row181_good148_checked,
    row181_good149_checked,
    row181_good150_checked,
    row181_good151_checked,
    row181_good152_checked,
    row181_good153_checked,
    row181_good154_checked,
    row181_good155_checked,
    row181_good156_checked,
    row181_good157_checked,
    row181_good158_checked,
    row181_good159_checked,
    row181_good160_checked,
    row181_good161_checked,
    row181_good162_checked,
    row181_good163_checked,
    row181_good164_checked,
    row181_good165_checked,
    row181_good166_checked,
    row181_good167_checked,
    row181_good168_checked,
    row181_good169_checked,
    row181_good170_checked,
    row181_good171_checked,
    row181_good172_checked,
    row181_good173_checked,
    row181_good174_checked,
    row181_good175_checked,
    row181_good176_checked,
    row181_good177_checked,
    row181_good178_checked,
    row181_good179_checked,
    row181_good180_checked,
    row181_good181_checked,
    row181_good182_checked,
    row181_good183_checked,
    row181_good184_checked,
    row181_good185_checked,
    row181_good186_checked,
    row181_good187_checked,
    row181_good188_checked,
    row181_good189_checked,
    row181_good190_checked,
    row181_good191_checked,
    row181_good192_checked,
    row181_good193_checked,
    row181_good194_checked,
    row181_good195_checked,
    row181_good196_checked,
    row181_good197_checked,
    row181_good198_checked,
    row181_good199_checked,
    row181_good200_checked,
    row181_good201_checked,
    row181_good202_checked,
    row181_good203_checked,
    row181_good204_checked,
    row181_good205_checked,
    row181_good206_checked,
    row181_good207_checked,
    row181_good208_checked,
    row181_good209_checked,
    row181_good210_checked,
    row181_good211_checked,
    row181_good212_checked,
    row181_good213_checked,
    row181_good214_checked,
    row181_good215_checked,
    row181_good216_checked,
    row181_good217_checked,
    row181_good218_checked,
    row181_good219_checked,
    row181_good220_checked,
    row181_good221_checked,
    row181_good222_checked,
    row181_good223_checked,
    row181_good224_checked,
    row181_good225_checked,
    row181_good226_checked,
    row181_good227_checked,
    row181_good228_checked,
    row181_good229_checked,
    row181_good230_checked,
    row181_good231_checked,
    row181_good232_checked,
    row181_good233_checked,
    row181_good234_checked,
    row181_good235_checked,
    row181_good236_checked,
    row181_good237_checked,
    row181_good238_checked,
    row181_good239_checked,
    row181_good240_checked,
    row181_good241_checked,
    row181_good242_checked,
    row181_good243_checked,
    row181_good244_checked,
    row181_good245_checked,
    row181_good246_checked,
    row181_good247_checked,
    row181_good248_checked,
    row181_good249_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_registered :
    decide (row181.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row181_small_checked :
    coverCheck (2 * row181.height.i + 2) (row181.height.i * (row181.height.i - 1) - 1)
      (row181.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row181_layerCover_checked :
    coverCheck (row181.height.i * (row181.height.i - 1)) (row181.height.n0 - 1)
      (row181.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row181_bounds : List NatInterval :=
  [(364, 539), (540, 703), (704, 881), (882, 1061), (1062, 1241), (1242, 1417), (1418, 1589), (1590, 1763), (1764, 1939), (1940, 2113), (2114, 2293), (2294, 2473), (2474, 2653), (2654, 2827), (2828, 2999), (3000, 3179), (3180, 3349), (3350, 3527), (3528, 3707), (3708, 3881), (3882, 4061), (4062, 4237), (4238, 4411), (4412, 4589), (4590, 4763), (4764, 4939), (4940, 5117), (5118, 5293), (5294, 5461), (5462, 5629), (5630, 5803), (5804, 5981), (5982, 6161), (6162, 6331), (6332, 6509), (6510, 6671), (6672, 6841), (6842, 7021), (7022, 7199), (7200, 7373), (7374, 7549), (7550, 7729), (7730, 7907), (7908, 8087), (8088, 8267), (8268, 8443), (8444, 8623), (8624, 8803), (8804, 8983), (8984, 9151), (9152, 9331), (9332, 9503), (9504, 9677), (9678, 9857), (9858, 10037), (10038, 10217), (10218, 10391), (10392, 10571), (10572, 10747), (10748, 10919), (10920, 11089), (11090, 11267), (11268, 11441), (11442, 11617), (11618, 11797), (11798, 11969), (11970, 12149), (12150, 12329), (12330, 12509), (12510, 12683), (12684, 12851), (12852, 13021), (13022, 13189), (13190, 13367), (13368, 13547), (13548, 13717), (13718, 13891), (13892, 14063), (14064, 14237), (14238, 14401), (14402, 14581), (14582, 14743), (14744, 14921), (14922, 15077), (15078, 15257), (15258, 15421), (15422, 15593), (15594, 15763), (15764, 15941), (15942, 16117), (16118, 16291), (16292, 16453), (16454, 16633), (16634, 16813), (16814, 16991), (16992, 17167), (17168, 17347), (17348, 17521), (17522, 17699), (17700, 17863), (17864, 18043), (18044, 18223), (18224, 18403), (18404, 18581), (18582, 18733), (18734, 18911), (18912, 19091), (19092, 19267), (19268, 19447), (19448, 19627), (19628, 19789), (19790, 19957), (19958, 20129), (20130, 20309), (20310, 20477), (20478, 20657), (20658, 20821), (20822, 20989), (20990, 21163), (21164, 21343), (21344, 21521), (21522, 21701), (21702, 21881), (21882, 22061), (22062, 22231), (22232, 22409), (22410, 22589), (22590, 22753), (22754, 22931), (22932, 23101), (23102, 23279), (23280, 23459), (23460, 23639), (23640, 23813), (23814, 23993), (23994, 24173), (24174, 24349), (24350, 24517), (24518, 24697), (24698, 24877), (24878, 25057), (25058, 25237), (25238, 25417), (25418, 25591), (25592, 25769), (25770, 25943), (25944, 26123), (26124, 26299), (26300, 26477), (26478, 26639), (26640, 26813), (26814, 26993), (26994, 27173), (27174, 27323), (27324, 27479), (27480, 27659), (27660, 27833), (27834, 28007), (28008, 28181), (28182, 28361), (28362, 28531), (28532, 28697), (28698, 28877), (28878, 29051), (29052, 29213), (29214, 29389), (29390, 29569), (29570, 29749), (29750, 29921), (29922, 30101), (30102, 30277), (30278, 30451), (30452, 30629), (30630, 30773), (30774, 30953), (30954, 31129), (31130, 31303), (31304, 31457), (31458, 31577), (31578, 31753), (31754, 31931), (31932, 32087), (32088, 32263), (32264, 32441), (32442, 32579), (32805, 32948), (33614, 33669), (33708, 33794), (34322, 34499), (34500, 34571), (36517, 36677), (36678, 36681), (37303, 37390), (37446, 37483), (37500, 37673), (37674, 37718), (38307, 38471), (39366, 39484), (40401, 40508), (40804, 40805), (40931, 41107), (41108, 41111), (41334, 41334), (45056, 45070), (45369, 45433), (45927, 45976), (47045, 47055), (47526, 47701), (47702, 47704), (48013, 48141), (48373, 48551), (48552, 48553), (48778, 48848), (49152, 49319), (49320, 49332), (49379, 49478), (50421, 50590), (51076, 51185), (53138, 53225), (53248, 53419), (53420, 53428), (54043, 54048), (55451, 55621), (55622, 55627), (56307, 56349), (56454, 56487), (57245, 57302), (57344, 57425), (58619, 58744), (59049, 59136), (59582, 59585), (62500, 62590), (63869, 64043), (64044, 64049), (64082, 64128), (68694, 68824), (71289, 71467), (71468, 71469), (73167, 73182), (73205, 73347), (83667, 83701), (85805, 85863), (89383, 89553), (93845, 93930), (96774, 96785), (98415, 98484), (103041, 103146), (109503, 109555), (137842, 137961), (148955, 149057)]

theorem row181_bounds_eq : row181.goods.map goodSegmentBounds = row181_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row181_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32948), (2, 36864, 37044), (2, 40960, 41140), (2, 45056, 45236), (2, 49152, 49332), (2, 53248, 53428), (2, 32768, 32948), (2, 40960, 41140), (2, 49152, 49332), (2, 57344, 57524), (2, 32768, 32948), (2, 49152, 49332), (2, 32768, 32948), (3, 32805, 32985), (3, 39366, 39546), (3, 45927, 46107), (3, 52488, 52668), (3, 59049, 59229), (3, 39366, 39546), (3, 59049, 59229), (3, 59049, 59229), (5, 34375, 34555), (5, 37500, 37680), (5, 40625, 40805), (5, 46875, 47055), (5, 62500, 62680), (7, 33614, 33794), (7, 50421, 50601), (11, 43923, 44103), (11, 58564, 58744), (13, 57122, 57302), (17, 34391, 34571), (17, 39304, 39484), (17, 44217, 44397), (17, 49130, 49310), (17, 54043, 54223), (17, 58956, 59136), (17, 63869, 64049), (19, 34295, 34475), (19, 41154, 41334), (19, 48013, 48193), (19, 54872, 55052), (19, 61731, 61911), (23, 36501, 36681), (23, 48668, 48848), (23, 60835, 61015), (29, 48778, 48958), (31, 59582, 59762), (37, 50653, 50833), (53, 33708, 33888), (53, 36517, 36697), (59, 34810, 34990), (59, 38291, 38471), (59, 41772, 41952), (59, 45253, 45433), (61, 33489, 33669), (61, 37210, 37390), (61, 40931, 41111), (61, 44652, 44832), (61, 48373, 48553), (67, 35912, 36092), (67, 40401, 40581), (67, 44890, 45070), (67, 49379, 49559), (67, 53868, 54048), (67, 58357, 58537), (71, 35287, 35467), (71, 40328, 40508), (71, 45369, 45549), (71, 50410, 50590), (71, 55451, 55631), (71, 60492, 60672), (73, 37303, 37483), (73, 42632, 42812), (73, 47961, 48141), (73, 53290, 53470), (73, 58619, 58799), (73, 63948, 64128), (79, 37446, 37626), (79, 43687, 43867), (79, 49928, 50108), (79, 56169, 56349), (79, 62410, 62590), (83, 34445, 34625), (83, 41334, 41514), (83, 48223, 48403), (83, 55112, 55292), (83, 62001, 62181), (89, 39605, 39785), (89, 47526, 47706), (89, 55447, 55627), (89, 63368, 63548), (97, 37636, 37816), (97, 47045, 47225), (97, 56454, 56634), (101, 40804, 40984), (101, 51005, 51185), (101, 61206, 61386), (103, 42436, 42616), (103, 53045, 53225), (103, 63654, 63834), (107, 34347, 34527), (107, 45796, 45976), (107, 57245, 57425), (109, 35643, 35823), (109, 47524, 47704), (109, 59405, 59585), (113, 38307, 38487), (113, 51076, 51256), (113, 63845, 64025), (127, 48387, 48567), (127, 64516, 64696), (131, 34322, 34502), (131, 51483, 51663), (137, 37538, 37718), (137, 56307, 56487), (139, 38642, 38822), (139, 57963, 58143), (149, 44402, 44582), (151, 45602, 45782), (157, 49298, 49478), (163, 53138, 53318), (167, 55778, 55958), (173, 59858, 60038), (179, 64082, 64262)]

def row181_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32948), (2, 36864, 37044), (2, 40960, 41140), (2, 45056, 45236), (2, 49152, 49332), (2, 53248, 53428), (2, 32768, 32948), (2, 40960, 41140), (2, 49152, 49332), (2, 57344, 57524), (2, 32768, 32948), (2, 49152, 49332), (2, 32768, 32948), (3, 32805, 32985), (3, 39366, 39546), (3, 45927, 46107)]

def row181_layer000_block001 : List ColouredInterval :=
  [(3, 52488, 52668), (3, 59049, 59229), (3, 39366, 39546), (3, 59049, 59229), (3, 59049, 59229), (5, 34375, 34555), (5, 37500, 37680), (5, 40625, 40805), (5, 46875, 47055), (5, 62500, 62680), (7, 33614, 33794), (7, 50421, 50601), (11, 43923, 44103), (11, 58564, 58744), (13, 57122, 57302), (17, 34391, 34571)]

def row181_layer000_block002 : List ColouredInterval :=
  [(17, 39304, 39484), (17, 44217, 44397), (17, 49130, 49310), (17, 54043, 54223), (17, 58956, 59136), (17, 63869, 64049), (19, 34295, 34475), (19, 41154, 41334), (19, 48013, 48193), (19, 54872, 55052), (19, 61731, 61911), (23, 36501, 36681), (23, 48668, 48848), (23, 60835, 61015), (29, 48778, 48958), (31, 59582, 59762)]

def row181_layer000_block003 : List ColouredInterval :=
  [(37, 50653, 50833), (53, 33708, 33888), (53, 36517, 36697), (59, 34810, 34990), (59, 38291, 38471), (59, 41772, 41952), (59, 45253, 45433), (61, 33489, 33669), (61, 37210, 37390), (61, 40931, 41111), (61, 44652, 44832), (61, 48373, 48553), (67, 35912, 36092), (67, 40401, 40581), (67, 44890, 45070), (67, 49379, 49559)]

def row181_layer000_block004 : List ColouredInterval :=
  [(67, 53868, 54048), (67, 58357, 58537), (71, 35287, 35467), (71, 40328, 40508), (71, 45369, 45549), (71, 50410, 50590), (71, 55451, 55631), (71, 60492, 60672), (73, 37303, 37483), (73, 42632, 42812), (73, 47961, 48141), (73, 53290, 53470), (73, 58619, 58799), (73, 63948, 64128), (79, 37446, 37626), (79, 43687, 43867)]

def row181_layer000_block005 : List ColouredInterval :=
  [(79, 49928, 50108), (79, 56169, 56349), (79, 62410, 62590), (83, 34445, 34625), (83, 41334, 41514), (83, 48223, 48403), (83, 55112, 55292), (83, 62001, 62181), (89, 39605, 39785), (89, 47526, 47706), (89, 55447, 55627), (89, 63368, 63548), (97, 37636, 37816), (97, 47045, 47225), (97, 56454, 56634), (101, 40804, 40984)]

def row181_layer000_block006 : List ColouredInterval :=
  [(101, 51005, 51185), (101, 61206, 61386), (103, 42436, 42616), (103, 53045, 53225), (103, 63654, 63834), (107, 34347, 34527), (107, 45796, 45976), (107, 57245, 57425), (109, 35643, 35823), (109, 47524, 47704), (109, 59405, 59585), (113, 38307, 38487), (113, 51076, 51256), (113, 63845, 64025), (127, 48387, 48567), (127, 64516, 64696)]

def row181_layer000_block007 : List ColouredInterval :=
  [(131, 34322, 34502), (131, 51483, 51663), (137, 37538, 37718), (137, 56307, 56487), (139, 38642, 38822), (139, 57963, 58143), (149, 44402, 44582), (151, 45602, 45782), (157, 49298, 49478), (163, 53138, 53318), (167, 55778, 55958), (173, 59858, 60038), (179, 64082, 64262)]

def row181_layer000_chunks : List (List ColouredInterval) :=
  [row181_layer000_block000, row181_layer000_block001, row181_layer000_block002, row181_layer000_block003, row181_layer000_block004, row181_layer000_block005, row181_layer000_block006, row181_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_arithmetic : LayerArithmeticValid row181.height { lower := 32580, upper := 65160, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_enumeration :
    activePowerIntervalList 181 13 32580 65160 = row181_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs000 :
    row181_layer000_block000.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs001 :
    row181_layer000_block001.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs002 :
    row181_layer000_block002.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs003 :
    row181_layer000_block003.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs004 :
    row181_layer000_block004.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs005 :
    row181_layer000_block005.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs006 :
    row181_layer000_block006.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs007 :
    row181_layer000_block007.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_chunks_eq : row181_layer000_chunks.flatten = row181_layer000_intervals := by
  rfl

theorem row181_layer000_pairs : pairCoverCheck row181_layer000_intervals row181_bounds = true := by
  apply pairCoverCheck_of_chunks row181_layer000_chunks_eq
  intro block hblock
  simp only [row181_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row181_layer000_pairs000
  · exact row181_layer000_pairs001
  · exact row181_layer000_pairs002
  · exact row181_layer000_pairs003
  · exact row181_layer000_pairs004
  · exact row181_layer000_pairs005
  · exact row181_layer000_pairs006
  · exact row181_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs
