import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row129_height : HeightCertificateDatum := { i := 129, r := 42, s := 91, n0Power10 := 8 }

def row129_goods : List GoodSegment := [
  { lower := 260, upper := 385, witness := RowWitness.topPrime 257 },
  { lower := 386, upper := 511, witness := RowWitness.topPrime 383 },
  { lower := 512, upper := 637, witness := RowWitness.topPrime 509 },
  { lower := 638, upper := 759, witness := RowWitness.topPrime 631 },
  { lower := 760, upper := 885, witness := RowWitness.topPrime 757 },
  { lower := 886, upper := 1011, witness := RowWitness.topPrime 883 },
  { lower := 1012, upper := 1137, witness := RowWitness.topPrime 1009 },
  { lower := 1138, upper := 1257, witness := RowWitness.topPrime 1129 },
  { lower := 1258, upper := 1377, witness := RowWitness.topPrime 1249 },
  { lower := 1378, upper := 1501, witness := RowWitness.topPrime 1373 },
  { lower := 1502, upper := 1627, witness := RowWitness.topPrime 1499 },
  { lower := 1628, upper := 1755, witness := RowWitness.topPrime 1627 },
  { lower := 1756, upper := 1881, witness := RowWitness.topPrime 1753 },
  { lower := 1882, upper := 2007, witness := RowWitness.topPrime 1879 },
  { lower := 2008, upper := 2131, witness := RowWitness.topPrime 2003 },
  { lower := 2132, upper := 2259, witness := RowWitness.topPrime 2131 },
  { lower := 2260, upper := 2379, witness := RowWitness.topPrime 2251 },
  { lower := 2380, upper := 2505, witness := RowWitness.topPrime 2377 },
  { lower := 2506, upper := 2631, witness := RowWitness.topPrime 2503 },
  { lower := 2632, upper := 2749, witness := RowWitness.topPrime 2621 },
  { lower := 2750, upper := 2877, witness := RowWitness.topPrime 2749 },
  { lower := 2878, upper := 2989, witness := RowWitness.topPrime 2861 },
  { lower := 2990, upper := 3099, witness := RowWitness.topPrime 2971 },
  { lower := 3100, upper := 3217, witness := RowWitness.topPrime 3089 },
  { lower := 3218, upper := 3345, witness := RowWitness.topPrime 3217 },
  { lower := 3346, upper := 3471, witness := RowWitness.topPrime 3343 },
  { lower := 3472, upper := 3597, witness := RowWitness.topPrime 3469 },
  { lower := 3598, upper := 3721, witness := RowWitness.topPrime 3593 },
  { lower := 3722, upper := 3847, witness := RowWitness.topPrime 3719 },
  { lower := 3848, upper := 3975, witness := RowWitness.topPrime 3847 },
  { lower := 3976, upper := 4095, witness := RowWitness.topPrime 3967 },
  { lower := 4096, upper := 4221, witness := RowWitness.topPrime 4093 },
  { lower := 4222, upper := 4347, witness := RowWitness.topPrime 4219 },
  { lower := 4348, upper := 4467, witness := RowWitness.topPrime 4339 },
  { lower := 4468, upper := 4591, witness := RowWitness.topPrime 4463 },
  { lower := 4592, upper := 4719, witness := RowWitness.topPrime 4591 },
  { lower := 4720, upper := 4831, witness := RowWitness.topPrime 4703 },
  { lower := 4832, upper := 4959, witness := RowWitness.topPrime 4831 },
  { lower := 4960, upper := 5085, witness := RowWitness.topPrime 4957 },
  { lower := 5086, upper := 5209, witness := RowWitness.topPrime 5081 },
  { lower := 5210, upper := 5337, witness := RowWitness.topPrime 5209 },
  { lower := 5338, upper := 5461, witness := RowWitness.topPrime 5333 },
  { lower := 5462, upper := 5577, witness := RowWitness.topPrime 5449 },
  { lower := 5578, upper := 5701, witness := RowWitness.topPrime 5573 },
  { lower := 5702, upper := 5829, witness := RowWitness.topPrime 5701 },
  { lower := 5830, upper := 5955, witness := RowWitness.topPrime 5827 },
  { lower := 5956, upper := 6081, witness := RowWitness.topPrime 5953 },
  { lower := 6082, upper := 6207, witness := RowWitness.topPrime 6079 },
  { lower := 6208, upper := 6331, witness := RowWitness.topPrime 6203 },
  { lower := 6332, upper := 6457, witness := RowWitness.topPrime 6329 },
  { lower := 6458, upper := 6579, witness := RowWitness.topPrime 6451 },
  { lower := 6580, upper := 6705, witness := RowWitness.topPrime 6577 },
  { lower := 6706, upper := 6831, witness := RowWitness.topPrime 6703 },
  { lower := 6832, upper := 6957, witness := RowWitness.topPrime 6829 },
  { lower := 6958, upper := 7077, witness := RowWitness.topPrime 6949 },
  { lower := 7078, upper := 7197, witness := RowWitness.topPrime 7069 },
  { lower := 7198, upper := 7321, witness := RowWitness.topPrime 7193 },
  { lower := 7322, upper := 7449, witness := RowWitness.topPrime 7321 },
  { lower := 7450, upper := 7561, witness := RowWitness.topPrime 7433 },
  { lower := 7562, upper := 7689, witness := RowWitness.topPrime 7561 },
  { lower := 7690, upper := 7815, witness := RowWitness.topPrime 7687 },
  { lower := 7816, upper := 7921, witness := RowWitness.topPrime 7793 },
  { lower := 7922, upper := 8047, witness := RowWitness.topPrime 7919 },
  { lower := 8048, upper := 8167, witness := RowWitness.topPrime 8039 },
  { lower := 8168, upper := 8295, witness := RowWitness.topPrime 8167 },
  { lower := 8296, upper := 8421, witness := RowWitness.topPrime 8293 },
  { lower := 8422, upper := 8547, witness := RowWitness.topPrime 8419 },
  { lower := 8548, upper := 8671, witness := RowWitness.topPrime 8543 },
  { lower := 8672, upper := 8797, witness := RowWitness.topPrime 8669 },
  { lower := 8798, upper := 8911, witness := RowWitness.topPrime 8783 },
  { lower := 8912, upper := 9021, witness := RowWitness.topPrime 8893 },
  { lower := 9022, upper := 9141, witness := RowWitness.topPrime 9013 },
  { lower := 9142, upper := 9265, witness := RowWitness.topPrime 9137 },
  { lower := 9266, upper := 9385, witness := RowWitness.topPrime 9257 },
  { lower := 9386, upper := 9505, witness := RowWitness.topPrime 9377 },
  { lower := 9506, upper := 9625, witness := RowWitness.topPrime 9497 },
  { lower := 9626, upper := 9751, witness := RowWitness.topPrime 9623 },
  { lower := 9752, upper := 9877, witness := RowWitness.topPrime 9749 },
  { lower := 9878, upper := 9999, witness := RowWitness.topPrime 9871 },
  { lower := 10000, upper := 10101, witness := RowWitness.topPrime 9973 },
  { lower := 10102, upper := 10227, witness := RowWitness.topPrime 10099 },
  { lower := 10228, upper := 10351, witness := RowWitness.topPrime 10223 },
  { lower := 10352, upper := 10471, witness := RowWitness.topPrime 10343 },
  { lower := 10472, upper := 10591, witness := RowWitness.topPrime 10463 },
  { lower := 10592, upper := 10717, witness := RowWitness.topPrime 10589 },
  { lower := 10718, upper := 10839, witness := RowWitness.topPrime 10711 },
  { lower := 10840, upper := 10965, witness := RowWitness.topPrime 10837 },
  { lower := 10966, upper := 11085, witness := RowWitness.topPrime 10957 },
  { lower := 11086, upper := 11211, witness := RowWitness.topPrime 11083 },
  { lower := 11212, upper := 11325, witness := RowWitness.topPrime 11197 },
  { lower := 11326, upper := 11449, witness := RowWitness.topPrime 11321 },
  { lower := 11450, upper := 11575, witness := RowWitness.topPrime 11447 },
  { lower := 11576, upper := 11679, witness := RowWitness.topPrime 11551 },
  { lower := 11680, upper := 11805, witness := RowWitness.topPrime 11677 },
  { lower := 11806, upper := 11929, witness := RowWitness.topPrime 11801 },
  { lower := 11930, upper := 12055, witness := RowWitness.topPrime 11927 },
  { lower := 12056, upper := 12177, witness := RowWitness.topPrime 12049 },
  { lower := 12178, upper := 12291, witness := RowWitness.topPrime 12163 },
  { lower := 12292, upper := 12417, witness := RowWitness.topPrime 12289 },
  { lower := 12418, upper := 12541, witness := RowWitness.topPrime 12413 },
  { lower := 12542, upper := 12669, witness := RowWitness.topPrime 12541 },
  { lower := 12670, upper := 12787, witness := RowWitness.topPrime 12659 },
  { lower := 12788, upper := 12909, witness := RowWitness.topPrime 12781 },
  { lower := 12910, upper := 13035, witness := RowWitness.topPrime 12907 },
  { lower := 13036, upper := 13161, witness := RowWitness.topPrime 13033 },
  { lower := 13162, upper := 13287, witness := RowWitness.topPrime 13159 },
  { lower := 13288, upper := 13395, witness := RowWitness.topPrime 13267 },
  { lower := 13396, upper := 13509, witness := RowWitness.topPrime 13381 },
  { lower := 13510, upper := 13627, witness := RowWitness.topPrime 13499 },
  { lower := 13628, upper := 13755, witness := RowWitness.topPrime 13627 },
  { lower := 13756, upper := 13879, witness := RowWitness.topPrime 13751 },
  { lower := 13880, upper := 14007, witness := RowWitness.topPrime 13879 },
  { lower := 14008, upper := 14127, witness := RowWitness.topPrime 13999 },
  { lower := 14128, upper := 14235, witness := RowWitness.topPrime 14107 },
  { lower := 14236, upper := 14349, witness := RowWitness.topPrime 14221 },
  { lower := 14350, upper := 14475, witness := RowWitness.topPrime 14347 },
  { lower := 14476, upper := 14589, witness := RowWitness.topPrime 14461 },
  { lower := 14590, upper := 14691, witness := RowWitness.topPrime 14563 },
  { lower := 14692, upper := 14811, witness := RowWitness.topPrime 14683 },
  { lower := 14812, upper := 14925, witness := RowWitness.topPrime 14797 },
  { lower := 14926, upper := 15051, witness := RowWitness.topPrime 14923 },
  { lower := 15052, upper := 15159, witness := RowWitness.topPrime 15031 },
  { lower := 15160, upper := 15277, witness := RowWitness.topPrime 15149 },
  { lower := 15278, upper := 15405, witness := RowWitness.topPrime 15277 },
  { lower := 15406, upper := 15529, witness := RowWitness.topPrime 15401 },
  { lower := 15530, upper := 15655, witness := RowWitness.topPrime 15527 },
  { lower := 15656, upper := 15777, witness := RowWitness.topPrime 15649 },
  { lower := 15778, upper := 15901, witness := RowWitness.topPrime 15773 },
  { lower := 15902, upper := 16029, witness := RowWitness.topPrime 15901 },
  { lower := 16030, upper := 16135, witness := RowWitness.topPrime 16007 },
  { lower := 16136, upper := 16255, witness := RowWitness.topPrime 16127 },
  { lower := 16256, upper := 16381, witness := RowWitness.topPrime 16253 },
  { lower := 16382, upper := 16509, witness := RowWitness.topPrime 16381 },
  { lower := 16510, upper := 16512, witness := RowWitness.topPrime 16493 },
  { lower := 16810, upper := 16915, witness := RowWitness.topPrime 16787 },
  { lower := 16916, upper := 16938, witness := RowWitness.topPrime 16903 },
  { lower := 17405, upper := 17529, witness := RowWitness.topPrime 17401 },
  { lower := 17530, upper := 17533, witness := RowWitness.topPrime 17519 },
  { lower := 17672, upper := 17704, witness := RowWitness.topPrime 17669 },
  { lower := 17797, upper := 17800, witness := RowWitness.topPrime 17791 },
  { lower := 18491, upper := 18560, witness := RowWitness.topPrime 18481 },
  { lower := 18605, upper := 18619, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18745, witness := RowWitness.topPrime 18617 },
  { lower := 18746, upper := 18871, witness := RowWitness.topPrime 18743 },
  { lower := 18872, upper := 18878, witness := RowWitness.topPrime 18869 },
  { lower := 19208, upper := 19294, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19789, witness := RowWitness.topPrime 19661 },
  { lower := 19790, upper := 19811, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19901, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20009, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20289, witness := RowWitness.topPrime 20161 },
  { lower := 20290, upper := 20292, witness := RowWitness.topPrime 20287 },
  { lower := 20480, upper := 20530, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20661, witness := RowWitness.topPrime 20533 },
  { lower := 20662, upper := 20663, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20705, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21411, witness := RowWitness.topPrime 21283 },
  { lower := 21412, upper := 21424, witness := RowWitness.topPrime 21407 },
  { lower := 21875, upper := 21999, witness := RowWitness.topPrime 21871 },
  { lower := 22000, upper := 22032, witness := RowWitness.topPrime 21997 },
  { lower := 22090, upper := 22098, witness := RowWitness.topPrime 22079 },
  { lower := 22445, upper := 22454, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22597, witness := RowWitness.topPrime 22469 },
  { lower := 22598, upper := 22600, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22656, witness := RowWitness.topPrime 22621 },
  { lower := 23763, upper := 23889, witness := RowWitness.topPrime 23761 },
  { lower := 23890, upper := 23890, witness := RowWitness.topPrime 23887 },
  { lower := 24334, upper := 24457, witness := RowWitness.topPrime 24329 },
  { lower := 24458, upper := 24495, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24693, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25092, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25317, witness := RowWitness.topPrime 25189 },
  { lower := 25318, upper := 25343, witness := RowWitness.topPrime 25309 },
  { lower := 26364, upper := 26372, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26492, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26539, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26636, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26752, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27024, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27564, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28218, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28253, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28701, witness := RowWitness.topPrime 28573 },
  { lower := 28702, upper := 28705, witness := RowWitness.topPrime 28697 },
  { lower := 28717, upper := 28800, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28845, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29896, witness := RowWitness.topPrime 29789 },
  { lower := 30720, upper := 30731, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30848, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31027, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31321, witness := RowWitness.topPrime 31193 },
  { lower := 31322, upper := 31378, witness := RowWitness.topPrime 31321 },
  { lower := 31423, upper := 31457, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32896, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33617, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33742, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34465, witness := RowWitness.topPrime 34337 },
  { lower := 34466, upper := 34519, witness := RowWitness.topPrime 34457 },
  { lower := 36517, upper := 36625, witness := RowWitness.topPrime 36497 },
  { lower := 36626, upper := 36629, witness := RowWitness.topPrime 36607 },
  { lower := 37303, upper := 37338, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37574, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38419, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39432, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40456, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40932, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41059, witness := RowWitness.topPrime 40949 },
  { lower := 45369, upper := 45381, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47649, witness := RowWitness.topPrime 47521 },
  { lower := 47650, upper := 47652, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48089, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48501, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48796, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49258, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50538, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51133, witness := RowWitness.topPrime 51071 },
  { lower := 53290, upper := 53376, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55569, witness := RowWitness.topPrime 55441 },
  { lower := 55570, upper := 55575, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57250, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57373, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58692, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59084, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62538, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 63991, witness := RowWitness.topPrime 63863 },
  { lower := 63992, upper := 63997, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65649, witness := RowWitness.topPrime 65521 },
  { lower := 65650, upper := 65661, witness := RowWitness.topPrime 65647 },
  { lower := 68694, upper := 68718, witness := RowWitness.topPrime 68687 },
  { lower := 68921, upper := 69018, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71415, witness := RowWitness.topPrime 71287 },
  { lower := 71416, upper := 71417, witness := RowWitness.topPrime 71413 },
  { lower := 73205, upper := 73295, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89501, witness := RowWitness.topPrime 89381 },
  { lower := 109503, upper := 109503, witness := RowWitness.topPrime 109481 },
  { lower := 148955, upper := 149005, witness := RowWitness.topPrime 148949 }
]

def row129_layers : List CoverLayer := [
  { lower := 16512, upper := 33024, M := 17 },
  { lower := 33024, upper := 66048, M := 13 },
  { lower := 66048, upper := 132096, M := 10 },
  { lower := 132096, upper := 264192, M := 8 },
  { lower := 264192, upper := 528384, M := 6 },
  { lower := 528384, upper := 1056768, M := 5 },
  { lower := 1056768, upper := 2113536, M := 4 },
  { lower := 2113536, upper := 4227072, M := 3 },
  { lower := 4227072, upper := 8454144, M := 2 },
  { lower := 8454144, upper := 16908288, M := 2 },
  { lower := 16908288, upper := 33816576, M := 2 },
  { lower := 33816576, upper := 67633152, M := 1 },
  { lower := 67633152, upper := 100000000, M := 1 }
]

def row129 : FiniteCoverRow := {
  height := row129_height,
  goods := row129_goods,
  layers := row129_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good000_checked :
    goodSegmentCheck 129 42 91
      { lower := 260, upper := 385, witness := RowWitness.topPrime 257 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good001_checked :
    goodSegmentCheck 129 42 91
      { lower := 386, upper := 511, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good002_checked :
    goodSegmentCheck 129 42 91
      { lower := 512, upper := 637, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good003_checked :
    goodSegmentCheck 129 42 91
      { lower := 638, upper := 759, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good004_checked :
    goodSegmentCheck 129 42 91
      { lower := 760, upper := 885, witness := RowWitness.topPrime 757 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good005_checked :
    goodSegmentCheck 129 42 91
      { lower := 886, upper := 1011, witness := RowWitness.topPrime 883 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good006_checked :
    goodSegmentCheck 129 42 91
      { lower := 1012, upper := 1137, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good007_checked :
    goodSegmentCheck 129 42 91
      { lower := 1138, upper := 1257, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good008_checked :
    goodSegmentCheck 129 42 91
      { lower := 1258, upper := 1377, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good009_checked :
    goodSegmentCheck 129 42 91
      { lower := 1378, upper := 1501, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good010_checked :
    goodSegmentCheck 129 42 91
      { lower := 1502, upper := 1627, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good011_checked :
    goodSegmentCheck 129 42 91
      { lower := 1628, upper := 1755, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good012_checked :
    goodSegmentCheck 129 42 91
      { lower := 1756, upper := 1881, witness := RowWitness.topPrime 1753 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good013_checked :
    goodSegmentCheck 129 42 91
      { lower := 1882, upper := 2007, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good014_checked :
    goodSegmentCheck 129 42 91
      { lower := 2008, upper := 2131, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good015_checked :
    goodSegmentCheck 129 42 91
      { lower := 2132, upper := 2259, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good016_checked :
    goodSegmentCheck 129 42 91
      { lower := 2260, upper := 2379, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good017_checked :
    goodSegmentCheck 129 42 91
      { lower := 2380, upper := 2505, witness := RowWitness.topPrime 2377 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good018_checked :
    goodSegmentCheck 129 42 91
      { lower := 2506, upper := 2631, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good019_checked :
    goodSegmentCheck 129 42 91
      { lower := 2632, upper := 2749, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good020_checked :
    goodSegmentCheck 129 42 91
      { lower := 2750, upper := 2877, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good021_checked :
    goodSegmentCheck 129 42 91
      { lower := 2878, upper := 2989, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good022_checked :
    goodSegmentCheck 129 42 91
      { lower := 2990, upper := 3099, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good023_checked :
    goodSegmentCheck 129 42 91
      { lower := 3100, upper := 3217, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good024_checked :
    goodSegmentCheck 129 42 91
      { lower := 3218, upper := 3345, witness := RowWitness.topPrime 3217 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good025_checked :
    goodSegmentCheck 129 42 91
      { lower := 3346, upper := 3471, witness := RowWitness.topPrime 3343 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good026_checked :
    goodSegmentCheck 129 42 91
      { lower := 3472, upper := 3597, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good027_checked :
    goodSegmentCheck 129 42 91
      { lower := 3598, upper := 3721, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good028_checked :
    goodSegmentCheck 129 42 91
      { lower := 3722, upper := 3847, witness := RowWitness.topPrime 3719 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good029_checked :
    goodSegmentCheck 129 42 91
      { lower := 3848, upper := 3975, witness := RowWitness.topPrime 3847 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good030_checked :
    goodSegmentCheck 129 42 91
      { lower := 3976, upper := 4095, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good031_checked :
    goodSegmentCheck 129 42 91
      { lower := 4096, upper := 4221, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good032_checked :
    goodSegmentCheck 129 42 91
      { lower := 4222, upper := 4347, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good033_checked :
    goodSegmentCheck 129 42 91
      { lower := 4348, upper := 4467, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good034_checked :
    goodSegmentCheck 129 42 91
      { lower := 4468, upper := 4591, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good035_checked :
    goodSegmentCheck 129 42 91
      { lower := 4592, upper := 4719, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good036_checked :
    goodSegmentCheck 129 42 91
      { lower := 4720, upper := 4831, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good037_checked :
    goodSegmentCheck 129 42 91
      { lower := 4832, upper := 4959, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good038_checked :
    goodSegmentCheck 129 42 91
      { lower := 4960, upper := 5085, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good039_checked :
    goodSegmentCheck 129 42 91
      { lower := 5086, upper := 5209, witness := RowWitness.topPrime 5081 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good040_checked :
    goodSegmentCheck 129 42 91
      { lower := 5210, upper := 5337, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good041_checked :
    goodSegmentCheck 129 42 91
      { lower := 5338, upper := 5461, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good042_checked :
    goodSegmentCheck 129 42 91
      { lower := 5462, upper := 5577, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good043_checked :
    goodSegmentCheck 129 42 91
      { lower := 5578, upper := 5701, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good044_checked :
    goodSegmentCheck 129 42 91
      { lower := 5702, upper := 5829, witness := RowWitness.topPrime 5701 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good045_checked :
    goodSegmentCheck 129 42 91
      { lower := 5830, upper := 5955, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good046_checked :
    goodSegmentCheck 129 42 91
      { lower := 5956, upper := 6081, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good047_checked :
    goodSegmentCheck 129 42 91
      { lower := 6082, upper := 6207, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good048_checked :
    goodSegmentCheck 129 42 91
      { lower := 6208, upper := 6331, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good049_checked :
    goodSegmentCheck 129 42 91
      { lower := 6332, upper := 6457, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good050_checked :
    goodSegmentCheck 129 42 91
      { lower := 6458, upper := 6579, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good051_checked :
    goodSegmentCheck 129 42 91
      { lower := 6580, upper := 6705, witness := RowWitness.topPrime 6577 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good052_checked :
    goodSegmentCheck 129 42 91
      { lower := 6706, upper := 6831, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good053_checked :
    goodSegmentCheck 129 42 91
      { lower := 6832, upper := 6957, witness := RowWitness.topPrime 6829 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good054_checked :
    goodSegmentCheck 129 42 91
      { lower := 6958, upper := 7077, witness := RowWitness.topPrime 6949 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good055_checked :
    goodSegmentCheck 129 42 91
      { lower := 7078, upper := 7197, witness := RowWitness.topPrime 7069 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good056_checked :
    goodSegmentCheck 129 42 91
      { lower := 7198, upper := 7321, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good057_checked :
    goodSegmentCheck 129 42 91
      { lower := 7322, upper := 7449, witness := RowWitness.topPrime 7321 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good058_checked :
    goodSegmentCheck 129 42 91
      { lower := 7450, upper := 7561, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good059_checked :
    goodSegmentCheck 129 42 91
      { lower := 7562, upper := 7689, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good060_checked :
    goodSegmentCheck 129 42 91
      { lower := 7690, upper := 7815, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good061_checked :
    goodSegmentCheck 129 42 91
      { lower := 7816, upper := 7921, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good062_checked :
    goodSegmentCheck 129 42 91
      { lower := 7922, upper := 8047, witness := RowWitness.topPrime 7919 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good063_checked :
    goodSegmentCheck 129 42 91
      { lower := 8048, upper := 8167, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good064_checked :
    goodSegmentCheck 129 42 91
      { lower := 8168, upper := 8295, witness := RowWitness.topPrime 8167 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good065_checked :
    goodSegmentCheck 129 42 91
      { lower := 8296, upper := 8421, witness := RowWitness.topPrime 8293 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good066_checked :
    goodSegmentCheck 129 42 91
      { lower := 8422, upper := 8547, witness := RowWitness.topPrime 8419 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good067_checked :
    goodSegmentCheck 129 42 91
      { lower := 8548, upper := 8671, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good068_checked :
    goodSegmentCheck 129 42 91
      { lower := 8672, upper := 8797, witness := RowWitness.topPrime 8669 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good069_checked :
    goodSegmentCheck 129 42 91
      { lower := 8798, upper := 8911, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good070_checked :
    goodSegmentCheck 129 42 91
      { lower := 8912, upper := 9021, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good071_checked :
    goodSegmentCheck 129 42 91
      { lower := 9022, upper := 9141, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good072_checked :
    goodSegmentCheck 129 42 91
      { lower := 9142, upper := 9265, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good073_checked :
    goodSegmentCheck 129 42 91
      { lower := 9266, upper := 9385, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good074_checked :
    goodSegmentCheck 129 42 91
      { lower := 9386, upper := 9505, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good075_checked :
    goodSegmentCheck 129 42 91
      { lower := 9506, upper := 9625, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good076_checked :
    goodSegmentCheck 129 42 91
      { lower := 9626, upper := 9751, witness := RowWitness.topPrime 9623 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good077_checked :
    goodSegmentCheck 129 42 91
      { lower := 9752, upper := 9877, witness := RowWitness.topPrime 9749 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good078_checked :
    goodSegmentCheck 129 42 91
      { lower := 9878, upper := 9999, witness := RowWitness.topPrime 9871 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good079_checked :
    goodSegmentCheck 129 42 91
      { lower := 10000, upper := 10101, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good080_checked :
    goodSegmentCheck 129 42 91
      { lower := 10102, upper := 10227, witness := RowWitness.topPrime 10099 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good081_checked :
    goodSegmentCheck 129 42 91
      { lower := 10228, upper := 10351, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good082_checked :
    goodSegmentCheck 129 42 91
      { lower := 10352, upper := 10471, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good083_checked :
    goodSegmentCheck 129 42 91
      { lower := 10472, upper := 10591, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good084_checked :
    goodSegmentCheck 129 42 91
      { lower := 10592, upper := 10717, witness := RowWitness.topPrime 10589 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good085_checked :
    goodSegmentCheck 129 42 91
      { lower := 10718, upper := 10839, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good086_checked :
    goodSegmentCheck 129 42 91
      { lower := 10840, upper := 10965, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good087_checked :
    goodSegmentCheck 129 42 91
      { lower := 10966, upper := 11085, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good088_checked :
    goodSegmentCheck 129 42 91
      { lower := 11086, upper := 11211, witness := RowWitness.topPrime 11083 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good089_checked :
    goodSegmentCheck 129 42 91
      { lower := 11212, upper := 11325, witness := RowWitness.topPrime 11197 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good090_checked :
    goodSegmentCheck 129 42 91
      { lower := 11326, upper := 11449, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good091_checked :
    goodSegmentCheck 129 42 91
      { lower := 11450, upper := 11575, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good092_checked :
    goodSegmentCheck 129 42 91
      { lower := 11576, upper := 11679, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good093_checked :
    goodSegmentCheck 129 42 91
      { lower := 11680, upper := 11805, witness := RowWitness.topPrime 11677 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good094_checked :
    goodSegmentCheck 129 42 91
      { lower := 11806, upper := 11929, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good095_checked :
    goodSegmentCheck 129 42 91
      { lower := 11930, upper := 12055, witness := RowWitness.topPrime 11927 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good096_checked :
    goodSegmentCheck 129 42 91
      { lower := 12056, upper := 12177, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good097_checked :
    goodSegmentCheck 129 42 91
      { lower := 12178, upper := 12291, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good098_checked :
    goodSegmentCheck 129 42 91
      { lower := 12292, upper := 12417, witness := RowWitness.topPrime 12289 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good099_checked :
    goodSegmentCheck 129 42 91
      { lower := 12418, upper := 12541, witness := RowWitness.topPrime 12413 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good100_checked :
    goodSegmentCheck 129 42 91
      { lower := 12542, upper := 12669, witness := RowWitness.topPrime 12541 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good101_checked :
    goodSegmentCheck 129 42 91
      { lower := 12670, upper := 12787, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good102_checked :
    goodSegmentCheck 129 42 91
      { lower := 12788, upper := 12909, witness := RowWitness.topPrime 12781 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good103_checked :
    goodSegmentCheck 129 42 91
      { lower := 12910, upper := 13035, witness := RowWitness.topPrime 12907 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good104_checked :
    goodSegmentCheck 129 42 91
      { lower := 13036, upper := 13161, witness := RowWitness.topPrime 13033 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good105_checked :
    goodSegmentCheck 129 42 91
      { lower := 13162, upper := 13287, witness := RowWitness.topPrime 13159 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good106_checked :
    goodSegmentCheck 129 42 91
      { lower := 13288, upper := 13395, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good107_checked :
    goodSegmentCheck 129 42 91
      { lower := 13396, upper := 13509, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good108_checked :
    goodSegmentCheck 129 42 91
      { lower := 13510, upper := 13627, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good109_checked :
    goodSegmentCheck 129 42 91
      { lower := 13628, upper := 13755, witness := RowWitness.topPrime 13627 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good110_checked :
    goodSegmentCheck 129 42 91
      { lower := 13756, upper := 13879, witness := RowWitness.topPrime 13751 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good111_checked :
    goodSegmentCheck 129 42 91
      { lower := 13880, upper := 14007, witness := RowWitness.topPrime 13879 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good112_checked :
    goodSegmentCheck 129 42 91
      { lower := 14008, upper := 14127, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good113_checked :
    goodSegmentCheck 129 42 91
      { lower := 14128, upper := 14235, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good114_checked :
    goodSegmentCheck 129 42 91
      { lower := 14236, upper := 14349, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good115_checked :
    goodSegmentCheck 129 42 91
      { lower := 14350, upper := 14475, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good116_checked :
    goodSegmentCheck 129 42 91
      { lower := 14476, upper := 14589, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good117_checked :
    goodSegmentCheck 129 42 91
      { lower := 14590, upper := 14691, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good118_checked :
    goodSegmentCheck 129 42 91
      { lower := 14692, upper := 14811, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good119_checked :
    goodSegmentCheck 129 42 91
      { lower := 14812, upper := 14925, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good120_checked :
    goodSegmentCheck 129 42 91
      { lower := 14926, upper := 15051, witness := RowWitness.topPrime 14923 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good121_checked :
    goodSegmentCheck 129 42 91
      { lower := 15052, upper := 15159, witness := RowWitness.topPrime 15031 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good122_checked :
    goodSegmentCheck 129 42 91
      { lower := 15160, upper := 15277, witness := RowWitness.topPrime 15149 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good123_checked :
    goodSegmentCheck 129 42 91
      { lower := 15278, upper := 15405, witness := RowWitness.topPrime 15277 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good124_checked :
    goodSegmentCheck 129 42 91
      { lower := 15406, upper := 15529, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good125_checked :
    goodSegmentCheck 129 42 91
      { lower := 15530, upper := 15655, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good126_checked :
    goodSegmentCheck 129 42 91
      { lower := 15656, upper := 15777, witness := RowWitness.topPrime 15649 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good127_checked :
    goodSegmentCheck 129 42 91
      { lower := 15778, upper := 15901, witness := RowWitness.topPrime 15773 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good128_checked :
    goodSegmentCheck 129 42 91
      { lower := 15902, upper := 16029, witness := RowWitness.topPrime 15901 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good129_checked :
    goodSegmentCheck 129 42 91
      { lower := 16030, upper := 16135, witness := RowWitness.topPrime 16007 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good130_checked :
    goodSegmentCheck 129 42 91
      { lower := 16136, upper := 16255, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good131_checked :
    goodSegmentCheck 129 42 91
      { lower := 16256, upper := 16381, witness := RowWitness.topPrime 16253 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good132_checked :
    goodSegmentCheck 129 42 91
      { lower := 16382, upper := 16509, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good133_checked :
    goodSegmentCheck 129 42 91
      { lower := 16510, upper := 16512, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good134_checked :
    goodSegmentCheck 129 42 91
      { lower := 16810, upper := 16915, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good135_checked :
    goodSegmentCheck 129 42 91
      { lower := 16916, upper := 16938, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good136_checked :
    goodSegmentCheck 129 42 91
      { lower := 17405, upper := 17529, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good137_checked :
    goodSegmentCheck 129 42 91
      { lower := 17530, upper := 17533, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good138_checked :
    goodSegmentCheck 129 42 91
      { lower := 17672, upper := 17704, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good139_checked :
    goodSegmentCheck 129 42 91
      { lower := 17797, upper := 17800, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good140_checked :
    goodSegmentCheck 129 42 91
      { lower := 18491, upper := 18560, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good141_checked :
    goodSegmentCheck 129 42 91
      { lower := 18605, upper := 18619, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good142_checked :
    goodSegmentCheck 129 42 91
      { lower := 18634, upper := 18745, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good143_checked :
    goodSegmentCheck 129 42 91
      { lower := 18746, upper := 18871, witness := RowWitness.topPrime 18743 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good144_checked :
    goodSegmentCheck 129 42 91
      { lower := 18872, upper := 18878, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good145_checked :
    goodSegmentCheck 129 42 91
      { lower := 19208, upper := 19294, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good146_checked :
    goodSegmentCheck 129 42 91
      { lower := 19663, upper := 19789, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good147_checked :
    goodSegmentCheck 129 42 91
      { lower := 19790, upper := 19811, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good148_checked :
    goodSegmentCheck 129 42 91
      { lower := 19881, upper := 19901, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good149_checked :
    goodSegmentCheck 129 42 91
      { lower := 19965, upper := 20009, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good150_checked :
    goodSegmentCheck 129 42 91
      { lower := 20172, upper := 20289, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good151_checked :
    goodSegmentCheck 129 42 91
      { lower := 20290, upper := 20292, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good152_checked :
    goodSegmentCheck 129 42 91
      { lower := 20480, upper := 20530, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good153_checked :
    goodSegmentCheck 129 42 91
      { lower := 20535, upper := 20661, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good154_checked :
    goodSegmentCheck 129 42 91
      { lower := 20662, upper := 20663, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good155_checked :
    goodSegmentCheck 129 42 91
      { lower := 20667, upper := 20705, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good156_checked :
    goodSegmentCheck 129 42 91
      { lower := 21296, upper := 21411, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good157_checked :
    goodSegmentCheck 129 42 91
      { lower := 21412, upper := 21424, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good158_checked :
    goodSegmentCheck 129 42 91
      { lower := 21875, upper := 21999, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good159_checked :
    goodSegmentCheck 129 42 91
      { lower := 22000, upper := 22032, witness := RowWitness.topPrime 21997 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good160_checked :
    goodSegmentCheck 129 42 91
      { lower := 22090, upper := 22098, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good161_checked :
    goodSegmentCheck 129 42 91
      { lower := 22445, upper := 22454, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good162_checked :
    goodSegmentCheck 129 42 91
      { lower := 22472, upper := 22597, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good163_checked :
    goodSegmentCheck 129 42 91
      { lower := 22598, upper := 22600, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good164_checked :
    goodSegmentCheck 129 42 91
      { lower := 22627, upper := 22656, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good165_checked :
    goodSegmentCheck 129 42 91
      { lower := 23763, upper := 23889, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good166_checked :
    goodSegmentCheck 129 42 91
      { lower := 23890, upper := 23890, witness := RowWitness.topPrime 23887 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good167_checked :
    goodSegmentCheck 129 42 91
      { lower := 24334, upper := 24457, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good168_checked :
    goodSegmentCheck 129 42 91
      { lower := 24458, upper := 24495, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good169_checked :
    goodSegmentCheck 129 42 91
      { lower := 24576, upper := 24693, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good170_checked :
    goodSegmentCheck 129 42 91
      { lower := 25000, upper := 25092, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good171_checked :
    goodSegmentCheck 129 42 91
      { lower := 25215, upper := 25317, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good172_checked :
    goodSegmentCheck 129 42 91
      { lower := 25318, upper := 25343, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good173_checked :
    goodSegmentCheck 129 42 91
      { lower := 26364, upper := 26372, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good174_checked :
    goodSegmentCheck 129 42 91
      { lower := 26411, upper := 26492, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good175_checked :
    goodSegmentCheck 129 42 91
      { lower := 26508, upper := 26539, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good176_checked :
    goodSegmentCheck 129 42 91
      { lower := 26624, upper := 26636, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good177_checked :
    goodSegmentCheck 129 42 91
      { lower := 26645, upper := 26752, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good178_checked :
    goodSegmentCheck 129 42 91
      { lower := 26934, upper := 27024, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good179_checked :
    goodSegmentCheck 129 42 91
      { lower := 27556, upper := 27564, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good180_checked :
    goodSegmentCheck 129 42 91
      { lower := 28125, upper := 28218, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good181_checked :
    goodSegmentCheck 129 42 91
      { lower := 28227, upper := 28253, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good182_checked :
    goodSegmentCheck 129 42 91
      { lower := 28577, upper := 28701, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good183_checked :
    goodSegmentCheck 129 42 91
      { lower := 28702, upper := 28705, witness := RowWitness.topPrime 28697 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good184_checked :
    goodSegmentCheck 129 42 91
      { lower := 28717, upper := 28800, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good185_checked :
    goodSegmentCheck 129 42 91
      { lower := 28812, upper := 28845, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good186_checked :
    goodSegmentCheck 129 42 91
      { lower := 29791, upper := 29896, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good187_checked :
    goodSegmentCheck 129 42 91
      { lower := 30720, upper := 30731, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good188_checked :
    goodSegmentCheck 129 42 91
      { lower := 30758, upper := 30848, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good189_checked :
    goodSegmentCheck 129 42 91
      { lower := 30926, upper := 31027, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good190_checked :
    goodSegmentCheck 129 42 91
      { lower := 31213, upper := 31321, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good191_checked :
    goodSegmentCheck 129 42 91
      { lower := 31322, upper := 31378, witness := RowWitness.topPrime 31321 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good192_checked :
    goodSegmentCheck 129 42 91
      { lower := 31423, upper := 31457, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good193_checked :
    goodSegmentCheck 129 42 91
      { lower := 32805, upper := 32896, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good194_checked :
    goodSegmentCheck 129 42 91
      { lower := 33614, upper := 33617, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good195_checked :
    goodSegmentCheck 129 42 91
      { lower := 33708, upper := 33742, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good196_checked :
    goodSegmentCheck 129 42 91
      { lower := 34347, upper := 34465, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good197_checked :
    goodSegmentCheck 129 42 91
      { lower := 34466, upper := 34519, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good198_checked :
    goodSegmentCheck 129 42 91
      { lower := 36517, upper := 36625, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good199_checked :
    goodSegmentCheck 129 42 91
      { lower := 36626, upper := 36629, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good200_checked :
    goodSegmentCheck 129 42 91
      { lower := 37303, upper := 37338, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good201_checked :
    goodSegmentCheck 129 42 91
      { lower := 37500, upper := 37574, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good202_checked :
    goodSegmentCheck 129 42 91
      { lower := 38307, upper := 38419, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good203_checked :
    goodSegmentCheck 129 42 91
      { lower := 39366, upper := 39432, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good204_checked :
    goodSegmentCheck 129 42 91
      { lower := 40401, upper := 40456, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good205_checked :
    goodSegmentCheck 129 42 91
      { lower := 40931, upper := 40932, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good206_checked :
    goodSegmentCheck 129 42 91
      { lower := 40960, upper := 41059, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good207_checked :
    goodSegmentCheck 129 42 91
      { lower := 45369, upper := 45381, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good208_checked :
    goodSegmentCheck 129 42 91
      { lower := 47526, upper := 47649, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good209_checked :
    goodSegmentCheck 129 42 91
      { lower := 47650, upper := 47652, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good210_checked :
    goodSegmentCheck 129 42 91
      { lower := 48013, upper := 48089, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good211_checked :
    goodSegmentCheck 129 42 91
      { lower := 48387, upper := 48501, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good212_checked :
    goodSegmentCheck 129 42 91
      { lower := 48778, upper := 48796, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good213_checked :
    goodSegmentCheck 129 42 91
      { lower := 49152, upper := 49258, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good214_checked :
    goodSegmentCheck 129 42 91
      { lower := 50421, upper := 50538, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good215_checked :
    goodSegmentCheck 129 42 91
      { lower := 51076, upper := 51133, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good216_checked :
    goodSegmentCheck 129 42 91
      { lower := 53290, upper := 53376, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good217_checked :
    goodSegmentCheck 129 42 91
      { lower := 55451, upper := 55569, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good218_checked :
    goodSegmentCheck 129 42 91
      { lower := 55570, upper := 55575, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good219_checked :
    goodSegmentCheck 129 42 91
      { lower := 57245, upper := 57250, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good220_checked :
    goodSegmentCheck 129 42 91
      { lower := 57344, upper := 57373, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good221_checked :
    goodSegmentCheck 129 42 91
      { lower := 58619, upper := 58692, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good222_checked :
    goodSegmentCheck 129 42 91
      { lower := 59049, upper := 59084, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good223_checked :
    goodSegmentCheck 129 42 91
      { lower := 62500, upper := 62538, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_good224_checked :
    goodSegmentCheck 129 42 91
      { lower := 63869, upper := 63991, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good225_checked :
    goodSegmentCheck 129 42 91
      { lower := 63992, upper := 63997, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good226_checked :
    goodSegmentCheck 129 42 91
      { lower := 65536, upper := 65649, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good227_checked :
    goodSegmentCheck 129 42 91
      { lower := 65650, upper := 65661, witness := RowWitness.topPrime 65647 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good228_checked :
    goodSegmentCheck 129 42 91
      { lower := 68694, upper := 68718, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good229_checked :
    goodSegmentCheck 129 42 91
      { lower := 68921, upper := 69018, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good230_checked :
    goodSegmentCheck 129 42 91
      { lower := 71289, upper := 71415, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good231_checked :
    goodSegmentCheck 129 42 91
      { lower := 71416, upper := 71417, witness := RowWitness.topPrime 71413 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good232_checked :
    goodSegmentCheck 129 42 91
      { lower := 73205, upper := 73295, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good233_checked :
    goodSegmentCheck 129 42 91
      { lower := 89383, upper := 89501, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good234_checked :
    goodSegmentCheck 129 42 91
      { lower := 109503, upper := 109503, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row129_good235_checked :
    goodSegmentCheck 129 42 91
      { lower := 148955, upper := 149005, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 129) (r := 42) (s := 91) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_good235_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_goods_checked :
    row129.goods.all (goodSegmentCheck row129.height.i row129.height.r row129.height.s) = true := by
  change row129_goods.all (goodSegmentCheck 129 42 91) = true
  simp only [row129_goods, List.all_cons, List.all_nil,
    row129_good000_checked,
    row129_good001_checked,
    row129_good002_checked,
    row129_good003_checked,
    row129_good004_checked,
    row129_good005_checked,
    row129_good006_checked,
    row129_good007_checked,
    row129_good008_checked,
    row129_good009_checked,
    row129_good010_checked,
    row129_good011_checked,
    row129_good012_checked,
    row129_good013_checked,
    row129_good014_checked,
    row129_good015_checked,
    row129_good016_checked,
    row129_good017_checked,
    row129_good018_checked,
    row129_good019_checked,
    row129_good020_checked,
    row129_good021_checked,
    row129_good022_checked,
    row129_good023_checked,
    row129_good024_checked,
    row129_good025_checked,
    row129_good026_checked,
    row129_good027_checked,
    row129_good028_checked,
    row129_good029_checked,
    row129_good030_checked,
    row129_good031_checked,
    row129_good032_checked,
    row129_good033_checked,
    row129_good034_checked,
    row129_good035_checked,
    row129_good036_checked,
    row129_good037_checked,
    row129_good038_checked,
    row129_good039_checked,
    row129_good040_checked,
    row129_good041_checked,
    row129_good042_checked,
    row129_good043_checked,
    row129_good044_checked,
    row129_good045_checked,
    row129_good046_checked,
    row129_good047_checked,
    row129_good048_checked,
    row129_good049_checked,
    row129_good050_checked,
    row129_good051_checked,
    row129_good052_checked,
    row129_good053_checked,
    row129_good054_checked,
    row129_good055_checked,
    row129_good056_checked,
    row129_good057_checked,
    row129_good058_checked,
    row129_good059_checked,
    row129_good060_checked,
    row129_good061_checked,
    row129_good062_checked,
    row129_good063_checked,
    row129_good064_checked,
    row129_good065_checked,
    row129_good066_checked,
    row129_good067_checked,
    row129_good068_checked,
    row129_good069_checked,
    row129_good070_checked,
    row129_good071_checked,
    row129_good072_checked,
    row129_good073_checked,
    row129_good074_checked,
    row129_good075_checked,
    row129_good076_checked,
    row129_good077_checked,
    row129_good078_checked,
    row129_good079_checked,
    row129_good080_checked,
    row129_good081_checked,
    row129_good082_checked,
    row129_good083_checked,
    row129_good084_checked,
    row129_good085_checked,
    row129_good086_checked,
    row129_good087_checked,
    row129_good088_checked,
    row129_good089_checked,
    row129_good090_checked,
    row129_good091_checked,
    row129_good092_checked,
    row129_good093_checked,
    row129_good094_checked,
    row129_good095_checked,
    row129_good096_checked,
    row129_good097_checked,
    row129_good098_checked,
    row129_good099_checked,
    row129_good100_checked,
    row129_good101_checked,
    row129_good102_checked,
    row129_good103_checked,
    row129_good104_checked,
    row129_good105_checked,
    row129_good106_checked,
    row129_good107_checked,
    row129_good108_checked,
    row129_good109_checked,
    row129_good110_checked,
    row129_good111_checked,
    row129_good112_checked,
    row129_good113_checked,
    row129_good114_checked,
    row129_good115_checked,
    row129_good116_checked,
    row129_good117_checked,
    row129_good118_checked,
    row129_good119_checked,
    row129_good120_checked,
    row129_good121_checked,
    row129_good122_checked,
    row129_good123_checked,
    row129_good124_checked,
    row129_good125_checked,
    row129_good126_checked,
    row129_good127_checked,
    row129_good128_checked,
    row129_good129_checked,
    row129_good130_checked,
    row129_good131_checked,
    row129_good132_checked,
    row129_good133_checked,
    row129_good134_checked,
    row129_good135_checked,
    row129_good136_checked,
    row129_good137_checked,
    row129_good138_checked,
    row129_good139_checked,
    row129_good140_checked,
    row129_good141_checked,
    row129_good142_checked,
    row129_good143_checked,
    row129_good144_checked,
    row129_good145_checked,
    row129_good146_checked,
    row129_good147_checked,
    row129_good148_checked,
    row129_good149_checked,
    row129_good150_checked,
    row129_good151_checked,
    row129_good152_checked,
    row129_good153_checked,
    row129_good154_checked,
    row129_good155_checked,
    row129_good156_checked,
    row129_good157_checked,
    row129_good158_checked,
    row129_good159_checked,
    row129_good160_checked,
    row129_good161_checked,
    row129_good162_checked,
    row129_good163_checked,
    row129_good164_checked,
    row129_good165_checked,
    row129_good166_checked,
    row129_good167_checked,
    row129_good168_checked,
    row129_good169_checked,
    row129_good170_checked,
    row129_good171_checked,
    row129_good172_checked,
    row129_good173_checked,
    row129_good174_checked,
    row129_good175_checked,
    row129_good176_checked,
    row129_good177_checked,
    row129_good178_checked,
    row129_good179_checked,
    row129_good180_checked,
    row129_good181_checked,
    row129_good182_checked,
    row129_good183_checked,
    row129_good184_checked,
    row129_good185_checked,
    row129_good186_checked,
    row129_good187_checked,
    row129_good188_checked,
    row129_good189_checked,
    row129_good190_checked,
    row129_good191_checked,
    row129_good192_checked,
    row129_good193_checked,
    row129_good194_checked,
    row129_good195_checked,
    row129_good196_checked,
    row129_good197_checked,
    row129_good198_checked,
    row129_good199_checked,
    row129_good200_checked,
    row129_good201_checked,
    row129_good202_checked,
    row129_good203_checked,
    row129_good204_checked,
    row129_good205_checked,
    row129_good206_checked,
    row129_good207_checked,
    row129_good208_checked,
    row129_good209_checked,
    row129_good210_checked,
    row129_good211_checked,
    row129_good212_checked,
    row129_good213_checked,
    row129_good214_checked,
    row129_good215_checked,
    row129_good216_checked,
    row129_good217_checked,
    row129_good218_checked,
    row129_good219_checked,
    row129_good220_checked,
    row129_good221_checked,
    row129_good222_checked,
    row129_good223_checked,
    row129_good224_checked,
    row129_good225_checked,
    row129_good226_checked,
    row129_good227_checked,
    row129_good228_checked,
    row129_good229_checked,
    row129_good230_checked,
    row129_good231_checked,
    row129_good232_checked,
    row129_good233_checked,
    row129_good234_checked,
    row129_good235_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_registered :
    decide (row129.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row129_small_checked :
    coverCheck (2 * row129.height.i + 2) (row129.height.i * (row129.height.i - 1) - 1)
      (row129.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row129_layerCover_checked :
    coverCheck (row129.height.i * (row129.height.i - 1)) (row129.height.n0 - 1)
      (row129.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row129_bounds : List NatInterval :=
  [(260, 385), (386, 511), (512, 637), (638, 759), (760, 885), (886, 1011), (1012, 1137), (1138, 1257), (1258, 1377), (1378, 1501), (1502, 1627), (1628, 1755), (1756, 1881), (1882, 2007), (2008, 2131), (2132, 2259), (2260, 2379), (2380, 2505), (2506, 2631), (2632, 2749), (2750, 2877), (2878, 2989), (2990, 3099), (3100, 3217), (3218, 3345), (3346, 3471), (3472, 3597), (3598, 3721), (3722, 3847), (3848, 3975), (3976, 4095), (4096, 4221), (4222, 4347), (4348, 4467), (4468, 4591), (4592, 4719), (4720, 4831), (4832, 4959), (4960, 5085), (5086, 5209), (5210, 5337), (5338, 5461), (5462, 5577), (5578, 5701), (5702, 5829), (5830, 5955), (5956, 6081), (6082, 6207), (6208, 6331), (6332, 6457), (6458, 6579), (6580, 6705), (6706, 6831), (6832, 6957), (6958, 7077), (7078, 7197), (7198, 7321), (7322, 7449), (7450, 7561), (7562, 7689), (7690, 7815), (7816, 7921), (7922, 8047), (8048, 8167), (8168, 8295), (8296, 8421), (8422, 8547), (8548, 8671), (8672, 8797), (8798, 8911), (8912, 9021), (9022, 9141), (9142, 9265), (9266, 9385), (9386, 9505), (9506, 9625), (9626, 9751), (9752, 9877), (9878, 9999), (10000, 10101), (10102, 10227), (10228, 10351), (10352, 10471), (10472, 10591), (10592, 10717), (10718, 10839), (10840, 10965), (10966, 11085), (11086, 11211), (11212, 11325), (11326, 11449), (11450, 11575), (11576, 11679), (11680, 11805), (11806, 11929), (11930, 12055), (12056, 12177), (12178, 12291), (12292, 12417), (12418, 12541), (12542, 12669), (12670, 12787), (12788, 12909), (12910, 13035), (13036, 13161), (13162, 13287), (13288, 13395), (13396, 13509), (13510, 13627), (13628, 13755), (13756, 13879), (13880, 14007), (14008, 14127), (14128, 14235), (14236, 14349), (14350, 14475), (14476, 14589), (14590, 14691), (14692, 14811), (14812, 14925), (14926, 15051), (15052, 15159), (15160, 15277), (15278, 15405), (15406, 15529), (15530, 15655), (15656, 15777), (15778, 15901), (15902, 16029), (16030, 16135), (16136, 16255), (16256, 16381), (16382, 16509), (16510, 16512), (16810, 16915), (16916, 16938), (17405, 17529), (17530, 17533), (17672, 17704), (17797, 17800), (18491, 18560), (18605, 18619), (18634, 18745), (18746, 18871), (18872, 18878), (19208, 19294), (19663, 19789), (19790, 19811), (19881, 19901), (19965, 20009), (20172, 20289), (20290, 20292), (20480, 20530), (20535, 20661), (20662, 20663), (20667, 20705), (21296, 21411), (21412, 21424), (21875, 21999), (22000, 22032), (22090, 22098), (22445, 22454), (22472, 22597), (22598, 22600), (22627, 22656), (23763, 23889), (23890, 23890), (24334, 24457), (24458, 24495), (24576, 24693), (25000, 25092), (25215, 25317), (25318, 25343), (26364, 26372), (26411, 26492), (26508, 26539), (26624, 26636), (26645, 26752), (26934, 27024), (27556, 27564), (28125, 28218), (28227, 28253), (28577, 28701), (28702, 28705), (28717, 28800), (28812, 28845), (29791, 29896), (30720, 30731), (30758, 30848), (30926, 31027), (31213, 31321), (31322, 31378), (31423, 31457), (32805, 32896), (33614, 33617), (33708, 33742), (34347, 34465), (34466, 34519), (36517, 36625), (36626, 36629), (37303, 37338), (37500, 37574), (38307, 38419), (39366, 39432), (40401, 40456), (40931, 40932), (40960, 41059), (45369, 45381), (47526, 47649), (47650, 47652), (48013, 48089), (48387, 48501), (48778, 48796), (49152, 49258), (50421, 50538), (51076, 51133), (53290, 53376), (55451, 55569), (55570, 55575), (57245, 57250), (57344, 57373), (58619, 58692), (59049, 59084), (62500, 62538), (63869, 63991), (63992, 63997), (65536, 65649), (65650, 65661), (68694, 68718), (68921, 69018), (71289, 71415), (71416, 71417), (73205, 73295), (89383, 89501), (109503, 109503), (148955, 149005)]

theorem row129_bounds_eq : row129.goods.map goodSegmentBounds = row129_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row129_layer000_intervals : List ColouredInterval :=
  [(2, 16512, 16512), (2, 17408, 17536), (2, 16512, 16512), (2, 18432, 18560), (2, 20480, 20608), (2, 22528, 22656), (2, 24576, 24704), (2, 26624, 26752), (2, 28672, 28800), (2, 30720, 30848), (2, 32768, 32896), (2, 16512, 16512), (2, 20480, 20608), (2, 24576, 24704), (2, 28672, 28800), (2, 32768, 32896), (2, 16512, 16512), (2, 24576, 24704), (2, 32768, 32896), (2, 16512, 16512), (2, 32768, 32896), (2, 32768, 32896), (3, 19683, 19811), (3, 26244, 26372), (3, 32805, 32933), (3, 19683, 19811), (5, 18750, 18878), (5, 21875, 22003), (5, 25000, 25128), (5, 28125, 28253), (5, 31250, 31378), (5, 31250, 31378), (7, 16807, 16935), (7, 19208, 19336), (7, 21609, 21737), (7, 24010, 24138), (7, 26411, 26539), (7, 28812, 28940), (7, 31213, 31341), (7, 16807, 16935), (11, 17303, 17431), (11, 18634, 18762), (11, 19965, 20093), (11, 21296, 21424), (11, 22627, 22755), (11, 29282, 29410), (13, 17576, 17704), (13, 19773, 19901), (13, 21970, 22098), (13, 24167, 24295), (13, 26364, 26492), (13, 28561, 28689), (13, 30758, 30886), (13, 32955, 33023), (13, 28561, 28689), (17, 19652, 19780), (17, 24565, 24693), (17, 29478, 29606), (19, 20577, 20705), (19, 27436, 27564), (23, 24334, 24462), (29, 24389, 24517), (31, 29791, 29919), (37, 16512, 16556), (37, 17797, 17925), (37, 19166, 19294), (37, 20535, 20663), (37, 21904, 22032), (37, 23273, 23401), (41, 16810, 16938), (41, 18491, 18619), (41, 20172, 20300), (41, 21853, 21981), (41, 23534, 23662), (41, 25215, 25343), (41, 26896, 27024), (41, 28577, 28705), (47, 17672, 17800), (47, 19881, 20009), (47, 22090, 22218), (47, 24299, 24427), (47, 26508, 26636), (47, 28717, 28845), (47, 30926, 31054), (53, 16854, 16982), (53, 19663, 19791), (53, 22472, 22600), (53, 25281, 25409), (53, 28090, 28218), (53, 30899, 31027), (59, 17405, 17533), (59, 20886, 21014), (59, 24367, 24495), (59, 27848, 27976), (59, 31329, 31457), (61, 18605, 18733), (61, 22326, 22454), (61, 26047, 26175), (61, 29768, 29896), (67, 17956, 18084), (67, 22445, 22573), (67, 26934, 27062), (67, 31423, 31551), (71, 20164, 20292), (71, 25205, 25333), (71, 30246, 30374), (73, 21316, 21444), (73, 26645, 26773), (73, 31974, 32102), (79, 18723, 18851), (79, 24964, 25092), (79, 31205, 31333), (83, 20667, 20795), (83, 27556, 27684), (89, 23763, 23891), (89, 31684, 31812), (97, 18818, 18946), (97, 28227, 28355), (101, 20402, 20530), (101, 30603, 30731), (103, 21218, 21346), (103, 31827, 31955), (107, 22898, 23026), (109, 23762, 23890), (113, 25538, 25666), (127, 32258, 32386)]

def row129_layer000_block000 : List ColouredInterval :=
  [(2, 16512, 16512), (2, 17408, 17536), (2, 16512, 16512), (2, 18432, 18560), (2, 20480, 20608), (2, 22528, 22656), (2, 24576, 24704), (2, 26624, 26752), (2, 28672, 28800), (2, 30720, 30848), (2, 32768, 32896), (2, 16512, 16512), (2, 20480, 20608), (2, 24576, 24704), (2, 28672, 28800), (2, 32768, 32896)]

def row129_layer000_block001 : List ColouredInterval :=
  [(2, 16512, 16512), (2, 24576, 24704), (2, 32768, 32896), (2, 16512, 16512), (2, 32768, 32896), (2, 32768, 32896), (3, 19683, 19811), (3, 26244, 26372), (3, 32805, 32933), (3, 19683, 19811), (5, 18750, 18878), (5, 21875, 22003), (5, 25000, 25128), (5, 28125, 28253), (5, 31250, 31378), (5, 31250, 31378)]

def row129_layer000_block002 : List ColouredInterval :=
  [(7, 16807, 16935), (7, 19208, 19336), (7, 21609, 21737), (7, 24010, 24138), (7, 26411, 26539), (7, 28812, 28940), (7, 31213, 31341), (7, 16807, 16935), (11, 17303, 17431), (11, 18634, 18762), (11, 19965, 20093), (11, 21296, 21424), (11, 22627, 22755), (11, 29282, 29410), (13, 17576, 17704), (13, 19773, 19901)]

def row129_layer000_block003 : List ColouredInterval :=
  [(13, 21970, 22098), (13, 24167, 24295), (13, 26364, 26492), (13, 28561, 28689), (13, 30758, 30886), (13, 32955, 33023), (13, 28561, 28689), (17, 19652, 19780), (17, 24565, 24693), (17, 29478, 29606), (19, 20577, 20705), (19, 27436, 27564), (23, 24334, 24462), (29, 24389, 24517), (31, 29791, 29919), (37, 16512, 16556)]

def row129_layer000_block004 : List ColouredInterval :=
  [(37, 17797, 17925), (37, 19166, 19294), (37, 20535, 20663), (37, 21904, 22032), (37, 23273, 23401), (41, 16810, 16938), (41, 18491, 18619), (41, 20172, 20300), (41, 21853, 21981), (41, 23534, 23662), (41, 25215, 25343), (41, 26896, 27024), (41, 28577, 28705), (47, 17672, 17800), (47, 19881, 20009), (47, 22090, 22218)]

def row129_layer000_block005 : List ColouredInterval :=
  [(47, 24299, 24427), (47, 26508, 26636), (47, 28717, 28845), (47, 30926, 31054), (53, 16854, 16982), (53, 19663, 19791), (53, 22472, 22600), (53, 25281, 25409), (53, 28090, 28218), (53, 30899, 31027), (59, 17405, 17533), (59, 20886, 21014), (59, 24367, 24495), (59, 27848, 27976), (59, 31329, 31457), (61, 18605, 18733)]

def row129_layer000_block006 : List ColouredInterval :=
  [(61, 22326, 22454), (61, 26047, 26175), (61, 29768, 29896), (67, 17956, 18084), (67, 22445, 22573), (67, 26934, 27062), (67, 31423, 31551), (71, 20164, 20292), (71, 25205, 25333), (71, 30246, 30374), (73, 21316, 21444), (73, 26645, 26773), (73, 31974, 32102), (79, 18723, 18851), (79, 24964, 25092), (79, 31205, 31333)]

def row129_layer000_block007 : List ColouredInterval :=
  [(83, 20667, 20795), (83, 27556, 27684), (89, 23763, 23891), (89, 31684, 31812), (97, 18818, 18946), (97, 28227, 28355), (101, 20402, 20530), (101, 30603, 30731), (103, 21218, 21346), (103, 31827, 31955), (107, 22898, 23026), (109, 23762, 23890), (113, 25538, 25666), (127, 32258, 32386)]

def row129_layer000_chunks : List (List ColouredInterval) :=
  [row129_layer000_block000, row129_layer000_block001, row129_layer000_block002, row129_layer000_block003, row129_layer000_block004, row129_layer000_block005, row129_layer000_block006, row129_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_arithmetic : LayerArithmeticValid row129.height { lower := 16512, upper := 33024, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_enumeration :
    activePowerIntervalList 129 17 16512 33024 = row129_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_pairs000 :
    row129_layer000_block000.all (fun I => row129_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row129_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_pairs001 :
    row129_layer000_block001.all (fun I => row129_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row129_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_pairs002 :
    row129_layer000_block002.all (fun I => row129_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row129_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_pairs003 :
    row129_layer000_block003.all (fun I => row129_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row129_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_pairs004 :
    row129_layer000_block004.all (fun I => row129_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row129_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_pairs005 :
    row129_layer000_block005.all (fun I => row129_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row129_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_pairs006 :
    row129_layer000_block006.all (fun I => row129_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row129_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_pairs007 :
    row129_layer000_block007.all (fun I => row129_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row129_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_chunks_eq : row129_layer000_chunks.flatten = row129_layer000_intervals := by
  rfl

theorem row129_layer000_pairs : pairCoverCheck row129_layer000_intervals row129_bounds = true := by
  apply pairCoverCheck_of_chunks row129_layer000_chunks_eq
  intro block hblock
  simp only [row129_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row129_layer000_pairs000
  · exact row129_layer000_pairs001
  · exact row129_layer000_pairs002
  · exact row129_layer000_pairs003
  · exact row129_layer000_pairs004
  · exact row129_layer000_pairs005
  · exact row129_layer000_pairs006
  · exact row129_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer000_checked :
    coverLayerCheck row129.height row129.goods { lower := 16512, upper := 33024, M := 17 } = true := by
  exact coverLayerCheck_of_parts row129_layer000_arithmetic row129_layer000_enumeration row129_bounds_eq row129_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer000_checked
