import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row149_height : HeightCertificateDatum := { i := 149, r := 49, s := 106, n0Power10 := 7 }

def row149_goods : List GoodSegment := [
  { lower := 300, upper := 441, witness := RowWitness.topPrime 293 },
  { lower := 442, upper := 587, witness := RowWitness.topPrime 439 },
  { lower := 588, upper := 735, witness := RowWitness.topPrime 587 },
  { lower := 736, upper := 881, witness := RowWitness.topPrime 733 },
  { lower := 882, upper := 1029, witness := RowWitness.topPrime 881 },
  { lower := 1030, upper := 1169, witness := RowWitness.topPrime 1021 },
  { lower := 1170, upper := 1311, witness := RowWitness.topPrime 1163 },
  { lower := 1312, upper := 1455, witness := RowWitness.topPrime 1307 },
  { lower := 1456, upper := 1601, witness := RowWitness.topPrime 1453 },
  { lower := 1602, upper := 1749, witness := RowWitness.topPrime 1601 },
  { lower := 1750, upper := 1895, witness := RowWitness.topPrime 1747 },
  { lower := 1896, upper := 2037, witness := RowWitness.topPrime 1889 },
  { lower := 2038, upper := 2177, witness := RowWitness.topPrime 2029 },
  { lower := 2178, upper := 2309, witness := RowWitness.topPrime 2161 },
  { lower := 2310, upper := 2457, witness := RowWitness.topPrime 2309 },
  { lower := 2458, upper := 2595, witness := RowWitness.topPrime 2447 },
  { lower := 2596, upper := 2741, witness := RowWitness.topPrime 2593 },
  { lower := 2742, upper := 2889, witness := RowWitness.topPrime 2741 },
  { lower := 2890, upper := 3035, witness := RowWitness.topPrime 2887 },
  { lower := 3036, upper := 3171, witness := RowWitness.topPrime 3023 },
  { lower := 3172, upper := 3317, witness := RowWitness.topPrime 3169 },
  { lower := 3318, upper := 3461, witness := RowWitness.topPrime 3313 },
  { lower := 3462, upper := 3609, witness := RowWitness.topPrime 3461 },
  { lower := 3610, upper := 3755, witness := RowWitness.topPrime 3607 },
  { lower := 3756, upper := 3887, witness := RowWitness.topPrime 3739 },
  { lower := 3888, upper := 4029, witness := RowWitness.topPrime 3881 },
  { lower := 4030, upper := 4175, witness := RowWitness.topPrime 4027 },
  { lower := 4176, upper := 4307, witness := RowWitness.topPrime 4159 },
  { lower := 4308, upper := 4445, witness := RowWitness.topPrime 4297 },
  { lower := 4446, upper := 4589, witness := RowWitness.topPrime 4441 },
  { lower := 4590, upper := 4731, witness := RowWitness.topPrime 4583 },
  { lower := 4732, upper := 4877, witness := RowWitness.topPrime 4729 },
  { lower := 4878, upper := 5025, witness := RowWitness.topPrime 4877 },
  { lower := 5026, upper := 5171, witness := RowWitness.topPrime 5023 },
  { lower := 5172, upper := 5319, witness := RowWitness.topPrime 5171 },
  { lower := 5320, upper := 5457, witness := RowWitness.topPrime 5309 },
  { lower := 5458, upper := 5597, witness := RowWitness.topPrime 5449 },
  { lower := 5598, upper := 5739, witness := RowWitness.topPrime 5591 },
  { lower := 5740, upper := 5885, witness := RowWitness.topPrime 5737 },
  { lower := 5886, upper := 6029, witness := RowWitness.topPrime 5881 },
  { lower := 6030, upper := 6177, witness := RowWitness.topPrime 6029 },
  { lower := 6178, upper := 6321, witness := RowWitness.topPrime 6173 },
  { lower := 6322, upper := 6465, witness := RowWitness.topPrime 6317 },
  { lower := 6466, upper := 6599, witness := RowWitness.topPrime 6451 },
  { lower := 6600, upper := 6747, witness := RowWitness.topPrime 6599 },
  { lower := 6748, upper := 6885, witness := RowWitness.topPrime 6737 },
  { lower := 6886, upper := 7031, witness := RowWitness.topPrime 6883 },
  { lower := 7032, upper := 7175, witness := RowWitness.topPrime 7027 },
  { lower := 7176, upper := 7307, witness := RowWitness.topPrime 7159 },
  { lower := 7308, upper := 7455, witness := RowWitness.topPrime 7307 },
  { lower := 7456, upper := 7599, witness := RowWitness.topPrime 7451 },
  { lower := 7600, upper := 7739, witness := RowWitness.topPrime 7591 },
  { lower := 7740, upper := 7875, witness := RowWitness.topPrime 7727 },
  { lower := 7876, upper := 8021, witness := RowWitness.topPrime 7873 },
  { lower := 8022, upper := 8165, witness := RowWitness.topPrime 8017 },
  { lower := 8166, upper := 8309, witness := RowWitness.topPrime 8161 },
  { lower := 8310, upper := 8445, witness := RowWitness.topPrime 8297 },
  { lower := 8446, upper := 8591, witness := RowWitness.topPrime 8443 },
  { lower := 8592, upper := 8729, witness := RowWitness.topPrime 8581 },
  { lower := 8730, upper := 8867, witness := RowWitness.topPrime 8719 },
  { lower := 8868, upper := 9015, witness := RowWitness.topPrime 8867 },
  { lower := 9016, upper := 9161, witness := RowWitness.topPrime 9013 },
  { lower := 9162, upper := 9309, witness := RowWitness.topPrime 9161 },
  { lower := 9310, upper := 9441, witness := RowWitness.topPrime 9293 },
  { lower := 9442, upper := 9587, witness := RowWitness.topPrime 9439 },
  { lower := 9588, upper := 9735, witness := RowWitness.topPrime 9587 },
  { lower := 9736, upper := 9881, witness := RowWitness.topPrime 9733 },
  { lower := 9882, upper := 10019, witness := RowWitness.topPrime 9871 },
  { lower := 10020, upper := 10157, witness := RowWitness.topPrime 10009 },
  { lower := 10158, upper := 10299, witness := RowWitness.topPrime 10151 },
  { lower := 10300, upper := 10437, witness := RowWitness.topPrime 10289 },
  { lower := 10438, upper := 10581, witness := RowWitness.topPrime 10433 },
  { lower := 10582, upper := 10715, witness := RowWitness.topPrime 10567 },
  { lower := 10716, upper := 10859, witness := RowWitness.topPrime 10711 },
  { lower := 10860, upper := 11007, witness := RowWitness.topPrime 10859 },
  { lower := 11008, upper := 11151, witness := RowWitness.topPrime 11003 },
  { lower := 11152, upper := 11297, witness := RowWitness.topPrime 11149 },
  { lower := 11298, upper := 11435, witness := RowWitness.topPrime 11287 },
  { lower := 11436, upper := 11571, witness := RowWitness.topPrime 11423 },
  { lower := 11572, upper := 11699, witness := RowWitness.topPrime 11551 },
  { lower := 11700, upper := 11847, witness := RowWitness.topPrime 11699 },
  { lower := 11848, upper := 11987, witness := RowWitness.topPrime 11839 },
  { lower := 11988, upper := 12135, witness := RowWitness.topPrime 11987 },
  { lower := 12136, upper := 12267, witness := RowWitness.topPrime 12119 },
  { lower := 12268, upper := 12411, witness := RowWitness.topPrime 12263 },
  { lower := 12412, upper := 12557, witness := RowWitness.topPrime 12409 },
  { lower := 12558, upper := 12701, witness := RowWitness.topPrime 12553 },
  { lower := 12702, upper := 12845, witness := RowWitness.topPrime 12697 },
  { lower := 12846, upper := 12989, witness := RowWitness.topPrime 12841 },
  { lower := 12990, upper := 13131, witness := RowWitness.topPrime 12983 },
  { lower := 13132, upper := 13275, witness := RowWitness.topPrime 13127 },
  { lower := 13276, upper := 13415, witness := RowWitness.topPrime 13267 },
  { lower := 13416, upper := 13559, witness := RowWitness.topPrime 13411 },
  { lower := 13560, upper := 13701, witness := RowWitness.topPrime 13553 },
  { lower := 13702, upper := 13845, witness := RowWitness.topPrime 13697 },
  { lower := 13846, upper := 13989, witness := RowWitness.topPrime 13841 },
  { lower := 13990, upper := 14115, witness := RowWitness.topPrime 13967 },
  { lower := 14116, upper := 14255, witness := RowWitness.topPrime 14107 },
  { lower := 14256, upper := 14399, witness := RowWitness.topPrime 14251 },
  { lower := 14400, upper := 14537, witness := RowWitness.topPrime 14389 },
  { lower := 14538, upper := 14685, witness := RowWitness.topPrime 14537 },
  { lower := 14686, upper := 14831, witness := RowWitness.topPrime 14683 },
  { lower := 14832, upper := 14979, witness := RowWitness.topPrime 14831 },
  { lower := 14980, upper := 15117, witness := RowWitness.topPrime 14969 },
  { lower := 15118, upper := 15255, witness := RowWitness.topPrime 15107 },
  { lower := 15256, upper := 15389, witness := RowWitness.topPrime 15241 },
  { lower := 15390, upper := 15531, witness := RowWitness.topPrime 15383 },
  { lower := 15532, upper := 15675, witness := RowWitness.topPrime 15527 },
  { lower := 15676, upper := 15819, witness := RowWitness.topPrime 15671 },
  { lower := 15820, upper := 15965, witness := RowWitness.topPrime 15817 },
  { lower := 15966, upper := 16107, witness := RowWitness.topPrime 15959 },
  { lower := 16108, upper := 16251, witness := RowWitness.topPrime 16103 },
  { lower := 16252, upper := 16397, witness := RowWitness.topPrime 16249 },
  { lower := 16398, upper := 16529, witness := RowWitness.topPrime 16381 },
  { lower := 16530, upper := 16677, witness := RowWitness.topPrime 16529 },
  { lower := 16678, upper := 16821, witness := RowWitness.topPrime 16673 },
  { lower := 16822, upper := 16959, witness := RowWitness.topPrime 16811 },
  { lower := 16960, upper := 17091, witness := RowWitness.topPrime 16943 },
  { lower := 17092, upper := 17225, witness := RowWitness.topPrime 17077 },
  { lower := 17226, upper := 17357, witness := RowWitness.topPrime 17209 },
  { lower := 17358, upper := 17499, witness := RowWitness.topPrime 17351 },
  { lower := 17500, upper := 17645, witness := RowWitness.topPrime 17497 },
  { lower := 17646, upper := 17775, witness := RowWitness.topPrime 17627 },
  { lower := 17776, upper := 17909, witness := RowWitness.topPrime 17761 },
  { lower := 17910, upper := 18057, witness := RowWitness.topPrime 17909 },
  { lower := 18058, upper := 18197, witness := RowWitness.topPrime 18049 },
  { lower := 18198, upper := 18339, witness := RowWitness.topPrime 18191 },
  { lower := 18340, upper := 18477, witness := RowWitness.topPrime 18329 },
  { lower := 18478, upper := 18609, witness := RowWitness.topPrime 18461 },
  { lower := 18610, upper := 18741, witness := RowWitness.topPrime 18593 },
  { lower := 18742, upper := 18879, witness := RowWitness.topPrime 18731 },
  { lower := 18880, upper := 19017, witness := RowWitness.topPrime 18869 },
  { lower := 19018, upper := 19161, witness := RowWitness.topPrime 19013 },
  { lower := 19162, upper := 19305, witness := RowWitness.topPrime 19157 },
  { lower := 19306, upper := 19449, witness := RowWitness.topPrime 19301 },
  { lower := 19450, upper := 19595, witness := RowWitness.topPrime 19447 },
  { lower := 19596, upper := 19731, witness := RowWitness.topPrime 19583 },
  { lower := 19732, upper := 19875, witness := RowWitness.topPrime 19727 },
  { lower := 19876, upper := 20015, witness := RowWitness.topPrime 19867 },
  { lower := 20016, upper := 20159, witness := RowWitness.topPrime 20011 },
  { lower := 20160, upper := 20297, witness := RowWitness.topPrime 20149 },
  { lower := 20298, upper := 20445, witness := RowWitness.topPrime 20297 },
  { lower := 20446, upper := 20591, witness := RowWitness.topPrime 20443 },
  { lower := 20592, upper := 20711, witness := RowWitness.topPrime 20563 },
  { lower := 20712, upper := 20855, witness := RowWitness.topPrime 20707 },
  { lower := 20856, upper := 20997, witness := RowWitness.topPrime 20849 },
  { lower := 20998, upper := 21131, witness := RowWitness.topPrime 20983 },
  { lower := 21132, upper := 21269, witness := RowWitness.topPrime 21121 },
  { lower := 21270, upper := 21417, witness := RowWitness.topPrime 21269 },
  { lower := 21418, upper := 21555, witness := RowWitness.topPrime 21407 },
  { lower := 21556, upper := 21677, witness := RowWitness.topPrime 21529 },
  { lower := 21678, upper := 21821, witness := RowWitness.topPrime 21673 },
  { lower := 21822, upper := 21969, witness := RowWitness.topPrime 21821 },
  { lower := 21970, upper := 22051, witness := RowWitness.topPrime 21961 },
  { lower := 22090, upper := 22118, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22238, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22336, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22589, witness := RowWitness.topPrime 22441 },
  { lower := 22590, upper := 22620, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23909, witness := RowWitness.topPrime 23761 },
  { lower := 23910, upper := 23910, witness := RowWitness.topPrime 23909 },
  { lower := 24037, upper := 24177, witness := RowWitness.topPrime 24029 },
  { lower := 24178, upper := 24205, witness := RowWitness.topPrime 24169 },
  { lower := 24299, upper := 24315, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24477, witness := RowWitness.topPrime 24329 },
  { lower := 24478, upper := 24515, witness := RowWitness.topPrime 24473 },
  { lower := 24576, upper := 24713, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25112, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25353, witness := RowWitness.topPrime 25261 },
  { lower := 26364, upper := 26392, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26555, witness := RowWitness.topPrime 26407 },
  { lower := 26556, upper := 26559, witness := RowWitness.topPrime 26539 },
  { lower := 26624, upper := 26745, witness := RowWitness.topPrime 26597 },
  { lower := 26746, upper := 26772, witness := RowWitness.topPrime 26737 },
  { lower := 27556, upper := 27584, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28271, witness := RowWitness.topPrime 28123 },
  { lower := 28272, upper := 28273, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28579, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28709, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28859, witness := RowWitness.topPrime 28711 },
  { lower := 28860, upper := 28865, witness := RowWitness.topPrime 28859 },
  { lower := 29791, upper := 29916, witness := RowWitness.topPrime 29789 },
  { lower := 31213, upper := 31341, witness := RowWitness.topPrime 31193 },
  { lower := 31342, upper := 31398, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31477, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31832, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31975, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32916, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33637, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33762, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34467, witness := RowWitness.topPrime 34319 },
  { lower := 34468, upper := 34539, witness := RowWitness.topPrime 34457 },
  { lower := 36517, upper := 36645, witness := RowWitness.topPrime 36497 },
  { lower := 36646, upper := 36649, witness := RowWitness.topPrime 36643 },
  { lower := 37303, upper := 37358, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37451, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37641, witness := RowWitness.topPrime 37493 },
  { lower := 37642, upper := 37686, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38439, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39452, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40476, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40952, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41079, witness := RowWitness.topPrime 40949 },
  { lower := 45927, upper := 45944, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47669, witness := RowWitness.topPrime 47521 },
  { lower := 47670, upper := 47672, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48109, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48816, witness := RowWitness.topPrime 48767 },
  { lower := 51076, upper := 51153, witness := RowWitness.topPrime 51071 },
  { lower := 56307, upper := 56317, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56455, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57270, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57393, witness := RowWitness.topPrime 57331 },
  { lower := 68694, upper := 68792, witness := RowWitness.topPrime 68687 },
  { lower := 71289, upper := 71435, witness := RowWitness.topPrime 71287 },
  { lower := 71436, upper := 71437, witness := RowWitness.topPrime 71429 },
  { lower := 73205, upper := 73315, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85831, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89521, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93898, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98452, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137929, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149025, witness := RowWitness.topPrime 148949 }
]

def row149_layers : List CoverLayer := [
  { lower := 22052, upper := 44104, M := 13 },
  { lower := 44104, upper := 88208, M := 9 },
  { lower := 88208, upper := 176416, M := 7 },
  { lower := 176416, upper := 352832, M := 5 },
  { lower := 352832, upper := 705664, M := 4 },
  { lower := 705664, upper := 1411328, M := 3 },
  { lower := 1411328, upper := 2822656, M := 2 },
  { lower := 2822656, upper := 5645312, M := 2 },
  { lower := 5645312, upper := 10000000, M := 1 }
]

def row149 : FiniteCoverRow := {
  height := row149_height,
  goods := row149_goods,
  layers := row149_layers
}

theorem row149_registered :
    decide (row149.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row149_goods_checked :
    row149.goods.all (goodSegmentCheck row149.height.i row149.height.r row149.height.s) = true := by
  decide +kernel

theorem row149_small_checked :
    coverCheck (2 * row149.height.i + 2) (row149.height.i * (row149.height.i - 1) - 1)
      (row149.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row149_layerCover_checked :
    coverCheck (row149.height.i * (row149.height.i - 1)) (row149.height.n0 - 1)
      (row149.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row149_layer000_checked :
    coverLayerCheck row149.height row149.goods { lower := 22052, upper := 44104, M := 13 } = true := by
  decide +kernel

theorem row149_layer001_checked :
    coverLayerCheck row149.height row149.goods { lower := 44104, upper := 88208, M := 9 } = true := by
  decide +kernel

theorem row149_layer002_checked :
    coverLayerCheck row149.height row149.goods { lower := 88208, upper := 176416, M := 7 } = true := by
  decide +kernel

theorem row149_layer003_checked :
    coverLayerCheck row149.height row149.goods { lower := 176416, upper := 352832, M := 5 } = true := by
  decide +kernel

theorem row149_layer004_checked :
    coverLayerCheck row149.height row149.goods { lower := 352832, upper := 705664, M := 4 } = true := by
  decide +kernel

theorem row149_layer005_checked :
    coverLayerCheck row149.height row149.goods { lower := 705664, upper := 1411328, M := 3 } = true := by
  decide +kernel

theorem row149_layer006_checked :
    coverLayerCheck row149.height row149.goods { lower := 1411328, upper := 2822656, M := 2 } = true := by
  decide +kernel

theorem row149_layer007_checked :
    coverLayerCheck row149.height row149.goods { lower := 2822656, upper := 5645312, M := 2 } = true := by
  decide +kernel

theorem row149_layer008_checked :
    coverLayerCheck row149.height row149.goods { lower := 5645312, upper := 10000000, M := 1 } = true := by
  decide +kernel

theorem row149_layers_checked :
    row149.layers.all (coverLayerCheck row149.height row149.goods) = true := by
  change List.all [
    { lower := 22052, upper := 44104, M := 13 },
    { lower := 44104, upper := 88208, M := 9 },
    { lower := 88208, upper := 176416, M := 7 },
    { lower := 176416, upper := 352832, M := 5 },
    { lower := 352832, upper := 705664, M := 4 },
    { lower := 705664, upper := 1411328, M := 3 },
    { lower := 1411328, upper := 2822656, M := 2 },
    { lower := 2822656, upper := 5645312, M := 2 },
    { lower := 5645312, upper := 10000000, M := 1 }
  ] (coverLayerCheck row149.height row149.goods) = true
  simp only [List.all_cons, List.all_nil,
    row149_layer000_checked,
    row149_layer001_checked,
    row149_layer002_checked,
    row149_layer003_checked,
    row149_layer004_checked,
    row149_layer005_checked,
    row149_layer006_checked,
    row149_layer007_checked,
    row149_layer008_checked,
    Bool.true_and]

theorem row149_checked : finiteCoverRowCheck row149 = true := by
  simp only [finiteCoverRowCheck, row149_registered, row149_goods_checked,
    row149_small_checked, row149_layerCover_checked, row149_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row149_checked

end B699LowIndex
