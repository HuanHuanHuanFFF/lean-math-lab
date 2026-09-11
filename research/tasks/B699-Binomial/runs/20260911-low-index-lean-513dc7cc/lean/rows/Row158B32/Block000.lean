import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row158_height : HeightCertificateDatum := { i := 158, r := 52, s := 112, n0Power10 := 8 }

def row158_goods : List GoodSegment := [
  { lower := 318, upper := 474, witness := RowWitness.topPrime 317 },
  { lower := 475, upper := 624, witness := RowWitness.topPrime 467 },
  { lower := 625, upper := 776, witness := RowWitness.topPrime 619 },
  { lower := 777, upper := 930, witness := RowWitness.topPrime 773 },
  { lower := 931, upper := 1086, witness := RowWitness.topPrime 929 },
  { lower := 1087, upper := 1244, witness := RowWitness.topPrime 1087 },
  { lower := 1245, upper := 1394, witness := RowWitness.topPrime 1237 },
  { lower := 1395, upper := 1538, witness := RowWitness.topPrime 1381 },
  { lower := 1539, upper := 1688, witness := RowWitness.topPrime 1531 },
  { lower := 1689, upper := 1826, witness := RowWitness.topPrime 1669 },
  { lower := 1827, upper := 1980, witness := RowWitness.topPrime 1823 },
  { lower := 1981, upper := 2136, witness := RowWitness.topPrime 1979 },
  { lower := 2137, upper := 2294, witness := RowWitness.topPrime 2137 },
  { lower := 2295, upper := 2450, witness := RowWitness.topPrime 2293 },
  { lower := 2451, upper := 2604, witness := RowWitness.topPrime 2447 },
  { lower := 2605, upper := 2750, witness := RowWitness.topPrime 2593 },
  { lower := 2751, upper := 2906, witness := RowWitness.topPrime 2749 },
  { lower := 2907, upper := 3060, witness := RowWitness.topPrime 2903 },
  { lower := 3061, upper := 3218, witness := RowWitness.topPrime 3061 },
  { lower := 3219, upper := 3374, witness := RowWitness.topPrime 3217 },
  { lower := 3375, upper := 3530, witness := RowWitness.topPrime 3373 },
  { lower := 3531, upper := 3686, witness := RowWitness.topPrime 3529 },
  { lower := 3687, upper := 3834, witness := RowWitness.topPrime 3677 },
  { lower := 3835, upper := 3990, witness := RowWitness.topPrime 3833 },
  { lower := 3991, upper := 4146, witness := RowWitness.topPrime 3989 },
  { lower := 4147, upper := 4296, witness := RowWitness.topPrime 4139 },
  { lower := 4297, upper := 4454, witness := RowWitness.topPrime 4297 },
  { lower := 4455, upper := 4608, witness := RowWitness.topPrime 4451 },
  { lower := 4609, upper := 4760, witness := RowWitness.topPrime 4603 },
  { lower := 4761, upper := 4916, witness := RowWitness.topPrime 4759 },
  { lower := 4917, upper := 5066, witness := RowWitness.topPrime 4909 },
  { lower := 5067, upper := 5216, witness := RowWitness.topPrime 5059 },
  { lower := 5217, upper := 5366, witness := RowWitness.topPrime 5209 },
  { lower := 5367, upper := 5508, witness := RowWitness.topPrime 5351 },
  { lower := 5509, upper := 5664, witness := RowWitness.topPrime 5507 },
  { lower := 5665, upper := 5816, witness := RowWitness.topPrime 5659 },
  { lower := 5817, upper := 5970, witness := RowWitness.topPrime 5813 },
  { lower := 5971, upper := 6110, witness := RowWitness.topPrime 5953 },
  { lower := 6111, upper := 6258, witness := RowWitness.topPrime 6101 },
  { lower := 6259, upper := 6414, witness := RowWitness.topPrime 6257 },
  { lower := 6415, upper := 6554, witness := RowWitness.topPrime 6397 },
  { lower := 6555, upper := 6710, witness := RowWitness.topPrime 6553 },
  { lower := 6711, upper := 6866, witness := RowWitness.topPrime 6709 },
  { lower := 6867, upper := 7020, witness := RowWitness.topPrime 6863 },
  { lower := 7021, upper := 7176, witness := RowWitness.topPrime 7019 },
  { lower := 7177, upper := 7334, witness := RowWitness.topPrime 7177 },
  { lower := 7335, upper := 7490, witness := RowWitness.topPrime 7333 },
  { lower := 7491, upper := 7646, witness := RowWitness.topPrime 7489 },
  { lower := 7647, upper := 7800, witness := RowWitness.topPrime 7643 },
  { lower := 7801, upper := 7950, witness := RowWitness.topPrime 7793 },
  { lower := 7951, upper := 8108, witness := RowWitness.topPrime 7951 },
  { lower := 8109, upper := 8258, witness := RowWitness.topPrime 8101 },
  { lower := 8259, upper := 8400, witness := RowWitness.topPrime 8243 },
  { lower := 8401, upper := 8546, witness := RowWitness.topPrime 8389 },
  { lower := 8547, upper := 8700, witness := RowWitness.topPrime 8543 },
  { lower := 8701, upper := 8856, witness := RowWitness.topPrime 8699 },
  { lower := 8857, upper := 9006, witness := RowWitness.topPrime 8849 },
  { lower := 9007, upper := 9164, witness := RowWitness.topPrime 9007 },
  { lower := 9165, upper := 9318, witness := RowWitness.topPrime 9161 },
  { lower := 9319, upper := 9476, witness := RowWitness.topPrime 9319 },
  { lower := 9477, upper := 9630, witness := RowWitness.topPrime 9473 },
  { lower := 9631, upper := 9788, witness := RowWitness.topPrime 9631 },
  { lower := 9789, upper := 9944, witness := RowWitness.topPrime 9787 },
  { lower := 9945, upper := 10098, witness := RowWitness.topPrime 9941 },
  { lower := 10099, upper := 10256, witness := RowWitness.topPrime 10099 },
  { lower := 10257, upper := 10410, witness := RowWitness.topPrime 10253 },
  { lower := 10411, upper := 10556, witness := RowWitness.topPrime 10399 },
  { lower := 10557, upper := 10688, witness := RowWitness.topPrime 10531 },
  { lower := 10689, upper := 10844, witness := RowWitness.topPrime 10687 },
  { lower := 10845, upper := 10994, witness := RowWitness.topPrime 10837 },
  { lower := 10995, upper := 11150, witness := RowWitness.topPrime 10993 },
  { lower := 11151, upper := 11306, witness := RowWitness.topPrime 11149 },
  { lower := 11307, upper := 11456, witness := RowWitness.topPrime 11299 },
  { lower := 11457, upper := 11604, witness := RowWitness.topPrime 11447 },
  { lower := 11605, upper := 11754, witness := RowWitness.topPrime 11597 },
  { lower := 11755, upper := 11900, witness := RowWitness.topPrime 11743 },
  { lower := 11901, upper := 12054, witness := RowWitness.topPrime 11897 },
  { lower := 12055, upper := 12206, witness := RowWitness.topPrime 12049 },
  { lower := 12207, upper := 12360, witness := RowWitness.topPrime 12203 },
  { lower := 12361, upper := 12504, witness := RowWitness.topPrime 12347 },
  { lower := 12505, upper := 12660, witness := RowWitness.topPrime 12503 },
  { lower := 12661, upper := 12816, witness := RowWitness.topPrime 12659 },
  { lower := 12817, upper := 12966, witness := RowWitness.topPrime 12809 },
  { lower := 12967, upper := 13124, witness := RowWitness.topPrime 12967 },
  { lower := 13125, upper := 13278, witness := RowWitness.topPrime 13121 },
  { lower := 13279, upper := 13424, witness := RowWitness.topPrime 13267 },
  { lower := 13425, upper := 13578, witness := RowWitness.topPrime 13421 },
  { lower := 13579, upper := 13734, witness := RowWitness.topPrime 13577 },
  { lower := 13735, upper := 13886, witness := RowWitness.topPrime 13729 },
  { lower := 13887, upper := 14040, witness := RowWitness.topPrime 13883 },
  { lower := 14041, upper := 14190, witness := RowWitness.topPrime 14033 },
  { lower := 14191, upper := 14334, witness := RowWitness.topPrime 14177 },
  { lower := 14335, upper := 14484, witness := RowWitness.topPrime 14327 },
  { lower := 14485, upper := 14636, witness := RowWitness.topPrime 14479 },
  { lower := 14637, upper := 14790, witness := RowWitness.topPrime 14633 },
  { lower := 14791, upper := 14940, witness := RowWitness.topPrime 14783 },
  { lower := 14941, upper := 15096, witness := RowWitness.topPrime 14939 },
  { lower := 15097, upper := 15248, witness := RowWitness.topPrime 15091 },
  { lower := 15249, upper := 15398, witness := RowWitness.topPrime 15241 },
  { lower := 15399, upper := 15548, witness := RowWitness.topPrime 15391 },
  { lower := 15549, upper := 15698, witness := RowWitness.topPrime 15541 },
  { lower := 15699, upper := 15840, witness := RowWitness.topPrime 15683 },
  { lower := 15841, upper := 15980, witness := RowWitness.topPrime 15823 },
  { lower := 15981, upper := 16130, witness := RowWitness.topPrime 15973 },
  { lower := 16131, upper := 16284, witness := RowWitness.topPrime 16127 },
  { lower := 16285, upper := 16430, witness := RowWitness.topPrime 16273 },
  { lower := 16431, upper := 16584, witness := RowWitness.topPrime 16427 },
  { lower := 16585, upper := 16730, witness := RowWitness.topPrime 16573 },
  { lower := 16731, upper := 16886, witness := RowWitness.topPrime 16729 },
  { lower := 16887, upper := 17040, witness := RowWitness.topPrime 16883 },
  { lower := 17041, upper := 17198, witness := RowWitness.topPrime 17041 },
  { lower := 17199, upper := 17348, witness := RowWitness.topPrime 17191 },
  { lower := 17349, upper := 17498, witness := RowWitness.topPrime 17341 },
  { lower := 17499, upper := 17654, witness := RowWitness.topPrime 17497 },
  { lower := 17655, upper := 17784, witness := RowWitness.topPrime 17627 },
  { lower := 17785, upper := 17940, witness := RowWitness.topPrime 17783 },
  { lower := 17941, upper := 18096, witness := RowWitness.topPrime 17939 },
  { lower := 18097, upper := 18254, witness := RowWitness.topPrime 18097 },
  { lower := 18255, upper := 18410, witness := RowWitness.topPrime 18253 },
  { lower := 18411, upper := 18558, witness := RowWitness.topPrime 18401 },
  { lower := 18559, upper := 18710, witness := RowWitness.topPrime 18553 },
  { lower := 18711, upper := 18858, witness := RowWitness.topPrime 18701 },
  { lower := 18859, upper := 19016, witness := RowWitness.topPrime 18859 },
  { lower := 19017, upper := 19170, witness := RowWitness.topPrime 19013 },
  { lower := 19171, upper := 19320, witness := RowWitness.topPrime 19163 },
  { lower := 19321, upper := 19476, witness := RowWitness.topPrime 19319 },
  { lower := 19477, upper := 19634, witness := RowWitness.topPrime 19477 },
  { lower := 19635, upper := 19766, witness := RowWitness.topPrime 19609 },
  { lower := 19767, upper := 19920, witness := RowWitness.topPrime 19763 },
  { lower := 19921, upper := 20076, witness := RowWitness.topPrime 19919 },
  { lower := 20077, upper := 20228, witness := RowWitness.topPrime 20071 },
  { lower := 20229, upper := 20376, witness := RowWitness.topPrime 20219 },
  { lower := 20377, upper := 20526, witness := RowWitness.topPrime 20369 },
  { lower := 20527, upper := 20678, witness := RowWitness.topPrime 20521 },
  { lower := 20679, upper := 20820, witness := RowWitness.topPrime 20663 },
  { lower := 20821, upper := 20966, witness := RowWitness.topPrime 20809 },
  { lower := 20967, upper := 21120, witness := RowWitness.topPrime 20963 },
  { lower := 21121, upper := 21278, witness := RowWitness.topPrime 21121 },
  { lower := 21279, upper := 21434, witness := RowWitness.topPrime 21277 },
  { lower := 21435, upper := 21590, witness := RowWitness.topPrime 21433 },
  { lower := 21591, upper := 21746, witness := RowWitness.topPrime 21589 },
  { lower := 21747, upper := 21896, witness := RowWitness.topPrime 21739 },
  { lower := 21897, upper := 22050, witness := RowWitness.topPrime 21893 },
  { lower := 22051, upper := 22208, witness := RowWitness.topPrime 22051 },
  { lower := 22209, upper := 22350, witness := RowWitness.topPrime 22193 },
  { lower := 22351, upper := 22506, witness := RowWitness.topPrime 22349 },
  { lower := 22507, upper := 22658, witness := RowWitness.topPrime 22501 },
  { lower := 22659, upper := 22808, witness := RowWitness.topPrime 22651 },
  { lower := 22809, upper := 22964, witness := RowWitness.topPrime 22807 },
  { lower := 22965, upper := 23120, witness := RowWitness.topPrime 22963 },
  { lower := 23121, upper := 23274, witness := RowWitness.topPrime 23117 },
  { lower := 23275, upper := 23426, witness := RowWitness.topPrime 23269 },
  { lower := 23427, upper := 23574, witness := RowWitness.topPrime 23417 },
  { lower := 23575, upper := 23724, witness := RowWitness.topPrime 23567 },
  { lower := 23725, upper := 23876, witness := RowWitness.topPrime 23719 },
  { lower := 23877, upper := 24030, witness := RowWitness.topPrime 23873 },
  { lower := 24031, upper := 24186, witness := RowWitness.topPrime 24029 },
  { lower := 24187, upper := 24338, witness := RowWitness.topPrime 24181 },
  { lower := 24339, upper := 24494, witness := RowWitness.topPrime 24337 },
  { lower := 24495, upper := 24638, witness := RowWitness.topPrime 24481 },
  { lower := 24639, upper := 24788, witness := RowWitness.topPrime 24631 },
  { lower := 24789, upper := 24805, witness := RowWitness.topPrime 24781 },
  { lower := 25215, upper := 25346, witness := RowWitness.topPrime 25189 },
  { lower := 25347, upper := 25372, witness := RowWitness.topPrime 25343 },
  { lower := 26364, upper := 26401, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26564, witness := RowWitness.topPrime 26407 },
  { lower := 26565, upper := 26568, witness := RowWitness.topPrime 26561 },
  { lower := 26645, upper := 26665, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27053, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27593, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27892, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28280, witness := RowWitness.topPrime 28123 },
  { lower := 28281, upper := 28282, witness := RowWitness.topPrime 28279 },
  { lower := 28561, upper := 28588, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28826, witness := RowWitness.topPrime 28669 },
  { lower := 28827, upper := 28874, witness := RowWitness.topPrime 28817 },
  { lower := 29584, upper := 29635, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29925, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30750, witness := RowWitness.topPrime 30593 },
  { lower := 30751, upper := 30775, witness := RowWitness.topPrime 30727 },
  { lower := 30899, upper := 30915, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31056, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31406, witness := RowWitness.topPrime 31249 },
  { lower := 31407, upper := 31407, witness := RowWitness.topPrime 31397 },
  { lower := 31423, upper := 31486, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31841, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31984, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32925, witness := RowWitness.topPrime 32803 },
  { lower := 32955, upper := 32962, witness := RowWitness.topPrime 32941 },
  { lower := 33614, upper := 33646, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33771, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34476, witness := RowWitness.topPrime 34319 },
  { lower := 34477, upper := 34548, witness := RowWitness.topPrime 34471 },
  { lower := 35287, upper := 35309, witness := RowWitness.topPrime 35281 },
  { lower := 35344, upper := 35444, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36069, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36654, witness := RowWitness.topPrime 36497 },
  { lower := 36655, upper := 36658, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37367, witness := RowWitness.topPrime 37277 },
  { lower := 37538, upper := 37694, witness := RowWitness.topPrime 37537 },
  { lower := 37695, upper := 37695, witness := RowWitness.topPrime 37693 },
  { lower := 38307, upper := 38460, witness := RowWitness.topPrime 38303 },
  { lower := 38461, upper := 38464, witness := RowWitness.topPrime 38461 },
  { lower := 39326, upper := 39480, witness := RowWitness.topPrime 39323 },
  { lower := 39481, upper := 39483, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40485, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41084, witness := RowWitness.topPrime 40927 },
  { lower := 41085, upper := 41088, witness := RowWitness.topPrime 41081 },
  { lower := 44944, upper := 45047, witness := RowWitness.topPrime 44939 },
  { lower := 45369, upper := 45410, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45953, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47678, witness := RowWitness.topPrime 47521 },
  { lower := 47679, upper := 47681, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48118, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48380, witness := RowWitness.topPrime 48371 },
  { lower := 48387, upper := 48530, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48890, witness := RowWitness.topPrime 48733 },
  { lower := 48891, upper := 48891, witness := RowWitness.topPrime 48889 },
  { lower := 49152, upper := 49287, witness := RowWitness.topPrime 49139 },
  { lower := 49298, upper := 49309, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49455, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50567, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51162, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55598, witness := RowWitness.topPrime 55441 },
  { lower := 55599, upper := 55604, witness := RowWitness.topPrime 55589 },
  { lower := 56454, upper := 56464, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57279, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58721, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59113, witness := RowWitness.topPrime 59029 },
  { lower := 63948, upper := 64002, witness := RowWitness.topPrime 63929 },
  { lower := 65610, upper := 65693, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68796, witness := RowWitness.topPrime 68639 },
  { lower := 68797, upper := 68801, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69047, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71444, witness := RowWitness.topPrime 71287 },
  { lower := 71445, upper := 71446, witness := RowWitness.topPrime 71443 },
  { lower := 73205, upper := 73324, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85840, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89530, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93907, witness := RowWitness.topPrime 93827 },
  { lower := 95052, upper := 95184, witness := RowWitness.topPrime 95027 },
  { lower := 95185, upper := 95205, witness := RowWitness.topPrime 95177 },
  { lower := 98415, upper := 98461, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103123, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109532, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137938, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149034, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154606, witness := RowWitness.topPrime 154543 }
]

def row158_layers : List CoverLayer := [
  { lower := 24806, upper := 49612, M := 16 },
  { lower := 49612, upper := 99224, M := 12 },
  { lower := 99224, upper := 198448, M := 9 },
  { lower := 198448, upper := 396896, M := 7 },
  { lower := 396896, upper := 793792, M := 5 },
  { lower := 793792, upper := 1587584, M := 4 },
  { lower := 1587584, upper := 3175168, M := 3 },
  { lower := 3175168, upper := 6350336, M := 2 },
  { lower := 6350336, upper := 12700672, M := 2 },
  { lower := 12700672, upper := 25401344, M := 2 },
  { lower := 25401344, upper := 50802688, M := 1 },
  { lower := 50802688, upper := 100000000, M := 1 }
]

def row158 : FiniteCoverRow := {
  height := row158_height,
  goods := row158_goods,
  layers := row158_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good000_checked :
    goodSegmentCheck 158 52 112
      { lower := 318, upper := 474, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good001_checked :
    goodSegmentCheck 158 52 112
      { lower := 475, upper := 624, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good002_checked :
    goodSegmentCheck 158 52 112
      { lower := 625, upper := 776, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good003_checked :
    goodSegmentCheck 158 52 112
      { lower := 777, upper := 930, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good004_checked :
    goodSegmentCheck 158 52 112
      { lower := 931, upper := 1086, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good005_checked :
    goodSegmentCheck 158 52 112
      { lower := 1087, upper := 1244, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good006_checked :
    goodSegmentCheck 158 52 112
      { lower := 1245, upper := 1394, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good007_checked :
    goodSegmentCheck 158 52 112
      { lower := 1395, upper := 1538, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good008_checked :
    goodSegmentCheck 158 52 112
      { lower := 1539, upper := 1688, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good009_checked :
    goodSegmentCheck 158 52 112
      { lower := 1689, upper := 1826, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good010_checked :
    goodSegmentCheck 158 52 112
      { lower := 1827, upper := 1980, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good011_checked :
    goodSegmentCheck 158 52 112
      { lower := 1981, upper := 2136, witness := RowWitness.topPrime 1979 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good012_checked :
    goodSegmentCheck 158 52 112
      { lower := 2137, upper := 2294, witness := RowWitness.topPrime 2137 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good013_checked :
    goodSegmentCheck 158 52 112
      { lower := 2295, upper := 2450, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good014_checked :
    goodSegmentCheck 158 52 112
      { lower := 2451, upper := 2604, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good015_checked :
    goodSegmentCheck 158 52 112
      { lower := 2605, upper := 2750, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good016_checked :
    goodSegmentCheck 158 52 112
      { lower := 2751, upper := 2906, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good017_checked :
    goodSegmentCheck 158 52 112
      { lower := 2907, upper := 3060, witness := RowWitness.topPrime 2903 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good018_checked :
    goodSegmentCheck 158 52 112
      { lower := 3061, upper := 3218, witness := RowWitness.topPrime 3061 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good019_checked :
    goodSegmentCheck 158 52 112
      { lower := 3219, upper := 3374, witness := RowWitness.topPrime 3217 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good020_checked :
    goodSegmentCheck 158 52 112
      { lower := 3375, upper := 3530, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good021_checked :
    goodSegmentCheck 158 52 112
      { lower := 3531, upper := 3686, witness := RowWitness.topPrime 3529 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good022_checked :
    goodSegmentCheck 158 52 112
      { lower := 3687, upper := 3834, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good023_checked :
    goodSegmentCheck 158 52 112
      { lower := 3835, upper := 3990, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good024_checked :
    goodSegmentCheck 158 52 112
      { lower := 3991, upper := 4146, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good025_checked :
    goodSegmentCheck 158 52 112
      { lower := 4147, upper := 4296, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good026_checked :
    goodSegmentCheck 158 52 112
      { lower := 4297, upper := 4454, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good027_checked :
    goodSegmentCheck 158 52 112
      { lower := 4455, upper := 4608, witness := RowWitness.topPrime 4451 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good028_checked :
    goodSegmentCheck 158 52 112
      { lower := 4609, upper := 4760, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good029_checked :
    goodSegmentCheck 158 52 112
      { lower := 4761, upper := 4916, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good030_checked :
    goodSegmentCheck 158 52 112
      { lower := 4917, upper := 5066, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good031_checked :
    goodSegmentCheck 158 52 112
      { lower := 5067, upper := 5216, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good032_checked :
    goodSegmentCheck 158 52 112
      { lower := 5217, upper := 5366, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good033_checked :
    goodSegmentCheck 158 52 112
      { lower := 5367, upper := 5508, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good034_checked :
    goodSegmentCheck 158 52 112
      { lower := 5509, upper := 5664, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good035_checked :
    goodSegmentCheck 158 52 112
      { lower := 5665, upper := 5816, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good036_checked :
    goodSegmentCheck 158 52 112
      { lower := 5817, upper := 5970, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good037_checked :
    goodSegmentCheck 158 52 112
      { lower := 5971, upper := 6110, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good038_checked :
    goodSegmentCheck 158 52 112
      { lower := 6111, upper := 6258, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good039_checked :
    goodSegmentCheck 158 52 112
      { lower := 6259, upper := 6414, witness := RowWitness.topPrime 6257 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good040_checked :
    goodSegmentCheck 158 52 112
      { lower := 6415, upper := 6554, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good041_checked :
    goodSegmentCheck 158 52 112
      { lower := 6555, upper := 6710, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good042_checked :
    goodSegmentCheck 158 52 112
      { lower := 6711, upper := 6866, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good043_checked :
    goodSegmentCheck 158 52 112
      { lower := 6867, upper := 7020, witness := RowWitness.topPrime 6863 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good044_checked :
    goodSegmentCheck 158 52 112
      { lower := 7021, upper := 7176, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good045_checked :
    goodSegmentCheck 158 52 112
      { lower := 7177, upper := 7334, witness := RowWitness.topPrime 7177 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good046_checked :
    goodSegmentCheck 158 52 112
      { lower := 7335, upper := 7490, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good047_checked :
    goodSegmentCheck 158 52 112
      { lower := 7491, upper := 7646, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good048_checked :
    goodSegmentCheck 158 52 112
      { lower := 7647, upper := 7800, witness := RowWitness.topPrime 7643 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good049_checked :
    goodSegmentCheck 158 52 112
      { lower := 7801, upper := 7950, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good050_checked :
    goodSegmentCheck 158 52 112
      { lower := 7951, upper := 8108, witness := RowWitness.topPrime 7951 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good051_checked :
    goodSegmentCheck 158 52 112
      { lower := 8109, upper := 8258, witness := RowWitness.topPrime 8101 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good052_checked :
    goodSegmentCheck 158 52 112
      { lower := 8259, upper := 8400, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good053_checked :
    goodSegmentCheck 158 52 112
      { lower := 8401, upper := 8546, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good054_checked :
    goodSegmentCheck 158 52 112
      { lower := 8547, upper := 8700, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good055_checked :
    goodSegmentCheck 158 52 112
      { lower := 8701, upper := 8856, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good056_checked :
    goodSegmentCheck 158 52 112
      { lower := 8857, upper := 9006, witness := RowWitness.topPrime 8849 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good057_checked :
    goodSegmentCheck 158 52 112
      { lower := 9007, upper := 9164, witness := RowWitness.topPrime 9007 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good058_checked :
    goodSegmentCheck 158 52 112
      { lower := 9165, upper := 9318, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good059_checked :
    goodSegmentCheck 158 52 112
      { lower := 9319, upper := 9476, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good060_checked :
    goodSegmentCheck 158 52 112
      { lower := 9477, upper := 9630, witness := RowWitness.topPrime 9473 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good061_checked :
    goodSegmentCheck 158 52 112
      { lower := 9631, upper := 9788, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good062_checked :
    goodSegmentCheck 158 52 112
      { lower := 9789, upper := 9944, witness := RowWitness.topPrime 9787 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good063_checked :
    goodSegmentCheck 158 52 112
      { lower := 9945, upper := 10098, witness := RowWitness.topPrime 9941 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good064_checked :
    goodSegmentCheck 158 52 112
      { lower := 10099, upper := 10256, witness := RowWitness.topPrime 10099 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good065_checked :
    goodSegmentCheck 158 52 112
      { lower := 10257, upper := 10410, witness := RowWitness.topPrime 10253 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good066_checked :
    goodSegmentCheck 158 52 112
      { lower := 10411, upper := 10556, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good067_checked :
    goodSegmentCheck 158 52 112
      { lower := 10557, upper := 10688, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good068_checked :
    goodSegmentCheck 158 52 112
      { lower := 10689, upper := 10844, witness := RowWitness.topPrime 10687 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good069_checked :
    goodSegmentCheck 158 52 112
      { lower := 10845, upper := 10994, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good070_checked :
    goodSegmentCheck 158 52 112
      { lower := 10995, upper := 11150, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good071_checked :
    goodSegmentCheck 158 52 112
      { lower := 11151, upper := 11306, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good072_checked :
    goodSegmentCheck 158 52 112
      { lower := 11307, upper := 11456, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good073_checked :
    goodSegmentCheck 158 52 112
      { lower := 11457, upper := 11604, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good074_checked :
    goodSegmentCheck 158 52 112
      { lower := 11605, upper := 11754, witness := RowWitness.topPrime 11597 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good075_checked :
    goodSegmentCheck 158 52 112
      { lower := 11755, upper := 11900, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good076_checked :
    goodSegmentCheck 158 52 112
      { lower := 11901, upper := 12054, witness := RowWitness.topPrime 11897 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good077_checked :
    goodSegmentCheck 158 52 112
      { lower := 12055, upper := 12206, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good078_checked :
    goodSegmentCheck 158 52 112
      { lower := 12207, upper := 12360, witness := RowWitness.topPrime 12203 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good079_checked :
    goodSegmentCheck 158 52 112
      { lower := 12361, upper := 12504, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good080_checked :
    goodSegmentCheck 158 52 112
      { lower := 12505, upper := 12660, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good081_checked :
    goodSegmentCheck 158 52 112
      { lower := 12661, upper := 12816, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good082_checked :
    goodSegmentCheck 158 52 112
      { lower := 12817, upper := 12966, witness := RowWitness.topPrime 12809 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good083_checked :
    goodSegmentCheck 158 52 112
      { lower := 12967, upper := 13124, witness := RowWitness.topPrime 12967 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good084_checked :
    goodSegmentCheck 158 52 112
      { lower := 13125, upper := 13278, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good085_checked :
    goodSegmentCheck 158 52 112
      { lower := 13279, upper := 13424, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good086_checked :
    goodSegmentCheck 158 52 112
      { lower := 13425, upper := 13578, witness := RowWitness.topPrime 13421 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good087_checked :
    goodSegmentCheck 158 52 112
      { lower := 13579, upper := 13734, witness := RowWitness.topPrime 13577 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good088_checked :
    goodSegmentCheck 158 52 112
      { lower := 13735, upper := 13886, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good089_checked :
    goodSegmentCheck 158 52 112
      { lower := 13887, upper := 14040, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good090_checked :
    goodSegmentCheck 158 52 112
      { lower := 14041, upper := 14190, witness := RowWitness.topPrime 14033 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good091_checked :
    goodSegmentCheck 158 52 112
      { lower := 14191, upper := 14334, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good092_checked :
    goodSegmentCheck 158 52 112
      { lower := 14335, upper := 14484, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good093_checked :
    goodSegmentCheck 158 52 112
      { lower := 14485, upper := 14636, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good094_checked :
    goodSegmentCheck 158 52 112
      { lower := 14637, upper := 14790, witness := RowWitness.topPrime 14633 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good095_checked :
    goodSegmentCheck 158 52 112
      { lower := 14791, upper := 14940, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good096_checked :
    goodSegmentCheck 158 52 112
      { lower := 14941, upper := 15096, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good097_checked :
    goodSegmentCheck 158 52 112
      { lower := 15097, upper := 15248, witness := RowWitness.topPrime 15091 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good098_checked :
    goodSegmentCheck 158 52 112
      { lower := 15249, upper := 15398, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good099_checked :
    goodSegmentCheck 158 52 112
      { lower := 15399, upper := 15548, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good100_checked :
    goodSegmentCheck 158 52 112
      { lower := 15549, upper := 15698, witness := RowWitness.topPrime 15541 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good101_checked :
    goodSegmentCheck 158 52 112
      { lower := 15699, upper := 15840, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good102_checked :
    goodSegmentCheck 158 52 112
      { lower := 15841, upper := 15980, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good103_checked :
    goodSegmentCheck 158 52 112
      { lower := 15981, upper := 16130, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good104_checked :
    goodSegmentCheck 158 52 112
      { lower := 16131, upper := 16284, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good105_checked :
    goodSegmentCheck 158 52 112
      { lower := 16285, upper := 16430, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good106_checked :
    goodSegmentCheck 158 52 112
      { lower := 16431, upper := 16584, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good107_checked :
    goodSegmentCheck 158 52 112
      { lower := 16585, upper := 16730, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good108_checked :
    goodSegmentCheck 158 52 112
      { lower := 16731, upper := 16886, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good109_checked :
    goodSegmentCheck 158 52 112
      { lower := 16887, upper := 17040, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good110_checked :
    goodSegmentCheck 158 52 112
      { lower := 17041, upper := 17198, witness := RowWitness.topPrime 17041 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good111_checked :
    goodSegmentCheck 158 52 112
      { lower := 17199, upper := 17348, witness := RowWitness.topPrime 17191 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good112_checked :
    goodSegmentCheck 158 52 112
      { lower := 17349, upper := 17498, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good113_checked :
    goodSegmentCheck 158 52 112
      { lower := 17499, upper := 17654, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good114_checked :
    goodSegmentCheck 158 52 112
      { lower := 17655, upper := 17784, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good115_checked :
    goodSegmentCheck 158 52 112
      { lower := 17785, upper := 17940, witness := RowWitness.topPrime 17783 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good116_checked :
    goodSegmentCheck 158 52 112
      { lower := 17941, upper := 18096, witness := RowWitness.topPrime 17939 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good117_checked :
    goodSegmentCheck 158 52 112
      { lower := 18097, upper := 18254, witness := RowWitness.topPrime 18097 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good118_checked :
    goodSegmentCheck 158 52 112
      { lower := 18255, upper := 18410, witness := RowWitness.topPrime 18253 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good119_checked :
    goodSegmentCheck 158 52 112
      { lower := 18411, upper := 18558, witness := RowWitness.topPrime 18401 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good120_checked :
    goodSegmentCheck 158 52 112
      { lower := 18559, upper := 18710, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good121_checked :
    goodSegmentCheck 158 52 112
      { lower := 18711, upper := 18858, witness := RowWitness.topPrime 18701 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good122_checked :
    goodSegmentCheck 158 52 112
      { lower := 18859, upper := 19016, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good123_checked :
    goodSegmentCheck 158 52 112
      { lower := 19017, upper := 19170, witness := RowWitness.topPrime 19013 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good124_checked :
    goodSegmentCheck 158 52 112
      { lower := 19171, upper := 19320, witness := RowWitness.topPrime 19163 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good125_checked :
    goodSegmentCheck 158 52 112
      { lower := 19321, upper := 19476, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good126_checked :
    goodSegmentCheck 158 52 112
      { lower := 19477, upper := 19634, witness := RowWitness.topPrime 19477 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good127_checked :
    goodSegmentCheck 158 52 112
      { lower := 19635, upper := 19766, witness := RowWitness.topPrime 19609 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good128_checked :
    goodSegmentCheck 158 52 112
      { lower := 19767, upper := 19920, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good129_checked :
    goodSegmentCheck 158 52 112
      { lower := 19921, upper := 20076, witness := RowWitness.topPrime 19919 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good130_checked :
    goodSegmentCheck 158 52 112
      { lower := 20077, upper := 20228, witness := RowWitness.topPrime 20071 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good131_checked :
    goodSegmentCheck 158 52 112
      { lower := 20229, upper := 20376, witness := RowWitness.topPrime 20219 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good132_checked :
    goodSegmentCheck 158 52 112
      { lower := 20377, upper := 20526, witness := RowWitness.topPrime 20369 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good133_checked :
    goodSegmentCheck 158 52 112
      { lower := 20527, upper := 20678, witness := RowWitness.topPrime 20521 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good134_checked :
    goodSegmentCheck 158 52 112
      { lower := 20679, upper := 20820, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good135_checked :
    goodSegmentCheck 158 52 112
      { lower := 20821, upper := 20966, witness := RowWitness.topPrime 20809 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good136_checked :
    goodSegmentCheck 158 52 112
      { lower := 20967, upper := 21120, witness := RowWitness.topPrime 20963 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good137_checked :
    goodSegmentCheck 158 52 112
      { lower := 21121, upper := 21278, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good138_checked :
    goodSegmentCheck 158 52 112
      { lower := 21279, upper := 21434, witness := RowWitness.topPrime 21277 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good139_checked :
    goodSegmentCheck 158 52 112
      { lower := 21435, upper := 21590, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good140_checked :
    goodSegmentCheck 158 52 112
      { lower := 21591, upper := 21746, witness := RowWitness.topPrime 21589 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good141_checked :
    goodSegmentCheck 158 52 112
      { lower := 21747, upper := 21896, witness := RowWitness.topPrime 21739 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good142_checked :
    goodSegmentCheck 158 52 112
      { lower := 21897, upper := 22050, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good143_checked :
    goodSegmentCheck 158 52 112
      { lower := 22051, upper := 22208, witness := RowWitness.topPrime 22051 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good144_checked :
    goodSegmentCheck 158 52 112
      { lower := 22209, upper := 22350, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good145_checked :
    goodSegmentCheck 158 52 112
      { lower := 22351, upper := 22506, witness := RowWitness.topPrime 22349 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good146_checked :
    goodSegmentCheck 158 52 112
      { lower := 22507, upper := 22658, witness := RowWitness.topPrime 22501 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good147_checked :
    goodSegmentCheck 158 52 112
      { lower := 22659, upper := 22808, witness := RowWitness.topPrime 22651 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good148_checked :
    goodSegmentCheck 158 52 112
      { lower := 22809, upper := 22964, witness := RowWitness.topPrime 22807 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good149_checked :
    goodSegmentCheck 158 52 112
      { lower := 22965, upper := 23120, witness := RowWitness.topPrime 22963 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good150_checked :
    goodSegmentCheck 158 52 112
      { lower := 23121, upper := 23274, witness := RowWitness.topPrime 23117 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good151_checked :
    goodSegmentCheck 158 52 112
      { lower := 23275, upper := 23426, witness := RowWitness.topPrime 23269 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good152_checked :
    goodSegmentCheck 158 52 112
      { lower := 23427, upper := 23574, witness := RowWitness.topPrime 23417 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good153_checked :
    goodSegmentCheck 158 52 112
      { lower := 23575, upper := 23724, witness := RowWitness.topPrime 23567 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good154_checked :
    goodSegmentCheck 158 52 112
      { lower := 23725, upper := 23876, witness := RowWitness.topPrime 23719 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good155_checked :
    goodSegmentCheck 158 52 112
      { lower := 23877, upper := 24030, witness := RowWitness.topPrime 23873 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good156_checked :
    goodSegmentCheck 158 52 112
      { lower := 24031, upper := 24186, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good157_checked :
    goodSegmentCheck 158 52 112
      { lower := 24187, upper := 24338, witness := RowWitness.topPrime 24181 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good158_checked :
    goodSegmentCheck 158 52 112
      { lower := 24339, upper := 24494, witness := RowWitness.topPrime 24337 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good159_checked :
    goodSegmentCheck 158 52 112
      { lower := 24495, upper := 24638, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good160_checked :
    goodSegmentCheck 158 52 112
      { lower := 24639, upper := 24788, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good161_checked :
    goodSegmentCheck 158 52 112
      { lower := 24789, upper := 24805, witness := RowWitness.topPrime 24781 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good162_checked :
    goodSegmentCheck 158 52 112
      { lower := 25215, upper := 25346, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good163_checked :
    goodSegmentCheck 158 52 112
      { lower := 25347, upper := 25372, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good164_checked :
    goodSegmentCheck 158 52 112
      { lower := 26364, upper := 26401, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good165_checked :
    goodSegmentCheck 158 52 112
      { lower := 26411, upper := 26564, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good166_checked :
    goodSegmentCheck 158 52 112
      { lower := 26565, upper := 26568, witness := RowWitness.topPrime 26561 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good167_checked :
    goodSegmentCheck 158 52 112
      { lower := 26645, upper := 26665, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good168_checked :
    goodSegmentCheck 158 52 112
      { lower := 26934, upper := 27053, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good169_checked :
    goodSegmentCheck 158 52 112
      { lower := 27556, upper := 27593, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good170_checked :
    goodSegmentCheck 158 52 112
      { lower := 27848, upper := 27892, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good171_checked :
    goodSegmentCheck 158 52 112
      { lower := 28125, upper := 28280, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good172_checked :
    goodSegmentCheck 158 52 112
      { lower := 28281, upper := 28282, witness := RowWitness.topPrime 28279 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good173_checked :
    goodSegmentCheck 158 52 112
      { lower := 28561, upper := 28588, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good174_checked :
    goodSegmentCheck 158 52 112
      { lower := 28672, upper := 28826, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good175_checked :
    goodSegmentCheck 158 52 112
      { lower := 28827, upper := 28874, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good176_checked :
    goodSegmentCheck 158 52 112
      { lower := 29584, upper := 29635, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good177_checked :
    goodSegmentCheck 158 52 112
      { lower := 29791, upper := 29925, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good178_checked :
    goodSegmentCheck 158 52 112
      { lower := 30618, upper := 30750, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good179_checked :
    goodSegmentCheck 158 52 112
      { lower := 30751, upper := 30775, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good180_checked :
    goodSegmentCheck 158 52 112
      { lower := 30899, upper := 30915, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good181_checked :
    goodSegmentCheck 158 52 112
      { lower := 30926, upper := 31056, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good182_checked :
    goodSegmentCheck 158 52 112
      { lower := 31250, upper := 31406, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good183_checked :
    goodSegmentCheck 158 52 112
      { lower := 31407, upper := 31407, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good184_checked :
    goodSegmentCheck 158 52 112
      { lower := 31423, upper := 31486, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good185_checked :
    goodSegmentCheck 158 52 112
      { lower := 31827, upper := 31841, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good186_checked :
    goodSegmentCheck 158 52 112
      { lower := 31974, upper := 31984, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good187_checked :
    goodSegmentCheck 158 52 112
      { lower := 32805, upper := 32925, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good188_checked :
    goodSegmentCheck 158 52 112
      { lower := 32955, upper := 32962, witness := RowWitness.topPrime 32941 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good189_checked :
    goodSegmentCheck 158 52 112
      { lower := 33614, upper := 33646, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good190_checked :
    goodSegmentCheck 158 52 112
      { lower := 33708, upper := 33771, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good191_checked :
    goodSegmentCheck 158 52 112
      { lower := 34322, upper := 34476, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good192_checked :
    goodSegmentCheck 158 52 112
      { lower := 34477, upper := 34548, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good193_checked :
    goodSegmentCheck 158 52 112
      { lower := 35287, upper := 35309, witness := RowWitness.topPrime 35281 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good194_checked :
    goodSegmentCheck 158 52 112
      { lower := 35344, upper := 35444, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good195_checked :
    goodSegmentCheck 158 52 112
      { lower := 36015, upper := 36069, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good196_checked :
    goodSegmentCheck 158 52 112
      { lower := 36517, upper := 36654, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good197_checked :
    goodSegmentCheck 158 52 112
      { lower := 36655, upper := 36658, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good198_checked :
    goodSegmentCheck 158 52 112
      { lower := 37303, upper := 37367, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good199_checked :
    goodSegmentCheck 158 52 112
      { lower := 37538, upper := 37694, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good200_checked :
    goodSegmentCheck 158 52 112
      { lower := 37695, upper := 37695, witness := RowWitness.topPrime 37693 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good201_checked :
    goodSegmentCheck 158 52 112
      { lower := 38307, upper := 38460, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good202_checked :
    goodSegmentCheck 158 52 112
      { lower := 38461, upper := 38464, witness := RowWitness.topPrime 38461 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good203_checked :
    goodSegmentCheck 158 52 112
      { lower := 39326, upper := 39480, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good204_checked :
    goodSegmentCheck 158 52 112
      { lower := 39481, upper := 39483, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good205_checked :
    goodSegmentCheck 158 52 112
      { lower := 40401, upper := 40485, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good206_checked :
    goodSegmentCheck 158 52 112
      { lower := 40931, upper := 41084, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good207_checked :
    goodSegmentCheck 158 52 112
      { lower := 41085, upper := 41088, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good208_checked :
    goodSegmentCheck 158 52 112
      { lower := 44944, upper := 45047, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good209_checked :
    goodSegmentCheck 158 52 112
      { lower := 45369, upper := 45410, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good210_checked :
    goodSegmentCheck 158 52 112
      { lower := 45927, upper := 45953, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good211_checked :
    goodSegmentCheck 158 52 112
      { lower := 47526, upper := 47678, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good212_checked :
    goodSegmentCheck 158 52 112
      { lower := 47679, upper := 47681, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good213_checked :
    goodSegmentCheck 158 52 112
      { lower := 48013, upper := 48118, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good214_checked :
    goodSegmentCheck 158 52 112
      { lower := 48373, upper := 48380, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good215_checked :
    goodSegmentCheck 158 52 112
      { lower := 48387, upper := 48530, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good216_checked :
    goodSegmentCheck 158 52 112
      { lower := 48734, upper := 48890, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good217_checked :
    goodSegmentCheck 158 52 112
      { lower := 48891, upper := 48891, witness := RowWitness.topPrime 48889 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good218_checked :
    goodSegmentCheck 158 52 112
      { lower := 49152, upper := 49287, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good219_checked :
    goodSegmentCheck 158 52 112
      { lower := 49298, upper := 49309, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good220_checked :
    goodSegmentCheck 158 52 112
      { lower := 49379, upper := 49455, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good221_checked :
    goodSegmentCheck 158 52 112
      { lower := 50421, upper := 50567, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good222_checked :
    goodSegmentCheck 158 52 112
      { lower := 51076, upper := 51162, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good223_checked :
    goodSegmentCheck 158 52 112
      { lower := 55451, upper := 55598, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good224_checked :
    goodSegmentCheck 158 52 112
      { lower := 55599, upper := 55604, witness := RowWitness.topPrime 55589 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good225_checked :
    goodSegmentCheck 158 52 112
      { lower := 56454, upper := 56464, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good226_checked :
    goodSegmentCheck 158 52 112
      { lower := 57245, upper := 57279, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good227_checked :
    goodSegmentCheck 158 52 112
      { lower := 58619, upper := 58721, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good228_checked :
    goodSegmentCheck 158 52 112
      { lower := 59049, upper := 59113, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good229_checked :
    goodSegmentCheck 158 52 112
      { lower := 63948, upper := 64002, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good230_checked :
    goodSegmentCheck 158 52 112
      { lower := 65610, upper := 65693, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good231_checked :
    goodSegmentCheck 158 52 112
      { lower := 68644, upper := 68796, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good232_checked :
    goodSegmentCheck 158 52 112
      { lower := 68797, upper := 68801, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good233_checked :
    goodSegmentCheck 158 52 112
      { lower := 68921, upper := 69047, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good234_checked :
    goodSegmentCheck 158 52 112
      { lower := 71289, upper := 71444, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good235_checked :
    goodSegmentCheck 158 52 112
      { lower := 71445, upper := 71446, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good236_checked :
    goodSegmentCheck 158 52 112
      { lower := 73205, upper := 73324, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good237_checked :
    goodSegmentCheck 158 52 112
      { lower := 85805, upper := 85840, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good238_checked :
    goodSegmentCheck 158 52 112
      { lower := 89383, upper := 89530, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good239_checked :
    goodSegmentCheck 158 52 112
      { lower := 93845, upper := 93907, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_good240_checked :
    goodSegmentCheck 158 52 112
      { lower := 95052, upper := 95184, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good241_checked :
    goodSegmentCheck 158 52 112
      { lower := 95185, upper := 95205, witness := RowWitness.topPrime 95177 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good242_checked :
    goodSegmentCheck 158 52 112
      { lower := 98415, upper := 98461, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good243_checked :
    goodSegmentCheck 158 52 112
      { lower := 103041, upper := 103123, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good244_checked :
    goodSegmentCheck 158 52 112
      { lower := 109503, upper := 109532, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good245_checked :
    goodSegmentCheck 158 52 112
      { lower := 137842, upper := 137938, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good246_checked :
    goodSegmentCheck 158 52 112
      { lower := 148955, upper := 149034, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row158_good247_checked :
    goodSegmentCheck 158 52 112
      { lower := 154568, upper := 154606, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 158) (r := 52) (s := 112) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_good247_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_goods_checked :
    row158.goods.all (goodSegmentCheck row158.height.i row158.height.r row158.height.s) = true := by
  change row158_goods.all (goodSegmentCheck 158 52 112) = true
  simp only [row158_goods, List.all_cons, List.all_nil,
    row158_good000_checked,
    row158_good001_checked,
    row158_good002_checked,
    row158_good003_checked,
    row158_good004_checked,
    row158_good005_checked,
    row158_good006_checked,
    row158_good007_checked,
    row158_good008_checked,
    row158_good009_checked,
    row158_good010_checked,
    row158_good011_checked,
    row158_good012_checked,
    row158_good013_checked,
    row158_good014_checked,
    row158_good015_checked,
    row158_good016_checked,
    row158_good017_checked,
    row158_good018_checked,
    row158_good019_checked,
    row158_good020_checked,
    row158_good021_checked,
    row158_good022_checked,
    row158_good023_checked,
    row158_good024_checked,
    row158_good025_checked,
    row158_good026_checked,
    row158_good027_checked,
    row158_good028_checked,
    row158_good029_checked,
    row158_good030_checked,
    row158_good031_checked,
    row158_good032_checked,
    row158_good033_checked,
    row158_good034_checked,
    row158_good035_checked,
    row158_good036_checked,
    row158_good037_checked,
    row158_good038_checked,
    row158_good039_checked,
    row158_good040_checked,
    row158_good041_checked,
    row158_good042_checked,
    row158_good043_checked,
    row158_good044_checked,
    row158_good045_checked,
    row158_good046_checked,
    row158_good047_checked,
    row158_good048_checked,
    row158_good049_checked,
    row158_good050_checked,
    row158_good051_checked,
    row158_good052_checked,
    row158_good053_checked,
    row158_good054_checked,
    row158_good055_checked,
    row158_good056_checked,
    row158_good057_checked,
    row158_good058_checked,
    row158_good059_checked,
    row158_good060_checked,
    row158_good061_checked,
    row158_good062_checked,
    row158_good063_checked,
    row158_good064_checked,
    row158_good065_checked,
    row158_good066_checked,
    row158_good067_checked,
    row158_good068_checked,
    row158_good069_checked,
    row158_good070_checked,
    row158_good071_checked,
    row158_good072_checked,
    row158_good073_checked,
    row158_good074_checked,
    row158_good075_checked,
    row158_good076_checked,
    row158_good077_checked,
    row158_good078_checked,
    row158_good079_checked,
    row158_good080_checked,
    row158_good081_checked,
    row158_good082_checked,
    row158_good083_checked,
    row158_good084_checked,
    row158_good085_checked,
    row158_good086_checked,
    row158_good087_checked,
    row158_good088_checked,
    row158_good089_checked,
    row158_good090_checked,
    row158_good091_checked,
    row158_good092_checked,
    row158_good093_checked,
    row158_good094_checked,
    row158_good095_checked,
    row158_good096_checked,
    row158_good097_checked,
    row158_good098_checked,
    row158_good099_checked,
    row158_good100_checked,
    row158_good101_checked,
    row158_good102_checked,
    row158_good103_checked,
    row158_good104_checked,
    row158_good105_checked,
    row158_good106_checked,
    row158_good107_checked,
    row158_good108_checked,
    row158_good109_checked,
    row158_good110_checked,
    row158_good111_checked,
    row158_good112_checked,
    row158_good113_checked,
    row158_good114_checked,
    row158_good115_checked,
    row158_good116_checked,
    row158_good117_checked,
    row158_good118_checked,
    row158_good119_checked,
    row158_good120_checked,
    row158_good121_checked,
    row158_good122_checked,
    row158_good123_checked,
    row158_good124_checked,
    row158_good125_checked,
    row158_good126_checked,
    row158_good127_checked,
    row158_good128_checked,
    row158_good129_checked,
    row158_good130_checked,
    row158_good131_checked,
    row158_good132_checked,
    row158_good133_checked,
    row158_good134_checked,
    row158_good135_checked,
    row158_good136_checked,
    row158_good137_checked,
    row158_good138_checked,
    row158_good139_checked,
    row158_good140_checked,
    row158_good141_checked,
    row158_good142_checked,
    row158_good143_checked,
    row158_good144_checked,
    row158_good145_checked,
    row158_good146_checked,
    row158_good147_checked,
    row158_good148_checked,
    row158_good149_checked,
    row158_good150_checked,
    row158_good151_checked,
    row158_good152_checked,
    row158_good153_checked,
    row158_good154_checked,
    row158_good155_checked,
    row158_good156_checked,
    row158_good157_checked,
    row158_good158_checked,
    row158_good159_checked,
    row158_good160_checked,
    row158_good161_checked,
    row158_good162_checked,
    row158_good163_checked,
    row158_good164_checked,
    row158_good165_checked,
    row158_good166_checked,
    row158_good167_checked,
    row158_good168_checked,
    row158_good169_checked,
    row158_good170_checked,
    row158_good171_checked,
    row158_good172_checked,
    row158_good173_checked,
    row158_good174_checked,
    row158_good175_checked,
    row158_good176_checked,
    row158_good177_checked,
    row158_good178_checked,
    row158_good179_checked,
    row158_good180_checked,
    row158_good181_checked,
    row158_good182_checked,
    row158_good183_checked,
    row158_good184_checked,
    row158_good185_checked,
    row158_good186_checked,
    row158_good187_checked,
    row158_good188_checked,
    row158_good189_checked,
    row158_good190_checked,
    row158_good191_checked,
    row158_good192_checked,
    row158_good193_checked,
    row158_good194_checked,
    row158_good195_checked,
    row158_good196_checked,
    row158_good197_checked,
    row158_good198_checked,
    row158_good199_checked,
    row158_good200_checked,
    row158_good201_checked,
    row158_good202_checked,
    row158_good203_checked,
    row158_good204_checked,
    row158_good205_checked,
    row158_good206_checked,
    row158_good207_checked,
    row158_good208_checked,
    row158_good209_checked,
    row158_good210_checked,
    row158_good211_checked,
    row158_good212_checked,
    row158_good213_checked,
    row158_good214_checked,
    row158_good215_checked,
    row158_good216_checked,
    row158_good217_checked,
    row158_good218_checked,
    row158_good219_checked,
    row158_good220_checked,
    row158_good221_checked,
    row158_good222_checked,
    row158_good223_checked,
    row158_good224_checked,
    row158_good225_checked,
    row158_good226_checked,
    row158_good227_checked,
    row158_good228_checked,
    row158_good229_checked,
    row158_good230_checked,
    row158_good231_checked,
    row158_good232_checked,
    row158_good233_checked,
    row158_good234_checked,
    row158_good235_checked,
    row158_good236_checked,
    row158_good237_checked,
    row158_good238_checked,
    row158_good239_checked,
    row158_good240_checked,
    row158_good241_checked,
    row158_good242_checked,
    row158_good243_checked,
    row158_good244_checked,
    row158_good245_checked,
    row158_good246_checked,
    row158_good247_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_registered :
    decide (row158.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row158_small_checked :
    coverCheck (2 * row158.height.i + 2) (row158.height.i * (row158.height.i - 1) - 1)
      (row158.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row158_layerCover_checked :
    coverCheck (row158.height.i * (row158.height.i - 1)) (row158.height.n0 - 1)
      (row158.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row158_bounds : List NatInterval :=
  [(318, 474), (475, 624), (625, 776), (777, 930), (931, 1086), (1087, 1244), (1245, 1394), (1395, 1538), (1539, 1688), (1689, 1826), (1827, 1980), (1981, 2136), (2137, 2294), (2295, 2450), (2451, 2604), (2605, 2750), (2751, 2906), (2907, 3060), (3061, 3218), (3219, 3374), (3375, 3530), (3531, 3686), (3687, 3834), (3835, 3990), (3991, 4146), (4147, 4296), (4297, 4454), (4455, 4608), (4609, 4760), (4761, 4916), (4917, 5066), (5067, 5216), (5217, 5366), (5367, 5508), (5509, 5664), (5665, 5816), (5817, 5970), (5971, 6110), (6111, 6258), (6259, 6414), (6415, 6554), (6555, 6710), (6711, 6866), (6867, 7020), (7021, 7176), (7177, 7334), (7335, 7490), (7491, 7646), (7647, 7800), (7801, 7950), (7951, 8108), (8109, 8258), (8259, 8400), (8401, 8546), (8547, 8700), (8701, 8856), (8857, 9006), (9007, 9164), (9165, 9318), (9319, 9476), (9477, 9630), (9631, 9788), (9789, 9944), (9945, 10098), (10099, 10256), (10257, 10410), (10411, 10556), (10557, 10688), (10689, 10844), (10845, 10994), (10995, 11150), (11151, 11306), (11307, 11456), (11457, 11604), (11605, 11754), (11755, 11900), (11901, 12054), (12055, 12206), (12207, 12360), (12361, 12504), (12505, 12660), (12661, 12816), (12817, 12966), (12967, 13124), (13125, 13278), (13279, 13424), (13425, 13578), (13579, 13734), (13735, 13886), (13887, 14040), (14041, 14190), (14191, 14334), (14335, 14484), (14485, 14636), (14637, 14790), (14791, 14940), (14941, 15096), (15097, 15248), (15249, 15398), (15399, 15548), (15549, 15698), (15699, 15840), (15841, 15980), (15981, 16130), (16131, 16284), (16285, 16430), (16431, 16584), (16585, 16730), (16731, 16886), (16887, 17040), (17041, 17198), (17199, 17348), (17349, 17498), (17499, 17654), (17655, 17784), (17785, 17940), (17941, 18096), (18097, 18254), (18255, 18410), (18411, 18558), (18559, 18710), (18711, 18858), (18859, 19016), (19017, 19170), (19171, 19320), (19321, 19476), (19477, 19634), (19635, 19766), (19767, 19920), (19921, 20076), (20077, 20228), (20229, 20376), (20377, 20526), (20527, 20678), (20679, 20820), (20821, 20966), (20967, 21120), (21121, 21278), (21279, 21434), (21435, 21590), (21591, 21746), (21747, 21896), (21897, 22050), (22051, 22208), (22209, 22350), (22351, 22506), (22507, 22658), (22659, 22808), (22809, 22964), (22965, 23120), (23121, 23274), (23275, 23426), (23427, 23574), (23575, 23724), (23725, 23876), (23877, 24030), (24031, 24186), (24187, 24338), (24339, 24494), (24495, 24638), (24639, 24788), (24789, 24805), (25215, 25346), (25347, 25372), (26364, 26401), (26411, 26564), (26565, 26568), (26645, 26665), (26934, 27053), (27556, 27593), (27848, 27892), (28125, 28280), (28281, 28282), (28561, 28588), (28672, 28826), (28827, 28874), (29584, 29635), (29791, 29925), (30618, 30750), (30751, 30775), (30899, 30915), (30926, 31056), (31250, 31406), (31407, 31407), (31423, 31486), (31827, 31841), (31974, 31984), (32805, 32925), (32955, 32962), (33614, 33646), (33708, 33771), (34322, 34476), (34477, 34548), (35287, 35309), (35344, 35444), (36015, 36069), (36517, 36654), (36655, 36658), (37303, 37367), (37538, 37694), (37695, 37695), (38307, 38460), (38461, 38464), (39326, 39480), (39481, 39483), (40401, 40485), (40931, 41084), (41085, 41088), (44944, 45047), (45369, 45410), (45927, 45953), (47526, 47678), (47679, 47681), (48013, 48118), (48373, 48380), (48387, 48530), (48734, 48890), (48891, 48891), (49152, 49287), (49298, 49309), (49379, 49455), (50421, 50567), (51076, 51162), (55451, 55598), (55599, 55604), (56454, 56464), (57245, 57279), (58619, 58721), (59049, 59113), (63948, 64002), (65610, 65693), (68644, 68796), (68797, 68801), (68921, 69047), (71289, 71444), (71445, 71446), (73205, 73324), (85805, 85840), (89383, 89530), (93845, 93907), (95052, 95184), (95185, 95205), (98415, 98461), (103041, 103123), (109503, 109532), (137842, 137938), (148955, 149034), (154568, 154606)]

theorem row158_bounds_eq : row158.goods.map goodSegmentBounds = row158_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row158_layer000_intervals : List ColouredInterval :=
  [(2, 28672, 28829), (2, 32768, 32925), (2, 32768, 32925), (2, 40960, 41117), (2, 49152, 49309), (2, 32768, 32925), (2, 49152, 49309), (2, 32768, 32925), (3, 26244, 26401), (3, 28431, 28588), (3, 30618, 30775), (3, 32805, 32962), (3, 34992, 35149), (3, 26244, 26401), (3, 32805, 32962), (3, 39366, 39523), (3, 45927, 46084), (3, 39366, 39523), (5, 25000, 25157), (5, 28125, 28282), (5, 31250, 31407), (5, 34375, 34532), (5, 37500, 37657), (5, 40625, 40782), (5, 43750, 43907), (5, 46875, 47032), (5, 31250, 31407), (5, 46875, 47032), (7, 26411, 26568), (7, 28812, 28969), (7, 31213, 31370), (7, 33614, 33771), (7, 36015, 36172), (7, 38416, 38573), (7, 33614, 33771), (11, 29282, 29439), (11, 43923, 44080), (13, 26364, 26521), (13, 28561, 28718), (13, 30758, 30915), (13, 32955, 33112), (13, 35152, 35309), (13, 28561, 28718), (17, 29478, 29635), (17, 34391, 34548), (17, 39304, 39461), (17, 44217, 44374), (17, 49130, 49287), (19, 27436, 27593), (19, 34295, 34452), (19, 41154, 41311), (19, 48013, 48170), (23, 36501, 36658), (23, 48668, 48825), (29, 48778, 48935), (31, 29791, 29948), (41, 25215, 25372), (41, 26896, 27053), (43, 25886, 26043), (43, 27735, 27892), (43, 29584, 29741), (47, 26508, 26665), (47, 28717, 28874), (47, 30926, 31083), (47, 33135, 33292), (47, 35344, 35501), (53, 25281, 25438), (53, 28090, 28247), (53, 30899, 31056), (53, 33708, 33865), (53, 36517, 36674), (53, 39326, 39483), (53, 42135, 42292), (53, 44944, 45101), (59, 27848, 28005), (59, 31329, 31486), (59, 34810, 34967), (59, 38291, 38448), (59, 41772, 41929), (59, 45253, 45410), (59, 48734, 48891), (61, 26047, 26204), (61, 29768, 29925), (61, 33489, 33646), (61, 37210, 37367), (61, 40931, 41088), (61, 44652, 44809), (61, 48373, 48530), (67, 26934, 27091), (67, 31423, 31580), (67, 35912, 36069), (67, 40401, 40558), (67, 44890, 45047), (67, 49379, 49536), (71, 25205, 25362), (71, 30246, 30403), (71, 35287, 35444), (71, 40328, 40485), (71, 45369, 45526), (73, 26645, 26802), (73, 31974, 32131), (73, 37303, 37460), (73, 42632, 42789), (73, 47961, 48118), (83, 27556, 27713), (83, 34445, 34602), (83, 41334, 41491), (83, 48223, 48380), (89, 31684, 31841), (89, 39605, 39762), (89, 47526, 47683), (97, 28227, 28384), (97, 37636, 37793), (97, 47045, 47202), (101, 30603, 30760), (101, 40804, 40961), (103, 31827, 31984), (103, 42436, 42593), (107, 34347, 34504), (107, 45796, 45953), (109, 35643, 35800), (109, 47524, 47681), (113, 25538, 25695), (113, 38307, 38464), (127, 32258, 32415), (127, 48387, 48544), (131, 34322, 34479), (137, 37538, 37695), (139, 38642, 38799), (149, 44402, 44559), (151, 45602, 45759), (157, 24806, 24806), (157, 49298, 49455)]

def row158_layer000_block000 : List ColouredInterval :=
  [(2, 28672, 28829), (2, 32768, 32925), (2, 32768, 32925), (2, 40960, 41117), (2, 49152, 49309), (2, 32768, 32925), (2, 49152, 49309), (2, 32768, 32925), (3, 26244, 26401), (3, 28431, 28588), (3, 30618, 30775), (3, 32805, 32962), (3, 34992, 35149), (3, 26244, 26401), (3, 32805, 32962)]

def row158_layer000_block001 : List ColouredInterval :=
  [(3, 39366, 39523), (3, 45927, 46084), (3, 39366, 39523), (5, 25000, 25157), (5, 28125, 28282), (5, 31250, 31407), (5, 34375, 34532), (5, 37500, 37657), (5, 40625, 40782), (5, 43750, 43907), (5, 46875, 47032), (5, 31250, 31407), (5, 46875, 47032), (7, 26411, 26568), (7, 28812, 28969)]

def row158_layer000_block002 : List ColouredInterval :=
  [(7, 31213, 31370), (7, 33614, 33771), (7, 36015, 36172), (7, 38416, 38573), (7, 33614, 33771), (11, 29282, 29439), (11, 43923, 44080), (13, 26364, 26521), (13, 28561, 28718), (13, 30758, 30915), (13, 32955, 33112), (13, 35152, 35309), (13, 28561, 28718), (17, 29478, 29635), (17, 34391, 34548)]

def row158_layer000_block003 : List ColouredInterval :=
  [(17, 39304, 39461), (17, 44217, 44374), (17, 49130, 49287), (19, 27436, 27593), (19, 34295, 34452), (19, 41154, 41311), (19, 48013, 48170), (23, 36501, 36658), (23, 48668, 48825), (29, 48778, 48935), (31, 29791, 29948), (41, 25215, 25372), (41, 26896, 27053), (43, 25886, 26043), (43, 27735, 27892)]

def row158_layer000_block004 : List ColouredInterval :=
  [(43, 29584, 29741), (47, 26508, 26665), (47, 28717, 28874), (47, 30926, 31083), (47, 33135, 33292), (47, 35344, 35501), (53, 25281, 25438), (53, 28090, 28247), (53, 30899, 31056), (53, 33708, 33865), (53, 36517, 36674), (53, 39326, 39483), (53, 42135, 42292), (53, 44944, 45101), (59, 27848, 28005)]

def row158_layer000_block005 : List ColouredInterval :=
  [(59, 31329, 31486), (59, 34810, 34967), (59, 38291, 38448), (59, 41772, 41929), (59, 45253, 45410), (59, 48734, 48891), (61, 26047, 26204), (61, 29768, 29925), (61, 33489, 33646), (61, 37210, 37367), (61, 40931, 41088), (61, 44652, 44809), (61, 48373, 48530), (67, 26934, 27091), (67, 31423, 31580)]

def row158_layer000_block006 : List ColouredInterval :=
  [(67, 35912, 36069), (67, 40401, 40558), (67, 44890, 45047), (67, 49379, 49536), (71, 25205, 25362), (71, 30246, 30403), (71, 35287, 35444), (71, 40328, 40485), (71, 45369, 45526), (73, 26645, 26802), (73, 31974, 32131), (73, 37303, 37460), (73, 42632, 42789), (73, 47961, 48118), (83, 27556, 27713)]

def row158_layer000_block007 : List ColouredInterval :=
  [(83, 34445, 34602), (83, 41334, 41491), (83, 48223, 48380), (89, 31684, 31841), (89, 39605, 39762), (89, 47526, 47683), (97, 28227, 28384), (97, 37636, 37793), (97, 47045, 47202), (101, 30603, 30760), (101, 40804, 40961), (103, 31827, 31984), (103, 42436, 42593), (107, 34347, 34504), (107, 45796, 45953)]

def row158_layer000_block008 : List ColouredInterval :=
  [(109, 35643, 35800), (109, 47524, 47681), (113, 25538, 25695), (113, 38307, 38464), (127, 32258, 32415), (127, 48387, 48544), (131, 34322, 34479), (137, 37538, 37695), (139, 38642, 38799), (149, 44402, 44559), (151, 45602, 45759), (157, 24806, 24806), (157, 49298, 49455)]

def row158_layer000_chunks : List (List ColouredInterval) :=
  [row158_layer000_block000, row158_layer000_block001, row158_layer000_block002, row158_layer000_block003, row158_layer000_block004, row158_layer000_block005, row158_layer000_block006, row158_layer000_block007, row158_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_arithmetic : LayerArithmeticValid row158.height { lower := 24806, upper := 49612, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_enumeration :
    activePowerIntervalList 158 16 24806 49612 = row158_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_pairs000 :
    row158_layer000_block000.all (fun I => row158_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_pairs001 :
    row158_layer000_block001.all (fun I => row158_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_pairs002 :
    row158_layer000_block002.all (fun I => row158_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_pairs003 :
    row158_layer000_block003.all (fun I => row158_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_pairs004 :
    row158_layer000_block004.all (fun I => row158_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_pairs005 :
    row158_layer000_block005.all (fun I => row158_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_pairs006 :
    row158_layer000_block006.all (fun I => row158_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_pairs007 :
    row158_layer000_block007.all (fun I => row158_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_pairs008 :
    row158_layer000_block008.all (fun I => row158_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs008
