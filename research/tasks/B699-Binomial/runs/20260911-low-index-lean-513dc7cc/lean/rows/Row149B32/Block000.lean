import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good000_checked :
    goodSegmentCheck 149 49 106
      { lower := 300, upper := 441, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good001_checked :
    goodSegmentCheck 149 49 106
      { lower := 442, upper := 587, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good002_checked :
    goodSegmentCheck 149 49 106
      { lower := 588, upper := 735, witness := RowWitness.topPrime 587 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good003_checked :
    goodSegmentCheck 149 49 106
      { lower := 736, upper := 881, witness := RowWitness.topPrime 733 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good004_checked :
    goodSegmentCheck 149 49 106
      { lower := 882, upper := 1029, witness := RowWitness.topPrime 881 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good005_checked :
    goodSegmentCheck 149 49 106
      { lower := 1030, upper := 1169, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good006_checked :
    goodSegmentCheck 149 49 106
      { lower := 1170, upper := 1311, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good007_checked :
    goodSegmentCheck 149 49 106
      { lower := 1312, upper := 1455, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good008_checked :
    goodSegmentCheck 149 49 106
      { lower := 1456, upper := 1601, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good009_checked :
    goodSegmentCheck 149 49 106
      { lower := 1602, upper := 1749, witness := RowWitness.topPrime 1601 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good010_checked :
    goodSegmentCheck 149 49 106
      { lower := 1750, upper := 1895, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good011_checked :
    goodSegmentCheck 149 49 106
      { lower := 1896, upper := 2037, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good012_checked :
    goodSegmentCheck 149 49 106
      { lower := 2038, upper := 2177, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good013_checked :
    goodSegmentCheck 149 49 106
      { lower := 2178, upper := 2309, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good014_checked :
    goodSegmentCheck 149 49 106
      { lower := 2310, upper := 2457, witness := RowWitness.topPrime 2309 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good015_checked :
    goodSegmentCheck 149 49 106
      { lower := 2458, upper := 2595, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good016_checked :
    goodSegmentCheck 149 49 106
      { lower := 2596, upper := 2741, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good017_checked :
    goodSegmentCheck 149 49 106
      { lower := 2742, upper := 2889, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good018_checked :
    goodSegmentCheck 149 49 106
      { lower := 2890, upper := 3035, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good019_checked :
    goodSegmentCheck 149 49 106
      { lower := 3036, upper := 3171, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good020_checked :
    goodSegmentCheck 149 49 106
      { lower := 3172, upper := 3317, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good021_checked :
    goodSegmentCheck 149 49 106
      { lower := 3318, upper := 3461, witness := RowWitness.topPrime 3313 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good022_checked :
    goodSegmentCheck 149 49 106
      { lower := 3462, upper := 3609, witness := RowWitness.topPrime 3461 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good023_checked :
    goodSegmentCheck 149 49 106
      { lower := 3610, upper := 3755, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good024_checked :
    goodSegmentCheck 149 49 106
      { lower := 3756, upper := 3887, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good025_checked :
    goodSegmentCheck 149 49 106
      { lower := 3888, upper := 4029, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good026_checked :
    goodSegmentCheck 149 49 106
      { lower := 4030, upper := 4175, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good027_checked :
    goodSegmentCheck 149 49 106
      { lower := 4176, upper := 4307, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good028_checked :
    goodSegmentCheck 149 49 106
      { lower := 4308, upper := 4445, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good029_checked :
    goodSegmentCheck 149 49 106
      { lower := 4446, upper := 4589, witness := RowWitness.topPrime 4441 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good030_checked :
    goodSegmentCheck 149 49 106
      { lower := 4590, upper := 4731, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good031_checked :
    goodSegmentCheck 149 49 106
      { lower := 4732, upper := 4877, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good032_checked :
    goodSegmentCheck 149 49 106
      { lower := 4878, upper := 5025, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good033_checked :
    goodSegmentCheck 149 49 106
      { lower := 5026, upper := 5171, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good034_checked :
    goodSegmentCheck 149 49 106
      { lower := 5172, upper := 5319, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good035_checked :
    goodSegmentCheck 149 49 106
      { lower := 5320, upper := 5457, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good036_checked :
    goodSegmentCheck 149 49 106
      { lower := 5458, upper := 5597, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good037_checked :
    goodSegmentCheck 149 49 106
      { lower := 5598, upper := 5739, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good038_checked :
    goodSegmentCheck 149 49 106
      { lower := 5740, upper := 5885, witness := RowWitness.topPrime 5737 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good039_checked :
    goodSegmentCheck 149 49 106
      { lower := 5886, upper := 6029, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good040_checked :
    goodSegmentCheck 149 49 106
      { lower := 6030, upper := 6177, witness := RowWitness.topPrime 6029 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good041_checked :
    goodSegmentCheck 149 49 106
      { lower := 6178, upper := 6321, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good042_checked :
    goodSegmentCheck 149 49 106
      { lower := 6322, upper := 6465, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good043_checked :
    goodSegmentCheck 149 49 106
      { lower := 6466, upper := 6599, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good044_checked :
    goodSegmentCheck 149 49 106
      { lower := 6600, upper := 6747, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good045_checked :
    goodSegmentCheck 149 49 106
      { lower := 6748, upper := 6885, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good046_checked :
    goodSegmentCheck 149 49 106
      { lower := 6886, upper := 7031, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good047_checked :
    goodSegmentCheck 149 49 106
      { lower := 7032, upper := 7175, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good048_checked :
    goodSegmentCheck 149 49 106
      { lower := 7176, upper := 7307, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good049_checked :
    goodSegmentCheck 149 49 106
      { lower := 7308, upper := 7455, witness := RowWitness.topPrime 7307 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good050_checked :
    goodSegmentCheck 149 49 106
      { lower := 7456, upper := 7599, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good051_checked :
    goodSegmentCheck 149 49 106
      { lower := 7600, upper := 7739, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good052_checked :
    goodSegmentCheck 149 49 106
      { lower := 7740, upper := 7875, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good053_checked :
    goodSegmentCheck 149 49 106
      { lower := 7876, upper := 8021, witness := RowWitness.topPrime 7873 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good054_checked :
    goodSegmentCheck 149 49 106
      { lower := 8022, upper := 8165, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good055_checked :
    goodSegmentCheck 149 49 106
      { lower := 8166, upper := 8309, witness := RowWitness.topPrime 8161 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good056_checked :
    goodSegmentCheck 149 49 106
      { lower := 8310, upper := 8445, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good057_checked :
    goodSegmentCheck 149 49 106
      { lower := 8446, upper := 8591, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good058_checked :
    goodSegmentCheck 149 49 106
      { lower := 8592, upper := 8729, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good059_checked :
    goodSegmentCheck 149 49 106
      { lower := 8730, upper := 8867, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good060_checked :
    goodSegmentCheck 149 49 106
      { lower := 8868, upper := 9015, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good061_checked :
    goodSegmentCheck 149 49 106
      { lower := 9016, upper := 9161, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good062_checked :
    goodSegmentCheck 149 49 106
      { lower := 9162, upper := 9309, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good063_checked :
    goodSegmentCheck 149 49 106
      { lower := 9310, upper := 9441, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good064_checked :
    goodSegmentCheck 149 49 106
      { lower := 9442, upper := 9587, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good065_checked :
    goodSegmentCheck 149 49 106
      { lower := 9588, upper := 9735, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good066_checked :
    goodSegmentCheck 149 49 106
      { lower := 9736, upper := 9881, witness := RowWitness.topPrime 9733 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good067_checked :
    goodSegmentCheck 149 49 106
      { lower := 9882, upper := 10019, witness := RowWitness.topPrime 9871 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good068_checked :
    goodSegmentCheck 149 49 106
      { lower := 10020, upper := 10157, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good069_checked :
    goodSegmentCheck 149 49 106
      { lower := 10158, upper := 10299, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good070_checked :
    goodSegmentCheck 149 49 106
      { lower := 10300, upper := 10437, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good071_checked :
    goodSegmentCheck 149 49 106
      { lower := 10438, upper := 10581, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good072_checked :
    goodSegmentCheck 149 49 106
      { lower := 10582, upper := 10715, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good073_checked :
    goodSegmentCheck 149 49 106
      { lower := 10716, upper := 10859, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good074_checked :
    goodSegmentCheck 149 49 106
      { lower := 10860, upper := 11007, witness := RowWitness.topPrime 10859 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good075_checked :
    goodSegmentCheck 149 49 106
      { lower := 11008, upper := 11151, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good076_checked :
    goodSegmentCheck 149 49 106
      { lower := 11152, upper := 11297, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good077_checked :
    goodSegmentCheck 149 49 106
      { lower := 11298, upper := 11435, witness := RowWitness.topPrime 11287 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good078_checked :
    goodSegmentCheck 149 49 106
      { lower := 11436, upper := 11571, witness := RowWitness.topPrime 11423 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good079_checked :
    goodSegmentCheck 149 49 106
      { lower := 11572, upper := 11699, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good080_checked :
    goodSegmentCheck 149 49 106
      { lower := 11700, upper := 11847, witness := RowWitness.topPrime 11699 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good081_checked :
    goodSegmentCheck 149 49 106
      { lower := 11848, upper := 11987, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good082_checked :
    goodSegmentCheck 149 49 106
      { lower := 11988, upper := 12135, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good083_checked :
    goodSegmentCheck 149 49 106
      { lower := 12136, upper := 12267, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good084_checked :
    goodSegmentCheck 149 49 106
      { lower := 12268, upper := 12411, witness := RowWitness.topPrime 12263 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good085_checked :
    goodSegmentCheck 149 49 106
      { lower := 12412, upper := 12557, witness := RowWitness.topPrime 12409 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good086_checked :
    goodSegmentCheck 149 49 106
      { lower := 12558, upper := 12701, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good087_checked :
    goodSegmentCheck 149 49 106
      { lower := 12702, upper := 12845, witness := RowWitness.topPrime 12697 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good088_checked :
    goodSegmentCheck 149 49 106
      { lower := 12846, upper := 12989, witness := RowWitness.topPrime 12841 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good089_checked :
    goodSegmentCheck 149 49 106
      { lower := 12990, upper := 13131, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good090_checked :
    goodSegmentCheck 149 49 106
      { lower := 13132, upper := 13275, witness := RowWitness.topPrime 13127 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good091_checked :
    goodSegmentCheck 149 49 106
      { lower := 13276, upper := 13415, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good092_checked :
    goodSegmentCheck 149 49 106
      { lower := 13416, upper := 13559, witness := RowWitness.topPrime 13411 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good093_checked :
    goodSegmentCheck 149 49 106
      { lower := 13560, upper := 13701, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good094_checked :
    goodSegmentCheck 149 49 106
      { lower := 13702, upper := 13845, witness := RowWitness.topPrime 13697 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good095_checked :
    goodSegmentCheck 149 49 106
      { lower := 13846, upper := 13989, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good096_checked :
    goodSegmentCheck 149 49 106
      { lower := 13990, upper := 14115, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good097_checked :
    goodSegmentCheck 149 49 106
      { lower := 14116, upper := 14255, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good098_checked :
    goodSegmentCheck 149 49 106
      { lower := 14256, upper := 14399, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good099_checked :
    goodSegmentCheck 149 49 106
      { lower := 14400, upper := 14537, witness := RowWitness.topPrime 14389 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good100_checked :
    goodSegmentCheck 149 49 106
      { lower := 14538, upper := 14685, witness := RowWitness.topPrime 14537 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good101_checked :
    goodSegmentCheck 149 49 106
      { lower := 14686, upper := 14831, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good102_checked :
    goodSegmentCheck 149 49 106
      { lower := 14832, upper := 14979, witness := RowWitness.topPrime 14831 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good103_checked :
    goodSegmentCheck 149 49 106
      { lower := 14980, upper := 15117, witness := RowWitness.topPrime 14969 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good104_checked :
    goodSegmentCheck 149 49 106
      { lower := 15118, upper := 15255, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good105_checked :
    goodSegmentCheck 149 49 106
      { lower := 15256, upper := 15389, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good106_checked :
    goodSegmentCheck 149 49 106
      { lower := 15390, upper := 15531, witness := RowWitness.topPrime 15383 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good107_checked :
    goodSegmentCheck 149 49 106
      { lower := 15532, upper := 15675, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good108_checked :
    goodSegmentCheck 149 49 106
      { lower := 15676, upper := 15819, witness := RowWitness.topPrime 15671 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good109_checked :
    goodSegmentCheck 149 49 106
      { lower := 15820, upper := 15965, witness := RowWitness.topPrime 15817 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good110_checked :
    goodSegmentCheck 149 49 106
      { lower := 15966, upper := 16107, witness := RowWitness.topPrime 15959 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good111_checked :
    goodSegmentCheck 149 49 106
      { lower := 16108, upper := 16251, witness := RowWitness.topPrime 16103 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good112_checked :
    goodSegmentCheck 149 49 106
      { lower := 16252, upper := 16397, witness := RowWitness.topPrime 16249 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good113_checked :
    goodSegmentCheck 149 49 106
      { lower := 16398, upper := 16529, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good114_checked :
    goodSegmentCheck 149 49 106
      { lower := 16530, upper := 16677, witness := RowWitness.topPrime 16529 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good115_checked :
    goodSegmentCheck 149 49 106
      { lower := 16678, upper := 16821, witness := RowWitness.topPrime 16673 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good116_checked :
    goodSegmentCheck 149 49 106
      { lower := 16822, upper := 16959, witness := RowWitness.topPrime 16811 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good117_checked :
    goodSegmentCheck 149 49 106
      { lower := 16960, upper := 17091, witness := RowWitness.topPrime 16943 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good118_checked :
    goodSegmentCheck 149 49 106
      { lower := 17092, upper := 17225, witness := RowWitness.topPrime 17077 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good119_checked :
    goodSegmentCheck 149 49 106
      { lower := 17226, upper := 17357, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good120_checked :
    goodSegmentCheck 149 49 106
      { lower := 17358, upper := 17499, witness := RowWitness.topPrime 17351 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good121_checked :
    goodSegmentCheck 149 49 106
      { lower := 17500, upper := 17645, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good122_checked :
    goodSegmentCheck 149 49 106
      { lower := 17646, upper := 17775, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good123_checked :
    goodSegmentCheck 149 49 106
      { lower := 17776, upper := 17909, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good124_checked :
    goodSegmentCheck 149 49 106
      { lower := 17910, upper := 18057, witness := RowWitness.topPrime 17909 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good125_checked :
    goodSegmentCheck 149 49 106
      { lower := 18058, upper := 18197, witness := RowWitness.topPrime 18049 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good126_checked :
    goodSegmentCheck 149 49 106
      { lower := 18198, upper := 18339, witness := RowWitness.topPrime 18191 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good127_checked :
    goodSegmentCheck 149 49 106
      { lower := 18340, upper := 18477, witness := RowWitness.topPrime 18329 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good128_checked :
    goodSegmentCheck 149 49 106
      { lower := 18478, upper := 18609, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good129_checked :
    goodSegmentCheck 149 49 106
      { lower := 18610, upper := 18741, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good130_checked :
    goodSegmentCheck 149 49 106
      { lower := 18742, upper := 18879, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good131_checked :
    goodSegmentCheck 149 49 106
      { lower := 18880, upper := 19017, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good132_checked :
    goodSegmentCheck 149 49 106
      { lower := 19018, upper := 19161, witness := RowWitness.topPrime 19013 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good133_checked :
    goodSegmentCheck 149 49 106
      { lower := 19162, upper := 19305, witness := RowWitness.topPrime 19157 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good134_checked :
    goodSegmentCheck 149 49 106
      { lower := 19306, upper := 19449, witness := RowWitness.topPrime 19301 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good135_checked :
    goodSegmentCheck 149 49 106
      { lower := 19450, upper := 19595, witness := RowWitness.topPrime 19447 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good136_checked :
    goodSegmentCheck 149 49 106
      { lower := 19596, upper := 19731, witness := RowWitness.topPrime 19583 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good137_checked :
    goodSegmentCheck 149 49 106
      { lower := 19732, upper := 19875, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good138_checked :
    goodSegmentCheck 149 49 106
      { lower := 19876, upper := 20015, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good139_checked :
    goodSegmentCheck 149 49 106
      { lower := 20016, upper := 20159, witness := RowWitness.topPrime 20011 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good140_checked :
    goodSegmentCheck 149 49 106
      { lower := 20160, upper := 20297, witness := RowWitness.topPrime 20149 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good141_checked :
    goodSegmentCheck 149 49 106
      { lower := 20298, upper := 20445, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good142_checked :
    goodSegmentCheck 149 49 106
      { lower := 20446, upper := 20591, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good143_checked :
    goodSegmentCheck 149 49 106
      { lower := 20592, upper := 20711, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good144_checked :
    goodSegmentCheck 149 49 106
      { lower := 20712, upper := 20855, witness := RowWitness.topPrime 20707 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good145_checked :
    goodSegmentCheck 149 49 106
      { lower := 20856, upper := 20997, witness := RowWitness.topPrime 20849 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good146_checked :
    goodSegmentCheck 149 49 106
      { lower := 20998, upper := 21131, witness := RowWitness.topPrime 20983 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good147_checked :
    goodSegmentCheck 149 49 106
      { lower := 21132, upper := 21269, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good148_checked :
    goodSegmentCheck 149 49 106
      { lower := 21270, upper := 21417, witness := RowWitness.topPrime 21269 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good149_checked :
    goodSegmentCheck 149 49 106
      { lower := 21418, upper := 21555, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good150_checked :
    goodSegmentCheck 149 49 106
      { lower := 21556, upper := 21677, witness := RowWitness.topPrime 21529 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good151_checked :
    goodSegmentCheck 149 49 106
      { lower := 21678, upper := 21821, witness := RowWitness.topPrime 21673 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good152_checked :
    goodSegmentCheck 149 49 106
      { lower := 21822, upper := 21969, witness := RowWitness.topPrime 21821 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good153_checked :
    goodSegmentCheck 149 49 106
      { lower := 21970, upper := 22051, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good154_checked :
    goodSegmentCheck 149 49 106
      { lower := 22090, upper := 22118, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good155_checked :
    goodSegmentCheck 149 49 106
      { lower := 22188, upper := 22238, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good156_checked :
    goodSegmentCheck 149 49 106
      { lower := 22326, upper := 22336, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good157_checked :
    goodSegmentCheck 149 49 106
      { lower := 22445, upper := 22589, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good158_checked :
    goodSegmentCheck 149 49 106
      { lower := 22590, upper := 22620, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good159_checked :
    goodSegmentCheck 149 49 106
      { lower := 23763, upper := 23909, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good160_checked :
    goodSegmentCheck 149 49 106
      { lower := 23910, upper := 23910, witness := RowWitness.topPrime 23909 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good161_checked :
    goodSegmentCheck 149 49 106
      { lower := 24037, upper := 24177, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good162_checked :
    goodSegmentCheck 149 49 106
      { lower := 24178, upper := 24205, witness := RowWitness.topPrime 24169 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good163_checked :
    goodSegmentCheck 149 49 106
      { lower := 24299, upper := 24315, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good164_checked :
    goodSegmentCheck 149 49 106
      { lower := 24334, upper := 24477, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good165_checked :
    goodSegmentCheck 149 49 106
      { lower := 24478, upper := 24515, witness := RowWitness.topPrime 24473 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good166_checked :
    goodSegmentCheck 149 49 106
      { lower := 24576, upper := 24713, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good167_checked :
    goodSegmentCheck 149 49 106
      { lower := 25000, upper := 25112, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good168_checked :
    goodSegmentCheck 149 49 106
      { lower := 25281, upper := 25353, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good169_checked :
    goodSegmentCheck 149 49 106
      { lower := 26364, upper := 26392, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good170_checked :
    goodSegmentCheck 149 49 106
      { lower := 26411, upper := 26555, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good171_checked :
    goodSegmentCheck 149 49 106
      { lower := 26556, upper := 26559, witness := RowWitness.topPrime 26539 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good172_checked :
    goodSegmentCheck 149 49 106
      { lower := 26624, upper := 26745, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good173_checked :
    goodSegmentCheck 149 49 106
      { lower := 26746, upper := 26772, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good174_checked :
    goodSegmentCheck 149 49 106
      { lower := 27556, upper := 27584, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good175_checked :
    goodSegmentCheck 149 49 106
      { lower := 28125, upper := 28271, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good176_checked :
    goodSegmentCheck 149 49 106
      { lower := 28272, upper := 28273, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good177_checked :
    goodSegmentCheck 149 49 106
      { lower := 28561, upper := 28579, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good178_checked :
    goodSegmentCheck 149 49 106
      { lower := 28672, upper := 28709, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good179_checked :
    goodSegmentCheck 149 49 106
      { lower := 28717, upper := 28859, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good180_checked :
    goodSegmentCheck 149 49 106
      { lower := 28860, upper := 28865, witness := RowWitness.topPrime 28859 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good181_checked :
    goodSegmentCheck 149 49 106
      { lower := 29791, upper := 29916, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good182_checked :
    goodSegmentCheck 149 49 106
      { lower := 31213, upper := 31341, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good183_checked :
    goodSegmentCheck 149 49 106
      { lower := 31342, upper := 31398, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good184_checked :
    goodSegmentCheck 149 49 106
      { lower := 31423, upper := 31477, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good185_checked :
    goodSegmentCheck 149 49 106
      { lower := 31827, upper := 31832, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good186_checked :
    goodSegmentCheck 149 49 106
      { lower := 31974, upper := 31975, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good187_checked :
    goodSegmentCheck 149 49 106
      { lower := 32805, upper := 32916, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good188_checked :
    goodSegmentCheck 149 49 106
      { lower := 33614, upper := 33637, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good189_checked :
    goodSegmentCheck 149 49 106
      { lower := 33708, upper := 33762, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good190_checked :
    goodSegmentCheck 149 49 106
      { lower := 34322, upper := 34467, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good191_checked :
    goodSegmentCheck 149 49 106
      { lower := 34468, upper := 34539, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good192_checked :
    goodSegmentCheck 149 49 106
      { lower := 36517, upper := 36645, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good193_checked :
    goodSegmentCheck 149 49 106
      { lower := 36646, upper := 36649, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good194_checked :
    goodSegmentCheck 149 49 106
      { lower := 37303, upper := 37358, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good195_checked :
    goodSegmentCheck 149 49 106
      { lower := 37446, upper := 37451, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good196_checked :
    goodSegmentCheck 149 49 106
      { lower := 37500, upper := 37641, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good197_checked :
    goodSegmentCheck 149 49 106
      { lower := 37642, upper := 37686, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good198_checked :
    goodSegmentCheck 149 49 106
      { lower := 38307, upper := 38439, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good199_checked :
    goodSegmentCheck 149 49 106
      { lower := 39366, upper := 39452, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good200_checked :
    goodSegmentCheck 149 49 106
      { lower := 40401, upper := 40476, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good201_checked :
    goodSegmentCheck 149 49 106
      { lower := 40931, upper := 40952, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good202_checked :
    goodSegmentCheck 149 49 106
      { lower := 40960, upper := 41079, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good203_checked :
    goodSegmentCheck 149 49 106
      { lower := 45927, upper := 45944, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good204_checked :
    goodSegmentCheck 149 49 106
      { lower := 47526, upper := 47669, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good205_checked :
    goodSegmentCheck 149 49 106
      { lower := 47670, upper := 47672, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good206_checked :
    goodSegmentCheck 149 49 106
      { lower := 48013, upper := 48109, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good207_checked :
    goodSegmentCheck 149 49 106
      { lower := 48778, upper := 48816, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_good208_checked :
    goodSegmentCheck 149 49 106
      { lower := 51076, upper := 51153, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good209_checked :
    goodSegmentCheck 149 49 106
      { lower := 56307, upper := 56317, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good210_checked :
    goodSegmentCheck 149 49 106
      { lower := 56454, upper := 56455, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good211_checked :
    goodSegmentCheck 149 49 106
      { lower := 57245, upper := 57270, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good212_checked :
    goodSegmentCheck 149 49 106
      { lower := 57344, upper := 57393, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good213_checked :
    goodSegmentCheck 149 49 106
      { lower := 68694, upper := 68792, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good214_checked :
    goodSegmentCheck 149 49 106
      { lower := 71289, upper := 71435, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good215_checked :
    goodSegmentCheck 149 49 106
      { lower := 71436, upper := 71437, witness := RowWitness.topPrime 71429 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good216_checked :
    goodSegmentCheck 149 49 106
      { lower := 73205, upper := 73315, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good217_checked :
    goodSegmentCheck 149 49 106
      { lower := 85805, upper := 85831, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good218_checked :
    goodSegmentCheck 149 49 106
      { lower := 89383, upper := 89521, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good219_checked :
    goodSegmentCheck 149 49 106
      { lower := 93845, upper := 93898, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good220_checked :
    goodSegmentCheck 149 49 106
      { lower := 98415, upper := 98452, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good221_checked :
    goodSegmentCheck 149 49 106
      { lower := 137842, upper := 137929, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row149_good222_checked :
    goodSegmentCheck 149 49 106
      { lower := 148955, upper := 149025, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 149) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_good222_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_goods_checked :
    row149.goods.all (goodSegmentCheck row149.height.i row149.height.r row149.height.s) = true := by
  change row149_goods.all (goodSegmentCheck 149 49 106) = true
  simp only [row149_goods, List.all_cons, List.all_nil,
    row149_good000_checked,
    row149_good001_checked,
    row149_good002_checked,
    row149_good003_checked,
    row149_good004_checked,
    row149_good005_checked,
    row149_good006_checked,
    row149_good007_checked,
    row149_good008_checked,
    row149_good009_checked,
    row149_good010_checked,
    row149_good011_checked,
    row149_good012_checked,
    row149_good013_checked,
    row149_good014_checked,
    row149_good015_checked,
    row149_good016_checked,
    row149_good017_checked,
    row149_good018_checked,
    row149_good019_checked,
    row149_good020_checked,
    row149_good021_checked,
    row149_good022_checked,
    row149_good023_checked,
    row149_good024_checked,
    row149_good025_checked,
    row149_good026_checked,
    row149_good027_checked,
    row149_good028_checked,
    row149_good029_checked,
    row149_good030_checked,
    row149_good031_checked,
    row149_good032_checked,
    row149_good033_checked,
    row149_good034_checked,
    row149_good035_checked,
    row149_good036_checked,
    row149_good037_checked,
    row149_good038_checked,
    row149_good039_checked,
    row149_good040_checked,
    row149_good041_checked,
    row149_good042_checked,
    row149_good043_checked,
    row149_good044_checked,
    row149_good045_checked,
    row149_good046_checked,
    row149_good047_checked,
    row149_good048_checked,
    row149_good049_checked,
    row149_good050_checked,
    row149_good051_checked,
    row149_good052_checked,
    row149_good053_checked,
    row149_good054_checked,
    row149_good055_checked,
    row149_good056_checked,
    row149_good057_checked,
    row149_good058_checked,
    row149_good059_checked,
    row149_good060_checked,
    row149_good061_checked,
    row149_good062_checked,
    row149_good063_checked,
    row149_good064_checked,
    row149_good065_checked,
    row149_good066_checked,
    row149_good067_checked,
    row149_good068_checked,
    row149_good069_checked,
    row149_good070_checked,
    row149_good071_checked,
    row149_good072_checked,
    row149_good073_checked,
    row149_good074_checked,
    row149_good075_checked,
    row149_good076_checked,
    row149_good077_checked,
    row149_good078_checked,
    row149_good079_checked,
    row149_good080_checked,
    row149_good081_checked,
    row149_good082_checked,
    row149_good083_checked,
    row149_good084_checked,
    row149_good085_checked,
    row149_good086_checked,
    row149_good087_checked,
    row149_good088_checked,
    row149_good089_checked,
    row149_good090_checked,
    row149_good091_checked,
    row149_good092_checked,
    row149_good093_checked,
    row149_good094_checked,
    row149_good095_checked,
    row149_good096_checked,
    row149_good097_checked,
    row149_good098_checked,
    row149_good099_checked,
    row149_good100_checked,
    row149_good101_checked,
    row149_good102_checked,
    row149_good103_checked,
    row149_good104_checked,
    row149_good105_checked,
    row149_good106_checked,
    row149_good107_checked,
    row149_good108_checked,
    row149_good109_checked,
    row149_good110_checked,
    row149_good111_checked,
    row149_good112_checked,
    row149_good113_checked,
    row149_good114_checked,
    row149_good115_checked,
    row149_good116_checked,
    row149_good117_checked,
    row149_good118_checked,
    row149_good119_checked,
    row149_good120_checked,
    row149_good121_checked,
    row149_good122_checked,
    row149_good123_checked,
    row149_good124_checked,
    row149_good125_checked,
    row149_good126_checked,
    row149_good127_checked,
    row149_good128_checked,
    row149_good129_checked,
    row149_good130_checked,
    row149_good131_checked,
    row149_good132_checked,
    row149_good133_checked,
    row149_good134_checked,
    row149_good135_checked,
    row149_good136_checked,
    row149_good137_checked,
    row149_good138_checked,
    row149_good139_checked,
    row149_good140_checked,
    row149_good141_checked,
    row149_good142_checked,
    row149_good143_checked,
    row149_good144_checked,
    row149_good145_checked,
    row149_good146_checked,
    row149_good147_checked,
    row149_good148_checked,
    row149_good149_checked,
    row149_good150_checked,
    row149_good151_checked,
    row149_good152_checked,
    row149_good153_checked,
    row149_good154_checked,
    row149_good155_checked,
    row149_good156_checked,
    row149_good157_checked,
    row149_good158_checked,
    row149_good159_checked,
    row149_good160_checked,
    row149_good161_checked,
    row149_good162_checked,
    row149_good163_checked,
    row149_good164_checked,
    row149_good165_checked,
    row149_good166_checked,
    row149_good167_checked,
    row149_good168_checked,
    row149_good169_checked,
    row149_good170_checked,
    row149_good171_checked,
    row149_good172_checked,
    row149_good173_checked,
    row149_good174_checked,
    row149_good175_checked,
    row149_good176_checked,
    row149_good177_checked,
    row149_good178_checked,
    row149_good179_checked,
    row149_good180_checked,
    row149_good181_checked,
    row149_good182_checked,
    row149_good183_checked,
    row149_good184_checked,
    row149_good185_checked,
    row149_good186_checked,
    row149_good187_checked,
    row149_good188_checked,
    row149_good189_checked,
    row149_good190_checked,
    row149_good191_checked,
    row149_good192_checked,
    row149_good193_checked,
    row149_good194_checked,
    row149_good195_checked,
    row149_good196_checked,
    row149_good197_checked,
    row149_good198_checked,
    row149_good199_checked,
    row149_good200_checked,
    row149_good201_checked,
    row149_good202_checked,
    row149_good203_checked,
    row149_good204_checked,
    row149_good205_checked,
    row149_good206_checked,
    row149_good207_checked,
    row149_good208_checked,
    row149_good209_checked,
    row149_good210_checked,
    row149_good211_checked,
    row149_good212_checked,
    row149_good213_checked,
    row149_good214_checked,
    row149_good215_checked,
    row149_good216_checked,
    row149_good217_checked,
    row149_good218_checked,
    row149_good219_checked,
    row149_good220_checked,
    row149_good221_checked,
    row149_good222_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_registered :
    decide (row149.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row149_small_checked :
    coverCheck (2 * row149.height.i + 2) (row149.height.i * (row149.height.i - 1) - 1)
      (row149.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row149_layerCover_checked :
    coverCheck (row149.height.i * (row149.height.i - 1)) (row149.height.n0 - 1)
      (row149.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row149_bounds : List NatInterval :=
  [(300, 441), (442, 587), (588, 735), (736, 881), (882, 1029), (1030, 1169), (1170, 1311), (1312, 1455), (1456, 1601), (1602, 1749), (1750, 1895), (1896, 2037), (2038, 2177), (2178, 2309), (2310, 2457), (2458, 2595), (2596, 2741), (2742, 2889), (2890, 3035), (3036, 3171), (3172, 3317), (3318, 3461), (3462, 3609), (3610, 3755), (3756, 3887), (3888, 4029), (4030, 4175), (4176, 4307), (4308, 4445), (4446, 4589), (4590, 4731), (4732, 4877), (4878, 5025), (5026, 5171), (5172, 5319), (5320, 5457), (5458, 5597), (5598, 5739), (5740, 5885), (5886, 6029), (6030, 6177), (6178, 6321), (6322, 6465), (6466, 6599), (6600, 6747), (6748, 6885), (6886, 7031), (7032, 7175), (7176, 7307), (7308, 7455), (7456, 7599), (7600, 7739), (7740, 7875), (7876, 8021), (8022, 8165), (8166, 8309), (8310, 8445), (8446, 8591), (8592, 8729), (8730, 8867), (8868, 9015), (9016, 9161), (9162, 9309), (9310, 9441), (9442, 9587), (9588, 9735), (9736, 9881), (9882, 10019), (10020, 10157), (10158, 10299), (10300, 10437), (10438, 10581), (10582, 10715), (10716, 10859), (10860, 11007), (11008, 11151), (11152, 11297), (11298, 11435), (11436, 11571), (11572, 11699), (11700, 11847), (11848, 11987), (11988, 12135), (12136, 12267), (12268, 12411), (12412, 12557), (12558, 12701), (12702, 12845), (12846, 12989), (12990, 13131), (13132, 13275), (13276, 13415), (13416, 13559), (13560, 13701), (13702, 13845), (13846, 13989), (13990, 14115), (14116, 14255), (14256, 14399), (14400, 14537), (14538, 14685), (14686, 14831), (14832, 14979), (14980, 15117), (15118, 15255), (15256, 15389), (15390, 15531), (15532, 15675), (15676, 15819), (15820, 15965), (15966, 16107), (16108, 16251), (16252, 16397), (16398, 16529), (16530, 16677), (16678, 16821), (16822, 16959), (16960, 17091), (17092, 17225), (17226, 17357), (17358, 17499), (17500, 17645), (17646, 17775), (17776, 17909), (17910, 18057), (18058, 18197), (18198, 18339), (18340, 18477), (18478, 18609), (18610, 18741), (18742, 18879), (18880, 19017), (19018, 19161), (19162, 19305), (19306, 19449), (19450, 19595), (19596, 19731), (19732, 19875), (19876, 20015), (20016, 20159), (20160, 20297), (20298, 20445), (20446, 20591), (20592, 20711), (20712, 20855), (20856, 20997), (20998, 21131), (21132, 21269), (21270, 21417), (21418, 21555), (21556, 21677), (21678, 21821), (21822, 21969), (21970, 22051), (22090, 22118), (22188, 22238), (22326, 22336), (22445, 22589), (22590, 22620), (23763, 23909), (23910, 23910), (24037, 24177), (24178, 24205), (24299, 24315), (24334, 24477), (24478, 24515), (24576, 24713), (25000, 25112), (25281, 25353), (26364, 26392), (26411, 26555), (26556, 26559), (26624, 26745), (26746, 26772), (27556, 27584), (28125, 28271), (28272, 28273), (28561, 28579), (28672, 28709), (28717, 28859), (28860, 28865), (29791, 29916), (31213, 31341), (31342, 31398), (31423, 31477), (31827, 31832), (31974, 31975), (32805, 32916), (33614, 33637), (33708, 33762), (34322, 34467), (34468, 34539), (36517, 36645), (36646, 36649), (37303, 37358), (37446, 37451), (37500, 37641), (37642, 37686), (38307, 38439), (39366, 39452), (40401, 40476), (40931, 40952), (40960, 41079), (45927, 45944), (47526, 47669), (47670, 47672), (48013, 48109), (48778, 48816), (51076, 51153), (56307, 56317), (56454, 56455), (57245, 57270), (57344, 57393), (68694, 68792), (71289, 71435), (71436, 71437), (73205, 73315), (85805, 85831), (89383, 89521), (93845, 93898), (98415, 98452), (137842, 137929), (148955, 149025)]

theorem row149_bounds_eq : row149.goods.map goodSegmentBounds = row149_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row149_layer000_intervals : List ColouredInterval :=
  [(2, 22528, 22676), (2, 24576, 24724), (2, 26624, 26772), (2, 24576, 24724), (2, 28672, 28820), (2, 32768, 32916), (2, 36864, 37012), (2, 40960, 41108), (2, 24576, 24724), (2, 32768, 32916), (2, 40960, 41108), (2, 32768, 32916), (2, 32768, 32916), (3, 24057, 24205), (3, 26244, 26392), (3, 28431, 28579), (3, 26244, 26392), (3, 32805, 32953), (3, 39366, 39514), (3, 39366, 39514), (5, 25000, 25148), (5, 28125, 28273), (5, 31250, 31398), (5, 34375, 34523), (5, 37500, 37648), (5, 40625, 40773), (5, 31250, 31398), (7, 24010, 24158), (7, 26411, 26559), (7, 28812, 28960), (7, 31213, 31361), (7, 33614, 33762), (11, 29282, 29430), (11, 43923, 44071), (13, 22052, 22118), (13, 24167, 24315), (13, 26364, 26512), (13, 28561, 28709), (13, 28561, 28709), (17, 24565, 24713), (17, 29478, 29626), (17, 34391, 34539), (17, 39304, 39452), (19, 27436, 27584), (19, 34295, 34443), (19, 41154, 41302), (23, 24334, 24482), (23, 36501, 36649), (29, 24389, 24537), (31, 29791, 29939), (43, 22188, 22336), (43, 24037, 24185), (47, 22090, 22238), (47, 24299, 24447), (47, 26508, 26656), (47, 28717, 28865), (53, 22472, 22620), (53, 25281, 25429), (53, 28090, 28238), (53, 30899, 31047), (53, 33708, 33856), (53, 36517, 36665), (59, 24367, 24515), (59, 27848, 27996), (59, 31329, 31477), (59, 34810, 34958), (59, 38291, 38439), (59, 41772, 41920), (61, 22326, 22474), (61, 26047, 26195), (61, 29768, 29916), (61, 33489, 33637), (61, 37210, 37358), (61, 40931, 41079), (67, 22445, 22593), (67, 26934, 27082), (67, 31423, 31571), (67, 35912, 36060), (67, 40401, 40549), (71, 25205, 25353), (71, 30246, 30394), (71, 35287, 35435), (71, 40328, 40476), (73, 26645, 26793), (73, 31974, 32122), (73, 37303, 37451), (73, 42632, 42780), (79, 24964, 25112), (79, 31205, 31353), (79, 37446, 37594), (79, 43687, 43835), (83, 27556, 27704), (83, 34445, 34593), (83, 41334, 41482), (89, 23763, 23911), (89, 31684, 31832), (89, 39605, 39753), (97, 28227, 28375), (97, 37636, 37784), (101, 30603, 30751), (101, 40804, 40952), (103, 31827, 31975), (103, 42436, 42584), (107, 22898, 23046), (107, 34347, 34495), (109, 23762, 23910), (109, 35643, 35791), (113, 25538, 25686), (113, 38307, 38455), (127, 32258, 32406), (131, 34322, 34470), (137, 37538, 37686), (139, 38642, 38790)]

def row149_layer000_block000 : List ColouredInterval :=
  [(2, 22528, 22676), (2, 24576, 24724), (2, 26624, 26772), (2, 24576, 24724), (2, 28672, 28820), (2, 32768, 32916), (2, 36864, 37012), (2, 40960, 41108), (2, 24576, 24724), (2, 32768, 32916), (2, 40960, 41108), (2, 32768, 32916), (2, 32768, 32916), (3, 24057, 24205), (3, 26244, 26392), (3, 28431, 28579)]

def row149_layer000_block001 : List ColouredInterval :=
  [(3, 26244, 26392), (3, 32805, 32953), (3, 39366, 39514), (3, 39366, 39514), (5, 25000, 25148), (5, 28125, 28273), (5, 31250, 31398), (5, 34375, 34523), (5, 37500, 37648), (5, 40625, 40773), (5, 31250, 31398), (7, 24010, 24158), (7, 26411, 26559), (7, 28812, 28960), (7, 31213, 31361), (7, 33614, 33762)]

def row149_layer000_block002 : List ColouredInterval :=
  [(11, 29282, 29430), (11, 43923, 44071), (13, 22052, 22118), (13, 24167, 24315), (13, 26364, 26512), (13, 28561, 28709), (13, 28561, 28709), (17, 24565, 24713), (17, 29478, 29626), (17, 34391, 34539), (17, 39304, 39452), (19, 27436, 27584), (19, 34295, 34443), (19, 41154, 41302), (23, 24334, 24482), (23, 36501, 36649)]

def row149_layer000_block003 : List ColouredInterval :=
  [(29, 24389, 24537), (31, 29791, 29939), (43, 22188, 22336), (43, 24037, 24185), (47, 22090, 22238), (47, 24299, 24447), (47, 26508, 26656), (47, 28717, 28865), (53, 22472, 22620), (53, 25281, 25429), (53, 28090, 28238), (53, 30899, 31047), (53, 33708, 33856), (53, 36517, 36665), (59, 24367, 24515), (59, 27848, 27996)]

def row149_layer000_block004 : List ColouredInterval :=
  [(59, 31329, 31477), (59, 34810, 34958), (59, 38291, 38439), (59, 41772, 41920), (61, 22326, 22474), (61, 26047, 26195), (61, 29768, 29916), (61, 33489, 33637), (61, 37210, 37358), (61, 40931, 41079), (67, 22445, 22593), (67, 26934, 27082), (67, 31423, 31571), (67, 35912, 36060), (67, 40401, 40549), (71, 25205, 25353)]

def row149_layer000_block005 : List ColouredInterval :=
  [(71, 30246, 30394), (71, 35287, 35435), (71, 40328, 40476), (73, 26645, 26793), (73, 31974, 32122), (73, 37303, 37451), (73, 42632, 42780), (79, 24964, 25112), (79, 31205, 31353), (79, 37446, 37594), (79, 43687, 43835), (83, 27556, 27704), (83, 34445, 34593), (83, 41334, 41482), (89, 23763, 23911), (89, 31684, 31832)]

def row149_layer000_block006 : List ColouredInterval :=
  [(89, 39605, 39753), (97, 28227, 28375), (97, 37636, 37784), (101, 30603, 30751), (101, 40804, 40952), (103, 31827, 31975), (103, 42436, 42584), (107, 22898, 23046), (107, 34347, 34495), (109, 23762, 23910), (109, 35643, 35791), (113, 25538, 25686), (113, 38307, 38455), (127, 32258, 32406), (131, 34322, 34470), (137, 37538, 37686)]

def row149_layer000_block007 : List ColouredInterval :=
  [(139, 38642, 38790)]

def row149_layer000_chunks : List (List ColouredInterval) :=
  [row149_layer000_block000, row149_layer000_block001, row149_layer000_block002, row149_layer000_block003, row149_layer000_block004, row149_layer000_block005, row149_layer000_block006, row149_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_arithmetic : LayerArithmeticValid row149.height { lower := 22052, upper := 44104, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_enumeration :
    activePowerIntervalList 149 13 22052 44104 = row149_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_pairs000 :
    row149_layer000_block000.all (fun I => row149_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_pairs001 :
    row149_layer000_block001.all (fun I => row149_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_pairs002 :
    row149_layer000_block002.all (fun I => row149_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_pairs003 :
    row149_layer000_block003.all (fun I => row149_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_pairs004 :
    row149_layer000_block004.all (fun I => row149_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_pairs005 :
    row149_layer000_block005.all (fun I => row149_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_pairs006 :
    row149_layer000_block006.all (fun I => row149_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_pairs007 :
    row149_layer000_block007.all (fun I => row149_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_chunks_eq : row149_layer000_chunks.flatten = row149_layer000_intervals := by
  rfl

theorem row149_layer000_pairs : pairCoverCheck row149_layer000_intervals row149_bounds = true := by
  apply pairCoverCheck_of_chunks row149_layer000_chunks_eq
  intro block hblock
  simp only [row149_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row149_layer000_pairs000
  · exact row149_layer000_pairs001
  · exact row149_layer000_pairs002
  · exact row149_layer000_pairs003
  · exact row149_layer000_pairs004
  · exact row149_layer000_pairs005
  · exact row149_layer000_pairs006
  · exact row149_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer000_checked :
    coverLayerCheck row149.height row149.goods { lower := 22052, upper := 44104, M := 13 } = true := by
  exact coverLayerCheck_of_parts row149_layer000_arithmetic row149_layer000_enumeration row149_bounds_eq row149_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row149_layer001_intervals : List ColouredInterval :=
  [(2, 49152, 49300), (2, 57344, 57492), (2, 65536, 65684), (2, 73728, 73876), (2, 49152, 49300), (2, 65536, 65684), (2, 81920, 82068), (2, 65536, 65684), (2, 65536, 65684), (3, 45927, 46075), (3, 52488, 52636), (3, 59049, 59197), (3, 59049, 59197), (3, 78732, 78880), (3, 59049, 59197), (5, 46875, 47023), (5, 62500, 62648), (5, 78125, 78273), (5, 78125, 78273), (7, 50421, 50569), (7, 67228, 67376), (7, 84035, 84183), (11, 58564, 58712), (11, 73205, 73353), (11, 87846, 87994), (13, 57122, 57270), (13, 85683, 85831), (17, 44217, 44365), (17, 83521, 83669), (19, 48013, 48161), (19, 54872, 55020), (19, 61731, 61879), (23, 48668, 48816), (23, 60835, 60983), (23, 73002, 73150), (23, 85169, 85317), (29, 48778, 48926), (29, 73167, 73315), (31, 59582, 59730), (37, 50653, 50801), (41, 68921, 69069), (43, 79507, 79655), (71, 45369, 45517), (73, 47961, 48109), (79, 49928, 50076), (79, 56169, 56317), (83, 48223, 48371), (83, 55112, 55260), (83, 62001, 62149), (89, 47526, 47674), (89, 55447, 55595), (89, 63368, 63516), (89, 71289, 71437), (97, 47045, 47193), (97, 56454, 56602), (97, 65863, 66011), (97, 75272, 75420), (97, 84681, 84829), (101, 51005, 51153), (101, 61206, 61354), (101, 71407, 71555), (101, 81608, 81756), (103, 53045, 53193), (103, 63654, 63802), (103, 74263, 74411), (103, 84872, 85020), (107, 45796, 45944), (107, 57245, 57393), (107, 68694, 68842), (107, 80143, 80291), (109, 47524, 47672), (109, 59405, 59553), (109, 71286, 71434), (109, 83167, 83315), (113, 51076, 51224), (113, 63845, 63993), (113, 76614, 76762), (127, 48387, 48535), (127, 64516, 64664), (127, 80645, 80793), (131, 51483, 51631), (131, 68644, 68792), (131, 85805, 85953), (137, 56307, 56455), (137, 75076, 75224), (139, 57963, 58111), (139, 77284, 77432)]

def row149_layer001_block000 : List ColouredInterval :=
  [(2, 49152, 49300), (2, 57344, 57492), (2, 65536, 65684), (2, 73728, 73876), (2, 49152, 49300), (2, 65536, 65684), (2, 81920, 82068), (2, 65536, 65684), (2, 65536, 65684), (3, 45927, 46075), (3, 52488, 52636), (3, 59049, 59197), (3, 59049, 59197), (3, 78732, 78880), (3, 59049, 59197), (5, 46875, 47023)]

def row149_layer001_block001 : List ColouredInterval :=
  [(5, 62500, 62648), (5, 78125, 78273), (5, 78125, 78273), (7, 50421, 50569), (7, 67228, 67376), (7, 84035, 84183), (11, 58564, 58712), (11, 73205, 73353), (11, 87846, 87994), (13, 57122, 57270), (13, 85683, 85831), (17, 44217, 44365), (17, 83521, 83669), (19, 48013, 48161), (19, 54872, 55020), (19, 61731, 61879)]

def row149_layer001_block002 : List ColouredInterval :=
  [(23, 48668, 48816), (23, 60835, 60983), (23, 73002, 73150), (23, 85169, 85317), (29, 48778, 48926), (29, 73167, 73315), (31, 59582, 59730), (37, 50653, 50801), (41, 68921, 69069), (43, 79507, 79655), (71, 45369, 45517), (73, 47961, 48109), (79, 49928, 50076), (79, 56169, 56317), (83, 48223, 48371), (83, 55112, 55260)]

def row149_layer001_block003 : List ColouredInterval :=
  [(83, 62001, 62149), (89, 47526, 47674), (89, 55447, 55595), (89, 63368, 63516), (89, 71289, 71437), (97, 47045, 47193), (97, 56454, 56602), (97, 65863, 66011), (97, 75272, 75420), (97, 84681, 84829), (101, 51005, 51153), (101, 61206, 61354), (101, 71407, 71555), (101, 81608, 81756), (103, 53045, 53193), (103, 63654, 63802)]

def row149_layer001_block004 : List ColouredInterval :=
  [(103, 74263, 74411), (103, 84872, 85020), (107, 45796, 45944), (107, 57245, 57393), (107, 68694, 68842), (107, 80143, 80291), (109, 47524, 47672), (109, 59405, 59553), (109, 71286, 71434), (109, 83167, 83315), (113, 51076, 51224), (113, 63845, 63993), (113, 76614, 76762), (127, 48387, 48535), (127, 64516, 64664), (127, 80645, 80793)]

def row149_layer001_block005 : List ColouredInterval :=
  [(131, 51483, 51631), (131, 68644, 68792), (131, 85805, 85953), (137, 56307, 56455), (137, 75076, 75224), (139, 57963, 58111), (139, 77284, 77432)]

def row149_layer001_chunks : List (List ColouredInterval) :=
  [row149_layer001_block000, row149_layer001_block001, row149_layer001_block002, row149_layer001_block003, row149_layer001_block004, row149_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_intervals
