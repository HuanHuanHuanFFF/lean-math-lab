import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good000_checked :
    goodSegmentCheck 69 22 47
      { lower := 140, upper := 207, witness := RowWitness.topPrime 139 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good001_checked :
    goodSegmentCheck 69 22 47
      { lower := 208, upper := 267, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good002_checked :
    goodSegmentCheck 69 22 47
      { lower := 268, upper := 331, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good003_checked :
    goodSegmentCheck 69 22 47
      { lower := 332, upper := 399, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good004_checked :
    goodSegmentCheck 69 22 47
      { lower := 400, upper := 465, witness := RowWitness.topPrime 397 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good005_checked :
    goodSegmentCheck 69 22 47
      { lower := 466, upper := 531, witness := RowWitness.topPrime 463 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good006_checked :
    goodSegmentCheck 69 22 47
      { lower := 532, upper := 591, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good007_checked :
    goodSegmentCheck 69 22 47
      { lower := 592, upper := 655, witness := RowWitness.topPrime 587 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good008_checked :
    goodSegmentCheck 69 22 47
      { lower := 656, upper := 721, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good009_checked :
    goodSegmentCheck 69 22 47
      { lower := 722, upper := 787, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good010_checked :
    goodSegmentCheck 69 22 47
      { lower := 788, upper := 855, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good011_checked :
    goodSegmentCheck 69 22 47
      { lower := 856, upper := 921, witness := RowWitness.topPrime 853 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good012_checked :
    goodSegmentCheck 69 22 47
      { lower := 922, upper := 987, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good013_checked :
    goodSegmentCheck 69 22 47
      { lower := 988, upper := 1051, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good014_checked :
    goodSegmentCheck 69 22 47
      { lower := 1052, upper := 1119, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good015_checked :
    goodSegmentCheck 69 22 47
      { lower := 1120, upper := 1185, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good016_checked :
    goodSegmentCheck 69 22 47
      { lower := 1186, upper := 1249, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good017_checked :
    goodSegmentCheck 69 22 47
      { lower := 1250, upper := 1317, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good018_checked :
    goodSegmentCheck 69 22 47
      { lower := 1318, upper := 1375, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good019_checked :
    goodSegmentCheck 69 22 47
      { lower := 1376, upper := 1441, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good020_checked :
    goodSegmentCheck 69 22 47
      { lower := 1442, upper := 1507, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good021_checked :
    goodSegmentCheck 69 22 47
      { lower := 1508, upper := 1567, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good022_checked :
    goodSegmentCheck 69 22 47
      { lower := 1568, upper := 1635, witness := RowWitness.topPrime 1567 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good023_checked :
    goodSegmentCheck 69 22 47
      { lower := 1636, upper := 1695, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good024_checked :
    goodSegmentCheck 69 22 47
      { lower := 1696, upper := 1761, witness := RowWitness.topPrime 1693 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good025_checked :
    goodSegmentCheck 69 22 47
      { lower := 1762, upper := 1827, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good026_checked :
    goodSegmentCheck 69 22 47
      { lower := 1828, upper := 1891, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good027_checked :
    goodSegmentCheck 69 22 47
      { lower := 1892, upper := 1957, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good028_checked :
    goodSegmentCheck 69 22 47
      { lower := 1958, upper := 2019, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good029_checked :
    goodSegmentCheck 69 22 47
      { lower := 2020, upper := 2085, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good030_checked :
    goodSegmentCheck 69 22 47
      { lower := 2086, upper := 2151, witness := RowWitness.topPrime 2083 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good031_checked :
    goodSegmentCheck 69 22 47
      { lower := 2152, upper := 2211, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good032_checked :
    goodSegmentCheck 69 22 47
      { lower := 2212, upper := 2275, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good033_checked :
    goodSegmentCheck 69 22 47
      { lower := 2276, upper := 2341, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good034_checked :
    goodSegmentCheck 69 22 47
      { lower := 2342, upper := 2409, witness := RowWitness.topPrime 2341 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good035_checked :
    goodSegmentCheck 69 22 47
      { lower := 2410, upper := 2467, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good036_checked :
    goodSegmentCheck 69 22 47
      { lower := 2468, upper := 2535, witness := RowWitness.topPrime 2467 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good037_checked :
    goodSegmentCheck 69 22 47
      { lower := 2536, upper := 2599, witness := RowWitness.topPrime 2531 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good038_checked :
    goodSegmentCheck 69 22 47
      { lower := 2600, upper := 2661, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good039_checked :
    goodSegmentCheck 69 22 47
      { lower := 2662, upper := 2727, witness := RowWitness.topPrime 2659 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good040_checked :
    goodSegmentCheck 69 22 47
      { lower := 2728, upper := 2787, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good041_checked :
    goodSegmentCheck 69 22 47
      { lower := 2788, upper := 2845, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good042_checked :
    goodSegmentCheck 69 22 47
      { lower := 2846, upper := 2911, witness := RowWitness.topPrime 2843 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good043_checked :
    goodSegmentCheck 69 22 47
      { lower := 2912, upper := 2977, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good044_checked :
    goodSegmentCheck 69 22 47
      { lower := 2978, upper := 3039, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good045_checked :
    goodSegmentCheck 69 22 47
      { lower := 3040, upper := 3105, witness := RowWitness.topPrime 3037 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good046_checked :
    goodSegmentCheck 69 22 47
      { lower := 3106, upper := 3157, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good047_checked :
    goodSegmentCheck 69 22 47
      { lower := 3158, upper := 3205, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good048_checked :
    goodSegmentCheck 69 22 47
      { lower := 3206, upper := 3271, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good049_checked :
    goodSegmentCheck 69 22 47
      { lower := 3272, upper := 3339, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good050_checked :
    goodSegmentCheck 69 22 47
      { lower := 3340, upper := 3399, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good051_checked :
    goodSegmentCheck 69 22 47
      { lower := 3400, upper := 3459, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good052_checked :
    goodSegmentCheck 69 22 47
      { lower := 3460, upper := 3525, witness := RowWitness.topPrime 3457 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good053_checked :
    goodSegmentCheck 69 22 47
      { lower := 3526, upper := 3585, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good054_checked :
    goodSegmentCheck 69 22 47
      { lower := 3586, upper := 3651, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good055_checked :
    goodSegmentCheck 69 22 47
      { lower := 3652, upper := 3711, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good056_checked :
    goodSegmentCheck 69 22 47
      { lower := 3712, upper := 3777, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good057_checked :
    goodSegmentCheck 69 22 47
      { lower := 3778, upper := 3837, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good058_checked :
    goodSegmentCheck 69 22 47
      { lower := 3838, upper := 3901, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good059_checked :
    goodSegmentCheck 69 22 47
      { lower := 3902, upper := 3957, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good060_checked :
    goodSegmentCheck 69 22 47
      { lower := 3958, upper := 4015, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good061_checked :
    goodSegmentCheck 69 22 47
      { lower := 4016, upper := 4081, witness := RowWitness.topPrime 4013 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good062_checked :
    goodSegmentCheck 69 22 47
      { lower := 4082, upper := 4147, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good063_checked :
    goodSegmentCheck 69 22 47
      { lower := 4148, upper := 4207, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good064_checked :
    goodSegmentCheck 69 22 47
      { lower := 4208, upper := 4269, witness := RowWitness.topPrime 4201 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good065_checked :
    goodSegmentCheck 69 22 47
      { lower := 4270, upper := 4329, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good066_checked :
    goodSegmentCheck 69 22 47
      { lower := 4330, upper := 4395, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good067_checked :
    goodSegmentCheck 69 22 47
      { lower := 4396, upper := 4459, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good068_checked :
    goodSegmentCheck 69 22 47
      { lower := 4460, upper := 4525, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good069_checked :
    goodSegmentCheck 69 22 47
      { lower := 4526, upper := 4591, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good070_checked :
    goodSegmentCheck 69 22 47
      { lower := 4592, upper := 4659, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good071_checked :
    goodSegmentCheck 69 22 47
      { lower := 4660, upper := 4691, witness := RowWitness.topPrime 4657 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good072_checked :
    goodSegmentCheck 69 22 47
      { lower := 4732, upper := 4761, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good073_checked :
    goodSegmentCheck 69 22 47
      { lower := 4805, upper := 4869, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good074_checked :
    goodSegmentCheck 69 22 47
      { lower := 4870, upper := 4873, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good075_checked :
    goodSegmentCheck 69 22 47
      { lower := 4901, upper := 4957, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good076_checked :
    goodSegmentCheck 69 22 47
      { lower := 4958, upper := 4969, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good077_checked :
    goodSegmentCheck 69 22 47
      { lower := 5043, upper := 5107, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good078_checked :
    goodSegmentCheck 69 22 47
      { lower := 5108, upper := 5175, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good079_checked :
    goodSegmentCheck 69 22 47
      { lower := 5176, upper := 5188, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good080_checked :
    goodSegmentCheck 69 22 47
      { lower := 5202, upper := 5213, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good081_checked :
    goodSegmentCheck 69 22 47
      { lower := 5376, upper := 5392, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good082_checked :
    goodSegmentCheck 69 22 47
      { lower := 5415, upper := 5444, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good083_checked :
    goodSegmentCheck 69 22 47
      { lower := 5476, upper := 5483, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good084_checked :
    goodSegmentCheck 69 22 47
      { lower := 5488, upper := 5551, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good085_checked :
    goodSegmentCheck 69 22 47
      { lower := 5552, upper := 5559, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good086_checked :
    goodSegmentCheck 69 22 47
      { lower := 5625, upper := 5691, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good087_checked :
    goodSegmentCheck 69 22 47
      { lower := 5692, upper := 5693, witness := RowWitness.topPrime 5689 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good088_checked :
    goodSegmentCheck 69 22 47
      { lower := 5776, upper := 5817, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good089_checked :
    goodSegmentCheck 69 22 47
      { lower := 5818, upper := 5881, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good090_checked :
    goodSegmentCheck 69 22 47
      { lower := 5882, upper := 5949, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good091_checked :
    goodSegmentCheck 69 22 47
      { lower := 5950, upper := 5955, witness := RowWitness.topPrime 5939 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good092_checked :
    goodSegmentCheck 69 22 47
      { lower := 6137, upper := 6137, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good093_checked :
    goodSegmentCheck 69 22 47
      { lower := 6144, upper := 6211, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good094_checked :
    goodSegmentCheck 69 22 47
      { lower := 6212, upper := 6212, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good095_checked :
    goodSegmentCheck 69 22 47
      { lower := 6400, upper := 6426, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good096_checked :
    goodSegmentCheck 69 22 47
      { lower := 6517, upper := 6559, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good097_checked :
    goodSegmentCheck 69 22 47
      { lower := 6560, upper := 6585, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good098_checked :
    goodSegmentCheck 69 22 47
      { lower := 6591, upper := 6649, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good099_checked :
    goodSegmentCheck 69 22 47
      { lower := 6650, upper := 6705, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good100_checked :
    goodSegmentCheck 69 22 47
      { lower := 6706, upper := 6724, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good101_checked :
    goodSegmentCheck 69 22 47
      { lower := 6727, upper := 6787, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good102_checked :
    goodSegmentCheck 69 22 47
      { lower := 6788, upper := 6795, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good103_checked :
    goodSegmentCheck 69 22 47
      { lower := 6859, upper := 6925, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good104_checked :
    goodSegmentCheck 69 22 47
      { lower := 6926, upper := 6985, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good105_checked :
    goodSegmentCheck 69 22 47
      { lower := 6986, upper := 7004, witness := RowWitness.topPrime 6983 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good106_checked :
    goodSegmentCheck 69 22 47
      { lower := 7203, upper := 7261, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good107_checked :
    goodSegmentCheck 69 22 47
      { lower := 7262, upper := 7288, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good108_checked :
    goodSegmentCheck 69 22 47
      { lower := 7424, upper := 7485, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good109_checked :
    goodSegmentCheck 69 22 47
      { lower := 7486, upper := 7492, witness := RowWitness.topPrime 7481 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good110_checked :
    goodSegmentCheck 69 22 47
      { lower := 7500, upper := 7510, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good111_checked :
    goodSegmentCheck 69 22 47
      { lower := 7514, upper := 7575, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good112_checked :
    goodSegmentCheck 69 22 47
      { lower := 7576, upper := 7637, witness := RowWitness.topPrime 7573 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good113_checked :
    goodSegmentCheck 69 22 47
      { lower := 7688, upper := 7748, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good114_checked :
    goodSegmentCheck 69 22 47
      { lower := 7942, upper := 7957, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good115_checked :
    goodSegmentCheck 69 22 47
      { lower := 7986, upper := 8010, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good116_checked :
    goodSegmentCheck 69 22 47
      { lower := 8125, upper := 8160, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good117_checked :
    goodSegmentCheck 69 22 47
      { lower := 8192, upper := 8193, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good118_checked :
    goodSegmentCheck 69 22 47
      { lower := 8214, upper := 8277, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good119_checked :
    goodSegmentCheck 69 22 47
      { lower := 8278, upper := 8282, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good120_checked :
    goodSegmentCheck 69 22 47
      { lower := 8405, upper := 8457, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good121_checked :
    goodSegmentCheck 69 22 47
      { lower := 8458, upper := 8478, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good122_checked :
    goodSegmentCheck 69 22 47
      { lower := 8664, upper := 8731, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good123_checked :
    goodSegmentCheck 69 22 47
      { lower := 8732, upper := 8732, witness := RowWitness.topPrime 8731 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good124_checked :
    goodSegmentCheck 69 22 47
      { lower := 8748, upper := 8815, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good125_checked :
    goodSegmentCheck 69 22 47
      { lower := 8816, upper := 8818, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good126_checked :
    goodSegmentCheck 69 22 47
      { lower := 8836, upper := 8856, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good127_checked :
    goodSegmentCheck 69 22 47
      { lower := 8978, upper := 8986, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good128_checked :
    goodSegmentCheck 69 22 47
      { lower := 9025, upper := 9046, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good129_checked :
    goodSegmentCheck 69 22 47
      { lower := 9245, upper := 9309, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good130_checked :
    goodSegmentCheck 69 22 47
      { lower := 9310, upper := 9329, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good131_checked :
    goodSegmentCheck 69 22 47
      { lower := 9375, upper := 9439, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good132_checked :
    goodSegmentCheck 69 22 47
      { lower := 9440, upper := 9443, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good133_checked :
    goodSegmentCheck 69 22 47
      { lower := 9604, upper := 9669, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good134_checked :
    goodSegmentCheck 69 22 47
      { lower := 9670, upper := 9672, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good135_checked :
    goodSegmentCheck 69 22 47
      { lower := 10092, upper := 10154, witness := RowWitness.topPrime 10091 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good136_checked :
    goodSegmentCheck 69 22 47
      { lower := 10625, upper := 10639, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good137_checked :
    goodSegmentCheck 69 22 47
      { lower := 10648, upper := 10693, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good138_checked :
    goodSegmentCheck 69 22 47
      { lower := 10935, upper := 10977, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good139_checked :
    goodSegmentCheck 69 22 47
      { lower := 10978, upper := 11020, witness := RowWitness.topPrime 10973 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good140_checked :
    goodSegmentCheck 69 22 47
      { lower := 11045, upper := 11053, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good141_checked :
    goodSegmentCheck 69 22 47
      { lower := 11094, upper := 11113, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good142_checked :
    goodSegmentCheck 69 22 47
      { lower := 11250, upper := 11311, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good143_checked :
    goodSegmentCheck 69 22 47
      { lower := 11312, upper := 11318, witness := RowWitness.topPrime 11311 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good144_checked :
    goodSegmentCheck 69 22 47
      { lower := 11774, upper := 11811, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good145_checked :
    goodSegmentCheck 69 22 47
      { lower := 11812, upper := 11842, witness := RowWitness.topPrime 11807 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good146_checked :
    goodSegmentCheck 69 22 47
      { lower := 12005, upper := 12047, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good147_checked :
    goodSegmentCheck 69 22 47
      { lower := 12321, upper := 12356, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good148_checked :
    goodSegmentCheck 69 22 47
      { lower := 12500, upper := 12561, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good149_checked :
    goodSegmentCheck 69 22 47
      { lower := 13125, upper := 13189, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good150_checked :
    goodSegmentCheck 69 22 47
      { lower := 13190, upper := 13193, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good151_checked :
    goodSegmentCheck 69 22 47
      { lower := 13310, upper := 13377, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good152_checked :
    goodSegmentCheck 69 22 47
      { lower := 13378, upper := 13378, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good153_checked :
    goodSegmentCheck 69 22 47
      { lower := 13454, upper := 13519, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good154_checked :
    goodSegmentCheck 69 22 47
      { lower := 13520, upper := 13524, witness := RowWitness.topPrime 13513 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good155_checked :
    goodSegmentCheck 69 22 47
      { lower := 13718, upper := 13779, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good156_checked :
    goodSegmentCheck 69 22 47
      { lower := 13780, upper := 13786, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good157_checked :
    goodSegmentCheck 69 22 47
      { lower := 14336, upper := 14365, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good158_checked :
    goodSegmentCheck 69 22 47
      { lower := 14375, upper := 14404, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good159_checked :
    goodSegmentCheck 69 22 47
      { lower := 14406, upper := 14469, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good160_checked :
    goodSegmentCheck 69 22 47
      { lower := 14470, upper := 14474, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good161_checked :
    goodSegmentCheck 69 22 47
      { lower := 14792, upper := 14807, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good162_checked :
    goodSegmentCheck 69 22 47
      { lower := 15059, upper := 15068, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good163_checked :
    goodSegmentCheck 69 22 47
      { lower := 15138, upper := 15197, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good164_checked :
    goodSegmentCheck 69 22 47
      { lower := 15360, upper := 15427, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good165_checked :
    goodSegmentCheck 69 22 47
      { lower := 15428, upper := 15444, witness := RowWitness.topPrime 15427 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good166_checked :
    goodSegmentCheck 69 22 47
      { lower := 15979, upper := 16040, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good167_checked :
    goodSegmentCheck 69 22 47
      { lower := 16384, upper := 16405, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good168_checked :
    goodSegmentCheck 69 22 47
      { lower := 16428, upper := 16452, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good169_checked :
    goodSegmentCheck 69 22 47
      { lower := 16810, upper := 16855, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good170_checked :
    goodSegmentCheck 69 22 47
      { lower := 16856, upper := 16888, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good171_checked :
    goodSegmentCheck 69 22 47
      { lower := 17303, upper := 17366, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good172_checked :
    goodSegmentCheck 69 22 47
      { lower := 17408, upper := 17469, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good173_checked :
    goodSegmentCheck 69 22 47
      { lower := 17470, upper := 17473, witness := RowWitness.topPrime 17467 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good174_checked :
    goodSegmentCheck 69 22 47
      { lower := 17672, upper := 17729, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good175_checked :
    goodSegmentCheck 69 22 47
      { lower := 18490, upper := 18549, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good176_checked :
    goodSegmentCheck 69 22 47
      { lower := 18550, upper := 18559, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good177_checked :
    goodSegmentCheck 69 22 47
      { lower := 18634, upper := 18673, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good178_checked :
    goodSegmentCheck 69 22 47
      { lower := 19208, upper := 19275, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good179_checked :
    goodSegmentCheck 69 22 47
      { lower := 19276, upper := 19276, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good180_checked :
    goodSegmentCheck 69 22 47
      { lower := 19663, upper := 19729, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good181_checked :
    goodSegmentCheck 69 22 47
      { lower := 19730, upper := 19731, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good182_checked :
    goodSegmentCheck 69 22 47
      { lower := 20181, upper := 20240, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good183_checked :
    goodSegmentCheck 69 22 47
      { lower := 20535, upper := 20548, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good184_checked :
    goodSegmentCheck 69 22 47
      { lower := 20577, upper := 20603, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good185_checked :
    goodSegmentCheck 69 22 47
      { lower := 21875, upper := 21939, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good186_checked :
    goodSegmentCheck 69 22 47
      { lower := 21940, upper := 21943, witness := RowWitness.topPrime 21937 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good187_checked :
    goodSegmentCheck 69 22 47
      { lower := 21970, upper := 21972, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good188_checked :
    goodSegmentCheck 69 22 47
      { lower := 22472, upper := 22513, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good189_checked :
    goodSegmentCheck 69 22 47
      { lower := 22528, upper := 22540, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good190_checked :
    goodSegmentCheck 69 22 47
      { lower := 24010, upper := 24026, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good191_checked :
    goodSegmentCheck 69 22 47
      { lower := 24037, upper := 24078, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good192_checked :
    goodSegmentCheck 69 22 47
      { lower := 24367, upper := 24367, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good193_checked :
    goodSegmentCheck 69 22 47
      { lower := 24389, upper := 24435, witness := RowWitness.topPrime 24379 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good194_checked :
    goodSegmentCheck 69 22 47
      { lower := 24576, upper := 24633, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good195_checked :
    goodSegmentCheck 69 22 47
      { lower := 24642, upper := 24644, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good196_checked :
    goodSegmentCheck 69 22 47
      { lower := 25281, upper := 25283, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good197_checked :
    goodSegmentCheck 69 22 47
      { lower := 25289, upper := 25329, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good198_checked :
    goodSegmentCheck 69 22 47
      { lower := 25330, upper := 25349, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good199_checked :
    goodSegmentCheck 69 22 47
      { lower := 26047, upper := 26079, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good200_checked :
    goodSegmentCheck 69 22 47
      { lower := 26411, upper := 26432, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good201_checked :
    goodSegmentCheck 69 22 47
      { lower := 26624, upper := 26665, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good202_checked :
    goodSegmentCheck 69 22 47
      { lower := 26666, upper := 26688, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good203_checked :
    goodSegmentCheck 69 22 47
      { lower := 26934, upper := 26964, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good204_checked :
    goodSegmentCheck 69 22 47
      { lower := 27436, upper := 27448, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good205_checked :
    goodSegmentCheck 69 22 47
      { lower := 28125, upper := 28158, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good206_checked :
    goodSegmentCheck 69 22 47
      { lower := 28577, upper := 28629, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good207_checked :
    goodSegmentCheck 69 22 47
      { lower := 28717, upper := 28740, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good208_checked :
    goodSegmentCheck 69 22 47
      { lower := 28749, upper := 28785, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good209_checked :
    goodSegmentCheck 69 22 47
      { lower := 28812, upper := 28817, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good210_checked :
    goodSegmentCheck 69 22 47
      { lower := 29791, upper := 29836, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good211_checked :
    goodSegmentCheck 69 22 47
      { lower := 30758, upper := 30788, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good212_checked :
    goodSegmentCheck 69 22 47
      { lower := 30926, upper := 30967, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good213_checked :
    goodSegmentCheck 69 22 47
      { lower := 31250, upper := 31281, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good214_checked :
    goodSegmentCheck 69 22 47
      { lower := 31433, upper := 31465, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good215_checked :
    goodSegmentCheck 69 22 47
      { lower := 31466, upper := 31466, witness := RowWitness.largeDivisor 4535910374971568360513522058206327093750171513582620863291227390456748859823887987773557022463652901829795526709754026058728245451771198481330411267060851075742251188866098847075706614102149233 } = true := by
  decide +kernel

theorem row069_good216_checked :
    goodSegmentCheck 69 22 47
      { lower := 31467, upper := 31467, witness := RowWitness.largeDivisor 534809230146657305262152323698319093606698991760075878587939480204818277567616833261281231198179598782530831259300254935645963585656951932539817265770408009503720424905481174975293518230656617 } = true := by
  decide +kernel

theorem row069_good217_checked :
    goodSegmentCheck 69 22 47
      { lower := 31468, upper := 31468, witness := RowWitness.largeDivisor 2277934062568355723062995306190945484246833225867090924120909523969304488156167637935300187242056796763492176240885276436776824866466291745149292057290633357209403672296383542788648677812980837 } = true := by
  decide +kernel

theorem row069_good218_checked :
    goodSegmentCheck 69 22 47
      { lower := 31469, upper := 31491, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good219_checked :
    goodSegmentCheck 69 22 47
      { lower := 32805, upper := 32836, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good220_checked :
    goodSegmentCheck 69 22 47
      { lower := 33620, upper := 33682, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good221_checked :
    goodSegmentCheck 69 22 47
      { lower := 34391, upper := 34443, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good222_checked :
    goodSegmentCheck 69 22 47
      { lower := 34816, upper := 34875, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good223_checked :
    goodSegmentCheck 69 22 47
      { lower := 34876, upper := 34878, witness := RowWitness.topPrime 34871 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_good224_checked :
    goodSegmentCheck 69 22 47
      { lower := 35152, upper := 35199, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good225_checked :
    goodSegmentCheck 69 22 47
      { lower := 35344, upper := 35369, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good226_checked :
    goodSegmentCheck 69 22 47
      { lower := 36982, upper := 37047, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good227_checked :
    goodSegmentCheck 69 22 47
      { lower := 37048, upper := 37048, witness := RowWitness.topPrime 37039 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good228_checked :
    goodSegmentCheck 69 22 47
      { lower := 37553, upper := 37568, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good229_checked :
    goodSegmentCheck 69 22 47
      { lower := 39326, upper := 39391, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good230_checked :
    goodSegmentCheck 69 22 47
      { lower := 39392, upper := 39394, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good231_checked :
    goodSegmentCheck 69 22 47
      { lower := 40960, upper := 40999, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good232_checked :
    goodSegmentCheck 69 22 47
      { lower := 41772, upper := 41811, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good233_checked :
    goodSegmentCheck 69 22 47
      { lower := 44944, upper := 44958, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good234_checked :
    goodSegmentCheck 69 22 47
      { lower := 48778, upper := 48802, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good235_checked :
    goodSegmentCheck 69 22 47
      { lower := 49152, upper := 49198, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good236_checked :
    goodSegmentCheck 69 22 47
      { lower := 59582, upper := 59604, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good237_checked :
    goodSegmentCheck 69 22 47
      { lower := 73205, upper := 73235, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good238_checked :
    goodSegmentCheck 69 22 47
      { lower := 73728, upper := 73763, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row069_good239_checked :
    goodSegmentCheck 69 22 47
      { lower := 327701, upper := 327748, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 69) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_goods_checked :
    row069.goods.all (goodSegmentCheck row069.height.i row069.height.r row069.height.s) = true := by
  change row069_goods.all (goodSegmentCheck 69 22 47) = true
  simp only [row069_goods, List.all_cons, List.all_nil,
    row069_good000_checked,
    row069_good001_checked,
    row069_good002_checked,
    row069_good003_checked,
    row069_good004_checked,
    row069_good005_checked,
    row069_good006_checked,
    row069_good007_checked,
    row069_good008_checked,
    row069_good009_checked,
    row069_good010_checked,
    row069_good011_checked,
    row069_good012_checked,
    row069_good013_checked,
    row069_good014_checked,
    row069_good015_checked,
    row069_good016_checked,
    row069_good017_checked,
    row069_good018_checked,
    row069_good019_checked,
    row069_good020_checked,
    row069_good021_checked,
    row069_good022_checked,
    row069_good023_checked,
    row069_good024_checked,
    row069_good025_checked,
    row069_good026_checked,
    row069_good027_checked,
    row069_good028_checked,
    row069_good029_checked,
    row069_good030_checked,
    row069_good031_checked,
    row069_good032_checked,
    row069_good033_checked,
    row069_good034_checked,
    row069_good035_checked,
    row069_good036_checked,
    row069_good037_checked,
    row069_good038_checked,
    row069_good039_checked,
    row069_good040_checked,
    row069_good041_checked,
    row069_good042_checked,
    row069_good043_checked,
    row069_good044_checked,
    row069_good045_checked,
    row069_good046_checked,
    row069_good047_checked,
    row069_good048_checked,
    row069_good049_checked,
    row069_good050_checked,
    row069_good051_checked,
    row069_good052_checked,
    row069_good053_checked,
    row069_good054_checked,
    row069_good055_checked,
    row069_good056_checked,
    row069_good057_checked,
    row069_good058_checked,
    row069_good059_checked,
    row069_good060_checked,
    row069_good061_checked,
    row069_good062_checked,
    row069_good063_checked,
    row069_good064_checked,
    row069_good065_checked,
    row069_good066_checked,
    row069_good067_checked,
    row069_good068_checked,
    row069_good069_checked,
    row069_good070_checked,
    row069_good071_checked,
    row069_good072_checked,
    row069_good073_checked,
    row069_good074_checked,
    row069_good075_checked,
    row069_good076_checked,
    row069_good077_checked,
    row069_good078_checked,
    row069_good079_checked,
    row069_good080_checked,
    row069_good081_checked,
    row069_good082_checked,
    row069_good083_checked,
    row069_good084_checked,
    row069_good085_checked,
    row069_good086_checked,
    row069_good087_checked,
    row069_good088_checked,
    row069_good089_checked,
    row069_good090_checked,
    row069_good091_checked,
    row069_good092_checked,
    row069_good093_checked,
    row069_good094_checked,
    row069_good095_checked,
    row069_good096_checked,
    row069_good097_checked,
    row069_good098_checked,
    row069_good099_checked,
    row069_good100_checked,
    row069_good101_checked,
    row069_good102_checked,
    row069_good103_checked,
    row069_good104_checked,
    row069_good105_checked,
    row069_good106_checked,
    row069_good107_checked,
    row069_good108_checked,
    row069_good109_checked,
    row069_good110_checked,
    row069_good111_checked,
    row069_good112_checked,
    row069_good113_checked,
    row069_good114_checked,
    row069_good115_checked,
    row069_good116_checked,
    row069_good117_checked,
    row069_good118_checked,
    row069_good119_checked,
    row069_good120_checked,
    row069_good121_checked,
    row069_good122_checked,
    row069_good123_checked,
    row069_good124_checked,
    row069_good125_checked,
    row069_good126_checked,
    row069_good127_checked,
    row069_good128_checked,
    row069_good129_checked,
    row069_good130_checked,
    row069_good131_checked,
    row069_good132_checked,
    row069_good133_checked,
    row069_good134_checked,
    row069_good135_checked,
    row069_good136_checked,
    row069_good137_checked,
    row069_good138_checked,
    row069_good139_checked,
    row069_good140_checked,
    row069_good141_checked,
    row069_good142_checked,
    row069_good143_checked,
    row069_good144_checked,
    row069_good145_checked,
    row069_good146_checked,
    row069_good147_checked,
    row069_good148_checked,
    row069_good149_checked,
    row069_good150_checked,
    row069_good151_checked,
    row069_good152_checked,
    row069_good153_checked,
    row069_good154_checked,
    row069_good155_checked,
    row069_good156_checked,
    row069_good157_checked,
    row069_good158_checked,
    row069_good159_checked,
    row069_good160_checked,
    row069_good161_checked,
    row069_good162_checked,
    row069_good163_checked,
    row069_good164_checked,
    row069_good165_checked,
    row069_good166_checked,
    row069_good167_checked,
    row069_good168_checked,
    row069_good169_checked,
    row069_good170_checked,
    row069_good171_checked,
    row069_good172_checked,
    row069_good173_checked,
    row069_good174_checked,
    row069_good175_checked,
    row069_good176_checked,
    row069_good177_checked,
    row069_good178_checked,
    row069_good179_checked,
    row069_good180_checked,
    row069_good181_checked,
    row069_good182_checked,
    row069_good183_checked,
    row069_good184_checked,
    row069_good185_checked,
    row069_good186_checked,
    row069_good187_checked,
    row069_good188_checked,
    row069_good189_checked,
    row069_good190_checked,
    row069_good191_checked,
    row069_good192_checked,
    row069_good193_checked,
    row069_good194_checked,
    row069_good195_checked,
    row069_good196_checked,
    row069_good197_checked,
    row069_good198_checked,
    row069_good199_checked,
    row069_good200_checked,
    row069_good201_checked,
    row069_good202_checked,
    row069_good203_checked,
    row069_good204_checked,
    row069_good205_checked,
    row069_good206_checked,
    row069_good207_checked,
    row069_good208_checked,
    row069_good209_checked,
    row069_good210_checked,
    row069_good211_checked,
    row069_good212_checked,
    row069_good213_checked,
    row069_good214_checked,
    row069_good215_checked,
    row069_good216_checked,
    row069_good217_checked,
    row069_good218_checked,
    row069_good219_checked,
    row069_good220_checked,
    row069_good221_checked,
    row069_good222_checked,
    row069_good223_checked,
    row069_good224_checked,
    row069_good225_checked,
    row069_good226_checked,
    row069_good227_checked,
    row069_good228_checked,
    row069_good229_checked,
    row069_good230_checked,
    row069_good231_checked,
    row069_good232_checked,
    row069_good233_checked,
    row069_good234_checked,
    row069_good235_checked,
    row069_good236_checked,
    row069_good237_checked,
    row069_good238_checked,
    row069_good239_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_registered :
    decide (row069.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row069_small_checked :
    coverCheck (2 * row069.height.i + 2) (row069.height.i * (row069.height.i - 1) - 1)
      (row069.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row069_layerCover_checked :
    coverCheck (row069.height.i * (row069.height.i - 1)) (row069.height.n0 - 1)
      (row069.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row069_bounds : List NatInterval :=
  [(140, 207), (208, 267), (268, 331), (332, 399), (400, 465), (466, 531), (532, 591), (592, 655), (656, 721), (722, 787), (788, 855), (856, 921), (922, 987), (988, 1051), (1052, 1119), (1120, 1185), (1186, 1249), (1250, 1317), (1318, 1375), (1376, 1441), (1442, 1507), (1508, 1567), (1568, 1635), (1636, 1695), (1696, 1761), (1762, 1827), (1828, 1891), (1892, 1957), (1958, 2019), (2020, 2085), (2086, 2151), (2152, 2211), (2212, 2275), (2276, 2341), (2342, 2409), (2410, 2467), (2468, 2535), (2536, 2599), (2600, 2661), (2662, 2727), (2728, 2787), (2788, 2845), (2846, 2911), (2912, 2977), (2978, 3039), (3040, 3105), (3106, 3157), (3158, 3205), (3206, 3271), (3272, 3339), (3340, 3399), (3400, 3459), (3460, 3525), (3526, 3585), (3586, 3651), (3652, 3711), (3712, 3777), (3778, 3837), (3838, 3901), (3902, 3957), (3958, 4015), (4016, 4081), (4082, 4147), (4148, 4207), (4208, 4269), (4270, 4329), (4330, 4395), (4396, 4459), (4460, 4525), (4526, 4591), (4592, 4659), (4660, 4691), (4732, 4761), (4805, 4869), (4870, 4873), (4901, 4957), (4958, 4969), (5043, 5107), (5108, 5175), (5176, 5188), (5202, 5213), (5376, 5392), (5415, 5444), (5476, 5483), (5488, 5551), (5552, 5559), (5625, 5691), (5692, 5693), (5776, 5817), (5818, 5881), (5882, 5949), (5950, 5955), (6137, 6137), (6144, 6211), (6212, 6212), (6400, 6426), (6517, 6559), (6560, 6585), (6591, 6649), (6650, 6705), (6706, 6724), (6727, 6787), (6788, 6795), (6859, 6925), (6926, 6985), (6986, 7004), (7203, 7261), (7262, 7288), (7424, 7485), (7486, 7492), (7500, 7510), (7514, 7575), (7576, 7637), (7688, 7748), (7942, 7957), (7986, 8010), (8125, 8160), (8192, 8193), (8214, 8277), (8278, 8282), (8405, 8457), (8458, 8478), (8664, 8731), (8732, 8732), (8748, 8815), (8816, 8818), (8836, 8856), (8978, 8986), (9025, 9046), (9245, 9309), (9310, 9329), (9375, 9439), (9440, 9443), (9604, 9669), (9670, 9672), (10092, 10154), (10625, 10639), (10648, 10693), (10935, 10977), (10978, 11020), (11045, 11053), (11094, 11113), (11250, 11311), (11312, 11318), (11774, 11811), (11812, 11842), (12005, 12047), (12321, 12356), (12500, 12561), (13125, 13189), (13190, 13193), (13310, 13377), (13378, 13378), (13454, 13519), (13520, 13524), (13718, 13779), (13780, 13786), (14336, 14365), (14375, 14404), (14406, 14469), (14470, 14474), (14792, 14807), (15059, 15068), (15138, 15197), (15360, 15427), (15428, 15444), (15979, 16040), (16384, 16405), (16428, 16452), (16810, 16855), (16856, 16888), (17303, 17366), (17408, 17469), (17470, 17473), (17672, 17729), (18490, 18549), (18550, 18559), (18634, 18673), (19208, 19275), (19276, 19276), (19663, 19729), (19730, 19731), (20181, 20240), (20535, 20548), (20577, 20603), (21875, 21939), (21940, 21943), (21970, 21972), (22472, 22513), (22528, 22540), (24010, 24026), (24037, 24078), (24367, 24367), (24389, 24435), (24576, 24633), (24642, 24644), (25281, 25283), (25289, 25329), (25330, 25349), (26047, 26079), (26411, 26432), (26624, 26665), (26666, 26688), (26934, 26964), (27436, 27448), (28125, 28158), (28577, 28629), (28717, 28740), (28749, 28785), (28812, 28817), (29791, 29836), (30758, 30788), (30926, 30967), (31250, 31281), (31433, 31465), (31466, 31466), (31467, 31467), (31468, 31468), (31469, 31491), (32805, 32836), (33620, 33682), (34391, 34443), (34816, 34875), (34876, 34878), (35152, 35199), (35344, 35369), (36982, 37047), (37048, 37048), (37553, 37568), (39326, 39391), (39392, 39394), (40960, 40999), (41772, 41811), (44944, 44958), (48778, 48802), (49152, 49198), (59582, 59604), (73205, 73235), (73728, 73763), (327701, 327748)]

theorem row069_bounds_eq : row069.goods.map goodSegmentBounds = row069_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row069_layer000_intervals : List ColouredInterval :=
  [(2, 4864, 4932), (2, 5120, 5188), (2, 5376, 5444), (2, 5632, 5700), (2, 5888, 5956), (2, 6144, 6212), (2, 6400, 6468), (2, 6656, 6724), (2, 6912, 6980), (2, 7168, 7236), (2, 7424, 7492), (2, 5120, 5188), (2, 5632, 5700), (2, 6144, 6212), (2, 6656, 6724), (2, 7168, 7236), (2, 7680, 7748), (2, 8192, 8260), (2, 8704, 8772), (2, 9216, 9284), (2, 5120, 5188), (2, 6144, 6212), (2, 7168, 7236), (2, 8192, 8260), (2, 9216, 9284), (2, 6144, 6212), (2, 8192, 8260), (2, 8192, 8260), (2, 8192, 8260), (3, 5103, 5171), (3, 5832, 5900), (3, 6561, 6629), (3, 6561, 6629), (3, 8748, 8816), (3, 6561, 6629), (5, 5000, 5068), (5, 5625, 5693), (5, 6250, 6318), (5, 6875, 6943), (5, 7500, 7568), (5, 8125, 8193), (5, 8750, 8818), (5, 9375, 9383), (5, 6250, 6318), (5, 9375, 9383), (7, 4802, 4870), (7, 5145, 5213), (7, 5488, 5556), (7, 5831, 5899), (7, 6174, 6242), (7, 6517, 6585), (7, 6860, 6928), (7, 7203, 7271), (7, 7546, 7614), (7, 7889, 7957), (7, 8232, 8300), (7, 8575, 8643), (7, 8918, 8986), (7, 9261, 9329), (7, 4802, 4870), (7, 7203, 7271), (11, 5324, 5392), (11, 6655, 6723), (11, 7986, 8054), (11, 9317, 9383), (13, 4732, 4800), (13, 4901, 4969), (13, 6591, 6659), (13, 8788, 8856), (17, 4692, 4692), (17, 4913, 4981), (17, 5202, 5270), (17, 5491, 5559), (17, 5780, 5848), (17, 6069, 6137), (17, 6358, 6426), (17, 6647, 6715), (17, 6936, 7004), (17, 7225, 7293), (17, 7514, 7582), (17, 7803, 7871), (17, 8092, 8160), (17, 8381, 8449), (17, 4913, 4981), (19, 4693, 4761), (19, 5054, 5122), (19, 5415, 5483), (19, 5776, 5844), (19, 6137, 6205), (19, 6498, 6566), (19, 6859, 6927), (19, 7220, 7288), (19, 7581, 7649), (19, 7942, 8010), (19, 8303, 8371), (19, 8664, 8732), (19, 9025, 9093), (19, 6859, 6927), (29, 5046, 5114), (29, 5887, 5955), (29, 6728, 6796), (29, 7569, 7637), (29, 8410, 8478), (29, 9251, 9319), (31, 4805, 4873), (31, 5766, 5834), (31, 6727, 6795), (31, 7688, 7756), (31, 8649, 8717), (37, 5476, 5544), (37, 6845, 6913), (37, 8214, 8282), (41, 5043, 5111), (41, 6724, 6792), (41, 8405, 8473), (43, 5547, 5615), (43, 7396, 7464), (43, 9245, 9313), (47, 6627, 6695), (47, 8836, 8904), (53, 5618, 5686), (53, 8427, 8495), (59, 6962, 7030), (61, 7442, 7510), (67, 8978, 9046)]

def row069_layer000_block000 : List ColouredInterval :=
  [(2, 4864, 4932), (2, 5120, 5188), (2, 5376, 5444), (2, 5632, 5700), (2, 5888, 5956), (2, 6144, 6212), (2, 6400, 6468), (2, 6656, 6724), (2, 6912, 6980), (2, 7168, 7236), (2, 7424, 7492), (2, 5120, 5188), (2, 5632, 5700), (2, 6144, 6212), (2, 6656, 6724), (2, 7168, 7236)]

def row069_layer000_block001 : List ColouredInterval :=
  [(2, 7680, 7748), (2, 8192, 8260), (2, 8704, 8772), (2, 9216, 9284), (2, 5120, 5188), (2, 6144, 6212), (2, 7168, 7236), (2, 8192, 8260), (2, 9216, 9284), (2, 6144, 6212), (2, 8192, 8260), (2, 8192, 8260), (2, 8192, 8260), (3, 5103, 5171), (3, 5832, 5900), (3, 6561, 6629)]

def row069_layer000_block002 : List ColouredInterval :=
  [(3, 6561, 6629), (3, 8748, 8816), (3, 6561, 6629), (5, 5000, 5068), (5, 5625, 5693), (5, 6250, 6318), (5, 6875, 6943), (5, 7500, 7568), (5, 8125, 8193), (5, 8750, 8818), (5, 9375, 9383), (5, 6250, 6318), (5, 9375, 9383), (7, 4802, 4870), (7, 5145, 5213), (7, 5488, 5556)]

def row069_layer000_block003 : List ColouredInterval :=
  [(7, 5831, 5899), (7, 6174, 6242), (7, 6517, 6585), (7, 6860, 6928), (7, 7203, 7271), (7, 7546, 7614), (7, 7889, 7957), (7, 8232, 8300), (7, 8575, 8643), (7, 8918, 8986), (7, 9261, 9329), (7, 4802, 4870), (7, 7203, 7271), (11, 5324, 5392), (11, 6655, 6723), (11, 7986, 8054)]

def row069_layer000_block004 : List ColouredInterval :=
  [(11, 9317, 9383), (13, 4732, 4800), (13, 4901, 4969), (13, 6591, 6659), (13, 8788, 8856), (17, 4692, 4692), (17, 4913, 4981), (17, 5202, 5270), (17, 5491, 5559), (17, 5780, 5848), (17, 6069, 6137), (17, 6358, 6426), (17, 6647, 6715), (17, 6936, 7004), (17, 7225, 7293), (17, 7514, 7582)]

def row069_layer000_block005 : List ColouredInterval :=
  [(17, 7803, 7871), (17, 8092, 8160), (17, 8381, 8449), (17, 4913, 4981), (19, 4693, 4761), (19, 5054, 5122), (19, 5415, 5483), (19, 5776, 5844), (19, 6137, 6205), (19, 6498, 6566), (19, 6859, 6927), (19, 7220, 7288), (19, 7581, 7649), (19, 7942, 8010), (19, 8303, 8371), (19, 8664, 8732)]

def row069_layer000_block006 : List ColouredInterval :=
  [(19, 9025, 9093), (19, 6859, 6927), (29, 5046, 5114), (29, 5887, 5955), (29, 6728, 6796), (29, 7569, 7637), (29, 8410, 8478), (29, 9251, 9319), (31, 4805, 4873), (31, 5766, 5834), (31, 6727, 6795), (31, 7688, 7756), (31, 8649, 8717), (37, 5476, 5544), (37, 6845, 6913), (37, 8214, 8282)]

def row069_layer000_block007 : List ColouredInterval :=
  [(41, 5043, 5111), (41, 6724, 6792), (41, 8405, 8473), (43, 5547, 5615), (43, 7396, 7464), (43, 9245, 9313), (47, 6627, 6695), (47, 8836, 8904), (53, 5618, 5686), (53, 8427, 8495), (59, 6962, 7030), (61, 7442, 7510), (67, 8978, 9046)]

def row069_layer000_chunks : List (List ColouredInterval) :=
  [row069_layer000_block000, row069_layer000_block001, row069_layer000_block002, row069_layer000_block003, row069_layer000_block004, row069_layer000_block005, row069_layer000_block006, row069_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_arithmetic : LayerArithmeticValid row069.height { lower := 4692, upper := 9384, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_enumeration :
    activePowerIntervalList 69 29 4692 9384 = row069_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_pairs000 :
    row069_layer000_block000.all (fun I => row069_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_pairs001 :
    row069_layer000_block001.all (fun I => row069_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_pairs002 :
    row069_layer000_block002.all (fun I => row069_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_pairs003 :
    row069_layer000_block003.all (fun I => row069_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_pairs004 :
    row069_layer000_block004.all (fun I => row069_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_pairs005 :
    row069_layer000_block005.all (fun I => row069_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_pairs006 :
    row069_layer000_block006.all (fun I => row069_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_pairs007 :
    row069_layer000_block007.all (fun I => row069_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_chunks_eq : row069_layer000_chunks.flatten = row069_layer000_intervals := by
  rfl

theorem row069_layer000_pairs : pairCoverCheck row069_layer000_intervals row069_bounds = true := by
  apply pairCoverCheck_of_chunks row069_layer000_chunks_eq
  intro block hblock
  simp only [row069_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row069_layer000_pairs000
  · exact row069_layer000_pairs001
  · exact row069_layer000_pairs002
  · exact row069_layer000_pairs003
  · exact row069_layer000_pairs004
  · exact row069_layer000_pairs005
  · exact row069_layer000_pairs006
  · exact row069_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer000_checked :
    coverLayerCheck row069.height row069.goods { lower := 4692, upper := 9384, M := 29 } = true := by
  exact coverLayerCheck_of_parts row069_layer000_arithmetic row069_layer000_enumeration row069_bounds_eq row069_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row069_layer001_intervals : List ColouredInterval :=
  [(2, 9728, 9796), (2, 10240, 10308), (2, 10752, 10820), (2, 11264, 11332), (2, 11776, 11844), (2, 12288, 12356), (2, 12800, 12868), (2, 13312, 13380), (2, 10240, 10308), (2, 11264, 11332), (2, 12288, 12356), (2, 13312, 13380), (2, 14336, 14404), (2, 15360, 15428), (2, 16384, 16452), (2, 17408, 17476), (2, 18432, 18500), (2, 10240, 10308), (2, 12288, 12356), (2, 14336, 14404), (2, 16384, 16452), (2, 18432, 18500), (2, 12288, 12356), (2, 16384, 16452), (2, 16384, 16452), (2, 16384, 16452), (3, 10935, 11003), (3, 13122, 13190), (3, 15309, 15377), (3, 17496, 17564), (3, 13122, 13190), (5, 9384, 9443), (5, 10000, 10068), (5, 10625, 10693), (5, 11250, 11318), (5, 11875, 11943), (5, 12500, 12568), (5, 13125, 13193), (5, 13750, 13818), (5, 14375, 14443), (5, 15000, 15068), (5, 15625, 15693), (5, 16250, 16318), (5, 9384, 9443), (5, 12500, 12568), (5, 15625, 15693), (5, 18750, 18767), (5, 15625, 15693), (7, 9604, 9672), (7, 12005, 12073), (7, 14406, 14474), (7, 16807, 16875), (7, 16807, 16875), (11, 9384, 9385), (11, 10648, 10716), (11, 11979, 12047), (11, 13310, 13378), (11, 14641, 14709), (11, 15972, 16040), (11, 17303, 17371), (11, 18634, 18702), (11, 14641, 14709), (13, 10985, 11053), (13, 13182, 13250), (13, 15379, 15447), (13, 17576, 17644), (17, 9826, 9894), (17, 14739, 14807), (19, 9386, 9454), (19, 13718, 13786), (23, 12167, 12235), (29, 10092, 10160), (29, 10933, 11001), (29, 11774, 11842), (29, 12615, 12683), (29, 13456, 13524), (29, 14297, 14365), (29, 15138, 15206), (29, 15979, 16047), (29, 16820, 16888), (29, 17661, 17729), (29, 18502, 18570), (31, 9610, 9678), (31, 10571, 10639), (31, 11532, 11600), (31, 12493, 12561), (31, 13454, 13522), (31, 14415, 14483), (31, 15376, 15444), (31, 16337, 16405), (31, 17298, 17366), (31, 18259, 18327), (37, 9583, 9651), (37, 10952, 11020), (37, 12321, 12389), (37, 13690, 13758), (37, 15059, 15127), (37, 16428, 16496), (37, 17797, 17865), (41, 10086, 10154), (41, 11767, 11835), (41, 13448, 13516), (41, 15129, 15197), (41, 16810, 16878), (41, 18491, 18559), (43, 11094, 11162), (43, 12943, 13011), (43, 14792, 14860), (43, 16641, 16709), (43, 18490, 18558), (47, 11045, 11113), (47, 13254, 13322), (47, 15463, 15531), (47, 17672, 17740), (53, 11236, 11304), (53, 14045, 14113), (53, 16854, 16922), (59, 10443, 10511), (59, 13924, 13992), (59, 17405, 17473), (61, 11163, 11231), (61, 14884, 14952), (61, 18605, 18673), (67, 13467, 13535), (67, 17956, 18024)]

def row069_layer001_block000 : List ColouredInterval :=
  [(2, 9728, 9796), (2, 10240, 10308), (2, 10752, 10820), (2, 11264, 11332), (2, 11776, 11844), (2, 12288, 12356), (2, 12800, 12868), (2, 13312, 13380), (2, 10240, 10308), (2, 11264, 11332), (2, 12288, 12356), (2, 13312, 13380), (2, 14336, 14404), (2, 15360, 15428), (2, 16384, 16452), (2, 17408, 17476)]

def row069_layer001_block001 : List ColouredInterval :=
  [(2, 18432, 18500), (2, 10240, 10308), (2, 12288, 12356), (2, 14336, 14404), (2, 16384, 16452), (2, 18432, 18500), (2, 12288, 12356), (2, 16384, 16452), (2, 16384, 16452), (2, 16384, 16452), (3, 10935, 11003), (3, 13122, 13190), (3, 15309, 15377), (3, 17496, 17564), (3, 13122, 13190), (5, 9384, 9443)]

def row069_layer001_block002 : List ColouredInterval :=
  [(5, 10000, 10068), (5, 10625, 10693), (5, 11250, 11318), (5, 11875, 11943), (5, 12500, 12568), (5, 13125, 13193), (5, 13750, 13818), (5, 14375, 14443), (5, 15000, 15068), (5, 15625, 15693), (5, 16250, 16318), (5, 9384, 9443), (5, 12500, 12568), (5, 15625, 15693), (5, 18750, 18767), (5, 15625, 15693)]

def row069_layer001_block003 : List ColouredInterval :=
  [(7, 9604, 9672), (7, 12005, 12073), (7, 14406, 14474), (7, 16807, 16875), (7, 16807, 16875), (11, 9384, 9385), (11, 10648, 10716), (11, 11979, 12047), (11, 13310, 13378), (11, 14641, 14709), (11, 15972, 16040), (11, 17303, 17371), (11, 18634, 18702), (11, 14641, 14709), (13, 10985, 11053), (13, 13182, 13250)]

def row069_layer001_block004 : List ColouredInterval :=
  [(13, 15379, 15447), (13, 17576, 17644), (17, 9826, 9894), (17, 14739, 14807), (19, 9386, 9454), (19, 13718, 13786), (23, 12167, 12235), (29, 10092, 10160), (29, 10933, 11001), (29, 11774, 11842), (29, 12615, 12683), (29, 13456, 13524), (29, 14297, 14365), (29, 15138, 15206), (29, 15979, 16047), (29, 16820, 16888)]

def row069_layer001_block005 : List ColouredInterval :=
  [(29, 17661, 17729), (29, 18502, 18570), (31, 9610, 9678), (31, 10571, 10639), (31, 11532, 11600), (31, 12493, 12561), (31, 13454, 13522), (31, 14415, 14483), (31, 15376, 15444), (31, 16337, 16405), (31, 17298, 17366), (31, 18259, 18327), (37, 9583, 9651), (37, 10952, 11020), (37, 12321, 12389), (37, 13690, 13758)]

def row069_layer001_block006 : List ColouredInterval :=
  [(37, 15059, 15127), (37, 16428, 16496), (37, 17797, 17865), (41, 10086, 10154), (41, 11767, 11835), (41, 13448, 13516), (41, 15129, 15197), (41, 16810, 16878), (41, 18491, 18559), (43, 11094, 11162), (43, 12943, 13011), (43, 14792, 14860), (43, 16641, 16709), (43, 18490, 18558), (47, 11045, 11113), (47, 13254, 13322)]

def row069_layer001_block007 : List ColouredInterval :=
  [(47, 15463, 15531), (47, 17672, 17740), (53, 11236, 11304), (53, 14045, 14113), (53, 16854, 16922), (59, 10443, 10511), (59, 13924, 13992), (59, 17405, 17473), (61, 11163, 11231), (61, 14884, 14952), (61, 18605, 18673), (67, 13467, 13535), (67, 17956, 18024)]

def row069_layer001_chunks : List (List ColouredInterval) :=
  [row069_layer001_block000, row069_layer001_block001, row069_layer001_block002, row069_layer001_block003, row069_layer001_block004, row069_layer001_block005, row069_layer001_block006, row069_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_arithmetic : LayerArithmeticValid row069.height { lower := 9384, upper := 18768, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_enumeration :
    activePowerIntervalList 69 26 9384 18768 = row069_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_pairs000 :
    row069_layer001_block000.all (fun I => row069_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_pairs001 :
    row069_layer001_block001.all (fun I => row069_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_pairs002 :
    row069_layer001_block002.all (fun I => row069_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_pairs003 :
    row069_layer001_block003.all (fun I => row069_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_pairs004 :
    row069_layer001_block004.all (fun I => row069_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_pairs005 :
    row069_layer001_block005.all (fun I => row069_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_pairs006 :
    row069_layer001_block006.all (fun I => row069_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_pairs007 :
    row069_layer001_block007.all (fun I => row069_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_chunks_eq : row069_layer001_chunks.flatten = row069_layer001_intervals := by
  rfl

theorem row069_layer001_pairs : pairCoverCheck row069_layer001_intervals row069_bounds = true := by
  apply pairCoverCheck_of_chunks row069_layer001_chunks_eq
  intro block hblock
  simp only [row069_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row069_layer001_pairs000
  · exact row069_layer001_pairs001
  · exact row069_layer001_pairs002
  · exact row069_layer001_pairs003
  · exact row069_layer001_pairs004
  · exact row069_layer001_pairs005
  · exact row069_layer001_pairs006
  · exact row069_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer001_checked :
    coverLayerCheck row069.height row069.goods { lower := 9384, upper := 18768, M := 26 } = true := by
  exact coverLayerCheck_of_parts row069_layer001_arithmetic row069_layer001_enumeration row069_bounds_eq row069_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row069_layer002_intervals : List ColouredInterval :=
  [(2, 19456, 19524), (2, 20480, 20548), (2, 21504, 21572), (2, 22528, 22596), (2, 20480, 20548), (2, 22528, 22596), (2, 24576, 24644), (2, 26624, 26692), (2, 28672, 28740), (2, 30720, 30788), (2, 32768, 32836), (2, 34816, 34884), (2, 36864, 36932), (2, 20480, 20548), (2, 24576, 24644), (2, 28672, 28740), (2, 32768, 32836), (2, 36864, 36932), (2, 24576, 24644), (2, 32768, 32836), (2, 32768, 32836), (2, 32768, 32836), (3, 19683, 19751), (3, 26244, 26312), (3, 32805, 32873), (3, 19683, 19751), (5, 18768, 18818), (5, 21875, 21943), (5, 25000, 25068), (5, 28125, 28193), (5, 31250, 31318), (5, 34375, 34443), (5, 37500, 37535), (5, 31250, 31318), (7, 19208, 19276), (7, 21609, 21677), (7, 24010, 24078), (7, 26411, 26479), (7, 28812, 28880), (7, 31213, 31281), (7, 33614, 33682), (7, 36015, 36083), (7, 33614, 33682), (11, 19965, 20033), (11, 21296, 21364), (11, 22627, 22695), (11, 23958, 24026), (11, 25289, 25357), (11, 26620, 26688), (11, 27951, 28019), (11, 29282, 29350), (11, 29282, 29350), (13, 19773, 19841), (13, 21970, 22038), (13, 24167, 24235), (13, 26364, 26432), (13, 28561, 28629), (13, 30758, 30826), (13, 32955, 33023), (13, 35152, 35220), (13, 37349, 37417), (13, 28561, 28629), (17, 19652, 19720), (17, 24565, 24633), (17, 29478, 29546), (17, 34391, 34459), (19, 20577, 20645), (19, 27436, 27504), (19, 34295, 34363), (29, 24389, 24457), (31, 19220, 19288), (31, 20181, 20249), (31, 21142, 21210), (31, 29791, 29859), (37, 19166, 19234), (37, 20535, 20603), (37, 21904, 21972), (37, 23273, 23341), (37, 24642, 24710), (37, 26011, 26079), (37, 27380, 27448), (37, 28749, 28817), (37, 30118, 30186), (41, 20172, 20240), (41, 21853, 21921), (41, 23534, 23602), (41, 25215, 25283), (41, 26896, 26964), (41, 28577, 28645), (41, 30258, 30326), (41, 31939, 32007), (41, 33620, 33688), (41, 35301, 35369), (41, 36982, 37050), (43, 20339, 20407), (43, 22188, 22256), (43, 24037, 24105), (43, 25886, 25954), (43, 27735, 27803), (43, 29584, 29652), (43, 31433, 31501), (43, 33282, 33350), (43, 35131, 35199), (43, 36980, 37048), (47, 19881, 19949), (47, 22090, 22158), (47, 24299, 24367), (47, 26508, 26576), (47, 28717, 28785), (47, 30926, 30994), (47, 33135, 33203), (47, 35344, 35412), (53, 19663, 19731), (53, 22472, 22540), (53, 25281, 25349), (53, 28090, 28158), (53, 30899, 30967), (53, 33708, 33776), (53, 36517, 36585), (59, 20886, 20954), (59, 24367, 24435), (59, 27848, 27916), (59, 31329, 31397), (59, 34810, 34878), (61, 22326, 22394), (61, 26047, 26115), (61, 29768, 29836), (61, 33489, 33557), (61, 37210, 37278), (67, 22445, 22513), (67, 26934, 27002), (67, 31423, 31491), (67, 35912, 35980)]

def row069_layer002_block000 : List ColouredInterval :=
  [(2, 19456, 19524), (2, 20480, 20548), (2, 21504, 21572), (2, 22528, 22596), (2, 20480, 20548), (2, 22528, 22596), (2, 24576, 24644), (2, 26624, 26692), (2, 28672, 28740), (2, 30720, 30788), (2, 32768, 32836), (2, 34816, 34884), (2, 36864, 36932), (2, 20480, 20548), (2, 24576, 24644)]

def row069_layer002_block001 : List ColouredInterval :=
  [(2, 28672, 28740), (2, 32768, 32836), (2, 36864, 36932), (2, 24576, 24644), (2, 32768, 32836), (2, 32768, 32836), (2, 32768, 32836), (3, 19683, 19751), (3, 26244, 26312), (3, 32805, 32873), (3, 19683, 19751), (5, 18768, 18818), (5, 21875, 21943), (5, 25000, 25068), (5, 28125, 28193)]

def row069_layer002_block002 : List ColouredInterval :=
  [(5, 31250, 31318), (5, 34375, 34443), (5, 37500, 37535), (5, 31250, 31318), (7, 19208, 19276), (7, 21609, 21677), (7, 24010, 24078), (7, 26411, 26479), (7, 28812, 28880), (7, 31213, 31281), (7, 33614, 33682), (7, 36015, 36083), (7, 33614, 33682), (11, 19965, 20033), (11, 21296, 21364)]

def row069_layer002_block003 : List ColouredInterval :=
  [(11, 22627, 22695), (11, 23958, 24026), (11, 25289, 25357), (11, 26620, 26688), (11, 27951, 28019), (11, 29282, 29350), (11, 29282, 29350), (13, 19773, 19841), (13, 21970, 22038), (13, 24167, 24235), (13, 26364, 26432), (13, 28561, 28629), (13, 30758, 30826), (13, 32955, 33023), (13, 35152, 35220)]

def row069_layer002_block004 : List ColouredInterval :=
  [(13, 37349, 37417), (13, 28561, 28629), (17, 19652, 19720), (17, 24565, 24633), (17, 29478, 29546), (17, 34391, 34459), (19, 20577, 20645), (19, 27436, 27504), (19, 34295, 34363), (29, 24389, 24457), (31, 19220, 19288), (31, 20181, 20249), (31, 21142, 21210), (31, 29791, 29859), (37, 19166, 19234)]

def row069_layer002_block005 : List ColouredInterval :=
  [(37, 20535, 20603), (37, 21904, 21972), (37, 23273, 23341), (37, 24642, 24710), (37, 26011, 26079), (37, 27380, 27448), (37, 28749, 28817), (37, 30118, 30186), (41, 20172, 20240), (41, 21853, 21921), (41, 23534, 23602), (41, 25215, 25283), (41, 26896, 26964), (41, 28577, 28645), (41, 30258, 30326)]

def row069_layer002_block006 : List ColouredInterval :=
  [(41, 31939, 32007), (41, 33620, 33688), (41, 35301, 35369), (41, 36982, 37050), (43, 20339, 20407), (43, 22188, 22256), (43, 24037, 24105), (43, 25886, 25954), (43, 27735, 27803), (43, 29584, 29652), (43, 31433, 31501), (43, 33282, 33350), (43, 35131, 35199), (43, 36980, 37048), (47, 19881, 19949)]

def row069_layer002_block007 : List ColouredInterval :=
  [(47, 22090, 22158), (47, 24299, 24367), (47, 26508, 26576), (47, 28717, 28785), (47, 30926, 30994), (47, 33135, 33203), (47, 35344, 35412), (53, 19663, 19731), (53, 22472, 22540), (53, 25281, 25349), (53, 28090, 28158), (53, 30899, 30967), (53, 33708, 33776), (53, 36517, 36585), (59, 20886, 20954)]

def row069_layer002_block008 : List ColouredInterval :=
  [(59, 24367, 24435), (59, 27848, 27916), (59, 31329, 31397), (59, 34810, 34878), (61, 22326, 22394), (61, 26047, 26115), (61, 29768, 29836), (61, 33489, 33557), (61, 37210, 37278), (67, 22445, 22513), (67, 26934, 27002), (67, 31423, 31491), (67, 35912, 35980)]

def row069_layer002_chunks : List (List ColouredInterval) :=
  [row069_layer002_block000, row069_layer002_block001, row069_layer002_block002, row069_layer002_block003, row069_layer002_block004, row069_layer002_block005, row069_layer002_block006, row069_layer002_block007, row069_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_arithmetic : LayerArithmeticValid row069.height { lower := 18768, upper := 37536, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_enumeration :
    activePowerIntervalList 69 22 18768 37536 = row069_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_pairs000 :
    row069_layer002_block000.all (fun I => row069_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_pairs001 :
    row069_layer002_block001.all (fun I => row069_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_pairs002 :
    row069_layer002_block002.all (fun I => row069_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_pairs003 :
    row069_layer002_block003.all (fun I => row069_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_pairs004 :
    row069_layer002_block004.all (fun I => row069_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_pairs005 :
    row069_layer002_block005.all (fun I => row069_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_pairs006 :
    row069_layer002_block006.all (fun I => row069_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_pairs007 :
    row069_layer002_block007.all (fun I => row069_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_pairs008 :
    row069_layer002_block008.all (fun I => row069_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_chunks_eq : row069_layer002_chunks.flatten = row069_layer002_intervals := by
  rfl

theorem row069_layer002_pairs : pairCoverCheck row069_layer002_intervals row069_bounds = true := by
  apply pairCoverCheck_of_chunks row069_layer002_chunks_eq
  intro block hblock
  simp only [row069_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row069_layer002_pairs000
  · exact row069_layer002_pairs001
  · exact row069_layer002_pairs002
  · exact row069_layer002_pairs003
  · exact row069_layer002_pairs004
  · exact row069_layer002_pairs005
  · exact row069_layer002_pairs006
  · exact row069_layer002_pairs007
  · exact row069_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer002_checked :
    coverLayerCheck row069.height row069.goods { lower := 18768, upper := 37536, M := 22 } = true := by
  exact coverLayerCheck_of_parts row069_layer002_arithmetic row069_layer002_enumeration row069_bounds_eq row069_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row069_layer003_intervals : List ColouredInterval :=
  [(2, 38912, 38980), (2, 40960, 41028), (2, 45056, 45124), (2, 49152, 49220), (2, 53248, 53316), (2, 57344, 57412), (2, 61440, 61508), (2, 65536, 65604), (2, 69632, 69700), (2, 73728, 73796), (2, 40960, 41028), (2, 49152, 49220), (2, 57344, 57412), (2, 65536, 65604), (2, 73728, 73796), (2, 49152, 49220), (2, 65536, 65604), (2, 65536, 65604), (2, 65536, 65604), (3, 39366, 39434), (3, 39366, 39434), (3, 59049, 59117), (3, 59049, 59117), (5, 37536, 37568), (5, 40625, 40693), (5, 43750, 43818), (5, 46875, 46943), (5, 50000, 50068), (5, 53125, 53193), (5, 56250, 56318), (5, 59375, 59443), (5, 46875, 46943), (5, 62500, 62568), (7, 38416, 38484), (7, 40817, 40885), (7, 43218, 43286), (7, 45619, 45687), (7, 50421, 50489), (7, 67228, 67296), (11, 43923, 43991), (11, 58564, 58632), (11, 73205, 73273), (13, 39546, 39614), (13, 41743, 41811), (13, 57122, 57190), (17, 39304, 39372), (17, 44217, 44285), (17, 49130, 49198), (17, 54043, 54111), (17, 58956, 59024), (17, 63869, 63937), (17, 68782, 68850), (17, 73695, 73763), (19, 41154, 41222), (19, 48013, 48081), (19, 54872, 54940), (19, 61731, 61799), (19, 68590, 68658), (29, 48778, 48846), (29, 73167, 73235), (31, 59582, 59650), (37, 50653, 50721), (41, 68921, 68989), (47, 37553, 37621), (47, 39762, 39830), (47, 41971, 42039), (53, 39326, 39394), (53, 42135, 42203), (53, 44944, 45012), (53, 47753, 47821), (53, 50562, 50630), (53, 53371, 53439), (59, 38291, 38359), (59, 41772, 41840), (59, 45253, 45321), (59, 48734, 48802), (59, 52215, 52283), (59, 55696, 55764), (59, 59177, 59245), (59, 62658, 62726), (59, 66139, 66207), (61, 40931, 40999), (61, 44652, 44720), (61, 48373, 48441), (61, 52094, 52162), (61, 55815, 55883), (61, 59536, 59604), (61, 63257, 63325), (61, 66978, 67046), (61, 70699, 70767), (67, 40401, 40469), (67, 44890, 44958), (67, 49379, 49447), (67, 53868, 53936), (67, 58357, 58425), (67, 62846, 62914), (67, 67335, 67403), (67, 71824, 71892)]

def row069_layer003_block000 : List ColouredInterval :=
  [(2, 38912, 38980), (2, 40960, 41028), (2, 45056, 45124), (2, 49152, 49220), (2, 53248, 53316), (2, 57344, 57412), (2, 61440, 61508), (2, 65536, 65604), (2, 69632, 69700), (2, 73728, 73796), (2, 40960, 41028), (2, 49152, 49220), (2, 57344, 57412), (2, 65536, 65604), (2, 73728, 73796), (2, 49152, 49220)]

def row069_layer003_block001 : List ColouredInterval :=
  [(2, 65536, 65604), (2, 65536, 65604), (2, 65536, 65604), (3, 39366, 39434), (3, 39366, 39434), (3, 59049, 59117), (3, 59049, 59117), (5, 37536, 37568), (5, 40625, 40693), (5, 43750, 43818), (5, 46875, 46943), (5, 50000, 50068), (5, 53125, 53193), (5, 56250, 56318), (5, 59375, 59443), (5, 46875, 46943)]

def row069_layer003_block002 : List ColouredInterval :=
  [(5, 62500, 62568), (7, 38416, 38484), (7, 40817, 40885), (7, 43218, 43286), (7, 45619, 45687), (7, 50421, 50489), (7, 67228, 67296), (11, 43923, 43991), (11, 58564, 58632), (11, 73205, 73273), (13, 39546, 39614), (13, 41743, 41811), (13, 57122, 57190), (17, 39304, 39372), (17, 44217, 44285), (17, 49130, 49198)]

def row069_layer003_block003 : List ColouredInterval :=
  [(17, 54043, 54111), (17, 58956, 59024), (17, 63869, 63937), (17, 68782, 68850), (17, 73695, 73763), (19, 41154, 41222), (19, 48013, 48081), (19, 54872, 54940), (19, 61731, 61799), (19, 68590, 68658), (29, 48778, 48846), (29, 73167, 73235), (31, 59582, 59650), (37, 50653, 50721), (41, 68921, 68989), (47, 37553, 37621)]

def row069_layer003_block004 : List ColouredInterval :=
  [(47, 39762, 39830), (47, 41971, 42039), (53, 39326, 39394), (53, 42135, 42203), (53, 44944, 45012), (53, 47753, 47821), (53, 50562, 50630), (53, 53371, 53439), (59, 38291, 38359), (59, 41772, 41840), (59, 45253, 45321), (59, 48734, 48802), (59, 52215, 52283), (59, 55696, 55764), (59, 59177, 59245), (59, 62658, 62726)]

def row069_layer003_block005 : List ColouredInterval :=
  [(59, 66139, 66207), (61, 40931, 40999), (61, 44652, 44720), (61, 48373, 48441), (61, 52094, 52162), (61, 55815, 55883), (61, 59536, 59604), (61, 63257, 63325), (61, 66978, 67046), (61, 70699, 70767), (67, 40401, 40469), (67, 44890, 44958), (67, 49379, 49447), (67, 53868, 53936), (67, 58357, 58425), (67, 62846, 62914)]

def row069_layer003_block006 : List ColouredInterval :=
  [(67, 67335, 67403), (67, 71824, 71892)]

def row069_layer003_chunks : List (List ColouredInterval) :=
  [row069_layer003_block000, row069_layer003_block001, row069_layer003_block002, row069_layer003_block003, row069_layer003_block004, row069_layer003_block005, row069_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_arithmetic : LayerArithmeticValid row069.height { lower := 37536, upper := 75072, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_enumeration :
    activePowerIntervalList 69 19 37536 75072 = row069_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_pairs000 :
    row069_layer003_block000.all (fun I => row069_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_pairs001 :
    row069_layer003_block001.all (fun I => row069_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_pairs001
