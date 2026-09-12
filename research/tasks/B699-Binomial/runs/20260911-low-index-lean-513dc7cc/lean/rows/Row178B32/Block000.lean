import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row178_height : HeightCertificateDatum := { i := 178, r := 59, s := 127, n0Power10 := 7 }

def row178_goods : List GoodSegment := [
  { lower := 358, upper := 530, witness := RowWitness.topPrime 353 },
  { lower := 531, upper := 700, witness := RowWitness.topPrime 523 },
  { lower := 701, upper := 878, witness := RowWitness.topPrime 701 },
  { lower := 879, upper := 1054, witness := RowWitness.topPrime 877 },
  { lower := 1055, upper := 1228, witness := RowWitness.topPrime 1051 },
  { lower := 1229, upper := 1406, witness := RowWitness.topPrime 1229 },
  { lower := 1407, upper := 1576, witness := RowWitness.topPrime 1399 },
  { lower := 1577, upper := 1748, witness := RowWitness.topPrime 1571 },
  { lower := 1749, upper := 1924, witness := RowWitness.topPrime 1747 },
  { lower := 1925, upper := 2090, witness := RowWitness.topPrime 1913 },
  { lower := 2091, upper := 2266, witness := RowWitness.topPrime 2089 },
  { lower := 2267, upper := 2444, witness := RowWitness.topPrime 2267 },
  { lower := 2445, upper := 2618, witness := RowWitness.topPrime 2441 },
  { lower := 2619, upper := 2794, witness := RowWitness.topPrime 2617 },
  { lower := 2795, upper := 2968, witness := RowWitness.topPrime 2791 },
  { lower := 2969, upper := 3146, witness := RowWitness.topPrime 2969 },
  { lower := 3147, upper := 3314, witness := RowWitness.topPrime 3137 },
  { lower := 3315, upper := 3490, witness := RowWitness.topPrime 3313 },
  { lower := 3491, upper := 3668, witness := RowWitness.topPrime 3491 },
  { lower := 3669, upper := 3836, witness := RowWitness.topPrime 3659 },
  { lower := 3837, upper := 4010, witness := RowWitness.topPrime 3833 },
  { lower := 4011, upper := 4184, witness := RowWitness.topPrime 4007 },
  { lower := 4185, upper := 4354, witness := RowWitness.topPrime 4177 },
  { lower := 4355, upper := 4526, witness := RowWitness.topPrime 4349 },
  { lower := 4527, upper := 4700, witness := RowWitness.topPrime 4523 },
  { lower := 4701, upper := 4868, witness := RowWitness.topPrime 4691 },
  { lower := 4869, upper := 5038, witness := RowWitness.topPrime 4861 },
  { lower := 5039, upper := 5216, witness := RowWitness.topPrime 5039 },
  { lower := 5217, upper := 5386, witness := RowWitness.topPrime 5209 },
  { lower := 5387, upper := 5564, witness := RowWitness.topPrime 5387 },
  { lower := 5565, upper := 5740, witness := RowWitness.topPrime 5563 },
  { lower := 5741, upper := 5918, witness := RowWitness.topPrime 5741 },
  { lower := 5919, upper := 6080, witness := RowWitness.topPrime 5903 },
  { lower := 6081, upper := 6256, witness := RowWitness.topPrime 6079 },
  { lower := 6257, upper := 6434, witness := RowWitness.topPrime 6257 },
  { lower := 6435, upper := 6604, witness := RowWitness.topPrime 6427 },
  { lower := 6605, upper := 6776, witness := RowWitness.topPrime 6599 },
  { lower := 6777, upper := 6940, witness := RowWitness.topPrime 6763 },
  { lower := 6941, upper := 7094, witness := RowWitness.topPrime 6917 },
  { lower := 7095, upper := 7256, witness := RowWitness.topPrime 7079 },
  { lower := 7257, upper := 7430, witness := RowWitness.topPrime 7253 },
  { lower := 7431, upper := 7594, witness := RowWitness.topPrime 7417 },
  { lower := 7595, upper := 7768, witness := RowWitness.topPrime 7591 },
  { lower := 7769, upper := 7936, witness := RowWitness.topPrime 7759 },
  { lower := 7937, upper := 8114, witness := RowWitness.topPrime 7937 },
  { lower := 8115, upper := 8288, witness := RowWitness.topPrime 8111 },
  { lower := 8289, upper := 8464, witness := RowWitness.topPrime 8287 },
  { lower := 8465, upper := 8638, witness := RowWitness.topPrime 8461 },
  { lower := 8639, upper := 8806, witness := RowWitness.topPrime 8629 },
  { lower := 8807, upper := 8984, witness := RowWitness.topPrime 8807 },
  { lower := 8985, upper := 9148, witness := RowWitness.topPrime 8971 },
  { lower := 9149, upper := 9314, witness := RowWitness.topPrime 9137 },
  { lower := 9315, upper := 9488, witness := RowWitness.topPrime 9311 },
  { lower := 9489, upper := 9656, witness := RowWitness.topPrime 9479 },
  { lower := 9657, upper := 9826, witness := RowWitness.topPrime 9649 },
  { lower := 9827, upper := 9994, witness := RowWitness.topPrime 9817 },
  { lower := 9995, upper := 10150, witness := RowWitness.topPrime 9973 },
  { lower := 10151, upper := 10328, witness := RowWitness.topPrime 10151 },
  { lower := 10329, upper := 10498, witness := RowWitness.topPrime 10321 },
  { lower := 10499, upper := 10676, witness := RowWitness.topPrime 10499 },
  { lower := 10677, upper := 10844, witness := RowWitness.topPrime 10667 },
  { lower := 10845, upper := 11014, witness := RowWitness.topPrime 10837 },
  { lower := 11015, upper := 11180, witness := RowWitness.topPrime 11003 },
  { lower := 11181, upper := 11354, witness := RowWitness.topPrime 11177 },
  { lower := 11355, upper := 11530, witness := RowWitness.topPrime 11353 },
  { lower := 11531, upper := 11704, witness := RowWitness.topPrime 11527 },
  { lower := 11705, upper := 11878, witness := RowWitness.topPrime 11701 },
  { lower := 11879, upper := 12044, witness := RowWitness.topPrime 11867 },
  { lower := 12045, upper := 12220, witness := RowWitness.topPrime 12043 },
  { lower := 12221, upper := 12388, witness := RowWitness.topPrime 12211 },
  { lower := 12389, upper := 12556, witness := RowWitness.topPrime 12379 },
  { lower := 12557, upper := 12730, witness := RowWitness.topPrime 12553 },
  { lower := 12731, upper := 12898, witness := RowWitness.topPrime 12721 },
  { lower := 12899, upper := 13076, witness := RowWitness.topPrime 12899 },
  { lower := 13077, upper := 13240, witness := RowWitness.topPrime 13063 },
  { lower := 13241, upper := 13418, witness := RowWitness.topPrime 13241 },
  { lower := 13419, upper := 13594, witness := RowWitness.topPrime 13417 },
  { lower := 13595, upper := 13768, witness := RowWitness.topPrime 13591 },
  { lower := 13769, upper := 13940, witness := RowWitness.topPrime 13763 },
  { lower := 13941, upper := 14110, witness := RowWitness.topPrime 13933 },
  { lower := 14111, upper := 14284, witness := RowWitness.topPrime 14107 },
  { lower := 14285, upper := 14458, witness := RowWitness.topPrime 14281 },
  { lower := 14459, upper := 14626, witness := RowWitness.topPrime 14449 },
  { lower := 14627, upper := 14804, witness := RowWitness.topPrime 14627 },
  { lower := 14805, upper := 14974, witness := RowWitness.topPrime 14797 },
  { lower := 14975, upper := 15146, witness := RowWitness.topPrime 14969 },
  { lower := 15147, upper := 15316, witness := RowWitness.topPrime 15139 },
  { lower := 15317, upper := 15490, witness := RowWitness.topPrime 15313 },
  { lower := 15491, upper := 15650, witness := RowWitness.topPrime 15473 },
  { lower := 15651, upper := 15826, witness := RowWitness.topPrime 15649 },
  { lower := 15827, upper := 16000, witness := RowWitness.topPrime 15823 },
  { lower := 16001, upper := 16178, witness := RowWitness.topPrime 16001 },
  { lower := 16179, upper := 16318, witness := RowWitness.topPrime 16141 },
  { lower := 16319, upper := 16496, witness := RowWitness.topPrime 16319 },
  { lower := 16497, upper := 16670, witness := RowWitness.topPrime 16493 },
  { lower := 16671, upper := 16838, witness := RowWitness.topPrime 16661 },
  { lower := 16839, upper := 17008, witness := RowWitness.topPrime 16831 },
  { lower := 17009, upper := 17170, witness := RowWitness.topPrime 16993 },
  { lower := 17171, upper := 17344, witness := RowWitness.topPrime 17167 },
  { lower := 17345, upper := 17518, witness := RowWitness.topPrime 17341 },
  { lower := 17519, upper := 17696, witness := RowWitness.topPrime 17519 },
  { lower := 17697, upper := 17860, witness := RowWitness.topPrime 17683 },
  { lower := 17861, upper := 18028, witness := RowWitness.topPrime 17851 },
  { lower := 18029, upper := 18190, witness := RowWitness.topPrime 18013 },
  { lower := 18191, upper := 18368, witness := RowWitness.topPrime 18191 },
  { lower := 18369, upper := 18544, witness := RowWitness.topPrime 18367 },
  { lower := 18545, upper := 18718, witness := RowWitness.topPrime 18541 },
  { lower := 18719, upper := 18896, witness := RowWitness.topPrime 18719 },
  { lower := 18897, upper := 19046, witness := RowWitness.topPrime 18869 },
  { lower := 19047, upper := 19214, witness := RowWitness.topPrime 19037 },
  { lower := 19215, upper := 19390, witness := RowWitness.topPrime 19213 },
  { lower := 19391, upper := 19568, witness := RowWitness.topPrime 19391 },
  { lower := 19569, upper := 19736, witness := RowWitness.topPrime 19559 },
  { lower := 19737, upper := 19904, witness := RowWitness.topPrime 19727 },
  { lower := 19905, upper := 20068, witness := RowWitness.topPrime 19891 },
  { lower := 20069, upper := 20240, witness := RowWitness.topPrime 20063 },
  { lower := 20241, upper := 20410, witness := RowWitness.topPrime 20233 },
  { lower := 20411, upper := 20588, witness := RowWitness.topPrime 20411 },
  { lower := 20589, upper := 20740, witness := RowWitness.topPrime 20563 },
  { lower := 20741, upper := 20908, witness := RowWitness.topPrime 20731 },
  { lower := 20909, upper := 21080, witness := RowWitness.topPrime 20903 },
  { lower := 21081, upper := 21244, witness := RowWitness.topPrime 21067 },
  { lower := 21245, upper := 21404, witness := RowWitness.topPrime 21227 },
  { lower := 21405, upper := 21578, witness := RowWitness.topPrime 21401 },
  { lower := 21579, upper := 21754, witness := RowWitness.topPrime 21577 },
  { lower := 21755, upper := 21928, witness := RowWitness.topPrime 21751 },
  { lower := 21929, upper := 22106, witness := RowWitness.topPrime 21929 },
  { lower := 22107, upper := 22270, witness := RowWitness.topPrime 22093 },
  { lower := 22271, upper := 22448, witness := RowWitness.topPrime 22271 },
  { lower := 22449, upper := 22624, witness := RowWitness.topPrime 22447 },
  { lower := 22625, upper := 22798, witness := RowWitness.topPrime 22621 },
  { lower := 22799, upper := 22964, witness := RowWitness.topPrime 22787 },
  { lower := 22965, upper := 23140, witness := RowWitness.topPrime 22963 },
  { lower := 23141, upper := 23308, witness := RowWitness.topPrime 23131 },
  { lower := 23309, upper := 23474, witness := RowWitness.topPrime 23297 },
  { lower := 23475, upper := 23650, witness := RowWitness.topPrime 23473 },
  { lower := 23651, upper := 23810, witness := RowWitness.topPrime 23633 },
  { lower := 23811, upper := 23978, witness := RowWitness.topPrime 23801 },
  { lower := 23979, upper := 24154, witness := RowWitness.topPrime 23977 },
  { lower := 24155, upper := 24328, witness := RowWitness.topPrime 24151 },
  { lower := 24329, upper := 24506, witness := RowWitness.topPrime 24329 },
  { lower := 24507, upper := 24676, witness := RowWitness.topPrime 24499 },
  { lower := 24677, upper := 24854, witness := RowWitness.topPrime 24677 },
  { lower := 24855, upper := 25028, witness := RowWitness.topPrime 24851 },
  { lower := 25029, upper := 25190, witness := RowWitness.topPrime 25013 },
  { lower := 25191, upper := 25366, witness := RowWitness.topPrime 25189 },
  { lower := 25367, upper := 25544, witness := RowWitness.topPrime 25367 },
  { lower := 25545, upper := 25718, witness := RowWitness.topPrime 25541 },
  { lower := 25719, upper := 25894, witness := RowWitness.topPrime 25717 },
  { lower := 25895, upper := 26066, witness := RowWitness.topPrime 25889 },
  { lower := 26067, upper := 26230, witness := RowWitness.topPrime 26053 },
  { lower := 26231, upper := 26404, witness := RowWitness.topPrime 26227 },
  { lower := 26405, upper := 26576, witness := RowWitness.topPrime 26399 },
  { lower := 26577, upper := 26750, witness := RowWitness.topPrime 26573 },
  { lower := 26751, upper := 26914, witness := RowWitness.topPrime 26737 },
  { lower := 26915, upper := 27080, witness := RowWitness.topPrime 26903 },
  { lower := 27081, upper := 27254, witness := RowWitness.topPrime 27077 },
  { lower := 27255, upper := 27430, witness := RowWitness.topPrime 27253 },
  { lower := 27431, upper := 27608, witness := RowWitness.topPrime 27431 },
  { lower := 27609, upper := 27760, witness := RowWitness.topPrime 27583 },
  { lower := 27761, upper := 27928, witness := RowWitness.topPrime 27751 },
  { lower := 27929, upper := 28096, witness := RowWitness.topPrime 27919 },
  { lower := 28097, upper := 28274, witness := RowWitness.topPrime 28097 },
  { lower := 28275, upper := 28406, witness := RowWitness.topPrime 28229 },
  { lower := 28407, upper := 28580, witness := RowWitness.topPrime 28403 },
  { lower := 28581, upper := 28756, witness := RowWitness.topPrime 28579 },
  { lower := 28757, upper := 28930, witness := RowWitness.topPrime 28753 },
  { lower := 28931, upper := 29104, witness := RowWitness.topPrime 28927 },
  { lower := 29105, upper := 29278, witness := RowWitness.topPrime 29101 },
  { lower := 29279, upper := 29446, witness := RowWitness.topPrime 29269 },
  { lower := 29447, upper := 29620, witness := RowWitness.topPrime 29443 },
  { lower := 29621, upper := 29788, witness := RowWitness.topPrime 29611 },
  { lower := 29789, upper := 29966, witness := RowWitness.topPrime 29789 },
  { lower := 29967, upper := 30136, witness := RowWitness.topPrime 29959 },
  { lower := 30137, upper := 30314, witness := RowWitness.topPrime 30137 },
  { lower := 30315, upper := 30490, witness := RowWitness.topPrime 30313 },
  { lower := 30491, upper := 30668, witness := RowWitness.topPrime 30491 },
  { lower := 30669, upper := 30838, witness := RowWitness.topPrime 30661 },
  { lower := 30839, upper := 31016, witness := RowWitness.topPrime 30839 },
  { lower := 31017, upper := 31190, witness := RowWitness.topPrime 31013 },
  { lower := 31191, upper := 31366, witness := RowWitness.topPrime 31189 },
  { lower := 31367, upper := 31506, witness := RowWitness.topPrime 31357 },
  { lower := 31974, upper := 32004, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32945, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33666, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33791, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34496, witness := RowWitness.topPrime 34319 },
  { lower := 34497, upper := 34568, witness := RowWitness.topPrime 34487 },
  { lower := 37303, upper := 37387, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37480, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37670, witness := RowWitness.topPrime 37493 },
  { lower := 37671, upper := 37715, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38468, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39481, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40505, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41104, witness := RowWitness.topPrime 40927 },
  { lower := 41105, upper := 41108, witness := RowWitness.topPrime 41081 },
  { lower := 45927, upper := 45973, witness := RowWitness.topPrime 45893 },
  { lower := 47045, upper := 47052, witness := RowWitness.topPrime 47041 },
  { lower := 48013, upper := 48138, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48400, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48845, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49316, witness := RowWitness.topPrime 49139 },
  { lower := 49317, upper := 49329, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49475, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50587, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51182, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53222, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53315, witness := RowWitness.topPrime 53281 },
  { lower := 54043, upper := 54045, witness := RowWitness.topPrime 54037 },
  { lower := 56307, upper := 56346, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56484, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57299, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58741, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59133, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59582, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62587, witness := RowWitness.topPrime 62497 },
  { lower := 68694, upper := 68821, witness := RowWitness.topPrime 68687 },
  { lower := 71407, upper := 71463, witness := RowWitness.topPrime 71399 },
  { lower := 73167, upper := 73179, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73344, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83698, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85860, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89550, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93927, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96782, witness := RowWitness.topPrime 96769 },
  { lower := 98415, upper := 98481, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103143, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109552, witness := RowWitness.topPrime 109481 },
  { lower := 148955, upper := 149054, witness := RowWitness.topPrime 148949 }
]

def row178_layers : List CoverLayer := [
  { lower := 31506, upper := 63012, M := 12 },
  { lower := 63012, upper := 126024, M := 9 },
  { lower := 126024, upper := 252048, M := 6 },
  { lower := 252048, upper := 504096, M := 5 },
  { lower := 504096, upper := 1008192, M := 4 },
  { lower := 1008192, upper := 2016384, M := 3 },
  { lower := 2016384, upper := 4032768, M := 2 },
  { lower := 4032768, upper := 8065536, M := 2 },
  { lower := 8065536, upper := 10000000, M := 1 }
]

def row178 : FiniteCoverRow := {
  height := row178_height,
  goods := row178_goods,
  layers := row178_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good000_checked :
    goodSegmentCheck 178 59 127
      { lower := 358, upper := 530, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good001_checked :
    goodSegmentCheck 178 59 127
      { lower := 531, upper := 700, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good002_checked :
    goodSegmentCheck 178 59 127
      { lower := 701, upper := 878, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good003_checked :
    goodSegmentCheck 178 59 127
      { lower := 879, upper := 1054, witness := RowWitness.topPrime 877 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good004_checked :
    goodSegmentCheck 178 59 127
      { lower := 1055, upper := 1228, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good005_checked :
    goodSegmentCheck 178 59 127
      { lower := 1229, upper := 1406, witness := RowWitness.topPrime 1229 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good006_checked :
    goodSegmentCheck 178 59 127
      { lower := 1407, upper := 1576, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good007_checked :
    goodSegmentCheck 178 59 127
      { lower := 1577, upper := 1748, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good008_checked :
    goodSegmentCheck 178 59 127
      { lower := 1749, upper := 1924, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good009_checked :
    goodSegmentCheck 178 59 127
      { lower := 1925, upper := 2090, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good010_checked :
    goodSegmentCheck 178 59 127
      { lower := 2091, upper := 2266, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good011_checked :
    goodSegmentCheck 178 59 127
      { lower := 2267, upper := 2444, witness := RowWitness.topPrime 2267 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good012_checked :
    goodSegmentCheck 178 59 127
      { lower := 2445, upper := 2618, witness := RowWitness.topPrime 2441 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good013_checked :
    goodSegmentCheck 178 59 127
      { lower := 2619, upper := 2794, witness := RowWitness.topPrime 2617 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good014_checked :
    goodSegmentCheck 178 59 127
      { lower := 2795, upper := 2968, witness := RowWitness.topPrime 2791 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good015_checked :
    goodSegmentCheck 178 59 127
      { lower := 2969, upper := 3146, witness := RowWitness.topPrime 2969 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good016_checked :
    goodSegmentCheck 178 59 127
      { lower := 3147, upper := 3314, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good017_checked :
    goodSegmentCheck 178 59 127
      { lower := 3315, upper := 3490, witness := RowWitness.topPrime 3313 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good018_checked :
    goodSegmentCheck 178 59 127
      { lower := 3491, upper := 3668, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good019_checked :
    goodSegmentCheck 178 59 127
      { lower := 3669, upper := 3836, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good020_checked :
    goodSegmentCheck 178 59 127
      { lower := 3837, upper := 4010, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good021_checked :
    goodSegmentCheck 178 59 127
      { lower := 4011, upper := 4184, witness := RowWitness.topPrime 4007 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good022_checked :
    goodSegmentCheck 178 59 127
      { lower := 4185, upper := 4354, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good023_checked :
    goodSegmentCheck 178 59 127
      { lower := 4355, upper := 4526, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good024_checked :
    goodSegmentCheck 178 59 127
      { lower := 4527, upper := 4700, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good025_checked :
    goodSegmentCheck 178 59 127
      { lower := 4701, upper := 4868, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good026_checked :
    goodSegmentCheck 178 59 127
      { lower := 4869, upper := 5038, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good027_checked :
    goodSegmentCheck 178 59 127
      { lower := 5039, upper := 5216, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good028_checked :
    goodSegmentCheck 178 59 127
      { lower := 5217, upper := 5386, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good029_checked :
    goodSegmentCheck 178 59 127
      { lower := 5387, upper := 5564, witness := RowWitness.topPrime 5387 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good030_checked :
    goodSegmentCheck 178 59 127
      { lower := 5565, upper := 5740, witness := RowWitness.topPrime 5563 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good031_checked :
    goodSegmentCheck 178 59 127
      { lower := 5741, upper := 5918, witness := RowWitness.topPrime 5741 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good032_checked :
    goodSegmentCheck 178 59 127
      { lower := 5919, upper := 6080, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good033_checked :
    goodSegmentCheck 178 59 127
      { lower := 6081, upper := 6256, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good034_checked :
    goodSegmentCheck 178 59 127
      { lower := 6257, upper := 6434, witness := RowWitness.topPrime 6257 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good035_checked :
    goodSegmentCheck 178 59 127
      { lower := 6435, upper := 6604, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good036_checked :
    goodSegmentCheck 178 59 127
      { lower := 6605, upper := 6776, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good037_checked :
    goodSegmentCheck 178 59 127
      { lower := 6777, upper := 6940, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good038_checked :
    goodSegmentCheck 178 59 127
      { lower := 6941, upper := 7094, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good039_checked :
    goodSegmentCheck 178 59 127
      { lower := 7095, upper := 7256, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good040_checked :
    goodSegmentCheck 178 59 127
      { lower := 7257, upper := 7430, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good041_checked :
    goodSegmentCheck 178 59 127
      { lower := 7431, upper := 7594, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good042_checked :
    goodSegmentCheck 178 59 127
      { lower := 7595, upper := 7768, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good043_checked :
    goodSegmentCheck 178 59 127
      { lower := 7769, upper := 7936, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good044_checked :
    goodSegmentCheck 178 59 127
      { lower := 7937, upper := 8114, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good045_checked :
    goodSegmentCheck 178 59 127
      { lower := 8115, upper := 8288, witness := RowWitness.topPrime 8111 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good046_checked :
    goodSegmentCheck 178 59 127
      { lower := 8289, upper := 8464, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good047_checked :
    goodSegmentCheck 178 59 127
      { lower := 8465, upper := 8638, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good048_checked :
    goodSegmentCheck 178 59 127
      { lower := 8639, upper := 8806, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good049_checked :
    goodSegmentCheck 178 59 127
      { lower := 8807, upper := 8984, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good050_checked :
    goodSegmentCheck 178 59 127
      { lower := 8985, upper := 9148, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good051_checked :
    goodSegmentCheck 178 59 127
      { lower := 9149, upper := 9314, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good052_checked :
    goodSegmentCheck 178 59 127
      { lower := 9315, upper := 9488, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good053_checked :
    goodSegmentCheck 178 59 127
      { lower := 9489, upper := 9656, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good054_checked :
    goodSegmentCheck 178 59 127
      { lower := 9657, upper := 9826, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good055_checked :
    goodSegmentCheck 178 59 127
      { lower := 9827, upper := 9994, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good056_checked :
    goodSegmentCheck 178 59 127
      { lower := 9995, upper := 10150, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good057_checked :
    goodSegmentCheck 178 59 127
      { lower := 10151, upper := 10328, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good058_checked :
    goodSegmentCheck 178 59 127
      { lower := 10329, upper := 10498, witness := RowWitness.topPrime 10321 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good059_checked :
    goodSegmentCheck 178 59 127
      { lower := 10499, upper := 10676, witness := RowWitness.topPrime 10499 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good060_checked :
    goodSegmentCheck 178 59 127
      { lower := 10677, upper := 10844, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good061_checked :
    goodSegmentCheck 178 59 127
      { lower := 10845, upper := 11014, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good062_checked :
    goodSegmentCheck 178 59 127
      { lower := 11015, upper := 11180, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good063_checked :
    goodSegmentCheck 178 59 127
      { lower := 11181, upper := 11354, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good064_checked :
    goodSegmentCheck 178 59 127
      { lower := 11355, upper := 11530, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good065_checked :
    goodSegmentCheck 178 59 127
      { lower := 11531, upper := 11704, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good066_checked :
    goodSegmentCheck 178 59 127
      { lower := 11705, upper := 11878, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good067_checked :
    goodSegmentCheck 178 59 127
      { lower := 11879, upper := 12044, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good068_checked :
    goodSegmentCheck 178 59 127
      { lower := 12045, upper := 12220, witness := RowWitness.topPrime 12043 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good069_checked :
    goodSegmentCheck 178 59 127
      { lower := 12221, upper := 12388, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good070_checked :
    goodSegmentCheck 178 59 127
      { lower := 12389, upper := 12556, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good071_checked :
    goodSegmentCheck 178 59 127
      { lower := 12557, upper := 12730, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good072_checked :
    goodSegmentCheck 178 59 127
      { lower := 12731, upper := 12898, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good073_checked :
    goodSegmentCheck 178 59 127
      { lower := 12899, upper := 13076, witness := RowWitness.topPrime 12899 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good074_checked :
    goodSegmentCheck 178 59 127
      { lower := 13077, upper := 13240, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good075_checked :
    goodSegmentCheck 178 59 127
      { lower := 13241, upper := 13418, witness := RowWitness.topPrime 13241 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good076_checked :
    goodSegmentCheck 178 59 127
      { lower := 13419, upper := 13594, witness := RowWitness.topPrime 13417 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good077_checked :
    goodSegmentCheck 178 59 127
      { lower := 13595, upper := 13768, witness := RowWitness.topPrime 13591 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good078_checked :
    goodSegmentCheck 178 59 127
      { lower := 13769, upper := 13940, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good079_checked :
    goodSegmentCheck 178 59 127
      { lower := 13941, upper := 14110, witness := RowWitness.topPrime 13933 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good080_checked :
    goodSegmentCheck 178 59 127
      { lower := 14111, upper := 14284, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good081_checked :
    goodSegmentCheck 178 59 127
      { lower := 14285, upper := 14458, witness := RowWitness.topPrime 14281 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good082_checked :
    goodSegmentCheck 178 59 127
      { lower := 14459, upper := 14626, witness := RowWitness.topPrime 14449 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good083_checked :
    goodSegmentCheck 178 59 127
      { lower := 14627, upper := 14804, witness := RowWitness.topPrime 14627 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good084_checked :
    goodSegmentCheck 178 59 127
      { lower := 14805, upper := 14974, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good085_checked :
    goodSegmentCheck 178 59 127
      { lower := 14975, upper := 15146, witness := RowWitness.topPrime 14969 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good086_checked :
    goodSegmentCheck 178 59 127
      { lower := 15147, upper := 15316, witness := RowWitness.topPrime 15139 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good087_checked :
    goodSegmentCheck 178 59 127
      { lower := 15317, upper := 15490, witness := RowWitness.topPrime 15313 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good088_checked :
    goodSegmentCheck 178 59 127
      { lower := 15491, upper := 15650, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good089_checked :
    goodSegmentCheck 178 59 127
      { lower := 15651, upper := 15826, witness := RowWitness.topPrime 15649 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good090_checked :
    goodSegmentCheck 178 59 127
      { lower := 15827, upper := 16000, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good091_checked :
    goodSegmentCheck 178 59 127
      { lower := 16001, upper := 16178, witness := RowWitness.topPrime 16001 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good092_checked :
    goodSegmentCheck 178 59 127
      { lower := 16179, upper := 16318, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good093_checked :
    goodSegmentCheck 178 59 127
      { lower := 16319, upper := 16496, witness := RowWitness.topPrime 16319 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good094_checked :
    goodSegmentCheck 178 59 127
      { lower := 16497, upper := 16670, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good095_checked :
    goodSegmentCheck 178 59 127
      { lower := 16671, upper := 16838, witness := RowWitness.topPrime 16661 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good096_checked :
    goodSegmentCheck 178 59 127
      { lower := 16839, upper := 17008, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good097_checked :
    goodSegmentCheck 178 59 127
      { lower := 17009, upper := 17170, witness := RowWitness.topPrime 16993 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good098_checked :
    goodSegmentCheck 178 59 127
      { lower := 17171, upper := 17344, witness := RowWitness.topPrime 17167 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good099_checked :
    goodSegmentCheck 178 59 127
      { lower := 17345, upper := 17518, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good100_checked :
    goodSegmentCheck 178 59 127
      { lower := 17519, upper := 17696, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good101_checked :
    goodSegmentCheck 178 59 127
      { lower := 17697, upper := 17860, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good102_checked :
    goodSegmentCheck 178 59 127
      { lower := 17861, upper := 18028, witness := RowWitness.topPrime 17851 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good103_checked :
    goodSegmentCheck 178 59 127
      { lower := 18029, upper := 18190, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good104_checked :
    goodSegmentCheck 178 59 127
      { lower := 18191, upper := 18368, witness := RowWitness.topPrime 18191 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good105_checked :
    goodSegmentCheck 178 59 127
      { lower := 18369, upper := 18544, witness := RowWitness.topPrime 18367 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good106_checked :
    goodSegmentCheck 178 59 127
      { lower := 18545, upper := 18718, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good107_checked :
    goodSegmentCheck 178 59 127
      { lower := 18719, upper := 18896, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good108_checked :
    goodSegmentCheck 178 59 127
      { lower := 18897, upper := 19046, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good109_checked :
    goodSegmentCheck 178 59 127
      { lower := 19047, upper := 19214, witness := RowWitness.topPrime 19037 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good110_checked :
    goodSegmentCheck 178 59 127
      { lower := 19215, upper := 19390, witness := RowWitness.topPrime 19213 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good111_checked :
    goodSegmentCheck 178 59 127
      { lower := 19391, upper := 19568, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good112_checked :
    goodSegmentCheck 178 59 127
      { lower := 19569, upper := 19736, witness := RowWitness.topPrime 19559 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good113_checked :
    goodSegmentCheck 178 59 127
      { lower := 19737, upper := 19904, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good114_checked :
    goodSegmentCheck 178 59 127
      { lower := 19905, upper := 20068, witness := RowWitness.topPrime 19891 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good115_checked :
    goodSegmentCheck 178 59 127
      { lower := 20069, upper := 20240, witness := RowWitness.topPrime 20063 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good116_checked :
    goodSegmentCheck 178 59 127
      { lower := 20241, upper := 20410, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good117_checked :
    goodSegmentCheck 178 59 127
      { lower := 20411, upper := 20588, witness := RowWitness.topPrime 20411 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good118_checked :
    goodSegmentCheck 178 59 127
      { lower := 20589, upper := 20740, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good119_checked :
    goodSegmentCheck 178 59 127
      { lower := 20741, upper := 20908, witness := RowWitness.topPrime 20731 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good120_checked :
    goodSegmentCheck 178 59 127
      { lower := 20909, upper := 21080, witness := RowWitness.topPrime 20903 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good121_checked :
    goodSegmentCheck 178 59 127
      { lower := 21081, upper := 21244, witness := RowWitness.topPrime 21067 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good122_checked :
    goodSegmentCheck 178 59 127
      { lower := 21245, upper := 21404, witness := RowWitness.topPrime 21227 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good123_checked :
    goodSegmentCheck 178 59 127
      { lower := 21405, upper := 21578, witness := RowWitness.topPrime 21401 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good124_checked :
    goodSegmentCheck 178 59 127
      { lower := 21579, upper := 21754, witness := RowWitness.topPrime 21577 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good125_checked :
    goodSegmentCheck 178 59 127
      { lower := 21755, upper := 21928, witness := RowWitness.topPrime 21751 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good126_checked :
    goodSegmentCheck 178 59 127
      { lower := 21929, upper := 22106, witness := RowWitness.topPrime 21929 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good127_checked :
    goodSegmentCheck 178 59 127
      { lower := 22107, upper := 22270, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good128_checked :
    goodSegmentCheck 178 59 127
      { lower := 22271, upper := 22448, witness := RowWitness.topPrime 22271 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good129_checked :
    goodSegmentCheck 178 59 127
      { lower := 22449, upper := 22624, witness := RowWitness.topPrime 22447 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good130_checked :
    goodSegmentCheck 178 59 127
      { lower := 22625, upper := 22798, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good131_checked :
    goodSegmentCheck 178 59 127
      { lower := 22799, upper := 22964, witness := RowWitness.topPrime 22787 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good132_checked :
    goodSegmentCheck 178 59 127
      { lower := 22965, upper := 23140, witness := RowWitness.topPrime 22963 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good133_checked :
    goodSegmentCheck 178 59 127
      { lower := 23141, upper := 23308, witness := RowWitness.topPrime 23131 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good134_checked :
    goodSegmentCheck 178 59 127
      { lower := 23309, upper := 23474, witness := RowWitness.topPrime 23297 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good135_checked :
    goodSegmentCheck 178 59 127
      { lower := 23475, upper := 23650, witness := RowWitness.topPrime 23473 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good136_checked :
    goodSegmentCheck 178 59 127
      { lower := 23651, upper := 23810, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good137_checked :
    goodSegmentCheck 178 59 127
      { lower := 23811, upper := 23978, witness := RowWitness.topPrime 23801 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good138_checked :
    goodSegmentCheck 178 59 127
      { lower := 23979, upper := 24154, witness := RowWitness.topPrime 23977 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good139_checked :
    goodSegmentCheck 178 59 127
      { lower := 24155, upper := 24328, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good140_checked :
    goodSegmentCheck 178 59 127
      { lower := 24329, upper := 24506, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good141_checked :
    goodSegmentCheck 178 59 127
      { lower := 24507, upper := 24676, witness := RowWitness.topPrime 24499 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good142_checked :
    goodSegmentCheck 178 59 127
      { lower := 24677, upper := 24854, witness := RowWitness.topPrime 24677 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good143_checked :
    goodSegmentCheck 178 59 127
      { lower := 24855, upper := 25028, witness := RowWitness.topPrime 24851 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good144_checked :
    goodSegmentCheck 178 59 127
      { lower := 25029, upper := 25190, witness := RowWitness.topPrime 25013 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good145_checked :
    goodSegmentCheck 178 59 127
      { lower := 25191, upper := 25366, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good146_checked :
    goodSegmentCheck 178 59 127
      { lower := 25367, upper := 25544, witness := RowWitness.topPrime 25367 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good147_checked :
    goodSegmentCheck 178 59 127
      { lower := 25545, upper := 25718, witness := RowWitness.topPrime 25541 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good148_checked :
    goodSegmentCheck 178 59 127
      { lower := 25719, upper := 25894, witness := RowWitness.topPrime 25717 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good149_checked :
    goodSegmentCheck 178 59 127
      { lower := 25895, upper := 26066, witness := RowWitness.topPrime 25889 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good150_checked :
    goodSegmentCheck 178 59 127
      { lower := 26067, upper := 26230, witness := RowWitness.topPrime 26053 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good151_checked :
    goodSegmentCheck 178 59 127
      { lower := 26231, upper := 26404, witness := RowWitness.topPrime 26227 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good152_checked :
    goodSegmentCheck 178 59 127
      { lower := 26405, upper := 26576, witness := RowWitness.topPrime 26399 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good153_checked :
    goodSegmentCheck 178 59 127
      { lower := 26577, upper := 26750, witness := RowWitness.topPrime 26573 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good154_checked :
    goodSegmentCheck 178 59 127
      { lower := 26751, upper := 26914, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good155_checked :
    goodSegmentCheck 178 59 127
      { lower := 26915, upper := 27080, witness := RowWitness.topPrime 26903 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good156_checked :
    goodSegmentCheck 178 59 127
      { lower := 27081, upper := 27254, witness := RowWitness.topPrime 27077 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good157_checked :
    goodSegmentCheck 178 59 127
      { lower := 27255, upper := 27430, witness := RowWitness.topPrime 27253 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good158_checked :
    goodSegmentCheck 178 59 127
      { lower := 27431, upper := 27608, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good159_checked :
    goodSegmentCheck 178 59 127
      { lower := 27609, upper := 27760, witness := RowWitness.topPrime 27583 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good160_checked :
    goodSegmentCheck 178 59 127
      { lower := 27761, upper := 27928, witness := RowWitness.topPrime 27751 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good161_checked :
    goodSegmentCheck 178 59 127
      { lower := 27929, upper := 28096, witness := RowWitness.topPrime 27919 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good162_checked :
    goodSegmentCheck 178 59 127
      { lower := 28097, upper := 28274, witness := RowWitness.topPrime 28097 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good163_checked :
    goodSegmentCheck 178 59 127
      { lower := 28275, upper := 28406, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good164_checked :
    goodSegmentCheck 178 59 127
      { lower := 28407, upper := 28580, witness := RowWitness.topPrime 28403 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good165_checked :
    goodSegmentCheck 178 59 127
      { lower := 28581, upper := 28756, witness := RowWitness.topPrime 28579 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good166_checked :
    goodSegmentCheck 178 59 127
      { lower := 28757, upper := 28930, witness := RowWitness.topPrime 28753 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good167_checked :
    goodSegmentCheck 178 59 127
      { lower := 28931, upper := 29104, witness := RowWitness.topPrime 28927 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good168_checked :
    goodSegmentCheck 178 59 127
      { lower := 29105, upper := 29278, witness := RowWitness.topPrime 29101 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good169_checked :
    goodSegmentCheck 178 59 127
      { lower := 29279, upper := 29446, witness := RowWitness.topPrime 29269 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good170_checked :
    goodSegmentCheck 178 59 127
      { lower := 29447, upper := 29620, witness := RowWitness.topPrime 29443 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good171_checked :
    goodSegmentCheck 178 59 127
      { lower := 29621, upper := 29788, witness := RowWitness.topPrime 29611 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good172_checked :
    goodSegmentCheck 178 59 127
      { lower := 29789, upper := 29966, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good173_checked :
    goodSegmentCheck 178 59 127
      { lower := 29967, upper := 30136, witness := RowWitness.topPrime 29959 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good174_checked :
    goodSegmentCheck 178 59 127
      { lower := 30137, upper := 30314, witness := RowWitness.topPrime 30137 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good175_checked :
    goodSegmentCheck 178 59 127
      { lower := 30315, upper := 30490, witness := RowWitness.topPrime 30313 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good176_checked :
    goodSegmentCheck 178 59 127
      { lower := 30491, upper := 30668, witness := RowWitness.topPrime 30491 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good177_checked :
    goodSegmentCheck 178 59 127
      { lower := 30669, upper := 30838, witness := RowWitness.topPrime 30661 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good178_checked :
    goodSegmentCheck 178 59 127
      { lower := 30839, upper := 31016, witness := RowWitness.topPrime 30839 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good179_checked :
    goodSegmentCheck 178 59 127
      { lower := 31017, upper := 31190, witness := RowWitness.topPrime 31013 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good180_checked :
    goodSegmentCheck 178 59 127
      { lower := 31191, upper := 31366, witness := RowWitness.topPrime 31189 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good181_checked :
    goodSegmentCheck 178 59 127
      { lower := 31367, upper := 31506, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good182_checked :
    goodSegmentCheck 178 59 127
      { lower := 31974, upper := 32004, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good183_checked :
    goodSegmentCheck 178 59 127
      { lower := 32805, upper := 32945, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good184_checked :
    goodSegmentCheck 178 59 127
      { lower := 33614, upper := 33666, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good185_checked :
    goodSegmentCheck 178 59 127
      { lower := 33708, upper := 33791, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good186_checked :
    goodSegmentCheck 178 59 127
      { lower := 34322, upper := 34496, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good187_checked :
    goodSegmentCheck 178 59 127
      { lower := 34497, upper := 34568, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good188_checked :
    goodSegmentCheck 178 59 127
      { lower := 37303, upper := 37387, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good189_checked :
    goodSegmentCheck 178 59 127
      { lower := 37446, upper := 37480, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good190_checked :
    goodSegmentCheck 178 59 127
      { lower := 37500, upper := 37670, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good191_checked :
    goodSegmentCheck 178 59 127
      { lower := 37671, upper := 37715, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good192_checked :
    goodSegmentCheck 178 59 127
      { lower := 38307, upper := 38468, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good193_checked :
    goodSegmentCheck 178 59 127
      { lower := 39366, upper := 39481, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good194_checked :
    goodSegmentCheck 178 59 127
      { lower := 40401, upper := 40505, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good195_checked :
    goodSegmentCheck 178 59 127
      { lower := 40931, upper := 41104, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good196_checked :
    goodSegmentCheck 178 59 127
      { lower := 41105, upper := 41108, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good197_checked :
    goodSegmentCheck 178 59 127
      { lower := 45927, upper := 45973, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good198_checked :
    goodSegmentCheck 178 59 127
      { lower := 47045, upper := 47052, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good199_checked :
    goodSegmentCheck 178 59 127
      { lower := 48013, upper := 48138, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good200_checked :
    goodSegmentCheck 178 59 127
      { lower := 48387, upper := 48400, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good201_checked :
    goodSegmentCheck 178 59 127
      { lower := 48778, upper := 48845, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good202_checked :
    goodSegmentCheck 178 59 127
      { lower := 49152, upper := 49316, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good203_checked :
    goodSegmentCheck 178 59 127
      { lower := 49317, upper := 49329, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good204_checked :
    goodSegmentCheck 178 59 127
      { lower := 49379, upper := 49475, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good205_checked :
    goodSegmentCheck 178 59 127
      { lower := 50421, upper := 50587, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good206_checked :
    goodSegmentCheck 178 59 127
      { lower := 51076, upper := 51182, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good207_checked :
    goodSegmentCheck 178 59 127
      { lower := 53138, upper := 53222, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good208_checked :
    goodSegmentCheck 178 59 127
      { lower := 53290, upper := 53315, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good209_checked :
    goodSegmentCheck 178 59 127
      { lower := 54043, upper := 54045, witness := RowWitness.topPrime 54037 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good210_checked :
    goodSegmentCheck 178 59 127
      { lower := 56307, upper := 56346, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good211_checked :
    goodSegmentCheck 178 59 127
      { lower := 56454, upper := 56484, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good212_checked :
    goodSegmentCheck 178 59 127
      { lower := 57245, upper := 57299, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good213_checked :
    goodSegmentCheck 178 59 127
      { lower := 58619, upper := 58741, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good214_checked :
    goodSegmentCheck 178 59 127
      { lower := 59049, upper := 59133, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good215_checked :
    goodSegmentCheck 178 59 127
      { lower := 59582, upper := 59582, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good216_checked :
    goodSegmentCheck 178 59 127
      { lower := 62500, upper := 62587, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good217_checked :
    goodSegmentCheck 178 59 127
      { lower := 68694, upper := 68821, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good218_checked :
    goodSegmentCheck 178 59 127
      { lower := 71407, upper := 71463, witness := RowWitness.topPrime 71399 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good219_checked :
    goodSegmentCheck 178 59 127
      { lower := 73167, upper := 73179, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good220_checked :
    goodSegmentCheck 178 59 127
      { lower := 73205, upper := 73344, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good221_checked :
    goodSegmentCheck 178 59 127
      { lower := 83667, upper := 83698, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good222_checked :
    goodSegmentCheck 178 59 127
      { lower := 85805, upper := 85860, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good223_checked :
    goodSegmentCheck 178 59 127
      { lower := 89383, upper := 89550, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_good224_checked :
    goodSegmentCheck 178 59 127
      { lower := 93845, upper := 93927, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good225_checked :
    goodSegmentCheck 178 59 127
      { lower := 96774, upper := 96782, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good226_checked :
    goodSegmentCheck 178 59 127
      { lower := 98415, upper := 98481, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good227_checked :
    goodSegmentCheck 178 59 127
      { lower := 103041, upper := 103143, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good228_checked :
    goodSegmentCheck 178 59 127
      { lower := 109503, upper := 109552, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row178_good229_checked :
    goodSegmentCheck 178 59 127
      { lower := 148955, upper := 149054, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 178) (r := 59) (s := 127) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_good229_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_goods_checked :
    row178.goods.all (goodSegmentCheck row178.height.i row178.height.r row178.height.s) = true := by
  change row178_goods.all (goodSegmentCheck 178 59 127) = true
  simp only [row178_goods, List.all_cons, List.all_nil,
    row178_good000_checked,
    row178_good001_checked,
    row178_good002_checked,
    row178_good003_checked,
    row178_good004_checked,
    row178_good005_checked,
    row178_good006_checked,
    row178_good007_checked,
    row178_good008_checked,
    row178_good009_checked,
    row178_good010_checked,
    row178_good011_checked,
    row178_good012_checked,
    row178_good013_checked,
    row178_good014_checked,
    row178_good015_checked,
    row178_good016_checked,
    row178_good017_checked,
    row178_good018_checked,
    row178_good019_checked,
    row178_good020_checked,
    row178_good021_checked,
    row178_good022_checked,
    row178_good023_checked,
    row178_good024_checked,
    row178_good025_checked,
    row178_good026_checked,
    row178_good027_checked,
    row178_good028_checked,
    row178_good029_checked,
    row178_good030_checked,
    row178_good031_checked,
    row178_good032_checked,
    row178_good033_checked,
    row178_good034_checked,
    row178_good035_checked,
    row178_good036_checked,
    row178_good037_checked,
    row178_good038_checked,
    row178_good039_checked,
    row178_good040_checked,
    row178_good041_checked,
    row178_good042_checked,
    row178_good043_checked,
    row178_good044_checked,
    row178_good045_checked,
    row178_good046_checked,
    row178_good047_checked,
    row178_good048_checked,
    row178_good049_checked,
    row178_good050_checked,
    row178_good051_checked,
    row178_good052_checked,
    row178_good053_checked,
    row178_good054_checked,
    row178_good055_checked,
    row178_good056_checked,
    row178_good057_checked,
    row178_good058_checked,
    row178_good059_checked,
    row178_good060_checked,
    row178_good061_checked,
    row178_good062_checked,
    row178_good063_checked,
    row178_good064_checked,
    row178_good065_checked,
    row178_good066_checked,
    row178_good067_checked,
    row178_good068_checked,
    row178_good069_checked,
    row178_good070_checked,
    row178_good071_checked,
    row178_good072_checked,
    row178_good073_checked,
    row178_good074_checked,
    row178_good075_checked,
    row178_good076_checked,
    row178_good077_checked,
    row178_good078_checked,
    row178_good079_checked,
    row178_good080_checked,
    row178_good081_checked,
    row178_good082_checked,
    row178_good083_checked,
    row178_good084_checked,
    row178_good085_checked,
    row178_good086_checked,
    row178_good087_checked,
    row178_good088_checked,
    row178_good089_checked,
    row178_good090_checked,
    row178_good091_checked,
    row178_good092_checked,
    row178_good093_checked,
    row178_good094_checked,
    row178_good095_checked,
    row178_good096_checked,
    row178_good097_checked,
    row178_good098_checked,
    row178_good099_checked,
    row178_good100_checked,
    row178_good101_checked,
    row178_good102_checked,
    row178_good103_checked,
    row178_good104_checked,
    row178_good105_checked,
    row178_good106_checked,
    row178_good107_checked,
    row178_good108_checked,
    row178_good109_checked,
    row178_good110_checked,
    row178_good111_checked,
    row178_good112_checked,
    row178_good113_checked,
    row178_good114_checked,
    row178_good115_checked,
    row178_good116_checked,
    row178_good117_checked,
    row178_good118_checked,
    row178_good119_checked,
    row178_good120_checked,
    row178_good121_checked,
    row178_good122_checked,
    row178_good123_checked,
    row178_good124_checked,
    row178_good125_checked,
    row178_good126_checked,
    row178_good127_checked,
    row178_good128_checked,
    row178_good129_checked,
    row178_good130_checked,
    row178_good131_checked,
    row178_good132_checked,
    row178_good133_checked,
    row178_good134_checked,
    row178_good135_checked,
    row178_good136_checked,
    row178_good137_checked,
    row178_good138_checked,
    row178_good139_checked,
    row178_good140_checked,
    row178_good141_checked,
    row178_good142_checked,
    row178_good143_checked,
    row178_good144_checked,
    row178_good145_checked,
    row178_good146_checked,
    row178_good147_checked,
    row178_good148_checked,
    row178_good149_checked,
    row178_good150_checked,
    row178_good151_checked,
    row178_good152_checked,
    row178_good153_checked,
    row178_good154_checked,
    row178_good155_checked,
    row178_good156_checked,
    row178_good157_checked,
    row178_good158_checked,
    row178_good159_checked,
    row178_good160_checked,
    row178_good161_checked,
    row178_good162_checked,
    row178_good163_checked,
    row178_good164_checked,
    row178_good165_checked,
    row178_good166_checked,
    row178_good167_checked,
    row178_good168_checked,
    row178_good169_checked,
    row178_good170_checked,
    row178_good171_checked,
    row178_good172_checked,
    row178_good173_checked,
    row178_good174_checked,
    row178_good175_checked,
    row178_good176_checked,
    row178_good177_checked,
    row178_good178_checked,
    row178_good179_checked,
    row178_good180_checked,
    row178_good181_checked,
    row178_good182_checked,
    row178_good183_checked,
    row178_good184_checked,
    row178_good185_checked,
    row178_good186_checked,
    row178_good187_checked,
    row178_good188_checked,
    row178_good189_checked,
    row178_good190_checked,
    row178_good191_checked,
    row178_good192_checked,
    row178_good193_checked,
    row178_good194_checked,
    row178_good195_checked,
    row178_good196_checked,
    row178_good197_checked,
    row178_good198_checked,
    row178_good199_checked,
    row178_good200_checked,
    row178_good201_checked,
    row178_good202_checked,
    row178_good203_checked,
    row178_good204_checked,
    row178_good205_checked,
    row178_good206_checked,
    row178_good207_checked,
    row178_good208_checked,
    row178_good209_checked,
    row178_good210_checked,
    row178_good211_checked,
    row178_good212_checked,
    row178_good213_checked,
    row178_good214_checked,
    row178_good215_checked,
    row178_good216_checked,
    row178_good217_checked,
    row178_good218_checked,
    row178_good219_checked,
    row178_good220_checked,
    row178_good221_checked,
    row178_good222_checked,
    row178_good223_checked,
    row178_good224_checked,
    row178_good225_checked,
    row178_good226_checked,
    row178_good227_checked,
    row178_good228_checked,
    row178_good229_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_registered :
    decide (row178.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row178_small_checked :
    coverCheck (2 * row178.height.i + 2) (row178.height.i * (row178.height.i - 1) - 1)
      (row178.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row178_layerCover_checked :
    coverCheck (row178.height.i * (row178.height.i - 1)) (row178.height.n0 - 1)
      (row178.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row178_bounds : List NatInterval :=
  [(358, 530), (531, 700), (701, 878), (879, 1054), (1055, 1228), (1229, 1406), (1407, 1576), (1577, 1748), (1749, 1924), (1925, 2090), (2091, 2266), (2267, 2444), (2445, 2618), (2619, 2794), (2795, 2968), (2969, 3146), (3147, 3314), (3315, 3490), (3491, 3668), (3669, 3836), (3837, 4010), (4011, 4184), (4185, 4354), (4355, 4526), (4527, 4700), (4701, 4868), (4869, 5038), (5039, 5216), (5217, 5386), (5387, 5564), (5565, 5740), (5741, 5918), (5919, 6080), (6081, 6256), (6257, 6434), (6435, 6604), (6605, 6776), (6777, 6940), (6941, 7094), (7095, 7256), (7257, 7430), (7431, 7594), (7595, 7768), (7769, 7936), (7937, 8114), (8115, 8288), (8289, 8464), (8465, 8638), (8639, 8806), (8807, 8984), (8985, 9148), (9149, 9314), (9315, 9488), (9489, 9656), (9657, 9826), (9827, 9994), (9995, 10150), (10151, 10328), (10329, 10498), (10499, 10676), (10677, 10844), (10845, 11014), (11015, 11180), (11181, 11354), (11355, 11530), (11531, 11704), (11705, 11878), (11879, 12044), (12045, 12220), (12221, 12388), (12389, 12556), (12557, 12730), (12731, 12898), (12899, 13076), (13077, 13240), (13241, 13418), (13419, 13594), (13595, 13768), (13769, 13940), (13941, 14110), (14111, 14284), (14285, 14458), (14459, 14626), (14627, 14804), (14805, 14974), (14975, 15146), (15147, 15316), (15317, 15490), (15491, 15650), (15651, 15826), (15827, 16000), (16001, 16178), (16179, 16318), (16319, 16496), (16497, 16670), (16671, 16838), (16839, 17008), (17009, 17170), (17171, 17344), (17345, 17518), (17519, 17696), (17697, 17860), (17861, 18028), (18029, 18190), (18191, 18368), (18369, 18544), (18545, 18718), (18719, 18896), (18897, 19046), (19047, 19214), (19215, 19390), (19391, 19568), (19569, 19736), (19737, 19904), (19905, 20068), (20069, 20240), (20241, 20410), (20411, 20588), (20589, 20740), (20741, 20908), (20909, 21080), (21081, 21244), (21245, 21404), (21405, 21578), (21579, 21754), (21755, 21928), (21929, 22106), (22107, 22270), (22271, 22448), (22449, 22624), (22625, 22798), (22799, 22964), (22965, 23140), (23141, 23308), (23309, 23474), (23475, 23650), (23651, 23810), (23811, 23978), (23979, 24154), (24155, 24328), (24329, 24506), (24507, 24676), (24677, 24854), (24855, 25028), (25029, 25190), (25191, 25366), (25367, 25544), (25545, 25718), (25719, 25894), (25895, 26066), (26067, 26230), (26231, 26404), (26405, 26576), (26577, 26750), (26751, 26914), (26915, 27080), (27081, 27254), (27255, 27430), (27431, 27608), (27609, 27760), (27761, 27928), (27929, 28096), (28097, 28274), (28275, 28406), (28407, 28580), (28581, 28756), (28757, 28930), (28931, 29104), (29105, 29278), (29279, 29446), (29447, 29620), (29621, 29788), (29789, 29966), (29967, 30136), (30137, 30314), (30315, 30490), (30491, 30668), (30669, 30838), (30839, 31016), (31017, 31190), (31191, 31366), (31367, 31506), (31974, 32004), (32805, 32945), (33614, 33666), (33708, 33791), (34322, 34496), (34497, 34568), (37303, 37387), (37446, 37480), (37500, 37670), (37671, 37715), (38307, 38468), (39366, 39481), (40401, 40505), (40931, 41104), (41105, 41108), (45927, 45973), (47045, 47052), (48013, 48138), (48387, 48400), (48778, 48845), (49152, 49316), (49317, 49329), (49379, 49475), (50421, 50587), (51076, 51182), (53138, 53222), (53290, 53315), (54043, 54045), (56307, 56346), (56454, 56484), (57245, 57299), (58619, 58741), (59049, 59133), (59582, 59582), (62500, 62587), (68694, 68821), (71407, 71463), (73167, 73179), (73205, 73344), (83667, 83698), (85805, 85860), (89383, 89550), (93845, 93927), (96774, 96782), (98415, 98481), (103041, 103143), (109503, 109552), (148955, 149054)]

theorem row178_bounds_eq : row178.goods.map goodSegmentBounds = row178_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row178_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32945), (2, 40960, 41137), (2, 49152, 49329), (2, 32768, 32945), (2, 49152, 49329), (2, 32768, 32945), (3, 32805, 32982), (3, 39366, 39543), (3, 45927, 46104), (3, 52488, 52665), (3, 59049, 59226), (3, 39366, 39543), (3, 59049, 59226), (3, 59049, 59226), (5, 34375, 34552), (5, 37500, 37677), (5, 46875, 47052), (5, 62500, 62677), (7, 33614, 33791), (7, 50421, 50598), (11, 43923, 44100), (11, 58564, 58741), (13, 57122, 57299), (17, 34391, 34568), (17, 39304, 39481), (17, 44217, 44394), (17, 49130, 49307), (17, 54043, 54220), (17, 58956, 59133), (19, 34295, 34472), (19, 41154, 41331), (19, 48013, 48190), (19, 54872, 55049), (19, 61731, 61908), (23, 36501, 36678), (23, 48668, 48845), (23, 60835, 61012), (29, 48778, 48955), (31, 59582, 59759), (37, 50653, 50830), (53, 33708, 33885), (59, 31506, 31506), (59, 34810, 34987), (59, 38291, 38468), (59, 41772, 41949), (61, 33489, 33666), (61, 37210, 37387), (61, 40931, 41108), (61, 44652, 44829), (67, 31506, 31600), (67, 35912, 36089), (67, 40401, 40578), (67, 44890, 45067), (67, 49379, 49556), (67, 53868, 54045), (71, 35287, 35464), (71, 40328, 40505), (71, 45369, 45546), (71, 50410, 50587), (71, 55451, 55628), (71, 60492, 60669), (73, 31974, 32151), (73, 37303, 37480), (73, 42632, 42809), (73, 47961, 48138), (73, 53290, 53467), (73, 58619, 58796), (79, 37446, 37623), (79, 43687, 43864), (79, 49928, 50105), (79, 56169, 56346), (79, 62410, 62587), (83, 34445, 34622), (83, 41334, 41511), (83, 48223, 48400), (83, 55112, 55289), (83, 62001, 62178), (97, 37636, 37813), (97, 47045, 47222), (97, 56454, 56631), (101, 40804, 40981), (101, 51005, 51182), (101, 61206, 61383), (103, 31827, 32004), (103, 42436, 42613), (103, 53045, 53222), (107, 34347, 34524), (107, 45796, 45973), (107, 57245, 57422), (109, 35643, 35820), (109, 47524, 47701), (109, 59405, 59582), (113, 38307, 38484), (113, 51076, 51253), (127, 32258, 32435), (127, 48387, 48564), (131, 34322, 34499), (131, 51483, 51660), (137, 37538, 37715), (137, 56307, 56484), (139, 38642, 38819), (139, 57963, 58140), (149, 44402, 44579), (151, 45602, 45779), (157, 49298, 49475), (163, 53138, 53315), (167, 55778, 55955), (173, 59858, 60035)]

def row178_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32945), (2, 40960, 41137), (2, 49152, 49329), (2, 32768, 32945), (2, 49152, 49329), (2, 32768, 32945), (3, 32805, 32982), (3, 39366, 39543), (3, 45927, 46104), (3, 52488, 52665), (3, 59049, 59226), (3, 39366, 39543), (3, 59049, 59226), (3, 59049, 59226), (5, 34375, 34552), (5, 37500, 37677)]

def row178_layer000_block001 : List ColouredInterval :=
  [(5, 46875, 47052), (5, 62500, 62677), (7, 33614, 33791), (7, 50421, 50598), (11, 43923, 44100), (11, 58564, 58741), (13, 57122, 57299), (17, 34391, 34568), (17, 39304, 39481), (17, 44217, 44394), (17, 49130, 49307), (17, 54043, 54220), (17, 58956, 59133), (19, 34295, 34472), (19, 41154, 41331), (19, 48013, 48190)]

def row178_layer000_block002 : List ColouredInterval :=
  [(19, 54872, 55049), (19, 61731, 61908), (23, 36501, 36678), (23, 48668, 48845), (23, 60835, 61012), (29, 48778, 48955), (31, 59582, 59759), (37, 50653, 50830), (53, 33708, 33885), (59, 31506, 31506), (59, 34810, 34987), (59, 38291, 38468), (59, 41772, 41949), (61, 33489, 33666), (61, 37210, 37387), (61, 40931, 41108)]

def row178_layer000_block003 : List ColouredInterval :=
  [(61, 44652, 44829), (67, 31506, 31600), (67, 35912, 36089), (67, 40401, 40578), (67, 44890, 45067), (67, 49379, 49556), (67, 53868, 54045), (71, 35287, 35464), (71, 40328, 40505), (71, 45369, 45546), (71, 50410, 50587), (71, 55451, 55628), (71, 60492, 60669), (73, 31974, 32151), (73, 37303, 37480), (73, 42632, 42809)]

def row178_layer000_block004 : List ColouredInterval :=
  [(73, 47961, 48138), (73, 53290, 53467), (73, 58619, 58796), (79, 37446, 37623), (79, 43687, 43864), (79, 49928, 50105), (79, 56169, 56346), (79, 62410, 62587), (83, 34445, 34622), (83, 41334, 41511), (83, 48223, 48400), (83, 55112, 55289), (83, 62001, 62178), (97, 37636, 37813), (97, 47045, 47222), (97, 56454, 56631)]

def row178_layer000_block005 : List ColouredInterval :=
  [(101, 40804, 40981), (101, 51005, 51182), (101, 61206, 61383), (103, 31827, 32004), (103, 42436, 42613), (103, 53045, 53222), (107, 34347, 34524), (107, 45796, 45973), (107, 57245, 57422), (109, 35643, 35820), (109, 47524, 47701), (109, 59405, 59582), (113, 38307, 38484), (113, 51076, 51253), (127, 32258, 32435), (127, 48387, 48564)]

def row178_layer000_block006 : List ColouredInterval :=
  [(131, 34322, 34499), (131, 51483, 51660), (137, 37538, 37715), (137, 56307, 56484), (139, 38642, 38819), (139, 57963, 58140), (149, 44402, 44579), (151, 45602, 45779), (157, 49298, 49475), (163, 53138, 53315), (167, 55778, 55955), (173, 59858, 60035)]

def row178_layer000_chunks : List (List ColouredInterval) :=
  [row178_layer000_block000, row178_layer000_block001, row178_layer000_block002, row178_layer000_block003, row178_layer000_block004, row178_layer000_block005, row178_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_arithmetic : LayerArithmeticValid row178.height { lower := 31506, upper := 63012, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_enumeration :
    activePowerIntervalList 178 12 31506 63012 = row178_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_pairs000 :
    row178_layer000_block000.all (fun I => row178_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_pairs001 :
    row178_layer000_block001.all (fun I => row178_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_pairs002 :
    row178_layer000_block002.all (fun I => row178_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_pairs003 :
    row178_layer000_block003.all (fun I => row178_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_pairs004 :
    row178_layer000_block004.all (fun I => row178_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_pairs005 :
    row178_layer000_block005.all (fun I => row178_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_pairs006 :
    row178_layer000_block006.all (fun I => row178_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_chunks_eq : row178_layer000_chunks.flatten = row178_layer000_intervals := by
  rfl

theorem row178_layer000_pairs : pairCoverCheck row178_layer000_intervals row178_bounds = true := by
  apply pairCoverCheck_of_chunks row178_layer000_chunks_eq
  intro block hblock
  simp only [row178_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row178_layer000_pairs000
  · exact row178_layer000_pairs001
  · exact row178_layer000_pairs002
  · exact row178_layer000_pairs003
  · exact row178_layer000_pairs004
  · exact row178_layer000_pairs005
  · exact row178_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer000_checked :
    coverLayerCheck row178.height row178.goods { lower := 31506, upper := 63012, M := 12 } = true := by
  exact coverLayerCheck_of_parts row178_layer000_arithmetic row178_layer000_enumeration row178_bounds_eq row178_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row178_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65713), (2, 65536, 65713), (2, 98304, 98481), (2, 65536, 65713), (3, 78732, 78909), (3, 98415, 98592), (3, 118098, 118275), (3, 118098, 118275), (5, 78125, 78302), (5, 93750, 93927), (5, 109375, 109552), (5, 125000, 125177), (5, 78125, 78302), (7, 67228, 67405), (7, 84035, 84212), (7, 100842, 101019), (7, 117649, 117826), (7, 117649, 117826), (11, 73205, 73382), (11, 87846, 88023), (11, 102487, 102664), (11, 117128, 117305), (13, 85683, 85860), (13, 114244, 114421), (17, 83521, 83698), (23, 73002, 73179), (23, 85169, 85346), (23, 97336, 97513), (23, 109503, 109680), (29, 73167, 73344), (29, 97556, 97733), (29, 121945, 122122), (31, 89373, 89550), (31, 119164, 119341), (37, 101306, 101483), (41, 68921, 69098), (43, 79507, 79684), (47, 103823, 104000), (97, 65863, 66040), (97, 75272, 75449), (97, 84681, 84858), (101, 71407, 71584), (101, 81608, 81785), (101, 91809, 91986), (103, 63654, 63831), (103, 74263, 74440), (103, 84872, 85049), (103, 95481, 95658), (107, 68694, 68871), (107, 80143, 80320), (107, 91592, 91769), (107, 103041, 103218), (109, 71286, 71463), (109, 83167, 83344), (109, 95048, 95225), (109, 106929, 107106), (113, 63845, 64022), (113, 76614, 76791), (113, 89383, 89560), (113, 102152, 102329), (113, 114921, 115098), (127, 64516, 64693), (127, 80645, 80822), (127, 96774, 96951), (127, 112903, 113080), (131, 68644, 68821), (131, 85805, 85982), (131, 102966, 103143), (131, 120127, 120304), (137, 75076, 75253), (137, 93845, 94022), (137, 112614, 112791), (139, 77284, 77461), (139, 96605, 96782), (139, 115926, 116103), (149, 66603, 66780), (149, 88804, 88981), (149, 111005, 111182), (151, 68403, 68580), (151, 91204, 91381), (151, 114005, 114182), (157, 73947, 74124), (157, 98596, 98773), (157, 123245, 123422), (163, 79707, 79884), (163, 106276, 106453), (167, 83667, 83844), (167, 111556, 111733), (173, 89787, 89964), (173, 119716, 119893)]

def row178_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65713), (2, 65536, 65713), (2, 98304, 98481), (2, 65536, 65713), (3, 78732, 78909), (3, 98415, 98592), (3, 118098, 118275), (3, 118098, 118275), (5, 78125, 78302), (5, 93750, 93927), (5, 109375, 109552), (5, 125000, 125177), (5, 78125, 78302), (7, 67228, 67405), (7, 84035, 84212), (7, 100842, 101019)]

def row178_layer001_block001 : List ColouredInterval :=
  [(7, 117649, 117826), (7, 117649, 117826), (11, 73205, 73382), (11, 87846, 88023), (11, 102487, 102664), (11, 117128, 117305), (13, 85683, 85860), (13, 114244, 114421), (17, 83521, 83698), (23, 73002, 73179), (23, 85169, 85346), (23, 97336, 97513), (23, 109503, 109680), (29, 73167, 73344), (29, 97556, 97733), (29, 121945, 122122)]

def row178_layer001_block002 : List ColouredInterval :=
  [(31, 89373, 89550), (31, 119164, 119341), (37, 101306, 101483), (41, 68921, 69098), (43, 79507, 79684), (47, 103823, 104000), (97, 65863, 66040), (97, 75272, 75449), (97, 84681, 84858), (101, 71407, 71584), (101, 81608, 81785), (101, 91809, 91986), (103, 63654, 63831), (103, 74263, 74440), (103, 84872, 85049), (103, 95481, 95658)]

def row178_layer001_block003 : List ColouredInterval :=
  [(107, 68694, 68871), (107, 80143, 80320), (107, 91592, 91769), (107, 103041, 103218), (109, 71286, 71463), (109, 83167, 83344), (109, 95048, 95225), (109, 106929, 107106), (113, 63845, 64022), (113, 76614, 76791), (113, 89383, 89560), (113, 102152, 102329), (113, 114921, 115098), (127, 64516, 64693), (127, 80645, 80822), (127, 96774, 96951)]

def row178_layer001_block004 : List ColouredInterval :=
  [(127, 112903, 113080), (131, 68644, 68821), (131, 85805, 85982), (131, 102966, 103143), (131, 120127, 120304), (137, 75076, 75253), (137, 93845, 94022), (137, 112614, 112791), (139, 77284, 77461), (139, 96605, 96782), (139, 115926, 116103), (149, 66603, 66780), (149, 88804, 88981), (149, 111005, 111182), (151, 68403, 68580), (151, 91204, 91381)]

def row178_layer001_block005 : List ColouredInterval :=
  [(151, 114005, 114182), (157, 73947, 74124), (157, 98596, 98773), (157, 123245, 123422), (163, 79707, 79884), (163, 106276, 106453), (167, 83667, 83844), (167, 111556, 111733), (173, 89787, 89964), (173, 119716, 119893)]

def row178_layer001_chunks : List (List ColouredInterval) :=
  [row178_layer001_block000, row178_layer001_block001, row178_layer001_block002, row178_layer001_block003, row178_layer001_block004, row178_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_intervals
