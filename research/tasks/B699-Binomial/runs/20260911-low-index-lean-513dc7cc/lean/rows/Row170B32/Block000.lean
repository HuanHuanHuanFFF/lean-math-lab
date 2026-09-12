import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row170_height : HeightCertificateDatum := { i := 170, r := 56, s := 121, n0Power10 := 7 }

def row170_goods : List GoodSegment := [
  { lower := 342, upper := 506, witness := RowWitness.topPrime 337 },
  { lower := 507, upper := 672, witness := RowWitness.topPrime 503 },
  { lower := 673, upper := 842, witness := RowWitness.topPrime 673 },
  { lower := 843, upper := 1008, witness := RowWitness.topPrime 839 },
  { lower := 1009, upper := 1178, witness := RowWitness.topPrime 1009 },
  { lower := 1179, upper := 1340, witness := RowWitness.topPrime 1171 },
  { lower := 1341, upper := 1496, witness := RowWitness.topPrime 1327 },
  { lower := 1497, upper := 1662, witness := RowWitness.topPrime 1493 },
  { lower := 1663, upper := 1832, witness := RowWitness.topPrime 1663 },
  { lower := 1833, upper := 2000, witness := RowWitness.topPrime 1831 },
  { lower := 2001, upper := 2168, witness := RowWitness.topPrime 1999 },
  { lower := 2169, upper := 2330, witness := RowWitness.topPrime 2161 },
  { lower := 2331, upper := 2480, witness := RowWitness.topPrime 2311 },
  { lower := 2481, upper := 2646, witness := RowWitness.topPrime 2477 },
  { lower := 2647, upper := 2816, witness := RowWitness.topPrime 2647 },
  { lower := 2817, upper := 2972, witness := RowWitness.topPrime 2803 },
  { lower := 2973, upper := 3140, witness := RowWitness.topPrime 2971 },
  { lower := 3141, upper := 3306, witness := RowWitness.topPrime 3137 },
  { lower := 3307, upper := 3476, witness := RowWitness.topPrime 3307 },
  { lower := 3477, upper := 3638, witness := RowWitness.topPrime 3469 },
  { lower := 3639, upper := 3806, witness := RowWitness.topPrime 3637 },
  { lower := 3807, upper := 3972, witness := RowWitness.topPrime 3803 },
  { lower := 3973, upper := 4136, witness := RowWitness.topPrime 3967 },
  { lower := 4137, upper := 4302, witness := RowWitness.topPrime 4133 },
  { lower := 4303, upper := 4466, witness := RowWitness.topPrime 4297 },
  { lower := 4467, upper := 4632, witness := RowWitness.topPrime 4463 },
  { lower := 4633, upper := 4790, witness := RowWitness.topPrime 4621 },
  { lower := 4791, upper := 4958, witness := RowWitness.topPrime 4789 },
  { lower := 4959, upper := 5126, witness := RowWitness.topPrime 4957 },
  { lower := 5127, upper := 5288, witness := RowWitness.topPrime 5119 },
  { lower := 5289, upper := 5450, witness := RowWitness.topPrime 5281 },
  { lower := 5451, upper := 5618, witness := RowWitness.topPrime 5449 },
  { lower := 5619, upper := 5760, witness := RowWitness.topPrime 5591 },
  { lower := 5761, upper := 5918, witness := RowWitness.topPrime 5749 },
  { lower := 5919, upper := 6072, witness := RowWitness.topPrime 5903 },
  { lower := 6073, upper := 6242, witness := RowWitness.topPrime 6073 },
  { lower := 6243, upper := 6398, witness := RowWitness.topPrime 6229 },
  { lower := 6399, upper := 6566, witness := RowWitness.topPrime 6397 },
  { lower := 6567, upper := 6732, witness := RowWitness.topPrime 6563 },
  { lower := 6733, upper := 6902, witness := RowWitness.topPrime 6733 },
  { lower := 6903, upper := 7068, witness := RowWitness.topPrime 6899 },
  { lower := 7069, upper := 7238, witness := RowWitness.topPrime 7069 },
  { lower := 7239, upper := 7406, witness := RowWitness.topPrime 7237 },
  { lower := 7407, upper := 7562, witness := RowWitness.topPrime 7393 },
  { lower := 7563, upper := 7730, witness := RowWitness.topPrime 7561 },
  { lower := 7731, upper := 7896, witness := RowWitness.topPrime 7727 },
  { lower := 7897, upper := 8052, witness := RowWitness.topPrime 7883 },
  { lower := 8053, upper := 8222, witness := RowWitness.topPrime 8053 },
  { lower := 8223, upper := 8390, witness := RowWitness.topPrime 8221 },
  { lower := 8391, upper := 8558, witness := RowWitness.topPrime 8389 },
  { lower := 8559, upper := 8712, witness := RowWitness.topPrime 8543 },
  { lower := 8713, upper := 8882, witness := RowWitness.topPrime 8713 },
  { lower := 8883, upper := 9036, witness := RowWitness.topPrime 8867 },
  { lower := 9037, upper := 9198, witness := RowWitness.topPrime 9029 },
  { lower := 9199, upper := 9368, witness := RowWitness.topPrime 9199 },
  { lower := 9369, upper := 9518, witness := RowWitness.topPrime 9349 },
  { lower := 9519, upper := 9680, witness := RowWitness.topPrime 9511 },
  { lower := 9681, upper := 9848, witness := RowWitness.topPrime 9679 },
  { lower := 9849, upper := 10008, witness := RowWitness.topPrime 9839 },
  { lower := 10009, upper := 10178, witness := RowWitness.topPrime 10009 },
  { lower := 10179, upper := 10346, witness := RowWitness.topPrime 10177 },
  { lower := 10347, upper := 10512, witness := RowWitness.topPrime 10343 },
  { lower := 10513, upper := 10682, witness := RowWitness.topPrime 10513 },
  { lower := 10683, upper := 10836, witness := RowWitness.topPrime 10667 },
  { lower := 10837, upper := 11006, witness := RowWitness.topPrime 10837 },
  { lower := 11007, upper := 11172, witness := RowWitness.topPrime 11003 },
  { lower := 11173, upper := 11342, witness := RowWitness.topPrime 11173 },
  { lower := 11343, upper := 11498, witness := RowWitness.topPrime 11329 },
  { lower := 11499, upper := 11666, witness := RowWitness.topPrime 11497 },
  { lower := 11667, upper := 11826, witness := RowWitness.topPrime 11657 },
  { lower := 11827, upper := 11996, witness := RowWitness.topPrime 11827 },
  { lower := 11997, upper := 12156, witness := RowWitness.topPrime 11987 },
  { lower := 12157, upper := 12326, witness := RowWitness.topPrime 12157 },
  { lower := 12327, upper := 12492, witness := RowWitness.topPrime 12323 },
  { lower := 12493, upper := 12660, witness := RowWitness.topPrime 12491 },
  { lower := 12661, upper := 12828, witness := RowWitness.topPrime 12659 },
  { lower := 12829, upper := 12998, witness := RowWitness.topPrime 12829 },
  { lower := 12999, upper := 13152, witness := RowWitness.topPrime 12983 },
  { lower := 13153, upper := 13320, witness := RowWitness.topPrime 13151 },
  { lower := 13321, upper := 13482, witness := RowWitness.topPrime 13313 },
  { lower := 13483, upper := 13646, witness := RowWitness.topPrime 13477 },
  { lower := 13647, upper := 13802, witness := RowWitness.topPrime 13633 },
  { lower := 13803, upper := 13968, witness := RowWitness.topPrime 13799 },
  { lower := 13969, upper := 14136, witness := RowWitness.topPrime 13967 },
  { lower := 14137, upper := 14276, witness := RowWitness.topPrime 14107 },
  { lower := 14277, upper := 14420, witness := RowWitness.topPrime 14251 },
  { lower := 14421, upper := 14588, witness := RowWitness.topPrime 14419 },
  { lower := 14589, upper := 14732, witness := RowWitness.topPrime 14563 },
  { lower := 14733, upper := 14900, witness := RowWitness.topPrime 14731 },
  { lower := 14901, upper := 15066, witness := RowWitness.topPrime 14897 },
  { lower := 15067, upper := 15230, witness := RowWitness.topPrime 15061 },
  { lower := 15231, upper := 15396, witness := RowWitness.topPrime 15227 },
  { lower := 15397, upper := 15560, witness := RowWitness.topPrime 15391 },
  { lower := 15561, upper := 15728, witness := RowWitness.topPrime 15559 },
  { lower := 15729, upper := 15896, witness := RowWitness.topPrime 15727 },
  { lower := 15897, upper := 16058, witness := RowWitness.topPrime 15889 },
  { lower := 16059, upper := 16226, witness := RowWitness.topPrime 16057 },
  { lower := 16227, upper := 16392, witness := RowWitness.topPrime 16223 },
  { lower := 16393, upper := 16550, witness := RowWitness.topPrime 16381 },
  { lower := 16551, upper := 16716, witness := RowWitness.topPrime 16547 },
  { lower := 16717, upper := 16872, witness := RowWitness.topPrime 16703 },
  { lower := 16873, upper := 17040, witness := RowWitness.topPrime 16871 },
  { lower := 17041, upper := 17210, witness := RowWitness.topPrime 17041 },
  { lower := 17211, upper := 17378, witness := RowWitness.topPrime 17209 },
  { lower := 17379, upper := 17546, witness := RowWitness.topPrime 17377 },
  { lower := 17547, upper := 17708, witness := RowWitness.topPrime 17539 },
  { lower := 17709, upper := 17876, witness := RowWitness.topPrime 17707 },
  { lower := 17877, upper := 18032, witness := RowWitness.topPrime 17863 },
  { lower := 18033, upper := 18182, witness := RowWitness.topPrime 18013 },
  { lower := 18183, upper := 18350, witness := RowWitness.topPrime 18181 },
  { lower := 18351, upper := 18510, witness := RowWitness.topPrime 18341 },
  { lower := 18511, upper := 18672, witness := RowWitness.topPrime 18503 },
  { lower := 18673, upper := 18840, witness := RowWitness.topPrime 18671 },
  { lower := 18841, upper := 19008, witness := RowWitness.topPrime 18839 },
  { lower := 19009, upper := 19178, witness := RowWitness.topPrime 19009 },
  { lower := 19179, upper := 19332, witness := RowWitness.topPrime 19163 },
  { lower := 19333, upper := 19502, witness := RowWitness.topPrime 19333 },
  { lower := 19503, upper := 19670, witness := RowWitness.topPrime 19501 },
  { lower := 19671, upper := 19830, witness := RowWitness.topPrime 19661 },
  { lower := 19831, upper := 19988, witness := RowWitness.topPrime 19819 },
  { lower := 19989, upper := 20148, witness := RowWitness.topPrime 19979 },
  { lower := 20149, upper := 20318, witness := RowWitness.topPrime 20149 },
  { lower := 20319, upper := 20466, witness := RowWitness.topPrime 20297 },
  { lower := 20467, upper := 20612, witness := RowWitness.topPrime 20443 },
  { lower := 20613, upper := 20780, witness := RowWitness.topPrime 20611 },
  { lower := 20781, upper := 20942, witness := RowWitness.topPrime 20773 },
  { lower := 20943, upper := 21108, witness := RowWitness.topPrime 20939 },
  { lower := 21109, upper := 21276, witness := RowWitness.topPrime 21107 },
  { lower := 21277, upper := 21446, witness := RowWitness.topPrime 21277 },
  { lower := 21447, upper := 21602, witness := RowWitness.topPrime 21433 },
  { lower := 21603, upper := 21770, witness := RowWitness.topPrime 21601 },
  { lower := 21771, upper := 21936, witness := RowWitness.topPrime 21767 },
  { lower := 21937, upper := 22106, witness := RowWitness.topPrime 21937 },
  { lower := 22107, upper := 22262, witness := RowWitness.topPrime 22093 },
  { lower := 22263, upper := 22428, witness := RowWitness.topPrime 22259 },
  { lower := 22429, upper := 22578, witness := RowWitness.topPrime 22409 },
  { lower := 22579, upper := 22742, witness := RowWitness.topPrime 22573 },
  { lower := 22743, upper := 22910, witness := RowWitness.topPrime 22741 },
  { lower := 22911, upper := 23076, witness := RowWitness.topPrime 22907 },
  { lower := 23077, upper := 23240, witness := RowWitness.topPrime 23071 },
  { lower := 23241, upper := 23396, witness := RowWitness.topPrime 23227 },
  { lower := 23397, upper := 23540, witness := RowWitness.topPrime 23371 },
  { lower := 23541, upper := 23708, witness := RowWitness.topPrime 23539 },
  { lower := 23709, upper := 23858, witness := RowWitness.topPrime 23689 },
  { lower := 23859, upper := 24026, witness := RowWitness.topPrime 23857 },
  { lower := 24027, upper := 24192, witness := RowWitness.topPrime 24023 },
  { lower := 24193, upper := 24350, witness := RowWitness.topPrime 24181 },
  { lower := 24351, upper := 24506, witness := RowWitness.topPrime 24337 },
  { lower := 24507, upper := 24668, witness := RowWitness.topPrime 24499 },
  { lower := 24669, upper := 24828, witness := RowWitness.topPrime 24659 },
  { lower := 24829, upper := 24990, witness := RowWitness.topPrime 24821 },
  { lower := 24991, upper := 25158, witness := RowWitness.topPrime 24989 },
  { lower := 25159, upper := 25322, witness := RowWitness.topPrime 25153 },
  { lower := 25323, upper := 25490, witness := RowWitness.topPrime 25321 },
  { lower := 25491, upper := 25640, witness := RowWitness.topPrime 25471 },
  { lower := 25641, upper := 25808, witness := RowWitness.topPrime 25639 },
  { lower := 25809, upper := 25970, witness := RowWitness.topPrime 25801 },
  { lower := 25971, upper := 26138, witness := RowWitness.topPrime 25969 },
  { lower := 26139, upper := 26288, witness := RowWitness.topPrime 26119 },
  { lower := 26289, upper := 26436, witness := RowWitness.topPrime 26267 },
  { lower := 26437, upper := 26606, witness := RowWitness.topPrime 26437 },
  { lower := 26607, upper := 26766, witness := RowWitness.topPrime 26597 },
  { lower := 26767, upper := 26928, witness := RowWitness.topPrime 26759 },
  { lower := 26929, upper := 27096, witness := RowWitness.topPrime 26927 },
  { lower := 27097, upper := 27260, witness := RowWitness.topPrime 27091 },
  { lower := 27261, upper := 27428, witness := RowWitness.topPrime 27259 },
  { lower := 27429, upper := 27596, witness := RowWitness.topPrime 27427 },
  { lower := 27597, upper := 27752, witness := RowWitness.topPrime 27583 },
  { lower := 27753, upper := 27920, witness := RowWitness.topPrime 27751 },
  { lower := 27921, upper := 28088, witness := RowWitness.topPrime 27919 },
  { lower := 28089, upper := 28256, witness := RowWitness.topPrime 28087 },
  { lower := 28257, upper := 28398, witness := RowWitness.topPrime 28229 },
  { lower := 28399, upper := 28562, witness := RowWitness.topPrime 28393 },
  { lower := 28563, upper := 28728, witness := RowWitness.topPrime 28559 },
  { lower := 28729, upper := 28886, witness := RowWitness.topPrime 28729 },
  { lower := 29791, upper := 29937, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30762, witness := RowWitness.topPrime 30593 },
  { lower := 30763, upper := 30787, witness := RowWitness.topPrime 30763 },
  { lower := 30899, upper := 31062, witness := RowWitness.topPrime 30893 },
  { lower := 31063, upper := 31068, witness := RowWitness.topPrime 31063 },
  { lower := 31213, upper := 31362, witness := RowWitness.topPrime 31193 },
  { lower := 31363, upper := 31419, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31498, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31853, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31996, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32937, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33658, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33783, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34488, witness := RowWitness.topPrime 34319 },
  { lower := 34489, upper := 34516, witness := RowWitness.topPrime 34487 },
  { lower := 36517, upper := 36666, witness := RowWitness.topPrime 36497 },
  { lower := 36667, upper := 36670, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37379, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37472, witness := RowWitness.topPrime 37441 },
  { lower := 37538, upper := 37615, witness := RowWitness.topPrime 37537 },
  { lower := 37636, upper := 37707, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38460, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39495, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40497, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41096, witness := RowWitness.topPrime 40927 },
  { lower := 41097, upper := 41100, witness := RowWitness.topPrime 41081 },
  { lower := 45369, upper := 45422, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45965, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47690, witness := RowWitness.topPrime 47521 },
  { lower := 47691, upper := 47693, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48130, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48540, witness := RowWitness.topPrime 48371 },
  { lower := 48541, upper := 48542, witness := RowWitness.topPrime 48541 },
  { lower := 48734, upper := 48902, witness := RowWitness.topPrime 48733 },
  { lower := 48903, upper := 48903, witness := RowWitness.topPrime 48889 },
  { lower := 49298, upper := 49321, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49467, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50579, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51174, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53214, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53307, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55610, witness := RowWitness.topPrime 55441 },
  { lower := 55611, upper := 55616, witness := RowWitness.topPrime 55609 },
  { lower := 56307, upper := 56338, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56476, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57291, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57414, witness := RowWitness.topPrime 57331 },
  { lower := 65610, upper := 65705, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68808, witness := RowWitness.topPrime 68639 },
  { lower := 68809, upper := 68813, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69059, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71456, witness := RowWitness.topPrime 71287 },
  { lower := 71457, upper := 71458, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73171, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73336, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85852, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89542, witness := RowWitness.topPrime 89381 },
  { lower := 96774, upper := 96774, witness := RowWitness.topPrime 96769 },
  { lower := 98415, upper := 98473, witness := RowWitness.topPrime 98411 },
  { lower := 102152, upper := 102179, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103135, witness := RowWitness.topPrime 103007 },
  { lower := 137842, upper := 137950, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149046, witness := RowWitness.topPrime 148949 },
  { lower := 195223, upper := 195281, witness := RowWitness.topPrime 195203 }
]

def row170_layers : List CoverLayer := [
  { lower := 28730, upper := 57460, M := 14 },
  { lower := 57460, upper := 114920, M := 10 },
  { lower := 114920, upper := 229840, M := 8 },
  { lower := 229840, upper := 459680, M := 6 },
  { lower := 459680, upper := 919360, M := 4 },
  { lower := 919360, upper := 1838720, M := 3 },
  { lower := 1838720, upper := 3677440, M := 3 },
  { lower := 3677440, upper := 7354880, M := 2 },
  { lower := 7354880, upper := 10000000, M := 2 }
]

def row170 : FiniteCoverRow := {
  height := row170_height,
  goods := row170_goods,
  layers := row170_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good000_checked :
    goodSegmentCheck 170 56 121
      { lower := 342, upper := 506, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good001_checked :
    goodSegmentCheck 170 56 121
      { lower := 507, upper := 672, witness := RowWitness.topPrime 503 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good002_checked :
    goodSegmentCheck 170 56 121
      { lower := 673, upper := 842, witness := RowWitness.topPrime 673 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good003_checked :
    goodSegmentCheck 170 56 121
      { lower := 843, upper := 1008, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good004_checked :
    goodSegmentCheck 170 56 121
      { lower := 1009, upper := 1178, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good005_checked :
    goodSegmentCheck 170 56 121
      { lower := 1179, upper := 1340, witness := RowWitness.topPrime 1171 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good006_checked :
    goodSegmentCheck 170 56 121
      { lower := 1341, upper := 1496, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good007_checked :
    goodSegmentCheck 170 56 121
      { lower := 1497, upper := 1662, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good008_checked :
    goodSegmentCheck 170 56 121
      { lower := 1663, upper := 1832, witness := RowWitness.topPrime 1663 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good009_checked :
    goodSegmentCheck 170 56 121
      { lower := 1833, upper := 2000, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good010_checked :
    goodSegmentCheck 170 56 121
      { lower := 2001, upper := 2168, witness := RowWitness.topPrime 1999 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good011_checked :
    goodSegmentCheck 170 56 121
      { lower := 2169, upper := 2330, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good012_checked :
    goodSegmentCheck 170 56 121
      { lower := 2331, upper := 2480, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good013_checked :
    goodSegmentCheck 170 56 121
      { lower := 2481, upper := 2646, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good014_checked :
    goodSegmentCheck 170 56 121
      { lower := 2647, upper := 2816, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good015_checked :
    goodSegmentCheck 170 56 121
      { lower := 2817, upper := 2972, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good016_checked :
    goodSegmentCheck 170 56 121
      { lower := 2973, upper := 3140, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good017_checked :
    goodSegmentCheck 170 56 121
      { lower := 3141, upper := 3306, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good018_checked :
    goodSegmentCheck 170 56 121
      { lower := 3307, upper := 3476, witness := RowWitness.topPrime 3307 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good019_checked :
    goodSegmentCheck 170 56 121
      { lower := 3477, upper := 3638, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good020_checked :
    goodSegmentCheck 170 56 121
      { lower := 3639, upper := 3806, witness := RowWitness.topPrime 3637 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good021_checked :
    goodSegmentCheck 170 56 121
      { lower := 3807, upper := 3972, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good022_checked :
    goodSegmentCheck 170 56 121
      { lower := 3973, upper := 4136, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good023_checked :
    goodSegmentCheck 170 56 121
      { lower := 4137, upper := 4302, witness := RowWitness.topPrime 4133 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good024_checked :
    goodSegmentCheck 170 56 121
      { lower := 4303, upper := 4466, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good025_checked :
    goodSegmentCheck 170 56 121
      { lower := 4467, upper := 4632, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good026_checked :
    goodSegmentCheck 170 56 121
      { lower := 4633, upper := 4790, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good027_checked :
    goodSegmentCheck 170 56 121
      { lower := 4791, upper := 4958, witness := RowWitness.topPrime 4789 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good028_checked :
    goodSegmentCheck 170 56 121
      { lower := 4959, upper := 5126, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good029_checked :
    goodSegmentCheck 170 56 121
      { lower := 5127, upper := 5288, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good030_checked :
    goodSegmentCheck 170 56 121
      { lower := 5289, upper := 5450, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good031_checked :
    goodSegmentCheck 170 56 121
      { lower := 5451, upper := 5618, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good032_checked :
    goodSegmentCheck 170 56 121
      { lower := 5619, upper := 5760, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good033_checked :
    goodSegmentCheck 170 56 121
      { lower := 5761, upper := 5918, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good034_checked :
    goodSegmentCheck 170 56 121
      { lower := 5919, upper := 6072, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good035_checked :
    goodSegmentCheck 170 56 121
      { lower := 6073, upper := 6242, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good036_checked :
    goodSegmentCheck 170 56 121
      { lower := 6243, upper := 6398, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good037_checked :
    goodSegmentCheck 170 56 121
      { lower := 6399, upper := 6566, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good038_checked :
    goodSegmentCheck 170 56 121
      { lower := 6567, upper := 6732, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good039_checked :
    goodSegmentCheck 170 56 121
      { lower := 6733, upper := 6902, witness := RowWitness.topPrime 6733 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good040_checked :
    goodSegmentCheck 170 56 121
      { lower := 6903, upper := 7068, witness := RowWitness.topPrime 6899 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good041_checked :
    goodSegmentCheck 170 56 121
      { lower := 7069, upper := 7238, witness := RowWitness.topPrime 7069 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good042_checked :
    goodSegmentCheck 170 56 121
      { lower := 7239, upper := 7406, witness := RowWitness.topPrime 7237 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good043_checked :
    goodSegmentCheck 170 56 121
      { lower := 7407, upper := 7562, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good044_checked :
    goodSegmentCheck 170 56 121
      { lower := 7563, upper := 7730, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good045_checked :
    goodSegmentCheck 170 56 121
      { lower := 7731, upper := 7896, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good046_checked :
    goodSegmentCheck 170 56 121
      { lower := 7897, upper := 8052, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good047_checked :
    goodSegmentCheck 170 56 121
      { lower := 8053, upper := 8222, witness := RowWitness.topPrime 8053 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good048_checked :
    goodSegmentCheck 170 56 121
      { lower := 8223, upper := 8390, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good049_checked :
    goodSegmentCheck 170 56 121
      { lower := 8391, upper := 8558, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good050_checked :
    goodSegmentCheck 170 56 121
      { lower := 8559, upper := 8712, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good051_checked :
    goodSegmentCheck 170 56 121
      { lower := 8713, upper := 8882, witness := RowWitness.topPrime 8713 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good052_checked :
    goodSegmentCheck 170 56 121
      { lower := 8883, upper := 9036, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good053_checked :
    goodSegmentCheck 170 56 121
      { lower := 9037, upper := 9198, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good054_checked :
    goodSegmentCheck 170 56 121
      { lower := 9199, upper := 9368, witness := RowWitness.topPrime 9199 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good055_checked :
    goodSegmentCheck 170 56 121
      { lower := 9369, upper := 9518, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good056_checked :
    goodSegmentCheck 170 56 121
      { lower := 9519, upper := 9680, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good057_checked :
    goodSegmentCheck 170 56 121
      { lower := 9681, upper := 9848, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good058_checked :
    goodSegmentCheck 170 56 121
      { lower := 9849, upper := 10008, witness := RowWitness.topPrime 9839 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good059_checked :
    goodSegmentCheck 170 56 121
      { lower := 10009, upper := 10178, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good060_checked :
    goodSegmentCheck 170 56 121
      { lower := 10179, upper := 10346, witness := RowWitness.topPrime 10177 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good061_checked :
    goodSegmentCheck 170 56 121
      { lower := 10347, upper := 10512, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good062_checked :
    goodSegmentCheck 170 56 121
      { lower := 10513, upper := 10682, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good063_checked :
    goodSegmentCheck 170 56 121
      { lower := 10683, upper := 10836, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good064_checked :
    goodSegmentCheck 170 56 121
      { lower := 10837, upper := 11006, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good065_checked :
    goodSegmentCheck 170 56 121
      { lower := 11007, upper := 11172, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good066_checked :
    goodSegmentCheck 170 56 121
      { lower := 11173, upper := 11342, witness := RowWitness.topPrime 11173 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good067_checked :
    goodSegmentCheck 170 56 121
      { lower := 11343, upper := 11498, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good068_checked :
    goodSegmentCheck 170 56 121
      { lower := 11499, upper := 11666, witness := RowWitness.topPrime 11497 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good069_checked :
    goodSegmentCheck 170 56 121
      { lower := 11667, upper := 11826, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good070_checked :
    goodSegmentCheck 170 56 121
      { lower := 11827, upper := 11996, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good071_checked :
    goodSegmentCheck 170 56 121
      { lower := 11997, upper := 12156, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good072_checked :
    goodSegmentCheck 170 56 121
      { lower := 12157, upper := 12326, witness := RowWitness.topPrime 12157 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good073_checked :
    goodSegmentCheck 170 56 121
      { lower := 12327, upper := 12492, witness := RowWitness.topPrime 12323 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good074_checked :
    goodSegmentCheck 170 56 121
      { lower := 12493, upper := 12660, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good075_checked :
    goodSegmentCheck 170 56 121
      { lower := 12661, upper := 12828, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good076_checked :
    goodSegmentCheck 170 56 121
      { lower := 12829, upper := 12998, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good077_checked :
    goodSegmentCheck 170 56 121
      { lower := 12999, upper := 13152, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good078_checked :
    goodSegmentCheck 170 56 121
      { lower := 13153, upper := 13320, witness := RowWitness.topPrime 13151 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good079_checked :
    goodSegmentCheck 170 56 121
      { lower := 13321, upper := 13482, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good080_checked :
    goodSegmentCheck 170 56 121
      { lower := 13483, upper := 13646, witness := RowWitness.topPrime 13477 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good081_checked :
    goodSegmentCheck 170 56 121
      { lower := 13647, upper := 13802, witness := RowWitness.topPrime 13633 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good082_checked :
    goodSegmentCheck 170 56 121
      { lower := 13803, upper := 13968, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good083_checked :
    goodSegmentCheck 170 56 121
      { lower := 13969, upper := 14136, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good084_checked :
    goodSegmentCheck 170 56 121
      { lower := 14137, upper := 14276, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good085_checked :
    goodSegmentCheck 170 56 121
      { lower := 14277, upper := 14420, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good086_checked :
    goodSegmentCheck 170 56 121
      { lower := 14421, upper := 14588, witness := RowWitness.topPrime 14419 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good087_checked :
    goodSegmentCheck 170 56 121
      { lower := 14589, upper := 14732, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good088_checked :
    goodSegmentCheck 170 56 121
      { lower := 14733, upper := 14900, witness := RowWitness.topPrime 14731 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good089_checked :
    goodSegmentCheck 170 56 121
      { lower := 14901, upper := 15066, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good090_checked :
    goodSegmentCheck 170 56 121
      { lower := 15067, upper := 15230, witness := RowWitness.topPrime 15061 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good091_checked :
    goodSegmentCheck 170 56 121
      { lower := 15231, upper := 15396, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good092_checked :
    goodSegmentCheck 170 56 121
      { lower := 15397, upper := 15560, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good093_checked :
    goodSegmentCheck 170 56 121
      { lower := 15561, upper := 15728, witness := RowWitness.topPrime 15559 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good094_checked :
    goodSegmentCheck 170 56 121
      { lower := 15729, upper := 15896, witness := RowWitness.topPrime 15727 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good095_checked :
    goodSegmentCheck 170 56 121
      { lower := 15897, upper := 16058, witness := RowWitness.topPrime 15889 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good096_checked :
    goodSegmentCheck 170 56 121
      { lower := 16059, upper := 16226, witness := RowWitness.topPrime 16057 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good097_checked :
    goodSegmentCheck 170 56 121
      { lower := 16227, upper := 16392, witness := RowWitness.topPrime 16223 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good098_checked :
    goodSegmentCheck 170 56 121
      { lower := 16393, upper := 16550, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good099_checked :
    goodSegmentCheck 170 56 121
      { lower := 16551, upper := 16716, witness := RowWitness.topPrime 16547 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good100_checked :
    goodSegmentCheck 170 56 121
      { lower := 16717, upper := 16872, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good101_checked :
    goodSegmentCheck 170 56 121
      { lower := 16873, upper := 17040, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good102_checked :
    goodSegmentCheck 170 56 121
      { lower := 17041, upper := 17210, witness := RowWitness.topPrime 17041 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good103_checked :
    goodSegmentCheck 170 56 121
      { lower := 17211, upper := 17378, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good104_checked :
    goodSegmentCheck 170 56 121
      { lower := 17379, upper := 17546, witness := RowWitness.topPrime 17377 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good105_checked :
    goodSegmentCheck 170 56 121
      { lower := 17547, upper := 17708, witness := RowWitness.topPrime 17539 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good106_checked :
    goodSegmentCheck 170 56 121
      { lower := 17709, upper := 17876, witness := RowWitness.topPrime 17707 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good107_checked :
    goodSegmentCheck 170 56 121
      { lower := 17877, upper := 18032, witness := RowWitness.topPrime 17863 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good108_checked :
    goodSegmentCheck 170 56 121
      { lower := 18033, upper := 18182, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good109_checked :
    goodSegmentCheck 170 56 121
      { lower := 18183, upper := 18350, witness := RowWitness.topPrime 18181 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good110_checked :
    goodSegmentCheck 170 56 121
      { lower := 18351, upper := 18510, witness := RowWitness.topPrime 18341 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good111_checked :
    goodSegmentCheck 170 56 121
      { lower := 18511, upper := 18672, witness := RowWitness.topPrime 18503 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good112_checked :
    goodSegmentCheck 170 56 121
      { lower := 18673, upper := 18840, witness := RowWitness.topPrime 18671 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good113_checked :
    goodSegmentCheck 170 56 121
      { lower := 18841, upper := 19008, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good114_checked :
    goodSegmentCheck 170 56 121
      { lower := 19009, upper := 19178, witness := RowWitness.topPrime 19009 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good115_checked :
    goodSegmentCheck 170 56 121
      { lower := 19179, upper := 19332, witness := RowWitness.topPrime 19163 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good116_checked :
    goodSegmentCheck 170 56 121
      { lower := 19333, upper := 19502, witness := RowWitness.topPrime 19333 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good117_checked :
    goodSegmentCheck 170 56 121
      { lower := 19503, upper := 19670, witness := RowWitness.topPrime 19501 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good118_checked :
    goodSegmentCheck 170 56 121
      { lower := 19671, upper := 19830, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good119_checked :
    goodSegmentCheck 170 56 121
      { lower := 19831, upper := 19988, witness := RowWitness.topPrime 19819 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good120_checked :
    goodSegmentCheck 170 56 121
      { lower := 19989, upper := 20148, witness := RowWitness.topPrime 19979 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good121_checked :
    goodSegmentCheck 170 56 121
      { lower := 20149, upper := 20318, witness := RowWitness.topPrime 20149 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good122_checked :
    goodSegmentCheck 170 56 121
      { lower := 20319, upper := 20466, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good123_checked :
    goodSegmentCheck 170 56 121
      { lower := 20467, upper := 20612, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good124_checked :
    goodSegmentCheck 170 56 121
      { lower := 20613, upper := 20780, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good125_checked :
    goodSegmentCheck 170 56 121
      { lower := 20781, upper := 20942, witness := RowWitness.topPrime 20773 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good126_checked :
    goodSegmentCheck 170 56 121
      { lower := 20943, upper := 21108, witness := RowWitness.topPrime 20939 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good127_checked :
    goodSegmentCheck 170 56 121
      { lower := 21109, upper := 21276, witness := RowWitness.topPrime 21107 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good128_checked :
    goodSegmentCheck 170 56 121
      { lower := 21277, upper := 21446, witness := RowWitness.topPrime 21277 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good129_checked :
    goodSegmentCheck 170 56 121
      { lower := 21447, upper := 21602, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good130_checked :
    goodSegmentCheck 170 56 121
      { lower := 21603, upper := 21770, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good131_checked :
    goodSegmentCheck 170 56 121
      { lower := 21771, upper := 21936, witness := RowWitness.topPrime 21767 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good132_checked :
    goodSegmentCheck 170 56 121
      { lower := 21937, upper := 22106, witness := RowWitness.topPrime 21937 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good133_checked :
    goodSegmentCheck 170 56 121
      { lower := 22107, upper := 22262, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good134_checked :
    goodSegmentCheck 170 56 121
      { lower := 22263, upper := 22428, witness := RowWitness.topPrime 22259 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good135_checked :
    goodSegmentCheck 170 56 121
      { lower := 22429, upper := 22578, witness := RowWitness.topPrime 22409 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good136_checked :
    goodSegmentCheck 170 56 121
      { lower := 22579, upper := 22742, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good137_checked :
    goodSegmentCheck 170 56 121
      { lower := 22743, upper := 22910, witness := RowWitness.topPrime 22741 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good138_checked :
    goodSegmentCheck 170 56 121
      { lower := 22911, upper := 23076, witness := RowWitness.topPrime 22907 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good139_checked :
    goodSegmentCheck 170 56 121
      { lower := 23077, upper := 23240, witness := RowWitness.topPrime 23071 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good140_checked :
    goodSegmentCheck 170 56 121
      { lower := 23241, upper := 23396, witness := RowWitness.topPrime 23227 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good141_checked :
    goodSegmentCheck 170 56 121
      { lower := 23397, upper := 23540, witness := RowWitness.topPrime 23371 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good142_checked :
    goodSegmentCheck 170 56 121
      { lower := 23541, upper := 23708, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good143_checked :
    goodSegmentCheck 170 56 121
      { lower := 23709, upper := 23858, witness := RowWitness.topPrime 23689 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good144_checked :
    goodSegmentCheck 170 56 121
      { lower := 23859, upper := 24026, witness := RowWitness.topPrime 23857 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good145_checked :
    goodSegmentCheck 170 56 121
      { lower := 24027, upper := 24192, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good146_checked :
    goodSegmentCheck 170 56 121
      { lower := 24193, upper := 24350, witness := RowWitness.topPrime 24181 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good147_checked :
    goodSegmentCheck 170 56 121
      { lower := 24351, upper := 24506, witness := RowWitness.topPrime 24337 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good148_checked :
    goodSegmentCheck 170 56 121
      { lower := 24507, upper := 24668, witness := RowWitness.topPrime 24499 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good149_checked :
    goodSegmentCheck 170 56 121
      { lower := 24669, upper := 24828, witness := RowWitness.topPrime 24659 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good150_checked :
    goodSegmentCheck 170 56 121
      { lower := 24829, upper := 24990, witness := RowWitness.topPrime 24821 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good151_checked :
    goodSegmentCheck 170 56 121
      { lower := 24991, upper := 25158, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good152_checked :
    goodSegmentCheck 170 56 121
      { lower := 25159, upper := 25322, witness := RowWitness.topPrime 25153 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good153_checked :
    goodSegmentCheck 170 56 121
      { lower := 25323, upper := 25490, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good154_checked :
    goodSegmentCheck 170 56 121
      { lower := 25491, upper := 25640, witness := RowWitness.topPrime 25471 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good155_checked :
    goodSegmentCheck 170 56 121
      { lower := 25641, upper := 25808, witness := RowWitness.topPrime 25639 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good156_checked :
    goodSegmentCheck 170 56 121
      { lower := 25809, upper := 25970, witness := RowWitness.topPrime 25801 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good157_checked :
    goodSegmentCheck 170 56 121
      { lower := 25971, upper := 26138, witness := RowWitness.topPrime 25969 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good158_checked :
    goodSegmentCheck 170 56 121
      { lower := 26139, upper := 26288, witness := RowWitness.topPrime 26119 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good159_checked :
    goodSegmentCheck 170 56 121
      { lower := 26289, upper := 26436, witness := RowWitness.topPrime 26267 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good160_checked :
    goodSegmentCheck 170 56 121
      { lower := 26437, upper := 26606, witness := RowWitness.topPrime 26437 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good161_checked :
    goodSegmentCheck 170 56 121
      { lower := 26607, upper := 26766, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good162_checked :
    goodSegmentCheck 170 56 121
      { lower := 26767, upper := 26928, witness := RowWitness.topPrime 26759 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good163_checked :
    goodSegmentCheck 170 56 121
      { lower := 26929, upper := 27096, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good164_checked :
    goodSegmentCheck 170 56 121
      { lower := 27097, upper := 27260, witness := RowWitness.topPrime 27091 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good165_checked :
    goodSegmentCheck 170 56 121
      { lower := 27261, upper := 27428, witness := RowWitness.topPrime 27259 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good166_checked :
    goodSegmentCheck 170 56 121
      { lower := 27429, upper := 27596, witness := RowWitness.topPrime 27427 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good167_checked :
    goodSegmentCheck 170 56 121
      { lower := 27597, upper := 27752, witness := RowWitness.topPrime 27583 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good168_checked :
    goodSegmentCheck 170 56 121
      { lower := 27753, upper := 27920, witness := RowWitness.topPrime 27751 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good169_checked :
    goodSegmentCheck 170 56 121
      { lower := 27921, upper := 28088, witness := RowWitness.topPrime 27919 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good170_checked :
    goodSegmentCheck 170 56 121
      { lower := 28089, upper := 28256, witness := RowWitness.topPrime 28087 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good171_checked :
    goodSegmentCheck 170 56 121
      { lower := 28257, upper := 28398, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good172_checked :
    goodSegmentCheck 170 56 121
      { lower := 28399, upper := 28562, witness := RowWitness.topPrime 28393 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good173_checked :
    goodSegmentCheck 170 56 121
      { lower := 28563, upper := 28728, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good174_checked :
    goodSegmentCheck 170 56 121
      { lower := 28729, upper := 28886, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good175_checked :
    goodSegmentCheck 170 56 121
      { lower := 29791, upper := 29937, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good176_checked :
    goodSegmentCheck 170 56 121
      { lower := 30618, upper := 30762, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good177_checked :
    goodSegmentCheck 170 56 121
      { lower := 30763, upper := 30787, witness := RowWitness.topPrime 30763 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good178_checked :
    goodSegmentCheck 170 56 121
      { lower := 30899, upper := 31062, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good179_checked :
    goodSegmentCheck 170 56 121
      { lower := 31063, upper := 31068, witness := RowWitness.topPrime 31063 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good180_checked :
    goodSegmentCheck 170 56 121
      { lower := 31213, upper := 31362, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good181_checked :
    goodSegmentCheck 170 56 121
      { lower := 31363, upper := 31419, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good182_checked :
    goodSegmentCheck 170 56 121
      { lower := 31423, upper := 31498, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good183_checked :
    goodSegmentCheck 170 56 121
      { lower := 31827, upper := 31853, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good184_checked :
    goodSegmentCheck 170 56 121
      { lower := 31974, upper := 31996, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good185_checked :
    goodSegmentCheck 170 56 121
      { lower := 32805, upper := 32937, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good186_checked :
    goodSegmentCheck 170 56 121
      { lower := 33614, upper := 33658, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good187_checked :
    goodSegmentCheck 170 56 121
      { lower := 33708, upper := 33783, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good188_checked :
    goodSegmentCheck 170 56 121
      { lower := 34322, upper := 34488, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good189_checked :
    goodSegmentCheck 170 56 121
      { lower := 34489, upper := 34516, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good190_checked :
    goodSegmentCheck 170 56 121
      { lower := 36517, upper := 36666, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good191_checked :
    goodSegmentCheck 170 56 121
      { lower := 36667, upper := 36670, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good192_checked :
    goodSegmentCheck 170 56 121
      { lower := 37303, upper := 37379, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good193_checked :
    goodSegmentCheck 170 56 121
      { lower := 37446, upper := 37472, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good194_checked :
    goodSegmentCheck 170 56 121
      { lower := 37538, upper := 37615, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good195_checked :
    goodSegmentCheck 170 56 121
      { lower := 37636, upper := 37707, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good196_checked :
    goodSegmentCheck 170 56 121
      { lower := 38307, upper := 38460, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good197_checked :
    goodSegmentCheck 170 56 121
      { lower := 39366, upper := 39495, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good198_checked :
    goodSegmentCheck 170 56 121
      { lower := 40401, upper := 40497, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good199_checked :
    goodSegmentCheck 170 56 121
      { lower := 40931, upper := 41096, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good200_checked :
    goodSegmentCheck 170 56 121
      { lower := 41097, upper := 41100, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good201_checked :
    goodSegmentCheck 170 56 121
      { lower := 45369, upper := 45422, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good202_checked :
    goodSegmentCheck 170 56 121
      { lower := 45927, upper := 45965, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good203_checked :
    goodSegmentCheck 170 56 121
      { lower := 47526, upper := 47690, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good204_checked :
    goodSegmentCheck 170 56 121
      { lower := 47691, upper := 47693, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good205_checked :
    goodSegmentCheck 170 56 121
      { lower := 48013, upper := 48130, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good206_checked :
    goodSegmentCheck 170 56 121
      { lower := 48373, upper := 48540, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good207_checked :
    goodSegmentCheck 170 56 121
      { lower := 48541, upper := 48542, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good208_checked :
    goodSegmentCheck 170 56 121
      { lower := 48734, upper := 48902, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good209_checked :
    goodSegmentCheck 170 56 121
      { lower := 48903, upper := 48903, witness := RowWitness.topPrime 48889 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good210_checked :
    goodSegmentCheck 170 56 121
      { lower := 49298, upper := 49321, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good211_checked :
    goodSegmentCheck 170 56 121
      { lower := 49379, upper := 49467, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good212_checked :
    goodSegmentCheck 170 56 121
      { lower := 50421, upper := 50579, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good213_checked :
    goodSegmentCheck 170 56 121
      { lower := 51076, upper := 51174, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good214_checked :
    goodSegmentCheck 170 56 121
      { lower := 53138, upper := 53214, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good215_checked :
    goodSegmentCheck 170 56 121
      { lower := 53290, upper := 53307, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good216_checked :
    goodSegmentCheck 170 56 121
      { lower := 55451, upper := 55610, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good217_checked :
    goodSegmentCheck 170 56 121
      { lower := 55611, upper := 55616, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good218_checked :
    goodSegmentCheck 170 56 121
      { lower := 56307, upper := 56338, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good219_checked :
    goodSegmentCheck 170 56 121
      { lower := 56454, upper := 56476, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good220_checked :
    goodSegmentCheck 170 56 121
      { lower := 57245, upper := 57291, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good221_checked :
    goodSegmentCheck 170 56 121
      { lower := 57344, upper := 57414, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good222_checked :
    goodSegmentCheck 170 56 121
      { lower := 65610, upper := 65705, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good223_checked :
    goodSegmentCheck 170 56 121
      { lower := 68644, upper := 68808, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_good224_checked :
    goodSegmentCheck 170 56 121
      { lower := 68809, upper := 68813, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good225_checked :
    goodSegmentCheck 170 56 121
      { lower := 68921, upper := 69059, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good226_checked :
    goodSegmentCheck 170 56 121
      { lower := 71289, upper := 71456, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good227_checked :
    goodSegmentCheck 170 56 121
      { lower := 71457, upper := 71458, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good228_checked :
    goodSegmentCheck 170 56 121
      { lower := 73167, upper := 73171, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good229_checked :
    goodSegmentCheck 170 56 121
      { lower := 73205, upper := 73336, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good230_checked :
    goodSegmentCheck 170 56 121
      { lower := 85805, upper := 85852, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good231_checked :
    goodSegmentCheck 170 56 121
      { lower := 89383, upper := 89542, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good232_checked :
    goodSegmentCheck 170 56 121
      { lower := 96774, upper := 96774, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good233_checked :
    goodSegmentCheck 170 56 121
      { lower := 98415, upper := 98473, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good234_checked :
    goodSegmentCheck 170 56 121
      { lower := 102152, upper := 102179, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good235_checked :
    goodSegmentCheck 170 56 121
      { lower := 103041, upper := 103135, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good236_checked :
    goodSegmentCheck 170 56 121
      { lower := 137842, upper := 137950, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good237_checked :
    goodSegmentCheck 170 56 121
      { lower := 148955, upper := 149046, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row170_good238_checked :
    goodSegmentCheck 170 56 121
      { lower := 195223, upper := 195281, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 170) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_good238_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_goods_checked :
    row170.goods.all (goodSegmentCheck row170.height.i row170.height.r row170.height.s) = true := by
  change row170_goods.all (goodSegmentCheck 170 56 121) = true
  simp only [row170_goods, List.all_cons, List.all_nil,
    row170_good000_checked,
    row170_good001_checked,
    row170_good002_checked,
    row170_good003_checked,
    row170_good004_checked,
    row170_good005_checked,
    row170_good006_checked,
    row170_good007_checked,
    row170_good008_checked,
    row170_good009_checked,
    row170_good010_checked,
    row170_good011_checked,
    row170_good012_checked,
    row170_good013_checked,
    row170_good014_checked,
    row170_good015_checked,
    row170_good016_checked,
    row170_good017_checked,
    row170_good018_checked,
    row170_good019_checked,
    row170_good020_checked,
    row170_good021_checked,
    row170_good022_checked,
    row170_good023_checked,
    row170_good024_checked,
    row170_good025_checked,
    row170_good026_checked,
    row170_good027_checked,
    row170_good028_checked,
    row170_good029_checked,
    row170_good030_checked,
    row170_good031_checked,
    row170_good032_checked,
    row170_good033_checked,
    row170_good034_checked,
    row170_good035_checked,
    row170_good036_checked,
    row170_good037_checked,
    row170_good038_checked,
    row170_good039_checked,
    row170_good040_checked,
    row170_good041_checked,
    row170_good042_checked,
    row170_good043_checked,
    row170_good044_checked,
    row170_good045_checked,
    row170_good046_checked,
    row170_good047_checked,
    row170_good048_checked,
    row170_good049_checked,
    row170_good050_checked,
    row170_good051_checked,
    row170_good052_checked,
    row170_good053_checked,
    row170_good054_checked,
    row170_good055_checked,
    row170_good056_checked,
    row170_good057_checked,
    row170_good058_checked,
    row170_good059_checked,
    row170_good060_checked,
    row170_good061_checked,
    row170_good062_checked,
    row170_good063_checked,
    row170_good064_checked,
    row170_good065_checked,
    row170_good066_checked,
    row170_good067_checked,
    row170_good068_checked,
    row170_good069_checked,
    row170_good070_checked,
    row170_good071_checked,
    row170_good072_checked,
    row170_good073_checked,
    row170_good074_checked,
    row170_good075_checked,
    row170_good076_checked,
    row170_good077_checked,
    row170_good078_checked,
    row170_good079_checked,
    row170_good080_checked,
    row170_good081_checked,
    row170_good082_checked,
    row170_good083_checked,
    row170_good084_checked,
    row170_good085_checked,
    row170_good086_checked,
    row170_good087_checked,
    row170_good088_checked,
    row170_good089_checked,
    row170_good090_checked,
    row170_good091_checked,
    row170_good092_checked,
    row170_good093_checked,
    row170_good094_checked,
    row170_good095_checked,
    row170_good096_checked,
    row170_good097_checked,
    row170_good098_checked,
    row170_good099_checked,
    row170_good100_checked,
    row170_good101_checked,
    row170_good102_checked,
    row170_good103_checked,
    row170_good104_checked,
    row170_good105_checked,
    row170_good106_checked,
    row170_good107_checked,
    row170_good108_checked,
    row170_good109_checked,
    row170_good110_checked,
    row170_good111_checked,
    row170_good112_checked,
    row170_good113_checked,
    row170_good114_checked,
    row170_good115_checked,
    row170_good116_checked,
    row170_good117_checked,
    row170_good118_checked,
    row170_good119_checked,
    row170_good120_checked,
    row170_good121_checked,
    row170_good122_checked,
    row170_good123_checked,
    row170_good124_checked,
    row170_good125_checked,
    row170_good126_checked,
    row170_good127_checked,
    row170_good128_checked,
    row170_good129_checked,
    row170_good130_checked,
    row170_good131_checked,
    row170_good132_checked,
    row170_good133_checked,
    row170_good134_checked,
    row170_good135_checked,
    row170_good136_checked,
    row170_good137_checked,
    row170_good138_checked,
    row170_good139_checked,
    row170_good140_checked,
    row170_good141_checked,
    row170_good142_checked,
    row170_good143_checked,
    row170_good144_checked,
    row170_good145_checked,
    row170_good146_checked,
    row170_good147_checked,
    row170_good148_checked,
    row170_good149_checked,
    row170_good150_checked,
    row170_good151_checked,
    row170_good152_checked,
    row170_good153_checked,
    row170_good154_checked,
    row170_good155_checked,
    row170_good156_checked,
    row170_good157_checked,
    row170_good158_checked,
    row170_good159_checked,
    row170_good160_checked,
    row170_good161_checked,
    row170_good162_checked,
    row170_good163_checked,
    row170_good164_checked,
    row170_good165_checked,
    row170_good166_checked,
    row170_good167_checked,
    row170_good168_checked,
    row170_good169_checked,
    row170_good170_checked,
    row170_good171_checked,
    row170_good172_checked,
    row170_good173_checked,
    row170_good174_checked,
    row170_good175_checked,
    row170_good176_checked,
    row170_good177_checked,
    row170_good178_checked,
    row170_good179_checked,
    row170_good180_checked,
    row170_good181_checked,
    row170_good182_checked,
    row170_good183_checked,
    row170_good184_checked,
    row170_good185_checked,
    row170_good186_checked,
    row170_good187_checked,
    row170_good188_checked,
    row170_good189_checked,
    row170_good190_checked,
    row170_good191_checked,
    row170_good192_checked,
    row170_good193_checked,
    row170_good194_checked,
    row170_good195_checked,
    row170_good196_checked,
    row170_good197_checked,
    row170_good198_checked,
    row170_good199_checked,
    row170_good200_checked,
    row170_good201_checked,
    row170_good202_checked,
    row170_good203_checked,
    row170_good204_checked,
    row170_good205_checked,
    row170_good206_checked,
    row170_good207_checked,
    row170_good208_checked,
    row170_good209_checked,
    row170_good210_checked,
    row170_good211_checked,
    row170_good212_checked,
    row170_good213_checked,
    row170_good214_checked,
    row170_good215_checked,
    row170_good216_checked,
    row170_good217_checked,
    row170_good218_checked,
    row170_good219_checked,
    row170_good220_checked,
    row170_good221_checked,
    row170_good222_checked,
    row170_good223_checked,
    row170_good224_checked,
    row170_good225_checked,
    row170_good226_checked,
    row170_good227_checked,
    row170_good228_checked,
    row170_good229_checked,
    row170_good230_checked,
    row170_good231_checked,
    row170_good232_checked,
    row170_good233_checked,
    row170_good234_checked,
    row170_good235_checked,
    row170_good236_checked,
    row170_good237_checked,
    row170_good238_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_registered :
    decide (row170.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row170_small_checked :
    coverCheck (2 * row170.height.i + 2) (row170.height.i * (row170.height.i - 1) - 1)
      (row170.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row170_layerCover_checked :
    coverCheck (row170.height.i * (row170.height.i - 1)) (row170.height.n0 - 1)
      (row170.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row170_bounds : List NatInterval :=
  [(342, 506), (507, 672), (673, 842), (843, 1008), (1009, 1178), (1179, 1340), (1341, 1496), (1497, 1662), (1663, 1832), (1833, 2000), (2001, 2168), (2169, 2330), (2331, 2480), (2481, 2646), (2647, 2816), (2817, 2972), (2973, 3140), (3141, 3306), (3307, 3476), (3477, 3638), (3639, 3806), (3807, 3972), (3973, 4136), (4137, 4302), (4303, 4466), (4467, 4632), (4633, 4790), (4791, 4958), (4959, 5126), (5127, 5288), (5289, 5450), (5451, 5618), (5619, 5760), (5761, 5918), (5919, 6072), (6073, 6242), (6243, 6398), (6399, 6566), (6567, 6732), (6733, 6902), (6903, 7068), (7069, 7238), (7239, 7406), (7407, 7562), (7563, 7730), (7731, 7896), (7897, 8052), (8053, 8222), (8223, 8390), (8391, 8558), (8559, 8712), (8713, 8882), (8883, 9036), (9037, 9198), (9199, 9368), (9369, 9518), (9519, 9680), (9681, 9848), (9849, 10008), (10009, 10178), (10179, 10346), (10347, 10512), (10513, 10682), (10683, 10836), (10837, 11006), (11007, 11172), (11173, 11342), (11343, 11498), (11499, 11666), (11667, 11826), (11827, 11996), (11997, 12156), (12157, 12326), (12327, 12492), (12493, 12660), (12661, 12828), (12829, 12998), (12999, 13152), (13153, 13320), (13321, 13482), (13483, 13646), (13647, 13802), (13803, 13968), (13969, 14136), (14137, 14276), (14277, 14420), (14421, 14588), (14589, 14732), (14733, 14900), (14901, 15066), (15067, 15230), (15231, 15396), (15397, 15560), (15561, 15728), (15729, 15896), (15897, 16058), (16059, 16226), (16227, 16392), (16393, 16550), (16551, 16716), (16717, 16872), (16873, 17040), (17041, 17210), (17211, 17378), (17379, 17546), (17547, 17708), (17709, 17876), (17877, 18032), (18033, 18182), (18183, 18350), (18351, 18510), (18511, 18672), (18673, 18840), (18841, 19008), (19009, 19178), (19179, 19332), (19333, 19502), (19503, 19670), (19671, 19830), (19831, 19988), (19989, 20148), (20149, 20318), (20319, 20466), (20467, 20612), (20613, 20780), (20781, 20942), (20943, 21108), (21109, 21276), (21277, 21446), (21447, 21602), (21603, 21770), (21771, 21936), (21937, 22106), (22107, 22262), (22263, 22428), (22429, 22578), (22579, 22742), (22743, 22910), (22911, 23076), (23077, 23240), (23241, 23396), (23397, 23540), (23541, 23708), (23709, 23858), (23859, 24026), (24027, 24192), (24193, 24350), (24351, 24506), (24507, 24668), (24669, 24828), (24829, 24990), (24991, 25158), (25159, 25322), (25323, 25490), (25491, 25640), (25641, 25808), (25809, 25970), (25971, 26138), (26139, 26288), (26289, 26436), (26437, 26606), (26607, 26766), (26767, 26928), (26929, 27096), (27097, 27260), (27261, 27428), (27429, 27596), (27597, 27752), (27753, 27920), (27921, 28088), (28089, 28256), (28257, 28398), (28399, 28562), (28563, 28728), (28729, 28886), (29791, 29937), (30618, 30762), (30763, 30787), (30899, 31062), (31063, 31068), (31213, 31362), (31363, 31419), (31423, 31498), (31827, 31853), (31974, 31996), (32805, 32937), (33614, 33658), (33708, 33783), (34322, 34488), (34489, 34516), (36517, 36666), (36667, 36670), (37303, 37379), (37446, 37472), (37538, 37615), (37636, 37707), (38307, 38460), (39366, 39495), (40401, 40497), (40931, 41096), (41097, 41100), (45369, 45422), (45927, 45965), (47526, 47690), (47691, 47693), (48013, 48130), (48373, 48540), (48541, 48542), (48734, 48902), (48903, 48903), (49298, 49321), (49379, 49467), (50421, 50579), (51076, 51174), (53138, 53214), (53290, 53307), (55451, 55610), (55611, 55616), (56307, 56338), (56454, 56476), (57245, 57291), (57344, 57414), (65610, 65705), (68644, 68808), (68809, 68813), (68921, 69059), (71289, 71456), (71457, 71458), (73167, 73171), (73205, 73336), (85805, 85852), (89383, 89542), (96774, 96774), (98415, 98473), (102152, 102179), (103041, 103135), (137842, 137950), (148955, 149046), (195223, 195281)]

theorem row170_bounds_eq : row170.goods.map goodSegmentBounds = row170_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row170_layer000_intervals : List ColouredInterval :=
  [(2, 28730, 28841), (2, 32768, 32937), (2, 40960, 41129), (2, 49152, 49321), (2, 57344, 57459), (2, 32768, 32937), (2, 49152, 49321), (2, 32768, 32937), (3, 30618, 30787), (3, 32805, 32974), (3, 39366, 39535), (3, 45927, 46096), (3, 52488, 52657), (3, 39366, 39535), (5, 31250, 31419), (7, 28812, 28981), (7, 31213, 31382), (7, 33614, 33783), (7, 33614, 33783), (7, 50421, 50590), (11, 29282, 29451), (11, 43923, 44092), (13, 28730, 28730), (13, 30758, 30927), (13, 28730, 28730), (13, 57122, 57291), (19, 34295, 34464), (19, 41154, 41323), (19, 48013, 48182), (19, 54872, 55041), (23, 36501, 36670), (23, 48668, 48837), (29, 48778, 48947), (31, 29791, 29960), (37, 50653, 50822), (47, 28730, 28886), (47, 30926, 31095), (53, 30899, 31068), (53, 33708, 33877), (53, 36517, 36686), (53, 39326, 39495), (59, 31329, 31498), (59, 34810, 34979), (59, 38291, 38460), (59, 41772, 41941), (59, 45253, 45422), (59, 48734, 48903), (61, 29768, 29937), (61, 33489, 33658), (61, 37210, 37379), (61, 40931, 41100), (61, 44652, 44821), (61, 48373, 48542), (61, 52094, 52263), (67, 31423, 31592), (67, 35912, 36081), (67, 40401, 40570), (67, 44890, 45059), (67, 49379, 49548), (67, 53868, 54037), (71, 30246, 30415), (71, 35287, 35456), (71, 40328, 40497), (71, 45369, 45538), (71, 50410, 50579), (71, 55451, 55620), (73, 31974, 32143), (73, 37303, 37472), (73, 42632, 42801), (73, 47961, 48130), (73, 53290, 53459), (79, 31205, 31374), (79, 37446, 37615), (79, 43687, 43856), (79, 49928, 50097), (79, 56169, 56338), (83, 34445, 34614), (83, 41334, 41503), (83, 48223, 48392), (83, 55112, 55281), (89, 31684, 31853), (89, 39605, 39774), (89, 47526, 47695), (89, 55447, 55616), (97, 37636, 37805), (97, 47045, 47214), (97, 56454, 56623), (101, 30603, 30772), (101, 40804, 40973), (101, 51005, 51174), (103, 31827, 31996), (103, 42436, 42605), (103, 53045, 53214), (107, 34347, 34516), (107, 45796, 45965), (107, 57245, 57414), (109, 35643, 35812), (109, 47524, 47693), (113, 38307, 38476), (113, 51076, 51245), (127, 32258, 32427), (127, 48387, 48556), (131, 34322, 34491), (131, 51483, 51652), (137, 37538, 37707), (137, 56307, 56476), (139, 38642, 38811), (149, 44402, 44571), (151, 45602, 45771), (157, 49298, 49467), (163, 53138, 53307), (167, 55778, 55947)]

def row170_layer000_block000 : List ColouredInterval :=
  [(2, 28730, 28841), (2, 32768, 32937), (2, 40960, 41129), (2, 49152, 49321), (2, 57344, 57459), (2, 32768, 32937), (2, 49152, 49321), (2, 32768, 32937), (3, 30618, 30787), (3, 32805, 32974), (3, 39366, 39535), (3, 45927, 46096), (3, 52488, 52657), (3, 39366, 39535), (5, 31250, 31419), (7, 28812, 28981)]

def row170_layer000_block001 : List ColouredInterval :=
  [(7, 31213, 31382), (7, 33614, 33783), (7, 33614, 33783), (7, 50421, 50590), (11, 29282, 29451), (11, 43923, 44092), (13, 28730, 28730), (13, 30758, 30927), (13, 28730, 28730), (13, 57122, 57291), (19, 34295, 34464), (19, 41154, 41323), (19, 48013, 48182), (19, 54872, 55041), (23, 36501, 36670), (23, 48668, 48837)]

def row170_layer000_block002 : List ColouredInterval :=
  [(29, 48778, 48947), (31, 29791, 29960), (37, 50653, 50822), (47, 28730, 28886), (47, 30926, 31095), (53, 30899, 31068), (53, 33708, 33877), (53, 36517, 36686), (53, 39326, 39495), (59, 31329, 31498), (59, 34810, 34979), (59, 38291, 38460), (59, 41772, 41941), (59, 45253, 45422), (59, 48734, 48903), (61, 29768, 29937)]

def row170_layer000_block003 : List ColouredInterval :=
  [(61, 33489, 33658), (61, 37210, 37379), (61, 40931, 41100), (61, 44652, 44821), (61, 48373, 48542), (61, 52094, 52263), (67, 31423, 31592), (67, 35912, 36081), (67, 40401, 40570), (67, 44890, 45059), (67, 49379, 49548), (67, 53868, 54037), (71, 30246, 30415), (71, 35287, 35456), (71, 40328, 40497), (71, 45369, 45538)]

def row170_layer000_block004 : List ColouredInterval :=
  [(71, 50410, 50579), (71, 55451, 55620), (73, 31974, 32143), (73, 37303, 37472), (73, 42632, 42801), (73, 47961, 48130), (73, 53290, 53459), (79, 31205, 31374), (79, 37446, 37615), (79, 43687, 43856), (79, 49928, 50097), (79, 56169, 56338), (83, 34445, 34614), (83, 41334, 41503), (83, 48223, 48392), (83, 55112, 55281)]

def row170_layer000_block005 : List ColouredInterval :=
  [(89, 31684, 31853), (89, 39605, 39774), (89, 47526, 47695), (89, 55447, 55616), (97, 37636, 37805), (97, 47045, 47214), (97, 56454, 56623), (101, 30603, 30772), (101, 40804, 40973), (101, 51005, 51174), (103, 31827, 31996), (103, 42436, 42605), (103, 53045, 53214), (107, 34347, 34516), (107, 45796, 45965), (107, 57245, 57414)]

def row170_layer000_block006 : List ColouredInterval :=
  [(109, 35643, 35812), (109, 47524, 47693), (113, 38307, 38476), (113, 51076, 51245), (127, 32258, 32427), (127, 48387, 48556), (131, 34322, 34491), (131, 51483, 51652), (137, 37538, 37707), (137, 56307, 56476), (139, 38642, 38811), (149, 44402, 44571), (151, 45602, 45771), (157, 49298, 49467), (163, 53138, 53307), (167, 55778, 55947)]

def row170_layer000_chunks : List (List ColouredInterval) :=
  [row170_layer000_block000, row170_layer000_block001, row170_layer000_block002, row170_layer000_block003, row170_layer000_block004, row170_layer000_block005, row170_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_arithmetic : LayerArithmeticValid row170.height { lower := 28730, upper := 57460, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_enumeration :
    activePowerIntervalList 170 14 28730 57460 = row170_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_pairs000 :
    row170_layer000_block000.all (fun I => row170_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_pairs001 :
    row170_layer000_block001.all (fun I => row170_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_pairs002 :
    row170_layer000_block002.all (fun I => row170_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_pairs003 :
    row170_layer000_block003.all (fun I => row170_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_pairs004 :
    row170_layer000_block004.all (fun I => row170_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_pairs005 :
    row170_layer000_block005.all (fun I => row170_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_pairs006 :
    row170_layer000_block006.all (fun I => row170_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_chunks_eq : row170_layer000_chunks.flatten = row170_layer000_intervals := by
  rfl

theorem row170_layer000_pairs : pairCoverCheck row170_layer000_intervals row170_bounds = true := by
  apply pairCoverCheck_of_chunks row170_layer000_chunks_eq
  intro block hblock
  simp only [row170_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row170_layer000_pairs000
  · exact row170_layer000_pairs001
  · exact row170_layer000_pairs002
  · exact row170_layer000_pairs003
  · exact row170_layer000_pairs004
  · exact row170_layer000_pairs005
  · exact row170_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer000_checked :
    coverLayerCheck row170.height row170.goods { lower := 28730, upper := 57460, M := 14 } = true := by
  exact coverLayerCheck_of_parts row170_layer000_arithmetic row170_layer000_enumeration row170_bounds_eq row170_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row170_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65705), (2, 81920, 82089), (2, 65536, 65705), (2, 98304, 98473), (2, 65536, 65705), (3, 59049, 59218), (3, 65610, 65779), (3, 59049, 59218), (3, 78732, 78901), (3, 98415, 98584), (3, 59049, 59218), (5, 78125, 78294), (7, 67228, 67397), (7, 84035, 84204), (7, 100842, 101011), (11, 58564, 58733), (11, 73205, 73374), (11, 87846, 88015), (11, 102487, 102656), (13, 85683, 85852), (13, 114244, 114413), (19, 61731, 61900), (19, 68590, 68759), (23, 60835, 61004), (23, 73002, 73171), (23, 85169, 85338), (23, 97336, 97505), (23, 109503, 109672), (29, 73167, 73336), (29, 97556, 97725), (31, 59582, 59751), (31, 89373, 89542), (37, 101306, 101475), (41, 68921, 69090), (43, 79507, 79676), (47, 103823, 103992), (79, 62410, 62579), (83, 62001, 62170), (83, 68890, 69059), (89, 63368, 63537), (89, 71289, 71458), (89, 79210, 79379), (97, 65863, 66032), (97, 75272, 75441), (97, 84681, 84850), (97, 94090, 94259), (101, 61206, 61375), (101, 71407, 71576), (101, 81608, 81777), (101, 91809, 91978), (101, 102010, 102179), (103, 63654, 63823), (103, 74263, 74432), (103, 84872, 85041), (103, 95481, 95650), (103, 106090, 106259), (107, 68694, 68863), (107, 80143, 80312), (107, 91592, 91761), (107, 103041, 103210), (107, 114490, 114659), (109, 59405, 59574), (109, 71286, 71455), (109, 83167, 83336), (109, 95048, 95217), (109, 106929, 107098), (113, 63845, 64014), (113, 76614, 76783), (113, 89383, 89552), (113, 102152, 102321), (127, 64516, 64685), (127, 80645, 80814), (127, 96774, 96943), (127, 112903, 113072), (131, 68644, 68813), (131, 85805, 85974), (131, 102966, 103135), (137, 75076, 75245), (137, 93845, 94014), (137, 112614, 112783), (139, 57963, 58132), (139, 77284, 77453), (139, 96605, 96774), (149, 66603, 66772), (149, 88804, 88973), (149, 111005, 111174), (151, 68403, 68572), (151, 91204, 91373), (151, 114005, 114174), (157, 73947, 74116), (157, 98596, 98765), (163, 79707, 79876), (163, 106276, 106445), (167, 83667, 83836), (167, 111556, 111725)]

def row170_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65705), (2, 81920, 82089), (2, 65536, 65705), (2, 98304, 98473), (2, 65536, 65705), (3, 59049, 59218), (3, 65610, 65779), (3, 59049, 59218), (3, 78732, 78901), (3, 98415, 98584), (3, 59049, 59218), (5, 78125, 78294), (7, 67228, 67397), (7, 84035, 84204), (7, 100842, 101011), (11, 58564, 58733)]

def row170_layer001_block001 : List ColouredInterval :=
  [(11, 73205, 73374), (11, 87846, 88015), (11, 102487, 102656), (13, 85683, 85852), (13, 114244, 114413), (19, 61731, 61900), (19, 68590, 68759), (23, 60835, 61004), (23, 73002, 73171), (23, 85169, 85338), (23, 97336, 97505), (23, 109503, 109672), (29, 73167, 73336), (29, 97556, 97725), (31, 59582, 59751), (31, 89373, 89542)]

def row170_layer001_block002 : List ColouredInterval :=
  [(37, 101306, 101475), (41, 68921, 69090), (43, 79507, 79676), (47, 103823, 103992), (79, 62410, 62579), (83, 62001, 62170), (83, 68890, 69059), (89, 63368, 63537), (89, 71289, 71458), (89, 79210, 79379), (97, 65863, 66032), (97, 75272, 75441), (97, 84681, 84850), (97, 94090, 94259), (101, 61206, 61375), (101, 71407, 71576)]

def row170_layer001_block003 : List ColouredInterval :=
  [(101, 81608, 81777), (101, 91809, 91978), (101, 102010, 102179), (103, 63654, 63823), (103, 74263, 74432), (103, 84872, 85041), (103, 95481, 95650), (103, 106090, 106259), (107, 68694, 68863), (107, 80143, 80312), (107, 91592, 91761), (107, 103041, 103210), (107, 114490, 114659), (109, 59405, 59574), (109, 71286, 71455), (109, 83167, 83336)]

def row170_layer001_block004 : List ColouredInterval :=
  [(109, 95048, 95217), (109, 106929, 107098), (113, 63845, 64014), (113, 76614, 76783), (113, 89383, 89552), (113, 102152, 102321), (127, 64516, 64685), (127, 80645, 80814), (127, 96774, 96943), (127, 112903, 113072), (131, 68644, 68813), (131, 85805, 85974), (131, 102966, 103135), (137, 75076, 75245), (137, 93845, 94014), (137, 112614, 112783)]

def row170_layer001_block005 : List ColouredInterval :=
  [(139, 57963, 58132), (139, 77284, 77453), (139, 96605, 96774), (149, 66603, 66772), (149, 88804, 88973), (149, 111005, 111174), (151, 68403, 68572), (151, 91204, 91373), (151, 114005, 114174), (157, 73947, 74116), (157, 98596, 98765), (163, 79707, 79876), (163, 106276, 106445), (167, 83667, 83836), (167, 111556, 111725)]

def row170_layer001_chunks : List (List ColouredInterval) :=
  [row170_layer001_block000, row170_layer001_block001, row170_layer001_block002, row170_layer001_block003, row170_layer001_block004, row170_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_intervals
