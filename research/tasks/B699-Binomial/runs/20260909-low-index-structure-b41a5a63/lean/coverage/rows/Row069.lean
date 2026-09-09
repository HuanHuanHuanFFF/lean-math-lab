import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row069_height : HeightCertificateDatum := { i := 69, r := 22, s := 47, n0Power10 := 11 }

def row069_goods : List GoodSegment := [
  { lower := 140, upper := 207, witness := RowWitness.topPrime 139 },
  { lower := 208, upper := 267, witness := RowWitness.topPrime 199 },
  { lower := 268, upper := 331, witness := RowWitness.topPrime 263 },
  { lower := 332, upper := 399, witness := RowWitness.topPrime 331 },
  { lower := 400, upper := 465, witness := RowWitness.topPrime 397 },
  { lower := 466, upper := 531, witness := RowWitness.topPrime 463 },
  { lower := 532, upper := 591, witness := RowWitness.topPrime 523 },
  { lower := 592, upper := 655, witness := RowWitness.topPrime 587 },
  { lower := 656, upper := 721, witness := RowWitness.topPrime 653 },
  { lower := 722, upper := 787, witness := RowWitness.topPrime 719 },
  { lower := 788, upper := 855, witness := RowWitness.topPrime 787 },
  { lower := 856, upper := 921, witness := RowWitness.topPrime 853 },
  { lower := 922, upper := 987, witness := RowWitness.topPrime 919 },
  { lower := 988, upper := 1051, witness := RowWitness.topPrime 983 },
  { lower := 1052, upper := 1119, witness := RowWitness.topPrime 1051 },
  { lower := 1120, upper := 1185, witness := RowWitness.topPrime 1117 },
  { lower := 1186, upper := 1249, witness := RowWitness.topPrime 1181 },
  { lower := 1250, upper := 1317, witness := RowWitness.topPrime 1249 },
  { lower := 1318, upper := 1375, witness := RowWitness.topPrime 1307 },
  { lower := 1376, upper := 1441, witness := RowWitness.topPrime 1373 },
  { lower := 1442, upper := 1507, witness := RowWitness.topPrime 1439 },
  { lower := 1508, upper := 1567, witness := RowWitness.topPrime 1499 },
  { lower := 1568, upper := 1635, witness := RowWitness.topPrime 1567 },
  { lower := 1636, upper := 1695, witness := RowWitness.topPrime 1627 },
  { lower := 1696, upper := 1761, witness := RowWitness.topPrime 1693 },
  { lower := 1762, upper := 1827, witness := RowWitness.topPrime 1759 },
  { lower := 1828, upper := 1891, witness := RowWitness.topPrime 1823 },
  { lower := 1892, upper := 1957, witness := RowWitness.topPrime 1889 },
  { lower := 1958, upper := 2019, witness := RowWitness.topPrime 1951 },
  { lower := 2020, upper := 2085, witness := RowWitness.topPrime 2017 },
  { lower := 2086, upper := 2151, witness := RowWitness.topPrime 2083 },
  { lower := 2152, upper := 2211, witness := RowWitness.topPrime 2143 },
  { lower := 2212, upper := 2275, witness := RowWitness.topPrime 2207 },
  { lower := 2276, upper := 2341, witness := RowWitness.topPrime 2273 },
  { lower := 2342, upper := 2409, witness := RowWitness.topPrime 2341 },
  { lower := 2410, upper := 2467, witness := RowWitness.topPrime 2399 },
  { lower := 2468, upper := 2535, witness := RowWitness.topPrime 2467 },
  { lower := 2536, upper := 2599, witness := RowWitness.topPrime 2531 },
  { lower := 2600, upper := 2661, witness := RowWitness.topPrime 2593 },
  { lower := 2662, upper := 2727, witness := RowWitness.topPrime 2659 },
  { lower := 2728, upper := 2787, witness := RowWitness.topPrime 2719 },
  { lower := 2788, upper := 2845, witness := RowWitness.topPrime 2777 },
  { lower := 2846, upper := 2911, witness := RowWitness.topPrime 2843 },
  { lower := 2912, upper := 2977, witness := RowWitness.topPrime 2909 },
  { lower := 2978, upper := 3039, witness := RowWitness.topPrime 2971 },
  { lower := 3040, upper := 3105, witness := RowWitness.topPrime 3037 },
  { lower := 3106, upper := 3157, witness := RowWitness.topPrime 3089 },
  { lower := 3158, upper := 3205, witness := RowWitness.topPrime 3137 },
  { lower := 3206, upper := 3271, witness := RowWitness.topPrime 3203 },
  { lower := 3272, upper := 3339, witness := RowWitness.topPrime 3271 },
  { lower := 3340, upper := 3399, witness := RowWitness.topPrime 3331 },
  { lower := 3400, upper := 3459, witness := RowWitness.topPrime 3391 },
  { lower := 3460, upper := 3525, witness := RowWitness.topPrime 3457 },
  { lower := 3526, upper := 3585, witness := RowWitness.topPrime 3517 },
  { lower := 3586, upper := 3651, witness := RowWitness.topPrime 3583 },
  { lower := 3652, upper := 3711, witness := RowWitness.topPrime 3643 },
  { lower := 3712, upper := 3777, witness := RowWitness.topPrime 3709 },
  { lower := 3778, upper := 3837, witness := RowWitness.topPrime 3769 },
  { lower := 3838, upper := 3901, witness := RowWitness.topPrime 3833 },
  { lower := 3902, upper := 3957, witness := RowWitness.topPrime 3889 },
  { lower := 3958, upper := 4015, witness := RowWitness.topPrime 3947 },
  { lower := 4016, upper := 4081, witness := RowWitness.topPrime 4013 },
  { lower := 4082, upper := 4147, witness := RowWitness.topPrime 4079 },
  { lower := 4148, upper := 4207, witness := RowWitness.topPrime 4139 },
  { lower := 4208, upper := 4269, witness := RowWitness.topPrime 4201 },
  { lower := 4270, upper := 4329, witness := RowWitness.topPrime 4261 },
  { lower := 4330, upper := 4395, witness := RowWitness.topPrime 4327 },
  { lower := 4396, upper := 4459, witness := RowWitness.topPrime 4391 },
  { lower := 4460, upper := 4525, witness := RowWitness.topPrime 4457 },
  { lower := 4526, upper := 4591, witness := RowWitness.topPrime 4523 },
  { lower := 4592, upper := 4659, witness := RowWitness.topPrime 4591 },
  { lower := 4660, upper := 4691, witness := RowWitness.topPrime 4657 },
  { lower := 4732, upper := 4761, witness := RowWitness.topPrime 4729 },
  { lower := 4805, upper := 4869, witness := RowWitness.topPrime 4801 },
  { lower := 4870, upper := 4873, witness := RowWitness.topPrime 4861 },
  { lower := 4901, upper := 4957, witness := RowWitness.topPrime 4889 },
  { lower := 4958, upper := 4969, witness := RowWitness.topPrime 4957 },
  { lower := 5043, upper := 5107, witness := RowWitness.topPrime 5039 },
  { lower := 5108, upper := 5175, witness := RowWitness.topPrime 5107 },
  { lower := 5176, upper := 5188, witness := RowWitness.topPrime 5171 },
  { lower := 5202, upper := 5213, witness := RowWitness.topPrime 5197 },
  { lower := 5376, upper := 5392, witness := RowWitness.topPrime 5351 },
  { lower := 5415, upper := 5444, witness := RowWitness.topPrime 5413 },
  { lower := 5476, upper := 5483, witness := RowWitness.topPrime 5471 },
  { lower := 5488, upper := 5551, witness := RowWitness.topPrime 5483 },
  { lower := 5552, upper := 5559, witness := RowWitness.topPrime 5531 },
  { lower := 5625, upper := 5691, witness := RowWitness.topPrime 5623 },
  { lower := 5692, upper := 5693, witness := RowWitness.topPrime 5689 },
  { lower := 5776, upper := 5817, witness := RowWitness.topPrime 5749 },
  { lower := 5818, upper := 5881, witness := RowWitness.topPrime 5813 },
  { lower := 5882, upper := 5949, witness := RowWitness.topPrime 5881 },
  { lower := 5950, upper := 5955, witness := RowWitness.topPrime 5939 },
  { lower := 6137, upper := 6137, witness := RowWitness.topPrime 6133 },
  { lower := 6144, upper := 6211, witness := RowWitness.topPrime 6143 },
  { lower := 6212, upper := 6212, witness := RowWitness.topPrime 6211 },
  { lower := 6400, upper := 6426, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6559, witness := RowWitness.topPrime 6491 },
  { lower := 6560, upper := 6585, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6649, witness := RowWitness.topPrime 6581 },
  { lower := 6650, upper := 6705, witness := RowWitness.topPrime 6637 },
  { lower := 6706, upper := 6724, witness := RowWitness.topPrime 6703 },
  { lower := 6727, upper := 6787, witness := RowWitness.topPrime 6719 },
  { lower := 6788, upper := 6795, witness := RowWitness.topPrime 6781 },
  { lower := 6859, upper := 6925, witness := RowWitness.topPrime 6857 },
  { lower := 6926, upper := 6985, witness := RowWitness.topPrime 6917 },
  { lower := 6986, upper := 7004, witness := RowWitness.topPrime 6983 },
  { lower := 7203, upper := 7261, witness := RowWitness.topPrime 7193 },
  { lower := 7262, upper := 7288, witness := RowWitness.topPrime 7253 },
  { lower := 7424, upper := 7485, witness := RowWitness.topPrime 7417 },
  { lower := 7486, upper := 7492, witness := RowWitness.topPrime 7481 },
  { lower := 7500, upper := 7510, witness := RowWitness.topPrime 7499 },
  { lower := 7514, upper := 7575, witness := RowWitness.topPrime 7507 },
  { lower := 7576, upper := 7637, witness := RowWitness.topPrime 7573 },
  { lower := 7688, upper := 7748, witness := RowWitness.topPrime 7687 },
  { lower := 7942, upper := 7957, witness := RowWitness.topPrime 7937 },
  { lower := 7986, upper := 8010, witness := RowWitness.topPrime 7963 },
  { lower := 8125, upper := 8160, witness := RowWitness.topPrime 8123 },
  { lower := 8192, upper := 8193, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8277, witness := RowWitness.topPrime 8209 },
  { lower := 8278, upper := 8282, witness := RowWitness.topPrime 8273 },
  { lower := 8405, upper := 8457, witness := RowWitness.topPrime 8389 },
  { lower := 8458, upper := 8478, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8731, witness := RowWitness.topPrime 8663 },
  { lower := 8732, upper := 8732, witness := RowWitness.topPrime 8731 },
  { lower := 8748, upper := 8815, witness := RowWitness.topPrime 8747 },
  { lower := 8816, upper := 8818, witness := RowWitness.topPrime 8807 },
  { lower := 8836, upper := 8856, witness := RowWitness.topPrime 8831 },
  { lower := 8978, upper := 8986, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9046, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9309, witness := RowWitness.topPrime 9241 },
  { lower := 9310, upper := 9329, witness := RowWitness.topPrime 9293 },
  { lower := 9375, upper := 9439, witness := RowWitness.topPrime 9371 },
  { lower := 9440, upper := 9443, witness := RowWitness.topPrime 9439 },
  { lower := 9604, upper := 9669, witness := RowWitness.topPrime 9601 },
  { lower := 9670, upper := 9672, witness := RowWitness.topPrime 9661 },
  { lower := 10092, upper := 10154, witness := RowWitness.topPrime 10091 },
  { lower := 10625, upper := 10639, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10693, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10977, witness := RowWitness.topPrime 10909 },
  { lower := 10978, upper := 11020, witness := RowWitness.topPrime 10973 },
  { lower := 11045, upper := 11053, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11113, witness := RowWitness.topPrime 11093 },
  { lower := 11250, upper := 11311, witness := RowWitness.topPrime 11243 },
  { lower := 11312, upper := 11318, witness := RowWitness.topPrime 11311 },
  { lower := 11774, upper := 11811, witness := RowWitness.topPrime 11743 },
  { lower := 11812, upper := 11842, witness := RowWitness.topPrime 11807 },
  { lower := 12005, upper := 12047, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12356, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12561, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13189, witness := RowWitness.topPrime 13121 },
  { lower := 13190, upper := 13193, witness := RowWitness.topPrime 13187 },
  { lower := 13310, upper := 13377, witness := RowWitness.topPrime 13309 },
  { lower := 13378, upper := 13378, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13519, witness := RowWitness.topPrime 13451 },
  { lower := 13520, upper := 13524, witness := RowWitness.topPrime 13513 },
  { lower := 13718, upper := 13779, witness := RowWitness.topPrime 13711 },
  { lower := 13780, upper := 13786, witness := RowWitness.topPrime 13763 },
  { lower := 14336, upper := 14365, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14404, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14469, witness := RowWitness.topPrime 14401 },
  { lower := 14470, upper := 14474, witness := RowWitness.topPrime 14461 },
  { lower := 14792, upper := 14807, witness := RowWitness.topPrime 14783 },
  { lower := 15059, upper := 15068, witness := RowWitness.topPrime 15053 },
  { lower := 15138, upper := 15197, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15427, witness := RowWitness.topPrime 15359 },
  { lower := 15428, upper := 15444, witness := RowWitness.topPrime 15427 },
  { lower := 15979, upper := 16040, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16405, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16452, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16855, witness := RowWitness.topPrime 16787 },
  { lower := 16856, upper := 16888, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17366, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17469, witness := RowWitness.topPrime 17401 },
  { lower := 17470, upper := 17473, witness := RowWitness.topPrime 17467 },
  { lower := 17672, upper := 17729, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18549, witness := RowWitness.topPrime 18481 },
  { lower := 18550, upper := 18559, witness := RowWitness.topPrime 18541 },
  { lower := 18634, upper := 18673, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19275, witness := RowWitness.topPrime 19207 },
  { lower := 19276, upper := 19276, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19729, witness := RowWitness.topPrime 19661 },
  { lower := 19730, upper := 19731, witness := RowWitness.topPrime 19727 },
  { lower := 20181, upper := 20240, witness := RowWitness.topPrime 20177 },
  { lower := 20535, upper := 20548, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20603, witness := RowWitness.topPrime 20563 },
  { lower := 21875, upper := 21939, witness := RowWitness.topPrime 21871 },
  { lower := 21940, upper := 21943, witness := RowWitness.topPrime 21937 },
  { lower := 21970, upper := 21972, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22513, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22540, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24026, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24078, witness := RowWitness.topPrime 24029 },
  { lower := 24367, upper := 24367, witness := RowWitness.topPrime 24359 },
  { lower := 24389, upper := 24435, witness := RowWitness.topPrime 24379 },
  { lower := 24576, upper := 24633, witness := RowWitness.topPrime 24571 },
  { lower := 24642, upper := 24644, witness := RowWitness.topPrime 24631 },
  { lower := 25281, upper := 25283, witness := RowWitness.topPrime 25261 },
  { lower := 25289, upper := 25329, witness := RowWitness.topPrime 25261 },
  { lower := 25330, upper := 25349, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26079, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26432, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26665, witness := RowWitness.topPrime 26597 },
  { lower := 26666, upper := 26688, witness := RowWitness.topPrime 26647 },
  { lower := 26934, upper := 26964, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27448, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28158, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28629, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28740, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28785, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28817, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29836, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30788, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30967, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31281, witness := RowWitness.topPrime 31249 },
  { lower := 31433, upper := 31465, witness := RowWitness.topPrime 31397 },
  { lower := 31466, upper := 31466, witness := RowWitness.largeDivisor 4535910374971568360513522058206327093750171513582620863291227390456748859823887987773557022463652901829795526709754026058728245451771198481330411267060851075742251188866098847075706614102149233 },
  { lower := 31467, upper := 31467, witness := RowWitness.largeDivisor 534809230146657305262152323698319093606698991760075878587939480204818277567616833261281231198179598782530831259300254935645963585656951932539817265770408009503720424905481174975293518230656617 },
  { lower := 31468, upper := 31468, witness := RowWitness.largeDivisor 2277934062568355723062995306190945484246833225867090924120909523969304488156167637935300187242056796763492176240885276436776824866466291745149292057290633357209403672296383542788648677812980837 },
  { lower := 31469, upper := 31491, witness := RowWitness.topPrime 31469 },
  { lower := 32805, upper := 32836, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33682, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34443, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34875, witness := RowWitness.topPrime 34807 },
  { lower := 34876, upper := 34878, witness := RowWitness.topPrime 34871 },
  { lower := 35152, upper := 35199, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35369, witness := RowWitness.topPrime 35339 },
  { lower := 36982, upper := 37047, witness := RowWitness.topPrime 36979 },
  { lower := 37048, upper := 37048, witness := RowWitness.topPrime 37039 },
  { lower := 37553, upper := 37568, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39391, witness := RowWitness.topPrime 39323 },
  { lower := 39392, upper := 39394, witness := RowWitness.topPrime 39383 },
  { lower := 40960, upper := 40999, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41811, witness := RowWitness.topPrime 41771 },
  { lower := 44944, upper := 44958, witness := RowWitness.topPrime 44939 },
  { lower := 48778, upper := 48802, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49198, witness := RowWitness.topPrime 49139 },
  { lower := 59582, upper := 59604, witness := RowWitness.topPrime 59581 },
  { lower := 73205, upper := 73235, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73763, witness := RowWitness.topPrime 73727 },
  { lower := 327701, upper := 327748, witness := RowWitness.topPrime 327689 }
]

def row069_layers : List CoverLayer := [
  { lower := 4692, upper := 9384, M := 29 },
  { lower := 9384, upper := 18768, M := 26 },
  { lower := 18768, upper := 37536, M := 22 },
  { lower := 37536, upper := 75072, M := 19 },
  { lower := 75072, upper := 150144, M := 17 },
  { lower := 150144, upper := 300288, M := 15 },
  { lower := 300288, upper := 600576, M := 13 },
  { lower := 600576, upper := 1201152, M := 11 },
  { lower := 1201152, upper := 2402304, M := 10 },
  { lower := 2402304, upper := 4804608, M := 9 },
  { lower := 4804608, upper := 9609216, M := 8 },
  { lower := 9609216, upper := 19218432, M := 7 },
  { lower := 19218432, upper := 38436864, M := 6 },
  { lower := 38436864, upper := 76873728, M := 5 },
  { lower := 76873728, upper := 153747456, M := 5 },
  { lower := 153747456, upper := 307494912, M := 4 },
  { lower := 307494912, upper := 614989824, M := 4 },
  { lower := 614989824, upper := 1229979648, M := 3 },
  { lower := 1229979648, upper := 2459959296, M := 3 },
  { lower := 2459959296, upper := 4919918592, M := 2 },
  { lower := 4919918592, upper := 9839837184, M := 2 },
  { lower := 9839837184, upper := 19679674368, M := 2 },
  { lower := 19679674368, upper := 39359348736, M := 2 },
  { lower := 39359348736, upper := 78718697472, M := 2 },
  { lower := 78718697472, upper := 100000000000, M := 1 }
]

def row069 : FiniteCoverRow := {
  height := row069_height,
  goods := row069_goods,
  layers := row069_layers
}

theorem row069_registered :
    decide (row069.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row069_goods_checked :
    row069.goods.all (goodSegmentCheck row069.height.i row069.height.r row069.height.s) = true := by
  decide +kernel

theorem row069_small_checked :
    coverCheck (2 * row069.height.i + 2) (row069.height.i * (row069.height.i - 1) - 1)
      (row069.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row069_layerCover_checked :
    coverCheck (row069.height.i * (row069.height.i - 1)) (row069.height.n0 - 1)
      (row069.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row069_layer000_checked :
    coverLayerCheck row069.height row069.goods { lower := 4692, upper := 9384, M := 29 } = true := by
  decide +kernel

theorem row069_layer001_checked :
    coverLayerCheck row069.height row069.goods { lower := 9384, upper := 18768, M := 26 } = true := by
  decide +kernel

theorem row069_layer002_checked :
    coverLayerCheck row069.height row069.goods { lower := 18768, upper := 37536, M := 22 } = true := by
  decide +kernel

theorem row069_layer003_checked :
    coverLayerCheck row069.height row069.goods { lower := 37536, upper := 75072, M := 19 } = true := by
  decide +kernel

theorem row069_layer004_checked :
    coverLayerCheck row069.height row069.goods { lower := 75072, upper := 150144, M := 17 } = true := by
  decide +kernel

theorem row069_layer005_checked :
    coverLayerCheck row069.height row069.goods { lower := 150144, upper := 300288, M := 15 } = true := by
  decide +kernel

theorem row069_layer006_checked :
    coverLayerCheck row069.height row069.goods { lower := 300288, upper := 600576, M := 13 } = true := by
  decide +kernel

theorem row069_layer007_checked :
    coverLayerCheck row069.height row069.goods { lower := 600576, upper := 1201152, M := 11 } = true := by
  decide +kernel

theorem row069_layer008_checked :
    coverLayerCheck row069.height row069.goods { lower := 1201152, upper := 2402304, M := 10 } = true := by
  decide +kernel

theorem row069_layer009_checked :
    coverLayerCheck row069.height row069.goods { lower := 2402304, upper := 4804608, M := 9 } = true := by
  decide +kernel

theorem row069_layer010_checked :
    coverLayerCheck row069.height row069.goods { lower := 4804608, upper := 9609216, M := 8 } = true := by
  decide +kernel

theorem row069_layer011_checked :
    coverLayerCheck row069.height row069.goods { lower := 9609216, upper := 19218432, M := 7 } = true := by
  decide +kernel

theorem row069_layer012_checked :
    coverLayerCheck row069.height row069.goods { lower := 19218432, upper := 38436864, M := 6 } = true := by
  decide +kernel

theorem row069_layer013_checked :
    coverLayerCheck row069.height row069.goods { lower := 38436864, upper := 76873728, M := 5 } = true := by
  decide +kernel

theorem row069_layer014_checked :
    coverLayerCheck row069.height row069.goods { lower := 76873728, upper := 153747456, M := 5 } = true := by
  decide +kernel

theorem row069_layer015_checked :
    coverLayerCheck row069.height row069.goods { lower := 153747456, upper := 307494912, M := 4 } = true := by
  decide +kernel

theorem row069_layer016_checked :
    coverLayerCheck row069.height row069.goods { lower := 307494912, upper := 614989824, M := 4 } = true := by
  decide +kernel

theorem row069_layer017_checked :
    coverLayerCheck row069.height row069.goods { lower := 614989824, upper := 1229979648, M := 3 } = true := by
  decide +kernel

theorem row069_layer018_checked :
    coverLayerCheck row069.height row069.goods { lower := 1229979648, upper := 2459959296, M := 3 } = true := by
  decide +kernel

theorem row069_layer019_checked :
    coverLayerCheck row069.height row069.goods { lower := 2459959296, upper := 4919918592, M := 2 } = true := by
  decide +kernel

theorem row069_layer020_checked :
    coverLayerCheck row069.height row069.goods { lower := 4919918592, upper := 9839837184, M := 2 } = true := by
  decide +kernel

theorem row069_layer021_checked :
    coverLayerCheck row069.height row069.goods { lower := 9839837184, upper := 19679674368, M := 2 } = true := by
  decide +kernel

theorem row069_layer022_checked :
    coverLayerCheck row069.height row069.goods { lower := 19679674368, upper := 39359348736, M := 2 } = true := by
  decide +kernel

theorem row069_layer023_checked :
    coverLayerCheck row069.height row069.goods { lower := 39359348736, upper := 78718697472, M := 2 } = true := by
  decide +kernel

theorem row069_layer024_checked :
    coverLayerCheck row069.height row069.goods { lower := 78718697472, upper := 100000000000, M := 1 } = true := by
  decide +kernel

theorem row069_layers_checked :
    row069.layers.all (coverLayerCheck row069.height row069.goods) = true := by
  change List.all [
    { lower := 4692, upper := 9384, M := 29 },
    { lower := 9384, upper := 18768, M := 26 },
    { lower := 18768, upper := 37536, M := 22 },
    { lower := 37536, upper := 75072, M := 19 },
    { lower := 75072, upper := 150144, M := 17 },
    { lower := 150144, upper := 300288, M := 15 },
    { lower := 300288, upper := 600576, M := 13 },
    { lower := 600576, upper := 1201152, M := 11 },
    { lower := 1201152, upper := 2402304, M := 10 },
    { lower := 2402304, upper := 4804608, M := 9 },
    { lower := 4804608, upper := 9609216, M := 8 },
    { lower := 9609216, upper := 19218432, M := 7 },
    { lower := 19218432, upper := 38436864, M := 6 },
    { lower := 38436864, upper := 76873728, M := 5 },
    { lower := 76873728, upper := 153747456, M := 5 },
    { lower := 153747456, upper := 307494912, M := 4 },
    { lower := 307494912, upper := 614989824, M := 4 },
    { lower := 614989824, upper := 1229979648, M := 3 },
    { lower := 1229979648, upper := 2459959296, M := 3 },
    { lower := 2459959296, upper := 4919918592, M := 2 },
    { lower := 4919918592, upper := 9839837184, M := 2 },
    { lower := 9839837184, upper := 19679674368, M := 2 },
    { lower := 19679674368, upper := 39359348736, M := 2 },
    { lower := 39359348736, upper := 78718697472, M := 2 },
    { lower := 78718697472, upper := 100000000000, M := 1 }
  ] (coverLayerCheck row069.height row069.goods) = true
  simp only [List.all_cons, List.all_nil,
    row069_layer000_checked,
    row069_layer001_checked,
    row069_layer002_checked,
    row069_layer003_checked,
    row069_layer004_checked,
    row069_layer005_checked,
    row069_layer006_checked,
    row069_layer007_checked,
    row069_layer008_checked,
    row069_layer009_checked,
    row069_layer010_checked,
    row069_layer011_checked,
    row069_layer012_checked,
    row069_layer013_checked,
    row069_layer014_checked,
    row069_layer015_checked,
    row069_layer016_checked,
    row069_layer017_checked,
    row069_layer018_checked,
    row069_layer019_checked,
    row069_layer020_checked,
    row069_layer021_checked,
    row069_layer022_checked,
    row069_layer023_checked,
    row069_layer024_checked,
    Bool.true_and]

theorem row069_checked : finiteCoverRowCheck row069 = true := by
  simp only [finiteCoverRowCheck, row069_registered, row069_goods_checked,
    row069_small_checked, row069_layerCover_checked, row069_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row069_checked

end B699LowIndex
