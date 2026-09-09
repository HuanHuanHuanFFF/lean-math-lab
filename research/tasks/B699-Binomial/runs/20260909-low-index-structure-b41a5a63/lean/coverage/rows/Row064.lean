import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row064_registered :
    decide (row064.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row064_goods_checked :
    row064.goods.all (goodSegmentCheck row064.height.i row064.height.r row064.height.s) = true := by
  decide +kernel

theorem row064_small_checked :
    coverCheck (2 * row064.height.i + 2) (row064.height.i * (row064.height.i - 1) - 1)
      (row064.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row064_layerCover_checked :
    coverCheck (row064.height.i * (row064.height.i - 1)) (row064.height.n0 - 1)
      (row064.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row064_layer000_checked :
    coverLayerCheck row064.height row064.goods { lower := 4032, upper := 8064, M := 31 } = true := by
  decide +kernel

theorem row064_layer001_checked :
    coverLayerCheck row064.height row064.goods { lower := 8064, upper := 16128, M := 27 } = true := by
  decide +kernel

theorem row064_layer002_checked :
    coverLayerCheck row064.height row064.goods { lower := 16128, upper := 32256, M := 24 } = true := by
  decide +kernel

theorem row064_layer003_checked :
    coverLayerCheck row064.height row064.goods { lower := 32256, upper := 64512, M := 22 } = true := by
  decide +kernel

theorem row064_layer004_checked :
    coverLayerCheck row064.height row064.goods { lower := 64512, upper := 129024, M := 19 } = true := by
  decide +kernel

theorem row064_layer005_checked :
    coverLayerCheck row064.height row064.goods { lower := 129024, upper := 258048, M := 17 } = true := by
  decide +kernel

theorem row064_layer006_checked :
    coverLayerCheck row064.height row064.goods { lower := 258048, upper := 516096, M := 15 } = true := by
  decide +kernel

theorem row064_layer007_checked :
    coverLayerCheck row064.height row064.goods { lower := 516096, upper := 1032192, M := 13 } = true := by
  decide +kernel

theorem row064_layer008_checked :
    coverLayerCheck row064.height row064.goods { lower := 1032192, upper := 2064384, M := 12 } = true := by
  decide +kernel

theorem row064_layer009_checked :
    coverLayerCheck row064.height row064.goods { lower := 2064384, upper := 4128768, M := 11 } = true := by
  decide +kernel

theorem row064_layer010_checked :
    coverLayerCheck row064.height row064.goods { lower := 4128768, upper := 8257536, M := 10 } = true := by
  decide +kernel

theorem row064_layer011_checked :
    coverLayerCheck row064.height row064.goods { lower := 8257536, upper := 16515072, M := 9 } = true := by
  decide +kernel

theorem row064_layer012_checked :
    coverLayerCheck row064.height row064.goods { lower := 16515072, upper := 33030144, M := 8 } = true := by
  decide +kernel

theorem row064_layer013_checked :
    coverLayerCheck row064.height row064.goods { lower := 33030144, upper := 66060288, M := 7 } = true := by
  decide +kernel

theorem row064_layer014_checked :
    coverLayerCheck row064.height row064.goods { lower := 66060288, upper := 132120576, M := 6 } = true := by
  decide +kernel

theorem row064_layer015_checked :
    coverLayerCheck row064.height row064.goods { lower := 132120576, upper := 264241152, M := 5 } = true := by
  decide +kernel

theorem row064_layer016_checked :
    coverLayerCheck row064.height row064.goods { lower := 264241152, upper := 528482304, M := 5 } = true := by
  decide +kernel

theorem row064_layer017_checked :
    coverLayerCheck row064.height row064.goods { lower := 528482304, upper := 1056964608, M := 4 } = true := by
  decide +kernel

theorem row064_layer018_checked :
    coverLayerCheck row064.height row064.goods { lower := 1056964608, upper := 2113929216, M := 4 } = true := by
  decide +kernel

theorem row064_layer019_checked :
    coverLayerCheck row064.height row064.goods { lower := 2113929216, upper := 4227858432, M := 4 } = true := by
  decide +kernel

theorem row064_layer020_checked :
    coverLayerCheck row064.height row064.goods { lower := 4227858432, upper := 8455716864, M := 3 } = true := by
  decide +kernel

theorem row064_layer021_checked :
    coverLayerCheck row064.height row064.goods { lower := 8455716864, upper := 16911433728, M := 3 } = true := by
  decide +kernel

theorem row064_layer022_checked :
    coverLayerCheck row064.height row064.goods { lower := 16911433728, upper := 33822867456, M := 3 } = true := by
  decide +kernel

theorem row064_layer023_checked :
    coverLayerCheck row064.height row064.goods { lower := 33822867456, upper := 67645734912, M := 2 } = true := by
  decide +kernel

theorem row064_layer024_checked :
    coverLayerCheck row064.height row064.goods { lower := 67645734912, upper := 135291469824, M := 2 } = true := by
  decide +kernel

theorem row064_layer025_checked :
    coverLayerCheck row064.height row064.goods { lower := 135291469824, upper := 270582939648, M := 2 } = true := by
  decide +kernel

theorem row064_layer026_checked :
    coverLayerCheck row064.height row064.goods { lower := 270582939648, upper := 541165879296, M := 2 } = true := by
  decide +kernel

theorem row064_layer027_checked :
    coverLayerCheck row064.height row064.goods { lower := 541165879296, upper := 1000000000000, M := 2 } = true := by
  decide +kernel

theorem row064_layers_checked :
    row064.layers.all (coverLayerCheck row064.height row064.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row064.height row064.goods) = true
  simp only [List.all_cons, List.all_nil,
    row064_layer000_checked,
    row064_layer001_checked,
    row064_layer002_checked,
    row064_layer003_checked,
    row064_layer004_checked,
    row064_layer005_checked,
    row064_layer006_checked,
    row064_layer007_checked,
    row064_layer008_checked,
    row064_layer009_checked,
    row064_layer010_checked,
    row064_layer011_checked,
    row064_layer012_checked,
    row064_layer013_checked,
    row064_layer014_checked,
    row064_layer015_checked,
    row064_layer016_checked,
    row064_layer017_checked,
    row064_layer018_checked,
    row064_layer019_checked,
    row064_layer020_checked,
    row064_layer021_checked,
    row064_layer022_checked,
    row064_layer023_checked,
    row064_layer024_checked,
    row064_layer025_checked,
    row064_layer026_checked,
    row064_layer027_checked,
    Bool.true_and]

theorem row064_checked : finiteCoverRowCheck row064 = true := by
  simp only [finiteCoverRowCheck, row064_registered, row064_goods_checked,
    row064_small_checked, row064_layerCover_checked, row064_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row064_checked

end B699LowIndex
