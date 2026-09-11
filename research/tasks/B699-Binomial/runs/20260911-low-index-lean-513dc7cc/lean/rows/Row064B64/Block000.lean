import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row064_height : HeightCertificateDatum := { i := 64, r := 21, s := 44, n0Power10 := 12 }

def row064_goods : List GoodSegment := [
  { lower := 130, upper := 190, witness := RowWitness.topPrime 127 },
  { lower := 191, upper := 254, witness := RowWitness.topPrime 191 },
  { lower := 255, upper := 314, witness := RowWitness.topPrime 251 },
  { lower := 315, upper := 376, witness := RowWitness.topPrime 313 },
  { lower := 377, upper := 436, witness := RowWitness.topPrime 373 },
  { lower := 437, upper := 496, witness := RowWitness.topPrime 433 },
  { lower := 497, upper := 554, witness := RowWitness.topPrime 491 },
  { lower := 555, upper := 610, witness := RowWitness.topPrime 547 },
  { lower := 611, upper := 670, witness := RowWitness.topPrime 607 },
  { lower := 671, upper := 724, witness := RowWitness.topPrime 661 },
  { lower := 725, upper := 782, witness := RowWitness.topPrime 719 },
  { lower := 783, upper := 836, witness := RowWitness.topPrime 773 },
  { lower := 837, upper := 892, witness := RowWitness.topPrime 829 },
  { lower := 893, upper := 950, witness := RowWitness.topPrime 887 },
  { lower := 951, upper := 1010, witness := RowWitness.topPrime 947 },
  { lower := 1011, upper := 1072, witness := RowWitness.topPrime 1009 },
  { lower := 1073, upper := 1132, witness := RowWitness.topPrime 1069 },
  { lower := 1133, upper := 1192, witness := RowWitness.topPrime 1129 },
  { lower := 1193, upper := 1256, witness := RowWitness.topPrime 1193 },
  { lower := 1257, upper := 1312, witness := RowWitness.topPrime 1249 },
  { lower := 1313, upper := 1370, witness := RowWitness.topPrime 1307 },
  { lower := 1371, upper := 1430, witness := RowWitness.topPrime 1367 },
  { lower := 1431, upper := 1492, witness := RowWitness.topPrime 1429 },
  { lower := 1493, upper := 1556, witness := RowWitness.topPrime 1493 },
  { lower := 1557, upper := 1616, witness := RowWitness.topPrime 1553 },
  { lower := 1617, upper := 1676, witness := RowWitness.topPrime 1613 },
  { lower := 1677, upper := 1732, witness := RowWitness.topPrime 1669 },
  { lower := 1733, upper := 1796, witness := RowWitness.topPrime 1733 },
  { lower := 1797, upper := 1852, witness := RowWitness.topPrime 1789 },
  { lower := 1853, upper := 1910, witness := RowWitness.topPrime 1847 },
  { lower := 1911, upper := 1970, witness := RowWitness.topPrime 1907 },
  { lower := 1971, upper := 2014, witness := RowWitness.topPrime 1951 },
  { lower := 2015, upper := 2074, witness := RowWitness.topPrime 2011 },
  { lower := 2075, upper := 2132, witness := RowWitness.topPrime 2069 },
  { lower := 2133, upper := 2194, witness := RowWitness.topPrime 2131 },
  { lower := 2195, upper := 2242, witness := RowWitness.topPrime 2179 },
  { lower := 2243, upper := 2306, witness := RowWitness.topPrime 2243 },
  { lower := 2307, upper := 2360, witness := RowWitness.topPrime 2297 },
  { lower := 2361, upper := 2420, witness := RowWitness.topPrime 2357 },
  { lower := 2421, upper := 2480, witness := RowWitness.topPrime 2417 },
  { lower := 2481, upper := 2540, witness := RowWitness.topPrime 2477 },
  { lower := 2541, upper := 2602, witness := RowWitness.topPrime 2539 },
  { lower := 2603, upper := 2656, witness := RowWitness.topPrime 2593 },
  { lower := 2657, upper := 2720, witness := RowWitness.topPrime 2657 },
  { lower := 2721, upper := 2782, witness := RowWitness.topPrime 2719 },
  { lower := 2783, upper := 2840, witness := RowWitness.topPrime 2777 },
  { lower := 2841, upper := 2900, witness := RowWitness.topPrime 2837 },
  { lower := 2901, upper := 2960, witness := RowWitness.topPrime 2897 },
  { lower := 2961, upper := 3020, witness := RowWitness.topPrime 2957 },
  { lower := 3021, upper := 3082, witness := RowWitness.topPrime 3019 },
  { lower := 3083, upper := 3146, witness := RowWitness.topPrime 3083 },
  { lower := 3147, upper := 3200, witness := RowWitness.topPrime 3137 },
  { lower := 3201, upper := 3254, witness := RowWitness.topPrime 3191 },
  { lower := 3255, upper := 3316, witness := RowWitness.topPrime 3253 },
  { lower := 3317, upper := 3376, witness := RowWitness.topPrime 3313 },
  { lower := 3377, upper := 3436, witness := RowWitness.topPrime 3373 },
  { lower := 3437, upper := 3496, witness := RowWitness.topPrime 3433 },
  { lower := 3497, upper := 3554, witness := RowWitness.topPrime 3491 },
  { lower := 3555, upper := 3610, witness := RowWitness.topPrime 3547 },
  { lower := 3611, upper := 3670, witness := RowWitness.topPrime 3607 },
  { lower := 3671, upper := 3734, witness := RowWitness.topPrime 3671 },
  { lower := 3735, upper := 3796, witness := RowWitness.topPrime 3733 },
  { lower := 3797, upper := 3860, witness := RowWitness.topPrime 3797 },
  { lower := 3861, upper := 3916, witness := RowWitness.topPrime 3853 },
  { lower := 3917, upper := 3980, witness := RowWitness.topPrime 3917 },
  { lower := 3981, upper := 4030, witness := RowWitness.topPrime 3967 },
  { lower := 4031, upper := 4034, witness := RowWitness.topPrime 4027 },
  { lower := 4046, upper := 4090, witness := RowWitness.topPrime 4027 },
  { lower := 4091, upper := 4154, witness := RowWitness.topPrime 4091 },
  { lower := 4155, upper := 4179, witness := RowWitness.topPrime 4153 },
  { lower := 4225, upper := 4282, witness := RowWitness.topPrime 4219 },
  { lower := 4283, upper := 4288, witness := RowWitness.topPrime 4283 },
  { lower := 4335, upper := 4390, witness := RowWitness.topPrime 4327 },
  { lower := 4391, upper := 4454, witness := RowWitness.topPrime 4391 },
  { lower := 4455, upper := 4457, witness := RowWitness.topPrime 4451 },
  { lower := 4459, upper := 4481, witness := RowWitness.topPrime 4457 },
  { lower := 4617, upper := 4666, witness := RowWitness.topPrime 4603 },
  { lower := 4667, upper := 4680, witness := RowWitness.topPrime 4663 },
  { lower := 4732, upper := 4756, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4795, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4864, witness := RowWitness.topPrime 4801 },
  { lower := 4865, upper := 4868, witness := RowWitness.topPrime 4861 },
  { lower := 4901, upper := 4952, witness := RowWitness.topPrime 4889 },
  { lower := 4953, upper := 4964, witness := RowWitness.topPrime 4951 },
  { lower := 5043, upper := 5102, witness := RowWitness.topPrime 5039 },
  { lower := 5103, upper := 5133, witness := RowWitness.topPrime 5101 },
  { lower := 5145, upper := 5166, witness := RowWitness.topPrime 5119 },
  { lower := 5202, upper := 5208, witness := RowWitness.topPrime 5197 },
  { lower := 5239, upper := 5265, witness := RowWitness.topPrime 5237 },
  { lower := 5290, upper := 5302, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5386, witness := RowWitness.topPrime 5323 },
  { lower := 5387, upper := 5387, witness := RowWitness.topPrime 5387 },
  { lower := 5476, upper := 5478, witness := RowWitness.topPrime 5471 },
  { lower := 5488, upper := 5546, witness := RowWitness.topPrime 5483 },
  { lower := 5547, upper := 5554, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5610, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5654, witness := RowWitness.topPrime 5591 },
  { lower := 5655, upper := 5681, witness := RowWitness.topPrime 5653 },
  { lower := 5776, upper := 5812, witness := RowWitness.topPrime 5749 },
  { lower := 5813, upper := 5876, witness := RowWitness.topPrime 5813 },
  { lower := 5877, upper := 5895, witness := RowWitness.topPrime 5869 },
  { lower := 6075, upper := 6132, witness := RowWitness.topPrime 6073 },
  { lower := 6137, upper := 6138, witness := RowWitness.topPrime 6133 },
  { lower := 6174, upper := 6200, witness := RowWitness.topPrime 6173 },
  { lower := 6348, upper := 6406, witness := RowWitness.topPrime 6343 },
  { lower := 6407, upper := 6411, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6554, witness := RowWitness.topPrime 6491 },
  { lower := 6555, upper := 6580, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6624, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6682, witness := RowWitness.topPrime 6619 },
  { lower := 6683, upper := 6710, witness := RowWitness.topPrime 6679 },
  { lower := 6727, upper := 6782, witness := RowWitness.topPrime 6719 },
  { lower := 6783, upper := 6790, witness := RowWitness.topPrime 6781 },
  { lower := 6845, upper := 6904, witness := RowWitness.topPrime 6841 },
  { lower := 6905, upper := 6940, witness := RowWitness.topPrime 6899 },
  { lower := 6962, upper := 6999, witness := RowWitness.topPrime 6961 },
  { lower := 7220, upper := 7282, witness := RowWitness.topPrime 7219 },
  { lower := 7283, upper := 7283, witness := RowWitness.topPrime 7283 },
  { lower := 7406, upper := 7456, witness := RowWitness.topPrime 7393 },
  { lower := 7457, upper := 7469, witness := RowWitness.topPrime 7457 },
  { lower := 7500, upper := 7505, witness := RowWitness.topPrime 7499 },
  { lower := 7514, upper := 7570, witness := RowWitness.topPrime 7507 },
  { lower := 7571, upper := 7624, witness := RowWitness.topPrime 7561 },
  { lower := 7625, upper := 7632, witness := RowWitness.topPrime 7621 },
  { lower := 7935, upper := 7996, witness := RowWitness.topPrime 7933 },
  { lower := 7997, upper := 8005, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8049, witness := RowWitness.topPrime 8017 },
  { lower := 8232, upper := 8277, witness := RowWitness.topPrime 8231 },
  { lower := 8410, upper := 8452, witness := RowWitness.topPrime 8389 },
  { lower := 8453, upper := 8490, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8712, witness := RowWitness.topPrime 8663 },
  { lower := 8750, upper := 8810, witness := RowWitness.topPrime 8747 },
  { lower := 8811, upper := 8813, witness := RowWitness.topPrime 8807 },
  { lower := 8836, upper := 8851, witness := RowWitness.topPrime 8831 },
  { lower := 9025, upper := 9056, witness := RowWitness.topPrime 9013 },
  { lower := 9251, upper := 9304, witness := RowWitness.topPrime 9241 },
  { lower := 9305, upper := 9314, witness := RowWitness.topPrime 9293 },
  { lower := 9317, upper := 9324, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9380, witness := RowWitness.topPrime 9371 },
  { lower := 9386, upper := 9438, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9540, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9585, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9664, witness := RowWitness.topPrime 9601 },
  { lower := 9665, upper := 9667, witness := RowWitness.topPrime 9661 },
  { lower := 10051, upper := 10063, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10142, witness := RowWitness.topPrime 10079 },
  { lower := 10143, upper := 10149, witness := RowWitness.topPrime 10141 },
  { lower := 10580, upper := 10630, witness := RowWitness.topPrime 10567 },
  { lower := 10631, upper := 10643, witness := RowWitness.topPrime 10631 },
  { lower := 10648, upper := 10688, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10972, witness := RowWitness.topPrime 10909 },
  { lower := 10973, upper := 11015, witness := RowWitness.topPrime 10973 },
  { lower := 11045, upper := 11048, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11156, witness := RowWitness.topPrime 11093 },
  { lower := 11157, upper := 11157, witness := RowWitness.topPrime 11149 },
  { lower := 11163, upper := 11172, witness := RowWitness.topPrime 11161 },
  { lower := 11250, upper := 11299, witness := RowWitness.topPrime 11243 },
  { lower := 11664, upper := 11701, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11806, witness := RowWitness.topPrime 11743 },
  { lower := 11807, upper := 11830, witness := RowWitness.topPrime 11807 },
  { lower := 12005, upper := 12042, witness := RowWitness.topPrime 11987 },
  { lower := 12500, upper := 12556, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13184, witness := RowWitness.topPrime 13121 },
  { lower := 13185, upper := 13188, witness := RowWitness.topPrime 13183 },
  { lower := 13225, upper := 13245, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13288, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13317, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13514, witness := RowWitness.topPrime 13451 },
  { lower := 13515, upper := 13517, witness := RowWitness.topPrime 13513 },
  { lower := 13718, upper := 13774, witness := RowWitness.topPrime 13711 },
  { lower := 13775, upper := 13813, witness := RowWitness.topPrime 13763 },
  { lower := 14297, upper := 14346, witness := RowWitness.topPrime 14293 },
  { lower := 14406, upper := 14464, witness := RowWitness.topPrime 14401 },
  { lower := 14465, upper := 14469, witness := RowWitness.topPrime 14461 },
  { lower := 14641, upper := 14643, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14802, witness := RowWitness.topPrime 14783 },
  { lower := 15059, upper := 15063, witness := RowWitness.topPrime 15053 },
  { lower := 15138, upper := 15192, witness := RowWitness.topPrime 15137 },
  { lower := 15379, upper := 15439, witness := RowWitness.topPrime 15377 },
  { lower := 15979, upper := 16035, witness := RowWitness.topPrime 15973 },
  { lower := 16038, upper := 16042, witness := RowWitness.topPrime 16033 },
  { lower := 16807, upper := 16850, witness := RowWitness.topPrime 16787 },
  { lower := 16851, upper := 16883, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17361, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17724, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18544, witness := RowWitness.topPrime 18481 },
  { lower := 18545, upper := 18554, witness := RowWitness.topPrime 18541 },
  { lower := 18634, upper := 18668, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19270, witness := RowWitness.topPrime 19207 },
  { lower := 19271, upper := 19271, witness := RowWitness.topPrime 19267 },
  { lower := 19663, upper := 19724, witness := RowWitness.topPrime 19661 },
  { lower := 19725, upper := 19726, witness := RowWitness.topPrime 19717 },
  { lower := 20181, upper := 20240, witness := RowWitness.topPrime 20177 },
  { lower := 20241, upper := 20244, witness := RowWitness.topPrime 20233 },
  { lower := 20577, upper := 20598, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21926, witness := RowWitness.topPrime 21863 },
  { lower := 21927, upper := 21938, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22153, witness := RowWitness.topPrime 22093 },
  { lower := 24010, upper := 24021, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24092, witness := RowWitness.topPrime 24029 },
  { lower := 24093, upper := 24100, witness := RowWitness.topPrime 24091 },
  { lower := 24334, upper := 24362, witness := RowWitness.topPrime 24329 },
  { lower := 24367, upper := 24422, witness := RowWitness.topPrime 24359 },
  { lower := 24423, upper := 24430, witness := RowWitness.topPrime 24421 },
  { lower := 25289, upper := 25324, witness := RowWitness.topPrime 25261 },
  { lower := 25325, upper := 25344, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26074, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26427, witness := RowWitness.topPrime 26407 },
  { lower := 27436, upper := 27443, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28153, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28624, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28780, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28812, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29831, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30656, witness := RowWitness.topPrime 30593 },
  { lower := 30657, upper := 30676, witness := RowWitness.topPrime 30649 },
  { lower := 30926, upper := 30962, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31276, witness := RowWitness.topPrime 31249 },
  { lower := 31487, upper := 31496, witness := RowWitness.topPrime 31481 },
  { lower := 31944, upper := 31970, witness := RowWitness.topPrime 31907 },
  { lower := 31971, upper := 32002, witness := RowWitness.topPrime 31963 },
  { lower := 33620, upper := 33677, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34438, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35194, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35364, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36560, witness := RowWitness.topPrime 36497 },
  { lower := 36561, upper := 36564, witness := RowWitness.topPrime 36559 },
  { lower := 36982, upper := 37042, witness := RowWitness.topPrime 36979 },
  { lower := 37043, upper := 37043, witness := RowWitness.topPrime 37039 },
  { lower := 37210, upper := 37242, witness := RowWitness.topPrime 37201 },
  { lower := 37553, upper := 37563, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39386, witness := RowWitness.topPrime 39323 },
  { lower := 39387, upper := 39389, witness := RowWitness.topPrime 39383 },
  { lower := 40678, upper := 40688, witness := RowWitness.topPrime 40639 },
  { lower := 41772, upper := 41806, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43784, witness := RowWitness.topPrime 43721 },
  { lower := 43785, upper := 43803, witness := RowWitness.topPrime 43783 },
  { lower := 43940, upper := 43986, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44243, witness := RowWitness.topPrime 44207 },
  { lower := 48020, upper := 48076, witness := RowWitness.topPrime 48017 },
  { lower := 48373, upper := 48397, witness := RowWitness.topPrime 48371 },
  { lower := 48778, upper := 48797, witness := RowWitness.topPrime 48767 },
  { lower := 58989, upper := 59019, witness := RowWitness.topPrime 58979 },
  { lower := 59049, upper := 59052, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59599, witness := RowWitness.topPrime 59581 },
  { lower := 73205, upper := 73230, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137844, witness := RowWitness.topPrime 137831 }
]

def row064_layers : List CoverLayer := [
  { lower := 4032, upper := 8064, M := 31 },
  { lower := 8064, upper := 16128, M := 27 },
  { lower := 16128, upper := 32256, M := 24 },
  { lower := 32256, upper := 64512, M := 22 },
  { lower := 64512, upper := 129024, M := 19 },
  { lower := 129024, upper := 258048, M := 17 },
  { lower := 258048, upper := 516096, M := 15 },
  { lower := 516096, upper := 1032192, M := 13 },
  { lower := 1032192, upper := 2064384, M := 12 },
  { lower := 2064384, upper := 4128768, M := 11 },
  { lower := 4128768, upper := 8257536, M := 10 },
  { lower := 8257536, upper := 16515072, M := 9 },
  { lower := 16515072, upper := 33030144, M := 8 },
  { lower := 33030144, upper := 66060288, M := 7 },
  { lower := 66060288, upper := 132120576, M := 6 },
  { lower := 132120576, upper := 264241152, M := 5 },
  { lower := 264241152, upper := 528482304, M := 5 },
  { lower := 528482304, upper := 1056964608, M := 4 },
  { lower := 1056964608, upper := 2113929216, M := 4 },
  { lower := 2113929216, upper := 4227858432, M := 4 },
  { lower := 4227858432, upper := 8455716864, M := 3 },
  { lower := 8455716864, upper := 16911433728, M := 3 },
  { lower := 16911433728, upper := 33822867456, M := 3 },
  { lower := 33822867456, upper := 67645734912, M := 2 },
  { lower := 67645734912, upper := 135291469824, M := 2 },
  { lower := 135291469824, upper := 270582939648, M := 2 },
  { lower := 270582939648, upper := 541165879296, M := 2 },
  { lower := 541165879296, upper := 1000000000000, M := 2 }
]

def row064 : FiniteCoverRow := {
  height := row064_height,
  goods := row064_goods,
  layers := row064_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good000_checked :
    goodSegmentCheck 64 21 44
      { lower := 130, upper := 190, witness := RowWitness.topPrime 127 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good001_checked :
    goodSegmentCheck 64 21 44
      { lower := 191, upper := 254, witness := RowWitness.topPrime 191 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good002_checked :
    goodSegmentCheck 64 21 44
      { lower := 255, upper := 314, witness := RowWitness.topPrime 251 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good003_checked :
    goodSegmentCheck 64 21 44
      { lower := 315, upper := 376, witness := RowWitness.topPrime 313 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good004_checked :
    goodSegmentCheck 64 21 44
      { lower := 377, upper := 436, witness := RowWitness.topPrime 373 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good005_checked :
    goodSegmentCheck 64 21 44
      { lower := 437, upper := 496, witness := RowWitness.topPrime 433 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good006_checked :
    goodSegmentCheck 64 21 44
      { lower := 497, upper := 554, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good007_checked :
    goodSegmentCheck 64 21 44
      { lower := 555, upper := 610, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good008_checked :
    goodSegmentCheck 64 21 44
      { lower := 611, upper := 670, witness := RowWitness.topPrime 607 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good009_checked :
    goodSegmentCheck 64 21 44
      { lower := 671, upper := 724, witness := RowWitness.topPrime 661 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good010_checked :
    goodSegmentCheck 64 21 44
      { lower := 725, upper := 782, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good011_checked :
    goodSegmentCheck 64 21 44
      { lower := 783, upper := 836, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good012_checked :
    goodSegmentCheck 64 21 44
      { lower := 837, upper := 892, witness := RowWitness.topPrime 829 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good013_checked :
    goodSegmentCheck 64 21 44
      { lower := 893, upper := 950, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good014_checked :
    goodSegmentCheck 64 21 44
      { lower := 951, upper := 1010, witness := RowWitness.topPrime 947 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good015_checked :
    goodSegmentCheck 64 21 44
      { lower := 1011, upper := 1072, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good016_checked :
    goodSegmentCheck 64 21 44
      { lower := 1073, upper := 1132, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good017_checked :
    goodSegmentCheck 64 21 44
      { lower := 1133, upper := 1192, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good018_checked :
    goodSegmentCheck 64 21 44
      { lower := 1193, upper := 1256, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good019_checked :
    goodSegmentCheck 64 21 44
      { lower := 1257, upper := 1312, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good020_checked :
    goodSegmentCheck 64 21 44
      { lower := 1313, upper := 1370, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good021_checked :
    goodSegmentCheck 64 21 44
      { lower := 1371, upper := 1430, witness := RowWitness.topPrime 1367 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good022_checked :
    goodSegmentCheck 64 21 44
      { lower := 1431, upper := 1492, witness := RowWitness.topPrime 1429 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good023_checked :
    goodSegmentCheck 64 21 44
      { lower := 1493, upper := 1556, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good024_checked :
    goodSegmentCheck 64 21 44
      { lower := 1557, upper := 1616, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good025_checked :
    goodSegmentCheck 64 21 44
      { lower := 1617, upper := 1676, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good026_checked :
    goodSegmentCheck 64 21 44
      { lower := 1677, upper := 1732, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good027_checked :
    goodSegmentCheck 64 21 44
      { lower := 1733, upper := 1796, witness := RowWitness.topPrime 1733 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good028_checked :
    goodSegmentCheck 64 21 44
      { lower := 1797, upper := 1852, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good029_checked :
    goodSegmentCheck 64 21 44
      { lower := 1853, upper := 1910, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good030_checked :
    goodSegmentCheck 64 21 44
      { lower := 1911, upper := 1970, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good031_checked :
    goodSegmentCheck 64 21 44
      { lower := 1971, upper := 2014, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good032_checked :
    goodSegmentCheck 64 21 44
      { lower := 2015, upper := 2074, witness := RowWitness.topPrime 2011 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good033_checked :
    goodSegmentCheck 64 21 44
      { lower := 2075, upper := 2132, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good034_checked :
    goodSegmentCheck 64 21 44
      { lower := 2133, upper := 2194, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good035_checked :
    goodSegmentCheck 64 21 44
      { lower := 2195, upper := 2242, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good036_checked :
    goodSegmentCheck 64 21 44
      { lower := 2243, upper := 2306, witness := RowWitness.topPrime 2243 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good037_checked :
    goodSegmentCheck 64 21 44
      { lower := 2307, upper := 2360, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good038_checked :
    goodSegmentCheck 64 21 44
      { lower := 2361, upper := 2420, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good039_checked :
    goodSegmentCheck 64 21 44
      { lower := 2421, upper := 2480, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good040_checked :
    goodSegmentCheck 64 21 44
      { lower := 2481, upper := 2540, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good041_checked :
    goodSegmentCheck 64 21 44
      { lower := 2541, upper := 2602, witness := RowWitness.topPrime 2539 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good042_checked :
    goodSegmentCheck 64 21 44
      { lower := 2603, upper := 2656, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good043_checked :
    goodSegmentCheck 64 21 44
      { lower := 2657, upper := 2720, witness := RowWitness.topPrime 2657 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good044_checked :
    goodSegmentCheck 64 21 44
      { lower := 2721, upper := 2782, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good045_checked :
    goodSegmentCheck 64 21 44
      { lower := 2783, upper := 2840, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good046_checked :
    goodSegmentCheck 64 21 44
      { lower := 2841, upper := 2900, witness := RowWitness.topPrime 2837 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good047_checked :
    goodSegmentCheck 64 21 44
      { lower := 2901, upper := 2960, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good048_checked :
    goodSegmentCheck 64 21 44
      { lower := 2961, upper := 3020, witness := RowWitness.topPrime 2957 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good049_checked :
    goodSegmentCheck 64 21 44
      { lower := 3021, upper := 3082, witness := RowWitness.topPrime 3019 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good050_checked :
    goodSegmentCheck 64 21 44
      { lower := 3083, upper := 3146, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good051_checked :
    goodSegmentCheck 64 21 44
      { lower := 3147, upper := 3200, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good052_checked :
    goodSegmentCheck 64 21 44
      { lower := 3201, upper := 3254, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good053_checked :
    goodSegmentCheck 64 21 44
      { lower := 3255, upper := 3316, witness := RowWitness.topPrime 3253 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good054_checked :
    goodSegmentCheck 64 21 44
      { lower := 3317, upper := 3376, witness := RowWitness.topPrime 3313 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good055_checked :
    goodSegmentCheck 64 21 44
      { lower := 3377, upper := 3436, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good056_checked :
    goodSegmentCheck 64 21 44
      { lower := 3437, upper := 3496, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good057_checked :
    goodSegmentCheck 64 21 44
      { lower := 3497, upper := 3554, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good058_checked :
    goodSegmentCheck 64 21 44
      { lower := 3555, upper := 3610, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good059_checked :
    goodSegmentCheck 64 21 44
      { lower := 3611, upper := 3670, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good060_checked :
    goodSegmentCheck 64 21 44
      { lower := 3671, upper := 3734, witness := RowWitness.topPrime 3671 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good061_checked :
    goodSegmentCheck 64 21 44
      { lower := 3735, upper := 3796, witness := RowWitness.topPrime 3733 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good062_checked :
    goodSegmentCheck 64 21 44
      { lower := 3797, upper := 3860, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good063_checked :
    goodSegmentCheck 64 21 44
      { lower := 3861, upper := 3916, witness := RowWitness.topPrime 3853 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good064_checked :
    goodSegmentCheck 64 21 44
      { lower := 3917, upper := 3980, witness := RowWitness.topPrime 3917 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good065_checked :
    goodSegmentCheck 64 21 44
      { lower := 3981, upper := 4030, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good066_checked :
    goodSegmentCheck 64 21 44
      { lower := 4031, upper := 4034, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good067_checked :
    goodSegmentCheck 64 21 44
      { lower := 4046, upper := 4090, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good068_checked :
    goodSegmentCheck 64 21 44
      { lower := 4091, upper := 4154, witness := RowWitness.topPrime 4091 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good069_checked :
    goodSegmentCheck 64 21 44
      { lower := 4155, upper := 4179, witness := RowWitness.topPrime 4153 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good070_checked :
    goodSegmentCheck 64 21 44
      { lower := 4225, upper := 4282, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good071_checked :
    goodSegmentCheck 64 21 44
      { lower := 4283, upper := 4288, witness := RowWitness.topPrime 4283 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good072_checked :
    goodSegmentCheck 64 21 44
      { lower := 4335, upper := 4390, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good073_checked :
    goodSegmentCheck 64 21 44
      { lower := 4391, upper := 4454, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good074_checked :
    goodSegmentCheck 64 21 44
      { lower := 4455, upper := 4457, witness := RowWitness.topPrime 4451 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good075_checked :
    goodSegmentCheck 64 21 44
      { lower := 4459, upper := 4481, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good076_checked :
    goodSegmentCheck 64 21 44
      { lower := 4617, upper := 4666, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good077_checked :
    goodSegmentCheck 64 21 44
      { lower := 4667, upper := 4680, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good078_checked :
    goodSegmentCheck 64 21 44
      { lower := 4732, upper := 4756, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good079_checked :
    goodSegmentCheck 64 21 44
      { lower := 4761, upper := 4795, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good080_checked :
    goodSegmentCheck 64 21 44
      { lower := 4802, upper := 4864, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good081_checked :
    goodSegmentCheck 64 21 44
      { lower := 4865, upper := 4868, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good082_checked :
    goodSegmentCheck 64 21 44
      { lower := 4901, upper := 4952, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good083_checked :
    goodSegmentCheck 64 21 44
      { lower := 4953, upper := 4964, witness := RowWitness.topPrime 4951 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good084_checked :
    goodSegmentCheck 64 21 44
      { lower := 5043, upper := 5102, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good085_checked :
    goodSegmentCheck 64 21 44
      { lower := 5103, upper := 5133, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good086_checked :
    goodSegmentCheck 64 21 44
      { lower := 5145, upper := 5166, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good087_checked :
    goodSegmentCheck 64 21 44
      { lower := 5202, upper := 5208, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good088_checked :
    goodSegmentCheck 64 21 44
      { lower := 5239, upper := 5265, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good089_checked :
    goodSegmentCheck 64 21 44
      { lower := 5290, upper := 5302, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good090_checked :
    goodSegmentCheck 64 21 44
      { lower := 5324, upper := 5386, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good091_checked :
    goodSegmentCheck 64 21 44
      { lower := 5387, upper := 5387, witness := RowWitness.topPrime 5387 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good092_checked :
    goodSegmentCheck 64 21 44
      { lower := 5476, upper := 5478, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good093_checked :
    goodSegmentCheck 64 21 44
      { lower := 5488, upper := 5546, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good094_checked :
    goodSegmentCheck 64 21 44
      { lower := 5547, upper := 5554, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good095_checked :
    goodSegmentCheck 64 21 44
      { lower := 5589, upper := 5610, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good096_checked :
    goodSegmentCheck 64 21 44
      { lower := 5618, upper := 5654, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good097_checked :
    goodSegmentCheck 64 21 44
      { lower := 5655, upper := 5681, witness := RowWitness.topPrime 5653 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good098_checked :
    goodSegmentCheck 64 21 44
      { lower := 5776, upper := 5812, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good099_checked :
    goodSegmentCheck 64 21 44
      { lower := 5813, upper := 5876, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good100_checked :
    goodSegmentCheck 64 21 44
      { lower := 5877, upper := 5895, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good101_checked :
    goodSegmentCheck 64 21 44
      { lower := 6075, upper := 6132, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good102_checked :
    goodSegmentCheck 64 21 44
      { lower := 6137, upper := 6138, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good103_checked :
    goodSegmentCheck 64 21 44
      { lower := 6174, upper := 6200, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good104_checked :
    goodSegmentCheck 64 21 44
      { lower := 6348, upper := 6406, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good105_checked :
    goodSegmentCheck 64 21 44
      { lower := 6407, upper := 6411, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good106_checked :
    goodSegmentCheck 64 21 44
      { lower := 6517, upper := 6554, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good107_checked :
    goodSegmentCheck 64 21 44
      { lower := 6555, upper := 6580, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good108_checked :
    goodSegmentCheck 64 21 44
      { lower := 6591, upper := 6624, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good109_checked :
    goodSegmentCheck 64 21 44
      { lower := 6627, upper := 6682, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good110_checked :
    goodSegmentCheck 64 21 44
      { lower := 6683, upper := 6710, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good111_checked :
    goodSegmentCheck 64 21 44
      { lower := 6727, upper := 6782, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good112_checked :
    goodSegmentCheck 64 21 44
      { lower := 6783, upper := 6790, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good113_checked :
    goodSegmentCheck 64 21 44
      { lower := 6845, upper := 6904, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good114_checked :
    goodSegmentCheck 64 21 44
      { lower := 6905, upper := 6940, witness := RowWitness.topPrime 6899 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good115_checked :
    goodSegmentCheck 64 21 44
      { lower := 6962, upper := 6999, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good116_checked :
    goodSegmentCheck 64 21 44
      { lower := 7220, upper := 7282, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good117_checked :
    goodSegmentCheck 64 21 44
      { lower := 7283, upper := 7283, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good118_checked :
    goodSegmentCheck 64 21 44
      { lower := 7406, upper := 7456, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good119_checked :
    goodSegmentCheck 64 21 44
      { lower := 7457, upper := 7469, witness := RowWitness.topPrime 7457 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good120_checked :
    goodSegmentCheck 64 21 44
      { lower := 7500, upper := 7505, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good121_checked :
    goodSegmentCheck 64 21 44
      { lower := 7514, upper := 7570, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good122_checked :
    goodSegmentCheck 64 21 44
      { lower := 7571, upper := 7624, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good123_checked :
    goodSegmentCheck 64 21 44
      { lower := 7625, upper := 7632, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good124_checked :
    goodSegmentCheck 64 21 44
      { lower := 7935, upper := 7996, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good125_checked :
    goodSegmentCheck 64 21 44
      { lower := 7997, upper := 8005, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good126_checked :
    goodSegmentCheck 64 21 44
      { lower := 8019, upper := 8049, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good127_checked :
    goodSegmentCheck 64 21 44
      { lower := 8232, upper := 8277, witness := RowWitness.topPrime 8231 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good128_checked :
    goodSegmentCheck 64 21 44
      { lower := 8410, upper := 8452, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good129_checked :
    goodSegmentCheck 64 21 44
      { lower := 8453, upper := 8490, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good130_checked :
    goodSegmentCheck 64 21 44
      { lower := 8664, upper := 8712, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good131_checked :
    goodSegmentCheck 64 21 44
      { lower := 8750, upper := 8810, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good132_checked :
    goodSegmentCheck 64 21 44
      { lower := 8811, upper := 8813, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good133_checked :
    goodSegmentCheck 64 21 44
      { lower := 8836, upper := 8851, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good134_checked :
    goodSegmentCheck 64 21 44
      { lower := 9025, upper := 9056, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good135_checked :
    goodSegmentCheck 64 21 44
      { lower := 9251, upper := 9304, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good136_checked :
    goodSegmentCheck 64 21 44
      { lower := 9305, upper := 9314, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good137_checked :
    goodSegmentCheck 64 21 44
      { lower := 9317, upper := 9324, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good138_checked :
    goodSegmentCheck 64 21 44
      { lower := 9375, upper := 9380, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good139_checked :
    goodSegmentCheck 64 21 44
      { lower := 9386, upper := 9438, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good140_checked :
    goodSegmentCheck 64 21 44
      { lower := 9522, upper := 9540, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good141_checked :
    goodSegmentCheck 64 21 44
      { lower := 9583, upper := 9585, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good142_checked :
    goodSegmentCheck 64 21 44
      { lower := 9604, upper := 9664, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good143_checked :
    goodSegmentCheck 64 21 44
      { lower := 9665, upper := 9667, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good144_checked :
    goodSegmentCheck 64 21 44
      { lower := 10051, upper := 10063, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good145_checked :
    goodSegmentCheck 64 21 44
      { lower := 10086, upper := 10142, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good146_checked :
    goodSegmentCheck 64 21 44
      { lower := 10143, upper := 10149, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good147_checked :
    goodSegmentCheck 64 21 44
      { lower := 10580, upper := 10630, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good148_checked :
    goodSegmentCheck 64 21 44
      { lower := 10631, upper := 10643, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good149_checked :
    goodSegmentCheck 64 21 44
      { lower := 10648, upper := 10688, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good150_checked :
    goodSegmentCheck 64 21 44
      { lower := 10935, upper := 10972, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good151_checked :
    goodSegmentCheck 64 21 44
      { lower := 10973, upper := 11015, witness := RowWitness.topPrime 10973 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good152_checked :
    goodSegmentCheck 64 21 44
      { lower := 11045, upper := 11048, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good153_checked :
    goodSegmentCheck 64 21 44
      { lower := 11094, upper := 11156, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good154_checked :
    goodSegmentCheck 64 21 44
      { lower := 11157, upper := 11157, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good155_checked :
    goodSegmentCheck 64 21 44
      { lower := 11163, upper := 11172, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good156_checked :
    goodSegmentCheck 64 21 44
      { lower := 11250, upper := 11299, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good157_checked :
    goodSegmentCheck 64 21 44
      { lower := 11664, upper := 11701, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good158_checked :
    goodSegmentCheck 64 21 44
      { lower := 11774, upper := 11806, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good159_checked :
    goodSegmentCheck 64 21 44
      { lower := 11807, upper := 11830, witness := RowWitness.topPrime 11807 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good160_checked :
    goodSegmentCheck 64 21 44
      { lower := 12005, upper := 12042, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good161_checked :
    goodSegmentCheck 64 21 44
      { lower := 12500, upper := 12556, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good162_checked :
    goodSegmentCheck 64 21 44
      { lower := 13125, upper := 13184, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good163_checked :
    goodSegmentCheck 64 21 44
      { lower := 13185, upper := 13188, witness := RowWitness.topPrime 13183 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good164_checked :
    goodSegmentCheck 64 21 44
      { lower := 13225, upper := 13245, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good165_checked :
    goodSegmentCheck 64 21 44
      { lower := 13254, upper := 13288, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good166_checked :
    goodSegmentCheck 64 21 44
      { lower := 13310, upper := 13317, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good167_checked :
    goodSegmentCheck 64 21 44
      { lower := 13454, upper := 13514, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good168_checked :
    goodSegmentCheck 64 21 44
      { lower := 13515, upper := 13517, witness := RowWitness.topPrime 13513 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good169_checked :
    goodSegmentCheck 64 21 44
      { lower := 13718, upper := 13774, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good170_checked :
    goodSegmentCheck 64 21 44
      { lower := 13775, upper := 13813, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good171_checked :
    goodSegmentCheck 64 21 44
      { lower := 14297, upper := 14346, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good172_checked :
    goodSegmentCheck 64 21 44
      { lower := 14406, upper := 14464, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good173_checked :
    goodSegmentCheck 64 21 44
      { lower := 14465, upper := 14469, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good174_checked :
    goodSegmentCheck 64 21 44
      { lower := 14641, upper := 14643, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good175_checked :
    goodSegmentCheck 64 21 44
      { lower := 14792, upper := 14802, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good176_checked :
    goodSegmentCheck 64 21 44
      { lower := 15059, upper := 15063, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good177_checked :
    goodSegmentCheck 64 21 44
      { lower := 15138, upper := 15192, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good178_checked :
    goodSegmentCheck 64 21 44
      { lower := 15379, upper := 15439, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good179_checked :
    goodSegmentCheck 64 21 44
      { lower := 15979, upper := 16035, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good180_checked :
    goodSegmentCheck 64 21 44
      { lower := 16038, upper := 16042, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good181_checked :
    goodSegmentCheck 64 21 44
      { lower := 16807, upper := 16850, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good182_checked :
    goodSegmentCheck 64 21 44
      { lower := 16851, upper := 16883, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good183_checked :
    goodSegmentCheck 64 21 44
      { lower := 17303, upper := 17361, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good184_checked :
    goodSegmentCheck 64 21 44
      { lower := 17672, upper := 17724, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good185_checked :
    goodSegmentCheck 64 21 44
      { lower := 18491, upper := 18544, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good186_checked :
    goodSegmentCheck 64 21 44
      { lower := 18545, upper := 18554, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good187_checked :
    goodSegmentCheck 64 21 44
      { lower := 18634, upper := 18668, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good188_checked :
    goodSegmentCheck 64 21 44
      { lower := 19208, upper := 19270, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good189_checked :
    goodSegmentCheck 64 21 44
      { lower := 19271, upper := 19271, witness := RowWitness.topPrime 19267 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good190_checked :
    goodSegmentCheck 64 21 44
      { lower := 19663, upper := 19724, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good191_checked :
    goodSegmentCheck 64 21 44
      { lower := 19725, upper := 19726, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good192_checked :
    goodSegmentCheck 64 21 44
      { lower := 20181, upper := 20240, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good193_checked :
    goodSegmentCheck 64 21 44
      { lower := 20241, upper := 20244, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good194_checked :
    goodSegmentCheck 64 21 44
      { lower := 20577, upper := 20598, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good195_checked :
    goodSegmentCheck 64 21 44
      { lower := 21870, upper := 21926, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good196_checked :
    goodSegmentCheck 64 21 44
      { lower := 21927, upper := 21938, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good197_checked :
    goodSegmentCheck 64 21 44
      { lower := 22103, upper := 22153, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good198_checked :
    goodSegmentCheck 64 21 44
      { lower := 24010, upper := 24021, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good199_checked :
    goodSegmentCheck 64 21 44
      { lower := 24037, upper := 24092, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good200_checked :
    goodSegmentCheck 64 21 44
      { lower := 24093, upper := 24100, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good201_checked :
    goodSegmentCheck 64 21 44
      { lower := 24334, upper := 24362, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good202_checked :
    goodSegmentCheck 64 21 44
      { lower := 24367, upper := 24422, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good203_checked :
    goodSegmentCheck 64 21 44
      { lower := 24423, upper := 24430, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good204_checked :
    goodSegmentCheck 64 21 44
      { lower := 25289, upper := 25324, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good205_checked :
    goodSegmentCheck 64 21 44
      { lower := 25325, upper := 25344, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good206_checked :
    goodSegmentCheck 64 21 44
      { lower := 26047, upper := 26074, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good207_checked :
    goodSegmentCheck 64 21 44
      { lower := 26411, upper := 26427, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good208_checked :
    goodSegmentCheck 64 21 44
      { lower := 27436, upper := 27443, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good209_checked :
    goodSegmentCheck 64 21 44
      { lower := 28125, upper := 28153, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good210_checked :
    goodSegmentCheck 64 21 44
      { lower := 28577, upper := 28624, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good211_checked :
    goodSegmentCheck 64 21 44
      { lower := 28749, upper := 28780, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good212_checked :
    goodSegmentCheck 64 21 44
      { lower := 28812, upper := 28812, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good213_checked :
    goodSegmentCheck 64 21 44
      { lower := 29791, upper := 29831, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good214_checked :
    goodSegmentCheck 64 21 44
      { lower := 30618, upper := 30656, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good215_checked :
    goodSegmentCheck 64 21 44
      { lower := 30657, upper := 30676, witness := RowWitness.topPrime 30649 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good216_checked :
    goodSegmentCheck 64 21 44
      { lower := 30926, upper := 30962, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good217_checked :
    goodSegmentCheck 64 21 44
      { lower := 31250, upper := 31276, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good218_checked :
    goodSegmentCheck 64 21 44
      { lower := 31487, upper := 31496, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good219_checked :
    goodSegmentCheck 64 21 44
      { lower := 31944, upper := 31970, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good220_checked :
    goodSegmentCheck 64 21 44
      { lower := 31971, upper := 32002, witness := RowWitness.topPrime 31963 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good221_checked :
    goodSegmentCheck 64 21 44
      { lower := 33620, upper := 33677, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good222_checked :
    goodSegmentCheck 64 21 44
      { lower := 34391, upper := 34438, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good223_checked :
    goodSegmentCheck 64 21 44
      { lower := 35152, upper := 35194, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good224_checked :
    goodSegmentCheck 64 21 44
      { lower := 35344, upper := 35364, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good225_checked :
    goodSegmentCheck 64 21 44
      { lower := 36517, upper := 36560, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good226_checked :
    goodSegmentCheck 64 21 44
      { lower := 36561, upper := 36564, witness := RowWitness.topPrime 36559 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good227_checked :
    goodSegmentCheck 64 21 44
      { lower := 36982, upper := 37042, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good228_checked :
    goodSegmentCheck 64 21 44
      { lower := 37043, upper := 37043, witness := RowWitness.topPrime 37039 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good229_checked :
    goodSegmentCheck 64 21 44
      { lower := 37210, upper := 37242, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good230_checked :
    goodSegmentCheck 64 21 44
      { lower := 37553, upper := 37563, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good231_checked :
    goodSegmentCheck 64 21 44
      { lower := 39326, upper := 39386, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good232_checked :
    goodSegmentCheck 64 21 44
      { lower := 39387, upper := 39389, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good233_checked :
    goodSegmentCheck 64 21 44
      { lower := 40678, upper := 40688, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good234_checked :
    goodSegmentCheck 64 21 44
      { lower := 41772, upper := 41806, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good235_checked :
    goodSegmentCheck 64 21 44
      { lower := 43750, upper := 43784, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good236_checked :
    goodSegmentCheck 64 21 44
      { lower := 43785, upper := 43803, witness := RowWitness.topPrime 43783 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good237_checked :
    goodSegmentCheck 64 21 44
      { lower := 43940, upper := 43986, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good238_checked :
    goodSegmentCheck 64 21 44
      { lower := 44217, upper := 44243, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good239_checked :
    goodSegmentCheck 64 21 44
      { lower := 48020, upper := 48076, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good240_checked :
    goodSegmentCheck 64 21 44
      { lower := 48373, upper := 48397, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good241_checked :
    goodSegmentCheck 64 21 44
      { lower := 48778, upper := 48797, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good242_checked :
    goodSegmentCheck 64 21 44
      { lower := 58989, upper := 59019, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good243_checked :
    goodSegmentCheck 64 21 44
      { lower := 59049, upper := 59052, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good244_checked :
    goodSegmentCheck 64 21 44
      { lower := 59582, upper := 59599, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good245_checked :
    goodSegmentCheck 64 21 44
      { lower := 73205, upper := 73230, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good246_checked :
    goodSegmentCheck 64 21 44
      { lower := 137842, upper := 137844, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good246_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_goods_checked :
    row064.goods.all (goodSegmentCheck row064.height.i row064.height.r row064.height.s) = true := by
  change row064_goods.all (goodSegmentCheck 64 21 44) = true
  simp only [row064_goods, List.all_cons, List.all_nil,
    row064_good000_checked,
    row064_good001_checked,
    row064_good002_checked,
    row064_good003_checked,
    row064_good004_checked,
    row064_good005_checked,
    row064_good006_checked,
    row064_good007_checked,
    row064_good008_checked,
    row064_good009_checked,
    row064_good010_checked,
    row064_good011_checked,
    row064_good012_checked,
    row064_good013_checked,
    row064_good014_checked,
    row064_good015_checked,
    row064_good016_checked,
    row064_good017_checked,
    row064_good018_checked,
    row064_good019_checked,
    row064_good020_checked,
    row064_good021_checked,
    row064_good022_checked,
    row064_good023_checked,
    row064_good024_checked,
    row064_good025_checked,
    row064_good026_checked,
    row064_good027_checked,
    row064_good028_checked,
    row064_good029_checked,
    row064_good030_checked,
    row064_good031_checked,
    row064_good032_checked,
    row064_good033_checked,
    row064_good034_checked,
    row064_good035_checked,
    row064_good036_checked,
    row064_good037_checked,
    row064_good038_checked,
    row064_good039_checked,
    row064_good040_checked,
    row064_good041_checked,
    row064_good042_checked,
    row064_good043_checked,
    row064_good044_checked,
    row064_good045_checked,
    row064_good046_checked,
    row064_good047_checked,
    row064_good048_checked,
    row064_good049_checked,
    row064_good050_checked,
    row064_good051_checked,
    row064_good052_checked,
    row064_good053_checked,
    row064_good054_checked,
    row064_good055_checked,
    row064_good056_checked,
    row064_good057_checked,
    row064_good058_checked,
    row064_good059_checked,
    row064_good060_checked,
    row064_good061_checked,
    row064_good062_checked,
    row064_good063_checked,
    row064_good064_checked,
    row064_good065_checked,
    row064_good066_checked,
    row064_good067_checked,
    row064_good068_checked,
    row064_good069_checked,
    row064_good070_checked,
    row064_good071_checked,
    row064_good072_checked,
    row064_good073_checked,
    row064_good074_checked,
    row064_good075_checked,
    row064_good076_checked,
    row064_good077_checked,
    row064_good078_checked,
    row064_good079_checked,
    row064_good080_checked,
    row064_good081_checked,
    row064_good082_checked,
    row064_good083_checked,
    row064_good084_checked,
    row064_good085_checked,
    row064_good086_checked,
    row064_good087_checked,
    row064_good088_checked,
    row064_good089_checked,
    row064_good090_checked,
    row064_good091_checked,
    row064_good092_checked,
    row064_good093_checked,
    row064_good094_checked,
    row064_good095_checked,
    row064_good096_checked,
    row064_good097_checked,
    row064_good098_checked,
    row064_good099_checked,
    row064_good100_checked,
    row064_good101_checked,
    row064_good102_checked,
    row064_good103_checked,
    row064_good104_checked,
    row064_good105_checked,
    row064_good106_checked,
    row064_good107_checked,
    row064_good108_checked,
    row064_good109_checked,
    row064_good110_checked,
    row064_good111_checked,
    row064_good112_checked,
    row064_good113_checked,
    row064_good114_checked,
    row064_good115_checked,
    row064_good116_checked,
    row064_good117_checked,
    row064_good118_checked,
    row064_good119_checked,
    row064_good120_checked,
    row064_good121_checked,
    row064_good122_checked,
    row064_good123_checked,
    row064_good124_checked,
    row064_good125_checked,
    row064_good126_checked,
    row064_good127_checked,
    row064_good128_checked,
    row064_good129_checked,
    row064_good130_checked,
    row064_good131_checked,
    row064_good132_checked,
    row064_good133_checked,
    row064_good134_checked,
    row064_good135_checked,
    row064_good136_checked,
    row064_good137_checked,
    row064_good138_checked,
    row064_good139_checked,
    row064_good140_checked,
    row064_good141_checked,
    row064_good142_checked,
    row064_good143_checked,
    row064_good144_checked,
    row064_good145_checked,
    row064_good146_checked,
    row064_good147_checked,
    row064_good148_checked,
    row064_good149_checked,
    row064_good150_checked,
    row064_good151_checked,
    row064_good152_checked,
    row064_good153_checked,
    row064_good154_checked,
    row064_good155_checked,
    row064_good156_checked,
    row064_good157_checked,
    row064_good158_checked,
    row064_good159_checked,
    row064_good160_checked,
    row064_good161_checked,
    row064_good162_checked,
    row064_good163_checked,
    row064_good164_checked,
    row064_good165_checked,
    row064_good166_checked,
    row064_good167_checked,
    row064_good168_checked,
    row064_good169_checked,
    row064_good170_checked,
    row064_good171_checked,
    row064_good172_checked,
    row064_good173_checked,
    row064_good174_checked,
    row064_good175_checked,
    row064_good176_checked,
    row064_good177_checked,
    row064_good178_checked,
    row064_good179_checked,
    row064_good180_checked,
    row064_good181_checked,
    row064_good182_checked,
    row064_good183_checked,
    row064_good184_checked,
    row064_good185_checked,
    row064_good186_checked,
    row064_good187_checked,
    row064_good188_checked,
    row064_good189_checked,
    row064_good190_checked,
    row064_good191_checked,
    row064_good192_checked,
    row064_good193_checked,
    row064_good194_checked,
    row064_good195_checked,
    row064_good196_checked,
    row064_good197_checked,
    row064_good198_checked,
    row064_good199_checked,
    row064_good200_checked,
    row064_good201_checked,
    row064_good202_checked,
    row064_good203_checked,
    row064_good204_checked,
    row064_good205_checked,
    row064_good206_checked,
    row064_good207_checked,
    row064_good208_checked,
    row064_good209_checked,
    row064_good210_checked,
    row064_good211_checked,
    row064_good212_checked,
    row064_good213_checked,
    row064_good214_checked,
    row064_good215_checked,
    row064_good216_checked,
    row064_good217_checked,
    row064_good218_checked,
    row064_good219_checked,
    row064_good220_checked,
    row064_good221_checked,
    row064_good222_checked,
    row064_good223_checked,
    row064_good224_checked,
    row064_good225_checked,
    row064_good226_checked,
    row064_good227_checked,
    row064_good228_checked,
    row064_good229_checked,
    row064_good230_checked,
    row064_good231_checked,
    row064_good232_checked,
    row064_good233_checked,
    row064_good234_checked,
    row064_good235_checked,
    row064_good236_checked,
    row064_good237_checked,
    row064_good238_checked,
    row064_good239_checked,
    row064_good240_checked,
    row064_good241_checked,
    row064_good242_checked,
    row064_good243_checked,
    row064_good244_checked,
    row064_good245_checked,
    row064_good246_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_registered :
    decide (row064.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row064_small_checked :
    coverCheck (2 * row064.height.i + 2) (row064.height.i * (row064.height.i - 1) - 1)
      (row064.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row064_layerCover_checked :
    coverCheck (row064.height.i * (row064.height.i - 1)) (row064.height.n0 - 1)
      (row064.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row064_bounds : List NatInterval :=
  [(130, 190), (191, 254), (255, 314), (315, 376), (377, 436), (437, 496), (497, 554), (555, 610), (611, 670), (671, 724), (725, 782), (783, 836), (837, 892), (893, 950), (951, 1010), (1011, 1072), (1073, 1132), (1133, 1192), (1193, 1256), (1257, 1312), (1313, 1370), (1371, 1430), (1431, 1492), (1493, 1556), (1557, 1616), (1617, 1676), (1677, 1732), (1733, 1796), (1797, 1852), (1853, 1910), (1911, 1970), (1971, 2014), (2015, 2074), (2075, 2132), (2133, 2194), (2195, 2242), (2243, 2306), (2307, 2360), (2361, 2420), (2421, 2480), (2481, 2540), (2541, 2602), (2603, 2656), (2657, 2720), (2721, 2782), (2783, 2840), (2841, 2900), (2901, 2960), (2961, 3020), (3021, 3082), (3083, 3146), (3147, 3200), (3201, 3254), (3255, 3316), (3317, 3376), (3377, 3436), (3437, 3496), (3497, 3554), (3555, 3610), (3611, 3670), (3671, 3734), (3735, 3796), (3797, 3860), (3861, 3916), (3917, 3980), (3981, 4030), (4031, 4034), (4046, 4090), (4091, 4154), (4155, 4179), (4225, 4282), (4283, 4288), (4335, 4390), (4391, 4454), (4455, 4457), (4459, 4481), (4617, 4666), (4667, 4680), (4732, 4756), (4761, 4795), (4802, 4864), (4865, 4868), (4901, 4952), (4953, 4964), (5043, 5102), (5103, 5133), (5145, 5166), (5202, 5208), (5239, 5265), (5290, 5302), (5324, 5386), (5387, 5387), (5476, 5478), (5488, 5546), (5547, 5554), (5589, 5610), (5618, 5654), (5655, 5681), (5776, 5812), (5813, 5876), (5877, 5895), (6075, 6132), (6137, 6138), (6174, 6200), (6348, 6406), (6407, 6411), (6517, 6554), (6555, 6580), (6591, 6624), (6627, 6682), (6683, 6710), (6727, 6782), (6783, 6790), (6845, 6904), (6905, 6940), (6962, 6999), (7220, 7282), (7283, 7283), (7406, 7456), (7457, 7469), (7500, 7505), (7514, 7570), (7571, 7624), (7625, 7632), (7935, 7996), (7997, 8005), (8019, 8049), (8232, 8277), (8410, 8452), (8453, 8490), (8664, 8712), (8750, 8810), (8811, 8813), (8836, 8851), (9025, 9056), (9251, 9304), (9305, 9314), (9317, 9324), (9375, 9380), (9386, 9438), (9522, 9540), (9583, 9585), (9604, 9664), (9665, 9667), (10051, 10063), (10086, 10142), (10143, 10149), (10580, 10630), (10631, 10643), (10648, 10688), (10935, 10972), (10973, 11015), (11045, 11048), (11094, 11156), (11157, 11157), (11163, 11172), (11250, 11299), (11664, 11701), (11774, 11806), (11807, 11830), (12005, 12042), (12500, 12556), (13125, 13184), (13185, 13188), (13225, 13245), (13254, 13288), (13310, 13317), (13454, 13514), (13515, 13517), (13718, 13774), (13775, 13813), (14297, 14346), (14406, 14464), (14465, 14469), (14641, 14643), (14792, 14802), (15059, 15063), (15138, 15192), (15379, 15439), (15979, 16035), (16038, 16042), (16807, 16850), (16851, 16883), (17303, 17361), (17672, 17724), (18491, 18544), (18545, 18554), (18634, 18668), (19208, 19270), (19271, 19271), (19663, 19724), (19725, 19726), (20181, 20240), (20241, 20244), (20577, 20598), (21870, 21926), (21927, 21938), (22103, 22153), (24010, 24021), (24037, 24092), (24093, 24100), (24334, 24362), (24367, 24422), (24423, 24430), (25289, 25324), (25325, 25344), (26047, 26074), (26411, 26427), (27436, 27443), (28125, 28153), (28577, 28624), (28749, 28780), (28812, 28812), (29791, 29831), (30618, 30656), (30657, 30676), (30926, 30962), (31250, 31276), (31487, 31496), (31944, 31970), (31971, 32002), (33620, 33677), (34391, 34438), (35152, 35194), (35344, 35364), (36517, 36560), (36561, 36564), (36982, 37042), (37043, 37043), (37210, 37242), (37553, 37563), (39326, 39386), (39387, 39389), (40678, 40688), (41772, 41806), (43750, 43784), (43785, 43803), (43940, 43986), (44217, 44243), (48020, 48076), (48373, 48397), (48778, 48797), (58989, 59019), (59049, 59052), (59582, 59599), (73205, 73230), (137842, 137844)]

theorem row064_bounds_eq : row064.goods.map goodSegmentBounds = row064_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row064_layer000_intervals : List ColouredInterval :=
  [(3, 4131, 4194), (3, 4374, 4437), (3, 4617, 4680), (3, 4860, 4923), (3, 5103, 5166), (3, 5346, 5409), (3, 5589, 5652), (3, 5832, 5895), (3, 6075, 6138), (3, 6318, 6381), (3, 6561, 6624), (3, 6804, 6867), (3, 7047, 7110), (3, 7290, 7353), (3, 7533, 7596), (3, 4374, 4437), (3, 5103, 5166), (3, 5832, 5895), (3, 6561, 6624), (3, 7290, 7353), (3, 8019, 8063), (3, 4374, 4437), (3, 6561, 6624), (3, 6561, 6624), (5, 4375, 4438), (5, 5000, 5063), (5, 5625, 5688), (5, 6250, 6313), (5, 6875, 6938), (5, 7500, 7563), (5, 6250, 6313), (7, 4116, 4179), (7, 4459, 4522), (7, 4802, 4865), (7, 5145, 5208), (7, 5488, 5551), (7, 5831, 5894), (7, 6174, 6237), (7, 6517, 6580), (7, 6860, 6923), (7, 7203, 7266), (7, 7546, 7609), (7, 7889, 7952), (7, 4802, 4865), (7, 7203, 7266), (11, 4032, 4056), (11, 5324, 5387), (11, 6655, 6718), (11, 7986, 8049), (13, 4056, 4119), (13, 4225, 4288), (13, 4394, 4457), (13, 4563, 4626), (13, 4732, 4795), (13, 4901, 4964), (13, 5070, 5133), (13, 5239, 5302), (13, 4394, 4457), (13, 6591, 6654), (17, 4046, 4109), (17, 4335, 4398), (17, 4624, 4687), (17, 4913, 4976), (17, 5202, 5265), (17, 5491, 5554), (17, 5780, 5843), (17, 6069, 6132), (17, 6358, 6421), (17, 6647, 6710), (17, 6936, 6999), (17, 7225, 7288), (17, 7514, 7577), (17, 7803, 7866), (17, 4913, 4976), (19, 4032, 4034), (19, 4332, 4395), (19, 4693, 4756), (19, 5054, 5117), (19, 5415, 5478), (19, 5776, 5839), (19, 6137, 6200), (19, 6498, 6561), (19, 6859, 6922), (19, 7220, 7283), (19, 7581, 7644), (19, 7942, 8005), (19, 6859, 6922), (23, 4232, 4295), (23, 4761, 4824), (23, 5290, 5353), (23, 5819, 5882), (23, 6348, 6411), (23, 6877, 6940), (23, 7406, 7469), (23, 7935, 7998), (29, 4205, 4268), (29, 5046, 5109), (29, 5887, 5950), (29, 6728, 6791), (29, 7569, 7632), (31, 4805, 4868), (31, 5766, 5829), (31, 6727, 6790), (31, 7688, 7751), (37, 4107, 4170), (37, 5476, 5539), (37, 6845, 6908), (41, 5043, 5106), (41, 6724, 6787), (43, 5547, 5610), (43, 7396, 7459), (47, 4418, 4481), (47, 6627, 6690), (53, 5618, 5681), (59, 6962, 7025), (61, 7442, 7505)]

def row064_layer000_block000 : List ColouredInterval :=
  [(3, 4131, 4194), (3, 4374, 4437), (3, 4617, 4680), (3, 4860, 4923), (3, 5103, 5166), (3, 5346, 5409), (3, 5589, 5652), (3, 5832, 5895), (3, 6075, 6138), (3, 6318, 6381), (3, 6561, 6624), (3, 6804, 6867), (3, 7047, 7110), (3, 7290, 7353), (3, 7533, 7596), (3, 4374, 4437)]

def row064_layer000_block001 : List ColouredInterval :=
  [(3, 5103, 5166), (3, 5832, 5895), (3, 6561, 6624), (3, 7290, 7353), (3, 8019, 8063), (3, 4374, 4437), (3, 6561, 6624), (3, 6561, 6624), (5, 4375, 4438), (5, 5000, 5063), (5, 5625, 5688), (5, 6250, 6313), (5, 6875, 6938), (5, 7500, 7563), (5, 6250, 6313), (7, 4116, 4179)]

def row064_layer000_block002 : List ColouredInterval :=
  [(7, 4459, 4522), (7, 4802, 4865), (7, 5145, 5208), (7, 5488, 5551), (7, 5831, 5894), (7, 6174, 6237), (7, 6517, 6580), (7, 6860, 6923), (7, 7203, 7266), (7, 7546, 7609), (7, 7889, 7952), (7, 4802, 4865), (7, 7203, 7266), (11, 4032, 4056), (11, 5324, 5387), (11, 6655, 6718)]

def row064_layer000_block003 : List ColouredInterval :=
  [(11, 7986, 8049), (13, 4056, 4119), (13, 4225, 4288), (13, 4394, 4457), (13, 4563, 4626), (13, 4732, 4795), (13, 4901, 4964), (13, 5070, 5133), (13, 5239, 5302), (13, 4394, 4457), (13, 6591, 6654), (17, 4046, 4109), (17, 4335, 4398), (17, 4624, 4687), (17, 4913, 4976), (17, 5202, 5265)]

def row064_layer000_block004 : List ColouredInterval :=
  [(17, 5491, 5554), (17, 5780, 5843), (17, 6069, 6132), (17, 6358, 6421), (17, 6647, 6710), (17, 6936, 6999), (17, 7225, 7288), (17, 7514, 7577), (17, 7803, 7866), (17, 4913, 4976), (19, 4032, 4034), (19, 4332, 4395), (19, 4693, 4756), (19, 5054, 5117), (19, 5415, 5478), (19, 5776, 5839)]

def row064_layer000_block005 : List ColouredInterval :=
  [(19, 6137, 6200), (19, 6498, 6561), (19, 6859, 6922), (19, 7220, 7283), (19, 7581, 7644), (19, 7942, 8005), (19, 6859, 6922), (23, 4232, 4295), (23, 4761, 4824), (23, 5290, 5353), (23, 5819, 5882), (23, 6348, 6411), (23, 6877, 6940), (23, 7406, 7469), (23, 7935, 7998), (29, 4205, 4268)]

def row064_layer000_block006 : List ColouredInterval :=
  [(29, 5046, 5109), (29, 5887, 5950), (29, 6728, 6791), (29, 7569, 7632), (31, 4805, 4868), (31, 5766, 5829), (31, 6727, 6790), (31, 7688, 7751), (37, 4107, 4170), (37, 5476, 5539), (37, 6845, 6908), (41, 5043, 5106), (41, 6724, 6787), (43, 5547, 5610), (43, 7396, 7459), (47, 4418, 4481)]

def row064_layer000_block007 : List ColouredInterval :=
  [(47, 6627, 6690), (53, 5618, 5681), (59, 6962, 7025), (61, 7442, 7505)]

def row064_layer000_chunks : List (List ColouredInterval) :=
  [row064_layer000_block000, row064_layer000_block001, row064_layer000_block002, row064_layer000_block003, row064_layer000_block004, row064_layer000_block005, row064_layer000_block006, row064_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_arithmetic : LayerArithmeticValid row064.height { lower := 4032, upper := 8064, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_enumeration :
    activePowerIntervalList 64 31 4032 8064 = row064_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_pairs000 :
    row064_layer000_block000.all (fun I => row064_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_pairs001 :
    row064_layer000_block001.all (fun I => row064_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_pairs002 :
    row064_layer000_block002.all (fun I => row064_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_pairs003 :
    row064_layer000_block003.all (fun I => row064_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_pairs004 :
    row064_layer000_block004.all (fun I => row064_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_pairs005 :
    row064_layer000_block005.all (fun I => row064_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_pairs006 :
    row064_layer000_block006.all (fun I => row064_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_pairs007 :
    row064_layer000_block007.all (fun I => row064_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_chunks_eq : row064_layer000_chunks.flatten = row064_layer000_intervals := by
  rfl

theorem row064_layer000_pairs : pairCoverCheck row064_layer000_intervals row064_bounds = true := by
  apply pairCoverCheck_of_chunks row064_layer000_chunks_eq
  intro block hblock
  simp only [row064_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row064_layer000_pairs000
  · exact row064_layer000_pairs001
  · exact row064_layer000_pairs002
  · exact row064_layer000_pairs003
  · exact row064_layer000_pairs004
  · exact row064_layer000_pairs005
  · exact row064_layer000_pairs006
  · exact row064_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer000_checked :
    coverLayerCheck row064.height row064.goods { lower := 4032, upper := 8064, M := 31 } = true := by
  exact coverLayerCheck_of_parts row064_layer000_arithmetic row064_layer000_enumeration row064_bounds_eq row064_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row064_layer001_intervals : List ColouredInterval :=
  [(3, 8064, 8082), (3, 8748, 8811), (3, 9477, 9540), (3, 10206, 10269), (3, 10935, 10998), (3, 11664, 11727), (3, 12393, 12456), (3, 13122, 13185), (3, 13851, 13914), (3, 14580, 14643), (3, 15309, 15372), (3, 16038, 16101), (3, 8748, 8811), (3, 10935, 10998), (3, 13122, 13185), (3, 15309, 15372), (3, 13122, 13185), (5, 8125, 8188), (5, 8750, 8813), (5, 9375, 9438), (5, 10000, 10063), (5, 10625, 10688), (5, 11250, 11313), (5, 11875, 11938), (5, 12500, 12563), (5, 13125, 13188), (5, 13750, 13813), (5, 14375, 14438), (5, 15000, 15063), (5, 15625, 15688), (5, 9375, 9438), (5, 12500, 12563), (5, 15625, 15688), (5, 15625, 15688), (7, 8232, 8295), (7, 8575, 8638), (7, 8918, 8981), (7, 9261, 9324), (7, 9604, 9667), (7, 12005, 12068), (7, 14406, 14469), (11, 9317, 9380), (11, 10648, 10711), (11, 11979, 12042), (11, 13310, 13373), (11, 14641, 14704), (11, 15972, 16035), (11, 14641, 14704), (13, 8788, 8851), (13, 10985, 11048), (13, 13182, 13245), (13, 15379, 15442), (17, 9826, 9889), (17, 14739, 14802), (19, 8303, 8366), (19, 8664, 8727), (19, 9025, 9088), (19, 9386, 9449), (19, 9747, 9810), (19, 13718, 13781), (23, 8464, 8527), (23, 8993, 9056), (23, 9522, 9585), (23, 10051, 10114), (23, 10580, 10643), (23, 11109, 11172), (23, 11638, 11701), (23, 12167, 12230), (23, 12696, 12759), (23, 13225, 13288), (23, 13754, 13817), (23, 14283, 14346), (23, 12167, 12230), (29, 8410, 8473), (29, 9251, 9314), (29, 10092, 10155), (29, 10933, 10996), (29, 11774, 11837), (29, 12615, 12678), (29, 13456, 13519), (29, 14297, 14360), (29, 15138, 15201), (29, 15979, 16042), (31, 8649, 8712), (31, 9610, 9673), (31, 10571, 10634), (31, 11532, 11595), (31, 12493, 12556), (31, 13454, 13517), (31, 14415, 14478), (31, 15376, 15439), (37, 8214, 8277), (37, 9583, 9646), (37, 10952, 11015), (37, 12321, 12384), (37, 13690, 13753), (37, 15059, 15122), (41, 8405, 8468), (41, 10086, 10149), (41, 11767, 11830), (41, 13448, 13511), (41, 15129, 15192), (43, 9245, 9308), (43, 11094, 11157), (43, 12943, 13006), (43, 14792, 14855), (47, 8836, 8899), (47, 11045, 11108), (47, 13254, 13317), (47, 15463, 15526), (53, 8427, 8490), (53, 11236, 11299), (53, 14045, 14108), (59, 10443, 10506), (59, 13924, 13987), (61, 11163, 11226), (61, 14884, 14947)]

def row064_layer001_block000 : List ColouredInterval :=
  [(3, 8064, 8082), (3, 8748, 8811), (3, 9477, 9540), (3, 10206, 10269), (3, 10935, 10998), (3, 11664, 11727), (3, 12393, 12456), (3, 13122, 13185), (3, 13851, 13914), (3, 14580, 14643), (3, 15309, 15372), (3, 16038, 16101), (3, 8748, 8811), (3, 10935, 10998), (3, 13122, 13185), (3, 15309, 15372)]

def row064_layer001_block001 : List ColouredInterval :=
  [(3, 13122, 13185), (5, 8125, 8188), (5, 8750, 8813), (5, 9375, 9438), (5, 10000, 10063), (5, 10625, 10688), (5, 11250, 11313), (5, 11875, 11938), (5, 12500, 12563), (5, 13125, 13188), (5, 13750, 13813), (5, 14375, 14438), (5, 15000, 15063), (5, 15625, 15688), (5, 9375, 9438), (5, 12500, 12563)]

def row064_layer001_block002 : List ColouredInterval :=
  [(5, 15625, 15688), (5, 15625, 15688), (7, 8232, 8295), (7, 8575, 8638), (7, 8918, 8981), (7, 9261, 9324), (7, 9604, 9667), (7, 12005, 12068), (7, 14406, 14469), (11, 9317, 9380), (11, 10648, 10711), (11, 11979, 12042), (11, 13310, 13373), (11, 14641, 14704), (11, 15972, 16035), (11, 14641, 14704)]

def row064_layer001_block003 : List ColouredInterval :=
  [(13, 8788, 8851), (13, 10985, 11048), (13, 13182, 13245), (13, 15379, 15442), (17, 9826, 9889), (17, 14739, 14802), (19, 8303, 8366), (19, 8664, 8727), (19, 9025, 9088), (19, 9386, 9449), (19, 9747, 9810), (19, 13718, 13781), (23, 8464, 8527), (23, 8993, 9056), (23, 9522, 9585), (23, 10051, 10114)]

def row064_layer001_block004 : List ColouredInterval :=
  [(23, 10580, 10643), (23, 11109, 11172), (23, 11638, 11701), (23, 12167, 12230), (23, 12696, 12759), (23, 13225, 13288), (23, 13754, 13817), (23, 14283, 14346), (23, 12167, 12230), (29, 8410, 8473), (29, 9251, 9314), (29, 10092, 10155), (29, 10933, 10996), (29, 11774, 11837), (29, 12615, 12678), (29, 13456, 13519)]

def row064_layer001_block005 : List ColouredInterval :=
  [(29, 14297, 14360), (29, 15138, 15201), (29, 15979, 16042), (31, 8649, 8712), (31, 9610, 9673), (31, 10571, 10634), (31, 11532, 11595), (31, 12493, 12556), (31, 13454, 13517), (31, 14415, 14478), (31, 15376, 15439), (37, 8214, 8277), (37, 9583, 9646), (37, 10952, 11015), (37, 12321, 12384), (37, 13690, 13753)]

def row064_layer001_block006 : List ColouredInterval :=
  [(37, 15059, 15122), (41, 8405, 8468), (41, 10086, 10149), (41, 11767, 11830), (41, 13448, 13511), (41, 15129, 15192), (43, 9245, 9308), (43, 11094, 11157), (43, 12943, 13006), (43, 14792, 14855), (47, 8836, 8899), (47, 11045, 11108), (47, 13254, 13317), (47, 15463, 15526), (53, 8427, 8490), (53, 11236, 11299)]

def row064_layer001_block007 : List ColouredInterval :=
  [(53, 14045, 14108), (59, 10443, 10506), (59, 13924, 13987), (61, 11163, 11226), (61, 14884, 14947)]

def row064_layer001_chunks : List (List ColouredInterval) :=
  [row064_layer001_block000, row064_layer001_block001, row064_layer001_block002, row064_layer001_block003, row064_layer001_block004, row064_layer001_block005, row064_layer001_block006, row064_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_arithmetic : LayerArithmeticValid row064.height { lower := 8064, upper := 16128, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_enumeration :
    activePowerIntervalList 64 27 8064 16128 = row064_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_pairs000 :
    row064_layer001_block000.all (fun I => row064_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_pairs001 :
    row064_layer001_block001.all (fun I => row064_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_pairs002 :
    row064_layer001_block002.all (fun I => row064_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_pairs003 :
    row064_layer001_block003.all (fun I => row064_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_pairs004 :
    row064_layer001_block004.all (fun I => row064_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_pairs005 :
    row064_layer001_block005.all (fun I => row064_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_pairs006 :
    row064_layer001_block006.all (fun I => row064_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_pairs007 :
    row064_layer001_block007.all (fun I => row064_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_chunks_eq : row064_layer001_chunks.flatten = row064_layer001_intervals := by
  rfl

theorem row064_layer001_pairs : pairCoverCheck row064_layer001_intervals row064_bounds = true := by
  apply pairCoverCheck_of_chunks row064_layer001_chunks_eq
  intro block hblock
  simp only [row064_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row064_layer001_pairs000
  · exact row064_layer001_pairs001
  · exact row064_layer001_pairs002
  · exact row064_layer001_pairs003
  · exact row064_layer001_pairs004
  · exact row064_layer001_pairs005
  · exact row064_layer001_pairs006
  · exact row064_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_checked :
    coverLayerCheck row064.height row064.goods { lower := 8064, upper := 16128, M := 27 } = true := by
  exact coverLayerCheck_of_parts row064_layer001_arithmetic row064_layer001_enumeration row064_bounds_eq row064_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row064_layer002_intervals : List ColouredInterval :=
  [(3, 16767, 16830), (3, 17496, 17559), (3, 17496, 17559), (3, 19683, 19746), (3, 21870, 21933), (3, 24057, 24120), (3, 26244, 26307), (3, 28431, 28494), (3, 30618, 30681), (3, 19683, 19746), (3, 26244, 26307), (3, 19683, 19746), (5, 18750, 18813), (5, 21875, 21938), (5, 25000, 25063), (5, 28125, 28188), (5, 31250, 31313), (5, 31250, 31313), (7, 16807, 16870), (7, 19208, 19271), (7, 21609, 21672), (7, 24010, 24073), (7, 26411, 26474), (7, 28812, 28875), (7, 31213, 31276), (7, 16807, 16870), (11, 17303, 17366), (11, 18634, 18697), (11, 19965, 20028), (11, 21296, 21359), (11, 22627, 22690), (11, 23958, 24021), (11, 25289, 25352), (11, 26620, 26683), (11, 27951, 28014), (11, 29282, 29345), (11, 30613, 30676), (11, 31944, 32007), (11, 29282, 29345), (13, 17576, 17639), (13, 19773, 19836), (13, 21970, 22033), (13, 24167, 24230), (13, 26364, 26427), (13, 28561, 28624), (13, 30758, 30821), (13, 28561, 28624), (17, 19652, 19715), (17, 24565, 24628), (17, 29478, 29541), (19, 20577, 20640), (19, 27436, 27499), (23, 24334, 24397), (29, 16820, 16883), (29, 17661, 17724), (29, 18502, 18565), (29, 19343, 19406), (29, 20184, 20247), (29, 24389, 24452), (31, 16337, 16400), (31, 17298, 17361), (31, 18259, 18322), (31, 19220, 19283), (31, 20181, 20244), (31, 21142, 21205), (31, 22103, 22166), (31, 23064, 23127), (31, 29791, 29854), (37, 16428, 16491), (37, 17797, 17860), (37, 19166, 19229), (37, 20535, 20598), (37, 21904, 21967), (37, 23273, 23336), (37, 24642, 24705), (37, 26011, 26074), (37, 27380, 27443), (37, 28749, 28812), (37, 30118, 30181), (37, 31487, 31550), (41, 16810, 16873), (41, 18491, 18554), (41, 20172, 20235), (41, 21853, 21916), (41, 23534, 23597), (41, 25215, 25278), (41, 26896, 26959), (41, 28577, 28640), (41, 30258, 30321), (41, 31939, 32002), (43, 16641, 16704), (43, 18490, 18553), (43, 20339, 20402), (43, 22188, 22251), (43, 24037, 24100), (43, 25886, 25949), (43, 27735, 27798), (43, 29584, 29647), (43, 31433, 31496), (47, 17672, 17735), (47, 19881, 19944), (47, 22090, 22153), (47, 24299, 24362), (47, 26508, 26571), (47, 28717, 28780), (47, 30926, 30989), (53, 16854, 16917), (53, 19663, 19726), (53, 22472, 22535), (53, 25281, 25344), (53, 28090, 28153), (53, 30899, 30962), (59, 17405, 17468), (59, 20886, 20949), (59, 24367, 24430), (59, 27848, 27911), (59, 31329, 31392), (61, 18605, 18668), (61, 22326, 22389), (61, 26047, 26110), (61, 29768, 29831)]

def row064_layer002_block000 : List ColouredInterval :=
  [(3, 16767, 16830), (3, 17496, 17559), (3, 17496, 17559), (3, 19683, 19746), (3, 21870, 21933), (3, 24057, 24120), (3, 26244, 26307), (3, 28431, 28494), (3, 30618, 30681), (3, 19683, 19746), (3, 26244, 26307), (3, 19683, 19746), (5, 18750, 18813), (5, 21875, 21938), (5, 25000, 25063), (5, 28125, 28188)]

def row064_layer002_block001 : List ColouredInterval :=
  [(5, 31250, 31313), (5, 31250, 31313), (7, 16807, 16870), (7, 19208, 19271), (7, 21609, 21672), (7, 24010, 24073), (7, 26411, 26474), (7, 28812, 28875), (7, 31213, 31276), (7, 16807, 16870), (11, 17303, 17366), (11, 18634, 18697), (11, 19965, 20028), (11, 21296, 21359), (11, 22627, 22690), (11, 23958, 24021)]

def row064_layer002_block002 : List ColouredInterval :=
  [(11, 25289, 25352), (11, 26620, 26683), (11, 27951, 28014), (11, 29282, 29345), (11, 30613, 30676), (11, 31944, 32007), (11, 29282, 29345), (13, 17576, 17639), (13, 19773, 19836), (13, 21970, 22033), (13, 24167, 24230), (13, 26364, 26427), (13, 28561, 28624), (13, 30758, 30821), (13, 28561, 28624), (17, 19652, 19715)]

def row064_layer002_block003 : List ColouredInterval :=
  [(17, 24565, 24628), (17, 29478, 29541), (19, 20577, 20640), (19, 27436, 27499), (23, 24334, 24397), (29, 16820, 16883), (29, 17661, 17724), (29, 18502, 18565), (29, 19343, 19406), (29, 20184, 20247), (29, 24389, 24452), (31, 16337, 16400), (31, 17298, 17361), (31, 18259, 18322), (31, 19220, 19283), (31, 20181, 20244)]

def row064_layer002_block004 : List ColouredInterval :=
  [(31, 21142, 21205), (31, 22103, 22166), (31, 23064, 23127), (31, 29791, 29854), (37, 16428, 16491), (37, 17797, 17860), (37, 19166, 19229), (37, 20535, 20598), (37, 21904, 21967), (37, 23273, 23336), (37, 24642, 24705), (37, 26011, 26074), (37, 27380, 27443), (37, 28749, 28812), (37, 30118, 30181), (37, 31487, 31550)]

def row064_layer002_block005 : List ColouredInterval :=
  [(41, 16810, 16873), (41, 18491, 18554), (41, 20172, 20235), (41, 21853, 21916), (41, 23534, 23597), (41, 25215, 25278), (41, 26896, 26959), (41, 28577, 28640), (41, 30258, 30321), (41, 31939, 32002), (43, 16641, 16704), (43, 18490, 18553), (43, 20339, 20402), (43, 22188, 22251), (43, 24037, 24100), (43, 25886, 25949)]

def row064_layer002_block006 : List ColouredInterval :=
  [(43, 27735, 27798), (43, 29584, 29647), (43, 31433, 31496), (47, 17672, 17735), (47, 19881, 19944), (47, 22090, 22153), (47, 24299, 24362), (47, 26508, 26571), (47, 28717, 28780), (47, 30926, 30989), (53, 16854, 16917), (53, 19663, 19726), (53, 22472, 22535), (53, 25281, 25344), (53, 28090, 28153), (53, 30899, 30962)]

def row064_layer002_block007 : List ColouredInterval :=
  [(59, 17405, 17468), (59, 20886, 20949), (59, 24367, 24430), (59, 27848, 27911), (59, 31329, 31392), (61, 18605, 18668), (61, 22326, 22389), (61, 26047, 26110), (61, 29768, 29831)]

def row064_layer002_chunks : List (List ColouredInterval) :=
  [row064_layer002_block000, row064_layer002_block001, row064_layer002_block002, row064_layer002_block003, row064_layer002_block004, row064_layer002_block005, row064_layer002_block006, row064_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_arithmetic : LayerArithmeticValid row064.height { lower := 16128, upper := 32256, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_enumeration :
    activePowerIntervalList 64 24 16128 32256 = row064_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_pairs000 :
    row064_layer002_block000.all (fun I => row064_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_pairs001 :
    row064_layer002_block001.all (fun I => row064_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_pairs002 :
    row064_layer002_block002.all (fun I => row064_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_pairs003 :
    row064_layer002_block003.all (fun I => row064_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_pairs004 :
    row064_layer002_block004.all (fun I => row064_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_pairs005 :
    row064_layer002_block005.all (fun I => row064_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_pairs006 :
    row064_layer002_block006.all (fun I => row064_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_pairs007 :
    row064_layer002_block007.all (fun I => row064_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_chunks_eq : row064_layer002_chunks.flatten = row064_layer002_intervals := by
  rfl

theorem row064_layer002_pairs : pairCoverCheck row064_layer002_intervals row064_bounds = true := by
  apply pairCoverCheck_of_chunks row064_layer002_chunks_eq
  intro block hblock
  simp only [row064_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row064_layer002_pairs000
  · exact row064_layer002_pairs001
  · exact row064_layer002_pairs002
  · exact row064_layer002_pairs003
  · exact row064_layer002_pairs004
  · exact row064_layer002_pairs005
  · exact row064_layer002_pairs006
  · exact row064_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer002_checked :
    coverLayerCheck row064.height row064.goods { lower := 16128, upper := 32256, M := 24 } = true := by
  exact coverLayerCheck_of_parts row064_layer002_arithmetic row064_layer002_enumeration row064_bounds_eq row064_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row064_layer003_intervals : List ColouredInterval :=
  [(3, 32805, 32868), (3, 34992, 35055), (3, 37179, 37242), (3, 39366, 39429), (3, 41553, 41616), (3, 43740, 43803), (3, 45927, 45990), (3, 48114, 48177), (3, 32805, 32868), (3, 39366, 39429), (3, 45927, 45990), (3, 52488, 52551), (3, 59049, 59112), (3, 39366, 39429), (3, 59049, 59112), (3, 59049, 59112), (5, 34375, 34438), (5, 37500, 37563), (5, 40625, 40688), (5, 43750, 43813), (5, 46875, 46938), (5, 50000, 50063), (5, 53125, 53188), (5, 56250, 56313), (5, 59375, 59438), (5, 62500, 62563), (5, 46875, 46938), (5, 62500, 62563), (7, 33614, 33677), (7, 36015, 36078), (7, 38416, 38479), (7, 40817, 40880), (7, 43218, 43281), (7, 45619, 45682), (7, 48020, 48083), (7, 50421, 50484), (7, 52822, 52885), (7, 33614, 33677), (7, 50421, 50484), (11, 43923, 43986), (11, 58564, 58627), (13, 32955, 33018), (13, 35152, 35215), (13, 37349, 37412), (13, 39546, 39609), (13, 41743, 41806), (13, 43940, 44003), (13, 46137, 46200), (13, 48334, 48397), (13, 57122, 57185), (17, 34391, 34454), (17, 39304, 39367), (17, 44217, 44280), (17, 49130, 49193), (17, 54043, 54106), (17, 58956, 59019), (17, 63869, 63932), (19, 34295, 34358), (19, 41154, 41217), (19, 48013, 48076), (19, 54872, 54935), (19, 61731, 61794), (23, 36501, 36564), (23, 48668, 48731), (23, 60835, 60898), (29, 48778, 48841), (31, 59582, 59645), (37, 50653, 50716), (41, 33620, 33683), (41, 35301, 35364), (41, 36982, 37045), (43, 33282, 33345), (43, 35131, 35194), (43, 36980, 37043), (43, 38829, 38892), (43, 40678, 40741), (47, 33135, 33198), (47, 35344, 35407), (47, 37553, 37616), (47, 39762, 39825), (47, 41971, 42034), (47, 44180, 44243), (47, 46389, 46452), (47, 48598, 48661), (53, 33708, 33771), (53, 36517, 36580), (53, 39326, 39389), (53, 42135, 42198), (53, 44944, 45007), (53, 47753, 47816), (53, 50562, 50625), (53, 53371, 53434), (53, 56180, 56243), (53, 58989, 59052), (53, 61798, 61861), (59, 34810, 34873), (59, 38291, 38354), (59, 41772, 41835), (59, 45253, 45316), (59, 48734, 48797), (59, 52215, 52278), (59, 55696, 55759), (59, 59177, 59240), (59, 62658, 62721), (61, 33489, 33552), (61, 37210, 37273), (61, 40931, 40994), (61, 44652, 44715), (61, 48373, 48436), (61, 52094, 52157), (61, 55815, 55878), (61, 59536, 59599), (61, 63257, 63320)]

def row064_layer003_block000 : List ColouredInterval :=
  [(3, 32805, 32868), (3, 34992, 35055), (3, 37179, 37242), (3, 39366, 39429), (3, 41553, 41616), (3, 43740, 43803), (3, 45927, 45990), (3, 48114, 48177), (3, 32805, 32868), (3, 39366, 39429), (3, 45927, 45990), (3, 52488, 52551), (3, 59049, 59112), (3, 39366, 39429), (3, 59049, 59112), (3, 59049, 59112)]

def row064_layer003_block001 : List ColouredInterval :=
  [(5, 34375, 34438), (5, 37500, 37563), (5, 40625, 40688), (5, 43750, 43813), (5, 46875, 46938), (5, 50000, 50063), (5, 53125, 53188), (5, 56250, 56313), (5, 59375, 59438), (5, 62500, 62563), (5, 46875, 46938), (5, 62500, 62563), (7, 33614, 33677), (7, 36015, 36078), (7, 38416, 38479), (7, 40817, 40880)]

def row064_layer003_block002 : List ColouredInterval :=
  [(7, 43218, 43281), (7, 45619, 45682), (7, 48020, 48083), (7, 50421, 50484), (7, 52822, 52885), (7, 33614, 33677), (7, 50421, 50484), (11, 43923, 43986), (11, 58564, 58627), (13, 32955, 33018), (13, 35152, 35215), (13, 37349, 37412), (13, 39546, 39609), (13, 41743, 41806), (13, 43940, 44003), (13, 46137, 46200)]

def row064_layer003_block003 : List ColouredInterval :=
  [(13, 48334, 48397), (13, 57122, 57185), (17, 34391, 34454), (17, 39304, 39367), (17, 44217, 44280), (17, 49130, 49193), (17, 54043, 54106), (17, 58956, 59019), (17, 63869, 63932), (19, 34295, 34358), (19, 41154, 41217), (19, 48013, 48076), (19, 54872, 54935), (19, 61731, 61794), (23, 36501, 36564), (23, 48668, 48731)]

def row064_layer003_block004 : List ColouredInterval :=
  [(23, 60835, 60898), (29, 48778, 48841), (31, 59582, 59645), (37, 50653, 50716), (41, 33620, 33683), (41, 35301, 35364), (41, 36982, 37045), (43, 33282, 33345), (43, 35131, 35194), (43, 36980, 37043), (43, 38829, 38892), (43, 40678, 40741), (47, 33135, 33198), (47, 35344, 35407), (47, 37553, 37616), (47, 39762, 39825)]

def row064_layer003_block005 : List ColouredInterval :=
  [(47, 41971, 42034), (47, 44180, 44243), (47, 46389, 46452), (47, 48598, 48661), (53, 33708, 33771), (53, 36517, 36580), (53, 39326, 39389), (53, 42135, 42198), (53, 44944, 45007), (53, 47753, 47816), (53, 50562, 50625), (53, 53371, 53434), (53, 56180, 56243), (53, 58989, 59052), (53, 61798, 61861), (59, 34810, 34873)]

def row064_layer003_block006 : List ColouredInterval :=
  [(59, 38291, 38354), (59, 41772, 41835), (59, 45253, 45316), (59, 48734, 48797), (59, 52215, 52278), (59, 55696, 55759), (59, 59177, 59240), (59, 62658, 62721), (61, 33489, 33552), (61, 37210, 37273), (61, 40931, 40994), (61, 44652, 44715), (61, 48373, 48436), (61, 52094, 52157), (61, 55815, 55878), (61, 59536, 59599)]

def row064_layer003_block007 : List ColouredInterval :=
  [(61, 63257, 63320)]

def row064_layer003_chunks : List (List ColouredInterval) :=
  [row064_layer003_block000, row064_layer003_block001, row064_layer003_block002, row064_layer003_block003, row064_layer003_block004, row064_layer003_block005, row064_layer003_block006, row064_layer003_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_arithmetic : LayerArithmeticValid row064.height { lower := 32256, upper := 64512, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_enumeration :
    activePowerIntervalList 64 22 32256 64512 = row064_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_pairs000 :
    row064_layer003_block000.all (fun I => row064_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_pairs001 :
    row064_layer003_block001.all (fun I => row064_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_pairs001
