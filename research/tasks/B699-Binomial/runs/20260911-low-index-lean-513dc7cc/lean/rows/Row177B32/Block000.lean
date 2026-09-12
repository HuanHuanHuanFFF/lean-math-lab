import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row177_height : HeightCertificateDatum := { i := 177, r := 58, s := 126, n0Power10 := 7 }

def row177_goods : List GoodSegment := [
  { lower := 356, upper := 529, witness := RowWitness.topPrime 353 },
  { lower := 530, upper := 699, witness := RowWitness.topPrime 523 },
  { lower := 700, upper := 867, witness := RowWitness.topPrime 691 },
  { lower := 868, upper := 1039, witness := RowWitness.topPrime 863 },
  { lower := 1040, upper := 1215, witness := RowWitness.topPrime 1039 },
  { lower := 1216, upper := 1389, witness := RowWitness.topPrime 1213 },
  { lower := 1390, upper := 1557, witness := RowWitness.topPrime 1381 },
  { lower := 1558, upper := 1729, witness := RowWitness.topPrime 1553 },
  { lower := 1730, upper := 1899, witness := RowWitness.topPrime 1723 },
  { lower := 1900, upper := 2065, witness := RowWitness.topPrime 1889 },
  { lower := 2066, upper := 2239, witness := RowWitness.topPrime 2063 },
  { lower := 2240, upper := 2415, witness := RowWitness.topPrime 2239 },
  { lower := 2416, upper := 2587, witness := RowWitness.topPrime 2411 },
  { lower := 2588, upper := 2755, witness := RowWitness.topPrime 2579 },
  { lower := 2756, upper := 2929, witness := RowWitness.topPrime 2753 },
  { lower := 2930, upper := 3103, witness := RowWitness.topPrime 2927 },
  { lower := 3104, upper := 3265, witness := RowWitness.topPrime 3089 },
  { lower := 3266, upper := 3435, witness := RowWitness.topPrime 3259 },
  { lower := 3436, upper := 3609, witness := RowWitness.topPrime 3433 },
  { lower := 3610, upper := 3783, witness := RowWitness.topPrime 3607 },
  { lower := 3784, upper := 3955, witness := RowWitness.topPrime 3779 },
  { lower := 3956, upper := 4123, witness := RowWitness.topPrime 3947 },
  { lower := 4124, upper := 4287, witness := RowWitness.topPrime 4111 },
  { lower := 4288, upper := 4459, witness := RowWitness.topPrime 4283 },
  { lower := 4460, upper := 4633, witness := RowWitness.topPrime 4457 },
  { lower := 4634, upper := 4797, witness := RowWitness.topPrime 4621 },
  { lower := 4798, upper := 4969, witness := RowWitness.topPrime 4793 },
  { lower := 4970, upper := 5145, witness := RowWitness.topPrime 4969 },
  { lower := 5146, upper := 5295, witness := RowWitness.topPrime 5119 },
  { lower := 5296, upper := 5457, witness := RowWitness.topPrime 5281 },
  { lower := 5458, upper := 5625, witness := RowWitness.topPrime 5449 },
  { lower := 5626, upper := 5799, witness := RowWitness.topPrime 5623 },
  { lower := 5800, upper := 5967, witness := RowWitness.topPrime 5791 },
  { lower := 5968, upper := 6129, witness := RowWitness.topPrime 5953 },
  { lower := 6130, upper := 6297, witness := RowWitness.topPrime 6121 },
  { lower := 6298, upper := 6463, witness := RowWitness.topPrime 6287 },
  { lower := 6464, upper := 6627, witness := RowWitness.topPrime 6451 },
  { lower := 6628, upper := 6795, witness := RowWitness.topPrime 6619 },
  { lower := 6796, upper := 6969, witness := RowWitness.topPrime 6793 },
  { lower := 6970, upper := 7143, witness := RowWitness.topPrime 6967 },
  { lower := 7144, upper := 7305, witness := RowWitness.topPrime 7129 },
  { lower := 7306, upper := 7473, witness := RowWitness.topPrime 7297 },
  { lower := 7474, upper := 7635, witness := RowWitness.topPrime 7459 },
  { lower := 7636, upper := 7797, witness := RowWitness.topPrime 7621 },
  { lower := 7798, upper := 7969, witness := RowWitness.topPrime 7793 },
  { lower := 7970, upper := 8139, witness := RowWitness.topPrime 7963 },
  { lower := 8140, upper := 8299, witness := RowWitness.topPrime 8123 },
  { lower := 8300, upper := 8473, witness := RowWitness.topPrime 8297 },
  { lower := 8474, upper := 8643, witness := RowWitness.topPrime 8467 },
  { lower := 8644, upper := 8817, witness := RowWitness.topPrime 8641 },
  { lower := 8818, upper := 8983, witness := RowWitness.topPrime 8807 },
  { lower := 8984, upper := 9147, witness := RowWitness.topPrime 8971 },
  { lower := 9148, upper := 9313, witness := RowWitness.topPrime 9137 },
  { lower := 9314, upper := 9487, witness := RowWitness.topPrime 9311 },
  { lower := 9488, upper := 9655, witness := RowWitness.topPrime 9479 },
  { lower := 9656, upper := 9825, witness := RowWitness.topPrime 9649 },
  { lower := 9826, upper := 9993, witness := RowWitness.topPrime 9817 },
  { lower := 9994, upper := 10149, witness := RowWitness.topPrime 9973 },
  { lower := 10150, upper := 10317, witness := RowWitness.topPrime 10141 },
  { lower := 10318, upper := 10489, witness := RowWitness.topPrime 10313 },
  { lower := 10490, upper := 10663, witness := RowWitness.topPrime 10487 },
  { lower := 10664, upper := 10839, witness := RowWitness.topPrime 10663 },
  { lower := 10840, upper := 11013, witness := RowWitness.topPrime 10837 },
  { lower := 11014, upper := 11179, witness := RowWitness.topPrime 11003 },
  { lower := 11180, upper := 11353, witness := RowWitness.topPrime 11177 },
  { lower := 11354, upper := 11529, witness := RowWitness.topPrime 11353 },
  { lower := 11530, upper := 11703, witness := RowWitness.topPrime 11527 },
  { lower := 11704, upper := 11877, witness := RowWitness.topPrime 11701 },
  { lower := 11878, upper := 12043, witness := RowWitness.topPrime 11867 },
  { lower := 12044, upper := 12219, witness := RowWitness.topPrime 12043 },
  { lower := 12220, upper := 12387, witness := RowWitness.topPrime 12211 },
  { lower := 12388, upper := 12555, witness := RowWitness.topPrime 12379 },
  { lower := 12556, upper := 12729, witness := RowWitness.topPrime 12553 },
  { lower := 12730, upper := 12897, witness := RowWitness.topPrime 12721 },
  { lower := 12898, upper := 13069, witness := RowWitness.topPrime 12893 },
  { lower := 13070, upper := 13239, witness := RowWitness.topPrime 13063 },
  { lower := 13240, upper := 13405, witness := RowWitness.topPrime 13229 },
  { lower := 13406, upper := 13575, witness := RowWitness.topPrime 13399 },
  { lower := 13576, upper := 13743, witness := RowWitness.topPrime 13567 },
  { lower := 13744, upper := 13905, witness := RowWitness.topPrime 13729 },
  { lower := 13906, upper := 14079, witness := RowWitness.topPrime 13903 },
  { lower := 14080, upper := 14247, witness := RowWitness.topPrime 14071 },
  { lower := 14248, upper := 14419, witness := RowWitness.topPrime 14243 },
  { lower := 14420, upper := 14595, witness := RowWitness.topPrime 14419 },
  { lower := 14596, upper := 14769, witness := RowWitness.topPrime 14593 },
  { lower := 14770, upper := 14943, witness := RowWitness.topPrime 14767 },
  { lower := 14944, upper := 15115, witness := RowWitness.topPrime 14939 },
  { lower := 15116, upper := 15283, witness := RowWitness.topPrime 15107 },
  { lower := 15284, upper := 15453, witness := RowWitness.topPrime 15277 },
  { lower := 15454, upper := 15627, witness := RowWitness.topPrime 15451 },
  { lower := 15628, upper := 15795, witness := RowWitness.topPrime 15619 },
  { lower := 15796, upper := 15967, witness := RowWitness.topPrime 15791 },
  { lower := 15968, upper := 16135, witness := RowWitness.topPrime 15959 },
  { lower := 16136, upper := 16303, witness := RowWitness.topPrime 16127 },
  { lower := 16304, upper := 16477, witness := RowWitness.topPrime 16301 },
  { lower := 16478, upper := 16653, witness := RowWitness.topPrime 16477 },
  { lower := 16654, upper := 16827, witness := RowWitness.topPrime 16651 },
  { lower := 16828, upper := 16999, witness := RowWitness.topPrime 16823 },
  { lower := 17000, upper := 17169, witness := RowWitness.topPrime 16993 },
  { lower := 17170, upper := 17343, witness := RowWitness.topPrime 17167 },
  { lower := 17344, upper := 17517, witness := RowWitness.topPrime 17341 },
  { lower := 17518, upper := 17685, witness := RowWitness.topPrime 17509 },
  { lower := 17686, upper := 17859, witness := RowWitness.topPrime 17683 },
  { lower := 17860, upper := 18027, witness := RowWitness.topPrime 17851 },
  { lower := 18028, upper := 18189, witness := RowWitness.topPrime 18013 },
  { lower := 18190, upper := 18357, witness := RowWitness.topPrime 18181 },
  { lower := 18358, upper := 18529, witness := RowWitness.topPrime 18353 },
  { lower := 18530, upper := 18699, witness := RowWitness.topPrime 18523 },
  { lower := 18700, upper := 18867, witness := RowWitness.topPrime 18691 },
  { lower := 18868, upper := 19035, witness := RowWitness.topPrime 18859 },
  { lower := 19036, upper := 19207, witness := RowWitness.topPrime 19031 },
  { lower := 19208, upper := 19383, witness := RowWitness.topPrime 19207 },
  { lower := 19384, upper := 19557, witness := RowWitness.topPrime 19381 },
  { lower := 19558, upper := 19729, witness := RowWitness.topPrime 19553 },
  { lower := 19730, upper := 19903, witness := RowWitness.topPrime 19727 },
  { lower := 19904, upper := 20067, witness := RowWitness.topPrime 19891 },
  { lower := 20068, upper := 20239, witness := RowWitness.topPrime 20063 },
  { lower := 20240, upper := 20409, witness := RowWitness.topPrime 20233 },
  { lower := 20410, upper := 20583, witness := RowWitness.topPrime 20407 },
  { lower := 20584, upper := 20739, witness := RowWitness.topPrime 20563 },
  { lower := 20740, upper := 20907, witness := RowWitness.topPrime 20731 },
  { lower := 20908, upper := 21079, witness := RowWitness.topPrime 20903 },
  { lower := 21080, upper := 21243, witness := RowWitness.topPrime 21067 },
  { lower := 21244, upper := 21403, witness := RowWitness.topPrime 21227 },
  { lower := 21404, upper := 21577, witness := RowWitness.topPrime 21401 },
  { lower := 21578, upper := 21753, witness := RowWitness.topPrime 21577 },
  { lower := 21754, upper := 21927, witness := RowWitness.topPrime 21751 },
  { lower := 21928, upper := 22087, witness := RowWitness.topPrime 21911 },
  { lower := 22088, upper := 22255, witness := RowWitness.topPrime 22079 },
  { lower := 22256, upper := 22423, witness := RowWitness.topPrime 22247 },
  { lower := 22424, upper := 22585, witness := RowWitness.topPrime 22409 },
  { lower := 22586, upper := 22749, witness := RowWitness.topPrime 22573 },
  { lower := 22750, upper := 22917, witness := RowWitness.topPrime 22741 },
  { lower := 22918, upper := 23083, witness := RowWitness.topPrime 22907 },
  { lower := 23084, upper := 23257, witness := RowWitness.topPrime 23081 },
  { lower := 23258, upper := 23427, witness := RowWitness.topPrime 23251 },
  { lower := 23428, upper := 23593, witness := RowWitness.topPrime 23417 },
  { lower := 23594, upper := 23769, witness := RowWitness.topPrime 23593 },
  { lower := 23770, upper := 23943, witness := RowWitness.topPrime 23767 },
  { lower := 23944, upper := 24105, witness := RowWitness.topPrime 23929 },
  { lower := 24106, upper := 24279, witness := RowWitness.topPrime 24103 },
  { lower := 24280, upper := 24427, witness := RowWitness.topPrime 24251 },
  { lower := 24428, upper := 24597, witness := RowWitness.topPrime 24421 },
  { lower := 24598, upper := 24769, witness := RowWitness.topPrime 24593 },
  { lower := 24770, upper := 24943, witness := RowWitness.topPrime 24767 },
  { lower := 24944, upper := 25119, witness := RowWitness.topPrime 24943 },
  { lower := 25120, upper := 25293, witness := RowWitness.topPrime 25117 },
  { lower := 25294, upper := 25437, witness := RowWitness.topPrime 25261 },
  { lower := 25438, upper := 25599, witness := RowWitness.topPrime 25423 },
  { lower := 25600, upper := 25765, witness := RowWitness.topPrime 25589 },
  { lower := 25766, upper := 25939, witness := RowWitness.topPrime 25763 },
  { lower := 25940, upper := 26115, witness := RowWitness.topPrime 25939 },
  { lower := 26116, upper := 26289, witness := RowWitness.topPrime 26113 },
  { lower := 26290, upper := 26443, witness := RowWitness.topPrime 26267 },
  { lower := 26444, upper := 26613, witness := RowWitness.topPrime 26437 },
  { lower := 26614, upper := 26773, witness := RowWitness.topPrime 26597 },
  { lower := 26774, upper := 26935, witness := RowWitness.topPrime 26759 },
  { lower := 26936, upper := 27103, witness := RowWitness.topPrime 26927 },
  { lower := 27104, upper := 27279, witness := RowWitness.topPrime 27103 },
  { lower := 27280, upper := 27453, witness := RowWitness.topPrime 27277 },
  { lower := 27454, upper := 27625, witness := RowWitness.topPrime 27449 },
  { lower := 27626, upper := 27793, witness := RowWitness.topPrime 27617 },
  { lower := 27794, upper := 27969, witness := RowWitness.topPrime 27793 },
  { lower := 27970, upper := 28143, witness := RowWitness.topPrime 27967 },
  { lower := 28144, upper := 28299, witness := RowWitness.topPrime 28123 },
  { lower := 28300, upper := 28473, witness := RowWitness.topPrime 28297 },
  { lower := 28474, upper := 28639, witness := RowWitness.topPrime 28463 },
  { lower := 28640, upper := 28807, witness := RowWitness.topPrime 28631 },
  { lower := 28808, upper := 28983, witness := RowWitness.topPrime 28807 },
  { lower := 28984, upper := 29155, witness := RowWitness.topPrime 28979 },
  { lower := 29156, upper := 29329, witness := RowWitness.topPrime 29153 },
  { lower := 29330, upper := 29503, witness := RowWitness.topPrime 29327 },
  { lower := 29504, upper := 29677, witness := RowWitness.topPrime 29501 },
  { lower := 29678, upper := 29847, witness := RowWitness.topPrime 29671 },
  { lower := 29848, upper := 30013, witness := RowWitness.topPrime 29837 },
  { lower := 30014, upper := 30189, witness := RowWitness.topPrime 30013 },
  { lower := 30190, upper := 30363, witness := RowWitness.topPrime 30187 },
  { lower := 30364, upper := 30523, witness := RowWitness.topPrime 30347 },
  { lower := 30524, upper := 30693, witness := RowWitness.topPrime 30517 },
  { lower := 30694, upper := 30865, witness := RowWitness.topPrime 30689 },
  { lower := 30866, upper := 31035, witness := RowWitness.topPrime 30859 },
  { lower := 31036, upper := 31151, witness := RowWitness.topPrime 31033 },
  { lower := 31213, upper := 31369, witness := RowWitness.topPrime 31193 },
  { lower := 31370, upper := 31389, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31426, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31860, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 32003, witness := RowWitness.topPrime 31973 },
  { lower := 33614, upper := 33665, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33790, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34495, witness := RowWitness.topPrime 34319 },
  { lower := 34496, upper := 34567, witness := RowWitness.topPrime 34487 },
  { lower := 36517, upper := 36673, witness := RowWitness.topPrime 36497 },
  { lower := 36674, upper := 36677, witness := RowWitness.topPrime 36671 },
  { lower := 37303, upper := 37386, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37479, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37669, witness := RowWitness.topPrime 37493 },
  { lower := 37670, upper := 37714, witness := RowWitness.topPrime 37663 },
  { lower := 39366, upper := 39480, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40504, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41103, witness := RowWitness.topPrime 40927 },
  { lower := 41104, upper := 41107, witness := RowWitness.topPrime 41081 },
  { lower := 45056, upper := 45066, witness := RowWitness.topPrime 45053 },
  { lower := 47045, upper := 47051, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47697, witness := RowWitness.topPrime 47521 },
  { lower := 47698, upper := 47700, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48137, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48547, witness := RowWitness.topPrime 48371 },
  { lower := 48548, upper := 48549, witness := RowWitness.topPrime 48541 },
  { lower := 48778, upper := 48844, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49315, witness := RowWitness.topPrime 49139 },
  { lower := 49316, upper := 49328, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49474, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50586, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51181, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53221, witness := RowWitness.topPrime 53129 },
  { lower := 53248, upper := 53415, witness := RowWitness.topPrime 53239 },
  { lower := 53416, upper := 53424, witness := RowWitness.topPrime 53411 },
  { lower := 54043, upper := 54044, witness := RowWitness.topPrime 54037 },
  { lower := 55451, upper := 55617, witness := RowWitness.topPrime 55441 },
  { lower := 55618, upper := 55623, witness := RowWitness.topPrime 55609 },
  { lower := 56307, upper := 56345, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56483, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57298, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57421, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58740, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59132, witness := RowWitness.topPrime 59029 },
  { lower := 68694, upper := 68820, witness := RowWitness.topPrime 68687 },
  { lower := 71289, upper := 71463, witness := RowWitness.topPrime 71287 },
  { lower := 71464, upper := 71465, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73178, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73343, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83697, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85859, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89549, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93926, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96781, witness := RowWitness.topPrime 96769 },
  { lower := 103041, upper := 103142, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109551, witness := RowWitness.topPrime 109481 },
  { lower := 148955, upper := 149053, witness := RowWitness.topPrime 148949 }
]

def row177_layers : List CoverLayer := [
  { lower := 31152, upper := 62304, M := 13 },
  { lower := 62304, upper := 124608, M := 9 },
  { lower := 124608, upper := 249216, M := 7 },
  { lower := 249216, upper := 498432, M := 5 },
  { lower := 498432, upper := 996864, M := 4 },
  { lower := 996864, upper := 1993728, M := 3 },
  { lower := 1993728, upper := 3987456, M := 2 },
  { lower := 3987456, upper := 7974912, M := 2 },
  { lower := 7974912, upper := 10000000, M := 1 }
]

def row177 : FiniteCoverRow := {
  height := row177_height,
  goods := row177_goods,
  layers := row177_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good000_checked :
    goodSegmentCheck 177 58 126
      { lower := 356, upper := 529, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good001_checked :
    goodSegmentCheck 177 58 126
      { lower := 530, upper := 699, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good002_checked :
    goodSegmentCheck 177 58 126
      { lower := 700, upper := 867, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good003_checked :
    goodSegmentCheck 177 58 126
      { lower := 868, upper := 1039, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good004_checked :
    goodSegmentCheck 177 58 126
      { lower := 1040, upper := 1215, witness := RowWitness.topPrime 1039 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good005_checked :
    goodSegmentCheck 177 58 126
      { lower := 1216, upper := 1389, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good006_checked :
    goodSegmentCheck 177 58 126
      { lower := 1390, upper := 1557, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good007_checked :
    goodSegmentCheck 177 58 126
      { lower := 1558, upper := 1729, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good008_checked :
    goodSegmentCheck 177 58 126
      { lower := 1730, upper := 1899, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good009_checked :
    goodSegmentCheck 177 58 126
      { lower := 1900, upper := 2065, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good010_checked :
    goodSegmentCheck 177 58 126
      { lower := 2066, upper := 2239, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good011_checked :
    goodSegmentCheck 177 58 126
      { lower := 2240, upper := 2415, witness := RowWitness.topPrime 2239 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good012_checked :
    goodSegmentCheck 177 58 126
      { lower := 2416, upper := 2587, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good013_checked :
    goodSegmentCheck 177 58 126
      { lower := 2588, upper := 2755, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good014_checked :
    goodSegmentCheck 177 58 126
      { lower := 2756, upper := 2929, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good015_checked :
    goodSegmentCheck 177 58 126
      { lower := 2930, upper := 3103, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good016_checked :
    goodSegmentCheck 177 58 126
      { lower := 3104, upper := 3265, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good017_checked :
    goodSegmentCheck 177 58 126
      { lower := 3266, upper := 3435, witness := RowWitness.topPrime 3259 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good018_checked :
    goodSegmentCheck 177 58 126
      { lower := 3436, upper := 3609, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good019_checked :
    goodSegmentCheck 177 58 126
      { lower := 3610, upper := 3783, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good020_checked :
    goodSegmentCheck 177 58 126
      { lower := 3784, upper := 3955, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good021_checked :
    goodSegmentCheck 177 58 126
      { lower := 3956, upper := 4123, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good022_checked :
    goodSegmentCheck 177 58 126
      { lower := 4124, upper := 4287, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good023_checked :
    goodSegmentCheck 177 58 126
      { lower := 4288, upper := 4459, witness := RowWitness.topPrime 4283 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good024_checked :
    goodSegmentCheck 177 58 126
      { lower := 4460, upper := 4633, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good025_checked :
    goodSegmentCheck 177 58 126
      { lower := 4634, upper := 4797, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good026_checked :
    goodSegmentCheck 177 58 126
      { lower := 4798, upper := 4969, witness := RowWitness.topPrime 4793 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good027_checked :
    goodSegmentCheck 177 58 126
      { lower := 4970, upper := 5145, witness := RowWitness.topPrime 4969 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good028_checked :
    goodSegmentCheck 177 58 126
      { lower := 5146, upper := 5295, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good029_checked :
    goodSegmentCheck 177 58 126
      { lower := 5296, upper := 5457, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good030_checked :
    goodSegmentCheck 177 58 126
      { lower := 5458, upper := 5625, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good031_checked :
    goodSegmentCheck 177 58 126
      { lower := 5626, upper := 5799, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good032_checked :
    goodSegmentCheck 177 58 126
      { lower := 5800, upper := 5967, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good033_checked :
    goodSegmentCheck 177 58 126
      { lower := 5968, upper := 6129, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good034_checked :
    goodSegmentCheck 177 58 126
      { lower := 6130, upper := 6297, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good035_checked :
    goodSegmentCheck 177 58 126
      { lower := 6298, upper := 6463, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good036_checked :
    goodSegmentCheck 177 58 126
      { lower := 6464, upper := 6627, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good037_checked :
    goodSegmentCheck 177 58 126
      { lower := 6628, upper := 6795, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good038_checked :
    goodSegmentCheck 177 58 126
      { lower := 6796, upper := 6969, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good039_checked :
    goodSegmentCheck 177 58 126
      { lower := 6970, upper := 7143, witness := RowWitness.topPrime 6967 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good040_checked :
    goodSegmentCheck 177 58 126
      { lower := 7144, upper := 7305, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good041_checked :
    goodSegmentCheck 177 58 126
      { lower := 7306, upper := 7473, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good042_checked :
    goodSegmentCheck 177 58 126
      { lower := 7474, upper := 7635, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good043_checked :
    goodSegmentCheck 177 58 126
      { lower := 7636, upper := 7797, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good044_checked :
    goodSegmentCheck 177 58 126
      { lower := 7798, upper := 7969, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good045_checked :
    goodSegmentCheck 177 58 126
      { lower := 7970, upper := 8139, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good046_checked :
    goodSegmentCheck 177 58 126
      { lower := 8140, upper := 8299, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good047_checked :
    goodSegmentCheck 177 58 126
      { lower := 8300, upper := 8473, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good048_checked :
    goodSegmentCheck 177 58 126
      { lower := 8474, upper := 8643, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good049_checked :
    goodSegmentCheck 177 58 126
      { lower := 8644, upper := 8817, witness := RowWitness.topPrime 8641 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good050_checked :
    goodSegmentCheck 177 58 126
      { lower := 8818, upper := 8983, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good051_checked :
    goodSegmentCheck 177 58 126
      { lower := 8984, upper := 9147, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good052_checked :
    goodSegmentCheck 177 58 126
      { lower := 9148, upper := 9313, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good053_checked :
    goodSegmentCheck 177 58 126
      { lower := 9314, upper := 9487, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good054_checked :
    goodSegmentCheck 177 58 126
      { lower := 9488, upper := 9655, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good055_checked :
    goodSegmentCheck 177 58 126
      { lower := 9656, upper := 9825, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good056_checked :
    goodSegmentCheck 177 58 126
      { lower := 9826, upper := 9993, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good057_checked :
    goodSegmentCheck 177 58 126
      { lower := 9994, upper := 10149, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good058_checked :
    goodSegmentCheck 177 58 126
      { lower := 10150, upper := 10317, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good059_checked :
    goodSegmentCheck 177 58 126
      { lower := 10318, upper := 10489, witness := RowWitness.topPrime 10313 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good060_checked :
    goodSegmentCheck 177 58 126
      { lower := 10490, upper := 10663, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good061_checked :
    goodSegmentCheck 177 58 126
      { lower := 10664, upper := 10839, witness := RowWitness.topPrime 10663 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good062_checked :
    goodSegmentCheck 177 58 126
      { lower := 10840, upper := 11013, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good063_checked :
    goodSegmentCheck 177 58 126
      { lower := 11014, upper := 11179, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good064_checked :
    goodSegmentCheck 177 58 126
      { lower := 11180, upper := 11353, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good065_checked :
    goodSegmentCheck 177 58 126
      { lower := 11354, upper := 11529, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good066_checked :
    goodSegmentCheck 177 58 126
      { lower := 11530, upper := 11703, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good067_checked :
    goodSegmentCheck 177 58 126
      { lower := 11704, upper := 11877, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good068_checked :
    goodSegmentCheck 177 58 126
      { lower := 11878, upper := 12043, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good069_checked :
    goodSegmentCheck 177 58 126
      { lower := 12044, upper := 12219, witness := RowWitness.topPrime 12043 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good070_checked :
    goodSegmentCheck 177 58 126
      { lower := 12220, upper := 12387, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good071_checked :
    goodSegmentCheck 177 58 126
      { lower := 12388, upper := 12555, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good072_checked :
    goodSegmentCheck 177 58 126
      { lower := 12556, upper := 12729, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good073_checked :
    goodSegmentCheck 177 58 126
      { lower := 12730, upper := 12897, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good074_checked :
    goodSegmentCheck 177 58 126
      { lower := 12898, upper := 13069, witness := RowWitness.topPrime 12893 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good075_checked :
    goodSegmentCheck 177 58 126
      { lower := 13070, upper := 13239, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good076_checked :
    goodSegmentCheck 177 58 126
      { lower := 13240, upper := 13405, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good077_checked :
    goodSegmentCheck 177 58 126
      { lower := 13406, upper := 13575, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good078_checked :
    goodSegmentCheck 177 58 126
      { lower := 13576, upper := 13743, witness := RowWitness.topPrime 13567 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good079_checked :
    goodSegmentCheck 177 58 126
      { lower := 13744, upper := 13905, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good080_checked :
    goodSegmentCheck 177 58 126
      { lower := 13906, upper := 14079, witness := RowWitness.topPrime 13903 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good081_checked :
    goodSegmentCheck 177 58 126
      { lower := 14080, upper := 14247, witness := RowWitness.topPrime 14071 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good082_checked :
    goodSegmentCheck 177 58 126
      { lower := 14248, upper := 14419, witness := RowWitness.topPrime 14243 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good083_checked :
    goodSegmentCheck 177 58 126
      { lower := 14420, upper := 14595, witness := RowWitness.topPrime 14419 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good084_checked :
    goodSegmentCheck 177 58 126
      { lower := 14596, upper := 14769, witness := RowWitness.topPrime 14593 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good085_checked :
    goodSegmentCheck 177 58 126
      { lower := 14770, upper := 14943, witness := RowWitness.topPrime 14767 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good086_checked :
    goodSegmentCheck 177 58 126
      { lower := 14944, upper := 15115, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good087_checked :
    goodSegmentCheck 177 58 126
      { lower := 15116, upper := 15283, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good088_checked :
    goodSegmentCheck 177 58 126
      { lower := 15284, upper := 15453, witness := RowWitness.topPrime 15277 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good089_checked :
    goodSegmentCheck 177 58 126
      { lower := 15454, upper := 15627, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good090_checked :
    goodSegmentCheck 177 58 126
      { lower := 15628, upper := 15795, witness := RowWitness.topPrime 15619 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good091_checked :
    goodSegmentCheck 177 58 126
      { lower := 15796, upper := 15967, witness := RowWitness.topPrime 15791 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good092_checked :
    goodSegmentCheck 177 58 126
      { lower := 15968, upper := 16135, witness := RowWitness.topPrime 15959 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good093_checked :
    goodSegmentCheck 177 58 126
      { lower := 16136, upper := 16303, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good094_checked :
    goodSegmentCheck 177 58 126
      { lower := 16304, upper := 16477, witness := RowWitness.topPrime 16301 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good095_checked :
    goodSegmentCheck 177 58 126
      { lower := 16478, upper := 16653, witness := RowWitness.topPrime 16477 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good096_checked :
    goodSegmentCheck 177 58 126
      { lower := 16654, upper := 16827, witness := RowWitness.topPrime 16651 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good097_checked :
    goodSegmentCheck 177 58 126
      { lower := 16828, upper := 16999, witness := RowWitness.topPrime 16823 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good098_checked :
    goodSegmentCheck 177 58 126
      { lower := 17000, upper := 17169, witness := RowWitness.topPrime 16993 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good099_checked :
    goodSegmentCheck 177 58 126
      { lower := 17170, upper := 17343, witness := RowWitness.topPrime 17167 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good100_checked :
    goodSegmentCheck 177 58 126
      { lower := 17344, upper := 17517, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good101_checked :
    goodSegmentCheck 177 58 126
      { lower := 17518, upper := 17685, witness := RowWitness.topPrime 17509 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good102_checked :
    goodSegmentCheck 177 58 126
      { lower := 17686, upper := 17859, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good103_checked :
    goodSegmentCheck 177 58 126
      { lower := 17860, upper := 18027, witness := RowWitness.topPrime 17851 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good104_checked :
    goodSegmentCheck 177 58 126
      { lower := 18028, upper := 18189, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good105_checked :
    goodSegmentCheck 177 58 126
      { lower := 18190, upper := 18357, witness := RowWitness.topPrime 18181 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good106_checked :
    goodSegmentCheck 177 58 126
      { lower := 18358, upper := 18529, witness := RowWitness.topPrime 18353 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good107_checked :
    goodSegmentCheck 177 58 126
      { lower := 18530, upper := 18699, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good108_checked :
    goodSegmentCheck 177 58 126
      { lower := 18700, upper := 18867, witness := RowWitness.topPrime 18691 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good109_checked :
    goodSegmentCheck 177 58 126
      { lower := 18868, upper := 19035, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good110_checked :
    goodSegmentCheck 177 58 126
      { lower := 19036, upper := 19207, witness := RowWitness.topPrime 19031 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good111_checked :
    goodSegmentCheck 177 58 126
      { lower := 19208, upper := 19383, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good112_checked :
    goodSegmentCheck 177 58 126
      { lower := 19384, upper := 19557, witness := RowWitness.topPrime 19381 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good113_checked :
    goodSegmentCheck 177 58 126
      { lower := 19558, upper := 19729, witness := RowWitness.topPrime 19553 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good114_checked :
    goodSegmentCheck 177 58 126
      { lower := 19730, upper := 19903, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good115_checked :
    goodSegmentCheck 177 58 126
      { lower := 19904, upper := 20067, witness := RowWitness.topPrime 19891 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good116_checked :
    goodSegmentCheck 177 58 126
      { lower := 20068, upper := 20239, witness := RowWitness.topPrime 20063 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good117_checked :
    goodSegmentCheck 177 58 126
      { lower := 20240, upper := 20409, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good118_checked :
    goodSegmentCheck 177 58 126
      { lower := 20410, upper := 20583, witness := RowWitness.topPrime 20407 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good119_checked :
    goodSegmentCheck 177 58 126
      { lower := 20584, upper := 20739, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good120_checked :
    goodSegmentCheck 177 58 126
      { lower := 20740, upper := 20907, witness := RowWitness.topPrime 20731 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good121_checked :
    goodSegmentCheck 177 58 126
      { lower := 20908, upper := 21079, witness := RowWitness.topPrime 20903 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good122_checked :
    goodSegmentCheck 177 58 126
      { lower := 21080, upper := 21243, witness := RowWitness.topPrime 21067 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good123_checked :
    goodSegmentCheck 177 58 126
      { lower := 21244, upper := 21403, witness := RowWitness.topPrime 21227 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good124_checked :
    goodSegmentCheck 177 58 126
      { lower := 21404, upper := 21577, witness := RowWitness.topPrime 21401 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good125_checked :
    goodSegmentCheck 177 58 126
      { lower := 21578, upper := 21753, witness := RowWitness.topPrime 21577 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good126_checked :
    goodSegmentCheck 177 58 126
      { lower := 21754, upper := 21927, witness := RowWitness.topPrime 21751 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good127_checked :
    goodSegmentCheck 177 58 126
      { lower := 21928, upper := 22087, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good128_checked :
    goodSegmentCheck 177 58 126
      { lower := 22088, upper := 22255, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good129_checked :
    goodSegmentCheck 177 58 126
      { lower := 22256, upper := 22423, witness := RowWitness.topPrime 22247 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good130_checked :
    goodSegmentCheck 177 58 126
      { lower := 22424, upper := 22585, witness := RowWitness.topPrime 22409 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good131_checked :
    goodSegmentCheck 177 58 126
      { lower := 22586, upper := 22749, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good132_checked :
    goodSegmentCheck 177 58 126
      { lower := 22750, upper := 22917, witness := RowWitness.topPrime 22741 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good133_checked :
    goodSegmentCheck 177 58 126
      { lower := 22918, upper := 23083, witness := RowWitness.topPrime 22907 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good134_checked :
    goodSegmentCheck 177 58 126
      { lower := 23084, upper := 23257, witness := RowWitness.topPrime 23081 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good135_checked :
    goodSegmentCheck 177 58 126
      { lower := 23258, upper := 23427, witness := RowWitness.topPrime 23251 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good136_checked :
    goodSegmentCheck 177 58 126
      { lower := 23428, upper := 23593, witness := RowWitness.topPrime 23417 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good137_checked :
    goodSegmentCheck 177 58 126
      { lower := 23594, upper := 23769, witness := RowWitness.topPrime 23593 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good138_checked :
    goodSegmentCheck 177 58 126
      { lower := 23770, upper := 23943, witness := RowWitness.topPrime 23767 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good139_checked :
    goodSegmentCheck 177 58 126
      { lower := 23944, upper := 24105, witness := RowWitness.topPrime 23929 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good140_checked :
    goodSegmentCheck 177 58 126
      { lower := 24106, upper := 24279, witness := RowWitness.topPrime 24103 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good141_checked :
    goodSegmentCheck 177 58 126
      { lower := 24280, upper := 24427, witness := RowWitness.topPrime 24251 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good142_checked :
    goodSegmentCheck 177 58 126
      { lower := 24428, upper := 24597, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good143_checked :
    goodSegmentCheck 177 58 126
      { lower := 24598, upper := 24769, witness := RowWitness.topPrime 24593 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good144_checked :
    goodSegmentCheck 177 58 126
      { lower := 24770, upper := 24943, witness := RowWitness.topPrime 24767 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good145_checked :
    goodSegmentCheck 177 58 126
      { lower := 24944, upper := 25119, witness := RowWitness.topPrime 24943 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good146_checked :
    goodSegmentCheck 177 58 126
      { lower := 25120, upper := 25293, witness := RowWitness.topPrime 25117 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good147_checked :
    goodSegmentCheck 177 58 126
      { lower := 25294, upper := 25437, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good148_checked :
    goodSegmentCheck 177 58 126
      { lower := 25438, upper := 25599, witness := RowWitness.topPrime 25423 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good149_checked :
    goodSegmentCheck 177 58 126
      { lower := 25600, upper := 25765, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good150_checked :
    goodSegmentCheck 177 58 126
      { lower := 25766, upper := 25939, witness := RowWitness.topPrime 25763 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good151_checked :
    goodSegmentCheck 177 58 126
      { lower := 25940, upper := 26115, witness := RowWitness.topPrime 25939 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good152_checked :
    goodSegmentCheck 177 58 126
      { lower := 26116, upper := 26289, witness := RowWitness.topPrime 26113 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good153_checked :
    goodSegmentCheck 177 58 126
      { lower := 26290, upper := 26443, witness := RowWitness.topPrime 26267 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good154_checked :
    goodSegmentCheck 177 58 126
      { lower := 26444, upper := 26613, witness := RowWitness.topPrime 26437 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good155_checked :
    goodSegmentCheck 177 58 126
      { lower := 26614, upper := 26773, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good156_checked :
    goodSegmentCheck 177 58 126
      { lower := 26774, upper := 26935, witness := RowWitness.topPrime 26759 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good157_checked :
    goodSegmentCheck 177 58 126
      { lower := 26936, upper := 27103, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good158_checked :
    goodSegmentCheck 177 58 126
      { lower := 27104, upper := 27279, witness := RowWitness.topPrime 27103 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good159_checked :
    goodSegmentCheck 177 58 126
      { lower := 27280, upper := 27453, witness := RowWitness.topPrime 27277 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good160_checked :
    goodSegmentCheck 177 58 126
      { lower := 27454, upper := 27625, witness := RowWitness.topPrime 27449 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good161_checked :
    goodSegmentCheck 177 58 126
      { lower := 27626, upper := 27793, witness := RowWitness.topPrime 27617 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good162_checked :
    goodSegmentCheck 177 58 126
      { lower := 27794, upper := 27969, witness := RowWitness.topPrime 27793 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good163_checked :
    goodSegmentCheck 177 58 126
      { lower := 27970, upper := 28143, witness := RowWitness.topPrime 27967 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good164_checked :
    goodSegmentCheck 177 58 126
      { lower := 28144, upper := 28299, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good165_checked :
    goodSegmentCheck 177 58 126
      { lower := 28300, upper := 28473, witness := RowWitness.topPrime 28297 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good166_checked :
    goodSegmentCheck 177 58 126
      { lower := 28474, upper := 28639, witness := RowWitness.topPrime 28463 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good167_checked :
    goodSegmentCheck 177 58 126
      { lower := 28640, upper := 28807, witness := RowWitness.topPrime 28631 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good168_checked :
    goodSegmentCheck 177 58 126
      { lower := 28808, upper := 28983, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good169_checked :
    goodSegmentCheck 177 58 126
      { lower := 28984, upper := 29155, witness := RowWitness.topPrime 28979 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good170_checked :
    goodSegmentCheck 177 58 126
      { lower := 29156, upper := 29329, witness := RowWitness.topPrime 29153 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good171_checked :
    goodSegmentCheck 177 58 126
      { lower := 29330, upper := 29503, witness := RowWitness.topPrime 29327 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good172_checked :
    goodSegmentCheck 177 58 126
      { lower := 29504, upper := 29677, witness := RowWitness.topPrime 29501 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good173_checked :
    goodSegmentCheck 177 58 126
      { lower := 29678, upper := 29847, witness := RowWitness.topPrime 29671 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good174_checked :
    goodSegmentCheck 177 58 126
      { lower := 29848, upper := 30013, witness := RowWitness.topPrime 29837 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good175_checked :
    goodSegmentCheck 177 58 126
      { lower := 30014, upper := 30189, witness := RowWitness.topPrime 30013 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good176_checked :
    goodSegmentCheck 177 58 126
      { lower := 30190, upper := 30363, witness := RowWitness.topPrime 30187 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good177_checked :
    goodSegmentCheck 177 58 126
      { lower := 30364, upper := 30523, witness := RowWitness.topPrime 30347 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good178_checked :
    goodSegmentCheck 177 58 126
      { lower := 30524, upper := 30693, witness := RowWitness.topPrime 30517 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good179_checked :
    goodSegmentCheck 177 58 126
      { lower := 30694, upper := 30865, witness := RowWitness.topPrime 30689 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good180_checked :
    goodSegmentCheck 177 58 126
      { lower := 30866, upper := 31035, witness := RowWitness.topPrime 30859 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good181_checked :
    goodSegmentCheck 177 58 126
      { lower := 31036, upper := 31151, witness := RowWitness.topPrime 31033 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good182_checked :
    goodSegmentCheck 177 58 126
      { lower := 31213, upper := 31369, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good183_checked :
    goodSegmentCheck 177 58 126
      { lower := 31370, upper := 31389, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good184_checked :
    goodSegmentCheck 177 58 126
      { lower := 31423, upper := 31426, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good185_checked :
    goodSegmentCheck 177 58 126
      { lower := 31827, upper := 31860, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good186_checked :
    goodSegmentCheck 177 58 126
      { lower := 31974, upper := 32003, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good187_checked :
    goodSegmentCheck 177 58 126
      { lower := 33614, upper := 33665, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good188_checked :
    goodSegmentCheck 177 58 126
      { lower := 33708, upper := 33790, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good189_checked :
    goodSegmentCheck 177 58 126
      { lower := 34322, upper := 34495, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good190_checked :
    goodSegmentCheck 177 58 126
      { lower := 34496, upper := 34567, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good191_checked :
    goodSegmentCheck 177 58 126
      { lower := 36517, upper := 36673, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good192_checked :
    goodSegmentCheck 177 58 126
      { lower := 36674, upper := 36677, witness := RowWitness.topPrime 36671 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good193_checked :
    goodSegmentCheck 177 58 126
      { lower := 37303, upper := 37386, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good194_checked :
    goodSegmentCheck 177 58 126
      { lower := 37446, upper := 37479, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good195_checked :
    goodSegmentCheck 177 58 126
      { lower := 37500, upper := 37669, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good196_checked :
    goodSegmentCheck 177 58 126
      { lower := 37670, upper := 37714, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good197_checked :
    goodSegmentCheck 177 58 126
      { lower := 39366, upper := 39480, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good198_checked :
    goodSegmentCheck 177 58 126
      { lower := 40401, upper := 40504, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good199_checked :
    goodSegmentCheck 177 58 126
      { lower := 40931, upper := 41103, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good200_checked :
    goodSegmentCheck 177 58 126
      { lower := 41104, upper := 41107, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good201_checked :
    goodSegmentCheck 177 58 126
      { lower := 45056, upper := 45066, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good202_checked :
    goodSegmentCheck 177 58 126
      { lower := 47045, upper := 47051, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good203_checked :
    goodSegmentCheck 177 58 126
      { lower := 47526, upper := 47697, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good204_checked :
    goodSegmentCheck 177 58 126
      { lower := 47698, upper := 47700, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good205_checked :
    goodSegmentCheck 177 58 126
      { lower := 48013, upper := 48137, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good206_checked :
    goodSegmentCheck 177 58 126
      { lower := 48373, upper := 48547, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good207_checked :
    goodSegmentCheck 177 58 126
      { lower := 48548, upper := 48549, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good208_checked :
    goodSegmentCheck 177 58 126
      { lower := 48778, upper := 48844, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good209_checked :
    goodSegmentCheck 177 58 126
      { lower := 49152, upper := 49315, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good210_checked :
    goodSegmentCheck 177 58 126
      { lower := 49316, upper := 49328, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good211_checked :
    goodSegmentCheck 177 58 126
      { lower := 49379, upper := 49474, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good212_checked :
    goodSegmentCheck 177 58 126
      { lower := 50421, upper := 50586, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good213_checked :
    goodSegmentCheck 177 58 126
      { lower := 51076, upper := 51181, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good214_checked :
    goodSegmentCheck 177 58 126
      { lower := 53138, upper := 53221, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good215_checked :
    goodSegmentCheck 177 58 126
      { lower := 53248, upper := 53415, witness := RowWitness.topPrime 53239 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good216_checked :
    goodSegmentCheck 177 58 126
      { lower := 53416, upper := 53424, witness := RowWitness.topPrime 53411 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good217_checked :
    goodSegmentCheck 177 58 126
      { lower := 54043, upper := 54044, witness := RowWitness.topPrime 54037 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good218_checked :
    goodSegmentCheck 177 58 126
      { lower := 55451, upper := 55617, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good219_checked :
    goodSegmentCheck 177 58 126
      { lower := 55618, upper := 55623, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good220_checked :
    goodSegmentCheck 177 58 126
      { lower := 56307, upper := 56345, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good221_checked :
    goodSegmentCheck 177 58 126
      { lower := 56454, upper := 56483, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good222_checked :
    goodSegmentCheck 177 58 126
      { lower := 57245, upper := 57298, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good223_checked :
    goodSegmentCheck 177 58 126
      { lower := 57344, upper := 57421, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_good224_checked :
    goodSegmentCheck 177 58 126
      { lower := 58619, upper := 58740, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good225_checked :
    goodSegmentCheck 177 58 126
      { lower := 59049, upper := 59132, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good226_checked :
    goodSegmentCheck 177 58 126
      { lower := 68694, upper := 68820, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good227_checked :
    goodSegmentCheck 177 58 126
      { lower := 71289, upper := 71463, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good228_checked :
    goodSegmentCheck 177 58 126
      { lower := 71464, upper := 71465, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good229_checked :
    goodSegmentCheck 177 58 126
      { lower := 73167, upper := 73178, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good230_checked :
    goodSegmentCheck 177 58 126
      { lower := 73205, upper := 73343, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good231_checked :
    goodSegmentCheck 177 58 126
      { lower := 83667, upper := 83697, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good232_checked :
    goodSegmentCheck 177 58 126
      { lower := 85805, upper := 85859, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good233_checked :
    goodSegmentCheck 177 58 126
      { lower := 89383, upper := 89549, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good234_checked :
    goodSegmentCheck 177 58 126
      { lower := 93845, upper := 93926, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good235_checked :
    goodSegmentCheck 177 58 126
      { lower := 96774, upper := 96781, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good236_checked :
    goodSegmentCheck 177 58 126
      { lower := 103041, upper := 103142, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good237_checked :
    goodSegmentCheck 177 58 126
      { lower := 109503, upper := 109551, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row177_good238_checked :
    goodSegmentCheck 177 58 126
      { lower := 148955, upper := 149053, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 177) (r := 58) (s := 126) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_good238_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_goods_checked :
    row177.goods.all (goodSegmentCheck row177.height.i row177.height.r row177.height.s) = true := by
  change row177_goods.all (goodSegmentCheck 177 58 126) = true
  simp only [row177_goods, List.all_cons, List.all_nil,
    row177_good000_checked,
    row177_good001_checked,
    row177_good002_checked,
    row177_good003_checked,
    row177_good004_checked,
    row177_good005_checked,
    row177_good006_checked,
    row177_good007_checked,
    row177_good008_checked,
    row177_good009_checked,
    row177_good010_checked,
    row177_good011_checked,
    row177_good012_checked,
    row177_good013_checked,
    row177_good014_checked,
    row177_good015_checked,
    row177_good016_checked,
    row177_good017_checked,
    row177_good018_checked,
    row177_good019_checked,
    row177_good020_checked,
    row177_good021_checked,
    row177_good022_checked,
    row177_good023_checked,
    row177_good024_checked,
    row177_good025_checked,
    row177_good026_checked,
    row177_good027_checked,
    row177_good028_checked,
    row177_good029_checked,
    row177_good030_checked,
    row177_good031_checked,
    row177_good032_checked,
    row177_good033_checked,
    row177_good034_checked,
    row177_good035_checked,
    row177_good036_checked,
    row177_good037_checked,
    row177_good038_checked,
    row177_good039_checked,
    row177_good040_checked,
    row177_good041_checked,
    row177_good042_checked,
    row177_good043_checked,
    row177_good044_checked,
    row177_good045_checked,
    row177_good046_checked,
    row177_good047_checked,
    row177_good048_checked,
    row177_good049_checked,
    row177_good050_checked,
    row177_good051_checked,
    row177_good052_checked,
    row177_good053_checked,
    row177_good054_checked,
    row177_good055_checked,
    row177_good056_checked,
    row177_good057_checked,
    row177_good058_checked,
    row177_good059_checked,
    row177_good060_checked,
    row177_good061_checked,
    row177_good062_checked,
    row177_good063_checked,
    row177_good064_checked,
    row177_good065_checked,
    row177_good066_checked,
    row177_good067_checked,
    row177_good068_checked,
    row177_good069_checked,
    row177_good070_checked,
    row177_good071_checked,
    row177_good072_checked,
    row177_good073_checked,
    row177_good074_checked,
    row177_good075_checked,
    row177_good076_checked,
    row177_good077_checked,
    row177_good078_checked,
    row177_good079_checked,
    row177_good080_checked,
    row177_good081_checked,
    row177_good082_checked,
    row177_good083_checked,
    row177_good084_checked,
    row177_good085_checked,
    row177_good086_checked,
    row177_good087_checked,
    row177_good088_checked,
    row177_good089_checked,
    row177_good090_checked,
    row177_good091_checked,
    row177_good092_checked,
    row177_good093_checked,
    row177_good094_checked,
    row177_good095_checked,
    row177_good096_checked,
    row177_good097_checked,
    row177_good098_checked,
    row177_good099_checked,
    row177_good100_checked,
    row177_good101_checked,
    row177_good102_checked,
    row177_good103_checked,
    row177_good104_checked,
    row177_good105_checked,
    row177_good106_checked,
    row177_good107_checked,
    row177_good108_checked,
    row177_good109_checked,
    row177_good110_checked,
    row177_good111_checked,
    row177_good112_checked,
    row177_good113_checked,
    row177_good114_checked,
    row177_good115_checked,
    row177_good116_checked,
    row177_good117_checked,
    row177_good118_checked,
    row177_good119_checked,
    row177_good120_checked,
    row177_good121_checked,
    row177_good122_checked,
    row177_good123_checked,
    row177_good124_checked,
    row177_good125_checked,
    row177_good126_checked,
    row177_good127_checked,
    row177_good128_checked,
    row177_good129_checked,
    row177_good130_checked,
    row177_good131_checked,
    row177_good132_checked,
    row177_good133_checked,
    row177_good134_checked,
    row177_good135_checked,
    row177_good136_checked,
    row177_good137_checked,
    row177_good138_checked,
    row177_good139_checked,
    row177_good140_checked,
    row177_good141_checked,
    row177_good142_checked,
    row177_good143_checked,
    row177_good144_checked,
    row177_good145_checked,
    row177_good146_checked,
    row177_good147_checked,
    row177_good148_checked,
    row177_good149_checked,
    row177_good150_checked,
    row177_good151_checked,
    row177_good152_checked,
    row177_good153_checked,
    row177_good154_checked,
    row177_good155_checked,
    row177_good156_checked,
    row177_good157_checked,
    row177_good158_checked,
    row177_good159_checked,
    row177_good160_checked,
    row177_good161_checked,
    row177_good162_checked,
    row177_good163_checked,
    row177_good164_checked,
    row177_good165_checked,
    row177_good166_checked,
    row177_good167_checked,
    row177_good168_checked,
    row177_good169_checked,
    row177_good170_checked,
    row177_good171_checked,
    row177_good172_checked,
    row177_good173_checked,
    row177_good174_checked,
    row177_good175_checked,
    row177_good176_checked,
    row177_good177_checked,
    row177_good178_checked,
    row177_good179_checked,
    row177_good180_checked,
    row177_good181_checked,
    row177_good182_checked,
    row177_good183_checked,
    row177_good184_checked,
    row177_good185_checked,
    row177_good186_checked,
    row177_good187_checked,
    row177_good188_checked,
    row177_good189_checked,
    row177_good190_checked,
    row177_good191_checked,
    row177_good192_checked,
    row177_good193_checked,
    row177_good194_checked,
    row177_good195_checked,
    row177_good196_checked,
    row177_good197_checked,
    row177_good198_checked,
    row177_good199_checked,
    row177_good200_checked,
    row177_good201_checked,
    row177_good202_checked,
    row177_good203_checked,
    row177_good204_checked,
    row177_good205_checked,
    row177_good206_checked,
    row177_good207_checked,
    row177_good208_checked,
    row177_good209_checked,
    row177_good210_checked,
    row177_good211_checked,
    row177_good212_checked,
    row177_good213_checked,
    row177_good214_checked,
    row177_good215_checked,
    row177_good216_checked,
    row177_good217_checked,
    row177_good218_checked,
    row177_good219_checked,
    row177_good220_checked,
    row177_good221_checked,
    row177_good222_checked,
    row177_good223_checked,
    row177_good224_checked,
    row177_good225_checked,
    row177_good226_checked,
    row177_good227_checked,
    row177_good228_checked,
    row177_good229_checked,
    row177_good230_checked,
    row177_good231_checked,
    row177_good232_checked,
    row177_good233_checked,
    row177_good234_checked,
    row177_good235_checked,
    row177_good236_checked,
    row177_good237_checked,
    row177_good238_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_registered :
    decide (row177.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row177_small_checked :
    coverCheck (2 * row177.height.i + 2) (row177.height.i * (row177.height.i - 1) - 1)
      (row177.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row177_layerCover_checked :
    coverCheck (row177.height.i * (row177.height.i - 1)) (row177.height.n0 - 1)
      (row177.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row177_bounds : List NatInterval :=
  [(356, 529), (530, 699), (700, 867), (868, 1039), (1040, 1215), (1216, 1389), (1390, 1557), (1558, 1729), (1730, 1899), (1900, 2065), (2066, 2239), (2240, 2415), (2416, 2587), (2588, 2755), (2756, 2929), (2930, 3103), (3104, 3265), (3266, 3435), (3436, 3609), (3610, 3783), (3784, 3955), (3956, 4123), (4124, 4287), (4288, 4459), (4460, 4633), (4634, 4797), (4798, 4969), (4970, 5145), (5146, 5295), (5296, 5457), (5458, 5625), (5626, 5799), (5800, 5967), (5968, 6129), (6130, 6297), (6298, 6463), (6464, 6627), (6628, 6795), (6796, 6969), (6970, 7143), (7144, 7305), (7306, 7473), (7474, 7635), (7636, 7797), (7798, 7969), (7970, 8139), (8140, 8299), (8300, 8473), (8474, 8643), (8644, 8817), (8818, 8983), (8984, 9147), (9148, 9313), (9314, 9487), (9488, 9655), (9656, 9825), (9826, 9993), (9994, 10149), (10150, 10317), (10318, 10489), (10490, 10663), (10664, 10839), (10840, 11013), (11014, 11179), (11180, 11353), (11354, 11529), (11530, 11703), (11704, 11877), (11878, 12043), (12044, 12219), (12220, 12387), (12388, 12555), (12556, 12729), (12730, 12897), (12898, 13069), (13070, 13239), (13240, 13405), (13406, 13575), (13576, 13743), (13744, 13905), (13906, 14079), (14080, 14247), (14248, 14419), (14420, 14595), (14596, 14769), (14770, 14943), (14944, 15115), (15116, 15283), (15284, 15453), (15454, 15627), (15628, 15795), (15796, 15967), (15968, 16135), (16136, 16303), (16304, 16477), (16478, 16653), (16654, 16827), (16828, 16999), (17000, 17169), (17170, 17343), (17344, 17517), (17518, 17685), (17686, 17859), (17860, 18027), (18028, 18189), (18190, 18357), (18358, 18529), (18530, 18699), (18700, 18867), (18868, 19035), (19036, 19207), (19208, 19383), (19384, 19557), (19558, 19729), (19730, 19903), (19904, 20067), (20068, 20239), (20240, 20409), (20410, 20583), (20584, 20739), (20740, 20907), (20908, 21079), (21080, 21243), (21244, 21403), (21404, 21577), (21578, 21753), (21754, 21927), (21928, 22087), (22088, 22255), (22256, 22423), (22424, 22585), (22586, 22749), (22750, 22917), (22918, 23083), (23084, 23257), (23258, 23427), (23428, 23593), (23594, 23769), (23770, 23943), (23944, 24105), (24106, 24279), (24280, 24427), (24428, 24597), (24598, 24769), (24770, 24943), (24944, 25119), (25120, 25293), (25294, 25437), (25438, 25599), (25600, 25765), (25766, 25939), (25940, 26115), (26116, 26289), (26290, 26443), (26444, 26613), (26614, 26773), (26774, 26935), (26936, 27103), (27104, 27279), (27280, 27453), (27454, 27625), (27626, 27793), (27794, 27969), (27970, 28143), (28144, 28299), (28300, 28473), (28474, 28639), (28640, 28807), (28808, 28983), (28984, 29155), (29156, 29329), (29330, 29503), (29504, 29677), (29678, 29847), (29848, 30013), (30014, 30189), (30190, 30363), (30364, 30523), (30524, 30693), (30694, 30865), (30866, 31035), (31036, 31151), (31213, 31369), (31370, 31389), (31423, 31426), (31827, 31860), (31974, 32003), (33614, 33665), (33708, 33790), (34322, 34495), (34496, 34567), (36517, 36673), (36674, 36677), (37303, 37386), (37446, 37479), (37500, 37669), (37670, 37714), (39366, 39480), (40401, 40504), (40931, 41103), (41104, 41107), (45056, 45066), (47045, 47051), (47526, 47697), (47698, 47700), (48013, 48137), (48373, 48547), (48548, 48549), (48778, 48844), (49152, 49315), (49316, 49328), (49379, 49474), (50421, 50586), (51076, 51181), (53138, 53221), (53248, 53415), (53416, 53424), (54043, 54044), (55451, 55617), (55618, 55623), (56307, 56345), (56454, 56483), (57245, 57298), (57344, 57421), (58619, 58740), (59049, 59132), (68694, 68820), (71289, 71463), (71464, 71465), (73167, 73178), (73205, 73343), (83667, 83697), (85805, 85859), (89383, 89549), (93845, 93926), (96774, 96781), (103041, 103142), (109503, 109551), (148955, 149053)]

theorem row177_bounds_eq : row177.goods.map goodSegmentBounds = row177_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row177_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32944), (2, 36864, 37040), (2, 40960, 41136), (2, 45056, 45232), (2, 49152, 49328), (2, 53248, 53424), (2, 32768, 32944), (2, 40960, 41136), (2, 49152, 49328), (2, 57344, 57520), (2, 32768, 32944), (2, 49152, 49328), (2, 32768, 32944), (3, 39366, 39542), (3, 59049, 59225), (3, 59049, 59225), (5, 31250, 31426), (5, 34375, 34551), (5, 37500, 37676), (5, 40625, 40801), (5, 31250, 31426), (5, 46875, 47051), (7, 31213, 31389), (7, 33614, 33790), (7, 50421, 50597), (11, 43923, 44099), (11, 58564, 58740), (13, 57122, 57298), (17, 34391, 34567), (17, 39304, 39480), (17, 44217, 44393), (17, 49130, 49306), (17, 54043, 54219), (17, 58956, 59132), (19, 34295, 34471), (19, 41154, 41330), (19, 48013, 48189), (19, 54872, 55048), (19, 61731, 61907), (23, 36501, 36677), (23, 48668, 48844), (23, 60835, 61011), (29, 48778, 48954), (31, 59582, 59758), (37, 50653, 50829), (53, 33708, 33884), (53, 36517, 36693), (61, 33489, 33665), (61, 37210, 37386), (61, 40931, 41107), (61, 44652, 44828), (61, 48373, 48549), (67, 31423, 31599), (67, 35912, 36088), (67, 40401, 40577), (67, 44890, 45066), (67, 49379, 49555), (67, 53868, 54044), (67, 58357, 58533), (71, 35287, 35463), (71, 40328, 40504), (71, 45369, 45545), (71, 50410, 50586), (71, 55451, 55627), (71, 60492, 60668), (73, 31974, 32150), (73, 37303, 37479), (73, 42632, 42808), (73, 47961, 48137), (73, 53290, 53466), (73, 58619, 58795), (79, 31205, 31381), (79, 37446, 37622), (79, 43687, 43863), (79, 49928, 50104), (79, 56169, 56345), (83, 34445, 34621), (83, 41334, 41510), (83, 48223, 48399), (83, 55112, 55288), (83, 62001, 62177), (89, 31684, 31860), (89, 39605, 39781), (89, 47526, 47702), (89, 55447, 55623), (97, 37636, 37812), (97, 47045, 47221), (97, 56454, 56630), (101, 40804, 40980), (101, 51005, 51181), (101, 61206, 61382), (103, 31827, 32003), (103, 42436, 42612), (103, 53045, 53221), (107, 34347, 34523), (107, 45796, 45972), (107, 57245, 57421), (109, 35643, 35819), (109, 47524, 47700), (109, 59405, 59581), (113, 38307, 38483), (113, 51076, 51252), (127, 32258, 32434), (127, 48387, 48563), (131, 34322, 34498), (131, 51483, 51659), (137, 37538, 37714), (137, 56307, 56483), (139, 38642, 38818), (139, 57963, 58139), (149, 44402, 44578), (151, 45602, 45778), (157, 49298, 49474), (163, 53138, 53314), (167, 55778, 55954), (173, 59858, 60034)]

def row177_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32944), (2, 36864, 37040), (2, 40960, 41136), (2, 45056, 45232), (2, 49152, 49328), (2, 53248, 53424), (2, 32768, 32944), (2, 40960, 41136), (2, 49152, 49328), (2, 57344, 57520), (2, 32768, 32944), (2, 49152, 49328), (2, 32768, 32944), (3, 39366, 39542), (3, 59049, 59225), (3, 59049, 59225)]

def row177_layer000_block001 : List ColouredInterval :=
  [(5, 31250, 31426), (5, 34375, 34551), (5, 37500, 37676), (5, 40625, 40801), (5, 31250, 31426), (5, 46875, 47051), (7, 31213, 31389), (7, 33614, 33790), (7, 50421, 50597), (11, 43923, 44099), (11, 58564, 58740), (13, 57122, 57298), (17, 34391, 34567), (17, 39304, 39480), (17, 44217, 44393), (17, 49130, 49306)]

def row177_layer000_block002 : List ColouredInterval :=
  [(17, 54043, 54219), (17, 58956, 59132), (19, 34295, 34471), (19, 41154, 41330), (19, 48013, 48189), (19, 54872, 55048), (19, 61731, 61907), (23, 36501, 36677), (23, 48668, 48844), (23, 60835, 61011), (29, 48778, 48954), (31, 59582, 59758), (37, 50653, 50829), (53, 33708, 33884), (53, 36517, 36693), (61, 33489, 33665)]

def row177_layer000_block003 : List ColouredInterval :=
  [(61, 37210, 37386), (61, 40931, 41107), (61, 44652, 44828), (61, 48373, 48549), (67, 31423, 31599), (67, 35912, 36088), (67, 40401, 40577), (67, 44890, 45066), (67, 49379, 49555), (67, 53868, 54044), (67, 58357, 58533), (71, 35287, 35463), (71, 40328, 40504), (71, 45369, 45545), (71, 50410, 50586), (71, 55451, 55627)]

def row177_layer000_block004 : List ColouredInterval :=
  [(71, 60492, 60668), (73, 31974, 32150), (73, 37303, 37479), (73, 42632, 42808), (73, 47961, 48137), (73, 53290, 53466), (73, 58619, 58795), (79, 31205, 31381), (79, 37446, 37622), (79, 43687, 43863), (79, 49928, 50104), (79, 56169, 56345), (83, 34445, 34621), (83, 41334, 41510), (83, 48223, 48399), (83, 55112, 55288)]

def row177_layer000_block005 : List ColouredInterval :=
  [(83, 62001, 62177), (89, 31684, 31860), (89, 39605, 39781), (89, 47526, 47702), (89, 55447, 55623), (97, 37636, 37812), (97, 47045, 47221), (97, 56454, 56630), (101, 40804, 40980), (101, 51005, 51181), (101, 61206, 61382), (103, 31827, 32003), (103, 42436, 42612), (103, 53045, 53221), (107, 34347, 34523), (107, 45796, 45972)]

def row177_layer000_block006 : List ColouredInterval :=
  [(107, 57245, 57421), (109, 35643, 35819), (109, 47524, 47700), (109, 59405, 59581), (113, 38307, 38483), (113, 51076, 51252), (127, 32258, 32434), (127, 48387, 48563), (131, 34322, 34498), (131, 51483, 51659), (137, 37538, 37714), (137, 56307, 56483), (139, 38642, 38818), (139, 57963, 58139), (149, 44402, 44578), (151, 45602, 45778)]

def row177_layer000_block007 : List ColouredInterval :=
  [(157, 49298, 49474), (163, 53138, 53314), (167, 55778, 55954), (173, 59858, 60034)]

def row177_layer000_chunks : List (List ColouredInterval) :=
  [row177_layer000_block000, row177_layer000_block001, row177_layer000_block002, row177_layer000_block003, row177_layer000_block004, row177_layer000_block005, row177_layer000_block006, row177_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_arithmetic : LayerArithmeticValid row177.height { lower := 31152, upper := 62304, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_enumeration :
    activePowerIntervalList 177 13 31152 62304 = row177_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_pairs000 :
    row177_layer000_block000.all (fun I => row177_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row177_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_pairs001 :
    row177_layer000_block001.all (fun I => row177_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row177_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_pairs002 :
    row177_layer000_block002.all (fun I => row177_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row177_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_pairs003 :
    row177_layer000_block003.all (fun I => row177_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row177_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_pairs004 :
    row177_layer000_block004.all (fun I => row177_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row177_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_pairs005 :
    row177_layer000_block005.all (fun I => row177_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row177_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_pairs006 :
    row177_layer000_block006.all (fun I => row177_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row177_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_pairs007 :
    row177_layer000_block007.all (fun I => row177_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row177_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_chunks_eq : row177_layer000_chunks.flatten = row177_layer000_intervals := by
  rfl

theorem row177_layer000_pairs : pairCoverCheck row177_layer000_intervals row177_bounds = true := by
  apply pairCoverCheck_of_chunks row177_layer000_chunks_eq
  intro block hblock
  simp only [row177_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row177_layer000_pairs000
  · exact row177_layer000_pairs001
  · exact row177_layer000_pairs002
  · exact row177_layer000_pairs003
  · exact row177_layer000_pairs004
  · exact row177_layer000_pairs005
  · exact row177_layer000_pairs006
  · exact row177_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer000_checked :
    coverLayerCheck row177.height row177.goods { lower := 31152, upper := 62304, M := 13 } = true := by
  exact coverLayerCheck_of_parts row177_layer000_arithmetic row177_layer000_enumeration row177_bounds_eq row177_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer000_checked
