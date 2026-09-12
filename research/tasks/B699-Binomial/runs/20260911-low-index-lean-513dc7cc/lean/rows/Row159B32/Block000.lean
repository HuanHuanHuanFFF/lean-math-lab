import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row159_height : HeightCertificateDatum := { i := 159, r := 52, s := 112, n0Power10 := 8 }

def row159_goods : List GoodSegment := [
  { lower := 320, upper := 475, witness := RowWitness.topPrime 317 },
  { lower := 476, upper := 625, witness := RowWitness.topPrime 467 },
  { lower := 626, upper := 777, witness := RowWitness.topPrime 619 },
  { lower := 778, upper := 931, witness := RowWitness.topPrime 773 },
  { lower := 932, upper := 1087, witness := RowWitness.topPrime 929 },
  { lower := 1088, upper := 1245, witness := RowWitness.topPrime 1087 },
  { lower := 1246, upper := 1395, witness := RowWitness.topPrime 1237 },
  { lower := 1396, upper := 1539, witness := RowWitness.topPrime 1381 },
  { lower := 1540, upper := 1689, witness := RowWitness.topPrime 1531 },
  { lower := 1690, upper := 1827, witness := RowWitness.topPrime 1669 },
  { lower := 1828, upper := 1981, witness := RowWitness.topPrime 1823 },
  { lower := 1982, upper := 2137, witness := RowWitness.topPrime 1979 },
  { lower := 2138, upper := 2295, witness := RowWitness.topPrime 2137 },
  { lower := 2296, upper := 2451, witness := RowWitness.topPrime 2293 },
  { lower := 2452, upper := 2605, witness := RowWitness.topPrime 2447 },
  { lower := 2606, upper := 2751, witness := RowWitness.topPrime 2593 },
  { lower := 2752, upper := 2907, witness := RowWitness.topPrime 2749 },
  { lower := 2908, upper := 3061, witness := RowWitness.topPrime 2903 },
  { lower := 3062, upper := 3219, witness := RowWitness.topPrime 3061 },
  { lower := 3220, upper := 3375, witness := RowWitness.topPrime 3217 },
  { lower := 3376, upper := 3531, witness := RowWitness.topPrime 3373 },
  { lower := 3532, upper := 3687, witness := RowWitness.topPrime 3529 },
  { lower := 3688, upper := 3835, witness := RowWitness.topPrime 3677 },
  { lower := 3836, upper := 3991, witness := RowWitness.topPrime 3833 },
  { lower := 3992, upper := 4147, witness := RowWitness.topPrime 3989 },
  { lower := 4148, upper := 4297, witness := RowWitness.topPrime 4139 },
  { lower := 4298, upper := 4455, witness := RowWitness.topPrime 4297 },
  { lower := 4456, upper := 4609, witness := RowWitness.topPrime 4451 },
  { lower := 4610, upper := 4761, witness := RowWitness.topPrime 4603 },
  { lower := 4762, upper := 4917, witness := RowWitness.topPrime 4759 },
  { lower := 4918, upper := 5067, witness := RowWitness.topPrime 4909 },
  { lower := 5068, upper := 5217, witness := RowWitness.topPrime 5059 },
  { lower := 5218, upper := 5367, witness := RowWitness.topPrime 5209 },
  { lower := 5368, upper := 5509, witness := RowWitness.topPrime 5351 },
  { lower := 5510, upper := 5665, witness := RowWitness.topPrime 5507 },
  { lower := 5666, upper := 5817, witness := RowWitness.topPrime 5659 },
  { lower := 5818, upper := 5971, witness := RowWitness.topPrime 5813 },
  { lower := 5972, upper := 6111, witness := RowWitness.topPrime 5953 },
  { lower := 6112, upper := 6259, witness := RowWitness.topPrime 6101 },
  { lower := 6260, upper := 6415, witness := RowWitness.topPrime 6257 },
  { lower := 6416, upper := 6555, witness := RowWitness.topPrime 6397 },
  { lower := 6556, upper := 6711, witness := RowWitness.topPrime 6553 },
  { lower := 6712, upper := 6867, witness := RowWitness.topPrime 6709 },
  { lower := 6868, upper := 7021, witness := RowWitness.topPrime 6863 },
  { lower := 7022, upper := 7177, witness := RowWitness.topPrime 7019 },
  { lower := 7178, upper := 7335, witness := RowWitness.topPrime 7177 },
  { lower := 7336, upper := 7491, witness := RowWitness.topPrime 7333 },
  { lower := 7492, upper := 7647, witness := RowWitness.topPrime 7489 },
  { lower := 7648, upper := 7801, witness := RowWitness.topPrime 7643 },
  { lower := 7802, upper := 7951, witness := RowWitness.topPrime 7793 },
  { lower := 7952, upper := 8109, witness := RowWitness.topPrime 7951 },
  { lower := 8110, upper := 8259, witness := RowWitness.topPrime 8101 },
  { lower := 8260, upper := 8401, witness := RowWitness.topPrime 8243 },
  { lower := 8402, upper := 8547, witness := RowWitness.topPrime 8389 },
  { lower := 8548, upper := 8701, witness := RowWitness.topPrime 8543 },
  { lower := 8702, upper := 8857, witness := RowWitness.topPrime 8699 },
  { lower := 8858, upper := 9007, witness := RowWitness.topPrime 8849 },
  { lower := 9008, upper := 9165, witness := RowWitness.topPrime 9007 },
  { lower := 9166, upper := 9319, witness := RowWitness.topPrime 9161 },
  { lower := 9320, upper := 9477, witness := RowWitness.topPrime 9319 },
  { lower := 9478, upper := 9631, witness := RowWitness.topPrime 9473 },
  { lower := 9632, upper := 9789, witness := RowWitness.topPrime 9631 },
  { lower := 9790, upper := 9945, witness := RowWitness.topPrime 9787 },
  { lower := 9946, upper := 10099, witness := RowWitness.topPrime 9941 },
  { lower := 10100, upper := 10257, witness := RowWitness.topPrime 10099 },
  { lower := 10258, upper := 10411, witness := RowWitness.topPrime 10253 },
  { lower := 10412, upper := 10557, witness := RowWitness.topPrime 10399 },
  { lower := 10558, upper := 10689, witness := RowWitness.topPrime 10531 },
  { lower := 10690, upper := 10845, witness := RowWitness.topPrime 10687 },
  { lower := 10846, upper := 10995, witness := RowWitness.topPrime 10837 },
  { lower := 10996, upper := 11151, witness := RowWitness.topPrime 10993 },
  { lower := 11152, upper := 11307, witness := RowWitness.topPrime 11149 },
  { lower := 11308, upper := 11457, witness := RowWitness.topPrime 11299 },
  { lower := 11458, upper := 11605, witness := RowWitness.topPrime 11447 },
  { lower := 11606, upper := 11755, witness := RowWitness.topPrime 11597 },
  { lower := 11756, upper := 11901, witness := RowWitness.topPrime 11743 },
  { lower := 11902, upper := 12055, witness := RowWitness.topPrime 11897 },
  { lower := 12056, upper := 12207, witness := RowWitness.topPrime 12049 },
  { lower := 12208, upper := 12361, witness := RowWitness.topPrime 12203 },
  { lower := 12362, upper := 12505, witness := RowWitness.topPrime 12347 },
  { lower := 12506, upper := 12661, witness := RowWitness.topPrime 12503 },
  { lower := 12662, upper := 12817, witness := RowWitness.topPrime 12659 },
  { lower := 12818, upper := 12967, witness := RowWitness.topPrime 12809 },
  { lower := 12968, upper := 13125, witness := RowWitness.topPrime 12967 },
  { lower := 13126, upper := 13279, witness := RowWitness.topPrime 13121 },
  { lower := 13280, upper := 13425, witness := RowWitness.topPrime 13267 },
  { lower := 13426, upper := 13579, witness := RowWitness.topPrime 13421 },
  { lower := 13580, upper := 13735, witness := RowWitness.topPrime 13577 },
  { lower := 13736, upper := 13887, witness := RowWitness.topPrime 13729 },
  { lower := 13888, upper := 14041, witness := RowWitness.topPrime 13883 },
  { lower := 14042, upper := 14191, witness := RowWitness.topPrime 14033 },
  { lower := 14192, upper := 14335, witness := RowWitness.topPrime 14177 },
  { lower := 14336, upper := 14485, witness := RowWitness.topPrime 14327 },
  { lower := 14486, upper := 14637, witness := RowWitness.topPrime 14479 },
  { lower := 14638, upper := 14791, witness := RowWitness.topPrime 14633 },
  { lower := 14792, upper := 14941, witness := RowWitness.topPrime 14783 },
  { lower := 14942, upper := 15097, witness := RowWitness.topPrime 14939 },
  { lower := 15098, upper := 15249, witness := RowWitness.topPrime 15091 },
  { lower := 15250, upper := 15399, witness := RowWitness.topPrime 15241 },
  { lower := 15400, upper := 15549, witness := RowWitness.topPrime 15391 },
  { lower := 15550, upper := 15699, witness := RowWitness.topPrime 15541 },
  { lower := 15700, upper := 15841, witness := RowWitness.topPrime 15683 },
  { lower := 15842, upper := 15981, witness := RowWitness.topPrime 15823 },
  { lower := 15982, upper := 16131, witness := RowWitness.topPrime 15973 },
  { lower := 16132, upper := 16285, witness := RowWitness.topPrime 16127 },
  { lower := 16286, upper := 16431, witness := RowWitness.topPrime 16273 },
  { lower := 16432, upper := 16585, witness := RowWitness.topPrime 16427 },
  { lower := 16586, upper := 16731, witness := RowWitness.topPrime 16573 },
  { lower := 16732, upper := 16887, witness := RowWitness.topPrime 16729 },
  { lower := 16888, upper := 17041, witness := RowWitness.topPrime 16883 },
  { lower := 17042, upper := 17199, witness := RowWitness.topPrime 17041 },
  { lower := 17200, upper := 17349, witness := RowWitness.topPrime 17191 },
  { lower := 17350, upper := 17499, witness := RowWitness.topPrime 17341 },
  { lower := 17500, upper := 17655, witness := RowWitness.topPrime 17497 },
  { lower := 17656, upper := 17785, witness := RowWitness.topPrime 17627 },
  { lower := 17786, upper := 17941, witness := RowWitness.topPrime 17783 },
  { lower := 17942, upper := 18097, witness := RowWitness.topPrime 17939 },
  { lower := 18098, upper := 18255, witness := RowWitness.topPrime 18097 },
  { lower := 18256, upper := 18411, witness := RowWitness.topPrime 18253 },
  { lower := 18412, upper := 18559, witness := RowWitness.topPrime 18401 },
  { lower := 18560, upper := 18711, witness := RowWitness.topPrime 18553 },
  { lower := 18712, upper := 18859, witness := RowWitness.topPrime 18701 },
  { lower := 18860, upper := 19017, witness := RowWitness.topPrime 18859 },
  { lower := 19018, upper := 19171, witness := RowWitness.topPrime 19013 },
  { lower := 19172, upper := 19321, witness := RowWitness.topPrime 19163 },
  { lower := 19322, upper := 19477, witness := RowWitness.topPrime 19319 },
  { lower := 19478, upper := 19635, witness := RowWitness.topPrime 19477 },
  { lower := 19636, upper := 19767, witness := RowWitness.topPrime 19609 },
  { lower := 19768, upper := 19921, witness := RowWitness.topPrime 19763 },
  { lower := 19922, upper := 20077, witness := RowWitness.topPrime 19919 },
  { lower := 20078, upper := 20229, witness := RowWitness.topPrime 20071 },
  { lower := 20230, upper := 20377, witness := RowWitness.topPrime 20219 },
  { lower := 20378, upper := 20527, witness := RowWitness.topPrime 20369 },
  { lower := 20528, upper := 20679, witness := RowWitness.topPrime 20521 },
  { lower := 20680, upper := 20821, witness := RowWitness.topPrime 20663 },
  { lower := 20822, upper := 20967, witness := RowWitness.topPrime 20809 },
  { lower := 20968, upper := 21121, witness := RowWitness.topPrime 20963 },
  { lower := 21122, upper := 21279, witness := RowWitness.topPrime 21121 },
  { lower := 21280, upper := 21435, witness := RowWitness.topPrime 21277 },
  { lower := 21436, upper := 21591, witness := RowWitness.topPrime 21433 },
  { lower := 21592, upper := 21747, witness := RowWitness.topPrime 21589 },
  { lower := 21748, upper := 21897, witness := RowWitness.topPrime 21739 },
  { lower := 21898, upper := 22051, witness := RowWitness.topPrime 21893 },
  { lower := 22052, upper := 22209, witness := RowWitness.topPrime 22051 },
  { lower := 22210, upper := 22351, witness := RowWitness.topPrime 22193 },
  { lower := 22352, upper := 22507, witness := RowWitness.topPrime 22349 },
  { lower := 22508, upper := 22659, witness := RowWitness.topPrime 22501 },
  { lower := 22660, upper := 22809, witness := RowWitness.topPrime 22651 },
  { lower := 22810, upper := 22965, witness := RowWitness.topPrime 22807 },
  { lower := 22966, upper := 23121, witness := RowWitness.topPrime 22963 },
  { lower := 23122, upper := 23275, witness := RowWitness.topPrime 23117 },
  { lower := 23276, upper := 23427, witness := RowWitness.topPrime 23269 },
  { lower := 23428, upper := 23575, witness := RowWitness.topPrime 23417 },
  { lower := 23576, upper := 23725, witness := RowWitness.topPrime 23567 },
  { lower := 23726, upper := 23877, witness := RowWitness.topPrime 23719 },
  { lower := 23878, upper := 24031, witness := RowWitness.topPrime 23873 },
  { lower := 24032, upper := 24187, witness := RowWitness.topPrime 24029 },
  { lower := 24188, upper := 24339, witness := RowWitness.topPrime 24181 },
  { lower := 24340, upper := 24495, witness := RowWitness.topPrime 24337 },
  { lower := 24496, upper := 24639, witness := RowWitness.topPrime 24481 },
  { lower := 24640, upper := 24789, witness := RowWitness.topPrime 24631 },
  { lower := 24790, upper := 24939, witness := RowWitness.topPrime 24781 },
  { lower := 24940, upper := 25081, witness := RowWitness.topPrime 24923 },
  { lower := 25082, upper := 25122, witness := RowWitness.topPrime 25073 },
  { lower := 25215, upper := 25347, witness := RowWitness.topPrime 25189 },
  { lower := 25348, upper := 25363, witness := RowWitness.topPrime 25343 },
  { lower := 26364, upper := 26402, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26565, witness := RowWitness.topPrime 26407 },
  { lower := 26566, upper := 26569, witness := RowWitness.topPrime 26561 },
  { lower := 26624, upper := 26755, witness := RowWitness.topPrime 26597 },
  { lower := 26756, upper := 26782, witness := RowWitness.topPrime 26737 },
  { lower := 27556, upper := 27594, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27893, witness := RowWitness.topPrime 27847 },
  { lower := 28227, upper := 28283, witness := RowWitness.topPrime 28219 },
  { lower := 28672, upper := 28827, witness := RowWitness.topPrime 28669 },
  { lower := 28828, upper := 28875, witness := RowWitness.topPrime 28817 },
  { lower := 29791, upper := 29926, witness := RowWitness.topPrime 29789 },
  { lower := 30720, upper := 30871, witness := RowWitness.topPrime 30713 },
  { lower := 30872, upper := 30878, witness := RowWitness.topPrime 30871 },
  { lower := 31213, upper := 31351, witness := RowWitness.topPrime 31193 },
  { lower := 31352, upper := 31408, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31487, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31842, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31985, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32926, witness := RowWitness.topPrime 32803 },
  { lower := 32955, upper := 32963, witness := RowWitness.topPrime 32941 },
  { lower := 33614, upper := 33647, witness := RowWitness.topPrime 33613 },
  { lower := 34322, upper := 34477, witness := RowWitness.topPrime 34319 },
  { lower := 34478, upper := 34549, witness := RowWitness.topPrime 34471 },
  { lower := 36015, upper := 36070, witness := RowWitness.topPrime 36013 },
  { lower := 37303, upper := 37368, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37461, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37651, witness := RowWitness.topPrime 37493 },
  { lower := 37652, upper := 37696, witness := RowWitness.topPrime 37649 },
  { lower := 38307, upper := 38449, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39462, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40486, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41085, witness := RowWitness.topPrime 40927 },
  { lower := 41086, upper := 41089, witness := RowWitness.topPrime 41081 },
  { lower := 43750, upper := 43845, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45411, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47679, witness := RowWitness.topPrime 47521 },
  { lower := 47680, upper := 47682, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48119, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48381, witness := RowWitness.topPrime 48371 },
  { lower := 48387, upper := 48531, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48891, witness := RowWitness.topPrime 48733 },
  { lower := 48892, upper := 48892, witness := RowWitness.topPrime 48889 },
  { lower := 49152, upper := 49288, witness := RowWitness.topPrime 49139 },
  { lower := 49298, upper := 49310, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49456, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50568, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51163, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55599, witness := RowWitness.topPrime 55441 },
  { lower := 55600, upper := 55605, witness := RowWitness.topPrime 55589 },
  { lower := 56307, upper := 56327, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56465, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57280, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57403, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58722, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62568, witness := RowWitness.topPrime 62497 },
  { lower := 68644, upper := 68797, witness := RowWitness.topPrime 68639 },
  { lower := 68798, upper := 68809, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69048, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71445, witness := RowWitness.topPrime 71287 },
  { lower := 71446, upper := 71447, witness := RowWitness.topPrime 71443 },
  { lower := 73205, upper := 73325, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85841, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89531, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93908, witness := RowWitness.topPrime 93827 },
  { lower := 103041, upper := 103124, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109533, witness := RowWitness.topPrime 109481 },
  { lower := 154568, upper := 154607, witness := RowWitness.topPrime 154543 },
  { lower := 199927, upper := 199967, witness := RowWitness.topPrime 199921 }
]

def row159_layers : List CoverLayer := [
  { lower := 25122, upper := 50244, M := 15 },
  { lower := 50244, upper := 100488, M := 11 },
  { lower := 100488, upper := 200976, M := 9 },
  { lower := 200976, upper := 401952, M := 7 },
  { lower := 401952, upper := 803904, M := 5 },
  { lower := 803904, upper := 1607808, M := 4 },
  { lower := 1607808, upper := 3215616, M := 3 },
  { lower := 3215616, upper := 6431232, M := 2 },
  { lower := 6431232, upper := 12862464, M := 2 },
  { lower := 12862464, upper := 25724928, M := 2 },
  { lower := 25724928, upper := 51449856, M := 1 },
  { lower := 51449856, upper := 100000000, M := 1 }
]

def row159 : FiniteCoverRow := {
  height := row159_height,
  goods := row159_goods,
  layers := row159_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good000_checked :
    goodSegmentCheck 159 52 112
      { lower := 320, upper := 475, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good001_checked :
    goodSegmentCheck 159 52 112
      { lower := 476, upper := 625, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good002_checked :
    goodSegmentCheck 159 52 112
      { lower := 626, upper := 777, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good003_checked :
    goodSegmentCheck 159 52 112
      { lower := 778, upper := 931, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good004_checked :
    goodSegmentCheck 159 52 112
      { lower := 932, upper := 1087, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good005_checked :
    goodSegmentCheck 159 52 112
      { lower := 1088, upper := 1245, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good006_checked :
    goodSegmentCheck 159 52 112
      { lower := 1246, upper := 1395, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good007_checked :
    goodSegmentCheck 159 52 112
      { lower := 1396, upper := 1539, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good008_checked :
    goodSegmentCheck 159 52 112
      { lower := 1540, upper := 1689, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good009_checked :
    goodSegmentCheck 159 52 112
      { lower := 1690, upper := 1827, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good010_checked :
    goodSegmentCheck 159 52 112
      { lower := 1828, upper := 1981, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good011_checked :
    goodSegmentCheck 159 52 112
      { lower := 1982, upper := 2137, witness := RowWitness.topPrime 1979 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good012_checked :
    goodSegmentCheck 159 52 112
      { lower := 2138, upper := 2295, witness := RowWitness.topPrime 2137 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good013_checked :
    goodSegmentCheck 159 52 112
      { lower := 2296, upper := 2451, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good014_checked :
    goodSegmentCheck 159 52 112
      { lower := 2452, upper := 2605, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good015_checked :
    goodSegmentCheck 159 52 112
      { lower := 2606, upper := 2751, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good016_checked :
    goodSegmentCheck 159 52 112
      { lower := 2752, upper := 2907, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good017_checked :
    goodSegmentCheck 159 52 112
      { lower := 2908, upper := 3061, witness := RowWitness.topPrime 2903 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good018_checked :
    goodSegmentCheck 159 52 112
      { lower := 3062, upper := 3219, witness := RowWitness.topPrime 3061 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good019_checked :
    goodSegmentCheck 159 52 112
      { lower := 3220, upper := 3375, witness := RowWitness.topPrime 3217 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good020_checked :
    goodSegmentCheck 159 52 112
      { lower := 3376, upper := 3531, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good021_checked :
    goodSegmentCheck 159 52 112
      { lower := 3532, upper := 3687, witness := RowWitness.topPrime 3529 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good022_checked :
    goodSegmentCheck 159 52 112
      { lower := 3688, upper := 3835, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good023_checked :
    goodSegmentCheck 159 52 112
      { lower := 3836, upper := 3991, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good024_checked :
    goodSegmentCheck 159 52 112
      { lower := 3992, upper := 4147, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good025_checked :
    goodSegmentCheck 159 52 112
      { lower := 4148, upper := 4297, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good026_checked :
    goodSegmentCheck 159 52 112
      { lower := 4298, upper := 4455, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good027_checked :
    goodSegmentCheck 159 52 112
      { lower := 4456, upper := 4609, witness := RowWitness.topPrime 4451 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good028_checked :
    goodSegmentCheck 159 52 112
      { lower := 4610, upper := 4761, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good029_checked :
    goodSegmentCheck 159 52 112
      { lower := 4762, upper := 4917, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good030_checked :
    goodSegmentCheck 159 52 112
      { lower := 4918, upper := 5067, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good031_checked :
    goodSegmentCheck 159 52 112
      { lower := 5068, upper := 5217, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good032_checked :
    goodSegmentCheck 159 52 112
      { lower := 5218, upper := 5367, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good033_checked :
    goodSegmentCheck 159 52 112
      { lower := 5368, upper := 5509, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good034_checked :
    goodSegmentCheck 159 52 112
      { lower := 5510, upper := 5665, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good035_checked :
    goodSegmentCheck 159 52 112
      { lower := 5666, upper := 5817, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good036_checked :
    goodSegmentCheck 159 52 112
      { lower := 5818, upper := 5971, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good037_checked :
    goodSegmentCheck 159 52 112
      { lower := 5972, upper := 6111, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good038_checked :
    goodSegmentCheck 159 52 112
      { lower := 6112, upper := 6259, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good039_checked :
    goodSegmentCheck 159 52 112
      { lower := 6260, upper := 6415, witness := RowWitness.topPrime 6257 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good040_checked :
    goodSegmentCheck 159 52 112
      { lower := 6416, upper := 6555, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good041_checked :
    goodSegmentCheck 159 52 112
      { lower := 6556, upper := 6711, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good042_checked :
    goodSegmentCheck 159 52 112
      { lower := 6712, upper := 6867, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good043_checked :
    goodSegmentCheck 159 52 112
      { lower := 6868, upper := 7021, witness := RowWitness.topPrime 6863 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good044_checked :
    goodSegmentCheck 159 52 112
      { lower := 7022, upper := 7177, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good045_checked :
    goodSegmentCheck 159 52 112
      { lower := 7178, upper := 7335, witness := RowWitness.topPrime 7177 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good046_checked :
    goodSegmentCheck 159 52 112
      { lower := 7336, upper := 7491, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good047_checked :
    goodSegmentCheck 159 52 112
      { lower := 7492, upper := 7647, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good048_checked :
    goodSegmentCheck 159 52 112
      { lower := 7648, upper := 7801, witness := RowWitness.topPrime 7643 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good049_checked :
    goodSegmentCheck 159 52 112
      { lower := 7802, upper := 7951, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good050_checked :
    goodSegmentCheck 159 52 112
      { lower := 7952, upper := 8109, witness := RowWitness.topPrime 7951 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good051_checked :
    goodSegmentCheck 159 52 112
      { lower := 8110, upper := 8259, witness := RowWitness.topPrime 8101 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good052_checked :
    goodSegmentCheck 159 52 112
      { lower := 8260, upper := 8401, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good053_checked :
    goodSegmentCheck 159 52 112
      { lower := 8402, upper := 8547, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good054_checked :
    goodSegmentCheck 159 52 112
      { lower := 8548, upper := 8701, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good055_checked :
    goodSegmentCheck 159 52 112
      { lower := 8702, upper := 8857, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good056_checked :
    goodSegmentCheck 159 52 112
      { lower := 8858, upper := 9007, witness := RowWitness.topPrime 8849 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good057_checked :
    goodSegmentCheck 159 52 112
      { lower := 9008, upper := 9165, witness := RowWitness.topPrime 9007 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good058_checked :
    goodSegmentCheck 159 52 112
      { lower := 9166, upper := 9319, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good059_checked :
    goodSegmentCheck 159 52 112
      { lower := 9320, upper := 9477, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good060_checked :
    goodSegmentCheck 159 52 112
      { lower := 9478, upper := 9631, witness := RowWitness.topPrime 9473 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good061_checked :
    goodSegmentCheck 159 52 112
      { lower := 9632, upper := 9789, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good062_checked :
    goodSegmentCheck 159 52 112
      { lower := 9790, upper := 9945, witness := RowWitness.topPrime 9787 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good063_checked :
    goodSegmentCheck 159 52 112
      { lower := 9946, upper := 10099, witness := RowWitness.topPrime 9941 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good064_checked :
    goodSegmentCheck 159 52 112
      { lower := 10100, upper := 10257, witness := RowWitness.topPrime 10099 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good065_checked :
    goodSegmentCheck 159 52 112
      { lower := 10258, upper := 10411, witness := RowWitness.topPrime 10253 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good066_checked :
    goodSegmentCheck 159 52 112
      { lower := 10412, upper := 10557, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good067_checked :
    goodSegmentCheck 159 52 112
      { lower := 10558, upper := 10689, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good068_checked :
    goodSegmentCheck 159 52 112
      { lower := 10690, upper := 10845, witness := RowWitness.topPrime 10687 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good069_checked :
    goodSegmentCheck 159 52 112
      { lower := 10846, upper := 10995, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good070_checked :
    goodSegmentCheck 159 52 112
      { lower := 10996, upper := 11151, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good071_checked :
    goodSegmentCheck 159 52 112
      { lower := 11152, upper := 11307, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good072_checked :
    goodSegmentCheck 159 52 112
      { lower := 11308, upper := 11457, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good073_checked :
    goodSegmentCheck 159 52 112
      { lower := 11458, upper := 11605, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good074_checked :
    goodSegmentCheck 159 52 112
      { lower := 11606, upper := 11755, witness := RowWitness.topPrime 11597 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good075_checked :
    goodSegmentCheck 159 52 112
      { lower := 11756, upper := 11901, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good076_checked :
    goodSegmentCheck 159 52 112
      { lower := 11902, upper := 12055, witness := RowWitness.topPrime 11897 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good077_checked :
    goodSegmentCheck 159 52 112
      { lower := 12056, upper := 12207, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good078_checked :
    goodSegmentCheck 159 52 112
      { lower := 12208, upper := 12361, witness := RowWitness.topPrime 12203 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good079_checked :
    goodSegmentCheck 159 52 112
      { lower := 12362, upper := 12505, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good080_checked :
    goodSegmentCheck 159 52 112
      { lower := 12506, upper := 12661, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good081_checked :
    goodSegmentCheck 159 52 112
      { lower := 12662, upper := 12817, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good082_checked :
    goodSegmentCheck 159 52 112
      { lower := 12818, upper := 12967, witness := RowWitness.topPrime 12809 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good083_checked :
    goodSegmentCheck 159 52 112
      { lower := 12968, upper := 13125, witness := RowWitness.topPrime 12967 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good084_checked :
    goodSegmentCheck 159 52 112
      { lower := 13126, upper := 13279, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good085_checked :
    goodSegmentCheck 159 52 112
      { lower := 13280, upper := 13425, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good086_checked :
    goodSegmentCheck 159 52 112
      { lower := 13426, upper := 13579, witness := RowWitness.topPrime 13421 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good087_checked :
    goodSegmentCheck 159 52 112
      { lower := 13580, upper := 13735, witness := RowWitness.topPrime 13577 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good088_checked :
    goodSegmentCheck 159 52 112
      { lower := 13736, upper := 13887, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good089_checked :
    goodSegmentCheck 159 52 112
      { lower := 13888, upper := 14041, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good090_checked :
    goodSegmentCheck 159 52 112
      { lower := 14042, upper := 14191, witness := RowWitness.topPrime 14033 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good091_checked :
    goodSegmentCheck 159 52 112
      { lower := 14192, upper := 14335, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good092_checked :
    goodSegmentCheck 159 52 112
      { lower := 14336, upper := 14485, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good093_checked :
    goodSegmentCheck 159 52 112
      { lower := 14486, upper := 14637, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good094_checked :
    goodSegmentCheck 159 52 112
      { lower := 14638, upper := 14791, witness := RowWitness.topPrime 14633 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good095_checked :
    goodSegmentCheck 159 52 112
      { lower := 14792, upper := 14941, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good096_checked :
    goodSegmentCheck 159 52 112
      { lower := 14942, upper := 15097, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good097_checked :
    goodSegmentCheck 159 52 112
      { lower := 15098, upper := 15249, witness := RowWitness.topPrime 15091 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good098_checked :
    goodSegmentCheck 159 52 112
      { lower := 15250, upper := 15399, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good099_checked :
    goodSegmentCheck 159 52 112
      { lower := 15400, upper := 15549, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good100_checked :
    goodSegmentCheck 159 52 112
      { lower := 15550, upper := 15699, witness := RowWitness.topPrime 15541 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good101_checked :
    goodSegmentCheck 159 52 112
      { lower := 15700, upper := 15841, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good102_checked :
    goodSegmentCheck 159 52 112
      { lower := 15842, upper := 15981, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good103_checked :
    goodSegmentCheck 159 52 112
      { lower := 15982, upper := 16131, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good104_checked :
    goodSegmentCheck 159 52 112
      { lower := 16132, upper := 16285, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good105_checked :
    goodSegmentCheck 159 52 112
      { lower := 16286, upper := 16431, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good106_checked :
    goodSegmentCheck 159 52 112
      { lower := 16432, upper := 16585, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good107_checked :
    goodSegmentCheck 159 52 112
      { lower := 16586, upper := 16731, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good108_checked :
    goodSegmentCheck 159 52 112
      { lower := 16732, upper := 16887, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good109_checked :
    goodSegmentCheck 159 52 112
      { lower := 16888, upper := 17041, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good110_checked :
    goodSegmentCheck 159 52 112
      { lower := 17042, upper := 17199, witness := RowWitness.topPrime 17041 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good111_checked :
    goodSegmentCheck 159 52 112
      { lower := 17200, upper := 17349, witness := RowWitness.topPrime 17191 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good112_checked :
    goodSegmentCheck 159 52 112
      { lower := 17350, upper := 17499, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good113_checked :
    goodSegmentCheck 159 52 112
      { lower := 17500, upper := 17655, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good114_checked :
    goodSegmentCheck 159 52 112
      { lower := 17656, upper := 17785, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good115_checked :
    goodSegmentCheck 159 52 112
      { lower := 17786, upper := 17941, witness := RowWitness.topPrime 17783 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good116_checked :
    goodSegmentCheck 159 52 112
      { lower := 17942, upper := 18097, witness := RowWitness.topPrime 17939 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good117_checked :
    goodSegmentCheck 159 52 112
      { lower := 18098, upper := 18255, witness := RowWitness.topPrime 18097 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good118_checked :
    goodSegmentCheck 159 52 112
      { lower := 18256, upper := 18411, witness := RowWitness.topPrime 18253 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good119_checked :
    goodSegmentCheck 159 52 112
      { lower := 18412, upper := 18559, witness := RowWitness.topPrime 18401 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good120_checked :
    goodSegmentCheck 159 52 112
      { lower := 18560, upper := 18711, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good121_checked :
    goodSegmentCheck 159 52 112
      { lower := 18712, upper := 18859, witness := RowWitness.topPrime 18701 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good122_checked :
    goodSegmentCheck 159 52 112
      { lower := 18860, upper := 19017, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good123_checked :
    goodSegmentCheck 159 52 112
      { lower := 19018, upper := 19171, witness := RowWitness.topPrime 19013 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good124_checked :
    goodSegmentCheck 159 52 112
      { lower := 19172, upper := 19321, witness := RowWitness.topPrime 19163 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good125_checked :
    goodSegmentCheck 159 52 112
      { lower := 19322, upper := 19477, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good126_checked :
    goodSegmentCheck 159 52 112
      { lower := 19478, upper := 19635, witness := RowWitness.topPrime 19477 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good127_checked :
    goodSegmentCheck 159 52 112
      { lower := 19636, upper := 19767, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good128_checked :
    goodSegmentCheck 159 52 112
      { lower := 19768, upper := 19921, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good129_checked :
    goodSegmentCheck 159 52 112
      { lower := 19922, upper := 20077, witness := RowWitness.topPrime 19919 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good130_checked :
    goodSegmentCheck 159 52 112
      { lower := 20078, upper := 20229, witness := RowWitness.topPrime 20071 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good131_checked :
    goodSegmentCheck 159 52 112
      { lower := 20230, upper := 20377, witness := RowWitness.topPrime 20219 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good132_checked :
    goodSegmentCheck 159 52 112
      { lower := 20378, upper := 20527, witness := RowWitness.topPrime 20369 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good133_checked :
    goodSegmentCheck 159 52 112
      { lower := 20528, upper := 20679, witness := RowWitness.topPrime 20521 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good134_checked :
    goodSegmentCheck 159 52 112
      { lower := 20680, upper := 20821, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good135_checked :
    goodSegmentCheck 159 52 112
      { lower := 20822, upper := 20967, witness := RowWitness.topPrime 20809 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good136_checked :
    goodSegmentCheck 159 52 112
      { lower := 20968, upper := 21121, witness := RowWitness.topPrime 20963 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good137_checked :
    goodSegmentCheck 159 52 112
      { lower := 21122, upper := 21279, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good138_checked :
    goodSegmentCheck 159 52 112
      { lower := 21280, upper := 21435, witness := RowWitness.topPrime 21277 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good139_checked :
    goodSegmentCheck 159 52 112
      { lower := 21436, upper := 21591, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good140_checked :
    goodSegmentCheck 159 52 112
      { lower := 21592, upper := 21747, witness := RowWitness.topPrime 21589 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good141_checked :
    goodSegmentCheck 159 52 112
      { lower := 21748, upper := 21897, witness := RowWitness.topPrime 21739 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good142_checked :
    goodSegmentCheck 159 52 112
      { lower := 21898, upper := 22051, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good143_checked :
    goodSegmentCheck 159 52 112
      { lower := 22052, upper := 22209, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good144_checked :
    goodSegmentCheck 159 52 112
      { lower := 22210, upper := 22351, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good145_checked :
    goodSegmentCheck 159 52 112
      { lower := 22352, upper := 22507, witness := RowWitness.topPrime 22349 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good146_checked :
    goodSegmentCheck 159 52 112
      { lower := 22508, upper := 22659, witness := RowWitness.topPrime 22501 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good147_checked :
    goodSegmentCheck 159 52 112
      { lower := 22660, upper := 22809, witness := RowWitness.topPrime 22651 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good148_checked :
    goodSegmentCheck 159 52 112
      { lower := 22810, upper := 22965, witness := RowWitness.topPrime 22807 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good149_checked :
    goodSegmentCheck 159 52 112
      { lower := 22966, upper := 23121, witness := RowWitness.topPrime 22963 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good150_checked :
    goodSegmentCheck 159 52 112
      { lower := 23122, upper := 23275, witness := RowWitness.topPrime 23117 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good151_checked :
    goodSegmentCheck 159 52 112
      { lower := 23276, upper := 23427, witness := RowWitness.topPrime 23269 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good152_checked :
    goodSegmentCheck 159 52 112
      { lower := 23428, upper := 23575, witness := RowWitness.topPrime 23417 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good153_checked :
    goodSegmentCheck 159 52 112
      { lower := 23576, upper := 23725, witness := RowWitness.topPrime 23567 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good154_checked :
    goodSegmentCheck 159 52 112
      { lower := 23726, upper := 23877, witness := RowWitness.topPrime 23719 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good155_checked :
    goodSegmentCheck 159 52 112
      { lower := 23878, upper := 24031, witness := RowWitness.topPrime 23873 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good156_checked :
    goodSegmentCheck 159 52 112
      { lower := 24032, upper := 24187, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good157_checked :
    goodSegmentCheck 159 52 112
      { lower := 24188, upper := 24339, witness := RowWitness.topPrime 24181 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good158_checked :
    goodSegmentCheck 159 52 112
      { lower := 24340, upper := 24495, witness := RowWitness.topPrime 24337 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good159_checked :
    goodSegmentCheck 159 52 112
      { lower := 24496, upper := 24639, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good160_checked :
    goodSegmentCheck 159 52 112
      { lower := 24640, upper := 24789, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good161_checked :
    goodSegmentCheck 159 52 112
      { lower := 24790, upper := 24939, witness := RowWitness.topPrime 24781 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good162_checked :
    goodSegmentCheck 159 52 112
      { lower := 24940, upper := 25081, witness := RowWitness.topPrime 24923 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good163_checked :
    goodSegmentCheck 159 52 112
      { lower := 25082, upper := 25122, witness := RowWitness.topPrime 25073 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good164_checked :
    goodSegmentCheck 159 52 112
      { lower := 25215, upper := 25347, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good165_checked :
    goodSegmentCheck 159 52 112
      { lower := 25348, upper := 25363, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good166_checked :
    goodSegmentCheck 159 52 112
      { lower := 26364, upper := 26402, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good167_checked :
    goodSegmentCheck 159 52 112
      { lower := 26411, upper := 26565, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good168_checked :
    goodSegmentCheck 159 52 112
      { lower := 26566, upper := 26569, witness := RowWitness.topPrime 26561 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good169_checked :
    goodSegmentCheck 159 52 112
      { lower := 26624, upper := 26755, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good170_checked :
    goodSegmentCheck 159 52 112
      { lower := 26756, upper := 26782, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good171_checked :
    goodSegmentCheck 159 52 112
      { lower := 27556, upper := 27594, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good172_checked :
    goodSegmentCheck 159 52 112
      { lower := 27848, upper := 27893, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good173_checked :
    goodSegmentCheck 159 52 112
      { lower := 28227, upper := 28283, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good174_checked :
    goodSegmentCheck 159 52 112
      { lower := 28672, upper := 28827, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good175_checked :
    goodSegmentCheck 159 52 112
      { lower := 28828, upper := 28875, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good176_checked :
    goodSegmentCheck 159 52 112
      { lower := 29791, upper := 29926, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good177_checked :
    goodSegmentCheck 159 52 112
      { lower := 30720, upper := 30871, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good178_checked :
    goodSegmentCheck 159 52 112
      { lower := 30872, upper := 30878, witness := RowWitness.topPrime 30871 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good179_checked :
    goodSegmentCheck 159 52 112
      { lower := 31213, upper := 31351, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good180_checked :
    goodSegmentCheck 159 52 112
      { lower := 31352, upper := 31408, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good181_checked :
    goodSegmentCheck 159 52 112
      { lower := 31423, upper := 31487, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good182_checked :
    goodSegmentCheck 159 52 112
      { lower := 31827, upper := 31842, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good183_checked :
    goodSegmentCheck 159 52 112
      { lower := 31974, upper := 31985, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good184_checked :
    goodSegmentCheck 159 52 112
      { lower := 32805, upper := 32926, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good185_checked :
    goodSegmentCheck 159 52 112
      { lower := 32955, upper := 32963, witness := RowWitness.topPrime 32941 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good186_checked :
    goodSegmentCheck 159 52 112
      { lower := 33614, upper := 33647, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good187_checked :
    goodSegmentCheck 159 52 112
      { lower := 34322, upper := 34477, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good188_checked :
    goodSegmentCheck 159 52 112
      { lower := 34478, upper := 34549, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good189_checked :
    goodSegmentCheck 159 52 112
      { lower := 36015, upper := 36070, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good190_checked :
    goodSegmentCheck 159 52 112
      { lower := 37303, upper := 37368, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good191_checked :
    goodSegmentCheck 159 52 112
      { lower := 37446, upper := 37461, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good192_checked :
    goodSegmentCheck 159 52 112
      { lower := 37500, upper := 37651, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good193_checked :
    goodSegmentCheck 159 52 112
      { lower := 37652, upper := 37696, witness := RowWitness.topPrime 37649 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good194_checked :
    goodSegmentCheck 159 52 112
      { lower := 38307, upper := 38449, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good195_checked :
    goodSegmentCheck 159 52 112
      { lower := 39366, upper := 39462, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good196_checked :
    goodSegmentCheck 159 52 112
      { lower := 40401, upper := 40486, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good197_checked :
    goodSegmentCheck 159 52 112
      { lower := 40931, upper := 41085, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good198_checked :
    goodSegmentCheck 159 52 112
      { lower := 41086, upper := 41089, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good199_checked :
    goodSegmentCheck 159 52 112
      { lower := 43750, upper := 43845, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good200_checked :
    goodSegmentCheck 159 52 112
      { lower := 45369, upper := 45411, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good201_checked :
    goodSegmentCheck 159 52 112
      { lower := 47526, upper := 47679, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good202_checked :
    goodSegmentCheck 159 52 112
      { lower := 47680, upper := 47682, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good203_checked :
    goodSegmentCheck 159 52 112
      { lower := 48013, upper := 48119, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good204_checked :
    goodSegmentCheck 159 52 112
      { lower := 48373, upper := 48381, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good205_checked :
    goodSegmentCheck 159 52 112
      { lower := 48387, upper := 48531, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good206_checked :
    goodSegmentCheck 159 52 112
      { lower := 48734, upper := 48891, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good207_checked :
    goodSegmentCheck 159 52 112
      { lower := 48892, upper := 48892, witness := RowWitness.topPrime 48889 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good208_checked :
    goodSegmentCheck 159 52 112
      { lower := 49152, upper := 49288, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good209_checked :
    goodSegmentCheck 159 52 112
      { lower := 49298, upper := 49310, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good210_checked :
    goodSegmentCheck 159 52 112
      { lower := 49379, upper := 49456, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good211_checked :
    goodSegmentCheck 159 52 112
      { lower := 50421, upper := 50568, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good212_checked :
    goodSegmentCheck 159 52 112
      { lower := 51076, upper := 51163, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good213_checked :
    goodSegmentCheck 159 52 112
      { lower := 55451, upper := 55599, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good214_checked :
    goodSegmentCheck 159 52 112
      { lower := 55600, upper := 55605, witness := RowWitness.topPrime 55589 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good215_checked :
    goodSegmentCheck 159 52 112
      { lower := 56307, upper := 56327, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good216_checked :
    goodSegmentCheck 159 52 112
      { lower := 56454, upper := 56465, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good217_checked :
    goodSegmentCheck 159 52 112
      { lower := 57245, upper := 57280, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good218_checked :
    goodSegmentCheck 159 52 112
      { lower := 57344, upper := 57403, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good219_checked :
    goodSegmentCheck 159 52 112
      { lower := 58619, upper := 58722, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good220_checked :
    goodSegmentCheck 159 52 112
      { lower := 62500, upper := 62568, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good221_checked :
    goodSegmentCheck 159 52 112
      { lower := 68644, upper := 68797, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good222_checked :
    goodSegmentCheck 159 52 112
      { lower := 68798, upper := 68809, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good223_checked :
    goodSegmentCheck 159 52 112
      { lower := 68921, upper := 69048, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_good224_checked :
    goodSegmentCheck 159 52 112
      { lower := 71289, upper := 71445, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good225_checked :
    goodSegmentCheck 159 52 112
      { lower := 71446, upper := 71447, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good226_checked :
    goodSegmentCheck 159 52 112
      { lower := 73205, upper := 73325, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good227_checked :
    goodSegmentCheck 159 52 112
      { lower := 85805, upper := 85841, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good228_checked :
    goodSegmentCheck 159 52 112
      { lower := 89383, upper := 89531, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good229_checked :
    goodSegmentCheck 159 52 112
      { lower := 93845, upper := 93908, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good230_checked :
    goodSegmentCheck 159 52 112
      { lower := 103041, upper := 103124, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good231_checked :
    goodSegmentCheck 159 52 112
      { lower := 109503, upper := 109533, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good232_checked :
    goodSegmentCheck 159 52 112
      { lower := 154568, upper := 154607, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row159_good233_checked :
    goodSegmentCheck 159 52 112
      { lower := 199927, upper := 199967, witness := RowWitness.topPrime 199921 } = true := by
  exact good_top_prime_checked (i := 159) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_good233_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_goods_checked :
    row159.goods.all (goodSegmentCheck row159.height.i row159.height.r row159.height.s) = true := by
  change row159_goods.all (goodSegmentCheck 159 52 112) = true
  simp only [row159_goods, List.all_cons, List.all_nil,
    row159_good000_checked,
    row159_good001_checked,
    row159_good002_checked,
    row159_good003_checked,
    row159_good004_checked,
    row159_good005_checked,
    row159_good006_checked,
    row159_good007_checked,
    row159_good008_checked,
    row159_good009_checked,
    row159_good010_checked,
    row159_good011_checked,
    row159_good012_checked,
    row159_good013_checked,
    row159_good014_checked,
    row159_good015_checked,
    row159_good016_checked,
    row159_good017_checked,
    row159_good018_checked,
    row159_good019_checked,
    row159_good020_checked,
    row159_good021_checked,
    row159_good022_checked,
    row159_good023_checked,
    row159_good024_checked,
    row159_good025_checked,
    row159_good026_checked,
    row159_good027_checked,
    row159_good028_checked,
    row159_good029_checked,
    row159_good030_checked,
    row159_good031_checked,
    row159_good032_checked,
    row159_good033_checked,
    row159_good034_checked,
    row159_good035_checked,
    row159_good036_checked,
    row159_good037_checked,
    row159_good038_checked,
    row159_good039_checked,
    row159_good040_checked,
    row159_good041_checked,
    row159_good042_checked,
    row159_good043_checked,
    row159_good044_checked,
    row159_good045_checked,
    row159_good046_checked,
    row159_good047_checked,
    row159_good048_checked,
    row159_good049_checked,
    row159_good050_checked,
    row159_good051_checked,
    row159_good052_checked,
    row159_good053_checked,
    row159_good054_checked,
    row159_good055_checked,
    row159_good056_checked,
    row159_good057_checked,
    row159_good058_checked,
    row159_good059_checked,
    row159_good060_checked,
    row159_good061_checked,
    row159_good062_checked,
    row159_good063_checked,
    row159_good064_checked,
    row159_good065_checked,
    row159_good066_checked,
    row159_good067_checked,
    row159_good068_checked,
    row159_good069_checked,
    row159_good070_checked,
    row159_good071_checked,
    row159_good072_checked,
    row159_good073_checked,
    row159_good074_checked,
    row159_good075_checked,
    row159_good076_checked,
    row159_good077_checked,
    row159_good078_checked,
    row159_good079_checked,
    row159_good080_checked,
    row159_good081_checked,
    row159_good082_checked,
    row159_good083_checked,
    row159_good084_checked,
    row159_good085_checked,
    row159_good086_checked,
    row159_good087_checked,
    row159_good088_checked,
    row159_good089_checked,
    row159_good090_checked,
    row159_good091_checked,
    row159_good092_checked,
    row159_good093_checked,
    row159_good094_checked,
    row159_good095_checked,
    row159_good096_checked,
    row159_good097_checked,
    row159_good098_checked,
    row159_good099_checked,
    row159_good100_checked,
    row159_good101_checked,
    row159_good102_checked,
    row159_good103_checked,
    row159_good104_checked,
    row159_good105_checked,
    row159_good106_checked,
    row159_good107_checked,
    row159_good108_checked,
    row159_good109_checked,
    row159_good110_checked,
    row159_good111_checked,
    row159_good112_checked,
    row159_good113_checked,
    row159_good114_checked,
    row159_good115_checked,
    row159_good116_checked,
    row159_good117_checked,
    row159_good118_checked,
    row159_good119_checked,
    row159_good120_checked,
    row159_good121_checked,
    row159_good122_checked,
    row159_good123_checked,
    row159_good124_checked,
    row159_good125_checked,
    row159_good126_checked,
    row159_good127_checked,
    row159_good128_checked,
    row159_good129_checked,
    row159_good130_checked,
    row159_good131_checked,
    row159_good132_checked,
    row159_good133_checked,
    row159_good134_checked,
    row159_good135_checked,
    row159_good136_checked,
    row159_good137_checked,
    row159_good138_checked,
    row159_good139_checked,
    row159_good140_checked,
    row159_good141_checked,
    row159_good142_checked,
    row159_good143_checked,
    row159_good144_checked,
    row159_good145_checked,
    row159_good146_checked,
    row159_good147_checked,
    row159_good148_checked,
    row159_good149_checked,
    row159_good150_checked,
    row159_good151_checked,
    row159_good152_checked,
    row159_good153_checked,
    row159_good154_checked,
    row159_good155_checked,
    row159_good156_checked,
    row159_good157_checked,
    row159_good158_checked,
    row159_good159_checked,
    row159_good160_checked,
    row159_good161_checked,
    row159_good162_checked,
    row159_good163_checked,
    row159_good164_checked,
    row159_good165_checked,
    row159_good166_checked,
    row159_good167_checked,
    row159_good168_checked,
    row159_good169_checked,
    row159_good170_checked,
    row159_good171_checked,
    row159_good172_checked,
    row159_good173_checked,
    row159_good174_checked,
    row159_good175_checked,
    row159_good176_checked,
    row159_good177_checked,
    row159_good178_checked,
    row159_good179_checked,
    row159_good180_checked,
    row159_good181_checked,
    row159_good182_checked,
    row159_good183_checked,
    row159_good184_checked,
    row159_good185_checked,
    row159_good186_checked,
    row159_good187_checked,
    row159_good188_checked,
    row159_good189_checked,
    row159_good190_checked,
    row159_good191_checked,
    row159_good192_checked,
    row159_good193_checked,
    row159_good194_checked,
    row159_good195_checked,
    row159_good196_checked,
    row159_good197_checked,
    row159_good198_checked,
    row159_good199_checked,
    row159_good200_checked,
    row159_good201_checked,
    row159_good202_checked,
    row159_good203_checked,
    row159_good204_checked,
    row159_good205_checked,
    row159_good206_checked,
    row159_good207_checked,
    row159_good208_checked,
    row159_good209_checked,
    row159_good210_checked,
    row159_good211_checked,
    row159_good212_checked,
    row159_good213_checked,
    row159_good214_checked,
    row159_good215_checked,
    row159_good216_checked,
    row159_good217_checked,
    row159_good218_checked,
    row159_good219_checked,
    row159_good220_checked,
    row159_good221_checked,
    row159_good222_checked,
    row159_good223_checked,
    row159_good224_checked,
    row159_good225_checked,
    row159_good226_checked,
    row159_good227_checked,
    row159_good228_checked,
    row159_good229_checked,
    row159_good230_checked,
    row159_good231_checked,
    row159_good232_checked,
    row159_good233_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_registered :
    decide (row159.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row159_small_checked :
    coverCheck (2 * row159.height.i + 2) (row159.height.i * (row159.height.i - 1) - 1)
      (row159.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row159_layerCover_checked :
    coverCheck (row159.height.i * (row159.height.i - 1)) (row159.height.n0 - 1)
      (row159.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row159_bounds : List NatInterval :=
  [(320, 475), (476, 625), (626, 777), (778, 931), (932, 1087), (1088, 1245), (1246, 1395), (1396, 1539), (1540, 1689), (1690, 1827), (1828, 1981), (1982, 2137), (2138, 2295), (2296, 2451), (2452, 2605), (2606, 2751), (2752, 2907), (2908, 3061), (3062, 3219), (3220, 3375), (3376, 3531), (3532, 3687), (3688, 3835), (3836, 3991), (3992, 4147), (4148, 4297), (4298, 4455), (4456, 4609), (4610, 4761), (4762, 4917), (4918, 5067), (5068, 5217), (5218, 5367), (5368, 5509), (5510, 5665), (5666, 5817), (5818, 5971), (5972, 6111), (6112, 6259), (6260, 6415), (6416, 6555), (6556, 6711), (6712, 6867), (6868, 7021), (7022, 7177), (7178, 7335), (7336, 7491), (7492, 7647), (7648, 7801), (7802, 7951), (7952, 8109), (8110, 8259), (8260, 8401), (8402, 8547), (8548, 8701), (8702, 8857), (8858, 9007), (9008, 9165), (9166, 9319), (9320, 9477), (9478, 9631), (9632, 9789), (9790, 9945), (9946, 10099), (10100, 10257), (10258, 10411), (10412, 10557), (10558, 10689), (10690, 10845), (10846, 10995), (10996, 11151), (11152, 11307), (11308, 11457), (11458, 11605), (11606, 11755), (11756, 11901), (11902, 12055), (12056, 12207), (12208, 12361), (12362, 12505), (12506, 12661), (12662, 12817), (12818, 12967), (12968, 13125), (13126, 13279), (13280, 13425), (13426, 13579), (13580, 13735), (13736, 13887), (13888, 14041), (14042, 14191), (14192, 14335), (14336, 14485), (14486, 14637), (14638, 14791), (14792, 14941), (14942, 15097), (15098, 15249), (15250, 15399), (15400, 15549), (15550, 15699), (15700, 15841), (15842, 15981), (15982, 16131), (16132, 16285), (16286, 16431), (16432, 16585), (16586, 16731), (16732, 16887), (16888, 17041), (17042, 17199), (17200, 17349), (17350, 17499), (17500, 17655), (17656, 17785), (17786, 17941), (17942, 18097), (18098, 18255), (18256, 18411), (18412, 18559), (18560, 18711), (18712, 18859), (18860, 19017), (19018, 19171), (19172, 19321), (19322, 19477), (19478, 19635), (19636, 19767), (19768, 19921), (19922, 20077), (20078, 20229), (20230, 20377), (20378, 20527), (20528, 20679), (20680, 20821), (20822, 20967), (20968, 21121), (21122, 21279), (21280, 21435), (21436, 21591), (21592, 21747), (21748, 21897), (21898, 22051), (22052, 22209), (22210, 22351), (22352, 22507), (22508, 22659), (22660, 22809), (22810, 22965), (22966, 23121), (23122, 23275), (23276, 23427), (23428, 23575), (23576, 23725), (23726, 23877), (23878, 24031), (24032, 24187), (24188, 24339), (24340, 24495), (24496, 24639), (24640, 24789), (24790, 24939), (24940, 25081), (25082, 25122), (25215, 25347), (25348, 25363), (26364, 26402), (26411, 26565), (26566, 26569), (26624, 26755), (26756, 26782), (27556, 27594), (27848, 27893), (28227, 28283), (28672, 28827), (28828, 28875), (29791, 29926), (30720, 30871), (30872, 30878), (31213, 31351), (31352, 31408), (31423, 31487), (31827, 31842), (31974, 31985), (32805, 32926), (32955, 32963), (33614, 33647), (34322, 34477), (34478, 34549), (36015, 36070), (37303, 37368), (37446, 37461), (37500, 37651), (37652, 37696), (38307, 38449), (39366, 39462), (40401, 40486), (40931, 41085), (41086, 41089), (43750, 43845), (45369, 45411), (47526, 47679), (47680, 47682), (48013, 48119), (48373, 48381), (48387, 48531), (48734, 48891), (48892, 48892), (49152, 49288), (49298, 49310), (49379, 49456), (50421, 50568), (51076, 51163), (55451, 55599), (55600, 55605), (56307, 56327), (56454, 56465), (57245, 57280), (57344, 57403), (58619, 58722), (62500, 62568), (68644, 68797), (68798, 68809), (68921, 69048), (71289, 71445), (71446, 71447), (73205, 73325), (85805, 85841), (89383, 89531), (93845, 93908), (103041, 103124), (109503, 109533), (154568, 154607), (199927, 199967)]

theorem row159_bounds_eq : row159.goods.map goodSegmentBounds = row159_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row159_layer000_intervals : List ColouredInterval :=
  [(2, 26624, 26782), (2, 28672, 28830), (2, 30720, 30878), (2, 28672, 28830), (2, 32768, 32926), (2, 36864, 37022), (2, 40960, 41118), (2, 45056, 45214), (2, 49152, 49310), (2, 32768, 32926), (2, 40960, 41118), (2, 49152, 49310), (2, 32768, 32926), (2, 49152, 49310), (2, 32768, 32926), (3, 26244, 26402), (3, 32805, 32963), (3, 39366, 39524), (5, 25122, 25158), (5, 28125, 28283), (5, 31250, 31408), (5, 34375, 34533), (5, 37500, 37658), (5, 40625, 40783), (5, 43750, 43908), (5, 46875, 47033), (5, 31250, 31408), (5, 46875, 47033), (7, 26411, 26569), (7, 28812, 28970), (7, 31213, 31371), (7, 33614, 33772), (7, 36015, 36173), (7, 33614, 33772), (11, 29282, 29440), (11, 43923, 44081), (13, 26364, 26522), (13, 28561, 28719), (13, 30758, 30916), (13, 32955, 33113), (13, 28561, 28719), (17, 29478, 29636), (17, 34391, 34549), (17, 39304, 39462), (17, 44217, 44375), (17, 49130, 49288), (19, 27436, 27594), (19, 34295, 34453), (19, 41154, 41312), (19, 48013, 48171), (23, 36501, 36659), (23, 48668, 48826), (29, 48778, 48936), (31, 29791, 29949), (41, 25215, 25373), (43, 25886, 26044), (43, 27735, 27893), (47, 26508, 26666), (47, 28717, 28875), (47, 30926, 31084), (47, 33135, 33293), (59, 27848, 28006), (59, 31329, 31487), (59, 34810, 34968), (59, 38291, 38449), (59, 41772, 41930), (59, 45253, 45411), (59, 48734, 48892), (61, 26047, 26205), (61, 29768, 29926), (61, 33489, 33647), (61, 37210, 37368), (61, 40931, 41089), (61, 44652, 44810), (61, 48373, 48531), (67, 26934, 27092), (67, 31423, 31581), (67, 35912, 36070), (67, 40401, 40559), (67, 44890, 45048), (67, 49379, 49537), (71, 25205, 25363), (71, 30246, 30404), (71, 35287, 35445), (71, 40328, 40486), (71, 45369, 45527), (73, 26645, 26803), (73, 31974, 32132), (73, 37303, 37461), (73, 42632, 42790), (73, 47961, 48119), (79, 25122, 25122), (79, 31205, 31363), (79, 37446, 37604), (79, 43687, 43845), (79, 49928, 50086), (83, 27556, 27714), (83, 34445, 34603), (83, 41334, 41492), (83, 48223, 48381), (89, 31684, 31842), (89, 39605, 39763), (89, 47526, 47684), (97, 28227, 28385), (97, 37636, 37794), (97, 47045, 47203), (101, 30603, 30761), (101, 40804, 40962), (103, 31827, 31985), (103, 42436, 42594), (107, 34347, 34505), (107, 45796, 45954), (109, 35643, 35801), (109, 47524, 47682), (113, 25538, 25696), (113, 38307, 38465), (127, 32258, 32416), (127, 48387, 48545), (131, 34322, 34480), (137, 37538, 37696), (139, 38642, 38800), (149, 44402, 44560), (151, 45602, 45760), (157, 49298, 49456)]

def row159_layer000_block000 : List ColouredInterval :=
  [(2, 26624, 26782), (2, 28672, 28830), (2, 30720, 30878), (2, 28672, 28830), (2, 32768, 32926), (2, 36864, 37022), (2, 40960, 41118), (2, 45056, 45214), (2, 49152, 49310), (2, 32768, 32926), (2, 40960, 41118), (2, 49152, 49310), (2, 32768, 32926), (2, 49152, 49310), (2, 32768, 32926), (3, 26244, 26402)]

def row159_layer000_block001 : List ColouredInterval :=
  [(3, 32805, 32963), (3, 39366, 39524), (5, 25122, 25158), (5, 28125, 28283), (5, 31250, 31408), (5, 34375, 34533), (5, 37500, 37658), (5, 40625, 40783), (5, 43750, 43908), (5, 46875, 47033), (5, 31250, 31408), (5, 46875, 47033), (7, 26411, 26569), (7, 28812, 28970), (7, 31213, 31371), (7, 33614, 33772)]

def row159_layer000_block002 : List ColouredInterval :=
  [(7, 36015, 36173), (7, 33614, 33772), (11, 29282, 29440), (11, 43923, 44081), (13, 26364, 26522), (13, 28561, 28719), (13, 30758, 30916), (13, 32955, 33113), (13, 28561, 28719), (17, 29478, 29636), (17, 34391, 34549), (17, 39304, 39462), (17, 44217, 44375), (17, 49130, 49288), (19, 27436, 27594), (19, 34295, 34453)]

def row159_layer000_block003 : List ColouredInterval :=
  [(19, 41154, 41312), (19, 48013, 48171), (23, 36501, 36659), (23, 48668, 48826), (29, 48778, 48936), (31, 29791, 29949), (41, 25215, 25373), (43, 25886, 26044), (43, 27735, 27893), (47, 26508, 26666), (47, 28717, 28875), (47, 30926, 31084), (47, 33135, 33293), (59, 27848, 28006), (59, 31329, 31487), (59, 34810, 34968)]

def row159_layer000_block004 : List ColouredInterval :=
  [(59, 38291, 38449), (59, 41772, 41930), (59, 45253, 45411), (59, 48734, 48892), (61, 26047, 26205), (61, 29768, 29926), (61, 33489, 33647), (61, 37210, 37368), (61, 40931, 41089), (61, 44652, 44810), (61, 48373, 48531), (67, 26934, 27092), (67, 31423, 31581), (67, 35912, 36070), (67, 40401, 40559), (67, 44890, 45048)]

def row159_layer000_block005 : List ColouredInterval :=
  [(67, 49379, 49537), (71, 25205, 25363), (71, 30246, 30404), (71, 35287, 35445), (71, 40328, 40486), (71, 45369, 45527), (73, 26645, 26803), (73, 31974, 32132), (73, 37303, 37461), (73, 42632, 42790), (73, 47961, 48119), (79, 25122, 25122), (79, 31205, 31363), (79, 37446, 37604), (79, 43687, 43845), (79, 49928, 50086)]

def row159_layer000_block006 : List ColouredInterval :=
  [(83, 27556, 27714), (83, 34445, 34603), (83, 41334, 41492), (83, 48223, 48381), (89, 31684, 31842), (89, 39605, 39763), (89, 47526, 47684), (97, 28227, 28385), (97, 37636, 37794), (97, 47045, 47203), (101, 30603, 30761), (101, 40804, 40962), (103, 31827, 31985), (103, 42436, 42594), (107, 34347, 34505), (107, 45796, 45954)]

def row159_layer000_block007 : List ColouredInterval :=
  [(109, 35643, 35801), (109, 47524, 47682), (113, 25538, 25696), (113, 38307, 38465), (127, 32258, 32416), (127, 48387, 48545), (131, 34322, 34480), (137, 37538, 37696), (139, 38642, 38800), (149, 44402, 44560), (151, 45602, 45760), (157, 49298, 49456)]

def row159_layer000_chunks : List (List ColouredInterval) :=
  [row159_layer000_block000, row159_layer000_block001, row159_layer000_block002, row159_layer000_block003, row159_layer000_block004, row159_layer000_block005, row159_layer000_block006, row159_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_arithmetic : LayerArithmeticValid row159.height { lower := 25122, upper := 50244, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_enumeration :
    activePowerIntervalList 159 15 25122 50244 = row159_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_pairs000 :
    row159_layer000_block000.all (fun I => row159_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row159_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_pairs001 :
    row159_layer000_block001.all (fun I => row159_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row159_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_pairs002 :
    row159_layer000_block002.all (fun I => row159_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row159_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_pairs003 :
    row159_layer000_block003.all (fun I => row159_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row159_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_pairs004 :
    row159_layer000_block004.all (fun I => row159_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row159_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_pairs005 :
    row159_layer000_block005.all (fun I => row159_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row159_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_pairs006 :
    row159_layer000_block006.all (fun I => row159_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row159_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_pairs007 :
    row159_layer000_block007.all (fun I => row159_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row159_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_chunks_eq : row159_layer000_chunks.flatten = row159_layer000_intervals := by
  rfl

theorem row159_layer000_pairs : pairCoverCheck row159_layer000_intervals row159_bounds = true := by
  apply pairCoverCheck_of_chunks row159_layer000_chunks_eq
  intro block hblock
  simp only [row159_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row159_layer000_pairs000
  · exact row159_layer000_pairs001
  · exact row159_layer000_pairs002
  · exact row159_layer000_pairs003
  · exact row159_layer000_pairs004
  · exact row159_layer000_pairs005
  · exact row159_layer000_pairs006
  · exact row159_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer000_checked :
    coverLayerCheck row159.height row159.goods { lower := 25122, upper := 50244, M := 15 } = true := by
  exact coverLayerCheck_of_parts row159_layer000_arithmetic row159_layer000_enumeration row159_bounds_eq row159_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer000_checked
