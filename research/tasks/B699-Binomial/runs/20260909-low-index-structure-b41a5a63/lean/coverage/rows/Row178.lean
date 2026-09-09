import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row178_registered :
    decide (row178.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row178_goods_checked :
    row178.goods.all (goodSegmentCheck row178.height.i row178.height.r row178.height.s) = true := by
  decide +kernel

theorem row178_small_checked :
    coverCheck (2 * row178.height.i + 2) (row178.height.i * (row178.height.i - 1) - 1)
      (row178.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row178_layerCover_checked :
    coverCheck (row178.height.i * (row178.height.i - 1)) (row178.height.n0 - 1)
      (row178.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row178_layer000_checked :
    coverLayerCheck row178.height row178.goods { lower := 31506, upper := 63012, M := 12 } = true := by
  decide +kernel

theorem row178_layer001_checked :
    coverLayerCheck row178.height row178.goods { lower := 63012, upper := 126024, M := 9 } = true := by
  decide +kernel

theorem row178_layer002_checked :
    coverLayerCheck row178.height row178.goods { lower := 126024, upper := 252048, M := 6 } = true := by
  decide +kernel

theorem row178_layer003_checked :
    coverLayerCheck row178.height row178.goods { lower := 252048, upper := 504096, M := 5 } = true := by
  decide +kernel

theorem row178_layer004_checked :
    coverLayerCheck row178.height row178.goods { lower := 504096, upper := 1008192, M := 4 } = true := by
  decide +kernel

theorem row178_layer005_checked :
    coverLayerCheck row178.height row178.goods { lower := 1008192, upper := 2016384, M := 3 } = true := by
  decide +kernel

theorem row178_layer006_checked :
    coverLayerCheck row178.height row178.goods { lower := 2016384, upper := 4032768, M := 2 } = true := by
  decide +kernel

theorem row178_layer007_checked :
    coverLayerCheck row178.height row178.goods { lower := 4032768, upper := 8065536, M := 2 } = true := by
  decide +kernel

theorem row178_layer008_checked :
    coverLayerCheck row178.height row178.goods { lower := 8065536, upper := 10000000, M := 1 } = true := by
  decide +kernel

theorem row178_layers_checked :
    row178.layers.all (coverLayerCheck row178.height row178.goods) = true := by
  change List.all [
    { lower := 31506, upper := 63012, M := 12 },
    { lower := 63012, upper := 126024, M := 9 },
    { lower := 126024, upper := 252048, M := 6 },
    { lower := 252048, upper := 504096, M := 5 },
    { lower := 504096, upper := 1008192, M := 4 },
    { lower := 1008192, upper := 2016384, M := 3 },
    { lower := 2016384, upper := 4032768, M := 2 },
    { lower := 4032768, upper := 8065536, M := 2 },
    { lower := 8065536, upper := 10000000, M := 1 }
  ] (coverLayerCheck row178.height row178.goods) = true
  simp only [List.all_cons, List.all_nil,
    row178_layer000_checked,
    row178_layer001_checked,
    row178_layer002_checked,
    row178_layer003_checked,
    row178_layer004_checked,
    row178_layer005_checked,
    row178_layer006_checked,
    row178_layer007_checked,
    row178_layer008_checked,
    Bool.true_and]

theorem row178_checked : finiteCoverRowCheck row178 = true := by
  simp only [finiteCoverRowCheck, row178_registered, row178_goods_checked,
    row178_small_checked, row178_layerCover_checked, row178_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row178_checked

end B699LowIndex
