import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row176_height : HeightCertificateDatum := { i := 176, r := 58, s := 125, n0Power10 := 7 }

def row176_goods : List GoodSegment := [
  { lower := 354, upper := 528, witness := RowWitness.topPrime 353 },
  { lower := 529, upper := 698, witness := RowWitness.topPrime 523 },
  { lower := 699, upper := 866, witness := RowWitness.topPrime 691 },
  { lower := 867, upper := 1038, witness := RowWitness.topPrime 863 },
  { lower := 1039, upper := 1214, witness := RowWitness.topPrime 1039 },
  { lower := 1215, upper := 1388, witness := RowWitness.topPrime 1213 },
  { lower := 1389, upper := 1556, witness := RowWitness.topPrime 1381 },
  { lower := 1557, upper := 1728, witness := RowWitness.topPrime 1553 },
  { lower := 1729, upper := 1898, witness := RowWitness.topPrime 1723 },
  { lower := 1899, upper := 2064, witness := RowWitness.topPrime 1889 },
  { lower := 2065, upper := 2238, witness := RowWitness.topPrime 2063 },
  { lower := 2239, upper := 2414, witness := RowWitness.topPrime 2239 },
  { lower := 2415, upper := 2586, witness := RowWitness.topPrime 2411 },
  { lower := 2587, upper := 2754, witness := RowWitness.topPrime 2579 },
  { lower := 2755, upper := 2928, witness := RowWitness.topPrime 2753 },
  { lower := 2929, upper := 3102, witness := RowWitness.topPrime 2927 },
  { lower := 3103, upper := 3264, witness := RowWitness.topPrime 3089 },
  { lower := 3265, upper := 3434, witness := RowWitness.topPrime 3259 },
  { lower := 3435, upper := 3608, witness := RowWitness.topPrime 3433 },
  { lower := 3609, upper := 3782, witness := RowWitness.topPrime 3607 },
  { lower := 3783, upper := 3954, witness := RowWitness.topPrime 3779 },
  { lower := 3955, upper := 4122, witness := RowWitness.topPrime 3947 },
  { lower := 4123, upper := 4286, witness := RowWitness.topPrime 4111 },
  { lower := 4287, upper := 4458, witness := RowWitness.topPrime 4283 },
  { lower := 4459, upper := 4632, witness := RowWitness.topPrime 4457 },
  { lower := 4633, upper := 4796, witness := RowWitness.topPrime 4621 },
  { lower := 4797, upper := 4968, witness := RowWitness.topPrime 4793 },
  { lower := 4969, upper := 5144, witness := RowWitness.topPrime 4969 },
  { lower := 5145, upper := 5294, witness := RowWitness.topPrime 5119 },
  { lower := 5295, upper := 5456, witness := RowWitness.topPrime 5281 },
  { lower := 5457, upper := 5624, witness := RowWitness.topPrime 5449 },
  { lower := 5625, upper := 5798, witness := RowWitness.topPrime 5623 },
  { lower := 5799, upper := 5966, witness := RowWitness.topPrime 5791 },
  { lower := 5967, upper := 6128, witness := RowWitness.topPrime 5953 },
  { lower := 6129, upper := 6296, witness := RowWitness.topPrime 6121 },
  { lower := 6297, upper := 6462, witness := RowWitness.topPrime 6287 },
  { lower := 6463, upper := 6626, witness := RowWitness.topPrime 6451 },
  { lower := 6627, upper := 6794, witness := RowWitness.topPrime 6619 },
  { lower := 6795, upper := 6968, witness := RowWitness.topPrime 6793 },
  { lower := 6969, upper := 7142, witness := RowWitness.topPrime 6967 },
  { lower := 7143, upper := 7304, witness := RowWitness.topPrime 7129 },
  { lower := 7305, upper := 7472, witness := RowWitness.topPrime 7297 },
  { lower := 7473, upper := 7634, witness := RowWitness.topPrime 7459 },
  { lower := 7635, upper := 7796, witness := RowWitness.topPrime 7621 },
  { lower := 7797, upper := 7968, witness := RowWitness.topPrime 7793 },
  { lower := 7969, upper := 8138, witness := RowWitness.topPrime 7963 },
  { lower := 8139, upper := 8298, witness := RowWitness.topPrime 8123 },
  { lower := 8299, upper := 8472, witness := RowWitness.topPrime 8297 },
  { lower := 8473, upper := 8642, witness := RowWitness.topPrime 8467 },
  { lower := 8643, upper := 8816, witness := RowWitness.topPrime 8641 },
  { lower := 8817, upper := 8982, witness := RowWitness.topPrime 8807 },
  { lower := 8983, upper := 9146, witness := RowWitness.topPrime 8971 },
  { lower := 9147, upper := 9312, witness := RowWitness.topPrime 9137 },
  { lower := 9313, upper := 9486, witness := RowWitness.topPrime 9311 },
  { lower := 9487, upper := 9654, witness := RowWitness.topPrime 9479 },
  { lower := 9655, upper := 9824, witness := RowWitness.topPrime 9649 },
  { lower := 9825, upper := 9992, witness := RowWitness.topPrime 9817 },
  { lower := 9993, upper := 10148, witness := RowWitness.topPrime 9973 },
  { lower := 10149, upper := 10316, witness := RowWitness.topPrime 10141 },
  { lower := 10317, upper := 10488, witness := RowWitness.topPrime 10313 },
  { lower := 10489, upper := 10662, witness := RowWitness.topPrime 10487 },
  { lower := 10663, upper := 10838, witness := RowWitness.topPrime 10663 },
  { lower := 10839, upper := 11012, witness := RowWitness.topPrime 10837 },
  { lower := 11013, upper := 11178, witness := RowWitness.topPrime 11003 },
  { lower := 11179, upper := 11352, witness := RowWitness.topPrime 11177 },
  { lower := 11353, upper := 11528, witness := RowWitness.topPrime 11353 },
  { lower := 11529, upper := 11702, witness := RowWitness.topPrime 11527 },
  { lower := 11703, upper := 11876, witness := RowWitness.topPrime 11701 },
  { lower := 11877, upper := 12042, witness := RowWitness.topPrime 11867 },
  { lower := 12043, upper := 12218, witness := RowWitness.topPrime 12043 },
  { lower := 12219, upper := 12386, witness := RowWitness.topPrime 12211 },
  { lower := 12387, upper := 12554, witness := RowWitness.topPrime 12379 },
  { lower := 12555, upper := 12728, witness := RowWitness.topPrime 12553 },
  { lower := 12729, upper := 12896, witness := RowWitness.topPrime 12721 },
  { lower := 12897, upper := 13068, witness := RowWitness.topPrime 12893 },
  { lower := 13069, upper := 13238, witness := RowWitness.topPrime 13063 },
  { lower := 13239, upper := 13404, witness := RowWitness.topPrime 13229 },
  { lower := 13405, upper := 13574, witness := RowWitness.topPrime 13399 },
  { lower := 13575, upper := 13742, witness := RowWitness.topPrime 13567 },
  { lower := 13743, upper := 13904, witness := RowWitness.topPrime 13729 },
  { lower := 13905, upper := 14078, witness := RowWitness.topPrime 13903 },
  { lower := 14079, upper := 14246, witness := RowWitness.topPrime 14071 },
  { lower := 14247, upper := 14418, witness := RowWitness.topPrime 14243 },
  { lower := 14419, upper := 14594, witness := RowWitness.topPrime 14419 },
  { lower := 14595, upper := 14768, witness := RowWitness.topPrime 14593 },
  { lower := 14769, upper := 14942, witness := RowWitness.topPrime 14767 },
  { lower := 14943, upper := 15114, witness := RowWitness.topPrime 14939 },
  { lower := 15115, upper := 15282, witness := RowWitness.topPrime 15107 },
  { lower := 15283, upper := 15452, witness := RowWitness.topPrime 15277 },
  { lower := 15453, upper := 15626, witness := RowWitness.topPrime 15451 },
  { lower := 15627, upper := 15794, witness := RowWitness.topPrime 15619 },
  { lower := 15795, upper := 15966, witness := RowWitness.topPrime 15791 },
  { lower := 15967, upper := 16134, witness := RowWitness.topPrime 15959 },
  { lower := 16135, upper := 16302, witness := RowWitness.topPrime 16127 },
  { lower := 16303, upper := 16476, witness := RowWitness.topPrime 16301 },
  { lower := 16477, upper := 16652, witness := RowWitness.topPrime 16477 },
  { lower := 16653, upper := 16826, witness := RowWitness.topPrime 16651 },
  { lower := 16827, upper := 16998, witness := RowWitness.topPrime 16823 },
  { lower := 16999, upper := 17168, witness := RowWitness.topPrime 16993 },
  { lower := 17169, upper := 17342, witness := RowWitness.topPrime 17167 },
  { lower := 17343, upper := 17516, witness := RowWitness.topPrime 17341 },
  { lower := 17517, upper := 17684, witness := RowWitness.topPrime 17509 },
  { lower := 17685, upper := 17858, witness := RowWitness.topPrime 17683 },
  { lower := 17859, upper := 18026, witness := RowWitness.topPrime 17851 },
  { lower := 18027, upper := 18188, witness := RowWitness.topPrime 18013 },
  { lower := 18189, upper := 18356, witness := RowWitness.topPrime 18181 },
  { lower := 18357, upper := 18528, witness := RowWitness.topPrime 18353 },
  { lower := 18529, upper := 18698, witness := RowWitness.topPrime 18523 },
  { lower := 18699, upper := 18866, witness := RowWitness.topPrime 18691 },
  { lower := 18867, upper := 19034, witness := RowWitness.topPrime 18859 },
  { lower := 19035, upper := 19206, witness := RowWitness.topPrime 19031 },
  { lower := 19207, upper := 19382, witness := RowWitness.topPrime 19207 },
  { lower := 19383, upper := 19556, witness := RowWitness.topPrime 19381 },
  { lower := 19557, upper := 19728, witness := RowWitness.topPrime 19553 },
  { lower := 19729, upper := 19902, witness := RowWitness.topPrime 19727 },
  { lower := 19903, upper := 20066, witness := RowWitness.topPrime 19891 },
  { lower := 20067, upper := 20238, witness := RowWitness.topPrime 20063 },
  { lower := 20239, upper := 20408, witness := RowWitness.topPrime 20233 },
  { lower := 20409, upper := 20582, witness := RowWitness.topPrime 20407 },
  { lower := 20583, upper := 20738, witness := RowWitness.topPrime 20563 },
  { lower := 20739, upper := 20906, witness := RowWitness.topPrime 20731 },
  { lower := 20907, upper := 21078, witness := RowWitness.topPrime 20903 },
  { lower := 21079, upper := 21242, witness := RowWitness.topPrime 21067 },
  { lower := 21243, upper := 21402, witness := RowWitness.topPrime 21227 },
  { lower := 21403, upper := 21576, witness := RowWitness.topPrime 21401 },
  { lower := 21577, upper := 21752, witness := RowWitness.topPrime 21577 },
  { lower := 21753, upper := 21926, witness := RowWitness.topPrime 21751 },
  { lower := 21927, upper := 22086, witness := RowWitness.topPrime 21911 },
  { lower := 22087, upper := 22254, witness := RowWitness.topPrime 22079 },
  { lower := 22255, upper := 22422, witness := RowWitness.topPrime 22247 },
  { lower := 22423, upper := 22584, witness := RowWitness.topPrime 22409 },
  { lower := 22585, upper := 22748, witness := RowWitness.topPrime 22573 },
  { lower := 22749, upper := 22916, witness := RowWitness.topPrime 22741 },
  { lower := 22917, upper := 23082, witness := RowWitness.topPrime 22907 },
  { lower := 23083, upper := 23256, witness := RowWitness.topPrime 23081 },
  { lower := 23257, upper := 23426, witness := RowWitness.topPrime 23251 },
  { lower := 23427, upper := 23592, witness := RowWitness.topPrime 23417 },
  { lower := 23593, upper := 23768, witness := RowWitness.topPrime 23593 },
  { lower := 23769, upper := 23942, witness := RowWitness.topPrime 23767 },
  { lower := 23943, upper := 24104, witness := RowWitness.topPrime 23929 },
  { lower := 24105, upper := 24278, witness := RowWitness.topPrime 24103 },
  { lower := 24279, upper := 24426, witness := RowWitness.topPrime 24251 },
  { lower := 24427, upper := 24596, witness := RowWitness.topPrime 24421 },
  { lower := 24597, upper := 24768, witness := RowWitness.topPrime 24593 },
  { lower := 24769, upper := 24942, witness := RowWitness.topPrime 24767 },
  { lower := 24943, upper := 25118, witness := RowWitness.topPrime 24943 },
  { lower := 25119, upper := 25292, witness := RowWitness.topPrime 25117 },
  { lower := 25293, upper := 25436, witness := RowWitness.topPrime 25261 },
  { lower := 25437, upper := 25598, witness := RowWitness.topPrime 25423 },
  { lower := 25599, upper := 25764, witness := RowWitness.topPrime 25589 },
  { lower := 25765, upper := 25938, witness := RowWitness.topPrime 25763 },
  { lower := 25939, upper := 26114, witness := RowWitness.topPrime 25939 },
  { lower := 26115, upper := 26288, witness := RowWitness.topPrime 26113 },
  { lower := 26289, upper := 26442, witness := RowWitness.topPrime 26267 },
  { lower := 26443, upper := 26612, witness := RowWitness.topPrime 26437 },
  { lower := 26613, upper := 26772, witness := RowWitness.topPrime 26597 },
  { lower := 26773, upper := 26934, witness := RowWitness.topPrime 26759 },
  { lower := 26935, upper := 27102, witness := RowWitness.topPrime 26927 },
  { lower := 27103, upper := 27278, witness := RowWitness.topPrime 27103 },
  { lower := 27279, upper := 27452, witness := RowWitness.topPrime 27277 },
  { lower := 27453, upper := 27624, witness := RowWitness.topPrime 27449 },
  { lower := 27625, upper := 27792, witness := RowWitness.topPrime 27617 },
  { lower := 27793, upper := 27968, witness := RowWitness.topPrime 27793 },
  { lower := 27969, upper := 28142, witness := RowWitness.topPrime 27967 },
  { lower := 28143, upper := 28298, witness := RowWitness.topPrime 28123 },
  { lower := 28299, upper := 28472, witness := RowWitness.topPrime 28297 },
  { lower := 28473, upper := 28638, witness := RowWitness.topPrime 28463 },
  { lower := 28639, upper := 28806, witness := RowWitness.topPrime 28631 },
  { lower := 28807, upper := 28982, witness := RowWitness.topPrime 28807 },
  { lower := 28983, upper := 29154, witness := RowWitness.topPrime 28979 },
  { lower := 29155, upper := 29328, witness := RowWitness.topPrime 29153 },
  { lower := 29329, upper := 29502, witness := RowWitness.topPrime 29327 },
  { lower := 29503, upper := 29676, witness := RowWitness.topPrime 29501 },
  { lower := 29677, upper := 29846, witness := RowWitness.topPrime 29671 },
  { lower := 29847, upper := 30012, witness := RowWitness.topPrime 29837 },
  { lower := 30013, upper := 30188, witness := RowWitness.topPrime 30013 },
  { lower := 30189, upper := 30362, witness := RowWitness.topPrime 30187 },
  { lower := 30363, upper := 30522, witness := RowWitness.topPrime 30347 },
  { lower := 30523, upper := 30692, witness := RowWitness.topPrime 30517 },
  { lower := 30693, upper := 30799, witness := RowWitness.topPrime 30689 },
  { lower := 31213, upper := 31368, witness := RowWitness.topPrime 31193 },
  { lower := 31369, upper := 31504, witness := RowWitness.topPrime 31357 },
  { lower := 31827, upper := 31859, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 32002, witness := RowWitness.topPrime 31973 },
  { lower := 33614, upper := 33664, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33789, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34494, witness := RowWitness.topPrime 34319 },
  { lower := 34495, upper := 34566, witness := RowWitness.topPrime 34487 },
  { lower := 36517, upper := 36672, witness := RowWitness.topPrime 36497 },
  { lower := 36673, upper := 36676, witness := RowWitness.topPrime 36671 },
  { lower := 37303, upper := 37385, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37478, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37668, witness := RowWitness.topPrime 37493 },
  { lower := 37669, upper := 37713, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38466, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39479, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40503, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40979, witness := RowWitness.topPrime 40927 },
  { lower := 45369, upper := 45428, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45971, witness := RowWitness.topPrime 45893 },
  { lower := 47045, upper := 47050, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47696, witness := RowWitness.topPrime 47521 },
  { lower := 47697, upper := 47699, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48136, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48546, witness := RowWitness.topPrime 48371 },
  { lower := 48547, upper := 48548, witness := RowWitness.topPrime 48541 },
  { lower := 48778, upper := 48843, witness := RowWitness.topPrime 48767 },
  { lower := 49298, upper := 49305, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49473, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50585, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51180, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53220, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53313, witness := RowWitness.topPrime 53281 },
  { lower := 54043, upper := 54043, witness := RowWitness.topPrime 54037 },
  { lower := 55451, upper := 55616, witness := RowWitness.topPrime 55441 },
  { lower := 55617, upper := 55622, witness := RowWitness.topPrime 55609 },
  { lower := 56307, upper := 56344, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56482, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57297, witness := RowWitness.topPrime 57241 },
  { lower := 59049, upper := 59131, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62585, witness := RowWitness.topPrime 62497 },
  { lower := 68644, upper := 68814, witness := RowWitness.topPrime 68639 },
  { lower := 68815, upper := 68819, witness := RowWitness.topPrime 68813 },
  { lower := 68921, upper := 69065, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71462, witness := RowWitness.topPrime 71287 },
  { lower := 71463, upper := 71464, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73177, witness := RowWitness.topPrime 73141 },
  { lower := 83667, upper := 83696, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85858, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89548, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93925, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96780, witness := RowWitness.topPrime 96769 },
  { lower := 102152, upper := 102185, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103141, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109550, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137956, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149052, witness := RowWitness.topPrime 148949 }
]

def row176_layers : List CoverLayer := [
  { lower := 30800, upper := 61600, M := 13 },
  { lower := 61600, upper := 123200, M := 10 },
  { lower := 123200, upper := 246400, M := 7 },
  { lower := 246400, upper := 492800, M := 5 },
  { lower := 492800, upper := 985600, M := 4 },
  { lower := 985600, upper := 1971200, M := 3 },
  { lower := 1971200, upper := 3942400, M := 2 },
  { lower := 3942400, upper := 7884800, M := 2 },
  { lower := 7884800, upper := 10000000, M := 1 }
]

def row176 : FiniteCoverRow := {
  height := row176_height,
  goods := row176_goods,
  layers := row176_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good000_checked :
    goodSegmentCheck 176 58 125
      { lower := 354, upper := 528, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good001_checked :
    goodSegmentCheck 176 58 125
      { lower := 529, upper := 698, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good002_checked :
    goodSegmentCheck 176 58 125
      { lower := 699, upper := 866, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good003_checked :
    goodSegmentCheck 176 58 125
      { lower := 867, upper := 1038, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good004_checked :
    goodSegmentCheck 176 58 125
      { lower := 1039, upper := 1214, witness := RowWitness.topPrime 1039 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good005_checked :
    goodSegmentCheck 176 58 125
      { lower := 1215, upper := 1388, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good006_checked :
    goodSegmentCheck 176 58 125
      { lower := 1389, upper := 1556, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good007_checked :
    goodSegmentCheck 176 58 125
      { lower := 1557, upper := 1728, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good008_checked :
    goodSegmentCheck 176 58 125
      { lower := 1729, upper := 1898, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good009_checked :
    goodSegmentCheck 176 58 125
      { lower := 1899, upper := 2064, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good010_checked :
    goodSegmentCheck 176 58 125
      { lower := 2065, upper := 2238, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good011_checked :
    goodSegmentCheck 176 58 125
      { lower := 2239, upper := 2414, witness := RowWitness.topPrime 2239 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good012_checked :
    goodSegmentCheck 176 58 125
      { lower := 2415, upper := 2586, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good013_checked :
    goodSegmentCheck 176 58 125
      { lower := 2587, upper := 2754, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good014_checked :
    goodSegmentCheck 176 58 125
      { lower := 2755, upper := 2928, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good015_checked :
    goodSegmentCheck 176 58 125
      { lower := 2929, upper := 3102, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good016_checked :
    goodSegmentCheck 176 58 125
      { lower := 3103, upper := 3264, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good017_checked :
    goodSegmentCheck 176 58 125
      { lower := 3265, upper := 3434, witness := RowWitness.topPrime 3259 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good018_checked :
    goodSegmentCheck 176 58 125
      { lower := 3435, upper := 3608, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good019_checked :
    goodSegmentCheck 176 58 125
      { lower := 3609, upper := 3782, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good020_checked :
    goodSegmentCheck 176 58 125
      { lower := 3783, upper := 3954, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good021_checked :
    goodSegmentCheck 176 58 125
      { lower := 3955, upper := 4122, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good022_checked :
    goodSegmentCheck 176 58 125
      { lower := 4123, upper := 4286, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good023_checked :
    goodSegmentCheck 176 58 125
      { lower := 4287, upper := 4458, witness := RowWitness.topPrime 4283 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good024_checked :
    goodSegmentCheck 176 58 125
      { lower := 4459, upper := 4632, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good025_checked :
    goodSegmentCheck 176 58 125
      { lower := 4633, upper := 4796, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good026_checked :
    goodSegmentCheck 176 58 125
      { lower := 4797, upper := 4968, witness := RowWitness.topPrime 4793 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good027_checked :
    goodSegmentCheck 176 58 125
      { lower := 4969, upper := 5144, witness := RowWitness.topPrime 4969 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good028_checked :
    goodSegmentCheck 176 58 125
      { lower := 5145, upper := 5294, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good029_checked :
    goodSegmentCheck 176 58 125
      { lower := 5295, upper := 5456, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good030_checked :
    goodSegmentCheck 176 58 125
      { lower := 5457, upper := 5624, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good031_checked :
    goodSegmentCheck 176 58 125
      { lower := 5625, upper := 5798, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good032_checked :
    goodSegmentCheck 176 58 125
      { lower := 5799, upper := 5966, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good033_checked :
    goodSegmentCheck 176 58 125
      { lower := 5967, upper := 6128, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good034_checked :
    goodSegmentCheck 176 58 125
      { lower := 6129, upper := 6296, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good035_checked :
    goodSegmentCheck 176 58 125
      { lower := 6297, upper := 6462, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good036_checked :
    goodSegmentCheck 176 58 125
      { lower := 6463, upper := 6626, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good037_checked :
    goodSegmentCheck 176 58 125
      { lower := 6627, upper := 6794, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good038_checked :
    goodSegmentCheck 176 58 125
      { lower := 6795, upper := 6968, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good039_checked :
    goodSegmentCheck 176 58 125
      { lower := 6969, upper := 7142, witness := RowWitness.topPrime 6967 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good040_checked :
    goodSegmentCheck 176 58 125
      { lower := 7143, upper := 7304, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good041_checked :
    goodSegmentCheck 176 58 125
      { lower := 7305, upper := 7472, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good042_checked :
    goodSegmentCheck 176 58 125
      { lower := 7473, upper := 7634, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good043_checked :
    goodSegmentCheck 176 58 125
      { lower := 7635, upper := 7796, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good044_checked :
    goodSegmentCheck 176 58 125
      { lower := 7797, upper := 7968, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good045_checked :
    goodSegmentCheck 176 58 125
      { lower := 7969, upper := 8138, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good046_checked :
    goodSegmentCheck 176 58 125
      { lower := 8139, upper := 8298, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good047_checked :
    goodSegmentCheck 176 58 125
      { lower := 8299, upper := 8472, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good048_checked :
    goodSegmentCheck 176 58 125
      { lower := 8473, upper := 8642, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good049_checked :
    goodSegmentCheck 176 58 125
      { lower := 8643, upper := 8816, witness := RowWitness.topPrime 8641 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good050_checked :
    goodSegmentCheck 176 58 125
      { lower := 8817, upper := 8982, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good051_checked :
    goodSegmentCheck 176 58 125
      { lower := 8983, upper := 9146, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good052_checked :
    goodSegmentCheck 176 58 125
      { lower := 9147, upper := 9312, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good053_checked :
    goodSegmentCheck 176 58 125
      { lower := 9313, upper := 9486, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good054_checked :
    goodSegmentCheck 176 58 125
      { lower := 9487, upper := 9654, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good055_checked :
    goodSegmentCheck 176 58 125
      { lower := 9655, upper := 9824, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good056_checked :
    goodSegmentCheck 176 58 125
      { lower := 9825, upper := 9992, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good057_checked :
    goodSegmentCheck 176 58 125
      { lower := 9993, upper := 10148, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good058_checked :
    goodSegmentCheck 176 58 125
      { lower := 10149, upper := 10316, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good059_checked :
    goodSegmentCheck 176 58 125
      { lower := 10317, upper := 10488, witness := RowWitness.topPrime 10313 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good060_checked :
    goodSegmentCheck 176 58 125
      { lower := 10489, upper := 10662, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good061_checked :
    goodSegmentCheck 176 58 125
      { lower := 10663, upper := 10838, witness := RowWitness.topPrime 10663 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good062_checked :
    goodSegmentCheck 176 58 125
      { lower := 10839, upper := 11012, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good063_checked :
    goodSegmentCheck 176 58 125
      { lower := 11013, upper := 11178, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good064_checked :
    goodSegmentCheck 176 58 125
      { lower := 11179, upper := 11352, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good065_checked :
    goodSegmentCheck 176 58 125
      { lower := 11353, upper := 11528, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good066_checked :
    goodSegmentCheck 176 58 125
      { lower := 11529, upper := 11702, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good067_checked :
    goodSegmentCheck 176 58 125
      { lower := 11703, upper := 11876, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good068_checked :
    goodSegmentCheck 176 58 125
      { lower := 11877, upper := 12042, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good069_checked :
    goodSegmentCheck 176 58 125
      { lower := 12043, upper := 12218, witness := RowWitness.topPrime 12043 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good070_checked :
    goodSegmentCheck 176 58 125
      { lower := 12219, upper := 12386, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good071_checked :
    goodSegmentCheck 176 58 125
      { lower := 12387, upper := 12554, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good072_checked :
    goodSegmentCheck 176 58 125
      { lower := 12555, upper := 12728, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good073_checked :
    goodSegmentCheck 176 58 125
      { lower := 12729, upper := 12896, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good074_checked :
    goodSegmentCheck 176 58 125
      { lower := 12897, upper := 13068, witness := RowWitness.topPrime 12893 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good075_checked :
    goodSegmentCheck 176 58 125
      { lower := 13069, upper := 13238, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good076_checked :
    goodSegmentCheck 176 58 125
      { lower := 13239, upper := 13404, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good077_checked :
    goodSegmentCheck 176 58 125
      { lower := 13405, upper := 13574, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good078_checked :
    goodSegmentCheck 176 58 125
      { lower := 13575, upper := 13742, witness := RowWitness.topPrime 13567 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good079_checked :
    goodSegmentCheck 176 58 125
      { lower := 13743, upper := 13904, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good080_checked :
    goodSegmentCheck 176 58 125
      { lower := 13905, upper := 14078, witness := RowWitness.topPrime 13903 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good081_checked :
    goodSegmentCheck 176 58 125
      { lower := 14079, upper := 14246, witness := RowWitness.topPrime 14071 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good082_checked :
    goodSegmentCheck 176 58 125
      { lower := 14247, upper := 14418, witness := RowWitness.topPrime 14243 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good083_checked :
    goodSegmentCheck 176 58 125
      { lower := 14419, upper := 14594, witness := RowWitness.topPrime 14419 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good084_checked :
    goodSegmentCheck 176 58 125
      { lower := 14595, upper := 14768, witness := RowWitness.topPrime 14593 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good085_checked :
    goodSegmentCheck 176 58 125
      { lower := 14769, upper := 14942, witness := RowWitness.topPrime 14767 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good086_checked :
    goodSegmentCheck 176 58 125
      { lower := 14943, upper := 15114, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good087_checked :
    goodSegmentCheck 176 58 125
      { lower := 15115, upper := 15282, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good088_checked :
    goodSegmentCheck 176 58 125
      { lower := 15283, upper := 15452, witness := RowWitness.topPrime 15277 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good089_checked :
    goodSegmentCheck 176 58 125
      { lower := 15453, upper := 15626, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good090_checked :
    goodSegmentCheck 176 58 125
      { lower := 15627, upper := 15794, witness := RowWitness.topPrime 15619 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good091_checked :
    goodSegmentCheck 176 58 125
      { lower := 15795, upper := 15966, witness := RowWitness.topPrime 15791 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good092_checked :
    goodSegmentCheck 176 58 125
      { lower := 15967, upper := 16134, witness := RowWitness.topPrime 15959 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good093_checked :
    goodSegmentCheck 176 58 125
      { lower := 16135, upper := 16302, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good094_checked :
    goodSegmentCheck 176 58 125
      { lower := 16303, upper := 16476, witness := RowWitness.topPrime 16301 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good095_checked :
    goodSegmentCheck 176 58 125
      { lower := 16477, upper := 16652, witness := RowWitness.topPrime 16477 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good096_checked :
    goodSegmentCheck 176 58 125
      { lower := 16653, upper := 16826, witness := RowWitness.topPrime 16651 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good097_checked :
    goodSegmentCheck 176 58 125
      { lower := 16827, upper := 16998, witness := RowWitness.topPrime 16823 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good098_checked :
    goodSegmentCheck 176 58 125
      { lower := 16999, upper := 17168, witness := RowWitness.topPrime 16993 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good099_checked :
    goodSegmentCheck 176 58 125
      { lower := 17169, upper := 17342, witness := RowWitness.topPrime 17167 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good100_checked :
    goodSegmentCheck 176 58 125
      { lower := 17343, upper := 17516, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good101_checked :
    goodSegmentCheck 176 58 125
      { lower := 17517, upper := 17684, witness := RowWitness.topPrime 17509 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good102_checked :
    goodSegmentCheck 176 58 125
      { lower := 17685, upper := 17858, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good103_checked :
    goodSegmentCheck 176 58 125
      { lower := 17859, upper := 18026, witness := RowWitness.topPrime 17851 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good104_checked :
    goodSegmentCheck 176 58 125
      { lower := 18027, upper := 18188, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good105_checked :
    goodSegmentCheck 176 58 125
      { lower := 18189, upper := 18356, witness := RowWitness.topPrime 18181 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good106_checked :
    goodSegmentCheck 176 58 125
      { lower := 18357, upper := 18528, witness := RowWitness.topPrime 18353 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good107_checked :
    goodSegmentCheck 176 58 125
      { lower := 18529, upper := 18698, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good108_checked :
    goodSegmentCheck 176 58 125
      { lower := 18699, upper := 18866, witness := RowWitness.topPrime 18691 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good109_checked :
    goodSegmentCheck 176 58 125
      { lower := 18867, upper := 19034, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good110_checked :
    goodSegmentCheck 176 58 125
      { lower := 19035, upper := 19206, witness := RowWitness.topPrime 19031 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good111_checked :
    goodSegmentCheck 176 58 125
      { lower := 19207, upper := 19382, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good112_checked :
    goodSegmentCheck 176 58 125
      { lower := 19383, upper := 19556, witness := RowWitness.topPrime 19381 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good113_checked :
    goodSegmentCheck 176 58 125
      { lower := 19557, upper := 19728, witness := RowWitness.topPrime 19553 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good114_checked :
    goodSegmentCheck 176 58 125
      { lower := 19729, upper := 19902, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good115_checked :
    goodSegmentCheck 176 58 125
      { lower := 19903, upper := 20066, witness := RowWitness.topPrime 19891 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good116_checked :
    goodSegmentCheck 176 58 125
      { lower := 20067, upper := 20238, witness := RowWitness.topPrime 20063 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good117_checked :
    goodSegmentCheck 176 58 125
      { lower := 20239, upper := 20408, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good118_checked :
    goodSegmentCheck 176 58 125
      { lower := 20409, upper := 20582, witness := RowWitness.topPrime 20407 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good119_checked :
    goodSegmentCheck 176 58 125
      { lower := 20583, upper := 20738, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good120_checked :
    goodSegmentCheck 176 58 125
      { lower := 20739, upper := 20906, witness := RowWitness.topPrime 20731 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good121_checked :
    goodSegmentCheck 176 58 125
      { lower := 20907, upper := 21078, witness := RowWitness.topPrime 20903 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good122_checked :
    goodSegmentCheck 176 58 125
      { lower := 21079, upper := 21242, witness := RowWitness.topPrime 21067 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good123_checked :
    goodSegmentCheck 176 58 125
      { lower := 21243, upper := 21402, witness := RowWitness.topPrime 21227 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good124_checked :
    goodSegmentCheck 176 58 125
      { lower := 21403, upper := 21576, witness := RowWitness.topPrime 21401 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good125_checked :
    goodSegmentCheck 176 58 125
      { lower := 21577, upper := 21752, witness := RowWitness.topPrime 21577 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good126_checked :
    goodSegmentCheck 176 58 125
      { lower := 21753, upper := 21926, witness := RowWitness.topPrime 21751 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good127_checked :
    goodSegmentCheck 176 58 125
      { lower := 21927, upper := 22086, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good128_checked :
    goodSegmentCheck 176 58 125
      { lower := 22087, upper := 22254, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good129_checked :
    goodSegmentCheck 176 58 125
      { lower := 22255, upper := 22422, witness := RowWitness.topPrime 22247 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good130_checked :
    goodSegmentCheck 176 58 125
      { lower := 22423, upper := 22584, witness := RowWitness.topPrime 22409 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good131_checked :
    goodSegmentCheck 176 58 125
      { lower := 22585, upper := 22748, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good132_checked :
    goodSegmentCheck 176 58 125
      { lower := 22749, upper := 22916, witness := RowWitness.topPrime 22741 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good133_checked :
    goodSegmentCheck 176 58 125
      { lower := 22917, upper := 23082, witness := RowWitness.topPrime 22907 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good134_checked :
    goodSegmentCheck 176 58 125
      { lower := 23083, upper := 23256, witness := RowWitness.topPrime 23081 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good135_checked :
    goodSegmentCheck 176 58 125
      { lower := 23257, upper := 23426, witness := RowWitness.topPrime 23251 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good136_checked :
    goodSegmentCheck 176 58 125
      { lower := 23427, upper := 23592, witness := RowWitness.topPrime 23417 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good137_checked :
    goodSegmentCheck 176 58 125
      { lower := 23593, upper := 23768, witness := RowWitness.topPrime 23593 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good138_checked :
    goodSegmentCheck 176 58 125
      { lower := 23769, upper := 23942, witness := RowWitness.topPrime 23767 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good139_checked :
    goodSegmentCheck 176 58 125
      { lower := 23943, upper := 24104, witness := RowWitness.topPrime 23929 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good140_checked :
    goodSegmentCheck 176 58 125
      { lower := 24105, upper := 24278, witness := RowWitness.topPrime 24103 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good141_checked :
    goodSegmentCheck 176 58 125
      { lower := 24279, upper := 24426, witness := RowWitness.topPrime 24251 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good142_checked :
    goodSegmentCheck 176 58 125
      { lower := 24427, upper := 24596, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good143_checked :
    goodSegmentCheck 176 58 125
      { lower := 24597, upper := 24768, witness := RowWitness.topPrime 24593 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good144_checked :
    goodSegmentCheck 176 58 125
      { lower := 24769, upper := 24942, witness := RowWitness.topPrime 24767 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good145_checked :
    goodSegmentCheck 176 58 125
      { lower := 24943, upper := 25118, witness := RowWitness.topPrime 24943 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good146_checked :
    goodSegmentCheck 176 58 125
      { lower := 25119, upper := 25292, witness := RowWitness.topPrime 25117 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good147_checked :
    goodSegmentCheck 176 58 125
      { lower := 25293, upper := 25436, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good148_checked :
    goodSegmentCheck 176 58 125
      { lower := 25437, upper := 25598, witness := RowWitness.topPrime 25423 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good149_checked :
    goodSegmentCheck 176 58 125
      { lower := 25599, upper := 25764, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good150_checked :
    goodSegmentCheck 176 58 125
      { lower := 25765, upper := 25938, witness := RowWitness.topPrime 25763 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good151_checked :
    goodSegmentCheck 176 58 125
      { lower := 25939, upper := 26114, witness := RowWitness.topPrime 25939 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good152_checked :
    goodSegmentCheck 176 58 125
      { lower := 26115, upper := 26288, witness := RowWitness.topPrime 26113 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good153_checked :
    goodSegmentCheck 176 58 125
      { lower := 26289, upper := 26442, witness := RowWitness.topPrime 26267 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good154_checked :
    goodSegmentCheck 176 58 125
      { lower := 26443, upper := 26612, witness := RowWitness.topPrime 26437 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good155_checked :
    goodSegmentCheck 176 58 125
      { lower := 26613, upper := 26772, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good156_checked :
    goodSegmentCheck 176 58 125
      { lower := 26773, upper := 26934, witness := RowWitness.topPrime 26759 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good157_checked :
    goodSegmentCheck 176 58 125
      { lower := 26935, upper := 27102, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good158_checked :
    goodSegmentCheck 176 58 125
      { lower := 27103, upper := 27278, witness := RowWitness.topPrime 27103 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good159_checked :
    goodSegmentCheck 176 58 125
      { lower := 27279, upper := 27452, witness := RowWitness.topPrime 27277 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good160_checked :
    goodSegmentCheck 176 58 125
      { lower := 27453, upper := 27624, witness := RowWitness.topPrime 27449 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good161_checked :
    goodSegmentCheck 176 58 125
      { lower := 27625, upper := 27792, witness := RowWitness.topPrime 27617 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good162_checked :
    goodSegmentCheck 176 58 125
      { lower := 27793, upper := 27968, witness := RowWitness.topPrime 27793 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good163_checked :
    goodSegmentCheck 176 58 125
      { lower := 27969, upper := 28142, witness := RowWitness.topPrime 27967 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good164_checked :
    goodSegmentCheck 176 58 125
      { lower := 28143, upper := 28298, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good165_checked :
    goodSegmentCheck 176 58 125
      { lower := 28299, upper := 28472, witness := RowWitness.topPrime 28297 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good166_checked :
    goodSegmentCheck 176 58 125
      { lower := 28473, upper := 28638, witness := RowWitness.topPrime 28463 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good167_checked :
    goodSegmentCheck 176 58 125
      { lower := 28639, upper := 28806, witness := RowWitness.topPrime 28631 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good168_checked :
    goodSegmentCheck 176 58 125
      { lower := 28807, upper := 28982, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good169_checked :
    goodSegmentCheck 176 58 125
      { lower := 28983, upper := 29154, witness := RowWitness.topPrime 28979 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good170_checked :
    goodSegmentCheck 176 58 125
      { lower := 29155, upper := 29328, witness := RowWitness.topPrime 29153 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good171_checked :
    goodSegmentCheck 176 58 125
      { lower := 29329, upper := 29502, witness := RowWitness.topPrime 29327 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good172_checked :
    goodSegmentCheck 176 58 125
      { lower := 29503, upper := 29676, witness := RowWitness.topPrime 29501 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good173_checked :
    goodSegmentCheck 176 58 125
      { lower := 29677, upper := 29846, witness := RowWitness.topPrime 29671 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good174_checked :
    goodSegmentCheck 176 58 125
      { lower := 29847, upper := 30012, witness := RowWitness.topPrime 29837 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good175_checked :
    goodSegmentCheck 176 58 125
      { lower := 30013, upper := 30188, witness := RowWitness.topPrime 30013 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good176_checked :
    goodSegmentCheck 176 58 125
      { lower := 30189, upper := 30362, witness := RowWitness.topPrime 30187 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good177_checked :
    goodSegmentCheck 176 58 125
      { lower := 30363, upper := 30522, witness := RowWitness.topPrime 30347 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good178_checked :
    goodSegmentCheck 176 58 125
      { lower := 30523, upper := 30692, witness := RowWitness.topPrime 30517 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good179_checked :
    goodSegmentCheck 176 58 125
      { lower := 30693, upper := 30799, witness := RowWitness.topPrime 30689 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good180_checked :
    goodSegmentCheck 176 58 125
      { lower := 31213, upper := 31368, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good181_checked :
    goodSegmentCheck 176 58 125
      { lower := 31369, upper := 31504, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good182_checked :
    goodSegmentCheck 176 58 125
      { lower := 31827, upper := 31859, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good183_checked :
    goodSegmentCheck 176 58 125
      { lower := 31974, upper := 32002, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good184_checked :
    goodSegmentCheck 176 58 125
      { lower := 33614, upper := 33664, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good185_checked :
    goodSegmentCheck 176 58 125
      { lower := 33708, upper := 33789, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good186_checked :
    goodSegmentCheck 176 58 125
      { lower := 34322, upper := 34494, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good187_checked :
    goodSegmentCheck 176 58 125
      { lower := 34495, upper := 34566, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good188_checked :
    goodSegmentCheck 176 58 125
      { lower := 36517, upper := 36672, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good189_checked :
    goodSegmentCheck 176 58 125
      { lower := 36673, upper := 36676, witness := RowWitness.topPrime 36671 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good190_checked :
    goodSegmentCheck 176 58 125
      { lower := 37303, upper := 37385, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good191_checked :
    goodSegmentCheck 176 58 125
      { lower := 37446, upper := 37478, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good192_checked :
    goodSegmentCheck 176 58 125
      { lower := 37500, upper := 37668, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good193_checked :
    goodSegmentCheck 176 58 125
      { lower := 37669, upper := 37713, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good194_checked :
    goodSegmentCheck 176 58 125
      { lower := 38307, upper := 38466, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good195_checked :
    goodSegmentCheck 176 58 125
      { lower := 39366, upper := 39479, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good196_checked :
    goodSegmentCheck 176 58 125
      { lower := 40401, upper := 40503, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good197_checked :
    goodSegmentCheck 176 58 125
      { lower := 40931, upper := 40979, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good198_checked :
    goodSegmentCheck 176 58 125
      { lower := 45369, upper := 45428, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good199_checked :
    goodSegmentCheck 176 58 125
      { lower := 45927, upper := 45971, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good200_checked :
    goodSegmentCheck 176 58 125
      { lower := 47045, upper := 47050, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good201_checked :
    goodSegmentCheck 176 58 125
      { lower := 47526, upper := 47696, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good202_checked :
    goodSegmentCheck 176 58 125
      { lower := 47697, upper := 47699, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good203_checked :
    goodSegmentCheck 176 58 125
      { lower := 48013, upper := 48136, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good204_checked :
    goodSegmentCheck 176 58 125
      { lower := 48373, upper := 48546, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good205_checked :
    goodSegmentCheck 176 58 125
      { lower := 48547, upper := 48548, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good206_checked :
    goodSegmentCheck 176 58 125
      { lower := 48778, upper := 48843, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good207_checked :
    goodSegmentCheck 176 58 125
      { lower := 49298, upper := 49305, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good208_checked :
    goodSegmentCheck 176 58 125
      { lower := 49379, upper := 49473, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good209_checked :
    goodSegmentCheck 176 58 125
      { lower := 50421, upper := 50585, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good210_checked :
    goodSegmentCheck 176 58 125
      { lower := 51076, upper := 51180, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good211_checked :
    goodSegmentCheck 176 58 125
      { lower := 53138, upper := 53220, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good212_checked :
    goodSegmentCheck 176 58 125
      { lower := 53290, upper := 53313, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good213_checked :
    goodSegmentCheck 176 58 125
      { lower := 54043, upper := 54043, witness := RowWitness.topPrime 54037 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good214_checked :
    goodSegmentCheck 176 58 125
      { lower := 55451, upper := 55616, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good215_checked :
    goodSegmentCheck 176 58 125
      { lower := 55617, upper := 55622, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good216_checked :
    goodSegmentCheck 176 58 125
      { lower := 56307, upper := 56344, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good217_checked :
    goodSegmentCheck 176 58 125
      { lower := 56454, upper := 56482, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good218_checked :
    goodSegmentCheck 176 58 125
      { lower := 57245, upper := 57297, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good219_checked :
    goodSegmentCheck 176 58 125
      { lower := 59049, upper := 59131, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good220_checked :
    goodSegmentCheck 176 58 125
      { lower := 62500, upper := 62585, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good221_checked :
    goodSegmentCheck 176 58 125
      { lower := 68644, upper := 68814, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good222_checked :
    goodSegmentCheck 176 58 125
      { lower := 68815, upper := 68819, witness := RowWitness.topPrime 68813 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good223_checked :
    goodSegmentCheck 176 58 125
      { lower := 68921, upper := 69065, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_good224_checked :
    goodSegmentCheck 176 58 125
      { lower := 71289, upper := 71462, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good225_checked :
    goodSegmentCheck 176 58 125
      { lower := 71463, upper := 71464, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good226_checked :
    goodSegmentCheck 176 58 125
      { lower := 73167, upper := 73177, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good227_checked :
    goodSegmentCheck 176 58 125
      { lower := 83667, upper := 83696, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good228_checked :
    goodSegmentCheck 176 58 125
      { lower := 85805, upper := 85858, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good229_checked :
    goodSegmentCheck 176 58 125
      { lower := 89383, upper := 89548, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good230_checked :
    goodSegmentCheck 176 58 125
      { lower := 93845, upper := 93925, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good231_checked :
    goodSegmentCheck 176 58 125
      { lower := 96774, upper := 96780, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good232_checked :
    goodSegmentCheck 176 58 125
      { lower := 102152, upper := 102185, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good233_checked :
    goodSegmentCheck 176 58 125
      { lower := 103041, upper := 103141, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good234_checked :
    goodSegmentCheck 176 58 125
      { lower := 109503, upper := 109550, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good235_checked :
    goodSegmentCheck 176 58 125
      { lower := 137842, upper := 137956, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row176_good236_checked :
    goodSegmentCheck 176 58 125
      { lower := 148955, upper := 149052, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 176) (r := 58) (s := 125) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_good236_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_goods_checked :
    row176.goods.all (goodSegmentCheck row176.height.i row176.height.r row176.height.s) = true := by
  change row176_goods.all (goodSegmentCheck 176 58 125) = true
  simp only [row176_goods, List.all_cons, List.all_nil,
    row176_good000_checked,
    row176_good001_checked,
    row176_good002_checked,
    row176_good003_checked,
    row176_good004_checked,
    row176_good005_checked,
    row176_good006_checked,
    row176_good007_checked,
    row176_good008_checked,
    row176_good009_checked,
    row176_good010_checked,
    row176_good011_checked,
    row176_good012_checked,
    row176_good013_checked,
    row176_good014_checked,
    row176_good015_checked,
    row176_good016_checked,
    row176_good017_checked,
    row176_good018_checked,
    row176_good019_checked,
    row176_good020_checked,
    row176_good021_checked,
    row176_good022_checked,
    row176_good023_checked,
    row176_good024_checked,
    row176_good025_checked,
    row176_good026_checked,
    row176_good027_checked,
    row176_good028_checked,
    row176_good029_checked,
    row176_good030_checked,
    row176_good031_checked,
    row176_good032_checked,
    row176_good033_checked,
    row176_good034_checked,
    row176_good035_checked,
    row176_good036_checked,
    row176_good037_checked,
    row176_good038_checked,
    row176_good039_checked,
    row176_good040_checked,
    row176_good041_checked,
    row176_good042_checked,
    row176_good043_checked,
    row176_good044_checked,
    row176_good045_checked,
    row176_good046_checked,
    row176_good047_checked,
    row176_good048_checked,
    row176_good049_checked,
    row176_good050_checked,
    row176_good051_checked,
    row176_good052_checked,
    row176_good053_checked,
    row176_good054_checked,
    row176_good055_checked,
    row176_good056_checked,
    row176_good057_checked,
    row176_good058_checked,
    row176_good059_checked,
    row176_good060_checked,
    row176_good061_checked,
    row176_good062_checked,
    row176_good063_checked,
    row176_good064_checked,
    row176_good065_checked,
    row176_good066_checked,
    row176_good067_checked,
    row176_good068_checked,
    row176_good069_checked,
    row176_good070_checked,
    row176_good071_checked,
    row176_good072_checked,
    row176_good073_checked,
    row176_good074_checked,
    row176_good075_checked,
    row176_good076_checked,
    row176_good077_checked,
    row176_good078_checked,
    row176_good079_checked,
    row176_good080_checked,
    row176_good081_checked,
    row176_good082_checked,
    row176_good083_checked,
    row176_good084_checked,
    row176_good085_checked,
    row176_good086_checked,
    row176_good087_checked,
    row176_good088_checked,
    row176_good089_checked,
    row176_good090_checked,
    row176_good091_checked,
    row176_good092_checked,
    row176_good093_checked,
    row176_good094_checked,
    row176_good095_checked,
    row176_good096_checked,
    row176_good097_checked,
    row176_good098_checked,
    row176_good099_checked,
    row176_good100_checked,
    row176_good101_checked,
    row176_good102_checked,
    row176_good103_checked,
    row176_good104_checked,
    row176_good105_checked,
    row176_good106_checked,
    row176_good107_checked,
    row176_good108_checked,
    row176_good109_checked,
    row176_good110_checked,
    row176_good111_checked,
    row176_good112_checked,
    row176_good113_checked,
    row176_good114_checked,
    row176_good115_checked,
    row176_good116_checked,
    row176_good117_checked,
    row176_good118_checked,
    row176_good119_checked,
    row176_good120_checked,
    row176_good121_checked,
    row176_good122_checked,
    row176_good123_checked,
    row176_good124_checked,
    row176_good125_checked,
    row176_good126_checked,
    row176_good127_checked,
    row176_good128_checked,
    row176_good129_checked,
    row176_good130_checked,
    row176_good131_checked,
    row176_good132_checked,
    row176_good133_checked,
    row176_good134_checked,
    row176_good135_checked,
    row176_good136_checked,
    row176_good137_checked,
    row176_good138_checked,
    row176_good139_checked,
    row176_good140_checked,
    row176_good141_checked,
    row176_good142_checked,
    row176_good143_checked,
    row176_good144_checked,
    row176_good145_checked,
    row176_good146_checked,
    row176_good147_checked,
    row176_good148_checked,
    row176_good149_checked,
    row176_good150_checked,
    row176_good151_checked,
    row176_good152_checked,
    row176_good153_checked,
    row176_good154_checked,
    row176_good155_checked,
    row176_good156_checked,
    row176_good157_checked,
    row176_good158_checked,
    row176_good159_checked,
    row176_good160_checked,
    row176_good161_checked,
    row176_good162_checked,
    row176_good163_checked,
    row176_good164_checked,
    row176_good165_checked,
    row176_good166_checked,
    row176_good167_checked,
    row176_good168_checked,
    row176_good169_checked,
    row176_good170_checked,
    row176_good171_checked,
    row176_good172_checked,
    row176_good173_checked,
    row176_good174_checked,
    row176_good175_checked,
    row176_good176_checked,
    row176_good177_checked,
    row176_good178_checked,
    row176_good179_checked,
    row176_good180_checked,
    row176_good181_checked,
    row176_good182_checked,
    row176_good183_checked,
    row176_good184_checked,
    row176_good185_checked,
    row176_good186_checked,
    row176_good187_checked,
    row176_good188_checked,
    row176_good189_checked,
    row176_good190_checked,
    row176_good191_checked,
    row176_good192_checked,
    row176_good193_checked,
    row176_good194_checked,
    row176_good195_checked,
    row176_good196_checked,
    row176_good197_checked,
    row176_good198_checked,
    row176_good199_checked,
    row176_good200_checked,
    row176_good201_checked,
    row176_good202_checked,
    row176_good203_checked,
    row176_good204_checked,
    row176_good205_checked,
    row176_good206_checked,
    row176_good207_checked,
    row176_good208_checked,
    row176_good209_checked,
    row176_good210_checked,
    row176_good211_checked,
    row176_good212_checked,
    row176_good213_checked,
    row176_good214_checked,
    row176_good215_checked,
    row176_good216_checked,
    row176_good217_checked,
    row176_good218_checked,
    row176_good219_checked,
    row176_good220_checked,
    row176_good221_checked,
    row176_good222_checked,
    row176_good223_checked,
    row176_good224_checked,
    row176_good225_checked,
    row176_good226_checked,
    row176_good227_checked,
    row176_good228_checked,
    row176_good229_checked,
    row176_good230_checked,
    row176_good231_checked,
    row176_good232_checked,
    row176_good233_checked,
    row176_good234_checked,
    row176_good235_checked,
    row176_good236_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_registered :
    decide (row176.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row176_small_checked :
    coverCheck (2 * row176.height.i + 2) (row176.height.i * (row176.height.i - 1) - 1)
      (row176.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row176_layerCover_checked :
    coverCheck (row176.height.i * (row176.height.i - 1)) (row176.height.n0 - 1)
      (row176.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row176_bounds : List NatInterval :=
  [(354, 528), (529, 698), (699, 866), (867, 1038), (1039, 1214), (1215, 1388), (1389, 1556), (1557, 1728), (1729, 1898), (1899, 2064), (2065, 2238), (2239, 2414), (2415, 2586), (2587, 2754), (2755, 2928), (2929, 3102), (3103, 3264), (3265, 3434), (3435, 3608), (3609, 3782), (3783, 3954), (3955, 4122), (4123, 4286), (4287, 4458), (4459, 4632), (4633, 4796), (4797, 4968), (4969, 5144), (5145, 5294), (5295, 5456), (5457, 5624), (5625, 5798), (5799, 5966), (5967, 6128), (6129, 6296), (6297, 6462), (6463, 6626), (6627, 6794), (6795, 6968), (6969, 7142), (7143, 7304), (7305, 7472), (7473, 7634), (7635, 7796), (7797, 7968), (7969, 8138), (8139, 8298), (8299, 8472), (8473, 8642), (8643, 8816), (8817, 8982), (8983, 9146), (9147, 9312), (9313, 9486), (9487, 9654), (9655, 9824), (9825, 9992), (9993, 10148), (10149, 10316), (10317, 10488), (10489, 10662), (10663, 10838), (10839, 11012), (11013, 11178), (11179, 11352), (11353, 11528), (11529, 11702), (11703, 11876), (11877, 12042), (12043, 12218), (12219, 12386), (12387, 12554), (12555, 12728), (12729, 12896), (12897, 13068), (13069, 13238), (13239, 13404), (13405, 13574), (13575, 13742), (13743, 13904), (13905, 14078), (14079, 14246), (14247, 14418), (14419, 14594), (14595, 14768), (14769, 14942), (14943, 15114), (15115, 15282), (15283, 15452), (15453, 15626), (15627, 15794), (15795, 15966), (15967, 16134), (16135, 16302), (16303, 16476), (16477, 16652), (16653, 16826), (16827, 16998), (16999, 17168), (17169, 17342), (17343, 17516), (17517, 17684), (17685, 17858), (17859, 18026), (18027, 18188), (18189, 18356), (18357, 18528), (18529, 18698), (18699, 18866), (18867, 19034), (19035, 19206), (19207, 19382), (19383, 19556), (19557, 19728), (19729, 19902), (19903, 20066), (20067, 20238), (20239, 20408), (20409, 20582), (20583, 20738), (20739, 20906), (20907, 21078), (21079, 21242), (21243, 21402), (21403, 21576), (21577, 21752), (21753, 21926), (21927, 22086), (22087, 22254), (22255, 22422), (22423, 22584), (22585, 22748), (22749, 22916), (22917, 23082), (23083, 23256), (23257, 23426), (23427, 23592), (23593, 23768), (23769, 23942), (23943, 24104), (24105, 24278), (24279, 24426), (24427, 24596), (24597, 24768), (24769, 24942), (24943, 25118), (25119, 25292), (25293, 25436), (25437, 25598), (25599, 25764), (25765, 25938), (25939, 26114), (26115, 26288), (26289, 26442), (26443, 26612), (26613, 26772), (26773, 26934), (26935, 27102), (27103, 27278), (27279, 27452), (27453, 27624), (27625, 27792), (27793, 27968), (27969, 28142), (28143, 28298), (28299, 28472), (28473, 28638), (28639, 28806), (28807, 28982), (28983, 29154), (29155, 29328), (29329, 29502), (29503, 29676), (29677, 29846), (29847, 30012), (30013, 30188), (30189, 30362), (30363, 30522), (30523, 30692), (30693, 30799), (31213, 31368), (31369, 31504), (31827, 31859), (31974, 32002), (33614, 33664), (33708, 33789), (34322, 34494), (34495, 34566), (36517, 36672), (36673, 36676), (37303, 37385), (37446, 37478), (37500, 37668), (37669, 37713), (38307, 38466), (39366, 39479), (40401, 40503), (40931, 40979), (45369, 45428), (45927, 45971), (47045, 47050), (47526, 47696), (47697, 47699), (48013, 48136), (48373, 48546), (48547, 48548), (48778, 48843), (49298, 49305), (49379, 49473), (50421, 50585), (51076, 51180), (53138, 53220), (53290, 53313), (54043, 54043), (55451, 55616), (55617, 55622), (56307, 56344), (56454, 56482), (57245, 57297), (59049, 59131), (62500, 62585), (68644, 68814), (68815, 68819), (68921, 69065), (71289, 71462), (71463, 71464), (73167, 73177), (83667, 83696), (85805, 85858), (89383, 89548), (93845, 93925), (96774, 96780), (102152, 102185), (103041, 103141), (109503, 109550), (137842, 137956), (148955, 149052)]

theorem row176_bounds_eq : row176.goods.map goodSegmentBounds = row176_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row176_layer000_intervals : List ColouredInterval :=
  [(3, 32805, 32980), (3, 39366, 39541), (3, 45927, 46102), (3, 52488, 52663), (3, 59049, 59224), (3, 39366, 39541), (3, 59049, 59224), (3, 59049, 59224), (5, 31250, 31425), (5, 34375, 34550), (5, 37500, 37675), (5, 40625, 40800), (5, 31250, 31425), (5, 46875, 47050), (7, 31213, 31388), (7, 33614, 33789), (7, 50421, 50596), (13, 57122, 57297), (17, 34391, 34566), (17, 39304, 39479), (17, 44217, 44392), (17, 49130, 49305), (17, 54043, 54218), (17, 58956, 59131), (19, 34295, 34470), (19, 41154, 41329), (19, 48013, 48188), (19, 54872, 55047), (23, 36501, 36676), (23, 48668, 48843), (23, 60835, 61010), (29, 48778, 48953), (31, 59582, 59757), (37, 50653, 50828), (53, 30899, 31074), (53, 33708, 33883), (53, 36517, 36692), (59, 31329, 31504), (59, 34810, 34985), (59, 38291, 38466), (59, 41772, 41947), (59, 45253, 45428), (61, 33489, 33664), (61, 37210, 37385), (61, 40931, 41106), (61, 44652, 44827), (61, 48373, 48548), (67, 31423, 31598), (67, 35912, 36087), (67, 40401, 40576), (67, 44890, 45065), (67, 49379, 49554), (67, 53868, 54043), (67, 58357, 58532), (71, 35287, 35462), (71, 40328, 40503), (71, 45369, 45544), (71, 50410, 50585), (71, 55451, 55626), (71, 60492, 60667), (73, 31974, 32149), (73, 37303, 37478), (73, 42632, 42807), (73, 47961, 48136), (73, 53290, 53465), (73, 58619, 58794), (79, 31205, 31380), (79, 37446, 37621), (79, 43687, 43862), (79, 49928, 50103), (79, 56169, 56344), (83, 34445, 34620), (83, 41334, 41509), (83, 48223, 48398), (83, 55112, 55287), (89, 31684, 31859), (89, 39605, 39780), (89, 47526, 47701), (89, 55447, 55622), (97, 37636, 37811), (97, 47045, 47220), (97, 56454, 56629), (101, 40804, 40979), (101, 51005, 51180), (101, 61206, 61381), (103, 31827, 32002), (103, 42436, 42611), (103, 53045, 53220), (107, 34347, 34522), (107, 45796, 45971), (107, 57245, 57420), (109, 35643, 35818), (109, 47524, 47699), (109, 59405, 59580), (113, 38307, 38482), (113, 51076, 51251), (127, 32258, 32433), (127, 48387, 48562), (131, 34322, 34497), (131, 51483, 51658), (137, 37538, 37713), (137, 56307, 56482), (139, 38642, 38817), (139, 57963, 58138), (149, 44402, 44577), (151, 45602, 45777), (157, 49298, 49473), (163, 53138, 53313), (167, 55778, 55953), (173, 59858, 60033)]

def row176_layer000_block000 : List ColouredInterval :=
  [(3, 32805, 32980), (3, 39366, 39541), (3, 45927, 46102), (3, 52488, 52663), (3, 59049, 59224), (3, 39366, 39541), (3, 59049, 59224), (3, 59049, 59224), (5, 31250, 31425), (5, 34375, 34550), (5, 37500, 37675), (5, 40625, 40800), (5, 31250, 31425), (5, 46875, 47050), (7, 31213, 31388), (7, 33614, 33789)]

def row176_layer000_block001 : List ColouredInterval :=
  [(7, 50421, 50596), (13, 57122, 57297), (17, 34391, 34566), (17, 39304, 39479), (17, 44217, 44392), (17, 49130, 49305), (17, 54043, 54218), (17, 58956, 59131), (19, 34295, 34470), (19, 41154, 41329), (19, 48013, 48188), (19, 54872, 55047), (23, 36501, 36676), (23, 48668, 48843), (23, 60835, 61010), (29, 48778, 48953)]

def row176_layer000_block002 : List ColouredInterval :=
  [(31, 59582, 59757), (37, 50653, 50828), (53, 30899, 31074), (53, 33708, 33883), (53, 36517, 36692), (59, 31329, 31504), (59, 34810, 34985), (59, 38291, 38466), (59, 41772, 41947), (59, 45253, 45428), (61, 33489, 33664), (61, 37210, 37385), (61, 40931, 41106), (61, 44652, 44827), (61, 48373, 48548), (67, 31423, 31598)]

def row176_layer000_block003 : List ColouredInterval :=
  [(67, 35912, 36087), (67, 40401, 40576), (67, 44890, 45065), (67, 49379, 49554), (67, 53868, 54043), (67, 58357, 58532), (71, 35287, 35462), (71, 40328, 40503), (71, 45369, 45544), (71, 50410, 50585), (71, 55451, 55626), (71, 60492, 60667), (73, 31974, 32149), (73, 37303, 37478), (73, 42632, 42807), (73, 47961, 48136)]

def row176_layer000_block004 : List ColouredInterval :=
  [(73, 53290, 53465), (73, 58619, 58794), (79, 31205, 31380), (79, 37446, 37621), (79, 43687, 43862), (79, 49928, 50103), (79, 56169, 56344), (83, 34445, 34620), (83, 41334, 41509), (83, 48223, 48398), (83, 55112, 55287), (89, 31684, 31859), (89, 39605, 39780), (89, 47526, 47701), (89, 55447, 55622), (97, 37636, 37811)]

def row176_layer000_block005 : List ColouredInterval :=
  [(97, 47045, 47220), (97, 56454, 56629), (101, 40804, 40979), (101, 51005, 51180), (101, 61206, 61381), (103, 31827, 32002), (103, 42436, 42611), (103, 53045, 53220), (107, 34347, 34522), (107, 45796, 45971), (107, 57245, 57420), (109, 35643, 35818), (109, 47524, 47699), (109, 59405, 59580), (113, 38307, 38482), (113, 51076, 51251)]

def row176_layer000_block006 : List ColouredInterval :=
  [(127, 32258, 32433), (127, 48387, 48562), (131, 34322, 34497), (131, 51483, 51658), (137, 37538, 37713), (137, 56307, 56482), (139, 38642, 38817), (139, 57963, 58138), (149, 44402, 44577), (151, 45602, 45777), (157, 49298, 49473), (163, 53138, 53313), (167, 55778, 55953), (173, 59858, 60033)]

def row176_layer000_chunks : List (List ColouredInterval) :=
  [row176_layer000_block000, row176_layer000_block001, row176_layer000_block002, row176_layer000_block003, row176_layer000_block004, row176_layer000_block005, row176_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_arithmetic : LayerArithmeticValid row176.height { lower := 30800, upper := 61600, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_enumeration :
    activePowerIntervalList 176 13 30800 61600 = row176_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_pairs000 :
    row176_layer000_block000.all (fun I => row176_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_pairs001 :
    row176_layer000_block001.all (fun I => row176_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_pairs002 :
    row176_layer000_block002.all (fun I => row176_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_pairs003 :
    row176_layer000_block003.all (fun I => row176_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_pairs004 :
    row176_layer000_block004.all (fun I => row176_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_pairs005 :
    row176_layer000_block005.all (fun I => row176_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_pairs006 :
    row176_layer000_block006.all (fun I => row176_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_chunks_eq : row176_layer000_chunks.flatten = row176_layer000_intervals := by
  rfl

theorem row176_layer000_pairs : pairCoverCheck row176_layer000_intervals row176_bounds = true := by
  apply pairCoverCheck_of_chunks row176_layer000_chunks_eq
  intro block hblock
  simp only [row176_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row176_layer000_pairs000
  · exact row176_layer000_pairs001
  · exact row176_layer000_pairs002
  · exact row176_layer000_pairs003
  · exact row176_layer000_pairs004
  · exact row176_layer000_pairs005
  · exact row176_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer000_checked :
    coverLayerCheck row176.height row176.goods { lower := 30800, upper := 61600, M := 13 } = true := by
  exact coverLayerCheck_of_parts row176_layer000_arithmetic row176_layer000_enumeration row176_bounds_eq row176_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row176_layer001_intervals : List ColouredInterval :=
  [(3, 65610, 65785), (3, 78732, 78907), (3, 98415, 98590), (3, 118098, 118273), (3, 118098, 118273), (5, 62500, 62675), (5, 78125, 78300), (5, 93750, 93925), (5, 109375, 109550), (5, 78125, 78300), (7, 67228, 67403), (7, 84035, 84210), (7, 100842, 101017), (7, 117649, 117824), (7, 117649, 117824), (13, 85683, 85858), (13, 114244, 114419), (17, 83521, 83696), (19, 61731, 61906), (19, 68590, 68765), (23, 73002, 73177), (23, 85169, 85344), (23, 97336, 97511), (23, 109503, 109678), (23, 121670, 121845), (29, 73167, 73342), (29, 97556, 97731), (29, 121945, 122120), (31, 89373, 89548), (31, 119164, 119339), (37, 101306, 101481), (41, 68921, 69096), (43, 79507, 79682), (47, 103823, 103998), (79, 62410, 62585), (83, 62001, 62176), (83, 68890, 69065), (89, 63368, 63543), (89, 71289, 71464), (89, 79210, 79385), (97, 65863, 66038), (97, 75272, 75447), (97, 84681, 84856), (97, 94090, 94265), (101, 71407, 71582), (101, 81608, 81783), (101, 91809, 91984), (101, 102010, 102185), (103, 63654, 63829), (103, 74263, 74438), (103, 84872, 85047), (103, 95481, 95656), (103, 106090, 106265), (107, 68694, 68869), (107, 80143, 80318), (107, 91592, 91767), (107, 103041, 103216), (107, 114490, 114665), (109, 71286, 71461), (109, 83167, 83342), (109, 95048, 95223), (109, 106929, 107104), (109, 118810, 118985), (113, 63845, 64020), (113, 76614, 76789), (113, 89383, 89558), (113, 102152, 102327), (113, 114921, 115096), (127, 64516, 64691), (127, 80645, 80820), (127, 96774, 96949), (127, 112903, 113078), (131, 68644, 68819), (131, 85805, 85980), (131, 102966, 103141), (131, 120127, 120302), (137, 75076, 75251), (137, 93845, 94020), (137, 112614, 112789), (139, 77284, 77459), (139, 96605, 96780), (139, 115926, 116101), (149, 66603, 66778), (149, 88804, 88979), (149, 111005, 111180), (151, 68403, 68578), (151, 91204, 91379), (151, 114005, 114180), (157, 73947, 74122), (157, 98596, 98771), (163, 79707, 79882), (163, 106276, 106451), (167, 83667, 83842), (167, 111556, 111731), (173, 89787, 89962), (173, 119716, 119891)]

def row176_layer001_block000 : List ColouredInterval :=
  [(3, 65610, 65785), (3, 78732, 78907), (3, 98415, 98590), (3, 118098, 118273), (3, 118098, 118273), (5, 62500, 62675), (5, 78125, 78300), (5, 93750, 93925), (5, 109375, 109550), (5, 78125, 78300), (7, 67228, 67403), (7, 84035, 84210), (7, 100842, 101017), (7, 117649, 117824), (7, 117649, 117824), (13, 85683, 85858)]

def row176_layer001_block001 : List ColouredInterval :=
  [(13, 114244, 114419), (17, 83521, 83696), (19, 61731, 61906), (19, 68590, 68765), (23, 73002, 73177), (23, 85169, 85344), (23, 97336, 97511), (23, 109503, 109678), (23, 121670, 121845), (29, 73167, 73342), (29, 97556, 97731), (29, 121945, 122120), (31, 89373, 89548), (31, 119164, 119339), (37, 101306, 101481), (41, 68921, 69096)]

def row176_layer001_block002 : List ColouredInterval :=
  [(43, 79507, 79682), (47, 103823, 103998), (79, 62410, 62585), (83, 62001, 62176), (83, 68890, 69065), (89, 63368, 63543), (89, 71289, 71464), (89, 79210, 79385), (97, 65863, 66038), (97, 75272, 75447), (97, 84681, 84856), (97, 94090, 94265), (101, 71407, 71582), (101, 81608, 81783), (101, 91809, 91984), (101, 102010, 102185)]

def row176_layer001_block003 : List ColouredInterval :=
  [(103, 63654, 63829), (103, 74263, 74438), (103, 84872, 85047), (103, 95481, 95656), (103, 106090, 106265), (107, 68694, 68869), (107, 80143, 80318), (107, 91592, 91767), (107, 103041, 103216), (107, 114490, 114665), (109, 71286, 71461), (109, 83167, 83342), (109, 95048, 95223), (109, 106929, 107104), (109, 118810, 118985), (113, 63845, 64020)]

def row176_layer001_block004 : List ColouredInterval :=
  [(113, 76614, 76789), (113, 89383, 89558), (113, 102152, 102327), (113, 114921, 115096), (127, 64516, 64691), (127, 80645, 80820), (127, 96774, 96949), (127, 112903, 113078), (131, 68644, 68819), (131, 85805, 85980), (131, 102966, 103141), (131, 120127, 120302), (137, 75076, 75251), (137, 93845, 94020), (137, 112614, 112789), (139, 77284, 77459)]

def row176_layer001_block005 : List ColouredInterval :=
  [(139, 96605, 96780), (139, 115926, 116101), (149, 66603, 66778), (149, 88804, 88979), (149, 111005, 111180), (151, 68403, 68578), (151, 91204, 91379), (151, 114005, 114180), (157, 73947, 74122), (157, 98596, 98771), (163, 79707, 79882), (163, 106276, 106451), (167, 83667, 83842), (167, 111556, 111731), (173, 89787, 89962), (173, 119716, 119891)]

def row176_layer001_chunks : List (List ColouredInterval) :=
  [row176_layer001_block000, row176_layer001_block001, row176_layer001_block002, row176_layer001_block003, row176_layer001_block004, row176_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_intervals
