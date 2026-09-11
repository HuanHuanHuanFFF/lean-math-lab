import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row180_height : HeightCertificateDatum := { i := 180, r := 59, s := 128, n0Power10 := 7 }

def row180_goods : List GoodSegment := [
  { lower := 362, upper := 538, witness := RowWitness.topPrime 359 },
  { lower := 539, upper := 702, witness := RowWitness.topPrime 523 },
  { lower := 703, upper := 880, witness := RowWitness.topPrime 701 },
  { lower := 881, upper := 1060, witness := RowWitness.topPrime 881 },
  { lower := 1061, upper := 1240, witness := RowWitness.topPrime 1061 },
  { lower := 1241, upper := 1416, witness := RowWitness.topPrime 1237 },
  { lower := 1417, upper := 1588, witness := RowWitness.topPrime 1409 },
  { lower := 1589, upper := 1762, witness := RowWitness.topPrime 1583 },
  { lower := 1763, upper := 1938, witness := RowWitness.topPrime 1759 },
  { lower := 1939, upper := 2112, witness := RowWitness.topPrime 1933 },
  { lower := 2113, upper := 2292, witness := RowWitness.topPrime 2113 },
  { lower := 2293, upper := 2472, witness := RowWitness.topPrime 2293 },
  { lower := 2473, upper := 2652, witness := RowWitness.topPrime 2473 },
  { lower := 2653, upper := 2826, witness := RowWitness.topPrime 2647 },
  { lower := 2827, upper := 2998, witness := RowWitness.topPrime 2819 },
  { lower := 2999, upper := 3178, witness := RowWitness.topPrime 2999 },
  { lower := 3179, upper := 3348, witness := RowWitness.topPrime 3169 },
  { lower := 3349, upper := 3526, witness := RowWitness.topPrime 3347 },
  { lower := 3527, upper := 3706, witness := RowWitness.topPrime 3527 },
  { lower := 3707, upper := 3880, witness := RowWitness.topPrime 3701 },
  { lower := 3881, upper := 4060, witness := RowWitness.topPrime 3881 },
  { lower := 4061, upper := 4236, witness := RowWitness.topPrime 4057 },
  { lower := 4237, upper := 4410, witness := RowWitness.topPrime 4231 },
  { lower := 4411, upper := 4588, witness := RowWitness.topPrime 4409 },
  { lower := 4589, upper := 4762, witness := RowWitness.topPrime 4583 },
  { lower := 4763, upper := 4938, witness := RowWitness.topPrime 4759 },
  { lower := 4939, upper := 5116, witness := RowWitness.topPrime 4937 },
  { lower := 5117, upper := 5292, witness := RowWitness.topPrime 5113 },
  { lower := 5293, upper := 5460, witness := RowWitness.topPrime 5281 },
  { lower := 5461, upper := 5628, witness := RowWitness.topPrime 5449 },
  { lower := 5629, upper := 5802, witness := RowWitness.topPrime 5623 },
  { lower := 5803, upper := 5980, witness := RowWitness.topPrime 5801 },
  { lower := 5981, upper := 6160, witness := RowWitness.topPrime 5981 },
  { lower := 6161, upper := 6330, witness := RowWitness.topPrime 6151 },
  { lower := 6331, upper := 6508, witness := RowWitness.topPrime 6329 },
  { lower := 6509, upper := 6670, witness := RowWitness.topPrime 6491 },
  { lower := 6671, upper := 6840, witness := RowWitness.topPrime 6661 },
  { lower := 6841, upper := 7020, witness := RowWitness.topPrime 6841 },
  { lower := 7021, upper := 7198, witness := RowWitness.topPrime 7019 },
  { lower := 7199, upper := 7372, witness := RowWitness.topPrime 7193 },
  { lower := 7373, upper := 7548, witness := RowWitness.topPrime 7369 },
  { lower := 7549, upper := 7728, witness := RowWitness.topPrime 7549 },
  { lower := 7729, upper := 7906, witness := RowWitness.topPrime 7727 },
  { lower := 7907, upper := 8086, witness := RowWitness.topPrime 7907 },
  { lower := 8087, upper := 8266, witness := RowWitness.topPrime 8087 },
  { lower := 8267, upper := 8442, witness := RowWitness.topPrime 8263 },
  { lower := 8443, upper := 8622, witness := RowWitness.topPrime 8443 },
  { lower := 8623, upper := 8802, witness := RowWitness.topPrime 8623 },
  { lower := 8803, upper := 8982, witness := RowWitness.topPrime 8803 },
  { lower := 8983, upper := 9150, witness := RowWitness.topPrime 8971 },
  { lower := 9151, upper := 9330, witness := RowWitness.topPrime 9151 },
  { lower := 9331, upper := 9502, witness := RowWitness.topPrime 9323 },
  { lower := 9503, upper := 9676, witness := RowWitness.topPrime 9497 },
  { lower := 9677, upper := 9856, witness := RowWitness.topPrime 9677 },
  { lower := 9857, upper := 10036, witness := RowWitness.topPrime 9857 },
  { lower := 10037, upper := 10216, witness := RowWitness.topPrime 10037 },
  { lower := 10217, upper := 10390, witness := RowWitness.topPrime 10211 },
  { lower := 10391, upper := 10570, witness := RowWitness.topPrime 10391 },
  { lower := 10571, upper := 10746, witness := RowWitness.topPrime 10567 },
  { lower := 10747, upper := 10918, witness := RowWitness.topPrime 10739 },
  { lower := 10919, upper := 11088, witness := RowWitness.topPrime 10909 },
  { lower := 11089, upper := 11266, witness := RowWitness.topPrime 11087 },
  { lower := 11267, upper := 11440, witness := RowWitness.topPrime 11261 },
  { lower := 11441, upper := 11616, witness := RowWitness.topPrime 11437 },
  { lower := 11617, upper := 11796, witness := RowWitness.topPrime 11617 },
  { lower := 11797, upper := 11968, witness := RowWitness.topPrime 11789 },
  { lower := 11969, upper := 12148, witness := RowWitness.topPrime 11969 },
  { lower := 12149, upper := 12328, witness := RowWitness.topPrime 12149 },
  { lower := 12329, upper := 12508, witness := RowWitness.topPrime 12329 },
  { lower := 12509, upper := 12682, witness := RowWitness.topPrime 12503 },
  { lower := 12683, upper := 12850, witness := RowWitness.topPrime 12671 },
  { lower := 12851, upper := 13020, witness := RowWitness.topPrime 12841 },
  { lower := 13021, upper := 13188, witness := RowWitness.topPrime 13009 },
  { lower := 13189, upper := 13366, witness := RowWitness.topPrime 13187 },
  { lower := 13367, upper := 13546, witness := RowWitness.topPrime 13367 },
  { lower := 13547, upper := 13716, witness := RowWitness.topPrime 13537 },
  { lower := 13717, upper := 13890, witness := RowWitness.topPrime 13711 },
  { lower := 13891, upper := 14062, witness := RowWitness.topPrime 13883 },
  { lower := 14063, upper := 14236, witness := RowWitness.topPrime 14057 },
  { lower := 14237, upper := 14400, witness := RowWitness.topPrime 14221 },
  { lower := 14401, upper := 14580, witness := RowWitness.topPrime 14401 },
  { lower := 14581, upper := 14742, witness := RowWitness.topPrime 14563 },
  { lower := 14743, upper := 14920, witness := RowWitness.topPrime 14741 },
  { lower := 14921, upper := 15076, witness := RowWitness.topPrime 14897 },
  { lower := 15077, upper := 15256, witness := RowWitness.topPrime 15077 },
  { lower := 15257, upper := 15420, witness := RowWitness.topPrime 15241 },
  { lower := 15421, upper := 15592, witness := RowWitness.topPrime 15413 },
  { lower := 15593, upper := 15762, witness := RowWitness.topPrime 15583 },
  { lower := 15763, upper := 15940, witness := RowWitness.topPrime 15761 },
  { lower := 15941, upper := 16116, witness := RowWitness.topPrime 15937 },
  { lower := 16117, upper := 16290, witness := RowWitness.topPrime 16111 },
  { lower := 16291, upper := 16452, witness := RowWitness.topPrime 16273 },
  { lower := 16453, upper := 16632, witness := RowWitness.topPrime 16453 },
  { lower := 16633, upper := 16812, witness := RowWitness.topPrime 16633 },
  { lower := 16813, upper := 16990, witness := RowWitness.topPrime 16811 },
  { lower := 16991, upper := 17166, witness := RowWitness.topPrime 16987 },
  { lower := 17167, upper := 17346, witness := RowWitness.topPrime 17167 },
  { lower := 17347, upper := 17520, witness := RowWitness.topPrime 17341 },
  { lower := 17521, upper := 17698, witness := RowWitness.topPrime 17519 },
  { lower := 17699, upper := 17862, witness := RowWitness.topPrime 17683 },
  { lower := 17863, upper := 18042, witness := RowWitness.topPrime 17863 },
  { lower := 18043, upper := 18222, witness := RowWitness.topPrime 18043 },
  { lower := 18223, upper := 18402, witness := RowWitness.topPrime 18223 },
  { lower := 18403, upper := 18580, witness := RowWitness.topPrime 18401 },
  { lower := 18581, upper := 18732, witness := RowWitness.topPrime 18553 },
  { lower := 18733, upper := 18910, witness := RowWitness.topPrime 18731 },
  { lower := 18911, upper := 19090, witness := RowWitness.topPrime 18911 },
  { lower := 19091, upper := 19266, witness := RowWitness.topPrime 19087 },
  { lower := 19267, upper := 19446, witness := RowWitness.topPrime 19267 },
  { lower := 19447, upper := 19626, witness := RowWitness.topPrime 19447 },
  { lower := 19627, upper := 19788, witness := RowWitness.topPrime 19609 },
  { lower := 19789, upper := 19956, witness := RowWitness.topPrime 19777 },
  { lower := 19957, upper := 20128, witness := RowWitness.topPrime 19949 },
  { lower := 20129, upper := 20308, witness := RowWitness.topPrime 20129 },
  { lower := 20309, upper := 20476, witness := RowWitness.topPrime 20297 },
  { lower := 20477, upper := 20656, witness := RowWitness.topPrime 20477 },
  { lower := 20657, upper := 20820, witness := RowWitness.topPrime 20641 },
  { lower := 20821, upper := 20988, witness := RowWitness.topPrime 20809 },
  { lower := 20989, upper := 21162, witness := RowWitness.topPrime 20983 },
  { lower := 21163, upper := 21342, witness := RowWitness.topPrime 21163 },
  { lower := 21343, upper := 21520, witness := RowWitness.topPrime 21341 },
  { lower := 21521, upper := 21700, witness := RowWitness.topPrime 21521 },
  { lower := 21701, upper := 21880, witness := RowWitness.topPrime 21701 },
  { lower := 21881, upper := 22060, witness := RowWitness.topPrime 21881 },
  { lower := 22061, upper := 22230, witness := RowWitness.topPrime 22051 },
  { lower := 22231, upper := 22408, witness := RowWitness.topPrime 22229 },
  { lower := 22409, upper := 22588, witness := RowWitness.topPrime 22409 },
  { lower := 22589, upper := 22752, witness := RowWitness.topPrime 22573 },
  { lower := 22753, upper := 22930, witness := RowWitness.topPrime 22751 },
  { lower := 22931, upper := 23100, witness := RowWitness.topPrime 22921 },
  { lower := 23101, upper := 23278, witness := RowWitness.topPrime 23099 },
  { lower := 23279, upper := 23458, witness := RowWitness.topPrime 23279 },
  { lower := 23459, upper := 23638, witness := RowWitness.topPrime 23459 },
  { lower := 23639, upper := 23812, witness := RowWitness.topPrime 23633 },
  { lower := 23813, upper := 23992, witness := RowWitness.topPrime 23813 },
  { lower := 23993, upper := 24172, witness := RowWitness.topPrime 23993 },
  { lower := 24173, upper := 24348, witness := RowWitness.topPrime 24169 },
  { lower := 24349, upper := 24516, witness := RowWitness.topPrime 24337 },
  { lower := 24517, upper := 24696, witness := RowWitness.topPrime 24517 },
  { lower := 24697, upper := 24876, witness := RowWitness.topPrime 24697 },
  { lower := 24877, upper := 25056, witness := RowWitness.topPrime 24877 },
  { lower := 25057, upper := 25236, witness := RowWitness.topPrime 25057 },
  { lower := 25237, upper := 25416, witness := RowWitness.topPrime 25237 },
  { lower := 25417, upper := 25590, witness := RowWitness.topPrime 25411 },
  { lower := 25591, upper := 25768, witness := RowWitness.topPrime 25589 },
  { lower := 25769, upper := 25942, witness := RowWitness.topPrime 25763 },
  { lower := 25943, upper := 26122, witness := RowWitness.topPrime 25943 },
  { lower := 26123, upper := 26298, witness := RowWitness.topPrime 26119 },
  { lower := 26299, upper := 26476, witness := RowWitness.topPrime 26297 },
  { lower := 26477, upper := 26638, witness := RowWitness.topPrime 26459 },
  { lower := 26639, upper := 26812, witness := RowWitness.topPrime 26633 },
  { lower := 26813, upper := 26992, witness := RowWitness.topPrime 26813 },
  { lower := 26993, upper := 27172, witness := RowWitness.topPrime 26993 },
  { lower := 27173, upper := 27322, witness := RowWitness.topPrime 27143 },
  { lower := 27323, upper := 27478, witness := RowWitness.topPrime 27299 },
  { lower := 27479, upper := 27658, witness := RowWitness.topPrime 27479 },
  { lower := 27659, upper := 27832, witness := RowWitness.topPrime 27653 },
  { lower := 27833, upper := 28006, witness := RowWitness.topPrime 27827 },
  { lower := 28007, upper := 28180, witness := RowWitness.topPrime 28001 },
  { lower := 28181, upper := 28360, witness := RowWitness.topPrime 28181 },
  { lower := 28361, upper := 28530, witness := RowWitness.topPrime 28351 },
  { lower := 28531, upper := 28696, witness := RowWitness.topPrime 28517 },
  { lower := 28697, upper := 28876, witness := RowWitness.topPrime 28697 },
  { lower := 28877, upper := 29050, witness := RowWitness.topPrime 28871 },
  { lower := 29051, upper := 29212, witness := RowWitness.topPrime 29033 },
  { lower := 29213, upper := 29388, witness := RowWitness.topPrime 29209 },
  { lower := 29389, upper := 29568, witness := RowWitness.topPrime 29389 },
  { lower := 29569, upper := 29748, witness := RowWitness.topPrime 29569 },
  { lower := 29749, upper := 29920, witness := RowWitness.topPrime 29741 },
  { lower := 29921, upper := 30100, witness := RowWitness.topPrime 29921 },
  { lower := 30101, upper := 30276, witness := RowWitness.topPrime 30097 },
  { lower := 30277, upper := 30450, witness := RowWitness.topPrime 30271 },
  { lower := 30451, upper := 30628, witness := RowWitness.topPrime 30449 },
  { lower := 30629, upper := 30772, witness := RowWitness.topPrime 30593 },
  { lower := 30773, upper := 30952, witness := RowWitness.topPrime 30773 },
  { lower := 30953, upper := 31128, witness := RowWitness.topPrime 30949 },
  { lower := 31129, upper := 31302, witness := RowWitness.topPrime 31123 },
  { lower := 31303, upper := 31456, witness := RowWitness.topPrime 31277 },
  { lower := 31457, upper := 31576, witness := RowWitness.topPrime 31397 },
  { lower := 31577, upper := 31752, witness := RowWitness.topPrime 31573 },
  { lower := 31753, upper := 31930, witness := RowWitness.topPrime 31751 },
  { lower := 31931, upper := 32086, witness := RowWitness.topPrime 31907 },
  { lower := 32087, upper := 32219, witness := RowWitness.topPrime 32083 },
  { lower := 33614, upper := 33668, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33793, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34498, witness := RowWitness.topPrime 34319 },
  { lower := 34499, upper := 34570, witness := RowWitness.topPrime 34499 },
  { lower := 36517, upper := 36676, witness := RowWitness.topPrime 36497 },
  { lower := 36677, upper := 36680, witness := RowWitness.topPrime 36677 },
  { lower := 37303, upper := 37389, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37482, witness := RowWitness.topPrime 37441 },
  { lower := 37538, upper := 37625, witness := RowWitness.topPrime 37537 },
  { lower := 37636, upper := 37717, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38470, witness := RowWitness.topPrime 38303 },
  { lower := 40401, upper := 40507, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40983, witness := RowWitness.topPrime 40927 },
  { lower := 45369, upper := 45432, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47700, witness := RowWitness.topPrime 47521 },
  { lower := 47701, upper := 47703, witness := RowWitness.topPrime 47701 },
  { lower := 48013, upper := 48140, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48550, witness := RowWitness.topPrime 48371 },
  { lower := 48551, upper := 48552, witness := RowWitness.topPrime 48541 },
  { lower := 48778, upper := 48847, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49318, witness := RowWitness.topPrime 49139 },
  { lower := 49319, upper := 49331, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49477, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50589, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51184, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53224, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53317, witness := RowWitness.topPrime 53281 },
  { lower := 54043, upper := 54047, witness := RowWitness.topPrime 54037 },
  { lower := 55451, upper := 55620, witness := RowWitness.topPrime 55441 },
  { lower := 55621, upper := 55626, witness := RowWitness.topPrime 55621 },
  { lower := 56307, upper := 56348, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56486, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57301, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58743, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59135, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59584, witness := RowWitness.topPrime 59581 },
  { lower := 63869, upper := 64042, witness := RowWitness.topPrime 63863 },
  { lower := 64043, upper := 64048, witness := RowWitness.topPrime 64037 },
  { lower := 64082, upper := 64127, witness := RowWitness.topPrime 64081 },
  { lower := 68644, upper := 68818, witness := RowWitness.topPrime 68639 },
  { lower := 68819, upper := 68823, witness := RowWitness.topPrime 68819 },
  { lower := 68921, upper := 69069, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71466, witness := RowWitness.topPrime 71287 },
  { lower := 71467, upper := 71468, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73181, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73346, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83700, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85862, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89552, witness := RowWitness.topPrime 89381 },
  { lower := 96774, upper := 96784, witness := RowWitness.topPrime 96769 },
  { lower := 102152, upper := 102189, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103145, witness := RowWitness.topPrime 103007 },
  { lower := 148955, upper := 149056, witness := RowWitness.topPrime 148949 }
]

def row180_layers : List CoverLayer := [
  { lower := 32220, upper := 64440, M := 13 },
  { lower := 64440, upper := 128880, M := 10 },
  { lower := 128880, upper := 257760, M := 7 },
  { lower := 257760, upper := 515520, M := 6 },
  { lower := 515520, upper := 1031040, M := 4 },
  { lower := 1031040, upper := 2062080, M := 3 },
  { lower := 2062080, upper := 4124160, M := 2 },
  { lower := 4124160, upper := 8248320, M := 2 },
  { lower := 8248320, upper := 10000000, M := 2 }
]

def row180 : FiniteCoverRow := {
  height := row180_height,
  goods := row180_goods,
  layers := row180_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good000_checked :
    goodSegmentCheck 180 59 128
      { lower := 362, upper := 538, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good001_checked :
    goodSegmentCheck 180 59 128
      { lower := 539, upper := 702, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good002_checked :
    goodSegmentCheck 180 59 128
      { lower := 703, upper := 880, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good003_checked :
    goodSegmentCheck 180 59 128
      { lower := 881, upper := 1060, witness := RowWitness.topPrime 881 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good004_checked :
    goodSegmentCheck 180 59 128
      { lower := 1061, upper := 1240, witness := RowWitness.topPrime 1061 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good005_checked :
    goodSegmentCheck 180 59 128
      { lower := 1241, upper := 1416, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good006_checked :
    goodSegmentCheck 180 59 128
      { lower := 1417, upper := 1588, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good007_checked :
    goodSegmentCheck 180 59 128
      { lower := 1589, upper := 1762, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good008_checked :
    goodSegmentCheck 180 59 128
      { lower := 1763, upper := 1938, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good009_checked :
    goodSegmentCheck 180 59 128
      { lower := 1939, upper := 2112, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good010_checked :
    goodSegmentCheck 180 59 128
      { lower := 2113, upper := 2292, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good011_checked :
    goodSegmentCheck 180 59 128
      { lower := 2293, upper := 2472, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good012_checked :
    goodSegmentCheck 180 59 128
      { lower := 2473, upper := 2652, witness := RowWitness.topPrime 2473 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good013_checked :
    goodSegmentCheck 180 59 128
      { lower := 2653, upper := 2826, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good014_checked :
    goodSegmentCheck 180 59 128
      { lower := 2827, upper := 2998, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good015_checked :
    goodSegmentCheck 180 59 128
      { lower := 2999, upper := 3178, witness := RowWitness.topPrime 2999 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good016_checked :
    goodSegmentCheck 180 59 128
      { lower := 3179, upper := 3348, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good017_checked :
    goodSegmentCheck 180 59 128
      { lower := 3349, upper := 3526, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good018_checked :
    goodSegmentCheck 180 59 128
      { lower := 3527, upper := 3706, witness := RowWitness.topPrime 3527 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good019_checked :
    goodSegmentCheck 180 59 128
      { lower := 3707, upper := 3880, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good020_checked :
    goodSegmentCheck 180 59 128
      { lower := 3881, upper := 4060, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good021_checked :
    goodSegmentCheck 180 59 128
      { lower := 4061, upper := 4236, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good022_checked :
    goodSegmentCheck 180 59 128
      { lower := 4237, upper := 4410, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good023_checked :
    goodSegmentCheck 180 59 128
      { lower := 4411, upper := 4588, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good024_checked :
    goodSegmentCheck 180 59 128
      { lower := 4589, upper := 4762, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good025_checked :
    goodSegmentCheck 180 59 128
      { lower := 4763, upper := 4938, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good026_checked :
    goodSegmentCheck 180 59 128
      { lower := 4939, upper := 5116, witness := RowWitness.topPrime 4937 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good027_checked :
    goodSegmentCheck 180 59 128
      { lower := 5117, upper := 5292, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good028_checked :
    goodSegmentCheck 180 59 128
      { lower := 5293, upper := 5460, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good029_checked :
    goodSegmentCheck 180 59 128
      { lower := 5461, upper := 5628, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good030_checked :
    goodSegmentCheck 180 59 128
      { lower := 5629, upper := 5802, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good031_checked :
    goodSegmentCheck 180 59 128
      { lower := 5803, upper := 5980, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good032_checked :
    goodSegmentCheck 180 59 128
      { lower := 5981, upper := 6160, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good033_checked :
    goodSegmentCheck 180 59 128
      { lower := 6161, upper := 6330, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good034_checked :
    goodSegmentCheck 180 59 128
      { lower := 6331, upper := 6508, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good035_checked :
    goodSegmentCheck 180 59 128
      { lower := 6509, upper := 6670, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good036_checked :
    goodSegmentCheck 180 59 128
      { lower := 6671, upper := 6840, witness := RowWitness.topPrime 6661 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good037_checked :
    goodSegmentCheck 180 59 128
      { lower := 6841, upper := 7020, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good038_checked :
    goodSegmentCheck 180 59 128
      { lower := 7021, upper := 7198, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good039_checked :
    goodSegmentCheck 180 59 128
      { lower := 7199, upper := 7372, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good040_checked :
    goodSegmentCheck 180 59 128
      { lower := 7373, upper := 7548, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good041_checked :
    goodSegmentCheck 180 59 128
      { lower := 7549, upper := 7728, witness := RowWitness.topPrime 7549 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good042_checked :
    goodSegmentCheck 180 59 128
      { lower := 7729, upper := 7906, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good043_checked :
    goodSegmentCheck 180 59 128
      { lower := 7907, upper := 8086, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good044_checked :
    goodSegmentCheck 180 59 128
      { lower := 8087, upper := 8266, witness := RowWitness.topPrime 8087 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good045_checked :
    goodSegmentCheck 180 59 128
      { lower := 8267, upper := 8442, witness := RowWitness.topPrime 8263 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good046_checked :
    goodSegmentCheck 180 59 128
      { lower := 8443, upper := 8622, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good047_checked :
    goodSegmentCheck 180 59 128
      { lower := 8623, upper := 8802, witness := RowWitness.topPrime 8623 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good048_checked :
    goodSegmentCheck 180 59 128
      { lower := 8803, upper := 8982, witness := RowWitness.topPrime 8803 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good049_checked :
    goodSegmentCheck 180 59 128
      { lower := 8983, upper := 9150, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good050_checked :
    goodSegmentCheck 180 59 128
      { lower := 9151, upper := 9330, witness := RowWitness.topPrime 9151 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good051_checked :
    goodSegmentCheck 180 59 128
      { lower := 9331, upper := 9502, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good052_checked :
    goodSegmentCheck 180 59 128
      { lower := 9503, upper := 9676, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good053_checked :
    goodSegmentCheck 180 59 128
      { lower := 9677, upper := 9856, witness := RowWitness.topPrime 9677 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good054_checked :
    goodSegmentCheck 180 59 128
      { lower := 9857, upper := 10036, witness := RowWitness.topPrime 9857 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good055_checked :
    goodSegmentCheck 180 59 128
      { lower := 10037, upper := 10216, witness := RowWitness.topPrime 10037 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good056_checked :
    goodSegmentCheck 180 59 128
      { lower := 10217, upper := 10390, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good057_checked :
    goodSegmentCheck 180 59 128
      { lower := 10391, upper := 10570, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good058_checked :
    goodSegmentCheck 180 59 128
      { lower := 10571, upper := 10746, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good059_checked :
    goodSegmentCheck 180 59 128
      { lower := 10747, upper := 10918, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good060_checked :
    goodSegmentCheck 180 59 128
      { lower := 10919, upper := 11088, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good061_checked :
    goodSegmentCheck 180 59 128
      { lower := 11089, upper := 11266, witness := RowWitness.topPrime 11087 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good062_checked :
    goodSegmentCheck 180 59 128
      { lower := 11267, upper := 11440, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good063_checked :
    goodSegmentCheck 180 59 128
      { lower := 11441, upper := 11616, witness := RowWitness.topPrime 11437 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good064_checked :
    goodSegmentCheck 180 59 128
      { lower := 11617, upper := 11796, witness := RowWitness.topPrime 11617 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good065_checked :
    goodSegmentCheck 180 59 128
      { lower := 11797, upper := 11968, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good066_checked :
    goodSegmentCheck 180 59 128
      { lower := 11969, upper := 12148, witness := RowWitness.topPrime 11969 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good067_checked :
    goodSegmentCheck 180 59 128
      { lower := 12149, upper := 12328, witness := RowWitness.topPrime 12149 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good068_checked :
    goodSegmentCheck 180 59 128
      { lower := 12329, upper := 12508, witness := RowWitness.topPrime 12329 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good069_checked :
    goodSegmentCheck 180 59 128
      { lower := 12509, upper := 12682, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good070_checked :
    goodSegmentCheck 180 59 128
      { lower := 12683, upper := 12850, witness := RowWitness.topPrime 12671 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good071_checked :
    goodSegmentCheck 180 59 128
      { lower := 12851, upper := 13020, witness := RowWitness.topPrime 12841 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good072_checked :
    goodSegmentCheck 180 59 128
      { lower := 13021, upper := 13188, witness := RowWitness.topPrime 13009 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good073_checked :
    goodSegmentCheck 180 59 128
      { lower := 13189, upper := 13366, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good074_checked :
    goodSegmentCheck 180 59 128
      { lower := 13367, upper := 13546, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good075_checked :
    goodSegmentCheck 180 59 128
      { lower := 13547, upper := 13716, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good076_checked :
    goodSegmentCheck 180 59 128
      { lower := 13717, upper := 13890, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good077_checked :
    goodSegmentCheck 180 59 128
      { lower := 13891, upper := 14062, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good078_checked :
    goodSegmentCheck 180 59 128
      { lower := 14063, upper := 14236, witness := RowWitness.topPrime 14057 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good079_checked :
    goodSegmentCheck 180 59 128
      { lower := 14237, upper := 14400, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good080_checked :
    goodSegmentCheck 180 59 128
      { lower := 14401, upper := 14580, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good081_checked :
    goodSegmentCheck 180 59 128
      { lower := 14581, upper := 14742, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good082_checked :
    goodSegmentCheck 180 59 128
      { lower := 14743, upper := 14920, witness := RowWitness.topPrime 14741 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good083_checked :
    goodSegmentCheck 180 59 128
      { lower := 14921, upper := 15076, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good084_checked :
    goodSegmentCheck 180 59 128
      { lower := 15077, upper := 15256, witness := RowWitness.topPrime 15077 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good085_checked :
    goodSegmentCheck 180 59 128
      { lower := 15257, upper := 15420, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good086_checked :
    goodSegmentCheck 180 59 128
      { lower := 15421, upper := 15592, witness := RowWitness.topPrime 15413 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good087_checked :
    goodSegmentCheck 180 59 128
      { lower := 15593, upper := 15762, witness := RowWitness.topPrime 15583 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good088_checked :
    goodSegmentCheck 180 59 128
      { lower := 15763, upper := 15940, witness := RowWitness.topPrime 15761 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good089_checked :
    goodSegmentCheck 180 59 128
      { lower := 15941, upper := 16116, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good090_checked :
    goodSegmentCheck 180 59 128
      { lower := 16117, upper := 16290, witness := RowWitness.topPrime 16111 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good091_checked :
    goodSegmentCheck 180 59 128
      { lower := 16291, upper := 16452, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good092_checked :
    goodSegmentCheck 180 59 128
      { lower := 16453, upper := 16632, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good093_checked :
    goodSegmentCheck 180 59 128
      { lower := 16633, upper := 16812, witness := RowWitness.topPrime 16633 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good094_checked :
    goodSegmentCheck 180 59 128
      { lower := 16813, upper := 16990, witness := RowWitness.topPrime 16811 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good095_checked :
    goodSegmentCheck 180 59 128
      { lower := 16991, upper := 17166, witness := RowWitness.topPrime 16987 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good096_checked :
    goodSegmentCheck 180 59 128
      { lower := 17167, upper := 17346, witness := RowWitness.topPrime 17167 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good097_checked :
    goodSegmentCheck 180 59 128
      { lower := 17347, upper := 17520, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good098_checked :
    goodSegmentCheck 180 59 128
      { lower := 17521, upper := 17698, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good099_checked :
    goodSegmentCheck 180 59 128
      { lower := 17699, upper := 17862, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good100_checked :
    goodSegmentCheck 180 59 128
      { lower := 17863, upper := 18042, witness := RowWitness.topPrime 17863 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good101_checked :
    goodSegmentCheck 180 59 128
      { lower := 18043, upper := 18222, witness := RowWitness.topPrime 18043 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good102_checked :
    goodSegmentCheck 180 59 128
      { lower := 18223, upper := 18402, witness := RowWitness.topPrime 18223 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good103_checked :
    goodSegmentCheck 180 59 128
      { lower := 18403, upper := 18580, witness := RowWitness.topPrime 18401 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good104_checked :
    goodSegmentCheck 180 59 128
      { lower := 18581, upper := 18732, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good105_checked :
    goodSegmentCheck 180 59 128
      { lower := 18733, upper := 18910, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good106_checked :
    goodSegmentCheck 180 59 128
      { lower := 18911, upper := 19090, witness := RowWitness.topPrime 18911 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good107_checked :
    goodSegmentCheck 180 59 128
      { lower := 19091, upper := 19266, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good108_checked :
    goodSegmentCheck 180 59 128
      { lower := 19267, upper := 19446, witness := RowWitness.topPrime 19267 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good109_checked :
    goodSegmentCheck 180 59 128
      { lower := 19447, upper := 19626, witness := RowWitness.topPrime 19447 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good110_checked :
    goodSegmentCheck 180 59 128
      { lower := 19627, upper := 19788, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good111_checked :
    goodSegmentCheck 180 59 128
      { lower := 19789, upper := 19956, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good112_checked :
    goodSegmentCheck 180 59 128
      { lower := 19957, upper := 20128, witness := RowWitness.topPrime 19949 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good113_checked :
    goodSegmentCheck 180 59 128
      { lower := 20129, upper := 20308, witness := RowWitness.topPrime 20129 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good114_checked :
    goodSegmentCheck 180 59 128
      { lower := 20309, upper := 20476, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good115_checked :
    goodSegmentCheck 180 59 128
      { lower := 20477, upper := 20656, witness := RowWitness.topPrime 20477 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good116_checked :
    goodSegmentCheck 180 59 128
      { lower := 20657, upper := 20820, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good117_checked :
    goodSegmentCheck 180 59 128
      { lower := 20821, upper := 20988, witness := RowWitness.topPrime 20809 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good118_checked :
    goodSegmentCheck 180 59 128
      { lower := 20989, upper := 21162, witness := RowWitness.topPrime 20983 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good119_checked :
    goodSegmentCheck 180 59 128
      { lower := 21163, upper := 21342, witness := RowWitness.topPrime 21163 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good120_checked :
    goodSegmentCheck 180 59 128
      { lower := 21343, upper := 21520, witness := RowWitness.topPrime 21341 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good121_checked :
    goodSegmentCheck 180 59 128
      { lower := 21521, upper := 21700, witness := RowWitness.topPrime 21521 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good122_checked :
    goodSegmentCheck 180 59 128
      { lower := 21701, upper := 21880, witness := RowWitness.topPrime 21701 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good123_checked :
    goodSegmentCheck 180 59 128
      { lower := 21881, upper := 22060, witness := RowWitness.topPrime 21881 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good124_checked :
    goodSegmentCheck 180 59 128
      { lower := 22061, upper := 22230, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good125_checked :
    goodSegmentCheck 180 59 128
      { lower := 22231, upper := 22408, witness := RowWitness.topPrime 22229 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good126_checked :
    goodSegmentCheck 180 59 128
      { lower := 22409, upper := 22588, witness := RowWitness.topPrime 22409 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good127_checked :
    goodSegmentCheck 180 59 128
      { lower := 22589, upper := 22752, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good128_checked :
    goodSegmentCheck 180 59 128
      { lower := 22753, upper := 22930, witness := RowWitness.topPrime 22751 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good129_checked :
    goodSegmentCheck 180 59 128
      { lower := 22931, upper := 23100, witness := RowWitness.topPrime 22921 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good130_checked :
    goodSegmentCheck 180 59 128
      { lower := 23101, upper := 23278, witness := RowWitness.topPrime 23099 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good131_checked :
    goodSegmentCheck 180 59 128
      { lower := 23279, upper := 23458, witness := RowWitness.topPrime 23279 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good132_checked :
    goodSegmentCheck 180 59 128
      { lower := 23459, upper := 23638, witness := RowWitness.topPrime 23459 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good133_checked :
    goodSegmentCheck 180 59 128
      { lower := 23639, upper := 23812, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good134_checked :
    goodSegmentCheck 180 59 128
      { lower := 23813, upper := 23992, witness := RowWitness.topPrime 23813 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good135_checked :
    goodSegmentCheck 180 59 128
      { lower := 23993, upper := 24172, witness := RowWitness.topPrime 23993 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good136_checked :
    goodSegmentCheck 180 59 128
      { lower := 24173, upper := 24348, witness := RowWitness.topPrime 24169 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good137_checked :
    goodSegmentCheck 180 59 128
      { lower := 24349, upper := 24516, witness := RowWitness.topPrime 24337 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good138_checked :
    goodSegmentCheck 180 59 128
      { lower := 24517, upper := 24696, witness := RowWitness.topPrime 24517 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good139_checked :
    goodSegmentCheck 180 59 128
      { lower := 24697, upper := 24876, witness := RowWitness.topPrime 24697 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good140_checked :
    goodSegmentCheck 180 59 128
      { lower := 24877, upper := 25056, witness := RowWitness.topPrime 24877 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good141_checked :
    goodSegmentCheck 180 59 128
      { lower := 25057, upper := 25236, witness := RowWitness.topPrime 25057 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good142_checked :
    goodSegmentCheck 180 59 128
      { lower := 25237, upper := 25416, witness := RowWitness.topPrime 25237 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good143_checked :
    goodSegmentCheck 180 59 128
      { lower := 25417, upper := 25590, witness := RowWitness.topPrime 25411 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good144_checked :
    goodSegmentCheck 180 59 128
      { lower := 25591, upper := 25768, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good145_checked :
    goodSegmentCheck 180 59 128
      { lower := 25769, upper := 25942, witness := RowWitness.topPrime 25763 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good146_checked :
    goodSegmentCheck 180 59 128
      { lower := 25943, upper := 26122, witness := RowWitness.topPrime 25943 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good147_checked :
    goodSegmentCheck 180 59 128
      { lower := 26123, upper := 26298, witness := RowWitness.topPrime 26119 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good148_checked :
    goodSegmentCheck 180 59 128
      { lower := 26299, upper := 26476, witness := RowWitness.topPrime 26297 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good149_checked :
    goodSegmentCheck 180 59 128
      { lower := 26477, upper := 26638, witness := RowWitness.topPrime 26459 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good150_checked :
    goodSegmentCheck 180 59 128
      { lower := 26639, upper := 26812, witness := RowWitness.topPrime 26633 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good151_checked :
    goodSegmentCheck 180 59 128
      { lower := 26813, upper := 26992, witness := RowWitness.topPrime 26813 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good152_checked :
    goodSegmentCheck 180 59 128
      { lower := 26993, upper := 27172, witness := RowWitness.topPrime 26993 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good153_checked :
    goodSegmentCheck 180 59 128
      { lower := 27173, upper := 27322, witness := RowWitness.topPrime 27143 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good154_checked :
    goodSegmentCheck 180 59 128
      { lower := 27323, upper := 27478, witness := RowWitness.topPrime 27299 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good155_checked :
    goodSegmentCheck 180 59 128
      { lower := 27479, upper := 27658, witness := RowWitness.topPrime 27479 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good156_checked :
    goodSegmentCheck 180 59 128
      { lower := 27659, upper := 27832, witness := RowWitness.topPrime 27653 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good157_checked :
    goodSegmentCheck 180 59 128
      { lower := 27833, upper := 28006, witness := RowWitness.topPrime 27827 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good158_checked :
    goodSegmentCheck 180 59 128
      { lower := 28007, upper := 28180, witness := RowWitness.topPrime 28001 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good159_checked :
    goodSegmentCheck 180 59 128
      { lower := 28181, upper := 28360, witness := RowWitness.topPrime 28181 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good160_checked :
    goodSegmentCheck 180 59 128
      { lower := 28361, upper := 28530, witness := RowWitness.topPrime 28351 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good161_checked :
    goodSegmentCheck 180 59 128
      { lower := 28531, upper := 28696, witness := RowWitness.topPrime 28517 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good162_checked :
    goodSegmentCheck 180 59 128
      { lower := 28697, upper := 28876, witness := RowWitness.topPrime 28697 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good163_checked :
    goodSegmentCheck 180 59 128
      { lower := 28877, upper := 29050, witness := RowWitness.topPrime 28871 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good164_checked :
    goodSegmentCheck 180 59 128
      { lower := 29051, upper := 29212, witness := RowWitness.topPrime 29033 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good165_checked :
    goodSegmentCheck 180 59 128
      { lower := 29213, upper := 29388, witness := RowWitness.topPrime 29209 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good166_checked :
    goodSegmentCheck 180 59 128
      { lower := 29389, upper := 29568, witness := RowWitness.topPrime 29389 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good167_checked :
    goodSegmentCheck 180 59 128
      { lower := 29569, upper := 29748, witness := RowWitness.topPrime 29569 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good168_checked :
    goodSegmentCheck 180 59 128
      { lower := 29749, upper := 29920, witness := RowWitness.topPrime 29741 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good169_checked :
    goodSegmentCheck 180 59 128
      { lower := 29921, upper := 30100, witness := RowWitness.topPrime 29921 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good170_checked :
    goodSegmentCheck 180 59 128
      { lower := 30101, upper := 30276, witness := RowWitness.topPrime 30097 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good171_checked :
    goodSegmentCheck 180 59 128
      { lower := 30277, upper := 30450, witness := RowWitness.topPrime 30271 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good172_checked :
    goodSegmentCheck 180 59 128
      { lower := 30451, upper := 30628, witness := RowWitness.topPrime 30449 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good173_checked :
    goodSegmentCheck 180 59 128
      { lower := 30629, upper := 30772, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good174_checked :
    goodSegmentCheck 180 59 128
      { lower := 30773, upper := 30952, witness := RowWitness.topPrime 30773 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good175_checked :
    goodSegmentCheck 180 59 128
      { lower := 30953, upper := 31128, witness := RowWitness.topPrime 30949 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good176_checked :
    goodSegmentCheck 180 59 128
      { lower := 31129, upper := 31302, witness := RowWitness.topPrime 31123 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good177_checked :
    goodSegmentCheck 180 59 128
      { lower := 31303, upper := 31456, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good178_checked :
    goodSegmentCheck 180 59 128
      { lower := 31457, upper := 31576, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good179_checked :
    goodSegmentCheck 180 59 128
      { lower := 31577, upper := 31752, witness := RowWitness.topPrime 31573 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good180_checked :
    goodSegmentCheck 180 59 128
      { lower := 31753, upper := 31930, witness := RowWitness.topPrime 31751 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good181_checked :
    goodSegmentCheck 180 59 128
      { lower := 31931, upper := 32086, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good182_checked :
    goodSegmentCheck 180 59 128
      { lower := 32087, upper := 32219, witness := RowWitness.topPrime 32083 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good183_checked :
    goodSegmentCheck 180 59 128
      { lower := 33614, upper := 33668, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good184_checked :
    goodSegmentCheck 180 59 128
      { lower := 33708, upper := 33793, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good185_checked :
    goodSegmentCheck 180 59 128
      { lower := 34322, upper := 34498, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good186_checked :
    goodSegmentCheck 180 59 128
      { lower := 34499, upper := 34570, witness := RowWitness.topPrime 34499 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good187_checked :
    goodSegmentCheck 180 59 128
      { lower := 36517, upper := 36676, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good188_checked :
    goodSegmentCheck 180 59 128
      { lower := 36677, upper := 36680, witness := RowWitness.topPrime 36677 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good189_checked :
    goodSegmentCheck 180 59 128
      { lower := 37303, upper := 37389, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good190_checked :
    goodSegmentCheck 180 59 128
      { lower := 37446, upper := 37482, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good191_checked :
    goodSegmentCheck 180 59 128
      { lower := 37538, upper := 37625, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good192_checked :
    goodSegmentCheck 180 59 128
      { lower := 37636, upper := 37717, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good193_checked :
    goodSegmentCheck 180 59 128
      { lower := 38307, upper := 38470, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good194_checked :
    goodSegmentCheck 180 59 128
      { lower := 40401, upper := 40507, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good195_checked :
    goodSegmentCheck 180 59 128
      { lower := 40931, upper := 40983, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good196_checked :
    goodSegmentCheck 180 59 128
      { lower := 45369, upper := 45432, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good197_checked :
    goodSegmentCheck 180 59 128
      { lower := 47526, upper := 47700, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good198_checked :
    goodSegmentCheck 180 59 128
      { lower := 47701, upper := 47703, witness := RowWitness.topPrime 47701 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good199_checked :
    goodSegmentCheck 180 59 128
      { lower := 48013, upper := 48140, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good200_checked :
    goodSegmentCheck 180 59 128
      { lower := 48373, upper := 48550, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good201_checked :
    goodSegmentCheck 180 59 128
      { lower := 48551, upper := 48552, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good202_checked :
    goodSegmentCheck 180 59 128
      { lower := 48778, upper := 48847, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good203_checked :
    goodSegmentCheck 180 59 128
      { lower := 49152, upper := 49318, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good204_checked :
    goodSegmentCheck 180 59 128
      { lower := 49319, upper := 49331, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good205_checked :
    goodSegmentCheck 180 59 128
      { lower := 49379, upper := 49477, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good206_checked :
    goodSegmentCheck 180 59 128
      { lower := 50421, upper := 50589, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good207_checked :
    goodSegmentCheck 180 59 128
      { lower := 51076, upper := 51184, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good208_checked :
    goodSegmentCheck 180 59 128
      { lower := 53138, upper := 53224, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good209_checked :
    goodSegmentCheck 180 59 128
      { lower := 53290, upper := 53317, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good210_checked :
    goodSegmentCheck 180 59 128
      { lower := 54043, upper := 54047, witness := RowWitness.topPrime 54037 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good211_checked :
    goodSegmentCheck 180 59 128
      { lower := 55451, upper := 55620, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good212_checked :
    goodSegmentCheck 180 59 128
      { lower := 55621, upper := 55626, witness := RowWitness.topPrime 55621 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good213_checked :
    goodSegmentCheck 180 59 128
      { lower := 56307, upper := 56348, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good214_checked :
    goodSegmentCheck 180 59 128
      { lower := 56454, upper := 56486, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good215_checked :
    goodSegmentCheck 180 59 128
      { lower := 57245, upper := 57301, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good216_checked :
    goodSegmentCheck 180 59 128
      { lower := 58619, upper := 58743, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good217_checked :
    goodSegmentCheck 180 59 128
      { lower := 59049, upper := 59135, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good218_checked :
    goodSegmentCheck 180 59 128
      { lower := 59582, upper := 59584, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good219_checked :
    goodSegmentCheck 180 59 128
      { lower := 63869, upper := 64042, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good220_checked :
    goodSegmentCheck 180 59 128
      { lower := 64043, upper := 64048, witness := RowWitness.topPrime 64037 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good221_checked :
    goodSegmentCheck 180 59 128
      { lower := 64082, upper := 64127, witness := RowWitness.topPrime 64081 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good222_checked :
    goodSegmentCheck 180 59 128
      { lower := 68644, upper := 68818, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good223_checked :
    goodSegmentCheck 180 59 128
      { lower := 68819, upper := 68823, witness := RowWitness.topPrime 68819 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_good224_checked :
    goodSegmentCheck 180 59 128
      { lower := 68921, upper := 69069, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good225_checked :
    goodSegmentCheck 180 59 128
      { lower := 71289, upper := 71466, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good226_checked :
    goodSegmentCheck 180 59 128
      { lower := 71467, upper := 71468, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good227_checked :
    goodSegmentCheck 180 59 128
      { lower := 73167, upper := 73181, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good228_checked :
    goodSegmentCheck 180 59 128
      { lower := 73205, upper := 73346, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good229_checked :
    goodSegmentCheck 180 59 128
      { lower := 83667, upper := 83700, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good230_checked :
    goodSegmentCheck 180 59 128
      { lower := 85805, upper := 85862, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good231_checked :
    goodSegmentCheck 180 59 128
      { lower := 89383, upper := 89552, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good232_checked :
    goodSegmentCheck 180 59 128
      { lower := 96774, upper := 96784, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good233_checked :
    goodSegmentCheck 180 59 128
      { lower := 102152, upper := 102189, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good234_checked :
    goodSegmentCheck 180 59 128
      { lower := 103041, upper := 103145, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row180_good235_checked :
    goodSegmentCheck 180 59 128
      { lower := 148955, upper := 149056, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 180) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_good235_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_goods_checked :
    row180.goods.all (goodSegmentCheck row180.height.i row180.height.r row180.height.s) = true := by
  change row180_goods.all (goodSegmentCheck 180 59 128) = true
  simp only [row180_goods, List.all_cons, List.all_nil,
    row180_good000_checked,
    row180_good001_checked,
    row180_good002_checked,
    row180_good003_checked,
    row180_good004_checked,
    row180_good005_checked,
    row180_good006_checked,
    row180_good007_checked,
    row180_good008_checked,
    row180_good009_checked,
    row180_good010_checked,
    row180_good011_checked,
    row180_good012_checked,
    row180_good013_checked,
    row180_good014_checked,
    row180_good015_checked,
    row180_good016_checked,
    row180_good017_checked,
    row180_good018_checked,
    row180_good019_checked,
    row180_good020_checked,
    row180_good021_checked,
    row180_good022_checked,
    row180_good023_checked,
    row180_good024_checked,
    row180_good025_checked,
    row180_good026_checked,
    row180_good027_checked,
    row180_good028_checked,
    row180_good029_checked,
    row180_good030_checked,
    row180_good031_checked,
    row180_good032_checked,
    row180_good033_checked,
    row180_good034_checked,
    row180_good035_checked,
    row180_good036_checked,
    row180_good037_checked,
    row180_good038_checked,
    row180_good039_checked,
    row180_good040_checked,
    row180_good041_checked,
    row180_good042_checked,
    row180_good043_checked,
    row180_good044_checked,
    row180_good045_checked,
    row180_good046_checked,
    row180_good047_checked,
    row180_good048_checked,
    row180_good049_checked,
    row180_good050_checked,
    row180_good051_checked,
    row180_good052_checked,
    row180_good053_checked,
    row180_good054_checked,
    row180_good055_checked,
    row180_good056_checked,
    row180_good057_checked,
    row180_good058_checked,
    row180_good059_checked,
    row180_good060_checked,
    row180_good061_checked,
    row180_good062_checked,
    row180_good063_checked,
    row180_good064_checked,
    row180_good065_checked,
    row180_good066_checked,
    row180_good067_checked,
    row180_good068_checked,
    row180_good069_checked,
    row180_good070_checked,
    row180_good071_checked,
    row180_good072_checked,
    row180_good073_checked,
    row180_good074_checked,
    row180_good075_checked,
    row180_good076_checked,
    row180_good077_checked,
    row180_good078_checked,
    row180_good079_checked,
    row180_good080_checked,
    row180_good081_checked,
    row180_good082_checked,
    row180_good083_checked,
    row180_good084_checked,
    row180_good085_checked,
    row180_good086_checked,
    row180_good087_checked,
    row180_good088_checked,
    row180_good089_checked,
    row180_good090_checked,
    row180_good091_checked,
    row180_good092_checked,
    row180_good093_checked,
    row180_good094_checked,
    row180_good095_checked,
    row180_good096_checked,
    row180_good097_checked,
    row180_good098_checked,
    row180_good099_checked,
    row180_good100_checked,
    row180_good101_checked,
    row180_good102_checked,
    row180_good103_checked,
    row180_good104_checked,
    row180_good105_checked,
    row180_good106_checked,
    row180_good107_checked,
    row180_good108_checked,
    row180_good109_checked,
    row180_good110_checked,
    row180_good111_checked,
    row180_good112_checked,
    row180_good113_checked,
    row180_good114_checked,
    row180_good115_checked,
    row180_good116_checked,
    row180_good117_checked,
    row180_good118_checked,
    row180_good119_checked,
    row180_good120_checked,
    row180_good121_checked,
    row180_good122_checked,
    row180_good123_checked,
    row180_good124_checked,
    row180_good125_checked,
    row180_good126_checked,
    row180_good127_checked,
    row180_good128_checked,
    row180_good129_checked,
    row180_good130_checked,
    row180_good131_checked,
    row180_good132_checked,
    row180_good133_checked,
    row180_good134_checked,
    row180_good135_checked,
    row180_good136_checked,
    row180_good137_checked,
    row180_good138_checked,
    row180_good139_checked,
    row180_good140_checked,
    row180_good141_checked,
    row180_good142_checked,
    row180_good143_checked,
    row180_good144_checked,
    row180_good145_checked,
    row180_good146_checked,
    row180_good147_checked,
    row180_good148_checked,
    row180_good149_checked,
    row180_good150_checked,
    row180_good151_checked,
    row180_good152_checked,
    row180_good153_checked,
    row180_good154_checked,
    row180_good155_checked,
    row180_good156_checked,
    row180_good157_checked,
    row180_good158_checked,
    row180_good159_checked,
    row180_good160_checked,
    row180_good161_checked,
    row180_good162_checked,
    row180_good163_checked,
    row180_good164_checked,
    row180_good165_checked,
    row180_good166_checked,
    row180_good167_checked,
    row180_good168_checked,
    row180_good169_checked,
    row180_good170_checked,
    row180_good171_checked,
    row180_good172_checked,
    row180_good173_checked,
    row180_good174_checked,
    row180_good175_checked,
    row180_good176_checked,
    row180_good177_checked,
    row180_good178_checked,
    row180_good179_checked,
    row180_good180_checked,
    row180_good181_checked,
    row180_good182_checked,
    row180_good183_checked,
    row180_good184_checked,
    row180_good185_checked,
    row180_good186_checked,
    row180_good187_checked,
    row180_good188_checked,
    row180_good189_checked,
    row180_good190_checked,
    row180_good191_checked,
    row180_good192_checked,
    row180_good193_checked,
    row180_good194_checked,
    row180_good195_checked,
    row180_good196_checked,
    row180_good197_checked,
    row180_good198_checked,
    row180_good199_checked,
    row180_good200_checked,
    row180_good201_checked,
    row180_good202_checked,
    row180_good203_checked,
    row180_good204_checked,
    row180_good205_checked,
    row180_good206_checked,
    row180_good207_checked,
    row180_good208_checked,
    row180_good209_checked,
    row180_good210_checked,
    row180_good211_checked,
    row180_good212_checked,
    row180_good213_checked,
    row180_good214_checked,
    row180_good215_checked,
    row180_good216_checked,
    row180_good217_checked,
    row180_good218_checked,
    row180_good219_checked,
    row180_good220_checked,
    row180_good221_checked,
    row180_good222_checked,
    row180_good223_checked,
    row180_good224_checked,
    row180_good225_checked,
    row180_good226_checked,
    row180_good227_checked,
    row180_good228_checked,
    row180_good229_checked,
    row180_good230_checked,
    row180_good231_checked,
    row180_good232_checked,
    row180_good233_checked,
    row180_good234_checked,
    row180_good235_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_registered :
    decide (row180.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row180_small_checked :
    coverCheck (2 * row180.height.i + 2) (row180.height.i * (row180.height.i - 1) - 1)
      (row180.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row180_layerCover_checked :
    coverCheck (row180.height.i * (row180.height.i - 1)) (row180.height.n0 - 1)
      (row180.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row180_bounds : List NatInterval :=
  [(362, 538), (539, 702), (703, 880), (881, 1060), (1061, 1240), (1241, 1416), (1417, 1588), (1589, 1762), (1763, 1938), (1939, 2112), (2113, 2292), (2293, 2472), (2473, 2652), (2653, 2826), (2827, 2998), (2999, 3178), (3179, 3348), (3349, 3526), (3527, 3706), (3707, 3880), (3881, 4060), (4061, 4236), (4237, 4410), (4411, 4588), (4589, 4762), (4763, 4938), (4939, 5116), (5117, 5292), (5293, 5460), (5461, 5628), (5629, 5802), (5803, 5980), (5981, 6160), (6161, 6330), (6331, 6508), (6509, 6670), (6671, 6840), (6841, 7020), (7021, 7198), (7199, 7372), (7373, 7548), (7549, 7728), (7729, 7906), (7907, 8086), (8087, 8266), (8267, 8442), (8443, 8622), (8623, 8802), (8803, 8982), (8983, 9150), (9151, 9330), (9331, 9502), (9503, 9676), (9677, 9856), (9857, 10036), (10037, 10216), (10217, 10390), (10391, 10570), (10571, 10746), (10747, 10918), (10919, 11088), (11089, 11266), (11267, 11440), (11441, 11616), (11617, 11796), (11797, 11968), (11969, 12148), (12149, 12328), (12329, 12508), (12509, 12682), (12683, 12850), (12851, 13020), (13021, 13188), (13189, 13366), (13367, 13546), (13547, 13716), (13717, 13890), (13891, 14062), (14063, 14236), (14237, 14400), (14401, 14580), (14581, 14742), (14743, 14920), (14921, 15076), (15077, 15256), (15257, 15420), (15421, 15592), (15593, 15762), (15763, 15940), (15941, 16116), (16117, 16290), (16291, 16452), (16453, 16632), (16633, 16812), (16813, 16990), (16991, 17166), (17167, 17346), (17347, 17520), (17521, 17698), (17699, 17862), (17863, 18042), (18043, 18222), (18223, 18402), (18403, 18580), (18581, 18732), (18733, 18910), (18911, 19090), (19091, 19266), (19267, 19446), (19447, 19626), (19627, 19788), (19789, 19956), (19957, 20128), (20129, 20308), (20309, 20476), (20477, 20656), (20657, 20820), (20821, 20988), (20989, 21162), (21163, 21342), (21343, 21520), (21521, 21700), (21701, 21880), (21881, 22060), (22061, 22230), (22231, 22408), (22409, 22588), (22589, 22752), (22753, 22930), (22931, 23100), (23101, 23278), (23279, 23458), (23459, 23638), (23639, 23812), (23813, 23992), (23993, 24172), (24173, 24348), (24349, 24516), (24517, 24696), (24697, 24876), (24877, 25056), (25057, 25236), (25237, 25416), (25417, 25590), (25591, 25768), (25769, 25942), (25943, 26122), (26123, 26298), (26299, 26476), (26477, 26638), (26639, 26812), (26813, 26992), (26993, 27172), (27173, 27322), (27323, 27478), (27479, 27658), (27659, 27832), (27833, 28006), (28007, 28180), (28181, 28360), (28361, 28530), (28531, 28696), (28697, 28876), (28877, 29050), (29051, 29212), (29213, 29388), (29389, 29568), (29569, 29748), (29749, 29920), (29921, 30100), (30101, 30276), (30277, 30450), (30451, 30628), (30629, 30772), (30773, 30952), (30953, 31128), (31129, 31302), (31303, 31456), (31457, 31576), (31577, 31752), (31753, 31930), (31931, 32086), (32087, 32219), (33614, 33668), (33708, 33793), (34322, 34498), (34499, 34570), (36517, 36676), (36677, 36680), (37303, 37389), (37446, 37482), (37538, 37625), (37636, 37717), (38307, 38470), (40401, 40507), (40931, 40983), (45369, 45432), (47526, 47700), (47701, 47703), (48013, 48140), (48373, 48550), (48551, 48552), (48778, 48847), (49152, 49318), (49319, 49331), (49379, 49477), (50421, 50589), (51076, 51184), (53138, 53224), (53290, 53317), (54043, 54047), (55451, 55620), (55621, 55626), (56307, 56348), (56454, 56486), (57245, 57301), (58619, 58743), (59049, 59135), (59582, 59584), (63869, 64042), (64043, 64048), (64082, 64127), (68644, 68818), (68819, 68823), (68921, 69069), (71289, 71466), (71467, 71468), (73167, 73181), (73205, 73346), (83667, 83700), (85805, 85862), (89383, 89552), (96774, 96784), (102152, 102189), (103041, 103145), (148955, 149056)]

theorem row180_bounds_eq : row180.goods.map goodSegmentBounds = row180_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row180_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32947), (2, 49152, 49331), (2, 32768, 32947), (3, 59049, 59228), (7, 33614, 33793), (7, 50421, 50600), (11, 43923, 44102), (11, 58564, 58743), (13, 57122, 57301), (17, 34391, 34570), (17, 39304, 39483), (17, 44217, 44396), (17, 49130, 49309), (17, 54043, 54222), (17, 58956, 59135), (17, 63869, 64048), (19, 34295, 34474), (19, 41154, 41333), (19, 48013, 48192), (19, 54872, 55051), (19, 61731, 61910), (23, 36501, 36680), (23, 48668, 48847), (23, 60835, 61014), (29, 48778, 48957), (31, 59582, 59761), (37, 50653, 50832), (53, 33708, 33887), (53, 36517, 36696), (59, 34810, 34989), (59, 38291, 38470), (59, 41772, 41951), (59, 45253, 45432), (61, 33489, 33668), (61, 37210, 37389), (61, 40931, 41110), (61, 44652, 44831), (61, 48373, 48552), (67, 35912, 36091), (67, 40401, 40580), (67, 44890, 45069), (67, 49379, 49558), (67, 53868, 54047), (67, 58357, 58536), (71, 35287, 35466), (71, 40328, 40507), (71, 45369, 45548), (71, 50410, 50589), (71, 55451, 55630), (71, 60492, 60671), (73, 37303, 37482), (73, 42632, 42811), (73, 47961, 48140), (73, 53290, 53469), (73, 58619, 58798), (73, 63948, 64127), (79, 37446, 37625), (79, 43687, 43866), (79, 49928, 50107), (79, 56169, 56348), (79, 62410, 62589), (83, 34445, 34624), (83, 41334, 41513), (83, 48223, 48402), (83, 55112, 55291), (83, 62001, 62180), (89, 39605, 39784), (89, 47526, 47705), (89, 55447, 55626), (89, 63368, 63547), (97, 37636, 37815), (97, 47045, 47224), (97, 56454, 56633), (101, 40804, 40983), (101, 51005, 51184), (101, 61206, 61385), (103, 42436, 42615), (103, 53045, 53224), (103, 63654, 63833), (107, 34347, 34526), (107, 45796, 45975), (107, 57245, 57424), (109, 35643, 35822), (109, 47524, 47703), (109, 59405, 59584), (113, 38307, 38486), (113, 51076, 51255), (113, 63845, 64024), (127, 32258, 32437), (127, 48387, 48566), (131, 34322, 34501), (131, 51483, 51662), (137, 37538, 37717), (137, 56307, 56486), (139, 38642, 38821), (139, 57963, 58142), (149, 44402, 44581), (151, 45602, 45781), (157, 49298, 49477), (163, 53138, 53317), (167, 55778, 55957), (173, 59858, 60037), (179, 32220, 32220), (179, 64082, 64261)]

def row180_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32947), (2, 49152, 49331), (2, 32768, 32947), (3, 59049, 59228), (7, 33614, 33793), (7, 50421, 50600), (11, 43923, 44102), (11, 58564, 58743), (13, 57122, 57301), (17, 34391, 34570), (17, 39304, 39483), (17, 44217, 44396), (17, 49130, 49309), (17, 54043, 54222), (17, 58956, 59135), (17, 63869, 64048)]

def row180_layer000_block001 : List ColouredInterval :=
  [(19, 34295, 34474), (19, 41154, 41333), (19, 48013, 48192), (19, 54872, 55051), (19, 61731, 61910), (23, 36501, 36680), (23, 48668, 48847), (23, 60835, 61014), (29, 48778, 48957), (31, 59582, 59761), (37, 50653, 50832), (53, 33708, 33887), (53, 36517, 36696), (59, 34810, 34989), (59, 38291, 38470), (59, 41772, 41951)]

def row180_layer000_block002 : List ColouredInterval :=
  [(59, 45253, 45432), (61, 33489, 33668), (61, 37210, 37389), (61, 40931, 41110), (61, 44652, 44831), (61, 48373, 48552), (67, 35912, 36091), (67, 40401, 40580), (67, 44890, 45069), (67, 49379, 49558), (67, 53868, 54047), (67, 58357, 58536), (71, 35287, 35466), (71, 40328, 40507), (71, 45369, 45548), (71, 50410, 50589)]

def row180_layer000_block003 : List ColouredInterval :=
  [(71, 55451, 55630), (71, 60492, 60671), (73, 37303, 37482), (73, 42632, 42811), (73, 47961, 48140), (73, 53290, 53469), (73, 58619, 58798), (73, 63948, 64127), (79, 37446, 37625), (79, 43687, 43866), (79, 49928, 50107), (79, 56169, 56348), (79, 62410, 62589), (83, 34445, 34624), (83, 41334, 41513), (83, 48223, 48402)]

def row180_layer000_block004 : List ColouredInterval :=
  [(83, 55112, 55291), (83, 62001, 62180), (89, 39605, 39784), (89, 47526, 47705), (89, 55447, 55626), (89, 63368, 63547), (97, 37636, 37815), (97, 47045, 47224), (97, 56454, 56633), (101, 40804, 40983), (101, 51005, 51184), (101, 61206, 61385), (103, 42436, 42615), (103, 53045, 53224), (103, 63654, 63833), (107, 34347, 34526)]

def row180_layer000_block005 : List ColouredInterval :=
  [(107, 45796, 45975), (107, 57245, 57424), (109, 35643, 35822), (109, 47524, 47703), (109, 59405, 59584), (113, 38307, 38486), (113, 51076, 51255), (113, 63845, 64024), (127, 32258, 32437), (127, 48387, 48566), (131, 34322, 34501), (131, 51483, 51662), (137, 37538, 37717), (137, 56307, 56486), (139, 38642, 38821), (139, 57963, 58142)]

def row180_layer000_block006 : List ColouredInterval :=
  [(149, 44402, 44581), (151, 45602, 45781), (157, 49298, 49477), (163, 53138, 53317), (167, 55778, 55957), (173, 59858, 60037), (179, 32220, 32220), (179, 64082, 64261)]

def row180_layer000_chunks : List (List ColouredInterval) :=
  [row180_layer000_block000, row180_layer000_block001, row180_layer000_block002, row180_layer000_block003, row180_layer000_block004, row180_layer000_block005, row180_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_arithmetic : LayerArithmeticValid row180.height { lower := 32220, upper := 64440, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_enumeration :
    activePowerIntervalList 180 13 32220 64440 = row180_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_pairs000 :
    row180_layer000_block000.all (fun I => row180_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_pairs001 :
    row180_layer000_block001.all (fun I => row180_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_pairs002 :
    row180_layer000_block002.all (fun I => row180_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_pairs003 :
    row180_layer000_block003.all (fun I => row180_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_pairs004 :
    row180_layer000_block004.all (fun I => row180_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_pairs005 :
    row180_layer000_block005.all (fun I => row180_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_pairs006 :
    row180_layer000_block006.all (fun I => row180_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_chunks_eq : row180_layer000_chunks.flatten = row180_layer000_intervals := by
  rfl

theorem row180_layer000_pairs : pairCoverCheck row180_layer000_intervals row180_bounds = true := by
  apply pairCoverCheck_of_chunks row180_layer000_chunks_eq
  intro block hblock
  simp only [row180_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row180_layer000_pairs000
  · exact row180_layer000_pairs001
  · exact row180_layer000_pairs002
  · exact row180_layer000_pairs003
  · exact row180_layer000_pairs004
  · exact row180_layer000_pairs005
  · exact row180_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer000_checked :
    coverLayerCheck row180.height row180.goods { lower := 32220, upper := 64440, M := 13 } = true := by
  exact coverLayerCheck_of_parts row180_layer000_arithmetic row180_layer000_enumeration row180_bounds_eq row180_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row180_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65715), (2, 65536, 65715), (5, 78125, 78304), (7, 67228, 67407), (7, 84035, 84214), (7, 100842, 101021), (7, 117649, 117828), (7, 117649, 117828), (11, 73205, 73384), (11, 87846, 88025), (11, 102487, 102666), (11, 117128, 117307), (13, 85683, 85862), (13, 114244, 114423), (17, 83521, 83700), (19, 68590, 68769), (23, 73002, 73181), (23, 85169, 85348), (23, 97336, 97515), (23, 109503, 109682), (23, 121670, 121849), (29, 73167, 73346), (29, 97556, 97735), (29, 121945, 122124), (31, 89373, 89552), (31, 119164, 119343), (37, 101306, 101485), (41, 68921, 69100), (43, 79507, 79686), (47, 103823, 104002), (83, 68890, 69069), (89, 71289, 71468), (89, 79210, 79389), (97, 65863, 66042), (97, 75272, 75451), (97, 84681, 84860), (97, 94090, 94269), (101, 71407, 71586), (101, 81608, 81787), (101, 91809, 91988), (101, 102010, 102189), (103, 74263, 74442), (103, 84872, 85051), (103, 95481, 95660), (103, 106090, 106269), (107, 68694, 68873), (107, 80143, 80322), (107, 91592, 91771), (107, 103041, 103220), (107, 114490, 114669), (109, 71286, 71465), (109, 83167, 83346), (109, 95048, 95227), (109, 106929, 107108), (109, 118810, 118989), (113, 76614, 76793), (113, 89383, 89562), (113, 102152, 102331), (113, 114921, 115100), (113, 127690, 127869), (127, 64516, 64695), (127, 80645, 80824), (127, 96774, 96953), (127, 112903, 113082), (131, 68644, 68823), (131, 85805, 85984), (131, 102966, 103145), (131, 120127, 120306), (137, 75076, 75255), (137, 93845, 94024), (137, 112614, 112793), (139, 77284, 77463), (139, 96605, 96784), (139, 115926, 116105), (149, 66603, 66782), (149, 88804, 88983), (149, 111005, 111184), (151, 68403, 68582), (151, 91204, 91383), (151, 114005, 114184), (157, 73947, 74126), (157, 98596, 98775), (157, 123245, 123424), (163, 79707, 79886), (163, 106276, 106455), (167, 83667, 83846), (167, 111556, 111735), (173, 89787, 89966), (173, 119716, 119895), (179, 96123, 96302), (179, 128164, 128343)]

def row180_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65715), (2, 65536, 65715), (5, 78125, 78304), (7, 67228, 67407), (7, 84035, 84214), (7, 100842, 101021), (7, 117649, 117828), (7, 117649, 117828), (11, 73205, 73384), (11, 87846, 88025), (11, 102487, 102666), (11, 117128, 117307), (13, 85683, 85862), (13, 114244, 114423), (17, 83521, 83700), (19, 68590, 68769)]

def row180_layer001_block001 : List ColouredInterval :=
  [(23, 73002, 73181), (23, 85169, 85348), (23, 97336, 97515), (23, 109503, 109682), (23, 121670, 121849), (29, 73167, 73346), (29, 97556, 97735), (29, 121945, 122124), (31, 89373, 89552), (31, 119164, 119343), (37, 101306, 101485), (41, 68921, 69100), (43, 79507, 79686), (47, 103823, 104002), (83, 68890, 69069), (89, 71289, 71468)]

def row180_layer001_block002 : List ColouredInterval :=
  [(89, 79210, 79389), (97, 65863, 66042), (97, 75272, 75451), (97, 84681, 84860), (97, 94090, 94269), (101, 71407, 71586), (101, 81608, 81787), (101, 91809, 91988), (101, 102010, 102189), (103, 74263, 74442), (103, 84872, 85051), (103, 95481, 95660), (103, 106090, 106269), (107, 68694, 68873), (107, 80143, 80322), (107, 91592, 91771)]

def row180_layer001_block003 : List ColouredInterval :=
  [(107, 103041, 103220), (107, 114490, 114669), (109, 71286, 71465), (109, 83167, 83346), (109, 95048, 95227), (109, 106929, 107108), (109, 118810, 118989), (113, 76614, 76793), (113, 89383, 89562), (113, 102152, 102331), (113, 114921, 115100), (113, 127690, 127869), (127, 64516, 64695), (127, 80645, 80824), (127, 96774, 96953), (127, 112903, 113082)]

def row180_layer001_block004 : List ColouredInterval :=
  [(131, 68644, 68823), (131, 85805, 85984), (131, 102966, 103145), (131, 120127, 120306), (137, 75076, 75255), (137, 93845, 94024), (137, 112614, 112793), (139, 77284, 77463), (139, 96605, 96784), (139, 115926, 116105), (149, 66603, 66782), (149, 88804, 88983), (149, 111005, 111184), (151, 68403, 68582), (151, 91204, 91383), (151, 114005, 114184)]

def row180_layer001_block005 : List ColouredInterval :=
  [(157, 73947, 74126), (157, 98596, 98775), (157, 123245, 123424), (163, 79707, 79886), (163, 106276, 106455), (167, 83667, 83846), (167, 111556, 111735), (173, 89787, 89966), (173, 119716, 119895), (179, 96123, 96302), (179, 128164, 128343)]

def row180_layer001_chunks : List (List ColouredInterval) :=
  [row180_layer001_block000, row180_layer001_block001, row180_layer001_block002, row180_layer001_block003, row180_layer001_block004, row180_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_intervals
