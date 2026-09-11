import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row070_height : HeightCertificateDatum := { i := 70, r := 23, s := 48, n0Power10 := 11 }

def row070_goods : List GoodSegment := [
  { lower := 142, upper := 208, witness := RowWitness.topPrime 139 },
  { lower := 209, upper := 268, witness := RowWitness.topPrime 199 },
  { lower := 269, upper := 338, witness := RowWitness.topPrime 269 },
  { lower := 339, upper := 406, witness := RowWitness.topPrime 337 },
  { lower := 407, upper := 470, witness := RowWitness.topPrime 401 },
  { lower := 471, upper := 536, witness := RowWitness.topPrime 467 },
  { lower := 537, upper := 592, witness := RowWitness.topPrime 523 },
  { lower := 593, upper := 662, witness := RowWitness.topPrime 593 },
  { lower := 663, upper := 730, witness := RowWitness.topPrime 661 },
  { lower := 731, upper := 796, witness := RowWitness.topPrime 727 },
  { lower := 797, upper := 866, witness := RowWitness.topPrime 797 },
  { lower := 867, upper := 932, witness := RowWitness.topPrime 863 },
  { lower := 933, upper := 998, witness := RowWitness.topPrime 929 },
  { lower := 999, upper := 1066, witness := RowWitness.topPrime 997 },
  { lower := 1067, upper := 1132, witness := RowWitness.topPrime 1063 },
  { lower := 1133, upper := 1198, witness := RowWitness.topPrime 1129 },
  { lower := 1199, upper := 1262, witness := RowWitness.topPrime 1193 },
  { lower := 1263, upper := 1328, witness := RowWitness.topPrime 1259 },
  { lower := 1329, upper := 1396, witness := RowWitness.topPrime 1327 },
  { lower := 1397, upper := 1450, witness := RowWitness.topPrime 1381 },
  { lower := 1451, upper := 1520, witness := RowWitness.topPrime 1451 },
  { lower := 1521, upper := 1580, witness := RowWitness.topPrime 1511 },
  { lower := 1581, upper := 1648, witness := RowWitness.topPrime 1579 },
  { lower := 1649, upper := 1706, witness := RowWitness.topPrime 1637 },
  { lower := 1707, upper := 1768, witness := RowWitness.topPrime 1699 },
  { lower := 1769, upper := 1828, witness := RowWitness.topPrime 1759 },
  { lower := 1829, upper := 1892, witness := RowWitness.topPrime 1823 },
  { lower := 1893, upper := 1958, witness := RowWitness.topPrime 1889 },
  { lower := 1959, upper := 2020, witness := RowWitness.topPrime 1951 },
  { lower := 2021, upper := 2086, witness := RowWitness.topPrime 2017 },
  { lower := 2087, upper := 2156, witness := RowWitness.topPrime 2087 },
  { lower := 2157, upper := 2222, witness := RowWitness.topPrime 2153 },
  { lower := 2223, upper := 2290, witness := RowWitness.topPrime 2221 },
  { lower := 2291, upper := 2356, witness := RowWitness.topPrime 2287 },
  { lower := 2357, upper := 2426, witness := RowWitness.topPrime 2357 },
  { lower := 2427, upper := 2492, witness := RowWitness.topPrime 2423 },
  { lower := 2493, upper := 2546, witness := RowWitness.topPrime 2477 },
  { lower := 2547, upper := 2612, witness := RowWitness.topPrime 2543 },
  { lower := 2613, upper := 2678, witness := RowWitness.topPrime 2609 },
  { lower := 2679, upper := 2746, witness := RowWitness.topPrime 2677 },
  { lower := 2747, upper := 2810, witness := RowWitness.topPrime 2741 },
  { lower := 2811, upper := 2872, witness := RowWitness.topPrime 2803 },
  { lower := 2873, upper := 2930, witness := RowWitness.topPrime 2861 },
  { lower := 2931, upper := 2996, witness := RowWitness.topPrime 2927 },
  { lower := 2997, upper := 3040, witness := RowWitness.topPrime 2971 },
  { lower := 3041, upper := 3110, witness := RowWitness.topPrime 3041 },
  { lower := 3111, upper := 3178, witness := RowWitness.topPrime 3109 },
  { lower := 3179, upper := 3238, witness := RowWitness.topPrime 3169 },
  { lower := 3239, upper := 3298, witness := RowWitness.topPrime 3229 },
  { lower := 3299, upper := 3368, witness := RowWitness.topPrime 3299 },
  { lower := 3369, upper := 3430, witness := RowWitness.topPrime 3361 },
  { lower := 3431, upper := 3482, witness := RowWitness.topPrime 3413 },
  { lower := 3483, upper := 3538, witness := RowWitness.topPrime 3469 },
  { lower := 3539, upper := 3608, witness := RowWitness.topPrime 3539 },
  { lower := 3609, upper := 3676, witness := RowWitness.topPrime 3607 },
  { lower := 3677, upper := 3746, witness := RowWitness.topPrime 3677 },
  { lower := 3747, upper := 3808, witness := RowWitness.topPrime 3739 },
  { lower := 3809, upper := 3872, witness := RowWitness.topPrime 3803 },
  { lower := 3873, upper := 3932, witness := RowWitness.topPrime 3863 },
  { lower := 3933, upper := 4000, witness := RowWitness.topPrime 3931 },
  { lower := 4001, upper := 4070, witness := RowWitness.topPrime 4001 },
  { lower := 4071, upper := 4126, witness := RowWitness.topPrime 4057 },
  { lower := 4127, upper := 4196, witness := RowWitness.topPrime 4127 },
  { lower := 4197, upper := 4246, witness := RowWitness.topPrime 4177 },
  { lower := 4247, upper := 4312, witness := RowWitness.topPrime 4243 },
  { lower := 4313, upper := 4366, witness := RowWitness.topPrime 4297 },
  { lower := 4367, upper := 4432, witness := RowWitness.topPrime 4363 },
  { lower := 4433, upper := 4492, witness := RowWitness.topPrime 4423 },
  { lower := 4493, upper := 4562, witness := RowWitness.topPrime 4493 },
  { lower := 4563, upper := 4630, witness := RowWitness.topPrime 4561 },
  { lower := 4631, upper := 4690, witness := RowWitness.topPrime 4621 },
  { lower := 4691, upper := 4760, witness := RowWitness.topPrime 4691 },
  { lower := 4761, upper := 4828, witness := RowWitness.topPrime 4759 },
  { lower := 4829, upper := 4874, witness := RowWitness.topPrime 4817 },
  { lower := 4913, upper := 4929, witness := RowWitness.topPrime 4909 },
  { lower := 5046, upper := 5108, witness := RowWitness.topPrime 5039 },
  { lower := 5109, upper := 5172, witness := RowWitness.topPrime 5107 },
  { lower := 5324, upper := 5392, witness := RowWitness.topPrime 5323 },
  { lower := 5393, upper := 5393, witness := RowWitness.topPrime 5393 },
  { lower := 5415, upper := 5415, witness := RowWitness.topPrime 5413 },
  { lower := 5476, upper := 5484, witness := RowWitness.topPrime 5471 },
  { lower := 5491, upper := 5545, witness := RowWitness.topPrime 5483 },
  { lower := 5547, upper := 5560, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5616, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5660, witness := RowWitness.topPrime 5591 },
  { lower := 5661, upper := 5687, witness := RowWitness.topPrime 5659 },
  { lower := 5776, upper := 5818, witness := RowWitness.topPrime 5749 },
  { lower := 5819, upper := 5882, witness := RowWitness.topPrime 5813 },
  { lower := 5883, upper := 5901, witness := RowWitness.topPrime 5881 },
  { lower := 6075, upper := 6142, witness := RowWitness.topPrime 6073 },
  { lower := 6143, upper := 6206, witness := RowWitness.topPrime 6143 },
  { lower := 6318, upper := 6319, witness := RowWitness.topPrime 6317 },
  { lower := 6348, upper := 6412, witness := RowWitness.topPrime 6343 },
  { lower := 6413, upper := 6417, witness := RowWitness.topPrime 6397 },
  { lower := 6561, upper := 6567, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6650, witness := RowWitness.topPrime 6581 },
  { lower := 6651, upper := 6706, witness := RowWitness.topPrime 6637 },
  { lower := 6707, upper := 6725, witness := RowWitness.topPrime 6703 },
  { lower := 6727, upper := 6788, witness := RowWitness.topPrime 6719 },
  { lower := 6789, upper := 6796, witness := RowWitness.topPrime 6781 },
  { lower := 6859, upper := 6926, witness := RowWitness.topPrime 6857 },
  { lower := 6927, upper := 6928, witness := RowWitness.topPrime 6917 },
  { lower := 6936, upper := 6946, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7005, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7262, witness := RowWitness.topPrime 7193 },
  { lower := 7263, upper := 7294, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7462, witness := RowWitness.topPrime 7393 },
  { lower := 7463, upper := 7475, witness := RowWitness.topPrime 7459 },
  { lower := 7569, upper := 7630, witness := RowWitness.topPrime 7561 },
  { lower := 7631, upper := 7638, witness := RowWitness.topPrime 7621 },
  { lower := 7942, upper := 8006, witness := RowWitness.topPrime 7937 },
  { lower := 8007, upper := 8011, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8055, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8261, witness := RowWitness.topPrime 8209 },
  { lower := 8410, upper := 8458, witness := RowWitness.topPrime 8389 },
  { lower := 8459, upper := 8496, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8718, witness := RowWitness.topPrime 8663 },
  { lower := 8788, upper := 8817, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8857, witness := RowWitness.topPrime 8831 },
  { lower := 8993, upper := 9040, witness := RowWitness.topPrime 8971 },
  { lower := 9041, upper := 9062, witness := RowWitness.topPrime 9041 },
  { lower := 9245, upper := 9310, witness := RowWitness.topPrime 9241 },
  { lower := 9311, upper := 9314, witness := RowWitness.topPrime 9311 },
  { lower := 9317, upper := 9320, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9440, witness := RowWitness.topPrime 9371 },
  { lower := 9441, upper := 9444, witness := RowWitness.topPrime 9439 },
  { lower := 9522, upper := 9546, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9591, witness := RowWitness.topPrime 9551 },
  { lower := 9610, upper := 9652, witness := RowWitness.topPrime 9601 },
  { lower := 10086, upper := 10148, witness := RowWitness.topPrime 10079 },
  { lower := 10149, upper := 10155, witness := RowWitness.topPrime 10141 },
  { lower := 10240, upper := 10275, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10636, witness := RowWitness.topPrime 10567 },
  { lower := 10637, upper := 10640, witness := RowWitness.topPrime 10631 },
  { lower := 10648, upper := 10649, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10978, witness := RowWitness.topPrime 10909 },
  { lower := 10979, upper := 11021, witness := RowWitness.topPrime 10979 },
  { lower := 11045, upper := 11054, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11162, witness := RowWitness.topPrime 11093 },
  { lower := 11163, upper := 11178, witness := RowWitness.topPrime 11161 },
  { lower := 11264, upper := 11305, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11707, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11812, witness := RowWitness.topPrime 11743 },
  { lower := 11813, upper := 11836, witness := RowWitness.topPrime 11813 },
  { lower := 12321, upper := 12357, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12562, witness := RowWitness.topPrime 12497 },
  { lower := 13182, upper := 13191, witness := RowWitness.topPrime 13177 },
  { lower := 13310, upper := 13323, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13520, witness := RowWitness.topPrime 13451 },
  { lower := 13521, upper := 13525, witness := RowWitness.topPrime 13513 },
  { lower := 13718, upper := 13759, witness := RowWitness.topPrime 13711 },
  { lower := 14336, upper := 14366, witness := RowWitness.topPrime 14327 },
  { lower := 14641, upper := 14649, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14808, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15198, witness := RowWitness.topPrime 15137 },
  { lower := 15376, upper := 15442, witness := RowWitness.topPrime 15373 },
  { lower := 15443, upper := 15445, witness := RowWitness.topPrime 15443 },
  { lower := 15979, upper := 16042, witness := RowWitness.topPrime 15973 },
  { lower := 16043, upper := 16048, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16406, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16453, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16856, witness := RowWitness.topPrime 16787 },
  { lower := 16857, upper := 16889, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17367, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17730, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18550, witness := RowWitness.topPrime 18481 },
  { lower := 18551, upper := 18560, witness := RowWitness.topPrime 18541 },
  { lower := 18634, upper := 18674, witness := RowWitness.topPrime 18617 },
  { lower := 19220, upper := 19235, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19730, witness := RowWitness.topPrime 19661 },
  { lower := 19731, upper := 19732, witness := RowWitness.topPrime 19727 },
  { lower := 20535, upper := 20549, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20604, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21932, witness := RowWitness.topPrime 21863 },
  { lower := 21933, upper := 21939, witness := RowWitness.topPrime 21929 },
  { lower := 21970, upper := 21973, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22514, witness := RowWitness.topPrime 22469 },
  { lower := 24057, upper := 24106, witness := RowWitness.topPrime 24049 },
  { lower := 24334, upper := 24398, witness := RowWitness.topPrime 24329 },
  { lower := 24399, upper := 24436, witness := RowWitness.topPrime 24391 },
  { lower := 24576, upper := 24634, witness := RowWitness.topPrime 24571 },
  { lower := 24642, upper := 24645, witness := RowWitness.topPrime 24631 },
  { lower := 25281, upper := 25284, witness := RowWitness.topPrime 25261 },
  { lower := 25289, upper := 25330, witness := RowWitness.topPrime 25261 },
  { lower := 25331, upper := 25350, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26080, witness := RowWitness.topPrime 26041 },
  { lower := 26934, upper := 26965, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27449, witness := RowWitness.topPrime 27431 },
  { lower := 28577, upper := 28630, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28741, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29837, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 30968, witness := RowWitness.topPrime 30911 },
  { lower := 31433, upper := 31466, witness := RowWitness.topPrime 31397 },
  { lower := 31467, upper := 31467, witness := RowWitness.largeDivisor 2798656701357457678436843109913303816843855823880477072650687299911814046511338888456284682860073840428983839979918234078235327443742829462980863751776545113732968983530382988645710980901026076761 },
  { lower := 31468, upper := 31468, witness := RowWitness.largeDivisor 4207344213563753020497352330534676309403900968176516936851319890771305389624441627266499445836078903622170049516915105578726795528363240853290742429815799810765768582731420403530634107920575605939 },
  { lower := 31469, upper := 31492, witness := RowWitness.topPrime 31469 },
  { lower := 32805, upper := 32837, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33683, witness := RowWitness.topPrime 33619 },
  { lower := 35152, upper := 35200, witness := RowWitness.topPrime 35149 },
  { lower := 36517, upper := 36566, witness := RowWitness.topPrime 36497 },
  { lower := 36567, upper := 36570, witness := RowWitness.topPrime 36563 },
  { lower := 37210, upper := 37248, witness := RowWitness.topPrime 37201 },
  { lower := 39326, upper := 39392, witness := RowWitness.topPrime 39323 },
  { lower := 39393, upper := 39395, witness := RowWitness.topPrime 39383 },
  { lower := 40960, upper := 41000, witness := RowWitness.topPrime 40949 },
  { lower := 44944, upper := 44959, witness := RowWitness.topPrime 44939 },
  { lower := 48734, upper := 48737, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48803, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49199, witness := RowWitness.topPrime 49139 },
  { lower := 59582, upper := 59605, witness := RowWitness.topPrime 59581 },
  { lower := 73205, upper := 73236, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137850, witness := RowWitness.topPrime 137831 },
  { lower := 327701, upper := 327749, witness := RowWitness.topPrime 327689 }
]

def row070_layers : List CoverLayer := [
  { lower := 4830, upper := 9660, M := 27 },
  { lower := 9660, upper := 19320, M := 23 },
  { lower := 19320, upper := 38640, M := 20 },
  { lower := 38640, upper := 77280, M := 17 },
  { lower := 77280, upper := 154560, M := 15 },
  { lower := 154560, upper := 309120, M := 13 },
  { lower := 309120, upper := 618240, M := 11 },
  { lower := 618240, upper := 1236480, M := 10 },
  { lower := 1236480, upper := 2472960, M := 8 },
  { lower := 2472960, upper := 4945920, M := 7 },
  { lower := 4945920, upper := 9891840, M := 6 },
  { lower := 9891840, upper := 19783680, M := 5 },
  { lower := 19783680, upper := 39567360, M := 5 },
  { lower := 39567360, upper := 79134720, M := 4 },
  { lower := 79134720, upper := 158269440, M := 4 },
  { lower := 158269440, upper := 316538880, M := 3 },
  { lower := 316538880, upper := 633077760, M := 3 },
  { lower := 633077760, upper := 1266155520, M := 2 },
  { lower := 1266155520, upper := 2532311040, M := 2 },
  { lower := 2532311040, upper := 5064622080, M := 2 },
  { lower := 5064622080, upper := 10129244160, M := 2 },
  { lower := 10129244160, upper := 20258488320, M := 2 },
  { lower := 20258488320, upper := 40516976640, M := 1 },
  { lower := 40516976640, upper := 81033953280, M := 1 },
  { lower := 81033953280, upper := 100000000000, M := 1 }
]

def row070 : FiniteCoverRow := {
  height := row070_height,
  goods := row070_goods,
  layers := row070_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good000_checked :
    goodSegmentCheck 70 23 48
      { lower := 142, upper := 208, witness := RowWitness.topPrime 139 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good001_checked :
    goodSegmentCheck 70 23 48
      { lower := 209, upper := 268, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good002_checked :
    goodSegmentCheck 70 23 48
      { lower := 269, upper := 338, witness := RowWitness.topPrime 269 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good003_checked :
    goodSegmentCheck 70 23 48
      { lower := 339, upper := 406, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good004_checked :
    goodSegmentCheck 70 23 48
      { lower := 407, upper := 470, witness := RowWitness.topPrime 401 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good005_checked :
    goodSegmentCheck 70 23 48
      { lower := 471, upper := 536, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good006_checked :
    goodSegmentCheck 70 23 48
      { lower := 537, upper := 592, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good007_checked :
    goodSegmentCheck 70 23 48
      { lower := 593, upper := 662, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good008_checked :
    goodSegmentCheck 70 23 48
      { lower := 663, upper := 730, witness := RowWitness.topPrime 661 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good009_checked :
    goodSegmentCheck 70 23 48
      { lower := 731, upper := 796, witness := RowWitness.topPrime 727 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good010_checked :
    goodSegmentCheck 70 23 48
      { lower := 797, upper := 866, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good011_checked :
    goodSegmentCheck 70 23 48
      { lower := 867, upper := 932, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good012_checked :
    goodSegmentCheck 70 23 48
      { lower := 933, upper := 998, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good013_checked :
    goodSegmentCheck 70 23 48
      { lower := 999, upper := 1066, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good014_checked :
    goodSegmentCheck 70 23 48
      { lower := 1067, upper := 1132, witness := RowWitness.topPrime 1063 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good015_checked :
    goodSegmentCheck 70 23 48
      { lower := 1133, upper := 1198, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good016_checked :
    goodSegmentCheck 70 23 48
      { lower := 1199, upper := 1262, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good017_checked :
    goodSegmentCheck 70 23 48
      { lower := 1263, upper := 1328, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good018_checked :
    goodSegmentCheck 70 23 48
      { lower := 1329, upper := 1396, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good019_checked :
    goodSegmentCheck 70 23 48
      { lower := 1397, upper := 1450, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good020_checked :
    goodSegmentCheck 70 23 48
      { lower := 1451, upper := 1520, witness := RowWitness.topPrime 1451 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good021_checked :
    goodSegmentCheck 70 23 48
      { lower := 1521, upper := 1580, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good022_checked :
    goodSegmentCheck 70 23 48
      { lower := 1581, upper := 1648, witness := RowWitness.topPrime 1579 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good023_checked :
    goodSegmentCheck 70 23 48
      { lower := 1649, upper := 1706, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good024_checked :
    goodSegmentCheck 70 23 48
      { lower := 1707, upper := 1768, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good025_checked :
    goodSegmentCheck 70 23 48
      { lower := 1769, upper := 1828, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good026_checked :
    goodSegmentCheck 70 23 48
      { lower := 1829, upper := 1892, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good027_checked :
    goodSegmentCheck 70 23 48
      { lower := 1893, upper := 1958, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good028_checked :
    goodSegmentCheck 70 23 48
      { lower := 1959, upper := 2020, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good029_checked :
    goodSegmentCheck 70 23 48
      { lower := 2021, upper := 2086, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good030_checked :
    goodSegmentCheck 70 23 48
      { lower := 2087, upper := 2156, witness := RowWitness.topPrime 2087 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good031_checked :
    goodSegmentCheck 70 23 48
      { lower := 2157, upper := 2222, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good032_checked :
    goodSegmentCheck 70 23 48
      { lower := 2223, upper := 2290, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good033_checked :
    goodSegmentCheck 70 23 48
      { lower := 2291, upper := 2356, witness := RowWitness.topPrime 2287 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good034_checked :
    goodSegmentCheck 70 23 48
      { lower := 2357, upper := 2426, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good035_checked :
    goodSegmentCheck 70 23 48
      { lower := 2427, upper := 2492, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good036_checked :
    goodSegmentCheck 70 23 48
      { lower := 2493, upper := 2546, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good037_checked :
    goodSegmentCheck 70 23 48
      { lower := 2547, upper := 2612, witness := RowWitness.topPrime 2543 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good038_checked :
    goodSegmentCheck 70 23 48
      { lower := 2613, upper := 2678, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good039_checked :
    goodSegmentCheck 70 23 48
      { lower := 2679, upper := 2746, witness := RowWitness.topPrime 2677 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good040_checked :
    goodSegmentCheck 70 23 48
      { lower := 2747, upper := 2810, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good041_checked :
    goodSegmentCheck 70 23 48
      { lower := 2811, upper := 2872, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good042_checked :
    goodSegmentCheck 70 23 48
      { lower := 2873, upper := 2930, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good043_checked :
    goodSegmentCheck 70 23 48
      { lower := 2931, upper := 2996, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good044_checked :
    goodSegmentCheck 70 23 48
      { lower := 2997, upper := 3040, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good045_checked :
    goodSegmentCheck 70 23 48
      { lower := 3041, upper := 3110, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good046_checked :
    goodSegmentCheck 70 23 48
      { lower := 3111, upper := 3178, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good047_checked :
    goodSegmentCheck 70 23 48
      { lower := 3179, upper := 3238, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good048_checked :
    goodSegmentCheck 70 23 48
      { lower := 3239, upper := 3298, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good049_checked :
    goodSegmentCheck 70 23 48
      { lower := 3299, upper := 3368, witness := RowWitness.topPrime 3299 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good050_checked :
    goodSegmentCheck 70 23 48
      { lower := 3369, upper := 3430, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good051_checked :
    goodSegmentCheck 70 23 48
      { lower := 3431, upper := 3482, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good052_checked :
    goodSegmentCheck 70 23 48
      { lower := 3483, upper := 3538, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good053_checked :
    goodSegmentCheck 70 23 48
      { lower := 3539, upper := 3608, witness := RowWitness.topPrime 3539 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good054_checked :
    goodSegmentCheck 70 23 48
      { lower := 3609, upper := 3676, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good055_checked :
    goodSegmentCheck 70 23 48
      { lower := 3677, upper := 3746, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good056_checked :
    goodSegmentCheck 70 23 48
      { lower := 3747, upper := 3808, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good057_checked :
    goodSegmentCheck 70 23 48
      { lower := 3809, upper := 3872, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good058_checked :
    goodSegmentCheck 70 23 48
      { lower := 3873, upper := 3932, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good059_checked :
    goodSegmentCheck 70 23 48
      { lower := 3933, upper := 4000, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good060_checked :
    goodSegmentCheck 70 23 48
      { lower := 4001, upper := 4070, witness := RowWitness.topPrime 4001 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good061_checked :
    goodSegmentCheck 70 23 48
      { lower := 4071, upper := 4126, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good062_checked :
    goodSegmentCheck 70 23 48
      { lower := 4127, upper := 4196, witness := RowWitness.topPrime 4127 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good063_checked :
    goodSegmentCheck 70 23 48
      { lower := 4197, upper := 4246, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good064_checked :
    goodSegmentCheck 70 23 48
      { lower := 4247, upper := 4312, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good065_checked :
    goodSegmentCheck 70 23 48
      { lower := 4313, upper := 4366, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good066_checked :
    goodSegmentCheck 70 23 48
      { lower := 4367, upper := 4432, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good067_checked :
    goodSegmentCheck 70 23 48
      { lower := 4433, upper := 4492, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good068_checked :
    goodSegmentCheck 70 23 48
      { lower := 4493, upper := 4562, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good069_checked :
    goodSegmentCheck 70 23 48
      { lower := 4563, upper := 4630, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good070_checked :
    goodSegmentCheck 70 23 48
      { lower := 4631, upper := 4690, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good071_checked :
    goodSegmentCheck 70 23 48
      { lower := 4691, upper := 4760, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good072_checked :
    goodSegmentCheck 70 23 48
      { lower := 4761, upper := 4828, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good073_checked :
    goodSegmentCheck 70 23 48
      { lower := 4829, upper := 4874, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good074_checked :
    goodSegmentCheck 70 23 48
      { lower := 4913, upper := 4929, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good075_checked :
    goodSegmentCheck 70 23 48
      { lower := 5046, upper := 5108, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good076_checked :
    goodSegmentCheck 70 23 48
      { lower := 5109, upper := 5172, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good077_checked :
    goodSegmentCheck 70 23 48
      { lower := 5324, upper := 5392, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good078_checked :
    goodSegmentCheck 70 23 48
      { lower := 5393, upper := 5393, witness := RowWitness.topPrime 5393 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good079_checked :
    goodSegmentCheck 70 23 48
      { lower := 5415, upper := 5415, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good080_checked :
    goodSegmentCheck 70 23 48
      { lower := 5476, upper := 5484, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good081_checked :
    goodSegmentCheck 70 23 48
      { lower := 5491, upper := 5545, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good082_checked :
    goodSegmentCheck 70 23 48
      { lower := 5547, upper := 5560, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good083_checked :
    goodSegmentCheck 70 23 48
      { lower := 5589, upper := 5616, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good084_checked :
    goodSegmentCheck 70 23 48
      { lower := 5618, upper := 5660, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good085_checked :
    goodSegmentCheck 70 23 48
      { lower := 5661, upper := 5687, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good086_checked :
    goodSegmentCheck 70 23 48
      { lower := 5776, upper := 5818, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good087_checked :
    goodSegmentCheck 70 23 48
      { lower := 5819, upper := 5882, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good088_checked :
    goodSegmentCheck 70 23 48
      { lower := 5883, upper := 5901, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good089_checked :
    goodSegmentCheck 70 23 48
      { lower := 6075, upper := 6142, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good090_checked :
    goodSegmentCheck 70 23 48
      { lower := 6143, upper := 6206, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good091_checked :
    goodSegmentCheck 70 23 48
      { lower := 6318, upper := 6319, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good092_checked :
    goodSegmentCheck 70 23 48
      { lower := 6348, upper := 6412, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good093_checked :
    goodSegmentCheck 70 23 48
      { lower := 6413, upper := 6417, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good094_checked :
    goodSegmentCheck 70 23 48
      { lower := 6561, upper := 6567, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good095_checked :
    goodSegmentCheck 70 23 48
      { lower := 6591, upper := 6650, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good096_checked :
    goodSegmentCheck 70 23 48
      { lower := 6651, upper := 6706, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good097_checked :
    goodSegmentCheck 70 23 48
      { lower := 6707, upper := 6725, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good098_checked :
    goodSegmentCheck 70 23 48
      { lower := 6727, upper := 6788, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good099_checked :
    goodSegmentCheck 70 23 48
      { lower := 6789, upper := 6796, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good100_checked :
    goodSegmentCheck 70 23 48
      { lower := 6859, upper := 6926, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good101_checked :
    goodSegmentCheck 70 23 48
      { lower := 6927, upper := 6928, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good102_checked :
    goodSegmentCheck 70 23 48
      { lower := 6936, upper := 6946, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good103_checked :
    goodSegmentCheck 70 23 48
      { lower := 6962, upper := 7005, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good104_checked :
    goodSegmentCheck 70 23 48
      { lower := 7203, upper := 7262, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good105_checked :
    goodSegmentCheck 70 23 48
      { lower := 7263, upper := 7294, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good106_checked :
    goodSegmentCheck 70 23 48
      { lower := 7406, upper := 7462, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good107_checked :
    goodSegmentCheck 70 23 48
      { lower := 7463, upper := 7475, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good108_checked :
    goodSegmentCheck 70 23 48
      { lower := 7569, upper := 7630, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good109_checked :
    goodSegmentCheck 70 23 48
      { lower := 7631, upper := 7638, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good110_checked :
    goodSegmentCheck 70 23 48
      { lower := 7942, upper := 8006, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good111_checked :
    goodSegmentCheck 70 23 48
      { lower := 8007, upper := 8011, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good112_checked :
    goodSegmentCheck 70 23 48
      { lower := 8019, upper := 8055, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good113_checked :
    goodSegmentCheck 70 23 48
      { lower := 8214, upper := 8261, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good114_checked :
    goodSegmentCheck 70 23 48
      { lower := 8410, upper := 8458, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good115_checked :
    goodSegmentCheck 70 23 48
      { lower := 8459, upper := 8496, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good116_checked :
    goodSegmentCheck 70 23 48
      { lower := 8664, upper := 8718, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good117_checked :
    goodSegmentCheck 70 23 48
      { lower := 8788, upper := 8817, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good118_checked :
    goodSegmentCheck 70 23 48
      { lower := 8836, upper := 8857, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good119_checked :
    goodSegmentCheck 70 23 48
      { lower := 8993, upper := 9040, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good120_checked :
    goodSegmentCheck 70 23 48
      { lower := 9041, upper := 9062, witness := RowWitness.topPrime 9041 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good121_checked :
    goodSegmentCheck 70 23 48
      { lower := 9245, upper := 9310, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good122_checked :
    goodSegmentCheck 70 23 48
      { lower := 9311, upper := 9314, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good123_checked :
    goodSegmentCheck 70 23 48
      { lower := 9317, upper := 9320, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good124_checked :
    goodSegmentCheck 70 23 48
      { lower := 9375, upper := 9440, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good125_checked :
    goodSegmentCheck 70 23 48
      { lower := 9441, upper := 9444, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good126_checked :
    goodSegmentCheck 70 23 48
      { lower := 9522, upper := 9546, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good127_checked :
    goodSegmentCheck 70 23 48
      { lower := 9583, upper := 9591, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good128_checked :
    goodSegmentCheck 70 23 48
      { lower := 9610, upper := 9652, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good129_checked :
    goodSegmentCheck 70 23 48
      { lower := 10086, upper := 10148, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good130_checked :
    goodSegmentCheck 70 23 48
      { lower := 10149, upper := 10155, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good131_checked :
    goodSegmentCheck 70 23 48
      { lower := 10240, upper := 10275, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good132_checked :
    goodSegmentCheck 70 23 48
      { lower := 10580, upper := 10636, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good133_checked :
    goodSegmentCheck 70 23 48
      { lower := 10637, upper := 10640, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good134_checked :
    goodSegmentCheck 70 23 48
      { lower := 10648, upper := 10649, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good135_checked :
    goodSegmentCheck 70 23 48
      { lower := 10935, upper := 10978, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good136_checked :
    goodSegmentCheck 70 23 48
      { lower := 10979, upper := 11021, witness := RowWitness.topPrime 10979 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good137_checked :
    goodSegmentCheck 70 23 48
      { lower := 11045, upper := 11054, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good138_checked :
    goodSegmentCheck 70 23 48
      { lower := 11094, upper := 11162, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good139_checked :
    goodSegmentCheck 70 23 48
      { lower := 11163, upper := 11178, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good140_checked :
    goodSegmentCheck 70 23 48
      { lower := 11264, upper := 11305, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good141_checked :
    goodSegmentCheck 70 23 48
      { lower := 11664, upper := 11707, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good142_checked :
    goodSegmentCheck 70 23 48
      { lower := 11774, upper := 11812, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good143_checked :
    goodSegmentCheck 70 23 48
      { lower := 11813, upper := 11836, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good144_checked :
    goodSegmentCheck 70 23 48
      { lower := 12321, upper := 12357, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good145_checked :
    goodSegmentCheck 70 23 48
      { lower := 12500, upper := 12562, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good146_checked :
    goodSegmentCheck 70 23 48
      { lower := 13182, upper := 13191, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good147_checked :
    goodSegmentCheck 70 23 48
      { lower := 13310, upper := 13323, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good148_checked :
    goodSegmentCheck 70 23 48
      { lower := 13454, upper := 13520, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good149_checked :
    goodSegmentCheck 70 23 48
      { lower := 13521, upper := 13525, witness := RowWitness.topPrime 13513 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good150_checked :
    goodSegmentCheck 70 23 48
      { lower := 13718, upper := 13759, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good151_checked :
    goodSegmentCheck 70 23 48
      { lower := 14336, upper := 14366, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good152_checked :
    goodSegmentCheck 70 23 48
      { lower := 14641, upper := 14649, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good153_checked :
    goodSegmentCheck 70 23 48
      { lower := 14792, upper := 14808, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good154_checked :
    goodSegmentCheck 70 23 48
      { lower := 15138, upper := 15198, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good155_checked :
    goodSegmentCheck 70 23 48
      { lower := 15376, upper := 15442, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good156_checked :
    goodSegmentCheck 70 23 48
      { lower := 15443, upper := 15445, witness := RowWitness.topPrime 15443 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good157_checked :
    goodSegmentCheck 70 23 48
      { lower := 15979, upper := 16042, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good158_checked :
    goodSegmentCheck 70 23 48
      { lower := 16043, upper := 16048, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good159_checked :
    goodSegmentCheck 70 23 48
      { lower := 16384, upper := 16406, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good160_checked :
    goodSegmentCheck 70 23 48
      { lower := 16428, upper := 16453, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good161_checked :
    goodSegmentCheck 70 23 48
      { lower := 16807, upper := 16856, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good162_checked :
    goodSegmentCheck 70 23 48
      { lower := 16857, upper := 16889, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good163_checked :
    goodSegmentCheck 70 23 48
      { lower := 17303, upper := 17367, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good164_checked :
    goodSegmentCheck 70 23 48
      { lower := 17672, upper := 17730, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good165_checked :
    goodSegmentCheck 70 23 48
      { lower := 18490, upper := 18550, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good166_checked :
    goodSegmentCheck 70 23 48
      { lower := 18551, upper := 18560, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good167_checked :
    goodSegmentCheck 70 23 48
      { lower := 18634, upper := 18674, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good168_checked :
    goodSegmentCheck 70 23 48
      { lower := 19220, upper := 19235, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good169_checked :
    goodSegmentCheck 70 23 48
      { lower := 19663, upper := 19730, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good170_checked :
    goodSegmentCheck 70 23 48
      { lower := 19731, upper := 19732, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good171_checked :
    goodSegmentCheck 70 23 48
      { lower := 20535, upper := 20549, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good172_checked :
    goodSegmentCheck 70 23 48
      { lower := 20577, upper := 20604, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good173_checked :
    goodSegmentCheck 70 23 48
      { lower := 21870, upper := 21932, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good174_checked :
    goodSegmentCheck 70 23 48
      { lower := 21933, upper := 21939, witness := RowWitness.topPrime 21929 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good175_checked :
    goodSegmentCheck 70 23 48
      { lower := 21970, upper := 21973, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good176_checked :
    goodSegmentCheck 70 23 48
      { lower := 22472, upper := 22514, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good177_checked :
    goodSegmentCheck 70 23 48
      { lower := 24057, upper := 24106, witness := RowWitness.topPrime 24049 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good178_checked :
    goodSegmentCheck 70 23 48
      { lower := 24334, upper := 24398, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good179_checked :
    goodSegmentCheck 70 23 48
      { lower := 24399, upper := 24436, witness := RowWitness.topPrime 24391 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good180_checked :
    goodSegmentCheck 70 23 48
      { lower := 24576, upper := 24634, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good181_checked :
    goodSegmentCheck 70 23 48
      { lower := 24642, upper := 24645, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good182_checked :
    goodSegmentCheck 70 23 48
      { lower := 25281, upper := 25284, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good183_checked :
    goodSegmentCheck 70 23 48
      { lower := 25289, upper := 25330, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good184_checked :
    goodSegmentCheck 70 23 48
      { lower := 25331, upper := 25350, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good185_checked :
    goodSegmentCheck 70 23 48
      { lower := 26047, upper := 26080, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good186_checked :
    goodSegmentCheck 70 23 48
      { lower := 26934, upper := 26965, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good187_checked :
    goodSegmentCheck 70 23 48
      { lower := 27436, upper := 27449, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good188_checked :
    goodSegmentCheck 70 23 48
      { lower := 28577, upper := 28630, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good189_checked :
    goodSegmentCheck 70 23 48
      { lower := 28717, upper := 28741, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good190_checked :
    goodSegmentCheck 70 23 48
      { lower := 29791, upper := 29837, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good191_checked :
    goodSegmentCheck 70 23 48
      { lower := 30926, upper := 30968, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good192_checked :
    goodSegmentCheck 70 23 48
      { lower := 31433, upper := 31466, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good193_checked :
    goodSegmentCheck 70 23 48
      { lower := 31467, upper := 31467, witness := RowWitness.largeDivisor 2798656701357457678436843109913303816843855823880477072650687299911814046511338888456284682860073840428983839979918234078235327443742829462980863751776545113732968983530382988645710980901026076761 } = true := by
  decide +kernel

theorem row070_good194_checked :
    goodSegmentCheck 70 23 48
      { lower := 31468, upper := 31468, witness := RowWitness.largeDivisor 4207344213563753020497352330534676309403900968176516936851319890771305389624441627266499445836078903622170049516915105578726795528363240853290742429815799810765768582731420403530634107920575605939 } = true := by
  decide +kernel

theorem row070_good195_checked :
    goodSegmentCheck 70 23 48
      { lower := 31469, upper := 31492, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good196_checked :
    goodSegmentCheck 70 23 48
      { lower := 32805, upper := 32837, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good197_checked :
    goodSegmentCheck 70 23 48
      { lower := 33620, upper := 33683, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good198_checked :
    goodSegmentCheck 70 23 48
      { lower := 35152, upper := 35200, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good199_checked :
    goodSegmentCheck 70 23 48
      { lower := 36517, upper := 36566, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good200_checked :
    goodSegmentCheck 70 23 48
      { lower := 36567, upper := 36570, witness := RowWitness.topPrime 36563 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good201_checked :
    goodSegmentCheck 70 23 48
      { lower := 37210, upper := 37248, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good202_checked :
    goodSegmentCheck 70 23 48
      { lower := 39326, upper := 39392, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good203_checked :
    goodSegmentCheck 70 23 48
      { lower := 39393, upper := 39395, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good204_checked :
    goodSegmentCheck 70 23 48
      { lower := 40960, upper := 41000, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good205_checked :
    goodSegmentCheck 70 23 48
      { lower := 44944, upper := 44959, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good206_checked :
    goodSegmentCheck 70 23 48
      { lower := 48734, upper := 48737, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good207_checked :
    goodSegmentCheck 70 23 48
      { lower := 48778, upper := 48803, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good208_checked :
    goodSegmentCheck 70 23 48
      { lower := 49152, upper := 49199, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good209_checked :
    goodSegmentCheck 70 23 48
      { lower := 59582, upper := 59605, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good210_checked :
    goodSegmentCheck 70 23 48
      { lower := 73205, upper := 73236, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good211_checked :
    goodSegmentCheck 70 23 48
      { lower := 137842, upper := 137850, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good212_checked :
    goodSegmentCheck 70 23 48
      { lower := 327701, upper := 327749, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good212_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_goods_checked :
    row070.goods.all (goodSegmentCheck row070.height.i row070.height.r row070.height.s) = true := by
  change row070_goods.all (goodSegmentCheck 70 23 48) = true
  simp only [row070_goods, List.all_cons, List.all_nil,
    row070_good000_checked,
    row070_good001_checked,
    row070_good002_checked,
    row070_good003_checked,
    row070_good004_checked,
    row070_good005_checked,
    row070_good006_checked,
    row070_good007_checked,
    row070_good008_checked,
    row070_good009_checked,
    row070_good010_checked,
    row070_good011_checked,
    row070_good012_checked,
    row070_good013_checked,
    row070_good014_checked,
    row070_good015_checked,
    row070_good016_checked,
    row070_good017_checked,
    row070_good018_checked,
    row070_good019_checked,
    row070_good020_checked,
    row070_good021_checked,
    row070_good022_checked,
    row070_good023_checked,
    row070_good024_checked,
    row070_good025_checked,
    row070_good026_checked,
    row070_good027_checked,
    row070_good028_checked,
    row070_good029_checked,
    row070_good030_checked,
    row070_good031_checked,
    row070_good032_checked,
    row070_good033_checked,
    row070_good034_checked,
    row070_good035_checked,
    row070_good036_checked,
    row070_good037_checked,
    row070_good038_checked,
    row070_good039_checked,
    row070_good040_checked,
    row070_good041_checked,
    row070_good042_checked,
    row070_good043_checked,
    row070_good044_checked,
    row070_good045_checked,
    row070_good046_checked,
    row070_good047_checked,
    row070_good048_checked,
    row070_good049_checked,
    row070_good050_checked,
    row070_good051_checked,
    row070_good052_checked,
    row070_good053_checked,
    row070_good054_checked,
    row070_good055_checked,
    row070_good056_checked,
    row070_good057_checked,
    row070_good058_checked,
    row070_good059_checked,
    row070_good060_checked,
    row070_good061_checked,
    row070_good062_checked,
    row070_good063_checked,
    row070_good064_checked,
    row070_good065_checked,
    row070_good066_checked,
    row070_good067_checked,
    row070_good068_checked,
    row070_good069_checked,
    row070_good070_checked,
    row070_good071_checked,
    row070_good072_checked,
    row070_good073_checked,
    row070_good074_checked,
    row070_good075_checked,
    row070_good076_checked,
    row070_good077_checked,
    row070_good078_checked,
    row070_good079_checked,
    row070_good080_checked,
    row070_good081_checked,
    row070_good082_checked,
    row070_good083_checked,
    row070_good084_checked,
    row070_good085_checked,
    row070_good086_checked,
    row070_good087_checked,
    row070_good088_checked,
    row070_good089_checked,
    row070_good090_checked,
    row070_good091_checked,
    row070_good092_checked,
    row070_good093_checked,
    row070_good094_checked,
    row070_good095_checked,
    row070_good096_checked,
    row070_good097_checked,
    row070_good098_checked,
    row070_good099_checked,
    row070_good100_checked,
    row070_good101_checked,
    row070_good102_checked,
    row070_good103_checked,
    row070_good104_checked,
    row070_good105_checked,
    row070_good106_checked,
    row070_good107_checked,
    row070_good108_checked,
    row070_good109_checked,
    row070_good110_checked,
    row070_good111_checked,
    row070_good112_checked,
    row070_good113_checked,
    row070_good114_checked,
    row070_good115_checked,
    row070_good116_checked,
    row070_good117_checked,
    row070_good118_checked,
    row070_good119_checked,
    row070_good120_checked,
    row070_good121_checked,
    row070_good122_checked,
    row070_good123_checked,
    row070_good124_checked,
    row070_good125_checked,
    row070_good126_checked,
    row070_good127_checked,
    row070_good128_checked,
    row070_good129_checked,
    row070_good130_checked,
    row070_good131_checked,
    row070_good132_checked,
    row070_good133_checked,
    row070_good134_checked,
    row070_good135_checked,
    row070_good136_checked,
    row070_good137_checked,
    row070_good138_checked,
    row070_good139_checked,
    row070_good140_checked,
    row070_good141_checked,
    row070_good142_checked,
    row070_good143_checked,
    row070_good144_checked,
    row070_good145_checked,
    row070_good146_checked,
    row070_good147_checked,
    row070_good148_checked,
    row070_good149_checked,
    row070_good150_checked,
    row070_good151_checked,
    row070_good152_checked,
    row070_good153_checked,
    row070_good154_checked,
    row070_good155_checked,
    row070_good156_checked,
    row070_good157_checked,
    row070_good158_checked,
    row070_good159_checked,
    row070_good160_checked,
    row070_good161_checked,
    row070_good162_checked,
    row070_good163_checked,
    row070_good164_checked,
    row070_good165_checked,
    row070_good166_checked,
    row070_good167_checked,
    row070_good168_checked,
    row070_good169_checked,
    row070_good170_checked,
    row070_good171_checked,
    row070_good172_checked,
    row070_good173_checked,
    row070_good174_checked,
    row070_good175_checked,
    row070_good176_checked,
    row070_good177_checked,
    row070_good178_checked,
    row070_good179_checked,
    row070_good180_checked,
    row070_good181_checked,
    row070_good182_checked,
    row070_good183_checked,
    row070_good184_checked,
    row070_good185_checked,
    row070_good186_checked,
    row070_good187_checked,
    row070_good188_checked,
    row070_good189_checked,
    row070_good190_checked,
    row070_good191_checked,
    row070_good192_checked,
    row070_good193_checked,
    row070_good194_checked,
    row070_good195_checked,
    row070_good196_checked,
    row070_good197_checked,
    row070_good198_checked,
    row070_good199_checked,
    row070_good200_checked,
    row070_good201_checked,
    row070_good202_checked,
    row070_good203_checked,
    row070_good204_checked,
    row070_good205_checked,
    row070_good206_checked,
    row070_good207_checked,
    row070_good208_checked,
    row070_good209_checked,
    row070_good210_checked,
    row070_good211_checked,
    row070_good212_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_registered :
    decide (row070.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row070_small_checked :
    coverCheck (2 * row070.height.i + 2) (row070.height.i * (row070.height.i - 1) - 1)
      (row070.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row070_layerCover_checked :
    coverCheck (row070.height.i * (row070.height.i - 1)) (row070.height.n0 - 1)
      (row070.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row070_bounds : List NatInterval :=
  [(142, 208), (209, 268), (269, 338), (339, 406), (407, 470), (471, 536), (537, 592), (593, 662), (663, 730), (731, 796), (797, 866), (867, 932), (933, 998), (999, 1066), (1067, 1132), (1133, 1198), (1199, 1262), (1263, 1328), (1329, 1396), (1397, 1450), (1451, 1520), (1521, 1580), (1581, 1648), (1649, 1706), (1707, 1768), (1769, 1828), (1829, 1892), (1893, 1958), (1959, 2020), (2021, 2086), (2087, 2156), (2157, 2222), (2223, 2290), (2291, 2356), (2357, 2426), (2427, 2492), (2493, 2546), (2547, 2612), (2613, 2678), (2679, 2746), (2747, 2810), (2811, 2872), (2873, 2930), (2931, 2996), (2997, 3040), (3041, 3110), (3111, 3178), (3179, 3238), (3239, 3298), (3299, 3368), (3369, 3430), (3431, 3482), (3483, 3538), (3539, 3608), (3609, 3676), (3677, 3746), (3747, 3808), (3809, 3872), (3873, 3932), (3933, 4000), (4001, 4070), (4071, 4126), (4127, 4196), (4197, 4246), (4247, 4312), (4313, 4366), (4367, 4432), (4433, 4492), (4493, 4562), (4563, 4630), (4631, 4690), (4691, 4760), (4761, 4828), (4829, 4874), (4913, 4929), (5046, 5108), (5109, 5172), (5324, 5392), (5393, 5393), (5415, 5415), (5476, 5484), (5491, 5545), (5547, 5560), (5589, 5616), (5618, 5660), (5661, 5687), (5776, 5818), (5819, 5882), (5883, 5901), (6075, 6142), (6143, 6206), (6318, 6319), (6348, 6412), (6413, 6417), (6561, 6567), (6591, 6650), (6651, 6706), (6707, 6725), (6727, 6788), (6789, 6796), (6859, 6926), (6927, 6928), (6936, 6946), (6962, 7005), (7203, 7262), (7263, 7294), (7406, 7462), (7463, 7475), (7569, 7630), (7631, 7638), (7942, 8006), (8007, 8011), (8019, 8055), (8214, 8261), (8410, 8458), (8459, 8496), (8664, 8718), (8788, 8817), (8836, 8857), (8993, 9040), (9041, 9062), (9245, 9310), (9311, 9314), (9317, 9320), (9375, 9440), (9441, 9444), (9522, 9546), (9583, 9591), (9610, 9652), (10086, 10148), (10149, 10155), (10240, 10275), (10580, 10636), (10637, 10640), (10648, 10649), (10935, 10978), (10979, 11021), (11045, 11054), (11094, 11162), (11163, 11178), (11264, 11305), (11664, 11707), (11774, 11812), (11813, 11836), (12321, 12357), (12500, 12562), (13182, 13191), (13310, 13323), (13454, 13520), (13521, 13525), (13718, 13759), (14336, 14366), (14641, 14649), (14792, 14808), (15138, 15198), (15376, 15442), (15443, 15445), (15979, 16042), (16043, 16048), (16384, 16406), (16428, 16453), (16807, 16856), (16857, 16889), (17303, 17367), (17672, 17730), (18490, 18550), (18551, 18560), (18634, 18674), (19220, 19235), (19663, 19730), (19731, 19732), (20535, 20549), (20577, 20604), (21870, 21932), (21933, 21939), (21970, 21973), (22472, 22514), (24057, 24106), (24334, 24398), (24399, 24436), (24576, 24634), (24642, 24645), (25281, 25284), (25289, 25330), (25331, 25350), (26047, 26080), (26934, 26965), (27436, 27449), (28577, 28630), (28717, 28741), (29791, 29837), (30926, 30968), (31433, 31466), (31467, 31467), (31468, 31468), (31469, 31492), (32805, 32837), (33620, 33683), (35152, 35200), (36517, 36566), (36567, 36570), (37210, 37248), (39326, 39392), (39393, 39395), (40960, 41000), (44944, 44959), (48734, 48737), (48778, 48803), (49152, 49199), (59582, 59605), (73205, 73236), (137842, 137850), (327701, 327749)]

theorem row070_bounds_eq : row070.goods.map goodSegmentBounds = row070_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row070_layer000_intervals : List ColouredInterval :=
  [(2, 5120, 5189), (2, 5632, 5701), (2, 6144, 6213), (2, 6656, 6725), (2, 5120, 5189), (2, 6144, 6213), (2, 7168, 7237), (2, 8192, 8261), (2, 9216, 9285), (2, 6144, 6213), (2, 8192, 8261), (2, 8192, 8261), (2, 8192, 8261), (3, 4860, 4929), (3, 5103, 5172), (3, 5346, 5415), (3, 5589, 5658), (3, 5832, 5901), (3, 6075, 6144), (3, 6318, 6387), (3, 6561, 6630), (3, 5103, 5172), (3, 5832, 5901), (3, 6561, 6630), (3, 7290, 7359), (3, 8019, 8088), (3, 8748, 8817), (3, 9477, 9546), (3, 6561, 6630), (3, 8748, 8817), (3, 6561, 6630), (5, 6250, 6319), (5, 9375, 9444), (7, 4830, 4871), (7, 7203, 7272), (11, 5324, 5393), (11, 6655, 6724), (11, 7986, 8055), (11, 9317, 9386), (13, 6591, 6660), (13, 8788, 8857), (17, 4913, 4982), (17, 5202, 5271), (17, 5491, 5560), (17, 5780, 5849), (17, 6069, 6138), (17, 6358, 6427), (17, 6647, 6716), (17, 6936, 7005), (17, 7225, 7294), (17, 7514, 7583), (17, 7803, 7872), (17, 4913, 4982), (19, 5054, 5123), (19, 5415, 5484), (19, 5776, 5845), (19, 6137, 6206), (19, 6498, 6567), (19, 6859, 6928), (19, 7220, 7289), (19, 7581, 7650), (19, 7942, 8011), (19, 8303, 8372), (19, 8664, 8733), (19, 9025, 9094), (19, 9386, 9455), (19, 6859, 6928), (23, 4830, 4830), (23, 5290, 5359), (23, 5819, 5888), (23, 6348, 6417), (23, 6877, 6946), (23, 7406, 7475), (23, 7935, 8004), (23, 8464, 8533), (23, 8993, 9062), (23, 9522, 9591), (29, 5046, 5115), (29, 5887, 5956), (29, 6728, 6797), (29, 7569, 7638), (29, 8410, 8479), (29, 9251, 9320), (31, 4830, 4874), (31, 5766, 5835), (31, 6727, 6796), (31, 7688, 7757), (31, 8649, 8718), (31, 9610, 9659), (37, 5476, 5545), (37, 6845, 6914), (37, 8214, 8283), (37, 9583, 9652), (41, 5043, 5112), (41, 6724, 6793), (41, 8405, 8474), (43, 5547, 5616), (43, 7396, 7465), (43, 9245, 9314), (47, 6627, 6696), (47, 8836, 8905), (53, 5618, 5687), (53, 8427, 8496), (59, 6962, 7031), (61, 7442, 7511), (67, 8978, 9047)]

def row070_layer000_block000 : List ColouredInterval :=
  [(2, 5120, 5189), (2, 5632, 5701), (2, 6144, 6213), (2, 6656, 6725), (2, 5120, 5189), (2, 6144, 6213), (2, 7168, 7237), (2, 8192, 8261), (2, 9216, 9285), (2, 6144, 6213), (2, 8192, 8261), (2, 8192, 8261), (2, 8192, 8261), (3, 4860, 4929), (3, 5103, 5172), (3, 5346, 5415)]

def row070_layer000_block001 : List ColouredInterval :=
  [(3, 5589, 5658), (3, 5832, 5901), (3, 6075, 6144), (3, 6318, 6387), (3, 6561, 6630), (3, 5103, 5172), (3, 5832, 5901), (3, 6561, 6630), (3, 7290, 7359), (3, 8019, 8088), (3, 8748, 8817), (3, 9477, 9546), (3, 6561, 6630), (3, 8748, 8817), (3, 6561, 6630), (5, 6250, 6319)]

def row070_layer000_block002 : List ColouredInterval :=
  [(5, 9375, 9444), (7, 4830, 4871), (7, 7203, 7272), (11, 5324, 5393), (11, 6655, 6724), (11, 7986, 8055), (11, 9317, 9386), (13, 6591, 6660), (13, 8788, 8857), (17, 4913, 4982), (17, 5202, 5271), (17, 5491, 5560), (17, 5780, 5849), (17, 6069, 6138), (17, 6358, 6427), (17, 6647, 6716)]

def row070_layer000_block003 : List ColouredInterval :=
  [(17, 6936, 7005), (17, 7225, 7294), (17, 7514, 7583), (17, 7803, 7872), (17, 4913, 4982), (19, 5054, 5123), (19, 5415, 5484), (19, 5776, 5845), (19, 6137, 6206), (19, 6498, 6567), (19, 6859, 6928), (19, 7220, 7289), (19, 7581, 7650), (19, 7942, 8011), (19, 8303, 8372), (19, 8664, 8733)]

def row070_layer000_block004 : List ColouredInterval :=
  [(19, 9025, 9094), (19, 9386, 9455), (19, 6859, 6928), (23, 4830, 4830), (23, 5290, 5359), (23, 5819, 5888), (23, 6348, 6417), (23, 6877, 6946), (23, 7406, 7475), (23, 7935, 8004), (23, 8464, 8533), (23, 8993, 9062), (23, 9522, 9591), (29, 5046, 5115), (29, 5887, 5956), (29, 6728, 6797)]

def row070_layer000_block005 : List ColouredInterval :=
  [(29, 7569, 7638), (29, 8410, 8479), (29, 9251, 9320), (31, 4830, 4874), (31, 5766, 5835), (31, 6727, 6796), (31, 7688, 7757), (31, 8649, 8718), (31, 9610, 9659), (37, 5476, 5545), (37, 6845, 6914), (37, 8214, 8283), (37, 9583, 9652), (41, 5043, 5112), (41, 6724, 6793), (41, 8405, 8474)]

def row070_layer000_block006 : List ColouredInterval :=
  [(43, 5547, 5616), (43, 7396, 7465), (43, 9245, 9314), (47, 6627, 6696), (47, 8836, 8905), (53, 5618, 5687), (53, 8427, 8496), (59, 6962, 7031), (61, 7442, 7511), (67, 8978, 9047)]

def row070_layer000_chunks : List (List ColouredInterval) :=
  [row070_layer000_block000, row070_layer000_block001, row070_layer000_block002, row070_layer000_block003, row070_layer000_block004, row070_layer000_block005, row070_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_arithmetic : LayerArithmeticValid row070.height { lower := 4830, upper := 9660, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_enumeration :
    activePowerIntervalList 70 27 4830 9660 = row070_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_pairs000 :
    row070_layer000_block000.all (fun I => row070_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_pairs001 :
    row070_layer000_block001.all (fun I => row070_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_pairs002 :
    row070_layer000_block002.all (fun I => row070_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_pairs003 :
    row070_layer000_block003.all (fun I => row070_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_pairs004 :
    row070_layer000_block004.all (fun I => row070_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_pairs005 :
    row070_layer000_block005.all (fun I => row070_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_pairs006 :
    row070_layer000_block006.all (fun I => row070_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_chunks_eq : row070_layer000_chunks.flatten = row070_layer000_intervals := by
  rfl

theorem row070_layer000_pairs : pairCoverCheck row070_layer000_intervals row070_bounds = true := by
  apply pairCoverCheck_of_chunks row070_layer000_chunks_eq
  intro block hblock
  simp only [row070_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row070_layer000_pairs000
  · exact row070_layer000_pairs001
  · exact row070_layer000_pairs002
  · exact row070_layer000_pairs003
  · exact row070_layer000_pairs004
  · exact row070_layer000_pairs005
  · exact row070_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer000_checked :
    coverLayerCheck row070.height row070.goods { lower := 4830, upper := 9660, M := 27 } = true := by
  exact coverLayerCheck_of_parts row070_layer000_arithmetic row070_layer000_enumeration row070_bounds_eq row070_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row070_layer001_intervals : List ColouredInterval :=
  [(2, 10240, 10309), (2, 11264, 11333), (2, 10240, 10309), (2, 12288, 12357), (2, 14336, 14405), (2, 16384, 16453), (2, 18432, 18501), (2, 12288, 12357), (2, 16384, 16453), (2, 16384, 16453), (2, 16384, 16453), (3, 10206, 10275), (3, 10935, 11004), (3, 11664, 11733), (3, 12393, 12462), (3, 13122, 13191), (3, 13851, 13920), (3, 14580, 14649), (3, 15309, 15378), (3, 16038, 16107), (3, 16767, 16836), (3, 10935, 11004), (3, 13122, 13191), (3, 15309, 15378), (3, 17496, 17565), (3, 13122, 13191), (5, 12500, 12569), (5, 15625, 15694), (7, 16807, 16876), (11, 10648, 10717), (11, 11979, 12048), (11, 13310, 13379), (11, 14641, 14710), (11, 15972, 16041), (11, 17303, 17372), (11, 18634, 18703), (11, 14641, 14710), (13, 10985, 11054), (13, 13182, 13251), (13, 15379, 15448), (13, 17576, 17645), (17, 9826, 9895), (17, 14739, 14808), (19, 13718, 13787), (23, 10051, 10120), (23, 10580, 10649), (23, 11109, 11178), (23, 11638, 11707), (23, 12167, 12236), (23, 12167, 12236), (29, 10092, 10161), (29, 10933, 11002), (29, 11774, 11843), (29, 12615, 12684), (29, 13456, 13525), (29, 14297, 14366), (29, 15138, 15207), (29, 15979, 16048), (29, 16820, 16889), (29, 17661, 17730), (29, 18502, 18571), (31, 9660, 9679), (31, 10571, 10640), (31, 11532, 11601), (31, 12493, 12562), (31, 13454, 13523), (31, 14415, 14484), (31, 15376, 15445), (31, 16337, 16406), (31, 17298, 17367), (31, 18259, 18328), (31, 19220, 19289), (37, 10952, 11021), (37, 12321, 12390), (37, 13690, 13759), (37, 15059, 15128), (37, 16428, 16497), (37, 17797, 17866), (37, 19166, 19235), (41, 10086, 10155), (41, 11767, 11836), (41, 13448, 13517), (41, 15129, 15198), (41, 16810, 16879), (41, 18491, 18560), (43, 11094, 11163), (43, 12943, 13012), (43, 14792, 14861), (43, 16641, 16710), (43, 18490, 18559), (47, 11045, 11114), (47, 13254, 13323), (47, 15463, 15532), (47, 17672, 17741), (53, 11236, 11305), (53, 14045, 14114), (53, 16854, 16923), (59, 10443, 10512), (59, 13924, 13993), (59, 17405, 17474), (61, 11163, 11232), (61, 14884, 14953), (61, 18605, 18674), (67, 13467, 13536), (67, 17956, 18025)]

def row070_layer001_block000 : List ColouredInterval :=
  [(2, 10240, 10309), (2, 11264, 11333), (2, 10240, 10309), (2, 12288, 12357), (2, 14336, 14405), (2, 16384, 16453), (2, 18432, 18501), (2, 12288, 12357), (2, 16384, 16453), (2, 16384, 16453), (2, 16384, 16453), (3, 10206, 10275), (3, 10935, 11004), (3, 11664, 11733), (3, 12393, 12462), (3, 13122, 13191)]

def row070_layer001_block001 : List ColouredInterval :=
  [(3, 13851, 13920), (3, 14580, 14649), (3, 15309, 15378), (3, 16038, 16107), (3, 16767, 16836), (3, 10935, 11004), (3, 13122, 13191), (3, 15309, 15378), (3, 17496, 17565), (3, 13122, 13191), (5, 12500, 12569), (5, 15625, 15694), (7, 16807, 16876), (11, 10648, 10717), (11, 11979, 12048), (11, 13310, 13379)]

def row070_layer001_block002 : List ColouredInterval :=
  [(11, 14641, 14710), (11, 15972, 16041), (11, 17303, 17372), (11, 18634, 18703), (11, 14641, 14710), (13, 10985, 11054), (13, 13182, 13251), (13, 15379, 15448), (13, 17576, 17645), (17, 9826, 9895), (17, 14739, 14808), (19, 13718, 13787), (23, 10051, 10120), (23, 10580, 10649), (23, 11109, 11178), (23, 11638, 11707)]

def row070_layer001_block003 : List ColouredInterval :=
  [(23, 12167, 12236), (23, 12167, 12236), (29, 10092, 10161), (29, 10933, 11002), (29, 11774, 11843), (29, 12615, 12684), (29, 13456, 13525), (29, 14297, 14366), (29, 15138, 15207), (29, 15979, 16048), (29, 16820, 16889), (29, 17661, 17730), (29, 18502, 18571), (31, 9660, 9679), (31, 10571, 10640), (31, 11532, 11601)]

def row070_layer001_block004 : List ColouredInterval :=
  [(31, 12493, 12562), (31, 13454, 13523), (31, 14415, 14484), (31, 15376, 15445), (31, 16337, 16406), (31, 17298, 17367), (31, 18259, 18328), (31, 19220, 19289), (37, 10952, 11021), (37, 12321, 12390), (37, 13690, 13759), (37, 15059, 15128), (37, 16428, 16497), (37, 17797, 17866), (37, 19166, 19235), (41, 10086, 10155)]

def row070_layer001_block005 : List ColouredInterval :=
  [(41, 11767, 11836), (41, 13448, 13517), (41, 15129, 15198), (41, 16810, 16879), (41, 18491, 18560), (43, 11094, 11163), (43, 12943, 13012), (43, 14792, 14861), (43, 16641, 16710), (43, 18490, 18559), (47, 11045, 11114), (47, 13254, 13323), (47, 15463, 15532), (47, 17672, 17741), (53, 11236, 11305), (53, 14045, 14114)]

def row070_layer001_block006 : List ColouredInterval :=
  [(53, 16854, 16923), (59, 10443, 10512), (59, 13924, 13993), (59, 17405, 17474), (61, 11163, 11232), (61, 14884, 14953), (61, 18605, 18674), (67, 13467, 13536), (67, 17956, 18025)]

def row070_layer001_chunks : List (List ColouredInterval) :=
  [row070_layer001_block000, row070_layer001_block001, row070_layer001_block002, row070_layer001_block003, row070_layer001_block004, row070_layer001_block005, row070_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_arithmetic : LayerArithmeticValid row070.height { lower := 9660, upper := 19320, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_enumeration :
    activePowerIntervalList 70 23 9660 19320 = row070_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_pairs000 :
    row070_layer001_block000.all (fun I => row070_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_pairs001 :
    row070_layer001_block001.all (fun I => row070_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_pairs002 :
    row070_layer001_block002.all (fun I => row070_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_pairs003 :
    row070_layer001_block003.all (fun I => row070_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_pairs004 :
    row070_layer001_block004.all (fun I => row070_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_pairs005 :
    row070_layer001_block005.all (fun I => row070_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_pairs006 :
    row070_layer001_block006.all (fun I => row070_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_chunks_eq : row070_layer001_chunks.flatten = row070_layer001_intervals := by
  rfl

theorem row070_layer001_pairs : pairCoverCheck row070_layer001_intervals row070_bounds = true := by
  apply pairCoverCheck_of_chunks row070_layer001_chunks_eq
  intro block hblock
  simp only [row070_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row070_layer001_pairs000
  · exact row070_layer001_pairs001
  · exact row070_layer001_pairs002
  · exact row070_layer001_pairs003
  · exact row070_layer001_pairs004
  · exact row070_layer001_pairs005
  · exact row070_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer001_checked :
    coverLayerCheck row070.height row070.goods { lower := 9660, upper := 19320, M := 23 } = true := by
  exact coverLayerCheck_of_parts row070_layer001_arithmetic row070_layer001_enumeration row070_bounds_eq row070_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row070_layer002_intervals : List ColouredInterval :=
  [(2, 20480, 20549), (2, 20480, 20549), (2, 24576, 24645), (2, 28672, 28741), (2, 32768, 32837), (2, 36864, 36933), (2, 24576, 24645), (2, 32768, 32837), (2, 32768, 32837), (2, 32768, 32837), (3, 19683, 19752), (3, 21870, 21939), (3, 24057, 24126), (3, 26244, 26313), (3, 28431, 28500), (3, 30618, 30687), (3, 32805, 32874), (3, 34992, 35061), (3, 37179, 37248), (3, 19683, 19752), (3, 26244, 26313), (3, 32805, 32874), (3, 19683, 19752), (5, 31250, 31319), (7, 33614, 33683), (11, 19965, 20034), (11, 21296, 21365), (11, 22627, 22696), (11, 23958, 24027), (11, 25289, 25358), (11, 26620, 26689), (11, 29282, 29351), (13, 19773, 19842), (13, 21970, 22039), (13, 24167, 24236), (13, 26364, 26433), (13, 28561, 28630), (13, 30758, 30827), (13, 32955, 33024), (13, 35152, 35221), (13, 37349, 37418), (13, 28561, 28630), (17, 19652, 19721), (17, 24565, 24634), (17, 29478, 29547), (17, 34391, 34460), (19, 20577, 20646), (19, 27436, 27505), (19, 34295, 34364), (23, 24334, 24403), (23, 36501, 36570), (29, 24389, 24458), (31, 29791, 29860), (37, 20535, 20604), (37, 21904, 21973), (37, 23273, 23342), (37, 24642, 24711), (37, 26011, 26080), (37, 27380, 27449), (41, 20172, 20241), (41, 21853, 21922), (41, 23534, 23603), (41, 25215, 25284), (41, 26896, 26965), (41, 28577, 28646), (41, 30258, 30327), (41, 31939, 32008), (41, 33620, 33689), (43, 20339, 20408), (43, 22188, 22257), (43, 24037, 24106), (43, 25886, 25955), (43, 27735, 27804), (43, 29584, 29653), (43, 31433, 31502), (43, 33282, 33351), (43, 35131, 35200), (43, 36980, 37049), (47, 19881, 19950), (47, 22090, 22159), (47, 24299, 24368), (47, 26508, 26577), (47, 28717, 28786), (47, 30926, 30995), (47, 33135, 33204), (47, 35344, 35413), (47, 37553, 37622), (53, 19663, 19732), (53, 22472, 22541), (53, 25281, 25350), (53, 28090, 28159), (53, 30899, 30968), (53, 33708, 33777), (53, 36517, 36586), (59, 20886, 20955), (59, 24367, 24436), (59, 27848, 27917), (59, 31329, 31398), (59, 34810, 34879), (59, 38291, 38360), (61, 22326, 22395), (61, 26047, 26116), (61, 29768, 29837), (61, 33489, 33558), (61, 37210, 37279), (67, 22445, 22514), (67, 26934, 27003), (67, 31423, 31492), (67, 35912, 35981)]

def row070_layer002_block000 : List ColouredInterval :=
  [(2, 20480, 20549), (2, 20480, 20549), (2, 24576, 24645), (2, 28672, 28741), (2, 32768, 32837), (2, 36864, 36933), (2, 24576, 24645), (2, 32768, 32837), (2, 32768, 32837), (2, 32768, 32837), (3, 19683, 19752), (3, 21870, 21939), (3, 24057, 24126), (3, 26244, 26313), (3, 28431, 28500), (3, 30618, 30687)]

def row070_layer002_block001 : List ColouredInterval :=
  [(3, 32805, 32874), (3, 34992, 35061), (3, 37179, 37248), (3, 19683, 19752), (3, 26244, 26313), (3, 32805, 32874), (3, 19683, 19752), (5, 31250, 31319), (7, 33614, 33683), (11, 19965, 20034), (11, 21296, 21365), (11, 22627, 22696), (11, 23958, 24027), (11, 25289, 25358), (11, 26620, 26689), (11, 29282, 29351)]

def row070_layer002_block002 : List ColouredInterval :=
  [(13, 19773, 19842), (13, 21970, 22039), (13, 24167, 24236), (13, 26364, 26433), (13, 28561, 28630), (13, 30758, 30827), (13, 32955, 33024), (13, 35152, 35221), (13, 37349, 37418), (13, 28561, 28630), (17, 19652, 19721), (17, 24565, 24634), (17, 29478, 29547), (17, 34391, 34460), (19, 20577, 20646), (19, 27436, 27505)]

def row070_layer002_block003 : List ColouredInterval :=
  [(19, 34295, 34364), (23, 24334, 24403), (23, 36501, 36570), (29, 24389, 24458), (31, 29791, 29860), (37, 20535, 20604), (37, 21904, 21973), (37, 23273, 23342), (37, 24642, 24711), (37, 26011, 26080), (37, 27380, 27449), (41, 20172, 20241), (41, 21853, 21922), (41, 23534, 23603), (41, 25215, 25284), (41, 26896, 26965)]

def row070_layer002_block004 : List ColouredInterval :=
  [(41, 28577, 28646), (41, 30258, 30327), (41, 31939, 32008), (41, 33620, 33689), (43, 20339, 20408), (43, 22188, 22257), (43, 24037, 24106), (43, 25886, 25955), (43, 27735, 27804), (43, 29584, 29653), (43, 31433, 31502), (43, 33282, 33351), (43, 35131, 35200), (43, 36980, 37049), (47, 19881, 19950), (47, 22090, 22159)]

def row070_layer002_block005 : List ColouredInterval :=
  [(47, 24299, 24368), (47, 26508, 26577), (47, 28717, 28786), (47, 30926, 30995), (47, 33135, 33204), (47, 35344, 35413), (47, 37553, 37622), (53, 19663, 19732), (53, 22472, 22541), (53, 25281, 25350), (53, 28090, 28159), (53, 30899, 30968), (53, 33708, 33777), (53, 36517, 36586), (59, 20886, 20955), (59, 24367, 24436)]

def row070_layer002_block006 : List ColouredInterval :=
  [(59, 27848, 27917), (59, 31329, 31398), (59, 34810, 34879), (59, 38291, 38360), (61, 22326, 22395), (61, 26047, 26116), (61, 29768, 29837), (61, 33489, 33558), (61, 37210, 37279), (67, 22445, 22514), (67, 26934, 27003), (67, 31423, 31492), (67, 35912, 35981)]

def row070_layer002_chunks : List (List ColouredInterval) :=
  [row070_layer002_block000, row070_layer002_block001, row070_layer002_block002, row070_layer002_block003, row070_layer002_block004, row070_layer002_block005, row070_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_arithmetic : LayerArithmeticValid row070.height { lower := 19320, upper := 38640, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_enumeration :
    activePowerIntervalList 70 20 19320 38640 = row070_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_pairs000 :
    row070_layer002_block000.all (fun I => row070_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_pairs001 :
    row070_layer002_block001.all (fun I => row070_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_pairs002 :
    row070_layer002_block002.all (fun I => row070_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_pairs003 :
    row070_layer002_block003.all (fun I => row070_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_pairs004 :
    row070_layer002_block004.all (fun I => row070_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_pairs005 :
    row070_layer002_block005.all (fun I => row070_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_pairs006 :
    row070_layer002_block006.all (fun I => row070_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_chunks_eq : row070_layer002_chunks.flatten = row070_layer002_intervals := by
  rfl

theorem row070_layer002_pairs : pairCoverCheck row070_layer002_intervals row070_bounds = true := by
  apply pairCoverCheck_of_chunks row070_layer002_chunks_eq
  intro block hblock
  simp only [row070_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row070_layer002_pairs000
  · exact row070_layer002_pairs001
  · exact row070_layer002_pairs002
  · exact row070_layer002_pairs003
  · exact row070_layer002_pairs004
  · exact row070_layer002_pairs005
  · exact row070_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer002_checked :
    coverLayerCheck row070.height row070.goods { lower := 19320, upper := 38640, M := 20 } = true := by
  exact coverLayerCheck_of_parts row070_layer002_arithmetic row070_layer002_enumeration row070_bounds_eq row070_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row070_layer003_intervals : List ColouredInterval :=
  [(2, 40960, 41029), (2, 49152, 49221), (2, 57344, 57413), (2, 65536, 65605), (2, 49152, 49221), (2, 65536, 65605), (2, 65536, 65605), (2, 65536, 65605), (3, 39366, 39435), (3, 45927, 45996), (3, 52488, 52557), (3, 59049, 59118), (3, 65610, 65679), (3, 72171, 72240), (3, 39366, 39435), (3, 59049, 59118), (3, 59049, 59118), (5, 46875, 46944), (11, 43923, 43992), (11, 58564, 58633), (11, 73205, 73274), (13, 57122, 57191), (17, 39304, 39373), (17, 44217, 44286), (17, 49130, 49199), (17, 54043, 54112), (17, 58956, 59025), (17, 63869, 63938), (17, 68782, 68851), (17, 73695, 73764), (19, 41154, 41223), (19, 48013, 48082), (19, 54872, 54941), (19, 61731, 61800), (19, 68590, 68659), (19, 75449, 75518), (23, 48668, 48737), (23, 60835, 60904), (23, 73002, 73071), (29, 48778, 48847), (29, 73167, 73236), (31, 59582, 59651), (37, 50653, 50722), (41, 68921, 68990), (53, 39326, 39395), (53, 42135, 42204), (53, 44944, 45013), (53, 47753, 47822), (59, 41772, 41841), (59, 45253, 45322), (59, 48734, 48803), (59, 52215, 52284), (59, 55696, 55765), (59, 59177, 59246), (61, 40931, 41000), (61, 44652, 44721), (61, 48373, 48442), (61, 52094, 52163), (61, 55815, 55884), (61, 59536, 59605), (61, 63257, 63326), (67, 40401, 40470), (67, 44890, 44959), (67, 49379, 49448), (67, 53868, 53937), (67, 58357, 58426), (67, 62846, 62915), (67, 67335, 67404), (67, 71824, 71893), (67, 76313, 76382)]

def row070_layer003_block000 : List ColouredInterval :=
  [(2, 40960, 41029), (2, 49152, 49221), (2, 57344, 57413), (2, 65536, 65605), (2, 49152, 49221), (2, 65536, 65605), (2, 65536, 65605), (2, 65536, 65605), (3, 39366, 39435), (3, 45927, 45996), (3, 52488, 52557), (3, 59049, 59118), (3, 65610, 65679), (3, 72171, 72240), (3, 39366, 39435), (3, 59049, 59118)]

def row070_layer003_block001 : List ColouredInterval :=
  [(3, 59049, 59118), (5, 46875, 46944), (11, 43923, 43992), (11, 58564, 58633), (11, 73205, 73274), (13, 57122, 57191), (17, 39304, 39373), (17, 44217, 44286), (17, 49130, 49199), (17, 54043, 54112), (17, 58956, 59025), (17, 63869, 63938), (17, 68782, 68851), (17, 73695, 73764), (19, 41154, 41223), (19, 48013, 48082)]

def row070_layer003_block002 : List ColouredInterval :=
  [(19, 54872, 54941), (19, 61731, 61800), (19, 68590, 68659), (19, 75449, 75518), (23, 48668, 48737), (23, 60835, 60904), (23, 73002, 73071), (29, 48778, 48847), (29, 73167, 73236), (31, 59582, 59651), (37, 50653, 50722), (41, 68921, 68990), (53, 39326, 39395), (53, 42135, 42204), (53, 44944, 45013), (53, 47753, 47822)]

def row070_layer003_block003 : List ColouredInterval :=
  [(59, 41772, 41841), (59, 45253, 45322), (59, 48734, 48803), (59, 52215, 52284), (59, 55696, 55765), (59, 59177, 59246), (61, 40931, 41000), (61, 44652, 44721), (61, 48373, 48442), (61, 52094, 52163), (61, 55815, 55884), (61, 59536, 59605), (61, 63257, 63326), (67, 40401, 40470), (67, 44890, 44959), (67, 49379, 49448)]

def row070_layer003_block004 : List ColouredInterval :=
  [(67, 53868, 53937), (67, 58357, 58426), (67, 62846, 62915), (67, 67335, 67404), (67, 71824, 71893), (67, 76313, 76382)]

def row070_layer003_chunks : List (List ColouredInterval) :=
  [row070_layer003_block000, row070_layer003_block001, row070_layer003_block002, row070_layer003_block003, row070_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer003_arithmetic : LayerArithmeticValid row070.height { lower := 38640, upper := 77280, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer003_enumeration :
    activePowerIntervalList 70 17 38640 77280 = row070_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer003_pairs000 :
    row070_layer003_block000.all (fun I => row070_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer003_pairs001 :
    row070_layer003_block001.all (fun I => row070_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer003_pairs002 :
    row070_layer003_block002.all (fun I => row070_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer003_pairs003 :
    row070_layer003_block003.all (fun I => row070_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer003_pairs004 :
    row070_layer003_block004.all (fun I => row070_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row070_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer003_chunks_eq : row070_layer003_chunks.flatten = row070_layer003_intervals := by
  rfl

theorem row070_layer003_pairs : pairCoverCheck row070_layer003_intervals row070_bounds = true := by
  apply pairCoverCheck_of_chunks row070_layer003_chunks_eq
  intro block hblock
  simp only [row070_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row070_layer003_pairs000
  · exact row070_layer003_pairs001
  · exact row070_layer003_pairs002
  · exact row070_layer003_pairs003
  · exact row070_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer003_checked :
    coverLayerCheck row070.height row070.goods { lower := 38640, upper := 77280, M := 17 } = true := by
  exact coverLayerCheck_of_parts row070_layer003_arithmetic row070_layer003_enumeration row070_bounds_eq row070_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer003_checked
