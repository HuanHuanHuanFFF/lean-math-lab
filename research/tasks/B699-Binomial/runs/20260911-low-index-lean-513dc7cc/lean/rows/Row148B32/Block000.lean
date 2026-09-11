import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row148_height : HeightCertificateDatum := { i := 148, r := 49, s := 105, n0Power10 := 7 }

def row148_goods : List GoodSegment := [
  { lower := 298, upper := 440, witness := RowWitness.topPrime 293 },
  { lower := 441, upper := 586, witness := RowWitness.topPrime 439 },
  { lower := 587, upper := 734, witness := RowWitness.topPrime 587 },
  { lower := 735, upper := 880, witness := RowWitness.topPrime 733 },
  { lower := 881, upper := 1028, witness := RowWitness.topPrime 881 },
  { lower := 1029, upper := 1168, witness := RowWitness.topPrime 1021 },
  { lower := 1169, upper := 1310, witness := RowWitness.topPrime 1163 },
  { lower := 1311, upper := 1454, witness := RowWitness.topPrime 1307 },
  { lower := 1455, upper := 1600, witness := RowWitness.topPrime 1453 },
  { lower := 1601, upper := 1748, witness := RowWitness.topPrime 1601 },
  { lower := 1749, upper := 1894, witness := RowWitness.topPrime 1747 },
  { lower := 1895, upper := 2036, witness := RowWitness.topPrime 1889 },
  { lower := 2037, upper := 2176, witness := RowWitness.topPrime 2029 },
  { lower := 2177, upper := 2308, witness := RowWitness.topPrime 2161 },
  { lower := 2309, upper := 2456, witness := RowWitness.topPrime 2309 },
  { lower := 2457, upper := 2594, witness := RowWitness.topPrime 2447 },
  { lower := 2595, upper := 2740, witness := RowWitness.topPrime 2593 },
  { lower := 2741, upper := 2888, witness := RowWitness.topPrime 2741 },
  { lower := 2889, upper := 3034, witness := RowWitness.topPrime 2887 },
  { lower := 3035, upper := 3170, witness := RowWitness.topPrime 3023 },
  { lower := 3171, upper := 3316, witness := RowWitness.topPrime 3169 },
  { lower := 3317, upper := 3460, witness := RowWitness.topPrime 3313 },
  { lower := 3461, upper := 3608, witness := RowWitness.topPrime 3461 },
  { lower := 3609, upper := 3754, witness := RowWitness.topPrime 3607 },
  { lower := 3755, upper := 3886, witness := RowWitness.topPrime 3739 },
  { lower := 3887, upper := 4028, witness := RowWitness.topPrime 3881 },
  { lower := 4029, upper := 4174, witness := RowWitness.topPrime 4027 },
  { lower := 4175, upper := 4306, witness := RowWitness.topPrime 4159 },
  { lower := 4307, upper := 4444, witness := RowWitness.topPrime 4297 },
  { lower := 4445, upper := 4588, witness := RowWitness.topPrime 4441 },
  { lower := 4589, upper := 4730, witness := RowWitness.topPrime 4583 },
  { lower := 4731, upper := 4876, witness := RowWitness.topPrime 4729 },
  { lower := 4877, upper := 5024, witness := RowWitness.topPrime 4877 },
  { lower := 5025, upper := 5170, witness := RowWitness.topPrime 5023 },
  { lower := 5171, upper := 5318, witness := RowWitness.topPrime 5171 },
  { lower := 5319, upper := 5456, witness := RowWitness.topPrime 5309 },
  { lower := 5457, upper := 5596, witness := RowWitness.topPrime 5449 },
  { lower := 5597, upper := 5738, witness := RowWitness.topPrime 5591 },
  { lower := 5739, upper := 5884, witness := RowWitness.topPrime 5737 },
  { lower := 5885, upper := 6028, witness := RowWitness.topPrime 5881 },
  { lower := 6029, upper := 6176, witness := RowWitness.topPrime 6029 },
  { lower := 6177, upper := 6320, witness := RowWitness.topPrime 6173 },
  { lower := 6321, upper := 6464, witness := RowWitness.topPrime 6317 },
  { lower := 6465, upper := 6598, witness := RowWitness.topPrime 6451 },
  { lower := 6599, upper := 6746, witness := RowWitness.topPrime 6599 },
  { lower := 6747, upper := 6884, witness := RowWitness.topPrime 6737 },
  { lower := 6885, upper := 7030, witness := RowWitness.topPrime 6883 },
  { lower := 7031, upper := 7174, witness := RowWitness.topPrime 7027 },
  { lower := 7175, upper := 7306, witness := RowWitness.topPrime 7159 },
  { lower := 7307, upper := 7454, witness := RowWitness.topPrime 7307 },
  { lower := 7455, upper := 7598, witness := RowWitness.topPrime 7451 },
  { lower := 7599, upper := 7738, witness := RowWitness.topPrime 7591 },
  { lower := 7739, upper := 7874, witness := RowWitness.topPrime 7727 },
  { lower := 7875, upper := 8020, witness := RowWitness.topPrime 7873 },
  { lower := 8021, upper := 8164, witness := RowWitness.topPrime 8017 },
  { lower := 8165, upper := 8308, witness := RowWitness.topPrime 8161 },
  { lower := 8309, upper := 8444, witness := RowWitness.topPrime 8297 },
  { lower := 8445, upper := 8590, witness := RowWitness.topPrime 8443 },
  { lower := 8591, upper := 8728, witness := RowWitness.topPrime 8581 },
  { lower := 8729, upper := 8866, witness := RowWitness.topPrime 8719 },
  { lower := 8867, upper := 9014, witness := RowWitness.topPrime 8867 },
  { lower := 9015, upper := 9160, witness := RowWitness.topPrime 9013 },
  { lower := 9161, upper := 9308, witness := RowWitness.topPrime 9161 },
  { lower := 9309, upper := 9440, witness := RowWitness.topPrime 9293 },
  { lower := 9441, upper := 9586, witness := RowWitness.topPrime 9439 },
  { lower := 9587, upper := 9734, witness := RowWitness.topPrime 9587 },
  { lower := 9735, upper := 9880, witness := RowWitness.topPrime 9733 },
  { lower := 9881, upper := 10018, witness := RowWitness.topPrime 9871 },
  { lower := 10019, upper := 10156, witness := RowWitness.topPrime 10009 },
  { lower := 10157, upper := 10298, witness := RowWitness.topPrime 10151 },
  { lower := 10299, upper := 10436, witness := RowWitness.topPrime 10289 },
  { lower := 10437, upper := 10580, witness := RowWitness.topPrime 10433 },
  { lower := 10581, upper := 10714, witness := RowWitness.topPrime 10567 },
  { lower := 10715, upper := 10858, witness := RowWitness.topPrime 10711 },
  { lower := 10859, upper := 11006, witness := RowWitness.topPrime 10859 },
  { lower := 11007, upper := 11150, witness := RowWitness.topPrime 11003 },
  { lower := 11151, upper := 11296, witness := RowWitness.topPrime 11149 },
  { lower := 11297, upper := 11434, witness := RowWitness.topPrime 11287 },
  { lower := 11435, upper := 11570, witness := RowWitness.topPrime 11423 },
  { lower := 11571, upper := 11698, witness := RowWitness.topPrime 11551 },
  { lower := 11699, upper := 11846, witness := RowWitness.topPrime 11699 },
  { lower := 11847, upper := 11986, witness := RowWitness.topPrime 11839 },
  { lower := 11987, upper := 12134, witness := RowWitness.topPrime 11987 },
  { lower := 12135, upper := 12266, witness := RowWitness.topPrime 12119 },
  { lower := 12267, upper := 12410, witness := RowWitness.topPrime 12263 },
  { lower := 12411, upper := 12556, witness := RowWitness.topPrime 12409 },
  { lower := 12557, upper := 12700, witness := RowWitness.topPrime 12553 },
  { lower := 12701, upper := 12844, witness := RowWitness.topPrime 12697 },
  { lower := 12845, upper := 12988, witness := RowWitness.topPrime 12841 },
  { lower := 12989, upper := 13130, witness := RowWitness.topPrime 12983 },
  { lower := 13131, upper := 13274, witness := RowWitness.topPrime 13127 },
  { lower := 13275, upper := 13414, witness := RowWitness.topPrime 13267 },
  { lower := 13415, upper := 13558, witness := RowWitness.topPrime 13411 },
  { lower := 13559, upper := 13700, witness := RowWitness.topPrime 13553 },
  { lower := 13701, upper := 13844, witness := RowWitness.topPrime 13697 },
  { lower := 13845, upper := 13988, witness := RowWitness.topPrime 13841 },
  { lower := 13989, upper := 14114, witness := RowWitness.topPrime 13967 },
  { lower := 14115, upper := 14254, witness := RowWitness.topPrime 14107 },
  { lower := 14255, upper := 14398, witness := RowWitness.topPrime 14251 },
  { lower := 14399, upper := 14536, witness := RowWitness.topPrime 14389 },
  { lower := 14537, upper := 14684, witness := RowWitness.topPrime 14537 },
  { lower := 14685, upper := 14830, witness := RowWitness.topPrime 14683 },
  { lower := 14831, upper := 14978, witness := RowWitness.topPrime 14831 },
  { lower := 14979, upper := 15116, witness := RowWitness.topPrime 14969 },
  { lower := 15117, upper := 15254, witness := RowWitness.topPrime 15107 },
  { lower := 15255, upper := 15388, witness := RowWitness.topPrime 15241 },
  { lower := 15389, upper := 15530, witness := RowWitness.topPrime 15383 },
  { lower := 15531, upper := 15674, witness := RowWitness.topPrime 15527 },
  { lower := 15675, upper := 15818, witness := RowWitness.topPrime 15671 },
  { lower := 15819, upper := 15964, witness := RowWitness.topPrime 15817 },
  { lower := 15965, upper := 16106, witness := RowWitness.topPrime 15959 },
  { lower := 16107, upper := 16250, witness := RowWitness.topPrime 16103 },
  { lower := 16251, upper := 16396, witness := RowWitness.topPrime 16249 },
  { lower := 16397, upper := 16528, witness := RowWitness.topPrime 16381 },
  { lower := 16529, upper := 16676, witness := RowWitness.topPrime 16529 },
  { lower := 16677, upper := 16820, witness := RowWitness.topPrime 16673 },
  { lower := 16821, upper := 16958, witness := RowWitness.topPrime 16811 },
  { lower := 16959, upper := 17090, witness := RowWitness.topPrime 16943 },
  { lower := 17091, upper := 17224, witness := RowWitness.topPrime 17077 },
  { lower := 17225, upper := 17356, witness := RowWitness.topPrime 17209 },
  { lower := 17357, upper := 17498, witness := RowWitness.topPrime 17351 },
  { lower := 17499, upper := 17644, witness := RowWitness.topPrime 17497 },
  { lower := 17645, upper := 17774, witness := RowWitness.topPrime 17627 },
  { lower := 17775, upper := 17908, witness := RowWitness.topPrime 17761 },
  { lower := 17909, upper := 18056, witness := RowWitness.topPrime 17909 },
  { lower := 18057, upper := 18196, witness := RowWitness.topPrime 18049 },
  { lower := 18197, upper := 18338, witness := RowWitness.topPrime 18191 },
  { lower := 18339, upper := 18476, witness := RowWitness.topPrime 18329 },
  { lower := 18477, upper := 18608, witness := RowWitness.topPrime 18461 },
  { lower := 18609, upper := 18740, witness := RowWitness.topPrime 18593 },
  { lower := 18741, upper := 18878, witness := RowWitness.topPrime 18731 },
  { lower := 18879, upper := 19016, witness := RowWitness.topPrime 18869 },
  { lower := 19017, upper := 19160, witness := RowWitness.topPrime 19013 },
  { lower := 19161, upper := 19304, witness := RowWitness.topPrime 19157 },
  { lower := 19305, upper := 19448, witness := RowWitness.topPrime 19301 },
  { lower := 19449, upper := 19594, witness := RowWitness.topPrime 19447 },
  { lower := 19595, upper := 19730, witness := RowWitness.topPrime 19583 },
  { lower := 19731, upper := 19874, witness := RowWitness.topPrime 19727 },
  { lower := 19875, upper := 20014, witness := RowWitness.topPrime 19867 },
  { lower := 20015, upper := 20158, witness := RowWitness.topPrime 20011 },
  { lower := 20159, upper := 20296, witness := RowWitness.topPrime 20149 },
  { lower := 20297, upper := 20444, witness := RowWitness.topPrime 20297 },
  { lower := 20445, upper := 20590, witness := RowWitness.topPrime 20443 },
  { lower := 20591, upper := 20710, witness := RowWitness.topPrime 20563 },
  { lower := 20711, upper := 20854, witness := RowWitness.topPrime 20707 },
  { lower := 20855, upper := 20996, witness := RowWitness.topPrime 20849 },
  { lower := 20997, upper := 21130, witness := RowWitness.topPrime 20983 },
  { lower := 21131, upper := 21268, witness := RowWitness.topPrime 21121 },
  { lower := 21269, upper := 21416, witness := RowWitness.topPrime 21269 },
  { lower := 21417, upper := 21554, witness := RowWitness.topPrime 21407 },
  { lower := 21555, upper := 21676, witness := RowWitness.topPrime 21529 },
  { lower := 21677, upper := 21755, witness := RowWitness.topPrime 21673 },
  { lower := 21870, upper := 22010, witness := RowWitness.topPrime 21863 },
  { lower := 22011, upper := 22022, witness := RowWitness.topPrime 22003 },
  { lower := 22090, upper := 22117, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22237, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22335, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22588, witness := RowWitness.topPrime 22441 },
  { lower := 22589, upper := 22592, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23908, witness := RowWitness.topPrime 23761 },
  { lower := 23909, upper := 23909, witness := RowWitness.topPrime 23909 },
  { lower := 24037, upper := 24176, witness := RowWitness.topPrime 24029 },
  { lower := 24177, upper := 24204, witness := RowWitness.topPrime 24169 },
  { lower := 24299, upper := 24314, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24476, witness := RowWitness.topPrime 24329 },
  { lower := 24477, upper := 24514, witness := RowWitness.topPrime 24473 },
  { lower := 24576, upper := 24712, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25111, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25352, witness := RowWitness.topPrime 25261 },
  { lower := 26364, upper := 26391, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26554, witness := RowWitness.topPrime 26407 },
  { lower := 26555, upper := 26558, witness := RowWitness.topPrime 26539 },
  { lower := 26645, upper := 26655, witness := RowWitness.topPrime 26641 },
  { lower := 27556, upper := 27583, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28270, witness := RowWitness.topPrime 28123 },
  { lower := 28271, upper := 28272, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28578, witness := RowWitness.topPrime 28559 },
  { lower := 28812, upper := 28864, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29915, witness := RowWitness.topPrime 29789 },
  { lower := 31213, upper := 31340, witness := RowWitness.topPrime 31193 },
  { lower := 31341, upper := 31397, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31476, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31831, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31974, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32915, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33636, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33761, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34466, witness := RowWitness.topPrime 34319 },
  { lower := 34467, upper := 34538, witness := RowWitness.topPrime 34457 },
  { lower := 36517, upper := 36644, witness := RowWitness.topPrime 36497 },
  { lower := 36645, upper := 36648, witness := RowWitness.topPrime 36643 },
  { lower := 37303, upper := 37357, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37450, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37640, witness := RowWitness.topPrime 37493 },
  { lower := 37641, upper := 37685, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38438, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39451, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40475, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40951, witness := RowWitness.topPrime 40927 },
  { lower := 45927, upper := 45943, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47668, witness := RowWitness.topPrime 47521 },
  { lower := 47669, upper := 47671, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48108, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48815, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50557, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51152, witness := RowWitness.topPrime 51071 },
  { lower := 56307, upper := 56316, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56454, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57269, witness := RowWitness.topPrime 57241 },
  { lower := 62500, upper := 62557, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65683, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68786, witness := RowWitness.topPrime 68639 },
  { lower := 68787, upper := 68791, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69037, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71434, witness := RowWitness.topPrime 71287 },
  { lower := 71435, upper := 71436, witness := RowWitness.topPrime 71429 },
  { lower := 73205, upper := 73314, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85830, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89520, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93897, witness := RowWitness.topPrime 93827 },
  { lower := 137842, upper := 137928, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149024, witness := RowWitness.topPrime 148949 }
]

def row148_layers : List CoverLayer := [
  { lower := 21756, upper := 43512, M := 13 },
  { lower := 43512, upper := 87024, M := 10 },
  { lower := 87024, upper := 174048, M := 7 },
  { lower := 174048, upper := 348096, M := 6 },
  { lower := 348096, upper := 696192, M := 4 },
  { lower := 696192, upper := 1392384, M := 3 },
  { lower := 1392384, upper := 2784768, M := 2 },
  { lower := 2784768, upper := 5569536, M := 2 },
  { lower := 5569536, upper := 10000000, M := 2 }
]

def row148 : FiniteCoverRow := {
  height := row148_height,
  goods := row148_goods,
  layers := row148_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good000_checked :
    goodSegmentCheck 148 49 105
      { lower := 298, upper := 440, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good001_checked :
    goodSegmentCheck 148 49 105
      { lower := 441, upper := 586, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good002_checked :
    goodSegmentCheck 148 49 105
      { lower := 587, upper := 734, witness := RowWitness.topPrime 587 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good003_checked :
    goodSegmentCheck 148 49 105
      { lower := 735, upper := 880, witness := RowWitness.topPrime 733 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good004_checked :
    goodSegmentCheck 148 49 105
      { lower := 881, upper := 1028, witness := RowWitness.topPrime 881 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good005_checked :
    goodSegmentCheck 148 49 105
      { lower := 1029, upper := 1168, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good006_checked :
    goodSegmentCheck 148 49 105
      { lower := 1169, upper := 1310, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good007_checked :
    goodSegmentCheck 148 49 105
      { lower := 1311, upper := 1454, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good008_checked :
    goodSegmentCheck 148 49 105
      { lower := 1455, upper := 1600, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good009_checked :
    goodSegmentCheck 148 49 105
      { lower := 1601, upper := 1748, witness := RowWitness.topPrime 1601 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good010_checked :
    goodSegmentCheck 148 49 105
      { lower := 1749, upper := 1894, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good011_checked :
    goodSegmentCheck 148 49 105
      { lower := 1895, upper := 2036, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good012_checked :
    goodSegmentCheck 148 49 105
      { lower := 2037, upper := 2176, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good013_checked :
    goodSegmentCheck 148 49 105
      { lower := 2177, upper := 2308, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good014_checked :
    goodSegmentCheck 148 49 105
      { lower := 2309, upper := 2456, witness := RowWitness.topPrime 2309 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good015_checked :
    goodSegmentCheck 148 49 105
      { lower := 2457, upper := 2594, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good016_checked :
    goodSegmentCheck 148 49 105
      { lower := 2595, upper := 2740, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good017_checked :
    goodSegmentCheck 148 49 105
      { lower := 2741, upper := 2888, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good018_checked :
    goodSegmentCheck 148 49 105
      { lower := 2889, upper := 3034, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good019_checked :
    goodSegmentCheck 148 49 105
      { lower := 3035, upper := 3170, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good020_checked :
    goodSegmentCheck 148 49 105
      { lower := 3171, upper := 3316, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good021_checked :
    goodSegmentCheck 148 49 105
      { lower := 3317, upper := 3460, witness := RowWitness.topPrime 3313 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good022_checked :
    goodSegmentCheck 148 49 105
      { lower := 3461, upper := 3608, witness := RowWitness.topPrime 3461 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good023_checked :
    goodSegmentCheck 148 49 105
      { lower := 3609, upper := 3754, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good024_checked :
    goodSegmentCheck 148 49 105
      { lower := 3755, upper := 3886, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good025_checked :
    goodSegmentCheck 148 49 105
      { lower := 3887, upper := 4028, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good026_checked :
    goodSegmentCheck 148 49 105
      { lower := 4029, upper := 4174, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good027_checked :
    goodSegmentCheck 148 49 105
      { lower := 4175, upper := 4306, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good028_checked :
    goodSegmentCheck 148 49 105
      { lower := 4307, upper := 4444, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good029_checked :
    goodSegmentCheck 148 49 105
      { lower := 4445, upper := 4588, witness := RowWitness.topPrime 4441 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good030_checked :
    goodSegmentCheck 148 49 105
      { lower := 4589, upper := 4730, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good031_checked :
    goodSegmentCheck 148 49 105
      { lower := 4731, upper := 4876, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good032_checked :
    goodSegmentCheck 148 49 105
      { lower := 4877, upper := 5024, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good033_checked :
    goodSegmentCheck 148 49 105
      { lower := 5025, upper := 5170, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good034_checked :
    goodSegmentCheck 148 49 105
      { lower := 5171, upper := 5318, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good035_checked :
    goodSegmentCheck 148 49 105
      { lower := 5319, upper := 5456, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good036_checked :
    goodSegmentCheck 148 49 105
      { lower := 5457, upper := 5596, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good037_checked :
    goodSegmentCheck 148 49 105
      { lower := 5597, upper := 5738, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good038_checked :
    goodSegmentCheck 148 49 105
      { lower := 5739, upper := 5884, witness := RowWitness.topPrime 5737 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good039_checked :
    goodSegmentCheck 148 49 105
      { lower := 5885, upper := 6028, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good040_checked :
    goodSegmentCheck 148 49 105
      { lower := 6029, upper := 6176, witness := RowWitness.topPrime 6029 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good041_checked :
    goodSegmentCheck 148 49 105
      { lower := 6177, upper := 6320, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good042_checked :
    goodSegmentCheck 148 49 105
      { lower := 6321, upper := 6464, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good043_checked :
    goodSegmentCheck 148 49 105
      { lower := 6465, upper := 6598, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good044_checked :
    goodSegmentCheck 148 49 105
      { lower := 6599, upper := 6746, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good045_checked :
    goodSegmentCheck 148 49 105
      { lower := 6747, upper := 6884, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good046_checked :
    goodSegmentCheck 148 49 105
      { lower := 6885, upper := 7030, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good047_checked :
    goodSegmentCheck 148 49 105
      { lower := 7031, upper := 7174, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good048_checked :
    goodSegmentCheck 148 49 105
      { lower := 7175, upper := 7306, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good049_checked :
    goodSegmentCheck 148 49 105
      { lower := 7307, upper := 7454, witness := RowWitness.topPrime 7307 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good050_checked :
    goodSegmentCheck 148 49 105
      { lower := 7455, upper := 7598, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good051_checked :
    goodSegmentCheck 148 49 105
      { lower := 7599, upper := 7738, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good052_checked :
    goodSegmentCheck 148 49 105
      { lower := 7739, upper := 7874, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good053_checked :
    goodSegmentCheck 148 49 105
      { lower := 7875, upper := 8020, witness := RowWitness.topPrime 7873 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good054_checked :
    goodSegmentCheck 148 49 105
      { lower := 8021, upper := 8164, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good055_checked :
    goodSegmentCheck 148 49 105
      { lower := 8165, upper := 8308, witness := RowWitness.topPrime 8161 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good056_checked :
    goodSegmentCheck 148 49 105
      { lower := 8309, upper := 8444, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good057_checked :
    goodSegmentCheck 148 49 105
      { lower := 8445, upper := 8590, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good058_checked :
    goodSegmentCheck 148 49 105
      { lower := 8591, upper := 8728, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good059_checked :
    goodSegmentCheck 148 49 105
      { lower := 8729, upper := 8866, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good060_checked :
    goodSegmentCheck 148 49 105
      { lower := 8867, upper := 9014, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good061_checked :
    goodSegmentCheck 148 49 105
      { lower := 9015, upper := 9160, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good062_checked :
    goodSegmentCheck 148 49 105
      { lower := 9161, upper := 9308, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good063_checked :
    goodSegmentCheck 148 49 105
      { lower := 9309, upper := 9440, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good064_checked :
    goodSegmentCheck 148 49 105
      { lower := 9441, upper := 9586, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good065_checked :
    goodSegmentCheck 148 49 105
      { lower := 9587, upper := 9734, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good066_checked :
    goodSegmentCheck 148 49 105
      { lower := 9735, upper := 9880, witness := RowWitness.topPrime 9733 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good067_checked :
    goodSegmentCheck 148 49 105
      { lower := 9881, upper := 10018, witness := RowWitness.topPrime 9871 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good068_checked :
    goodSegmentCheck 148 49 105
      { lower := 10019, upper := 10156, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good069_checked :
    goodSegmentCheck 148 49 105
      { lower := 10157, upper := 10298, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good070_checked :
    goodSegmentCheck 148 49 105
      { lower := 10299, upper := 10436, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good071_checked :
    goodSegmentCheck 148 49 105
      { lower := 10437, upper := 10580, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good072_checked :
    goodSegmentCheck 148 49 105
      { lower := 10581, upper := 10714, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good073_checked :
    goodSegmentCheck 148 49 105
      { lower := 10715, upper := 10858, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good074_checked :
    goodSegmentCheck 148 49 105
      { lower := 10859, upper := 11006, witness := RowWitness.topPrime 10859 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good075_checked :
    goodSegmentCheck 148 49 105
      { lower := 11007, upper := 11150, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good076_checked :
    goodSegmentCheck 148 49 105
      { lower := 11151, upper := 11296, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good077_checked :
    goodSegmentCheck 148 49 105
      { lower := 11297, upper := 11434, witness := RowWitness.topPrime 11287 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good078_checked :
    goodSegmentCheck 148 49 105
      { lower := 11435, upper := 11570, witness := RowWitness.topPrime 11423 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good079_checked :
    goodSegmentCheck 148 49 105
      { lower := 11571, upper := 11698, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good080_checked :
    goodSegmentCheck 148 49 105
      { lower := 11699, upper := 11846, witness := RowWitness.topPrime 11699 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good081_checked :
    goodSegmentCheck 148 49 105
      { lower := 11847, upper := 11986, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good082_checked :
    goodSegmentCheck 148 49 105
      { lower := 11987, upper := 12134, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good083_checked :
    goodSegmentCheck 148 49 105
      { lower := 12135, upper := 12266, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good084_checked :
    goodSegmentCheck 148 49 105
      { lower := 12267, upper := 12410, witness := RowWitness.topPrime 12263 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good085_checked :
    goodSegmentCheck 148 49 105
      { lower := 12411, upper := 12556, witness := RowWitness.topPrime 12409 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good086_checked :
    goodSegmentCheck 148 49 105
      { lower := 12557, upper := 12700, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good087_checked :
    goodSegmentCheck 148 49 105
      { lower := 12701, upper := 12844, witness := RowWitness.topPrime 12697 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good088_checked :
    goodSegmentCheck 148 49 105
      { lower := 12845, upper := 12988, witness := RowWitness.topPrime 12841 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good089_checked :
    goodSegmentCheck 148 49 105
      { lower := 12989, upper := 13130, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good090_checked :
    goodSegmentCheck 148 49 105
      { lower := 13131, upper := 13274, witness := RowWitness.topPrime 13127 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good091_checked :
    goodSegmentCheck 148 49 105
      { lower := 13275, upper := 13414, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good092_checked :
    goodSegmentCheck 148 49 105
      { lower := 13415, upper := 13558, witness := RowWitness.topPrime 13411 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good093_checked :
    goodSegmentCheck 148 49 105
      { lower := 13559, upper := 13700, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good094_checked :
    goodSegmentCheck 148 49 105
      { lower := 13701, upper := 13844, witness := RowWitness.topPrime 13697 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good095_checked :
    goodSegmentCheck 148 49 105
      { lower := 13845, upper := 13988, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good096_checked :
    goodSegmentCheck 148 49 105
      { lower := 13989, upper := 14114, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good097_checked :
    goodSegmentCheck 148 49 105
      { lower := 14115, upper := 14254, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good098_checked :
    goodSegmentCheck 148 49 105
      { lower := 14255, upper := 14398, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good099_checked :
    goodSegmentCheck 148 49 105
      { lower := 14399, upper := 14536, witness := RowWitness.topPrime 14389 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good100_checked :
    goodSegmentCheck 148 49 105
      { lower := 14537, upper := 14684, witness := RowWitness.topPrime 14537 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good101_checked :
    goodSegmentCheck 148 49 105
      { lower := 14685, upper := 14830, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good102_checked :
    goodSegmentCheck 148 49 105
      { lower := 14831, upper := 14978, witness := RowWitness.topPrime 14831 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good103_checked :
    goodSegmentCheck 148 49 105
      { lower := 14979, upper := 15116, witness := RowWitness.topPrime 14969 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good104_checked :
    goodSegmentCheck 148 49 105
      { lower := 15117, upper := 15254, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good105_checked :
    goodSegmentCheck 148 49 105
      { lower := 15255, upper := 15388, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good106_checked :
    goodSegmentCheck 148 49 105
      { lower := 15389, upper := 15530, witness := RowWitness.topPrime 15383 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good107_checked :
    goodSegmentCheck 148 49 105
      { lower := 15531, upper := 15674, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good108_checked :
    goodSegmentCheck 148 49 105
      { lower := 15675, upper := 15818, witness := RowWitness.topPrime 15671 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good109_checked :
    goodSegmentCheck 148 49 105
      { lower := 15819, upper := 15964, witness := RowWitness.topPrime 15817 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good110_checked :
    goodSegmentCheck 148 49 105
      { lower := 15965, upper := 16106, witness := RowWitness.topPrime 15959 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good111_checked :
    goodSegmentCheck 148 49 105
      { lower := 16107, upper := 16250, witness := RowWitness.topPrime 16103 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good112_checked :
    goodSegmentCheck 148 49 105
      { lower := 16251, upper := 16396, witness := RowWitness.topPrime 16249 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good113_checked :
    goodSegmentCheck 148 49 105
      { lower := 16397, upper := 16528, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good114_checked :
    goodSegmentCheck 148 49 105
      { lower := 16529, upper := 16676, witness := RowWitness.topPrime 16529 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good115_checked :
    goodSegmentCheck 148 49 105
      { lower := 16677, upper := 16820, witness := RowWitness.topPrime 16673 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good116_checked :
    goodSegmentCheck 148 49 105
      { lower := 16821, upper := 16958, witness := RowWitness.topPrime 16811 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good117_checked :
    goodSegmentCheck 148 49 105
      { lower := 16959, upper := 17090, witness := RowWitness.topPrime 16943 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good118_checked :
    goodSegmentCheck 148 49 105
      { lower := 17091, upper := 17224, witness := RowWitness.topPrime 17077 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good119_checked :
    goodSegmentCheck 148 49 105
      { lower := 17225, upper := 17356, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good120_checked :
    goodSegmentCheck 148 49 105
      { lower := 17357, upper := 17498, witness := RowWitness.topPrime 17351 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good121_checked :
    goodSegmentCheck 148 49 105
      { lower := 17499, upper := 17644, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good122_checked :
    goodSegmentCheck 148 49 105
      { lower := 17645, upper := 17774, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good123_checked :
    goodSegmentCheck 148 49 105
      { lower := 17775, upper := 17908, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good124_checked :
    goodSegmentCheck 148 49 105
      { lower := 17909, upper := 18056, witness := RowWitness.topPrime 17909 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good125_checked :
    goodSegmentCheck 148 49 105
      { lower := 18057, upper := 18196, witness := RowWitness.topPrime 18049 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good126_checked :
    goodSegmentCheck 148 49 105
      { lower := 18197, upper := 18338, witness := RowWitness.topPrime 18191 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good127_checked :
    goodSegmentCheck 148 49 105
      { lower := 18339, upper := 18476, witness := RowWitness.topPrime 18329 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good128_checked :
    goodSegmentCheck 148 49 105
      { lower := 18477, upper := 18608, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good129_checked :
    goodSegmentCheck 148 49 105
      { lower := 18609, upper := 18740, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good130_checked :
    goodSegmentCheck 148 49 105
      { lower := 18741, upper := 18878, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good131_checked :
    goodSegmentCheck 148 49 105
      { lower := 18879, upper := 19016, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good132_checked :
    goodSegmentCheck 148 49 105
      { lower := 19017, upper := 19160, witness := RowWitness.topPrime 19013 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good133_checked :
    goodSegmentCheck 148 49 105
      { lower := 19161, upper := 19304, witness := RowWitness.topPrime 19157 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good134_checked :
    goodSegmentCheck 148 49 105
      { lower := 19305, upper := 19448, witness := RowWitness.topPrime 19301 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good135_checked :
    goodSegmentCheck 148 49 105
      { lower := 19449, upper := 19594, witness := RowWitness.topPrime 19447 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good136_checked :
    goodSegmentCheck 148 49 105
      { lower := 19595, upper := 19730, witness := RowWitness.topPrime 19583 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good137_checked :
    goodSegmentCheck 148 49 105
      { lower := 19731, upper := 19874, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good138_checked :
    goodSegmentCheck 148 49 105
      { lower := 19875, upper := 20014, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good139_checked :
    goodSegmentCheck 148 49 105
      { lower := 20015, upper := 20158, witness := RowWitness.topPrime 20011 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good140_checked :
    goodSegmentCheck 148 49 105
      { lower := 20159, upper := 20296, witness := RowWitness.topPrime 20149 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good141_checked :
    goodSegmentCheck 148 49 105
      { lower := 20297, upper := 20444, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good142_checked :
    goodSegmentCheck 148 49 105
      { lower := 20445, upper := 20590, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good143_checked :
    goodSegmentCheck 148 49 105
      { lower := 20591, upper := 20710, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good144_checked :
    goodSegmentCheck 148 49 105
      { lower := 20711, upper := 20854, witness := RowWitness.topPrime 20707 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good145_checked :
    goodSegmentCheck 148 49 105
      { lower := 20855, upper := 20996, witness := RowWitness.topPrime 20849 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good146_checked :
    goodSegmentCheck 148 49 105
      { lower := 20997, upper := 21130, witness := RowWitness.topPrime 20983 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good147_checked :
    goodSegmentCheck 148 49 105
      { lower := 21131, upper := 21268, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good148_checked :
    goodSegmentCheck 148 49 105
      { lower := 21269, upper := 21416, witness := RowWitness.topPrime 21269 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good149_checked :
    goodSegmentCheck 148 49 105
      { lower := 21417, upper := 21554, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good150_checked :
    goodSegmentCheck 148 49 105
      { lower := 21555, upper := 21676, witness := RowWitness.topPrime 21529 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good151_checked :
    goodSegmentCheck 148 49 105
      { lower := 21677, upper := 21755, witness := RowWitness.topPrime 21673 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good152_checked :
    goodSegmentCheck 148 49 105
      { lower := 21870, upper := 22010, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good153_checked :
    goodSegmentCheck 148 49 105
      { lower := 22011, upper := 22022, witness := RowWitness.topPrime 22003 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good154_checked :
    goodSegmentCheck 148 49 105
      { lower := 22090, upper := 22117, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good155_checked :
    goodSegmentCheck 148 49 105
      { lower := 22188, upper := 22237, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good156_checked :
    goodSegmentCheck 148 49 105
      { lower := 22326, upper := 22335, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good157_checked :
    goodSegmentCheck 148 49 105
      { lower := 22445, upper := 22588, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good158_checked :
    goodSegmentCheck 148 49 105
      { lower := 22589, upper := 22592, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good159_checked :
    goodSegmentCheck 148 49 105
      { lower := 23763, upper := 23908, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good160_checked :
    goodSegmentCheck 148 49 105
      { lower := 23909, upper := 23909, witness := RowWitness.topPrime 23909 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good161_checked :
    goodSegmentCheck 148 49 105
      { lower := 24037, upper := 24176, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good162_checked :
    goodSegmentCheck 148 49 105
      { lower := 24177, upper := 24204, witness := RowWitness.topPrime 24169 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good163_checked :
    goodSegmentCheck 148 49 105
      { lower := 24299, upper := 24314, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good164_checked :
    goodSegmentCheck 148 49 105
      { lower := 24334, upper := 24476, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good165_checked :
    goodSegmentCheck 148 49 105
      { lower := 24477, upper := 24514, witness := RowWitness.topPrime 24473 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good166_checked :
    goodSegmentCheck 148 49 105
      { lower := 24576, upper := 24712, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good167_checked :
    goodSegmentCheck 148 49 105
      { lower := 25000, upper := 25111, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good168_checked :
    goodSegmentCheck 148 49 105
      { lower := 25281, upper := 25352, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good169_checked :
    goodSegmentCheck 148 49 105
      { lower := 26364, upper := 26391, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good170_checked :
    goodSegmentCheck 148 49 105
      { lower := 26411, upper := 26554, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good171_checked :
    goodSegmentCheck 148 49 105
      { lower := 26555, upper := 26558, witness := RowWitness.topPrime 26539 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good172_checked :
    goodSegmentCheck 148 49 105
      { lower := 26645, upper := 26655, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good173_checked :
    goodSegmentCheck 148 49 105
      { lower := 27556, upper := 27583, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good174_checked :
    goodSegmentCheck 148 49 105
      { lower := 28125, upper := 28270, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good175_checked :
    goodSegmentCheck 148 49 105
      { lower := 28271, upper := 28272, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good176_checked :
    goodSegmentCheck 148 49 105
      { lower := 28561, upper := 28578, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good177_checked :
    goodSegmentCheck 148 49 105
      { lower := 28812, upper := 28864, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good178_checked :
    goodSegmentCheck 148 49 105
      { lower := 29791, upper := 29915, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good179_checked :
    goodSegmentCheck 148 49 105
      { lower := 31213, upper := 31340, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good180_checked :
    goodSegmentCheck 148 49 105
      { lower := 31341, upper := 31397, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good181_checked :
    goodSegmentCheck 148 49 105
      { lower := 31423, upper := 31476, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good182_checked :
    goodSegmentCheck 148 49 105
      { lower := 31827, upper := 31831, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good183_checked :
    goodSegmentCheck 148 49 105
      { lower := 31974, upper := 31974, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good184_checked :
    goodSegmentCheck 148 49 105
      { lower := 32805, upper := 32915, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good185_checked :
    goodSegmentCheck 148 49 105
      { lower := 33614, upper := 33636, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good186_checked :
    goodSegmentCheck 148 49 105
      { lower := 33708, upper := 33761, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good187_checked :
    goodSegmentCheck 148 49 105
      { lower := 34322, upper := 34466, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good188_checked :
    goodSegmentCheck 148 49 105
      { lower := 34467, upper := 34538, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good189_checked :
    goodSegmentCheck 148 49 105
      { lower := 36517, upper := 36644, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good190_checked :
    goodSegmentCheck 148 49 105
      { lower := 36645, upper := 36648, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good191_checked :
    goodSegmentCheck 148 49 105
      { lower := 37303, upper := 37357, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good192_checked :
    goodSegmentCheck 148 49 105
      { lower := 37446, upper := 37450, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good193_checked :
    goodSegmentCheck 148 49 105
      { lower := 37500, upper := 37640, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good194_checked :
    goodSegmentCheck 148 49 105
      { lower := 37641, upper := 37685, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good195_checked :
    goodSegmentCheck 148 49 105
      { lower := 38307, upper := 38438, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good196_checked :
    goodSegmentCheck 148 49 105
      { lower := 39366, upper := 39451, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good197_checked :
    goodSegmentCheck 148 49 105
      { lower := 40401, upper := 40475, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good198_checked :
    goodSegmentCheck 148 49 105
      { lower := 40931, upper := 40951, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good199_checked :
    goodSegmentCheck 148 49 105
      { lower := 45927, upper := 45943, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good200_checked :
    goodSegmentCheck 148 49 105
      { lower := 47526, upper := 47668, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good201_checked :
    goodSegmentCheck 148 49 105
      { lower := 47669, upper := 47671, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good202_checked :
    goodSegmentCheck 148 49 105
      { lower := 48013, upper := 48108, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good203_checked :
    goodSegmentCheck 148 49 105
      { lower := 48778, upper := 48815, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good204_checked :
    goodSegmentCheck 148 49 105
      { lower := 50421, upper := 50557, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good205_checked :
    goodSegmentCheck 148 49 105
      { lower := 51076, upper := 51152, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good206_checked :
    goodSegmentCheck 148 49 105
      { lower := 56307, upper := 56316, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good207_checked :
    goodSegmentCheck 148 49 105
      { lower := 56454, upper := 56454, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_good208_checked :
    goodSegmentCheck 148 49 105
      { lower := 57245, upper := 57269, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good209_checked :
    goodSegmentCheck 148 49 105
      { lower := 62500, upper := 62557, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good210_checked :
    goodSegmentCheck 148 49 105
      { lower := 65610, upper := 65683, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good211_checked :
    goodSegmentCheck 148 49 105
      { lower := 68644, upper := 68786, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good212_checked :
    goodSegmentCheck 148 49 105
      { lower := 68787, upper := 68791, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good213_checked :
    goodSegmentCheck 148 49 105
      { lower := 68921, upper := 69037, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good214_checked :
    goodSegmentCheck 148 49 105
      { lower := 71289, upper := 71434, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good215_checked :
    goodSegmentCheck 148 49 105
      { lower := 71435, upper := 71436, witness := RowWitness.topPrime 71429 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good216_checked :
    goodSegmentCheck 148 49 105
      { lower := 73205, upper := 73314, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good217_checked :
    goodSegmentCheck 148 49 105
      { lower := 85805, upper := 85830, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good218_checked :
    goodSegmentCheck 148 49 105
      { lower := 89383, upper := 89520, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good219_checked :
    goodSegmentCheck 148 49 105
      { lower := 93845, upper := 93897, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good220_checked :
    goodSegmentCheck 148 49 105
      { lower := 137842, upper := 137928, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row148_good221_checked :
    goodSegmentCheck 148 49 105
      { lower := 148955, upper := 149024, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 148) (r := 49) (s := 105) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_good221_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_goods_checked :
    row148.goods.all (goodSegmentCheck row148.height.i row148.height.r row148.height.s) = true := by
  change row148_goods.all (goodSegmentCheck 148 49 105) = true
  simp only [row148_goods, List.all_cons, List.all_nil,
    row148_good000_checked,
    row148_good001_checked,
    row148_good002_checked,
    row148_good003_checked,
    row148_good004_checked,
    row148_good005_checked,
    row148_good006_checked,
    row148_good007_checked,
    row148_good008_checked,
    row148_good009_checked,
    row148_good010_checked,
    row148_good011_checked,
    row148_good012_checked,
    row148_good013_checked,
    row148_good014_checked,
    row148_good015_checked,
    row148_good016_checked,
    row148_good017_checked,
    row148_good018_checked,
    row148_good019_checked,
    row148_good020_checked,
    row148_good021_checked,
    row148_good022_checked,
    row148_good023_checked,
    row148_good024_checked,
    row148_good025_checked,
    row148_good026_checked,
    row148_good027_checked,
    row148_good028_checked,
    row148_good029_checked,
    row148_good030_checked,
    row148_good031_checked,
    row148_good032_checked,
    row148_good033_checked,
    row148_good034_checked,
    row148_good035_checked,
    row148_good036_checked,
    row148_good037_checked,
    row148_good038_checked,
    row148_good039_checked,
    row148_good040_checked,
    row148_good041_checked,
    row148_good042_checked,
    row148_good043_checked,
    row148_good044_checked,
    row148_good045_checked,
    row148_good046_checked,
    row148_good047_checked,
    row148_good048_checked,
    row148_good049_checked,
    row148_good050_checked,
    row148_good051_checked,
    row148_good052_checked,
    row148_good053_checked,
    row148_good054_checked,
    row148_good055_checked,
    row148_good056_checked,
    row148_good057_checked,
    row148_good058_checked,
    row148_good059_checked,
    row148_good060_checked,
    row148_good061_checked,
    row148_good062_checked,
    row148_good063_checked,
    row148_good064_checked,
    row148_good065_checked,
    row148_good066_checked,
    row148_good067_checked,
    row148_good068_checked,
    row148_good069_checked,
    row148_good070_checked,
    row148_good071_checked,
    row148_good072_checked,
    row148_good073_checked,
    row148_good074_checked,
    row148_good075_checked,
    row148_good076_checked,
    row148_good077_checked,
    row148_good078_checked,
    row148_good079_checked,
    row148_good080_checked,
    row148_good081_checked,
    row148_good082_checked,
    row148_good083_checked,
    row148_good084_checked,
    row148_good085_checked,
    row148_good086_checked,
    row148_good087_checked,
    row148_good088_checked,
    row148_good089_checked,
    row148_good090_checked,
    row148_good091_checked,
    row148_good092_checked,
    row148_good093_checked,
    row148_good094_checked,
    row148_good095_checked,
    row148_good096_checked,
    row148_good097_checked,
    row148_good098_checked,
    row148_good099_checked,
    row148_good100_checked,
    row148_good101_checked,
    row148_good102_checked,
    row148_good103_checked,
    row148_good104_checked,
    row148_good105_checked,
    row148_good106_checked,
    row148_good107_checked,
    row148_good108_checked,
    row148_good109_checked,
    row148_good110_checked,
    row148_good111_checked,
    row148_good112_checked,
    row148_good113_checked,
    row148_good114_checked,
    row148_good115_checked,
    row148_good116_checked,
    row148_good117_checked,
    row148_good118_checked,
    row148_good119_checked,
    row148_good120_checked,
    row148_good121_checked,
    row148_good122_checked,
    row148_good123_checked,
    row148_good124_checked,
    row148_good125_checked,
    row148_good126_checked,
    row148_good127_checked,
    row148_good128_checked,
    row148_good129_checked,
    row148_good130_checked,
    row148_good131_checked,
    row148_good132_checked,
    row148_good133_checked,
    row148_good134_checked,
    row148_good135_checked,
    row148_good136_checked,
    row148_good137_checked,
    row148_good138_checked,
    row148_good139_checked,
    row148_good140_checked,
    row148_good141_checked,
    row148_good142_checked,
    row148_good143_checked,
    row148_good144_checked,
    row148_good145_checked,
    row148_good146_checked,
    row148_good147_checked,
    row148_good148_checked,
    row148_good149_checked,
    row148_good150_checked,
    row148_good151_checked,
    row148_good152_checked,
    row148_good153_checked,
    row148_good154_checked,
    row148_good155_checked,
    row148_good156_checked,
    row148_good157_checked,
    row148_good158_checked,
    row148_good159_checked,
    row148_good160_checked,
    row148_good161_checked,
    row148_good162_checked,
    row148_good163_checked,
    row148_good164_checked,
    row148_good165_checked,
    row148_good166_checked,
    row148_good167_checked,
    row148_good168_checked,
    row148_good169_checked,
    row148_good170_checked,
    row148_good171_checked,
    row148_good172_checked,
    row148_good173_checked,
    row148_good174_checked,
    row148_good175_checked,
    row148_good176_checked,
    row148_good177_checked,
    row148_good178_checked,
    row148_good179_checked,
    row148_good180_checked,
    row148_good181_checked,
    row148_good182_checked,
    row148_good183_checked,
    row148_good184_checked,
    row148_good185_checked,
    row148_good186_checked,
    row148_good187_checked,
    row148_good188_checked,
    row148_good189_checked,
    row148_good190_checked,
    row148_good191_checked,
    row148_good192_checked,
    row148_good193_checked,
    row148_good194_checked,
    row148_good195_checked,
    row148_good196_checked,
    row148_good197_checked,
    row148_good198_checked,
    row148_good199_checked,
    row148_good200_checked,
    row148_good201_checked,
    row148_good202_checked,
    row148_good203_checked,
    row148_good204_checked,
    row148_good205_checked,
    row148_good206_checked,
    row148_good207_checked,
    row148_good208_checked,
    row148_good209_checked,
    row148_good210_checked,
    row148_good211_checked,
    row148_good212_checked,
    row148_good213_checked,
    row148_good214_checked,
    row148_good215_checked,
    row148_good216_checked,
    row148_good217_checked,
    row148_good218_checked,
    row148_good219_checked,
    row148_good220_checked,
    row148_good221_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_registered :
    decide (row148.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row148_small_checked :
    coverCheck (2 * row148.height.i + 2) (row148.height.i * (row148.height.i - 1) - 1)
      (row148.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row148_layerCover_checked :
    coverCheck (row148.height.i * (row148.height.i - 1)) (row148.height.n0 - 1)
      (row148.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row148_bounds : List NatInterval :=
  [(298, 440), (441, 586), (587, 734), (735, 880), (881, 1028), (1029, 1168), (1169, 1310), (1311, 1454), (1455, 1600), (1601, 1748), (1749, 1894), (1895, 2036), (2037, 2176), (2177, 2308), (2309, 2456), (2457, 2594), (2595, 2740), (2741, 2888), (2889, 3034), (3035, 3170), (3171, 3316), (3317, 3460), (3461, 3608), (3609, 3754), (3755, 3886), (3887, 4028), (4029, 4174), (4175, 4306), (4307, 4444), (4445, 4588), (4589, 4730), (4731, 4876), (4877, 5024), (5025, 5170), (5171, 5318), (5319, 5456), (5457, 5596), (5597, 5738), (5739, 5884), (5885, 6028), (6029, 6176), (6177, 6320), (6321, 6464), (6465, 6598), (6599, 6746), (6747, 6884), (6885, 7030), (7031, 7174), (7175, 7306), (7307, 7454), (7455, 7598), (7599, 7738), (7739, 7874), (7875, 8020), (8021, 8164), (8165, 8308), (8309, 8444), (8445, 8590), (8591, 8728), (8729, 8866), (8867, 9014), (9015, 9160), (9161, 9308), (9309, 9440), (9441, 9586), (9587, 9734), (9735, 9880), (9881, 10018), (10019, 10156), (10157, 10298), (10299, 10436), (10437, 10580), (10581, 10714), (10715, 10858), (10859, 11006), (11007, 11150), (11151, 11296), (11297, 11434), (11435, 11570), (11571, 11698), (11699, 11846), (11847, 11986), (11987, 12134), (12135, 12266), (12267, 12410), (12411, 12556), (12557, 12700), (12701, 12844), (12845, 12988), (12989, 13130), (13131, 13274), (13275, 13414), (13415, 13558), (13559, 13700), (13701, 13844), (13845, 13988), (13989, 14114), (14115, 14254), (14255, 14398), (14399, 14536), (14537, 14684), (14685, 14830), (14831, 14978), (14979, 15116), (15117, 15254), (15255, 15388), (15389, 15530), (15531, 15674), (15675, 15818), (15819, 15964), (15965, 16106), (16107, 16250), (16251, 16396), (16397, 16528), (16529, 16676), (16677, 16820), (16821, 16958), (16959, 17090), (17091, 17224), (17225, 17356), (17357, 17498), (17499, 17644), (17645, 17774), (17775, 17908), (17909, 18056), (18057, 18196), (18197, 18338), (18339, 18476), (18477, 18608), (18609, 18740), (18741, 18878), (18879, 19016), (19017, 19160), (19161, 19304), (19305, 19448), (19449, 19594), (19595, 19730), (19731, 19874), (19875, 20014), (20015, 20158), (20159, 20296), (20297, 20444), (20445, 20590), (20591, 20710), (20711, 20854), (20855, 20996), (20997, 21130), (21131, 21268), (21269, 21416), (21417, 21554), (21555, 21676), (21677, 21755), (21870, 22010), (22011, 22022), (22090, 22117), (22188, 22237), (22326, 22335), (22445, 22588), (22589, 22592), (23763, 23908), (23909, 23909), (24037, 24176), (24177, 24204), (24299, 24314), (24334, 24476), (24477, 24514), (24576, 24712), (25000, 25111), (25281, 25352), (26364, 26391), (26411, 26554), (26555, 26558), (26645, 26655), (27556, 27583), (28125, 28270), (28271, 28272), (28561, 28578), (28812, 28864), (29791, 29915), (31213, 31340), (31341, 31397), (31423, 31476), (31827, 31831), (31974, 31974), (32805, 32915), (33614, 33636), (33708, 33761), (34322, 34466), (34467, 34538), (36517, 36644), (36645, 36648), (37303, 37357), (37446, 37450), (37500, 37640), (37641, 37685), (38307, 38438), (39366, 39451), (40401, 40475), (40931, 40951), (45927, 45943), (47526, 47668), (47669, 47671), (48013, 48108), (48778, 48815), (50421, 50557), (51076, 51152), (56307, 56316), (56454, 56454), (57245, 57269), (62500, 62557), (65610, 65683), (68644, 68786), (68787, 68791), (68921, 69037), (71289, 71434), (71435, 71436), (73205, 73314), (85805, 85830), (89383, 89520), (93845, 93897), (137842, 137928), (148955, 149024)]

theorem row148_bounds_eq : row148.goods.map goodSegmentBounds = row148_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row148_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24723), (2, 32768, 32915), (2, 32768, 32915), (3, 21870, 22017), (3, 24057, 24204), (3, 26244, 26391), (3, 28431, 28578), (3, 26244, 26391), (3, 32805, 32952), (3, 39366, 39513), (3, 39366, 39513), (5, 21875, 22022), (5, 25000, 25147), (5, 28125, 28272), (5, 31250, 31397), (5, 34375, 34522), (5, 37500, 37647), (5, 40625, 40772), (5, 31250, 31397), (7, 21756, 21756), (7, 24010, 24157), (7, 26411, 26558), (7, 28812, 28959), (7, 31213, 31360), (7, 33614, 33761), (11, 29282, 29429), (13, 21970, 22117), (13, 24167, 24314), (13, 26364, 26511), (13, 28561, 28708), (13, 28561, 28708), (17, 24565, 24712), (17, 29478, 29625), (17, 34391, 34538), (17, 39304, 39451), (19, 27436, 27583), (19, 34295, 34442), (19, 41154, 41301), (23, 24334, 24481), (23, 36501, 36648), (29, 24389, 24536), (31, 29791, 29938), (41, 21853, 22000), (43, 22188, 22335), (43, 24037, 24184), (47, 22090, 22237), (47, 24299, 24446), (47, 26508, 26655), (47, 28717, 28864), (53, 22472, 22619), (53, 25281, 25428), (53, 28090, 28237), (53, 30899, 31046), (53, 33708, 33855), (53, 36517, 36664), (59, 24367, 24514), (59, 27848, 27995), (59, 31329, 31476), (59, 34810, 34957), (59, 38291, 38438), (59, 41772, 41919), (61, 22326, 22473), (61, 26047, 26194), (61, 29768, 29915), (61, 33489, 33636), (61, 37210, 37357), (61, 40931, 41078), (67, 22445, 22592), (67, 26934, 27081), (67, 31423, 31570), (67, 35912, 36059), (67, 40401, 40548), (71, 25205, 25352), (71, 30246, 30393), (71, 35287, 35434), (71, 40328, 40475), (73, 26645, 26792), (73, 31974, 32121), (73, 37303, 37450), (73, 42632, 42779), (79, 24964, 25111), (79, 31205, 31352), (79, 37446, 37593), (83, 27556, 27703), (83, 34445, 34592), (83, 41334, 41481), (89, 23763, 23910), (89, 31684, 31831), (89, 39605, 39752), (97, 28227, 28374), (97, 37636, 37783), (101, 30603, 30750), (101, 40804, 40951), (103, 31827, 31974), (103, 42436, 42583), (107, 22898, 23045), (107, 34347, 34494), (109, 23762, 23909), (109, 35643, 35790), (113, 25538, 25685), (113, 38307, 38454), (127, 32258, 32405), (131, 34322, 34469), (137, 37538, 37685), (139, 38642, 38789)]

def row148_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24723), (2, 32768, 32915), (2, 32768, 32915), (3, 21870, 22017), (3, 24057, 24204), (3, 26244, 26391), (3, 28431, 28578), (3, 26244, 26391), (3, 32805, 32952), (3, 39366, 39513), (3, 39366, 39513), (5, 21875, 22022), (5, 25000, 25147), (5, 28125, 28272), (5, 31250, 31397), (5, 34375, 34522)]

def row148_layer000_block001 : List ColouredInterval :=
  [(5, 37500, 37647), (5, 40625, 40772), (5, 31250, 31397), (7, 21756, 21756), (7, 24010, 24157), (7, 26411, 26558), (7, 28812, 28959), (7, 31213, 31360), (7, 33614, 33761), (11, 29282, 29429), (13, 21970, 22117), (13, 24167, 24314), (13, 26364, 26511), (13, 28561, 28708), (13, 28561, 28708), (17, 24565, 24712)]

def row148_layer000_block002 : List ColouredInterval :=
  [(17, 29478, 29625), (17, 34391, 34538), (17, 39304, 39451), (19, 27436, 27583), (19, 34295, 34442), (19, 41154, 41301), (23, 24334, 24481), (23, 36501, 36648), (29, 24389, 24536), (31, 29791, 29938), (41, 21853, 22000), (43, 22188, 22335), (43, 24037, 24184), (47, 22090, 22237), (47, 24299, 24446), (47, 26508, 26655)]

def row148_layer000_block003 : List ColouredInterval :=
  [(47, 28717, 28864), (53, 22472, 22619), (53, 25281, 25428), (53, 28090, 28237), (53, 30899, 31046), (53, 33708, 33855), (53, 36517, 36664), (59, 24367, 24514), (59, 27848, 27995), (59, 31329, 31476), (59, 34810, 34957), (59, 38291, 38438), (59, 41772, 41919), (61, 22326, 22473), (61, 26047, 26194), (61, 29768, 29915)]

def row148_layer000_block004 : List ColouredInterval :=
  [(61, 33489, 33636), (61, 37210, 37357), (61, 40931, 41078), (67, 22445, 22592), (67, 26934, 27081), (67, 31423, 31570), (67, 35912, 36059), (67, 40401, 40548), (71, 25205, 25352), (71, 30246, 30393), (71, 35287, 35434), (71, 40328, 40475), (73, 26645, 26792), (73, 31974, 32121), (73, 37303, 37450), (73, 42632, 42779)]

def row148_layer000_block005 : List ColouredInterval :=
  [(79, 24964, 25111), (79, 31205, 31352), (79, 37446, 37593), (83, 27556, 27703), (83, 34445, 34592), (83, 41334, 41481), (89, 23763, 23910), (89, 31684, 31831), (89, 39605, 39752), (97, 28227, 28374), (97, 37636, 37783), (101, 30603, 30750), (101, 40804, 40951), (103, 31827, 31974), (103, 42436, 42583), (107, 22898, 23045)]

def row148_layer000_block006 : List ColouredInterval :=
  [(107, 34347, 34494), (109, 23762, 23909), (109, 35643, 35790), (113, 25538, 25685), (113, 38307, 38454), (127, 32258, 32405), (131, 34322, 34469), (137, 37538, 37685), (139, 38642, 38789)]

def row148_layer000_chunks : List (List ColouredInterval) :=
  [row148_layer000_block000, row148_layer000_block001, row148_layer000_block002, row148_layer000_block003, row148_layer000_block004, row148_layer000_block005, row148_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_arithmetic : LayerArithmeticValid row148.height { lower := 21756, upper := 43512, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_enumeration :
    activePowerIntervalList 148 13 21756 43512 = row148_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_pairs000 :
    row148_layer000_block000.all (fun I => row148_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_pairs001 :
    row148_layer000_block001.all (fun I => row148_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_pairs002 :
    row148_layer000_block002.all (fun I => row148_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_pairs003 :
    row148_layer000_block003.all (fun I => row148_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_pairs004 :
    row148_layer000_block004.all (fun I => row148_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_pairs005 :
    row148_layer000_block005.all (fun I => row148_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_pairs006 :
    row148_layer000_block006.all (fun I => row148_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_chunks_eq : row148_layer000_chunks.flatten = row148_layer000_intervals := by
  rfl

theorem row148_layer000_pairs : pairCoverCheck row148_layer000_intervals row148_bounds = true := by
  apply pairCoverCheck_of_chunks row148_layer000_chunks_eq
  intro block hblock
  simp only [row148_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row148_layer000_pairs000
  · exact row148_layer000_pairs001
  · exact row148_layer000_pairs002
  · exact row148_layer000_pairs003
  · exact row148_layer000_pairs004
  · exact row148_layer000_pairs005
  · exact row148_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer000_checked :
    coverLayerCheck row148.height row148.goods { lower := 21756, upper := 43512, M := 13 } = true := by
  exact coverLayerCheck_of_parts row148_layer000_arithmetic row148_layer000_enumeration row148_bounds_eq row148_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row148_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65683), (2, 65536, 65683), (3, 45927, 46074), (3, 52488, 52635), (3, 59049, 59196), (3, 65610, 65757), (3, 59049, 59196), (3, 78732, 78879), (3, 59049, 59196), (5, 46875, 47022), (5, 62500, 62647), (5, 78125, 78272), (5, 78125, 78272), (7, 50421, 50568), (7, 67228, 67375), (7, 84035, 84182), (11, 43923, 44070), (11, 58564, 58711), (11, 73205, 73352), (13, 57122, 57269), (13, 85683, 85830), (17, 44217, 44364), (17, 49130, 49277), (17, 83521, 83668), (19, 48013, 48160), (19, 54872, 55019), (19, 61731, 61878), (19, 68590, 68737), (23, 48668, 48815), (23, 60835, 60982), (23, 73002, 73149), (23, 85169, 85316), (29, 48778, 48925), (29, 73167, 73314), (31, 59582, 59729), (41, 68921, 69068), (43, 79507, 79654), (67, 44890, 45037), (71, 45369, 45516), (71, 50410, 50557), (73, 47961, 48108), (73, 53290, 53437), (79, 43687, 43834), (79, 49928, 50075), (79, 56169, 56316), (79, 62410, 62557), (83, 48223, 48370), (83, 55112, 55259), (83, 62001, 62148), (83, 68890, 69037), (89, 47526, 47673), (89, 55447, 55594), (89, 63368, 63515), (89, 71289, 71436), (89, 79210, 79357), (97, 47045, 47192), (97, 56454, 56601), (97, 65863, 66010), (97, 75272, 75419), (97, 84681, 84828), (101, 51005, 51152), (101, 61206, 61353), (101, 71407, 71554), (101, 81608, 81755), (103, 53045, 53192), (103, 63654, 63801), (103, 74263, 74410), (103, 84872, 85019), (107, 45796, 45943), (107, 57245, 57392), (107, 68694, 68841), (107, 80143, 80290), (109, 47524, 47671), (109, 59405, 59552), (109, 71286, 71433), (109, 83167, 83314), (113, 51076, 51223), (113, 63845, 63992), (113, 76614, 76761), (127, 48387, 48534), (127, 64516, 64663), (127, 80645, 80792), (131, 51483, 51630), (131, 68644, 68791), (131, 85805, 85952), (137, 56307, 56454), (137, 75076, 75223), (139, 57963, 58110), (139, 77284, 77431)]

def row148_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65683), (2, 65536, 65683), (3, 45927, 46074), (3, 52488, 52635), (3, 59049, 59196), (3, 65610, 65757), (3, 59049, 59196), (3, 78732, 78879), (3, 59049, 59196), (5, 46875, 47022), (5, 62500, 62647), (5, 78125, 78272), (5, 78125, 78272), (7, 50421, 50568), (7, 67228, 67375), (7, 84035, 84182)]

def row148_layer001_block001 : List ColouredInterval :=
  [(11, 43923, 44070), (11, 58564, 58711), (11, 73205, 73352), (13, 57122, 57269), (13, 85683, 85830), (17, 44217, 44364), (17, 49130, 49277), (17, 83521, 83668), (19, 48013, 48160), (19, 54872, 55019), (19, 61731, 61878), (19, 68590, 68737), (23, 48668, 48815), (23, 60835, 60982), (23, 73002, 73149), (23, 85169, 85316)]

def row148_layer001_block002 : List ColouredInterval :=
  [(29, 48778, 48925), (29, 73167, 73314), (31, 59582, 59729), (41, 68921, 69068), (43, 79507, 79654), (67, 44890, 45037), (71, 45369, 45516), (71, 50410, 50557), (73, 47961, 48108), (73, 53290, 53437), (79, 43687, 43834), (79, 49928, 50075), (79, 56169, 56316), (79, 62410, 62557), (83, 48223, 48370), (83, 55112, 55259)]

def row148_layer001_block003 : List ColouredInterval :=
  [(83, 62001, 62148), (83, 68890, 69037), (89, 47526, 47673), (89, 55447, 55594), (89, 63368, 63515), (89, 71289, 71436), (89, 79210, 79357), (97, 47045, 47192), (97, 56454, 56601), (97, 65863, 66010), (97, 75272, 75419), (97, 84681, 84828), (101, 51005, 51152), (101, 61206, 61353), (101, 71407, 71554), (101, 81608, 81755)]

def row148_layer001_block004 : List ColouredInterval :=
  [(103, 53045, 53192), (103, 63654, 63801), (103, 74263, 74410), (103, 84872, 85019), (107, 45796, 45943), (107, 57245, 57392), (107, 68694, 68841), (107, 80143, 80290), (109, 47524, 47671), (109, 59405, 59552), (109, 71286, 71433), (109, 83167, 83314), (113, 51076, 51223), (113, 63845, 63992), (113, 76614, 76761), (127, 48387, 48534)]

def row148_layer001_block005 : List ColouredInterval :=
  [(127, 64516, 64663), (127, 80645, 80792), (131, 51483, 51630), (131, 68644, 68791), (131, 85805, 85952), (137, 56307, 56454), (137, 75076, 75223), (139, 57963, 58110), (139, 77284, 77431)]

def row148_layer001_chunks : List (List ColouredInterval) :=
  [row148_layer001_block000, row148_layer001_block001, row148_layer001_block002, row148_layer001_block003, row148_layer001_block004, row148_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_arithmetic : LayerArithmeticValid row148.height { lower := 43512, upper := 87024, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_arithmetic
