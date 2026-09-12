import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row071_height : HeightCertificateDatum := { i := 71, r := 23, s := 49, n0Power10 := 10 }

def row071_goods : List GoodSegment := [
  { lower := 144, upper := 209, witness := RowWitness.topPrime 139 },
  { lower := 210, upper := 269, witness := RowWitness.topPrime 199 },
  { lower := 270, upper := 339, witness := RowWitness.topPrime 269 },
  { lower := 340, upper := 407, witness := RowWitness.topPrime 337 },
  { lower := 408, upper := 471, witness := RowWitness.topPrime 401 },
  { lower := 472, upper := 537, witness := RowWitness.topPrime 467 },
  { lower := 538, upper := 593, witness := RowWitness.topPrime 523 },
  { lower := 594, upper := 663, witness := RowWitness.topPrime 593 },
  { lower := 664, upper := 731, witness := RowWitness.topPrime 661 },
  { lower := 732, upper := 797, witness := RowWitness.topPrime 727 },
  { lower := 798, upper := 867, witness := RowWitness.topPrime 797 },
  { lower := 868, upper := 933, witness := RowWitness.topPrime 863 },
  { lower := 934, upper := 999, witness := RowWitness.topPrime 929 },
  { lower := 1000, upper := 1067, witness := RowWitness.topPrime 997 },
  { lower := 1068, upper := 1133, witness := RowWitness.topPrime 1063 },
  { lower := 1134, upper := 1199, witness := RowWitness.topPrime 1129 },
  { lower := 1200, upper := 1263, witness := RowWitness.topPrime 1193 },
  { lower := 1264, upper := 1329, witness := RowWitness.topPrime 1259 },
  { lower := 1330, upper := 1397, witness := RowWitness.topPrime 1327 },
  { lower := 1398, upper := 1451, witness := RowWitness.topPrime 1381 },
  { lower := 1452, upper := 1521, witness := RowWitness.topPrime 1451 },
  { lower := 1522, upper := 1581, witness := RowWitness.topPrime 1511 },
  { lower := 1582, upper := 1649, witness := RowWitness.topPrime 1579 },
  { lower := 1650, upper := 1707, witness := RowWitness.topPrime 1637 },
  { lower := 1708, upper := 1769, witness := RowWitness.topPrime 1699 },
  { lower := 1770, upper := 1829, witness := RowWitness.topPrime 1759 },
  { lower := 1830, upper := 1893, witness := RowWitness.topPrime 1823 },
  { lower := 1894, upper := 1959, witness := RowWitness.topPrime 1889 },
  { lower := 1960, upper := 2021, witness := RowWitness.topPrime 1951 },
  { lower := 2022, upper := 2087, witness := RowWitness.topPrime 2017 },
  { lower := 2088, upper := 2157, witness := RowWitness.topPrime 2087 },
  { lower := 2158, upper := 2223, witness := RowWitness.topPrime 2153 },
  { lower := 2224, upper := 2291, witness := RowWitness.topPrime 2221 },
  { lower := 2292, upper := 2357, witness := RowWitness.topPrime 2287 },
  { lower := 2358, upper := 2427, witness := RowWitness.topPrime 2357 },
  { lower := 2428, upper := 2493, witness := RowWitness.topPrime 2423 },
  { lower := 2494, upper := 2547, witness := RowWitness.topPrime 2477 },
  { lower := 2548, upper := 2613, witness := RowWitness.topPrime 2543 },
  { lower := 2614, upper := 2679, witness := RowWitness.topPrime 2609 },
  { lower := 2680, upper := 2747, witness := RowWitness.topPrime 2677 },
  { lower := 2748, upper := 2811, witness := RowWitness.topPrime 2741 },
  { lower := 2812, upper := 2873, witness := RowWitness.topPrime 2803 },
  { lower := 2874, upper := 2931, witness := RowWitness.topPrime 2861 },
  { lower := 2932, upper := 2997, witness := RowWitness.topPrime 2927 },
  { lower := 2998, upper := 3041, witness := RowWitness.topPrime 2971 },
  { lower := 3042, upper := 3111, witness := RowWitness.topPrime 3041 },
  { lower := 3112, upper := 3179, witness := RowWitness.topPrime 3109 },
  { lower := 3180, upper := 3239, witness := RowWitness.topPrime 3169 },
  { lower := 3240, upper := 3299, witness := RowWitness.topPrime 3229 },
  { lower := 3300, upper := 3369, witness := RowWitness.topPrime 3299 },
  { lower := 3370, upper := 3431, witness := RowWitness.topPrime 3361 },
  { lower := 3432, upper := 3483, witness := RowWitness.topPrime 3413 },
  { lower := 3484, upper := 3539, witness := RowWitness.topPrime 3469 },
  { lower := 3540, upper := 3609, witness := RowWitness.topPrime 3539 },
  { lower := 3610, upper := 3677, witness := RowWitness.topPrime 3607 },
  { lower := 3678, upper := 3747, witness := RowWitness.topPrime 3677 },
  { lower := 3748, upper := 3809, witness := RowWitness.topPrime 3739 },
  { lower := 3810, upper := 3873, witness := RowWitness.topPrime 3803 },
  { lower := 3874, upper := 3933, witness := RowWitness.topPrime 3863 },
  { lower := 3934, upper := 4001, witness := RowWitness.topPrime 3931 },
  { lower := 4002, upper := 4071, witness := RowWitness.topPrime 4001 },
  { lower := 4072, upper := 4127, witness := RowWitness.topPrime 4057 },
  { lower := 4128, upper := 4197, witness := RowWitness.topPrime 4127 },
  { lower := 4198, upper := 4247, witness := RowWitness.topPrime 4177 },
  { lower := 4248, upper := 4313, witness := RowWitness.topPrime 4243 },
  { lower := 4314, upper := 4367, witness := RowWitness.topPrime 4297 },
  { lower := 4368, upper := 4433, witness := RowWitness.topPrime 4363 },
  { lower := 4434, upper := 4493, witness := RowWitness.topPrime 4423 },
  { lower := 4494, upper := 4563, witness := RowWitness.topPrime 4493 },
  { lower := 4564, upper := 4631, witness := RowWitness.topPrime 4561 },
  { lower := 4632, upper := 4691, witness := RowWitness.topPrime 4621 },
  { lower := 4692, upper := 4761, witness := RowWitness.topPrime 4691 },
  { lower := 4762, upper := 4829, witness := RowWitness.topPrime 4759 },
  { lower := 4830, upper := 4887, witness := RowWitness.topPrime 4817 },
  { lower := 4888, upper := 4947, witness := RowWitness.topPrime 4877 },
  { lower := 4948, upper := 4969, witness := RowWitness.topPrime 4943 },
  { lower := 5043, upper := 5109, witness := RowWitness.topPrime 5039 },
  { lower := 5110, upper := 5177, witness := RowWitness.topPrime 5107 },
  { lower := 5178, upper := 5190, witness := RowWitness.topPrime 5171 },
  { lower := 5202, upper := 5215, witness := RowWitness.topPrime 5197 },
  { lower := 5324, upper := 5393, witness := RowWitness.topPrime 5323 },
  { lower := 5394, upper := 5446, witness := RowWitness.topPrime 5393 },
  { lower := 5476, upper := 5485, witness := RowWitness.topPrime 5471 },
  { lower := 5488, upper := 5553, witness := RowWitness.topPrime 5483 },
  { lower := 5554, upper := 5561, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5651, witness := RowWitness.topPrime 5581 },
  { lower := 5652, upper := 5695, witness := RowWitness.topPrime 5651 },
  { lower := 5776, upper := 5819, witness := RowWitness.topPrime 5749 },
  { lower := 5820, upper := 5883, witness := RowWitness.topPrime 5813 },
  { lower := 5884, upper := 5951, witness := RowWitness.topPrime 5881 },
  { lower := 5952, upper := 5957, witness := RowWitness.topPrime 5939 },
  { lower := 6075, upper := 6143, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6213, witness := RowWitness.topPrime 6143 },
  { lower := 6214, upper := 6214, witness := RowWitness.topPrime 6211 },
  { lower := 6358, upper := 6423, witness := RowWitness.topPrime 6353 },
  { lower := 6424, upper := 6428, witness := RowWitness.topPrime 6421 },
  { lower := 6517, upper := 6561, witness := RowWitness.topPrime 6491 },
  { lower := 6562, upper := 6587, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6651, witness := RowWitness.topPrime 6581 },
  { lower := 6652, upper := 6707, witness := RowWitness.topPrime 6637 },
  { lower := 6708, upper := 6773, witness := RowWitness.topPrime 6703 },
  { lower := 6774, upper := 6797, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6927, witness := RowWitness.topPrime 6857 },
  { lower := 6928, upper := 6947, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7006, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7263, witness := RowWitness.topPrime 7193 },
  { lower := 7264, upper := 7295, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7463, witness := RowWitness.topPrime 7393 },
  { lower := 7464, upper := 7476, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7512, witness := RowWitness.topPrime 7499 },
  { lower := 7546, upper := 7611, witness := RowWitness.topPrime 7541 },
  { lower := 7612, upper := 7639, witness := RowWitness.topPrime 7607 },
  { lower := 7688, upper := 7750, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 8003, witness := RowWitness.topPrime 7933 },
  { lower := 8004, upper := 8012, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8056, witness := RowWitness.topPrime 8017 },
  { lower := 8192, upper := 8195, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8279, witness := RowWitness.topPrime 8209 },
  { lower := 8280, upper := 8284, witness := RowWitness.topPrime 8273 },
  { lower := 8410, upper := 8459, witness := RowWitness.topPrime 8389 },
  { lower := 8460, upper := 8497, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8733, witness := RowWitness.topPrime 8663 },
  { lower := 8734, upper := 8734, witness := RowWitness.topPrime 8731 },
  { lower := 8748, upper := 8817, witness := RowWitness.topPrime 8747 },
  { lower := 8818, upper := 8820, witness := RowWitness.topPrime 8807 },
  { lower := 8836, upper := 8858, witness := RowWitness.topPrime 8831 },
  { lower := 8993, upper := 9041, witness := RowWitness.topPrime 8971 },
  { lower := 9042, upper := 9063, witness := RowWitness.topPrime 9041 },
  { lower := 9245, upper := 9311, witness := RowWitness.topPrime 9241 },
  { lower := 9312, upper := 9315, witness := RowWitness.topPrime 9311 },
  { lower := 9317, upper := 9321, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9387, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9547, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9592, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9671, witness := RowWitness.topPrime 9601 },
  { lower := 9672, upper := 9674, witness := RowWitness.topPrime 9661 },
  { lower := 10051, upper := 10070, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10149, witness := RowWitness.topPrime 10079 },
  { lower := 10150, upper := 10156, witness := RowWitness.topPrime 10141 },
  { lower := 10240, upper := 10276, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10637, witness := RowWitness.topPrime 10567 },
  { lower := 10638, upper := 10695, witness := RowWitness.topPrime 10631 },
  { lower := 10935, upper := 10979, witness := RowWitness.topPrime 10909 },
  { lower := 10980, upper := 11022, witness := RowWitness.topPrime 10979 },
  { lower := 11045, upper := 11055, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11163, witness := RowWitness.topPrime 11093 },
  { lower := 11164, upper := 11179, witness := RowWitness.topPrime 11161 },
  { lower := 11250, upper := 11313, witness := RowWitness.topPrime 11243 },
  { lower := 11314, upper := 11320, witness := RowWitness.topPrime 11311 },
  { lower := 11774, upper := 11813, witness := RowWitness.topPrime 11743 },
  { lower := 11814, upper := 11837, witness := RowWitness.topPrime 11813 },
  { lower := 12005, upper := 12049, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12358, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12563, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13191, witness := RowWitness.topPrime 13121 },
  { lower := 13192, upper := 13195, witness := RowWitness.topPrime 13187 },
  { lower := 13310, upper := 13379, witness := RowWitness.topPrime 13309 },
  { lower := 13380, upper := 13380, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13521, witness := RowWitness.topPrime 13451 },
  { lower := 13522, upper := 13526, witness := RowWitness.topPrime 13513 },
  { lower := 13718, upper := 13760, witness := RowWitness.topPrime 13711 },
  { lower := 14336, upper := 14367, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14406, witness := RowWitness.topPrime 14401 },
  { lower := 14415, upper := 14476, witness := RowWitness.topPrime 14411 },
  { lower := 14641, upper := 14650, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14809, witness := RowWitness.topPrime 14783 },
  { lower := 15129, upper := 15129, witness := RowWitness.topPrime 15121 },
  { lower := 15138, upper := 15199, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15429, witness := RowWitness.topPrime 15359 },
  { lower := 15430, upper := 15446, witness := RowWitness.topPrime 15427 },
  { lower := 15979, upper := 16042, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16407, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16454, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16857, witness := RowWitness.topPrime 16787 },
  { lower := 16858, upper := 16890, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17368, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17471, witness := RowWitness.topPrime 17401 },
  { lower := 17472, upper := 17475, witness := RowWitness.topPrime 17471 },
  { lower := 17672, upper := 17731, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18551, witness := RowWitness.topPrime 18481 },
  { lower := 18552, upper := 18560, witness := RowWitness.topPrime 18541 },
  { lower := 18634, upper := 18675, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19277, witness := RowWitness.topPrime 19207 },
  { lower := 19278, upper := 19278, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19731, witness := RowWitness.topPrime 19661 },
  { lower := 19732, upper := 19733, witness := RowWitness.topPrime 19727 },
  { lower := 20535, upper := 20550, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20605, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21933, witness := RowWitness.topPrime 21863 },
  { lower := 21934, upper := 21945, witness := RowWitness.topPrime 21929 },
  { lower := 21970, upper := 21974, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22515, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22542, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24028, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24099, witness := RowWitness.topPrime 24029 },
  { lower := 24100, upper := 24107, witness := RowWitness.topPrime 24097 },
  { lower := 24334, upper := 24399, witness := RowWitness.topPrime 24329 },
  { lower := 24400, upper := 24437, witness := RowWitness.topPrime 24391 },
  { lower := 24576, upper := 24635, witness := RowWitness.topPrime 24571 },
  { lower := 24642, upper := 24646, witness := RowWitness.topPrime 24631 },
  { lower := 25281, upper := 25285, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26434, witness := RowWitness.topPrime 26407 },
  { lower := 26934, upper := 26966, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28160, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28631, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28742, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29838, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30790, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30969, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31283, witness := RowWitness.topPrime 31249 },
  { lower := 31433, upper := 31467, witness := RowWitness.topPrime 31397 },
  { lower := 31468, upper := 31468, witness := RowWitness.largeDivisor 310099046050410134595248517544900860945219912203770607472436013921214663435277507542050585916340857783870646043972066866105314380280631540637612044158113808587848830893429901009518426573920734448997 },
  { lower := 31469, upper := 31493, witness := RowWitness.topPrime 31469 },
  { lower := 32805, upper := 32838, witness := RowWitness.topPrime 32803 },
  { lower := 34391, upper := 34445, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34877, witness := RowWitness.topPrime 34807 },
  { lower := 34878, upper := 34880, witness := RowWitness.topPrime 34877 },
  { lower := 36517, upper := 36567, witness := RowWitness.topPrime 36497 },
  { lower := 36568, upper := 36571, witness := RowWitness.topPrime 36563 },
  { lower := 37210, upper := 37249, witness := RowWitness.topPrime 37201 },
  { lower := 37553, upper := 37570, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39393, witness := RowWitness.topPrime 39323 },
  { lower := 39394, upper := 39396, witness := RowWitness.topPrime 39383 },
  { lower := 40960, upper := 41001, witness := RowWitness.topPrime 40949 },
  { lower := 48734, upper := 48738, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48804, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49200, witness := RowWitness.topPrime 49139 },
  { lower := 73205, upper := 73237, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73765, witness := RowWitness.topPrime 73727 },
  { lower := 137842, upper := 137851, witness := RowWitness.topPrime 137831 }
]

def row071_layers : List CoverLayer := [
  { lower := 4970, upper := 9940, M := 25 },
  { lower := 9940, upper := 19880, M := 21 },
  { lower := 19880, upper := 39760, M := 18 },
  { lower := 39760, upper := 79520, M := 15 },
  { lower := 79520, upper := 159040, M := 13 },
  { lower := 159040, upper := 318080, M := 11 },
  { lower := 318080, upper := 636160, M := 10 },
  { lower := 636160, upper := 1272320, M := 8 },
  { lower := 1272320, upper := 2544640, M := 7 },
  { lower := 2544640, upper := 5089280, M := 6 },
  { lower := 5089280, upper := 10178560, M := 5 },
  { lower := 10178560, upper := 20357120, M := 4 },
  { lower := 20357120, upper := 40714240, M := 4 },
  { lower := 40714240, upper := 81428480, M := 3 },
  { lower := 81428480, upper := 162856960, M := 3 },
  { lower := 162856960, upper := 325713920, M := 3 },
  { lower := 325713920, upper := 651427840, M := 2 },
  { lower := 651427840, upper := 1302855680, M := 2 },
  { lower := 1302855680, upper := 2605711360, M := 2 },
  { lower := 2605711360, upper := 5211422720, M := 2 },
  { lower := 5211422720, upper := 10000000000, M := 1 }
]

def row071 : FiniteCoverRow := {
  height := row071_height,
  goods := row071_goods,
  layers := row071_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good000_checked :
    goodSegmentCheck 71 23 49
      { lower := 144, upper := 209, witness := RowWitness.topPrime 139 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good001_checked :
    goodSegmentCheck 71 23 49
      { lower := 210, upper := 269, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good002_checked :
    goodSegmentCheck 71 23 49
      { lower := 270, upper := 339, witness := RowWitness.topPrime 269 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good003_checked :
    goodSegmentCheck 71 23 49
      { lower := 340, upper := 407, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good004_checked :
    goodSegmentCheck 71 23 49
      { lower := 408, upper := 471, witness := RowWitness.topPrime 401 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good005_checked :
    goodSegmentCheck 71 23 49
      { lower := 472, upper := 537, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good006_checked :
    goodSegmentCheck 71 23 49
      { lower := 538, upper := 593, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good007_checked :
    goodSegmentCheck 71 23 49
      { lower := 594, upper := 663, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good008_checked :
    goodSegmentCheck 71 23 49
      { lower := 664, upper := 731, witness := RowWitness.topPrime 661 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good009_checked :
    goodSegmentCheck 71 23 49
      { lower := 732, upper := 797, witness := RowWitness.topPrime 727 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good010_checked :
    goodSegmentCheck 71 23 49
      { lower := 798, upper := 867, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good011_checked :
    goodSegmentCheck 71 23 49
      { lower := 868, upper := 933, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good012_checked :
    goodSegmentCheck 71 23 49
      { lower := 934, upper := 999, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good013_checked :
    goodSegmentCheck 71 23 49
      { lower := 1000, upper := 1067, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good014_checked :
    goodSegmentCheck 71 23 49
      { lower := 1068, upper := 1133, witness := RowWitness.topPrime 1063 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good015_checked :
    goodSegmentCheck 71 23 49
      { lower := 1134, upper := 1199, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good016_checked :
    goodSegmentCheck 71 23 49
      { lower := 1200, upper := 1263, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good017_checked :
    goodSegmentCheck 71 23 49
      { lower := 1264, upper := 1329, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good018_checked :
    goodSegmentCheck 71 23 49
      { lower := 1330, upper := 1397, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good019_checked :
    goodSegmentCheck 71 23 49
      { lower := 1398, upper := 1451, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good020_checked :
    goodSegmentCheck 71 23 49
      { lower := 1452, upper := 1521, witness := RowWitness.topPrime 1451 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good021_checked :
    goodSegmentCheck 71 23 49
      { lower := 1522, upper := 1581, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good022_checked :
    goodSegmentCheck 71 23 49
      { lower := 1582, upper := 1649, witness := RowWitness.topPrime 1579 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good023_checked :
    goodSegmentCheck 71 23 49
      { lower := 1650, upper := 1707, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good024_checked :
    goodSegmentCheck 71 23 49
      { lower := 1708, upper := 1769, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good025_checked :
    goodSegmentCheck 71 23 49
      { lower := 1770, upper := 1829, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good026_checked :
    goodSegmentCheck 71 23 49
      { lower := 1830, upper := 1893, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good027_checked :
    goodSegmentCheck 71 23 49
      { lower := 1894, upper := 1959, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good028_checked :
    goodSegmentCheck 71 23 49
      { lower := 1960, upper := 2021, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good029_checked :
    goodSegmentCheck 71 23 49
      { lower := 2022, upper := 2087, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good030_checked :
    goodSegmentCheck 71 23 49
      { lower := 2088, upper := 2157, witness := RowWitness.topPrime 2087 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good031_checked :
    goodSegmentCheck 71 23 49
      { lower := 2158, upper := 2223, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good032_checked :
    goodSegmentCheck 71 23 49
      { lower := 2224, upper := 2291, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good033_checked :
    goodSegmentCheck 71 23 49
      { lower := 2292, upper := 2357, witness := RowWitness.topPrime 2287 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good034_checked :
    goodSegmentCheck 71 23 49
      { lower := 2358, upper := 2427, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good035_checked :
    goodSegmentCheck 71 23 49
      { lower := 2428, upper := 2493, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good036_checked :
    goodSegmentCheck 71 23 49
      { lower := 2494, upper := 2547, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good037_checked :
    goodSegmentCheck 71 23 49
      { lower := 2548, upper := 2613, witness := RowWitness.topPrime 2543 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good038_checked :
    goodSegmentCheck 71 23 49
      { lower := 2614, upper := 2679, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good039_checked :
    goodSegmentCheck 71 23 49
      { lower := 2680, upper := 2747, witness := RowWitness.topPrime 2677 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good040_checked :
    goodSegmentCheck 71 23 49
      { lower := 2748, upper := 2811, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good041_checked :
    goodSegmentCheck 71 23 49
      { lower := 2812, upper := 2873, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good042_checked :
    goodSegmentCheck 71 23 49
      { lower := 2874, upper := 2931, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good043_checked :
    goodSegmentCheck 71 23 49
      { lower := 2932, upper := 2997, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good044_checked :
    goodSegmentCheck 71 23 49
      { lower := 2998, upper := 3041, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good045_checked :
    goodSegmentCheck 71 23 49
      { lower := 3042, upper := 3111, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good046_checked :
    goodSegmentCheck 71 23 49
      { lower := 3112, upper := 3179, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good047_checked :
    goodSegmentCheck 71 23 49
      { lower := 3180, upper := 3239, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good048_checked :
    goodSegmentCheck 71 23 49
      { lower := 3240, upper := 3299, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good049_checked :
    goodSegmentCheck 71 23 49
      { lower := 3300, upper := 3369, witness := RowWitness.topPrime 3299 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good050_checked :
    goodSegmentCheck 71 23 49
      { lower := 3370, upper := 3431, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good051_checked :
    goodSegmentCheck 71 23 49
      { lower := 3432, upper := 3483, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good052_checked :
    goodSegmentCheck 71 23 49
      { lower := 3484, upper := 3539, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good053_checked :
    goodSegmentCheck 71 23 49
      { lower := 3540, upper := 3609, witness := RowWitness.topPrime 3539 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good054_checked :
    goodSegmentCheck 71 23 49
      { lower := 3610, upper := 3677, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good055_checked :
    goodSegmentCheck 71 23 49
      { lower := 3678, upper := 3747, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good056_checked :
    goodSegmentCheck 71 23 49
      { lower := 3748, upper := 3809, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good057_checked :
    goodSegmentCheck 71 23 49
      { lower := 3810, upper := 3873, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good058_checked :
    goodSegmentCheck 71 23 49
      { lower := 3874, upper := 3933, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good059_checked :
    goodSegmentCheck 71 23 49
      { lower := 3934, upper := 4001, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good060_checked :
    goodSegmentCheck 71 23 49
      { lower := 4002, upper := 4071, witness := RowWitness.topPrime 4001 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good061_checked :
    goodSegmentCheck 71 23 49
      { lower := 4072, upper := 4127, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good062_checked :
    goodSegmentCheck 71 23 49
      { lower := 4128, upper := 4197, witness := RowWitness.topPrime 4127 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good063_checked :
    goodSegmentCheck 71 23 49
      { lower := 4198, upper := 4247, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good064_checked :
    goodSegmentCheck 71 23 49
      { lower := 4248, upper := 4313, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good065_checked :
    goodSegmentCheck 71 23 49
      { lower := 4314, upper := 4367, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good066_checked :
    goodSegmentCheck 71 23 49
      { lower := 4368, upper := 4433, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good067_checked :
    goodSegmentCheck 71 23 49
      { lower := 4434, upper := 4493, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good068_checked :
    goodSegmentCheck 71 23 49
      { lower := 4494, upper := 4563, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good069_checked :
    goodSegmentCheck 71 23 49
      { lower := 4564, upper := 4631, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good070_checked :
    goodSegmentCheck 71 23 49
      { lower := 4632, upper := 4691, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good071_checked :
    goodSegmentCheck 71 23 49
      { lower := 4692, upper := 4761, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good072_checked :
    goodSegmentCheck 71 23 49
      { lower := 4762, upper := 4829, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good073_checked :
    goodSegmentCheck 71 23 49
      { lower := 4830, upper := 4887, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good074_checked :
    goodSegmentCheck 71 23 49
      { lower := 4888, upper := 4947, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good075_checked :
    goodSegmentCheck 71 23 49
      { lower := 4948, upper := 4969, witness := RowWitness.topPrime 4943 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good076_checked :
    goodSegmentCheck 71 23 49
      { lower := 5043, upper := 5109, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good077_checked :
    goodSegmentCheck 71 23 49
      { lower := 5110, upper := 5177, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good078_checked :
    goodSegmentCheck 71 23 49
      { lower := 5178, upper := 5190, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good079_checked :
    goodSegmentCheck 71 23 49
      { lower := 5202, upper := 5215, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good080_checked :
    goodSegmentCheck 71 23 49
      { lower := 5324, upper := 5393, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good081_checked :
    goodSegmentCheck 71 23 49
      { lower := 5394, upper := 5446, witness := RowWitness.topPrime 5393 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good082_checked :
    goodSegmentCheck 71 23 49
      { lower := 5476, upper := 5485, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good083_checked :
    goodSegmentCheck 71 23 49
      { lower := 5488, upper := 5553, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good084_checked :
    goodSegmentCheck 71 23 49
      { lower := 5554, upper := 5561, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good085_checked :
    goodSegmentCheck 71 23 49
      { lower := 5589, upper := 5651, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good086_checked :
    goodSegmentCheck 71 23 49
      { lower := 5652, upper := 5695, witness := RowWitness.topPrime 5651 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good087_checked :
    goodSegmentCheck 71 23 49
      { lower := 5776, upper := 5819, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good088_checked :
    goodSegmentCheck 71 23 49
      { lower := 5820, upper := 5883, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good089_checked :
    goodSegmentCheck 71 23 49
      { lower := 5884, upper := 5951, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good090_checked :
    goodSegmentCheck 71 23 49
      { lower := 5952, upper := 5957, witness := RowWitness.topPrime 5939 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good091_checked :
    goodSegmentCheck 71 23 49
      { lower := 6075, upper := 6143, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good092_checked :
    goodSegmentCheck 71 23 49
      { lower := 6144, upper := 6213, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good093_checked :
    goodSegmentCheck 71 23 49
      { lower := 6214, upper := 6214, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good094_checked :
    goodSegmentCheck 71 23 49
      { lower := 6358, upper := 6423, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good095_checked :
    goodSegmentCheck 71 23 49
      { lower := 6424, upper := 6428, witness := RowWitness.topPrime 6421 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good096_checked :
    goodSegmentCheck 71 23 49
      { lower := 6517, upper := 6561, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good097_checked :
    goodSegmentCheck 71 23 49
      { lower := 6562, upper := 6587, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good098_checked :
    goodSegmentCheck 71 23 49
      { lower := 6591, upper := 6651, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good099_checked :
    goodSegmentCheck 71 23 49
      { lower := 6652, upper := 6707, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good100_checked :
    goodSegmentCheck 71 23 49
      { lower := 6708, upper := 6773, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good101_checked :
    goodSegmentCheck 71 23 49
      { lower := 6774, upper := 6797, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good102_checked :
    goodSegmentCheck 71 23 49
      { lower := 6859, upper := 6927, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good103_checked :
    goodSegmentCheck 71 23 49
      { lower := 6928, upper := 6947, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good104_checked :
    goodSegmentCheck 71 23 49
      { lower := 6962, upper := 7006, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good105_checked :
    goodSegmentCheck 71 23 49
      { lower := 7203, upper := 7263, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good106_checked :
    goodSegmentCheck 71 23 49
      { lower := 7264, upper := 7295, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good107_checked :
    goodSegmentCheck 71 23 49
      { lower := 7406, upper := 7463, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good108_checked :
    goodSegmentCheck 71 23 49
      { lower := 7464, upper := 7476, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good109_checked :
    goodSegmentCheck 71 23 49
      { lower := 7500, upper := 7512, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good110_checked :
    goodSegmentCheck 71 23 49
      { lower := 7546, upper := 7611, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good111_checked :
    goodSegmentCheck 71 23 49
      { lower := 7612, upper := 7639, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good112_checked :
    goodSegmentCheck 71 23 49
      { lower := 7688, upper := 7750, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good113_checked :
    goodSegmentCheck 71 23 49
      { lower := 7935, upper := 8003, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good114_checked :
    goodSegmentCheck 71 23 49
      { lower := 8004, upper := 8012, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good115_checked :
    goodSegmentCheck 71 23 49
      { lower := 8019, upper := 8056, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good116_checked :
    goodSegmentCheck 71 23 49
      { lower := 8192, upper := 8195, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good117_checked :
    goodSegmentCheck 71 23 49
      { lower := 8214, upper := 8279, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good118_checked :
    goodSegmentCheck 71 23 49
      { lower := 8280, upper := 8284, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good119_checked :
    goodSegmentCheck 71 23 49
      { lower := 8410, upper := 8459, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good120_checked :
    goodSegmentCheck 71 23 49
      { lower := 8460, upper := 8497, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good121_checked :
    goodSegmentCheck 71 23 49
      { lower := 8664, upper := 8733, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good122_checked :
    goodSegmentCheck 71 23 49
      { lower := 8734, upper := 8734, witness := RowWitness.topPrime 8731 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good123_checked :
    goodSegmentCheck 71 23 49
      { lower := 8748, upper := 8817, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good124_checked :
    goodSegmentCheck 71 23 49
      { lower := 8818, upper := 8820, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good125_checked :
    goodSegmentCheck 71 23 49
      { lower := 8836, upper := 8858, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good126_checked :
    goodSegmentCheck 71 23 49
      { lower := 8993, upper := 9041, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good127_checked :
    goodSegmentCheck 71 23 49
      { lower := 9042, upper := 9063, witness := RowWitness.topPrime 9041 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good128_checked :
    goodSegmentCheck 71 23 49
      { lower := 9245, upper := 9311, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good129_checked :
    goodSegmentCheck 71 23 49
      { lower := 9312, upper := 9315, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good130_checked :
    goodSegmentCheck 71 23 49
      { lower := 9317, upper := 9321, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good131_checked :
    goodSegmentCheck 71 23 49
      { lower := 9375, upper := 9387, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good132_checked :
    goodSegmentCheck 71 23 49
      { lower := 9522, upper := 9547, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good133_checked :
    goodSegmentCheck 71 23 49
      { lower := 9583, upper := 9592, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good134_checked :
    goodSegmentCheck 71 23 49
      { lower := 9604, upper := 9671, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good135_checked :
    goodSegmentCheck 71 23 49
      { lower := 9672, upper := 9674, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good136_checked :
    goodSegmentCheck 71 23 49
      { lower := 10051, upper := 10070, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good137_checked :
    goodSegmentCheck 71 23 49
      { lower := 10086, upper := 10149, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good138_checked :
    goodSegmentCheck 71 23 49
      { lower := 10150, upper := 10156, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good139_checked :
    goodSegmentCheck 71 23 49
      { lower := 10240, upper := 10276, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good140_checked :
    goodSegmentCheck 71 23 49
      { lower := 10580, upper := 10637, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good141_checked :
    goodSegmentCheck 71 23 49
      { lower := 10638, upper := 10695, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good142_checked :
    goodSegmentCheck 71 23 49
      { lower := 10935, upper := 10979, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good143_checked :
    goodSegmentCheck 71 23 49
      { lower := 10980, upper := 11022, witness := RowWitness.topPrime 10979 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good144_checked :
    goodSegmentCheck 71 23 49
      { lower := 11045, upper := 11055, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good145_checked :
    goodSegmentCheck 71 23 49
      { lower := 11094, upper := 11163, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good146_checked :
    goodSegmentCheck 71 23 49
      { lower := 11164, upper := 11179, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good147_checked :
    goodSegmentCheck 71 23 49
      { lower := 11250, upper := 11313, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good148_checked :
    goodSegmentCheck 71 23 49
      { lower := 11314, upper := 11320, witness := RowWitness.topPrime 11311 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good149_checked :
    goodSegmentCheck 71 23 49
      { lower := 11774, upper := 11813, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good150_checked :
    goodSegmentCheck 71 23 49
      { lower := 11814, upper := 11837, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good151_checked :
    goodSegmentCheck 71 23 49
      { lower := 12005, upper := 12049, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good152_checked :
    goodSegmentCheck 71 23 49
      { lower := 12321, upper := 12358, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good153_checked :
    goodSegmentCheck 71 23 49
      { lower := 12500, upper := 12563, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good154_checked :
    goodSegmentCheck 71 23 49
      { lower := 13125, upper := 13191, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good155_checked :
    goodSegmentCheck 71 23 49
      { lower := 13192, upper := 13195, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good156_checked :
    goodSegmentCheck 71 23 49
      { lower := 13310, upper := 13379, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good157_checked :
    goodSegmentCheck 71 23 49
      { lower := 13380, upper := 13380, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good158_checked :
    goodSegmentCheck 71 23 49
      { lower := 13454, upper := 13521, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good159_checked :
    goodSegmentCheck 71 23 49
      { lower := 13522, upper := 13526, witness := RowWitness.topPrime 13513 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good160_checked :
    goodSegmentCheck 71 23 49
      { lower := 13718, upper := 13760, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good161_checked :
    goodSegmentCheck 71 23 49
      { lower := 14336, upper := 14367, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good162_checked :
    goodSegmentCheck 71 23 49
      { lower := 14406, upper := 14406, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good163_checked :
    goodSegmentCheck 71 23 49
      { lower := 14415, upper := 14476, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good164_checked :
    goodSegmentCheck 71 23 49
      { lower := 14641, upper := 14650, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good165_checked :
    goodSegmentCheck 71 23 49
      { lower := 14792, upper := 14809, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good166_checked :
    goodSegmentCheck 71 23 49
      { lower := 15129, upper := 15129, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good167_checked :
    goodSegmentCheck 71 23 49
      { lower := 15138, upper := 15199, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good168_checked :
    goodSegmentCheck 71 23 49
      { lower := 15360, upper := 15429, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good169_checked :
    goodSegmentCheck 71 23 49
      { lower := 15430, upper := 15446, witness := RowWitness.topPrime 15427 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good170_checked :
    goodSegmentCheck 71 23 49
      { lower := 15979, upper := 16042, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good171_checked :
    goodSegmentCheck 71 23 49
      { lower := 16384, upper := 16407, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good172_checked :
    goodSegmentCheck 71 23 49
      { lower := 16428, upper := 16454, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good173_checked :
    goodSegmentCheck 71 23 49
      { lower := 16810, upper := 16857, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good174_checked :
    goodSegmentCheck 71 23 49
      { lower := 16858, upper := 16890, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good175_checked :
    goodSegmentCheck 71 23 49
      { lower := 17303, upper := 17368, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good176_checked :
    goodSegmentCheck 71 23 49
      { lower := 17408, upper := 17471, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good177_checked :
    goodSegmentCheck 71 23 49
      { lower := 17472, upper := 17475, witness := RowWitness.topPrime 17471 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good178_checked :
    goodSegmentCheck 71 23 49
      { lower := 17672, upper := 17731, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good179_checked :
    goodSegmentCheck 71 23 49
      { lower := 18490, upper := 18551, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good180_checked :
    goodSegmentCheck 71 23 49
      { lower := 18552, upper := 18560, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good181_checked :
    goodSegmentCheck 71 23 49
      { lower := 18634, upper := 18675, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good182_checked :
    goodSegmentCheck 71 23 49
      { lower := 19208, upper := 19277, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good183_checked :
    goodSegmentCheck 71 23 49
      { lower := 19278, upper := 19278, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good184_checked :
    goodSegmentCheck 71 23 49
      { lower := 19663, upper := 19731, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good185_checked :
    goodSegmentCheck 71 23 49
      { lower := 19732, upper := 19733, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good186_checked :
    goodSegmentCheck 71 23 49
      { lower := 20535, upper := 20550, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good187_checked :
    goodSegmentCheck 71 23 49
      { lower := 20577, upper := 20605, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good188_checked :
    goodSegmentCheck 71 23 49
      { lower := 21870, upper := 21933, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good189_checked :
    goodSegmentCheck 71 23 49
      { lower := 21934, upper := 21945, witness := RowWitness.topPrime 21929 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good190_checked :
    goodSegmentCheck 71 23 49
      { lower := 21970, upper := 21974, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good191_checked :
    goodSegmentCheck 71 23 49
      { lower := 22472, upper := 22515, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good192_checked :
    goodSegmentCheck 71 23 49
      { lower := 22528, upper := 22542, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good193_checked :
    goodSegmentCheck 71 23 49
      { lower := 24010, upper := 24028, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good194_checked :
    goodSegmentCheck 71 23 49
      { lower := 24037, upper := 24099, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good195_checked :
    goodSegmentCheck 71 23 49
      { lower := 24100, upper := 24107, witness := RowWitness.topPrime 24097 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good196_checked :
    goodSegmentCheck 71 23 49
      { lower := 24334, upper := 24399, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good197_checked :
    goodSegmentCheck 71 23 49
      { lower := 24400, upper := 24437, witness := RowWitness.topPrime 24391 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good198_checked :
    goodSegmentCheck 71 23 49
      { lower := 24576, upper := 24635, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good199_checked :
    goodSegmentCheck 71 23 49
      { lower := 24642, upper := 24646, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good200_checked :
    goodSegmentCheck 71 23 49
      { lower := 25281, upper := 25285, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good201_checked :
    goodSegmentCheck 71 23 49
      { lower := 26411, upper := 26434, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good202_checked :
    goodSegmentCheck 71 23 49
      { lower := 26934, upper := 26966, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good203_checked :
    goodSegmentCheck 71 23 49
      { lower := 28125, upper := 28160, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good204_checked :
    goodSegmentCheck 71 23 49
      { lower := 28577, upper := 28631, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good205_checked :
    goodSegmentCheck 71 23 49
      { lower := 28717, upper := 28742, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good206_checked :
    goodSegmentCheck 71 23 49
      { lower := 29791, upper := 29838, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good207_checked :
    goodSegmentCheck 71 23 49
      { lower := 30758, upper := 30790, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good208_checked :
    goodSegmentCheck 71 23 49
      { lower := 30926, upper := 30969, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good209_checked :
    goodSegmentCheck 71 23 49
      { lower := 31250, upper := 31283, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good210_checked :
    goodSegmentCheck 71 23 49
      { lower := 31433, upper := 31467, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good211_checked :
    goodSegmentCheck 71 23 49
      { lower := 31468, upper := 31468, witness := RowWitness.largeDivisor 310099046050410134595248517544900860945219912203770607472436013921214663435277507542050585916340857783870646043972066866105314380280631540637612044158113808587848830893429901009518426573920734448997 } = true := by
  decide +kernel

theorem row071_good212_checked :
    goodSegmentCheck 71 23 49
      { lower := 31469, upper := 31493, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good213_checked :
    goodSegmentCheck 71 23 49
      { lower := 32805, upper := 32838, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good214_checked :
    goodSegmentCheck 71 23 49
      { lower := 34391, upper := 34445, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good215_checked :
    goodSegmentCheck 71 23 49
      { lower := 34816, upper := 34877, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good216_checked :
    goodSegmentCheck 71 23 49
      { lower := 34878, upper := 34880, witness := RowWitness.topPrime 34877 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good217_checked :
    goodSegmentCheck 71 23 49
      { lower := 36517, upper := 36567, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good218_checked :
    goodSegmentCheck 71 23 49
      { lower := 36568, upper := 36571, witness := RowWitness.topPrime 36563 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good219_checked :
    goodSegmentCheck 71 23 49
      { lower := 37210, upper := 37249, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good220_checked :
    goodSegmentCheck 71 23 49
      { lower := 37553, upper := 37570, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good221_checked :
    goodSegmentCheck 71 23 49
      { lower := 39326, upper := 39393, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good222_checked :
    goodSegmentCheck 71 23 49
      { lower := 39394, upper := 39396, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good223_checked :
    goodSegmentCheck 71 23 49
      { lower := 40960, upper := 41001, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good224_checked :
    goodSegmentCheck 71 23 49
      { lower := 48734, upper := 48738, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good225_checked :
    goodSegmentCheck 71 23 49
      { lower := 48778, upper := 48804, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good226_checked :
    goodSegmentCheck 71 23 49
      { lower := 49152, upper := 49200, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good227_checked :
    goodSegmentCheck 71 23 49
      { lower := 73205, upper := 73237, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good228_checked :
    goodSegmentCheck 71 23 49
      { lower := 73728, upper := 73765, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good229_checked :
    goodSegmentCheck 71 23 49
      { lower := 137842, upper := 137851, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good229_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_goods_checked :
    row071.goods.all (goodSegmentCheck row071.height.i row071.height.r row071.height.s) = true := by
  change row071_goods.all (goodSegmentCheck 71 23 49) = true
  simp only [row071_goods, List.all_cons, List.all_nil,
    row071_good000_checked,
    row071_good001_checked,
    row071_good002_checked,
    row071_good003_checked,
    row071_good004_checked,
    row071_good005_checked,
    row071_good006_checked,
    row071_good007_checked,
    row071_good008_checked,
    row071_good009_checked,
    row071_good010_checked,
    row071_good011_checked,
    row071_good012_checked,
    row071_good013_checked,
    row071_good014_checked,
    row071_good015_checked,
    row071_good016_checked,
    row071_good017_checked,
    row071_good018_checked,
    row071_good019_checked,
    row071_good020_checked,
    row071_good021_checked,
    row071_good022_checked,
    row071_good023_checked,
    row071_good024_checked,
    row071_good025_checked,
    row071_good026_checked,
    row071_good027_checked,
    row071_good028_checked,
    row071_good029_checked,
    row071_good030_checked,
    row071_good031_checked,
    row071_good032_checked,
    row071_good033_checked,
    row071_good034_checked,
    row071_good035_checked,
    row071_good036_checked,
    row071_good037_checked,
    row071_good038_checked,
    row071_good039_checked,
    row071_good040_checked,
    row071_good041_checked,
    row071_good042_checked,
    row071_good043_checked,
    row071_good044_checked,
    row071_good045_checked,
    row071_good046_checked,
    row071_good047_checked,
    row071_good048_checked,
    row071_good049_checked,
    row071_good050_checked,
    row071_good051_checked,
    row071_good052_checked,
    row071_good053_checked,
    row071_good054_checked,
    row071_good055_checked,
    row071_good056_checked,
    row071_good057_checked,
    row071_good058_checked,
    row071_good059_checked,
    row071_good060_checked,
    row071_good061_checked,
    row071_good062_checked,
    row071_good063_checked,
    row071_good064_checked,
    row071_good065_checked,
    row071_good066_checked,
    row071_good067_checked,
    row071_good068_checked,
    row071_good069_checked,
    row071_good070_checked,
    row071_good071_checked,
    row071_good072_checked,
    row071_good073_checked,
    row071_good074_checked,
    row071_good075_checked,
    row071_good076_checked,
    row071_good077_checked,
    row071_good078_checked,
    row071_good079_checked,
    row071_good080_checked,
    row071_good081_checked,
    row071_good082_checked,
    row071_good083_checked,
    row071_good084_checked,
    row071_good085_checked,
    row071_good086_checked,
    row071_good087_checked,
    row071_good088_checked,
    row071_good089_checked,
    row071_good090_checked,
    row071_good091_checked,
    row071_good092_checked,
    row071_good093_checked,
    row071_good094_checked,
    row071_good095_checked,
    row071_good096_checked,
    row071_good097_checked,
    row071_good098_checked,
    row071_good099_checked,
    row071_good100_checked,
    row071_good101_checked,
    row071_good102_checked,
    row071_good103_checked,
    row071_good104_checked,
    row071_good105_checked,
    row071_good106_checked,
    row071_good107_checked,
    row071_good108_checked,
    row071_good109_checked,
    row071_good110_checked,
    row071_good111_checked,
    row071_good112_checked,
    row071_good113_checked,
    row071_good114_checked,
    row071_good115_checked,
    row071_good116_checked,
    row071_good117_checked,
    row071_good118_checked,
    row071_good119_checked,
    row071_good120_checked,
    row071_good121_checked,
    row071_good122_checked,
    row071_good123_checked,
    row071_good124_checked,
    row071_good125_checked,
    row071_good126_checked,
    row071_good127_checked,
    row071_good128_checked,
    row071_good129_checked,
    row071_good130_checked,
    row071_good131_checked,
    row071_good132_checked,
    row071_good133_checked,
    row071_good134_checked,
    row071_good135_checked,
    row071_good136_checked,
    row071_good137_checked,
    row071_good138_checked,
    row071_good139_checked,
    row071_good140_checked,
    row071_good141_checked,
    row071_good142_checked,
    row071_good143_checked,
    row071_good144_checked,
    row071_good145_checked,
    row071_good146_checked,
    row071_good147_checked,
    row071_good148_checked,
    row071_good149_checked,
    row071_good150_checked,
    row071_good151_checked,
    row071_good152_checked,
    row071_good153_checked,
    row071_good154_checked,
    row071_good155_checked,
    row071_good156_checked,
    row071_good157_checked,
    row071_good158_checked,
    row071_good159_checked,
    row071_good160_checked,
    row071_good161_checked,
    row071_good162_checked,
    row071_good163_checked,
    row071_good164_checked,
    row071_good165_checked,
    row071_good166_checked,
    row071_good167_checked,
    row071_good168_checked,
    row071_good169_checked,
    row071_good170_checked,
    row071_good171_checked,
    row071_good172_checked,
    row071_good173_checked,
    row071_good174_checked,
    row071_good175_checked,
    row071_good176_checked,
    row071_good177_checked,
    row071_good178_checked,
    row071_good179_checked,
    row071_good180_checked,
    row071_good181_checked,
    row071_good182_checked,
    row071_good183_checked,
    row071_good184_checked,
    row071_good185_checked,
    row071_good186_checked,
    row071_good187_checked,
    row071_good188_checked,
    row071_good189_checked,
    row071_good190_checked,
    row071_good191_checked,
    row071_good192_checked,
    row071_good193_checked,
    row071_good194_checked,
    row071_good195_checked,
    row071_good196_checked,
    row071_good197_checked,
    row071_good198_checked,
    row071_good199_checked,
    row071_good200_checked,
    row071_good201_checked,
    row071_good202_checked,
    row071_good203_checked,
    row071_good204_checked,
    row071_good205_checked,
    row071_good206_checked,
    row071_good207_checked,
    row071_good208_checked,
    row071_good209_checked,
    row071_good210_checked,
    row071_good211_checked,
    row071_good212_checked,
    row071_good213_checked,
    row071_good214_checked,
    row071_good215_checked,
    row071_good216_checked,
    row071_good217_checked,
    row071_good218_checked,
    row071_good219_checked,
    row071_good220_checked,
    row071_good221_checked,
    row071_good222_checked,
    row071_good223_checked,
    row071_good224_checked,
    row071_good225_checked,
    row071_good226_checked,
    row071_good227_checked,
    row071_good228_checked,
    row071_good229_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_registered :
    decide (row071.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row071_small_checked :
    coverCheck (2 * row071.height.i + 2) (row071.height.i * (row071.height.i - 1) - 1)
      (row071.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row071_layerCover_checked :
    coverCheck (row071.height.i * (row071.height.i - 1)) (row071.height.n0 - 1)
      (row071.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row071_bounds : List NatInterval :=
  [(144, 209), (210, 269), (270, 339), (340, 407), (408, 471), (472, 537), (538, 593), (594, 663), (664, 731), (732, 797), (798, 867), (868, 933), (934, 999), (1000, 1067), (1068, 1133), (1134, 1199), (1200, 1263), (1264, 1329), (1330, 1397), (1398, 1451), (1452, 1521), (1522, 1581), (1582, 1649), (1650, 1707), (1708, 1769), (1770, 1829), (1830, 1893), (1894, 1959), (1960, 2021), (2022, 2087), (2088, 2157), (2158, 2223), (2224, 2291), (2292, 2357), (2358, 2427), (2428, 2493), (2494, 2547), (2548, 2613), (2614, 2679), (2680, 2747), (2748, 2811), (2812, 2873), (2874, 2931), (2932, 2997), (2998, 3041), (3042, 3111), (3112, 3179), (3180, 3239), (3240, 3299), (3300, 3369), (3370, 3431), (3432, 3483), (3484, 3539), (3540, 3609), (3610, 3677), (3678, 3747), (3748, 3809), (3810, 3873), (3874, 3933), (3934, 4001), (4002, 4071), (4072, 4127), (4128, 4197), (4198, 4247), (4248, 4313), (4314, 4367), (4368, 4433), (4434, 4493), (4494, 4563), (4564, 4631), (4632, 4691), (4692, 4761), (4762, 4829), (4830, 4887), (4888, 4947), (4948, 4969), (5043, 5109), (5110, 5177), (5178, 5190), (5202, 5215), (5324, 5393), (5394, 5446), (5476, 5485), (5488, 5553), (5554, 5561), (5589, 5651), (5652, 5695), (5776, 5819), (5820, 5883), (5884, 5951), (5952, 5957), (6075, 6143), (6144, 6213), (6214, 6214), (6358, 6423), (6424, 6428), (6517, 6561), (6562, 6587), (6591, 6651), (6652, 6707), (6708, 6773), (6774, 6797), (6859, 6927), (6928, 6947), (6962, 7006), (7203, 7263), (7264, 7295), (7406, 7463), (7464, 7476), (7500, 7512), (7546, 7611), (7612, 7639), (7688, 7750), (7935, 8003), (8004, 8012), (8019, 8056), (8192, 8195), (8214, 8279), (8280, 8284), (8410, 8459), (8460, 8497), (8664, 8733), (8734, 8734), (8748, 8817), (8818, 8820), (8836, 8858), (8993, 9041), (9042, 9063), (9245, 9311), (9312, 9315), (9317, 9321), (9375, 9387), (9522, 9547), (9583, 9592), (9604, 9671), (9672, 9674), (10051, 10070), (10086, 10149), (10150, 10156), (10240, 10276), (10580, 10637), (10638, 10695), (10935, 10979), (10980, 11022), (11045, 11055), (11094, 11163), (11164, 11179), (11250, 11313), (11314, 11320), (11774, 11813), (11814, 11837), (12005, 12049), (12321, 12358), (12500, 12563), (13125, 13191), (13192, 13195), (13310, 13379), (13380, 13380), (13454, 13521), (13522, 13526), (13718, 13760), (14336, 14367), (14406, 14406), (14415, 14476), (14641, 14650), (14792, 14809), (15129, 15129), (15138, 15199), (15360, 15429), (15430, 15446), (15979, 16042), (16384, 16407), (16428, 16454), (16810, 16857), (16858, 16890), (17303, 17368), (17408, 17471), (17472, 17475), (17672, 17731), (18490, 18551), (18552, 18560), (18634, 18675), (19208, 19277), (19278, 19278), (19663, 19731), (19732, 19733), (20535, 20550), (20577, 20605), (21870, 21933), (21934, 21945), (21970, 21974), (22472, 22515), (22528, 22542), (24010, 24028), (24037, 24099), (24100, 24107), (24334, 24399), (24400, 24437), (24576, 24635), (24642, 24646), (25281, 25285), (26411, 26434), (26934, 26966), (28125, 28160), (28577, 28631), (28717, 28742), (29791, 29838), (30758, 30790), (30926, 30969), (31250, 31283), (31433, 31467), (31468, 31468), (31469, 31493), (32805, 32838), (34391, 34445), (34816, 34877), (34878, 34880), (36517, 36567), (36568, 36571), (37210, 37249), (37553, 37570), (39326, 39393), (39394, 39396), (40960, 41001), (48734, 48738), (48778, 48804), (49152, 49200), (73205, 73237), (73728, 73765), (137842, 137851)]

theorem row071_bounds_eq : row071.goods.map goodSegmentBounds = row071_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row071_layer000_intervals : List ColouredInterval :=
  [(2, 5120, 5190), (2, 5376, 5446), (2, 5632, 5702), (2, 5888, 5958), (2, 6144, 6214), (2, 6400, 6470), (2, 5120, 5190), (2, 5632, 5702), (2, 6144, 6214), (2, 6656, 6726), (2, 7168, 7238), (2, 7680, 7750), (2, 8192, 8262), (2, 8704, 8774), (2, 9216, 9286), (2, 9728, 9798), (2, 5120, 5190), (2, 6144, 6214), (2, 7168, 7238), (2, 8192, 8262), (2, 9216, 9286), (2, 6144, 6214), (2, 8192, 8262), (2, 8192, 8262), (2, 8192, 8262), (3, 5103, 5173), (3, 5346, 5416), (3, 5589, 5659), (3, 5832, 5902), (3, 6075, 6145), (3, 5103, 5173), (3, 5832, 5902), (3, 6561, 6631), (3, 7290, 7360), (3, 8019, 8089), (3, 8748, 8818), (3, 9477, 9547), (3, 6561, 6631), (3, 8748, 8818), (3, 6561, 6631), (5, 5000, 5070), (5, 5625, 5695), (5, 6250, 6320), (5, 6875, 6945), (5, 7500, 7570), (5, 8125, 8195), (5, 8750, 8820), (5, 9375, 9445), (5, 6250, 6320), (5, 9375, 9445), (7, 5145, 5215), (7, 5488, 5558), (7, 5831, 5901), (7, 6174, 6244), (7, 6517, 6587), (7, 6860, 6930), (7, 7203, 7273), (7, 7546, 7616), (7, 7889, 7959), (7, 8232, 8302), (7, 8575, 8645), (7, 7203, 7273), (7, 9604, 9674), (11, 5324, 5394), (11, 6655, 6725), (11, 7986, 8056), (11, 9317, 9387), (13, 6591, 6661), (13, 8788, 8858), (17, 4970, 4983), (17, 5202, 5272), (17, 5491, 5561), (17, 5780, 5850), (17, 6069, 6139), (17, 6358, 6428), (17, 6647, 6717), (17, 6936, 7006), (17, 7225, 7295), (17, 4970, 4983), (17, 9826, 9896), (19, 5054, 5124), (19, 5415, 5485), (19, 5776, 5846), (19, 6137, 6207), (19, 6498, 6568), (19, 6859, 6929), (19, 7220, 7290), (19, 7581, 7651), (19, 7942, 8012), (19, 8303, 8373), (19, 8664, 8734), (19, 9025, 9095), (19, 6859, 6929), (23, 5290, 5360), (23, 5819, 5889), (23, 6348, 6418), (23, 6877, 6947), (23, 7406, 7476), (23, 7935, 8005), (23, 8464, 8534), (23, 8993, 9063), (23, 9522, 9592), (29, 5046, 5116), (29, 5887, 5957), (29, 6728, 6798), (29, 7569, 7639), (29, 8410, 8480), (29, 9251, 9321), (31, 5766, 5836), (31, 6727, 6797), (31, 7688, 7758), (31, 8649, 8719), (31, 9610, 9680), (37, 5476, 5546), (37, 6845, 6915), (37, 8214, 8284), (37, 9583, 9653), (41, 5043, 5113), (41, 6724, 6794), (41, 8405, 8475), (43, 5547, 5617), (43, 7396, 7466), (43, 9245, 9315), (47, 6627, 6697), (47, 8836, 8906), (53, 5618, 5688), (53, 8427, 8497), (59, 6962, 7032), (61, 7442, 7512), (67, 8978, 9048)]

def row071_layer000_block000 : List ColouredInterval :=
  [(2, 5120, 5190), (2, 5376, 5446), (2, 5632, 5702), (2, 5888, 5958), (2, 6144, 6214), (2, 6400, 6470), (2, 5120, 5190), (2, 5632, 5702), (2, 6144, 6214), (2, 6656, 6726), (2, 7168, 7238), (2, 7680, 7750), (2, 8192, 8262), (2, 8704, 8774), (2, 9216, 9286)]

def row071_layer000_block001 : List ColouredInterval :=
  [(2, 9728, 9798), (2, 5120, 5190), (2, 6144, 6214), (2, 7168, 7238), (2, 8192, 8262), (2, 9216, 9286), (2, 6144, 6214), (2, 8192, 8262), (2, 8192, 8262), (2, 8192, 8262), (3, 5103, 5173), (3, 5346, 5416), (3, 5589, 5659), (3, 5832, 5902), (3, 6075, 6145)]

def row071_layer000_block002 : List ColouredInterval :=
  [(3, 5103, 5173), (3, 5832, 5902), (3, 6561, 6631), (3, 7290, 7360), (3, 8019, 8089), (3, 8748, 8818), (3, 9477, 9547), (3, 6561, 6631), (3, 8748, 8818), (3, 6561, 6631), (5, 5000, 5070), (5, 5625, 5695), (5, 6250, 6320), (5, 6875, 6945), (5, 7500, 7570)]

def row071_layer000_block003 : List ColouredInterval :=
  [(5, 8125, 8195), (5, 8750, 8820), (5, 9375, 9445), (5, 6250, 6320), (5, 9375, 9445), (7, 5145, 5215), (7, 5488, 5558), (7, 5831, 5901), (7, 6174, 6244), (7, 6517, 6587), (7, 6860, 6930), (7, 7203, 7273), (7, 7546, 7616), (7, 7889, 7959), (7, 8232, 8302)]

def row071_layer000_block004 : List ColouredInterval :=
  [(7, 8575, 8645), (7, 7203, 7273), (7, 9604, 9674), (11, 5324, 5394), (11, 6655, 6725), (11, 7986, 8056), (11, 9317, 9387), (13, 6591, 6661), (13, 8788, 8858), (17, 4970, 4983), (17, 5202, 5272), (17, 5491, 5561), (17, 5780, 5850), (17, 6069, 6139), (17, 6358, 6428)]

def row071_layer000_block005 : List ColouredInterval :=
  [(17, 6647, 6717), (17, 6936, 7006), (17, 7225, 7295), (17, 4970, 4983), (17, 9826, 9896), (19, 5054, 5124), (19, 5415, 5485), (19, 5776, 5846), (19, 6137, 6207), (19, 6498, 6568), (19, 6859, 6929), (19, 7220, 7290), (19, 7581, 7651), (19, 7942, 8012), (19, 8303, 8373)]

def row071_layer000_block006 : List ColouredInterval :=
  [(19, 8664, 8734), (19, 9025, 9095), (19, 6859, 6929), (23, 5290, 5360), (23, 5819, 5889), (23, 6348, 6418), (23, 6877, 6947), (23, 7406, 7476), (23, 7935, 8005), (23, 8464, 8534), (23, 8993, 9063), (23, 9522, 9592), (29, 5046, 5116), (29, 5887, 5957), (29, 6728, 6798)]

def row071_layer000_block007 : List ColouredInterval :=
  [(29, 7569, 7639), (29, 8410, 8480), (29, 9251, 9321), (31, 5766, 5836), (31, 6727, 6797), (31, 7688, 7758), (31, 8649, 8719), (31, 9610, 9680), (37, 5476, 5546), (37, 6845, 6915), (37, 8214, 8284), (37, 9583, 9653), (41, 5043, 5113), (41, 6724, 6794), (41, 8405, 8475)]

def row071_layer000_block008 : List ColouredInterval :=
  [(43, 5547, 5617), (43, 7396, 7466), (43, 9245, 9315), (47, 6627, 6697), (47, 8836, 8906), (53, 5618, 5688), (53, 8427, 8497), (59, 6962, 7032), (61, 7442, 7512), (67, 8978, 9048)]

def row071_layer000_chunks : List (List ColouredInterval) :=
  [row071_layer000_block000, row071_layer000_block001, row071_layer000_block002, row071_layer000_block003, row071_layer000_block004, row071_layer000_block005, row071_layer000_block006, row071_layer000_block007, row071_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_arithmetic : LayerArithmeticValid row071.height { lower := 4970, upper := 9940, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_enumeration :
    activePowerIntervalList 71 25 4970 9940 = row071_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_pairs000 :
    row071_layer000_block000.all (fun I => row071_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_pairs001 :
    row071_layer000_block001.all (fun I => row071_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_pairs002 :
    row071_layer000_block002.all (fun I => row071_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_pairs003 :
    row071_layer000_block003.all (fun I => row071_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_pairs004 :
    row071_layer000_block004.all (fun I => row071_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_pairs005 :
    row071_layer000_block005.all (fun I => row071_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_pairs006 :
    row071_layer000_block006.all (fun I => row071_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_pairs007 :
    row071_layer000_block007.all (fun I => row071_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_pairs008 :
    row071_layer000_block008.all (fun I => row071_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_chunks_eq : row071_layer000_chunks.flatten = row071_layer000_intervals := by
  rfl

theorem row071_layer000_pairs : pairCoverCheck row071_layer000_intervals row071_bounds = true := by
  apply pairCoverCheck_of_chunks row071_layer000_chunks_eq
  intro block hblock
  simp only [row071_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row071_layer000_pairs000
  · exact row071_layer000_pairs001
  · exact row071_layer000_pairs002
  · exact row071_layer000_pairs003
  · exact row071_layer000_pairs004
  · exact row071_layer000_pairs005
  · exact row071_layer000_pairs006
  · exact row071_layer000_pairs007
  · exact row071_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_checked :
    coverLayerCheck row071.height row071.goods { lower := 4970, upper := 9940, M := 25 } = true := by
  exact coverLayerCheck_of_parts row071_layer000_arithmetic row071_layer000_enumeration row071_bounds_eq row071_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row071_layer001_intervals : List ColouredInterval :=
  [(2, 10240, 10310), (2, 10752, 10822), (2, 10240, 10310), (2, 11264, 11334), (2, 12288, 12358), (2, 13312, 13382), (2, 14336, 14406), (2, 15360, 15430), (2, 16384, 16454), (2, 17408, 17478), (2, 18432, 18502), (2, 19456, 19526), (2, 10240, 10310), (2, 12288, 12358), (2, 14336, 14406), (2, 16384, 16454), (2, 18432, 18502), (2, 12288, 12358), (2, 16384, 16454), (2, 16384, 16454), (2, 16384, 16454), (3, 10206, 10276), (3, 10935, 11005), (3, 11664, 11734), (3, 12393, 12463), (3, 13122, 13192), (3, 13851, 13921), (3, 14580, 14650), (3, 15309, 15379), (3, 10935, 11005), (3, 13122, 13192), (3, 15309, 15379), (3, 17496, 17566), (3, 19683, 19753), (3, 13122, 13192), (3, 19683, 19753), (3, 19683, 19753), (5, 10000, 10070), (5, 10625, 10695), (5, 11250, 11320), (5, 11875, 11945), (5, 12500, 12570), (5, 13125, 13195), (5, 12500, 12570), (5, 15625, 15695), (5, 18750, 18820), (5, 15625, 15695), (7, 12005, 12075), (7, 14406, 14476), (7, 16807, 16877), (7, 19208, 19278), (7, 16807, 16877), (11, 10648, 10718), (11, 11979, 12049), (11, 13310, 13380), (11, 14641, 14711), (11, 15972, 16042), (11, 17303, 17373), (11, 18634, 18704), (11, 14641, 14711), (13, 10985, 11055), (13, 13182, 13252), (13, 15379, 15449), (13, 17576, 17646), (13, 19773, 19843), (17, 14739, 14809), (17, 19652, 19722), (19, 13718, 13788), (23, 10051, 10121), (23, 10580, 10650), (23, 11109, 11179), (23, 12167, 12237), (29, 10092, 10162), (29, 10933, 11003), (29, 11774, 11844), (29, 12615, 12685), (29, 13456, 13526), (29, 14297, 14367), (29, 15138, 15208), (29, 15979, 16049), (29, 16820, 16890), (29, 17661, 17731), (31, 10571, 10641), (31, 11532, 11602), (31, 12493, 12563), (31, 13454, 13524), (31, 14415, 14485), (31, 15376, 15446), (31, 16337, 16407), (31, 17298, 17368), (31, 18259, 18329), (31, 19220, 19290), (37, 10952, 11022), (37, 12321, 12391), (37, 13690, 13760), (37, 15059, 15129), (37, 16428, 16498), (37, 17797, 17867), (37, 19166, 19236), (41, 10086, 10156), (41, 11767, 11837), (41, 13448, 13518), (41, 15129, 15199), (41, 16810, 16880), (41, 18491, 18561), (43, 11094, 11164), (43, 12943, 13013), (43, 14792, 14862), (43, 16641, 16711), (43, 18490, 18560), (47, 11045, 11115), (47, 13254, 13324), (47, 15463, 15533), (47, 17672, 17742), (53, 11236, 11306), (53, 14045, 14115), (53, 16854, 16924), (53, 19663, 19733), (59, 10443, 10513), (59, 13924, 13994), (59, 17405, 17475), (61, 11163, 11233), (61, 14884, 14954), (61, 18605, 18675), (67, 13467, 13537), (67, 17956, 18026)]

def row071_layer001_block000 : List ColouredInterval :=
  [(2, 10240, 10310), (2, 10752, 10822), (2, 10240, 10310), (2, 11264, 11334), (2, 12288, 12358), (2, 13312, 13382), (2, 14336, 14406), (2, 15360, 15430), (2, 16384, 16454), (2, 17408, 17478), (2, 18432, 18502), (2, 19456, 19526), (2, 10240, 10310), (2, 12288, 12358), (2, 14336, 14406), (2, 16384, 16454)]

def row071_layer001_block001 : List ColouredInterval :=
  [(2, 18432, 18502), (2, 12288, 12358), (2, 16384, 16454), (2, 16384, 16454), (2, 16384, 16454), (3, 10206, 10276), (3, 10935, 11005), (3, 11664, 11734), (3, 12393, 12463), (3, 13122, 13192), (3, 13851, 13921), (3, 14580, 14650), (3, 15309, 15379), (3, 10935, 11005), (3, 13122, 13192), (3, 15309, 15379)]

def row071_layer001_block002 : List ColouredInterval :=
  [(3, 17496, 17566), (3, 19683, 19753), (3, 13122, 13192), (3, 19683, 19753), (3, 19683, 19753), (5, 10000, 10070), (5, 10625, 10695), (5, 11250, 11320), (5, 11875, 11945), (5, 12500, 12570), (5, 13125, 13195), (5, 12500, 12570), (5, 15625, 15695), (5, 18750, 18820), (5, 15625, 15695), (7, 12005, 12075)]

def row071_layer001_block003 : List ColouredInterval :=
  [(7, 14406, 14476), (7, 16807, 16877), (7, 19208, 19278), (7, 16807, 16877), (11, 10648, 10718), (11, 11979, 12049), (11, 13310, 13380), (11, 14641, 14711), (11, 15972, 16042), (11, 17303, 17373), (11, 18634, 18704), (11, 14641, 14711), (13, 10985, 11055), (13, 13182, 13252), (13, 15379, 15449), (13, 17576, 17646)]

def row071_layer001_block004 : List ColouredInterval :=
  [(13, 19773, 19843), (17, 14739, 14809), (17, 19652, 19722), (19, 13718, 13788), (23, 10051, 10121), (23, 10580, 10650), (23, 11109, 11179), (23, 12167, 12237), (29, 10092, 10162), (29, 10933, 11003), (29, 11774, 11844), (29, 12615, 12685), (29, 13456, 13526), (29, 14297, 14367), (29, 15138, 15208), (29, 15979, 16049)]

def row071_layer001_block005 : List ColouredInterval :=
  [(29, 16820, 16890), (29, 17661, 17731), (31, 10571, 10641), (31, 11532, 11602), (31, 12493, 12563), (31, 13454, 13524), (31, 14415, 14485), (31, 15376, 15446), (31, 16337, 16407), (31, 17298, 17368), (31, 18259, 18329), (31, 19220, 19290), (37, 10952, 11022), (37, 12321, 12391), (37, 13690, 13760), (37, 15059, 15129)]

def row071_layer001_block006 : List ColouredInterval :=
  [(37, 16428, 16498), (37, 17797, 17867), (37, 19166, 19236), (41, 10086, 10156), (41, 11767, 11837), (41, 13448, 13518), (41, 15129, 15199), (41, 16810, 16880), (41, 18491, 18561), (43, 11094, 11164), (43, 12943, 13013), (43, 14792, 14862), (43, 16641, 16711), (43, 18490, 18560), (47, 11045, 11115), (47, 13254, 13324)]

def row071_layer001_block007 : List ColouredInterval :=
  [(47, 15463, 15533), (47, 17672, 17742), (53, 11236, 11306), (53, 14045, 14115), (53, 16854, 16924), (53, 19663, 19733), (59, 10443, 10513), (59, 13924, 13994), (59, 17405, 17475), (61, 11163, 11233), (61, 14884, 14954), (61, 18605, 18675), (67, 13467, 13537), (67, 17956, 18026)]

def row071_layer001_chunks : List (List ColouredInterval) :=
  [row071_layer001_block000, row071_layer001_block001, row071_layer001_block002, row071_layer001_block003, row071_layer001_block004, row071_layer001_block005, row071_layer001_block006, row071_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_arithmetic : LayerArithmeticValid row071.height { lower := 9940, upper := 19880, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_enumeration :
    activePowerIntervalList 71 21 9940 19880 = row071_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_pairs000 :
    row071_layer001_block000.all (fun I => row071_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_pairs001 :
    row071_layer001_block001.all (fun I => row071_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_pairs002 :
    row071_layer001_block002.all (fun I => row071_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_pairs003 :
    row071_layer001_block003.all (fun I => row071_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_pairs004 :
    row071_layer001_block004.all (fun I => row071_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_pairs005 :
    row071_layer001_block005.all (fun I => row071_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_pairs006 :
    row071_layer001_block006.all (fun I => row071_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_pairs007 :
    row071_layer001_block007.all (fun I => row071_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_chunks_eq : row071_layer001_chunks.flatten = row071_layer001_intervals := by
  rfl

theorem row071_layer001_pairs : pairCoverCheck row071_layer001_intervals row071_bounds = true := by
  apply pairCoverCheck_of_chunks row071_layer001_chunks_eq
  intro block hblock
  simp only [row071_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row071_layer001_pairs000
  · exact row071_layer001_pairs001
  · exact row071_layer001_pairs002
  · exact row071_layer001_pairs003
  · exact row071_layer001_pairs004
  · exact row071_layer001_pairs005
  · exact row071_layer001_pairs006
  · exact row071_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer001_checked :
    coverLayerCheck row071.height row071.goods { lower := 9940, upper := 19880, M := 21 } = true := by
  exact coverLayerCheck_of_parts row071_layer001_arithmetic row071_layer001_enumeration row071_bounds_eq row071_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row071_layer002_intervals : List ColouredInterval :=
  [(2, 20480, 20550), (2, 22528, 22598), (2, 24576, 24646), (2, 26624, 26694), (2, 28672, 28742), (2, 30720, 30790), (2, 32768, 32838), (2, 34816, 34886), (2, 36864, 36934), (2, 20480, 20550), (2, 24576, 24646), (2, 28672, 28742), (2, 32768, 32838), (2, 36864, 36934), (2, 24576, 24646), (2, 32768, 32838), (2, 32768, 32838), (2, 32768, 32838), (3, 21870, 21940), (3, 24057, 24127), (3, 26244, 26314), (3, 28431, 28501), (3, 30618, 30688), (3, 32805, 32875), (3, 34992, 35062), (3, 37179, 37249), (3, 39366, 39436), (3, 26244, 26314), (3, 32805, 32875), (3, 39366, 39436), (3, 39366, 39436), (5, 21875, 21945), (5, 25000, 25070), (5, 28125, 28195), (5, 31250, 31320), (5, 34375, 34445), (5, 37500, 37570), (5, 31250, 31320), (7, 21609, 21679), (7, 24010, 24080), (7, 26411, 26481), (7, 28812, 28882), (7, 31213, 31283), (7, 33614, 33684), (7, 36015, 36085), (7, 38416, 38486), (7, 33614, 33684), (11, 19965, 20035), (11, 21296, 21366), (11, 22627, 22697), (11, 23958, 24028), (11, 29282, 29352), (13, 21970, 22040), (13, 24167, 24237), (13, 26364, 26434), (13, 28561, 28631), (13, 30758, 30828), (13, 32955, 33025), (13, 35152, 35222), (13, 37349, 37419), (13, 39546, 39616), (13, 28561, 28631), (17, 24565, 24635), (17, 29478, 29548), (17, 34391, 34461), (17, 39304, 39374), (19, 20577, 20647), (19, 27436, 27506), (19, 34295, 34365), (23, 24334, 24404), (23, 36501, 36571), (29, 24389, 24459), (31, 29791, 29861), (37, 20535, 20605), (37, 21904, 21974), (37, 23273, 23343), (37, 24642, 24712), (41, 20172, 20242), (41, 21853, 21923), (41, 23534, 23604), (41, 25215, 25285), (41, 26896, 26966), (41, 28577, 28647), (41, 30258, 30328), (43, 20339, 20409), (43, 22188, 22258), (43, 24037, 24107), (43, 25886, 25956), (43, 27735, 27805), (43, 29584, 29654), (43, 31433, 31503), (43, 33282, 33352), (47, 19881, 19951), (47, 22090, 22160), (47, 24299, 24369), (47, 26508, 26578), (47, 28717, 28787), (47, 30926, 30996), (47, 33135, 33205), (47, 35344, 35414), (47, 37553, 37623), (53, 22472, 22542), (53, 25281, 25351), (53, 28090, 28160), (53, 30899, 30969), (53, 33708, 33778), (53, 36517, 36587), (53, 39326, 39396), (59, 20886, 20956), (59, 24367, 24437), (59, 27848, 27918), (59, 31329, 31399), (59, 34810, 34880), (59, 38291, 38361), (61, 22326, 22396), (61, 26047, 26117), (61, 29768, 29838), (61, 33489, 33559), (61, 37210, 37280), (67, 22445, 22515), (67, 26934, 27004), (67, 31423, 31493), (67, 35912, 35982)]

def row071_layer002_block000 : List ColouredInterval :=
  [(2, 20480, 20550), (2, 22528, 22598), (2, 24576, 24646), (2, 26624, 26694), (2, 28672, 28742), (2, 30720, 30790), (2, 32768, 32838), (2, 34816, 34886), (2, 36864, 36934), (2, 20480, 20550), (2, 24576, 24646), (2, 28672, 28742), (2, 32768, 32838), (2, 36864, 36934), (2, 24576, 24646), (2, 32768, 32838)]

def row071_layer002_block001 : List ColouredInterval :=
  [(2, 32768, 32838), (2, 32768, 32838), (3, 21870, 21940), (3, 24057, 24127), (3, 26244, 26314), (3, 28431, 28501), (3, 30618, 30688), (3, 32805, 32875), (3, 34992, 35062), (3, 37179, 37249), (3, 39366, 39436), (3, 26244, 26314), (3, 32805, 32875), (3, 39366, 39436), (3, 39366, 39436), (5, 21875, 21945)]

def row071_layer002_block002 : List ColouredInterval :=
  [(5, 25000, 25070), (5, 28125, 28195), (5, 31250, 31320), (5, 34375, 34445), (5, 37500, 37570), (5, 31250, 31320), (7, 21609, 21679), (7, 24010, 24080), (7, 26411, 26481), (7, 28812, 28882), (7, 31213, 31283), (7, 33614, 33684), (7, 36015, 36085), (7, 38416, 38486), (7, 33614, 33684), (11, 19965, 20035)]

def row071_layer002_block003 : List ColouredInterval :=
  [(11, 21296, 21366), (11, 22627, 22697), (11, 23958, 24028), (11, 29282, 29352), (13, 21970, 22040), (13, 24167, 24237), (13, 26364, 26434), (13, 28561, 28631), (13, 30758, 30828), (13, 32955, 33025), (13, 35152, 35222), (13, 37349, 37419), (13, 39546, 39616), (13, 28561, 28631), (17, 24565, 24635), (17, 29478, 29548)]

def row071_layer002_block004 : List ColouredInterval :=
  [(17, 34391, 34461), (17, 39304, 39374), (19, 20577, 20647), (19, 27436, 27506), (19, 34295, 34365), (23, 24334, 24404), (23, 36501, 36571), (29, 24389, 24459), (31, 29791, 29861), (37, 20535, 20605), (37, 21904, 21974), (37, 23273, 23343), (37, 24642, 24712), (41, 20172, 20242), (41, 21853, 21923), (41, 23534, 23604)]

def row071_layer002_block005 : List ColouredInterval :=
  [(41, 25215, 25285), (41, 26896, 26966), (41, 28577, 28647), (41, 30258, 30328), (43, 20339, 20409), (43, 22188, 22258), (43, 24037, 24107), (43, 25886, 25956), (43, 27735, 27805), (43, 29584, 29654), (43, 31433, 31503), (43, 33282, 33352), (47, 19881, 19951), (47, 22090, 22160), (47, 24299, 24369), (47, 26508, 26578)]

def row071_layer002_block006 : List ColouredInterval :=
  [(47, 28717, 28787), (47, 30926, 30996), (47, 33135, 33205), (47, 35344, 35414), (47, 37553, 37623), (53, 22472, 22542), (53, 25281, 25351), (53, 28090, 28160), (53, 30899, 30969), (53, 33708, 33778), (53, 36517, 36587), (53, 39326, 39396), (59, 20886, 20956), (59, 24367, 24437), (59, 27848, 27918), (59, 31329, 31399)]

def row071_layer002_block007 : List ColouredInterval :=
  [(59, 34810, 34880), (59, 38291, 38361), (61, 22326, 22396), (61, 26047, 26117), (61, 29768, 29838), (61, 33489, 33559), (61, 37210, 37280), (67, 22445, 22515), (67, 26934, 27004), (67, 31423, 31493), (67, 35912, 35982)]

def row071_layer002_chunks : List (List ColouredInterval) :=
  [row071_layer002_block000, row071_layer002_block001, row071_layer002_block002, row071_layer002_block003, row071_layer002_block004, row071_layer002_block005, row071_layer002_block006, row071_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_arithmetic : LayerArithmeticValid row071.height { lower := 19880, upper := 39760, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_enumeration :
    activePowerIntervalList 71 18 19880 39760 = row071_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_pairs000 :
    row071_layer002_block000.all (fun I => row071_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_pairs001 :
    row071_layer002_block001.all (fun I => row071_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_pairs002 :
    row071_layer002_block002.all (fun I => row071_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_pairs003 :
    row071_layer002_block003.all (fun I => row071_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_pairs004 :
    row071_layer002_block004.all (fun I => row071_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_pairs005 :
    row071_layer002_block005.all (fun I => row071_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_pairs006 :
    row071_layer002_block006.all (fun I => row071_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_pairs007 :
    row071_layer002_block007.all (fun I => row071_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_chunks_eq : row071_layer002_chunks.flatten = row071_layer002_intervals := by
  rfl

theorem row071_layer002_pairs : pairCoverCheck row071_layer002_intervals row071_bounds = true := by
  apply pairCoverCheck_of_chunks row071_layer002_chunks_eq
  intro block hblock
  simp only [row071_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row071_layer002_pairs000
  · exact row071_layer002_pairs001
  · exact row071_layer002_pairs002
  · exact row071_layer002_pairs003
  · exact row071_layer002_pairs004
  · exact row071_layer002_pairs005
  · exact row071_layer002_pairs006
  · exact row071_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_checked :
    coverLayerCheck row071.height row071.goods { lower := 19880, upper := 39760, M := 18 } = true := by
  exact coverLayerCheck_of_parts row071_layer002_arithmetic row071_layer002_enumeration row071_bounds_eq row071_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row071_layer003_intervals : List ColouredInterval :=
  [(2, 40960, 41030), (2, 45056, 45126), (2, 49152, 49222), (2, 53248, 53318), (2, 57344, 57414), (2, 61440, 61510), (2, 40960, 41030), (2, 49152, 49222), (2, 57344, 57414), (2, 65536, 65606), (2, 73728, 73798), (2, 49152, 49222), (2, 65536, 65606), (2, 65536, 65606), (2, 65536, 65606), (3, 45927, 45997), (3, 52488, 52558), (3, 59049, 59119), (3, 65610, 65680), (3, 72171, 72241), (3, 78732, 78802), (3, 59049, 59119), (3, 78732, 78802), (3, 59049, 59119), (5, 40625, 40695), (5, 43750, 43820), (5, 46875, 46945), (5, 46875, 46945), (5, 62500, 62570), (5, 78125, 78195), (5, 78125, 78195), (7, 50421, 50491), (7, 67228, 67298), (11, 43923, 43993), (11, 58564, 58634), (11, 73205, 73275), (13, 57122, 57192), (17, 44217, 44287), (17, 49130, 49200), (17, 54043, 54113), (17, 58956, 59026), (17, 63869, 63939), (17, 68782, 68852), (17, 73695, 73765), (19, 41154, 41224), (19, 48013, 48083), (19, 54872, 54942), (19, 61731, 61801), (19, 68590, 68660), (19, 75449, 75519), (23, 48668, 48738), (23, 60835, 60905), (23, 73002, 73072), (29, 48778, 48848), (29, 73167, 73237), (31, 59582, 59652), (37, 50653, 50723), (41, 68921, 68991), (43, 79507, 79519), (53, 42135, 42205), (59, 41772, 41842), (59, 45253, 45323), (59, 48734, 48804), (59, 52215, 52285), (61, 40931, 41001), (61, 44652, 44722), (61, 48373, 48443), (61, 52094, 52164), (61, 55815, 55885), (67, 40401, 40471), (67, 44890, 44960), (67, 49379, 49449), (67, 53868, 53938), (67, 58357, 58427), (67, 62846, 62916), (67, 67335, 67405)]

def row071_layer003_block000 : List ColouredInterval :=
  [(2, 40960, 41030), (2, 45056, 45126), (2, 49152, 49222), (2, 53248, 53318), (2, 57344, 57414), (2, 61440, 61510), (2, 40960, 41030), (2, 49152, 49222), (2, 57344, 57414), (2, 65536, 65606), (2, 73728, 73798), (2, 49152, 49222), (2, 65536, 65606), (2, 65536, 65606), (2, 65536, 65606), (3, 45927, 45997)]

def row071_layer003_block001 : List ColouredInterval :=
  [(3, 52488, 52558), (3, 59049, 59119), (3, 65610, 65680), (3, 72171, 72241), (3, 78732, 78802), (3, 59049, 59119), (3, 78732, 78802), (3, 59049, 59119), (5, 40625, 40695), (5, 43750, 43820), (5, 46875, 46945), (5, 46875, 46945), (5, 62500, 62570), (5, 78125, 78195), (5, 78125, 78195), (7, 50421, 50491)]

def row071_layer003_block002 : List ColouredInterval :=
  [(7, 67228, 67298), (11, 43923, 43993), (11, 58564, 58634), (11, 73205, 73275), (13, 57122, 57192), (17, 44217, 44287), (17, 49130, 49200), (17, 54043, 54113), (17, 58956, 59026), (17, 63869, 63939), (17, 68782, 68852), (17, 73695, 73765), (19, 41154, 41224), (19, 48013, 48083), (19, 54872, 54942), (19, 61731, 61801)]

def row071_layer003_block003 : List ColouredInterval :=
  [(19, 68590, 68660), (19, 75449, 75519), (23, 48668, 48738), (23, 60835, 60905), (23, 73002, 73072), (29, 48778, 48848), (29, 73167, 73237), (31, 59582, 59652), (37, 50653, 50723), (41, 68921, 68991), (43, 79507, 79519), (53, 42135, 42205), (59, 41772, 41842), (59, 45253, 45323), (59, 48734, 48804), (59, 52215, 52285)]

def row071_layer003_block004 : List ColouredInterval :=
  [(61, 40931, 41001), (61, 44652, 44722), (61, 48373, 48443), (61, 52094, 52164), (61, 55815, 55885), (67, 40401, 40471), (67, 44890, 44960), (67, 49379, 49449), (67, 53868, 53938), (67, 58357, 58427), (67, 62846, 62916), (67, 67335, 67405)]

def row071_layer003_chunks : List (List ColouredInterval) :=
  [row071_layer003_block000, row071_layer003_block001, row071_layer003_block002, row071_layer003_block003, row071_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer003_arithmetic : LayerArithmeticValid row071.height { lower := 39760, upper := 79520, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer003_enumeration :
    activePowerIntervalList 71 15 39760 79520 = row071_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer003_pairs000 :
    row071_layer003_block000.all (fun I => row071_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer003_pairs001 :
    row071_layer003_block001.all (fun I => row071_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_pairs001
